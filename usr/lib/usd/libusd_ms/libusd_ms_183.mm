void sub_29AFC6330(_Unwind_Exception *a1)
{
  sub_29A57F434(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

void sub_29AFC6358(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29AFC63DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  sub_29A1DE554(v10, 0);
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void sub_29AFC6410(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA2200(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29AFC646C(uint64_t **a1, _DWORD *a2)
{
  v5 = operator new(0x30uLL);
  sub_29AFC6538(v5 + 7, a2);
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  sub_29A00B204(a1, (a1 + 1), a1 + 1, v5);
  return v5;
}

void sub_29AFC6520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3260AC(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFC6538(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29A1DDD84(a1 + 2, a2 + 2);
  sub_29A1DDDC0(a1 + 3, a2 + 3);
  return a1;
}

uint64_t sub_29AFC6588(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *(&v17 + 1) = &v8[16 * v7];
  sub_29AFC6538(v16, a2);
  *&v17 = v16 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29AFC6694(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AFC67D0(&v15);
  return v14;
}

void sub_29AFC6680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AFC67D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFC6694(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
      sub_29AFC6538(a4, v7);
      v7 += 4;
      a4 = v12 + 4;
      v12 += 4;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AFA2324(a1, v5);
      v5 += 4;
    }
  }

  return sub_29AFC6744(v9);
}

uint64_t sub_29AFC6744(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AFC677C(a1);
  }

  return a1;
}

uint64_t *sub_29AFC677C(uint64_t *result)
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
      v3 -= 4;
      result = sub_29AFA2324(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AFC67D0(void **a1)
{
  sub_29AFC6804(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AFC6804(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 16;
      result = sub_29AFA2324(v4, (v1 - 16));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29AFC684C(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x3F9)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A1DE554(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A377E5C(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29AFC691C(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AFC6934(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29AFAFC20(a1, result);
    return 1;
  }

  return result;
}

uint64_t *sub_29AFC696C(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29AFC69A4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AFC69A4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AFA2200(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_29AFC6A00(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29AFC6A38(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AFC6A38(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A1EF8E4(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

const char *sub_29AFC6A94@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  *(a2 + 16) = a3;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;

  return pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
}

void sub_29AFC6D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A43A24C(va);
  _Unwind_Resume(a1);
}

void sub_29AFC6D84(uint64_t a1)
{
  v4[9] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  v3[0] = 0;
  v3[1] = 0;
  v2[1] = 0;
  v2[2] = v3;
  sub_29A735768(a1, v4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingIsHdMaterialNetworkTimeVarying(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v4, this);
  v4[3] = 0;
  v4[0] = off_2A2060F50;
  v2 = sub_29AFC8284(v4, v5);
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(v4);
  sub_29A43A24C(v5);
  return v2;
}

void sub_29AFC8260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(&a9);
  sub_29A43A24C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFC8284(pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = sub_29A735768(a1, &v31);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
  if (v31 == *v5)
  {
    v38[0] = "usdImaging/materialParamUtils.cpp";
    v38[1] = "_IsGraphTimeVarying";
    v38[2] = 404;
    v38[3] = "BOOL pxrInternal__aapl__pxrReserved__::_IsGraphTimeVarying(const UsdShadeConnectableAPI &, _PathSet *)";
    LOBYTE(v39) = 0;
    v23 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v38, "shadeNode.GetPath() != SdfPath::EmptyPath()", 0);
    sub_29A1DCEA8(&v31);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31 + 1);
    sub_29A1DE3A4(&v31);
  }

  sub_29A735768(a1, v38);
  sub_29AFC8674(a2, v38, v38);
  v7 = v6;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v38 + 1);
  sub_29A1DE3A4(v38);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInputs(a1, 1, &v36);
  v8 = v36;
  v9 = v37;
  if (v36 == v37)
  {
LABEL_30:
    v21 = 0;
  }

  else
  {
    while (1)
    {
      LODWORD(v31) = *v8;
      v10 = *(v8 + 8);
      v32 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 6, 1uLL, memory_order_relaxed);
      }

      sub_29A1E21F4(&v33, (v8 + 16));
      sub_29A1E2240(&v34, (v8 + 20));
      v11 = *(v8 + 24);
      v35 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v35 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetValueProducingAttributes(v38, &v31, 0);
      v12 = v40 >= 2 ? v38[0] : v38;
      if (v39)
      {
        break;
      }

LABEL_25:
      sub_29A7D1904(v38);
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34);
      sub_29A1DE3A4(&v33);
      if (v32)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32, v20);
      }

      v8 += 32;
      if (v8 == v9)
      {
        goto LABEL_30;
      }
    }

    v13 = 32 * v39;
    while (1)
    {
      v14 = sub_29A5A6058(v12);
      Type = pxrInternal__aapl__pxrReserved__::UsdShadeUtils::GetType(v14, v15);
      if (Type == 1)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::ValueMightBeTimeVarying(v12, v17);
      }

      if (Type == 2)
      {
        sub_29A580660(&v25, v12 + 1, v12 + 4);
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v30, &v25);
        v30[3] = 0;
        v30[0] = off_2A2060F50;
        v18 = sub_29AFC8284(v30, a2);
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(v30);
        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28);
        sub_29A1DE3A4(&v27);
        if (v26)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26, v19);
        }

        if (v18)
        {
          break;
        }
      }

      v12 += 4;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    sub_29A7D1904(v38);
    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34);
    sub_29A1DE3A4(&v33);
    if (v32)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32, v22);
    }

    v21 = 1;
  }

  v38[0] = &v36;
  sub_29A7D6840(v38);
  return v21;
}

void sub_29AFC85D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29AFC8674(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
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

  sub_29AFC88BC(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AFC88A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A43AB24(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFC88BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x18uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29A1DDD84(v8 + 4, a3);
  result = sub_29A1DDDC0(v8 + 5, a3 + 1);
  *(a4 + 16) = 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType::~UsdImagingModelSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  sub_29A124AB0(&v6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType::UsdImagingModelSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "model", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "modelPath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "assetIdentifier", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "assetName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "assetVersion", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  sub_29A12EF7C(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AFC8B98(_Unwind_Exception *a1)
{
  v3 = 32;
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
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetModelPath(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetAssetIdentifier(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
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

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetAssetName(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
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

  sub_29AC22098(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetAssetVersion(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC22098(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    if (!v12)
    {
      v12 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    }

    v9 = v39;
    v10 = v40 + 1;
    sub_29A166F2C(v40, v12 + 1);
    v14 = *a1;
    v13 = a1[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(&v38 + 1);
    *&v38 = v14;
    *(&v38 + 1) = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*a2)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    if (!v17)
    {
      v17 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    }

    sub_29A166F2C(v10, v17 + 2);
    ++v16;
    v19 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v9 + 1);
    *v9 = v19;
    *(v9 + 1) = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  if (*a3)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    if (!v21)
    {
      v21 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    }

    sub_29A166F2C(v40 + v16, v21 + 3);
    v22 = v16 + 1;
    v23 = &v39[v16 - 1];
    v25 = *a3;
    v24 = a3[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v23[1];
    *v23 = v25;
    v23[1] = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  else
  {
    v22 = v16;
  }

  if (*a4)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    }

    sub_29A166F2C(v40 + v22, v27 + 4);
    v28 = v22 + 1;
    v29 = &v39[v22 - 1];
    v31 = *a4;
    v30 = a4[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v28, v40, &v38, &v37);
  *a5 = v37;
  for (i = 56; i != -8; i -= 16)
  {
    v34 = *(&v39[-1] + i);
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
    v36 = *(v40 + j);
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AFC91B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = 56;
  while (1)
  {
    v21 = *(&a11 + v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      v22 = 24;
      while (1)
      {
        v23 = *(&a19 + v22);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v22 -= 8;
        if (v22 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::Builder::SetModelPath(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::Builder::SetAssetIdentifier(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::Builder::SetAssetName(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::Builder::SetAssetVersion(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens))
    {
      sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!result)
  {
    return sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17522B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17522B0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1752278, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1752278, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17522B0);
  }

  return &unk_2A1752278;
}

pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdRole@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, atomic_uint **a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  if (!v5)
  {
    v5 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
  }

  if ((*v5 ^ *this) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
    if (!v8)
    {
      v8 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
    }

    if ((*(v8 + 1) ^ *this) > 7)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
      if (!v9)
      {
        v9 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
      }

      if ((*(v9 + 2) ^ *this) > 7)
      {
        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
        if (!v10)
        {
          v10 = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
        }

        if ((*(v10 + 3) ^ *this) > 7)
        {
          result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
          if (!result)
          {
            result = sub_29A3DF3A8(&pxrInternal__aapl__pxrReserved__::SdfValueRoleNames);
          }

          if ((*(result + 10) ^ *this) > 7)
          {
            v11 = 0;
LABEL_33:
            *a2 = v11;
            return result;
          }

          result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
          if (!result)
          {
            result = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
          }

          v7 = *(result + 5);
        }

        else
        {
          result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
          if (!result)
          {
            result = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
          }

          v7 = *(result + 1);
        }
      }

      else
      {
        result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
        if (!result)
        {
          result = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
        }

        v7 = *(result + 2);
      }
    }

    else
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      if (!result)
      {
        result = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      }

      v7 = *(result + 3);
    }
  }

  else
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    if (!result)
    {
      result = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    }

    v7 = *(result + 4);
  }

  *a2 = v7;
  if ((v7 & 7) != 0)
  {
    v11 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v3 + 146) ^ *this) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v5 + 154) ^ *this) < 8)
  {
    return 3;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v6 + 152) ^ *this) < 8)
  {
    return 2;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v7)
  {
    v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v7 + 40) ^ *this) < 8)
  {
    return 4;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *this;
  if ((*(v8 + 17) ^ *this) >= 8)
  {
    v12[0] = "usdImaging/primvarUtils.cpp";
    v12[1] = "UsdImagingUsdToHdInterpolation";
    v12[2] = 57;
    v12[3] = "HdInterpolation pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(const TfToken &)";
    v13 = 0;
    v10 = v9 & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Unknown USD interpolation %s; treating as constant", v11);
  }

  return 0;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolationToken@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
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

void pxrInternal__aapl__pxrReserved__::UsdImaging_MaterialBindingImplData::ClearCaches(pxrInternal__aapl__pxrReserved__::UsdImaging_MaterialBindingImplData *this)
{
  v20 = *MEMORY[0x29EDCA608];
  sub_29AFC9C00(&v14, this + 8);
  if (*(&v14 + 1) != v15)
  {
    v17[0] = 1;
    v18 = 65539;
    v19 = 49;
    tbb::task_group_context::init(v17, v2, v3, v4);
    v16 = v17;
    v5 = tbb::internal::allocate_root_with_context_proxy::allocate(&v16, 0x40uLL);
    *(v5 - 11) = 1;
    *v5 = &unk_2A20A8AF8;
    v6 = v14;
    *(v5 + 24) = v15;
    *(v5 + 8) = v6;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v5);
    *(v5 + 56) = 0;
    *(v5 + 60) = 5;
    *(v5 + 48) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v5 - 40) + 16))(*(v5 - 40), v5, v5 - 8);
    tbb::task_group_context::~task_group_context(v17);
  }

  sub_29AFC9C00(&v14, this + 568);
  if (*(&v14 + 1) != v15)
  {
    v17[0] = 1;
    v18 = 65539;
    v19 = 49;
    tbb::task_group_context::init(v17, v8, v9, v10);
    v16 = v17;
    v11 = tbb::internal::allocate_root_with_context_proxy::allocate(&v16, 0x40uLL);
    *(v11 - 11) = 1;
    *v11 = &unk_2A20A8B40;
    v12 = v14;
    *(v11 + 24) = v15;
    *(v11 + 8) = v12;
    v13 = tbb::internal::get_initial_auto_partitioner_divisor(v11);
    *(v11 + 56) = 0;
    *(v11 + 60) = 5;
    *(v11 + 48) = (v13 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v11 - 40) + 16))(*(v11 - 40), v11, v11 - 8);
    tbb::task_group_context::~task_group_context(v17);
  }

  sub_29AFC9B60(this + 8);
  sub_29AFC9BB0(this + 568);
}

void sub_29AFC9AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void sub_29AFC9B60(uint64_t a1)
{
  sub_29A7EC258(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

void sub_29AFC9BB0(uint64_t a1)
{
  sub_29A7EC108(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

void *sub_29AFC9C00(void *a1, uint64_t a2)
{
  *a1 = a2;
  for (i = *(a2 + 32); i; i = *i)
  {
    if (i[3])
    {
      break;
    }
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[1] = i;
  sub_29AFC9C50(a1);
  return a1;
}

unint64_t sub_29AFC9C50(unint64_t result)
{
  v1 = result;
  v3 = *(result + 8);
  k = *(result + 16);
  if (v3 == k)
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v4 = v3[3];
    if (k)
    {
LABEL_4:
      v5 = k[3];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = -1;
    if (k)
    {
      goto LABEL_4;
    }
  }

  v5 = -1;
LABEL_7:
  v17 = 0;
  v18 = v4 + ((v5 - v4) >> 1);
  v6 = &v18;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6;
    v6 = (v6 + 1);
    *(&v17 + i) = byte_29B734F74[v8];
  }

  v9 = v17;
  v10 = *(*result + 8);
  __dmb(0xBu);
  v11 = v9 % v10;
  result = sub_29A1B0968(*result, v9 % v10);
  if ((result & 1) == 0)
  {
    do
    {
      v11 = sub_29A1B08DC(*v1, v11);
      result = sub_29A1B0968(*v1, v11);
    }

    while (!result);
  }

  v17 = 0;
  v18 = v11;
  v12 = &v18;
  for (j = 7; j != -1; --j)
  {
    v14 = *v12;
    v12 = (v12 + 1);
    *(&v17 + j) = byte_29B734F74[v14];
  }

  if (v17 <= v4)
  {
    k = v1[2];
  }

  else
  {
    v15 = *v1;
    result = sub_29A0EC0EC(v11);
    v16 = *(v15 + 8 * result + 48);
    __dmb(0xBu);
    for (k = *(v16 + 8 * (v11 - ((1 << result) & 0x1FFFFFFFFFFFFFFELL))); k; k = *k)
    {
      if (k[3])
      {
        break;
      }
    }
  }

LABEL_19:
  v1[3] = k;
  return result;
}

uint64_t sub_29AFC9DB4(tbb::internal::allocate_continuation_proxy *this)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!*(this + 6))
  {
    *(this + 6) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 60);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 60) = v3 + 1;
      }
    }
  }

  v5 = *(this + 3);
  v4 = *(this + 4);
  if (v4 == v5)
  {
    goto LABEL_31;
  }

  v6 = *(this + 6);
  if (v6 > 1)
  {
    goto LABEL_12;
  }

  if (!v6 || !*(this + 60))
  {
LABEL_17:
    if (v4 == v5 || !*(this + 60))
    {
      goto LABEL_31;
    }

    *v24 = 0x10000;
    v11 = *(this + 24);
    v25[0] = *(this + 8);
    v25[1] = v11;
    while (1)
    {
      sub_29AFCA258(v24, *(this + 60));
      v12 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v12)
      {
        v13 = *(this + 60) + 1;
        *(this + 60) = v13;
        v14 = v24[2];
        if (v24[2] >= 2u)
        {
          v15 = v24[1];
          v16 = v24[v24[1] + 3];
          v17 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v17 - 11) = 1;
          *v17 = &unk_2A204C520;
          __dmb(0xBu);
          v17[8] = 0;
          *(this - 4) = v17;
          *(v17 - 3) = 2;
          v18 = tbb::internal::allocate_child_proxy::allocate(v17, 0x40uLL);
          v19 = &v25[2 * v15];
          *(v18 - 11) = 1;
          *v18 = &unk_2A20A8AF8;
          v20 = *v19;
          *(v18 + 24) = v19[1];
          *(v18 + 8) = v20;
          v21 = *(this + 6) >> 1;
          *(this + 6) = v21;
          *(v18 + 48) = v21;
          *(v18 + 56) = 2;
          *(v18 + 60) = *(this + 60) - v16;
          (***(v18 - 40))();
          v14 = --v24[2];
          v24[1] = (v24[1] + 1) & 7;
          goto LABEL_25;
        }

        v22 = v24[0];
        if (v24[v24[0] + 3] < v13 && *(&v25[2 * v24[0] + 1] + 1) != *&v25[2 * v24[0] + 1])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v22 = v24[0];
      }

      sub_29AFCA1E8(&v25[2 * v22]);
      v14 = --v24[2];
      v24[0] = (v24[0] - 1) & 7;
LABEL_25:
      if (!v14 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  --*(this + 60);
  *(this + 6) = 0;
LABEL_12:
  while (1)
  {
    v7 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
    *(v7 - 11) = 1;
    *v7 = &unk_2A204C520;
    __dmb(0xBu);
    v7[8] = 0;
    *(this - 4) = v7;
    *(v7 - 3) = 2;
    v8 = tbb::internal::allocate_child_proxy::allocate(v7, 0x40uLL);
    *(v8 - 11) = 1;
    *v8 = &unk_2A20A8AF8;
    sub_29AFCA198((v8 + 8), this + 1);
    v9 = *(this + 6) >> 1;
    *(this + 6) = v9;
    *(v8 + 48) = v9;
    *(v8 + 56) = 2;
    *(v8 + 60) = *(this + 60);
    (***(v8 - 40))();
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v4 == v5)
    {
      break;
    }

    v10 = *(this + 6);
    if (v10 <= 1)
    {
      if (!v10 || !*(this + 60))
      {
        goto LABEL_17;
      }

      --*(this + 60);
      *(this + 6) = 0;
    }
  }

LABEL_31:
  sub_29AFCA1E8(this + 1);
  return 0;
}

void *sub_29AFCA198(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = a2[2];
  a1[3] = 0;
  v4 = a2[3];
  a1[1] = v4;
  a2[2] = v4;
  sub_29AFC9C50(a1);
  sub_29AFC9C50(a2);
  return a1;
}

void sub_29AFCA1E8(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 != a1[2])
  {
    v3 = *a1;
    do
    {
      v4 = v1[2];
      v1[2] = 0;
      if (v4)
      {
        sub_29A7ECF60((v1 + 2), v4);
      }

      do
      {
        v1 = *v1;
      }

      while (v1 && (v1[3] & 1) == 0);
    }

    while (v1 != a1[2] || v3 != *a1);
  }
}

void *sub_29AFCA258(void *result, unsigned int a2)
{
  if (*(result + 2) <= 7u)
  {
    v3 = result;
    v4 = result + 3;
    v5 = result + 2;
    v6 = *result;
    v7 = *(result + v6 + 3);
    do
    {
      if (a2 <= v7)
      {
        break;
      }

      v8 = v6;
      result = &v5[4 * v6];
      if (result[3] == result[2])
      {
        break;
      }

      v9 = (v6 + 1) & 7;
      *v3 = v9;
      v10 = &v5[4 * v9];
      v11 = *(result + 1);
      *v10 = *result;
      *(v10 + 1) = v11;
      result = sub_29AFCA198(result, v10);
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

uint64_t sub_29AFCA318(tbb::internal::allocate_continuation_proxy *this)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!*(this + 6))
  {
    *(this + 6) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 60);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 60) = v3 + 1;
      }
    }
  }

  v5 = *(this + 3);
  v4 = *(this + 4);
  if (v4 == v5)
  {
    goto LABEL_31;
  }

  v6 = *(this + 6);
  if (v6 > 1)
  {
    goto LABEL_12;
  }

  if (!v6 || !*(this + 60))
  {
LABEL_17:
    if (v4 == v5 || !*(this + 60))
    {
      goto LABEL_31;
    }

    *v24 = 0x10000;
    v11 = *(this + 24);
    v25[0] = *(this + 8);
    v25[1] = v11;
    while (1)
    {
      sub_29AFCA258(v24, *(this + 60));
      v12 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v12)
      {
        v13 = *(this + 60) + 1;
        *(this + 60) = v13;
        v14 = v24[2];
        if (v24[2] >= 2u)
        {
          v15 = v24[1];
          v16 = v24[v24[1] + 3];
          v17 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v17 - 11) = 1;
          *v17 = &unk_2A204C520;
          __dmb(0xBu);
          v17[8] = 0;
          *(this - 4) = v17;
          *(v17 - 3) = 2;
          v18 = tbb::internal::allocate_child_proxy::allocate(v17, 0x40uLL);
          v19 = &v25[2 * v15];
          *(v18 - 11) = 1;
          *v18 = &unk_2A20A8B40;
          v20 = *v19;
          *(v18 + 24) = v19[1];
          *(v18 + 8) = v20;
          v21 = *(this + 6) >> 1;
          *(this + 6) = v21;
          *(v18 + 48) = v21;
          *(v18 + 56) = 2;
          *(v18 + 60) = *(this + 60) - v16;
          (***(v18 - 40))();
          v14 = --v24[2];
          v24[1] = (v24[1] + 1) & 7;
          goto LABEL_25;
        }

        v22 = v24[0];
        if (v24[v24[0] + 3] < v13 && *(&v25[2 * v24[0] + 1] + 1) != *&v25[2 * v24[0] + 1])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v22 = v24[0];
      }

      sub_29AFCA6FC(&v25[2 * v22]);
      v14 = --v24[2];
      v24[0] = (v24[0] - 1) & 7;
LABEL_25:
      if (!v14 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  --*(this + 60);
  *(this + 6) = 0;
LABEL_12:
  while (1)
  {
    v7 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
    *(v7 - 11) = 1;
    *v7 = &unk_2A204C520;
    __dmb(0xBu);
    v7[8] = 0;
    *(this - 4) = v7;
    *(v7 - 3) = 2;
    v8 = tbb::internal::allocate_child_proxy::allocate(v7, 0x40uLL);
    *(v8 - 11) = 1;
    *v8 = &unk_2A20A8B40;
    sub_29AFCA198((v8 + 8), this + 1);
    v9 = *(this + 6) >> 1;
    *(this + 6) = v9;
    *(v8 + 48) = v9;
    *(v8 + 56) = 2;
    *(v8 + 60) = *(this + 60);
    (***(v8 - 40))();
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v4 == v5)
    {
      break;
    }

    v10 = *(this + 6);
    if (v10 <= 1)
    {
      if (!v10 || !*(this + 60))
      {
        goto LABEL_17;
      }

      --*(this + 60);
      *(this + 6) = 0;
    }
  }

LABEL_31:
  sub_29AFCA6FC(this + 1);
  return 0;
}

void sub_29AFCA6FC(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 != a1[2])
  {
    v3 = *a1;
    do
    {
      v4 = v1[2];
      v1[2] = 0;
      if (v4)
      {
        sub_29A7ED55C((v1 + 2), v4);
      }

      do
      {
        v1 = *v1;
      }

      while (v1 && (v1[3] & 1) == 0);
    }

    while (v1 != a1[2] || v3 != *a1);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens_StaticTokenType::~UsdImagingStageSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens_StaticTokenType::UsdImagingStageSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "includeUnloadedPrims", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::UsdImagingStageSceneIndex(uint64_t a1, uint64_t *a2)
{
  v4.n128_f64[0] = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v5 = &unk_2A20A8B88;
  v6 = *a2;
  if (v6)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens))
    {
      sub_29AFCE258(&pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens);
    }

    (*(*v6 + 24))(&v11, v6, v4);
    sub_29ABCD328(&v11, &v13);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (v13)
    {
      v8 = (*(*v13 + 32))(v13, 0.0);
    }

    else
    {
      v8 = 0;
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 112) = v8;
  *(a1 + 128) = &unk_2A20A8BC0;
  *(a1 + 672) = 0;
  *(a1 + 696) = 0;
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
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  __dmb(0xBu);
  *(a1 + 136) = 0;
  __dmb(0xBu);
  *(a1 + 656) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 144) = a1 + 664;
  __dmb(0xBu);
  *(a1 + 136) = 1;
  *(a1 + 728) = 0u;
  *(a1 + 720) = a1 + 728;
  *(a1 + 744) = 850045863;
  *(a1 + 864) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 856) = a1 + 864;
  *(a1 + 888) = 0u;
  *(a1 + 880) = a1 + 888;
  v9 = operator new(0x6A8uLL);
  pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::UsdImaging_AdapterManager(v9);
  *(a1 + 904) = v9;
  return a1;
}

void sub_29AFCABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(v12);
  _Unwind_Resume(a1);
}

void sub_29AFCAC88(uint64_t a1)
{
  *a1 = &unk_2A20A8BC0;
  std::mutex::~mutex((a1 + 616));
  sub_29A1E2AEC(a1 + 592, *(a1 + 600));
  sub_29AFCE118((a1 + 8));

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals::~UsdImagingDataSourceStageGlobals(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::~UsdImagingStageSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex *this)
{
  *this = &unk_2A20A8B88;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::SetStage(this, &v1);
  sub_29B2CDDD8();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::~UsdImagingStageSceneIndex(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::SetStage(uint64_t result, uint64_t *a2)
{
  v13[17] = *MEMORY[0x29EDCA608];
  v3 = (result + 120);
  v2 = *(result + 120);
  v4 = *a2;
  if (v2 != *a2)
  {
    v6 = result;
    if (v2)
    {
      v7 = sub_29AF49C14(8);
      if (v7)
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Population] Removing </>\n", v8, v9);
      }

      v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v7);
      sub_29A1E21F4(&v11, v10);
      sub_29A1E2240(v12, v10 + 1);
      v13[16] = 0x1000000001;
      sub_29A1E21F4(v13, &v11);
      sub_29A1E2240(v13 + 1, v12);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v6, v13);
      sub_29AC26348(v13);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12);
      sub_29A1DE3A4(&v11);
      pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::Clear((v6 + 128));
      pxrInternal__aapl__pxrReserved__::TfNotice::Revoke(v6 + 816);
      pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::Reset(*(v6 + 904));
      v4 = *a2;
    }

    *v3 = v4;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
  }

  return result;
}

void sub_29AFCAF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1752338, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CDF50();
  }

  if (*(this + 15))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(a2))
    {
      *a3 = 0;
      sub_29AFCB4D8(this + 15);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a2, &v10);
    v8 = sub_29A5A70E0(this + 15);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v8, &v10, v9);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v9);
  }

  v6 = qword_2A1752340;
  *a3 = qword_2A1752340;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a3 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = unk_2A1752350;
  a3[1] = qword_2A1752348;
  a3[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AFCB400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_29AC50138(va2);
  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void sub_29AFCB4D8(uint64_t *a1)
{
  operator new(0x10uLL);
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_GetPrimPredicate@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_2A17522D0, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_2A17522D0);
    if (this)
    {
      sub_29AFCCD74();
    }
  }

  if (*(v2 + 112) != 1)
  {
    sub_29B2AFCB4();
  }

  *a2 = xmmword_2A17522B8;
  *(a2 + 16) = qword_2A17522C8;
  return this;
}

uint64_t sub_29AFCB660@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(result + 192);
  if (*(result + 196) >= 9u)
  {
    v6 = *result;
  }

  else
  {
    v6 = result;
  }

  if (v5)
  {
    v9 = &v6[3 * v5];
    while (1)
    {
      v11 = *v6;
      v10 = v6 + 2;
      result = (*(*v11 + 24))(v11, a2, a3, v10);
      if (*a4)
      {
        break;
      }

      v6 = v10 + 1;
      if (v6 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    *a4 = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::GetChildPrimPaths@<X0>(uint64_t this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v4 = (this + 120);
  if (*(this + 120))
  {
    this = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a2);
    if (this)
    {
      v6 = sub_29A5A70E0(v4);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v6, a2, v7);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v7);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return this;
}

void sub_29AFCBAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  sub_29A1E234C(va);
  sub_29A57F434(v6 - 120);
  _Unwind_Resume(a1);
}

void sub_29AFCBBC8(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 48);
  if (v5 == 1)
  {
    if (*(a2 + 49) >= 9u)
    {
      v6 = *a2;
    }

    else
    {
      v6 = a2;
    }

    (*(**v6 + 16))(*v6, a1, v6 + 2);
    v7 = *a3;
    v8 = a3[1];
    if (*a3 != v8)
    {
      while (*v7 >= 8uLL)
      {
        if (++v7 == v8)
        {
          goto LABEL_32;
        }
      }
    }

    if (v7 == v8)
    {
LABEL_32:
      *&v19 = 0;
      sub_29A153214(a3, &v19);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  else
  {
    if (!v5)
    {
      if ((atomic_load_explicit(&qword_2A1752330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752330))
      {
        *&v19 = 0;
        qword_2A1752320 = 0;
        unk_2A1752328 = 0;
        qword_2A1752318 = 0;
        sub_29A12EF7C(&qword_2A1752318, &v19, &v19 + 1, 1uLL);
        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        __cxa_atexit(sub_29A3C73E0, &qword_2A1752318, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1752330);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }

    *&v19 = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    sub_29A12EF7C(a3, &v19, &v19 + 1, 1uLL);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v19 = 0u;
    v20 = 0u;
    v9 = *(a2 + 48);
    if (*(a2 + 49) >= 9u)
    {
      v10 = *a2;
    }

    else
    {
      v10 = a2;
    }

    if (v9)
    {
      v11 = &v10[3 * v9];
      do
      {
        if (*v10)
        {
          (*(**v10 + 16))(v17);
          v12 = v17[0];
          v13 = v17[1];
          while (v12 != v13)
          {
            if (*v12)
            {
              v14 = sub_29A372B90(&v19, v12);
              if (*(&v19 + 1) == v14)
              {
                sub_29A1D8028(a3, v12);
                sub_29A372A50(&v19, v12);
              }
            }

            ++v12;
          }

          v18 = v17;
          sub_29A124AB0(&v18);
        }

        v10 += 3;
      }

      while (v10 != v11);
      v15 = *(&v20 + 1);
      *(&v20 + 1) = 0;
      if (v15)
      {
        v16 = sub_29A155EF4(v15);
        operator delete(v16);
      }
    }

    v17[0] = &v19;
    sub_29A124AB0(v17);
  }
}

void sub_29AFCBEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1752330);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::SetTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v6 = result;
  v10 = *MEMORY[0x29EDCA608];
  if (*(result + 808) != v5 || v4 != 0)
  {
    v9 = 0x1000000000;
    pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::SetTime(result + 128, v8, v5);
    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v8);
    }

    return sub_29ABD3844(v8);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::SetTime(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 680) = a3;
  if (a2)
  {
    v4 = *(a1 + 528);
    __dmb(0xBu);
    if (v4)
    {
      v6 = a1 + 8;
      v7 = a1 + 8;
      v8 = *(a1 + 528);
      __dmb(0xBu);
      if (v8 > *(a2 + 7428))
      {
        sub_29AC14D54(a2, v8);
      }

      v9 = *(a1 + 552);
      v11[0] = a1 + 8;
      v11[1] = 0;
      v11[2] = a1 + 536;
      v12 = v9;
      if (v9 <= 0x3F)
      {
        sub_29A10CE74(v11);
        v9 = v12;
        v7 = v11[0];
      }

      if (v9 || v7 != v6)
      {
        do
        {
          sub_29AC2C3E8(a2, (v9 + 16), v9 + 24);
          v9 = *v12;
          v12 = v9;
          if (!v9)
          {
            sub_29A10CE74(v11);
            v9 = v12;
          }

          if (v9)
          {
            v10 = 0;
          }

          else
          {
            v10 = v11[0] == v6;
          }
        }

        while (!v10);
      }
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::Clear(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals *this)
{
  sub_29AFCE118(this + 1);
  *(this + 85) = 0xFFEFFFFFFFFFFFFFLL;
  std::mutex::lock((this + 616));
  sub_29A1E2AEC(this + 592, *(this + 75));
  *(this + 74) = this + 600;
  *(this + 600) = 0u;

  std::mutex::unlock((this + 616));
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_OnUsdObjectsChanged(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a2, uint64_t a3)
{
  v6 = sub_29B2ACEC8(a3);
  if (v7 & 1 | v6 && (sub_29B2A21F4(a3, (a1 + 120)) || (sub_29B2CDFC0(v45) & 1) != 0))
  {
    if (sub_29AF49C14(2))
    {
      pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
    }

    ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(a2);
    v9 = ResyncedPaths + 1;
    v10 = *ResyncedPaths;
    if (*ResyncedPaths != ResyncedPaths + 1)
    {
      while (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v10 + 4)))
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v10 + 4)))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath((v10 + 4), &v46);
          v43[0] = &v46;
          v12 = sub_29A88FFE8((a1 + 880), &v46, &unk_29B4D6118, v43);
          NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v10 + 4));
          sub_29A1D8028((v12 + 10), NameToken);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v46 + 1);
          sub_29A1DE3A4(&v46);
          v11 = " - Property resync queued: %s\n";
          if (sub_29AF49C14(2))
          {
            goto LABEL_11;
          }
        }

LABEL_12:
        pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::RemoveAssetPathDependentsUnder((a1 + 128), (v10 + 4));
        v17 = v10[1];
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
            v18 = v10[2];
            v19 = *v18 == v10;
            v10 = v18;
          }

          while (!v19);
        }

        v10 = v18;
        if (v18 == v9)
        {
          goto LABEL_18;
        }
      }

      sub_29A1E28B4(a1 + 832, v10 + 8);
      v11 = " - Resync queued: %s\n";
      if (!sub_29AF49C14(2))
      {
        goto LABEL_12;
      }

LABEL_11:
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v10 + 4));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(v11, v15, v16, Text);
      goto LABEL_12;
    }

LABEL_18:
    ChangedInfoOnlyPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedInfoOnlyPaths(a2);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
    if (!v21)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v24 = *ChangedInfoOnlyPaths;
    v23 = ChangedInfoOnlyPaths + 1;
    v22 = v24;
    for (i = v24; v22 != v23; i = v22)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v22 + 4)))
      {
        pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange::iterator::GetChangedFields(&i, v43);
        v26 = v43[0];
        v25 = v43[1];
        while (v26 != v25)
        {
          FieldDefinition = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v21, v26);
          if (FieldDefinition && pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::IsPlugin(FieldDefinition))
          {
            sub_29A1E28B4(a1 + 832, i + 8);
            if (sub_29AF49C14(2))
            {
              v33 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 4));
              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Resync due to prim update queued: %s\n", v34, v35, v33);
            }

            break;
          }

          ++v26;
        }

        v46 = v43;
        sub_29A124AB0(&v46);
      }

      else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((i + 4)))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath((i + 4), &v46);
        v43[0] = &v46;
        v28 = sub_29A88FFE8((a1 + 856), &v46, &unk_29B4D6118, v43);
        v29 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((i + 4));
        sub_29A1D8028((v28 + 10), v29);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v46 + 1);
        sub_29A1DE3A4(&v46);
        if (sub_29AF49C14(2))
        {
          v30 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 4));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Property update queued: %s\n", v31, v32, v30);
        }
      }

      v36 = i;
      v37 = i[1];
      if (v37)
      {
        do
        {
          v22 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v22 = v36[2];
          v19 = *v22 == v36;
          v36 = v22;
        }

        while (!v19);
      }
    }

    ResolvedAssetPathsResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResolvedAssetPathsResyncedPaths(a2);
    v39 = ResolvedAssetPathsResyncedPaths + 1;
    v40 = *ResolvedAssetPathsResyncedPaths;
    if (*ResolvedAssetPathsResyncedPaths != ResolvedAssetPathsResyncedPaths + 1)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::InvalidateAssetPathDependentsUnder(a1 + 128, (v40 + 4), a1 + 832, (a1 + 856));
        v41 = v40[1];
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = v40[2];
            v19 = *v42 == v40;
            v40 = v42;
          }

          while (!v19);
        }

        v40 = v42;
      }

      while (v42 != v39);
    }
  }
}

void sub_29AFCC5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a10;
  sub_29A124AB0(&a21);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_Populate(uint64_t this)
{
  if (*(this + 120))
  {
    v1 = this;
    v2 = sub_29A5A70E0((this + 120));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(v2, v3);
    pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_PopulateSubtree(v1, v3);
  }

  return this;
}

void sub_29AFCC7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29AFCCC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::RemoveAssetPathDependentsUnder(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  std::mutex::lock((this + 616));
  v4 = sub_29A38653C(*(this + 74), this + 75, a2, &v6);
  sub_29A389698(this + 74, v4, v5);
  std::mutex::unlock((this + 616));
}

void pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::InvalidateAssetPathDependentsUnder(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t **a4)
{
  std::mutex::lock((a1 + 616));
  v8 = sub_29A38653C(*(a1 + 592), (a1 + 600), a2, &v24);
  v10 = v9;
  if (v8 != v9)
  {
    do
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v8 + 28)))
      {
        sub_29A1E28B4(a3, v8 + 7);
        if (sub_29AF49C14(2))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v8 + 28));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Resync due to asset path resync queued: %s\n", v12, v13, Text);
        }
      }

      else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath((v8 + 28)))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath((v8 + 28), &v22);
        v24 = &v22;
        v14 = sub_29A88FFE8(a4, &v22, &unk_29B4D6118, &v24);
        NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v8 + 28));
        sub_29A1D8028((v14 + 10), NameToken);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
        sub_29A1DE3A4(&v22);
        if (sub_29AF49C14(2))
        {
          v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v8 + 28));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Property update due to asset path resync queued: %s\n", v17, v18, v16);
        }
      }

      v19 = v8[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v8[2];
          v21 = *v20 == v8;
          v8 = v20;
        }

        while (!v21);
      }

      v8 = v20;
    }

    while (v20 != v10);
  }

  std::mutex::unlock((a1 + 616));
}

void sub_29AFCD228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

int *pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_ApplyPendingResyncs(int *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = (this + 30);
  if (*(this + 15))
  {
    v2 = this;
    v3 = *(this + 105);
    this = *(this + 104);
    if (this != v3)
    {
      this = sub_29A24ED30(this, v3, v8, 126 - 2 * __clz((v3 - this) >> 3), 1);
      v4 = *(v2 + 105);
      v5 = *(v2 + 104);
      if (v4 != v5)
      {
        v6 = sub_29A5A70E0(v1);
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v6, v5, &v7);
        pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::LookupAdapters(*(v2 + 113), &v7);
      }

      while (v4 != v5)
      {
        v4 = (v4 - 8);
        this = sub_29A1E230C((v2 + 208), v4);
      }

      *(v2 + 105) = v5;
    }
  }

  return this;
}

void sub_29AFCD670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFCD710(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::ApplyPendingUpdates(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex *this, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v7 = *MEMORY[0x29EDCA608];
  if (*(result + 120))
  {
    v4 = result;
    if (*(result + 872) || *(result + 896) || *(result + 832) != *(result + 840))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_ApplyPendingResyncs(result);
      v6 = 0x1000000000;
      pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_ComputeDirtiedEntries(v4, (v4 + 880));
      sub_29AFCE4F4(v4 + 880, *(v4 + 888));
      *(v4 + 880) = v4 + 888;
      *(v4 + 888) = 0u;
      pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_ComputeDirtiedEntries(v4, (v4 + 856));
      sub_29AFCE4F4(v4 + 856, *(v4 + 864));
      *(v4 + 856) = v4 + 864;
      *(v4 + 864) = 0u;
      if (*(v4 + 832) != *(v4 + 840))
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_ApplyPendingResyncs(v4);
      }

      if (v6)
      {
        pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v4, v5);
      }

      return sub_29ABD3844(v5);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_ComputeDirtiedEntries(uint64_t result, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    v3 = result;
    v4 = sub_29A5A70E0((result + 120));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v4, (v2 + 4), v5);
    pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::LookupAdapters(*(v3 + 904), v5);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals::FlagAsTimeVarying(pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::_StageGlobals *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_29AFCE034(this + 1, &v5, a2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert((v7 + 24), a3);
  v7 = 0;
  return sub_29A0F845C(&v5);
}

void sub_29AFCE01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFCE034(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29AFCEB48(a1, 1, a3, 0, a2, 1, sub_29AFCEE60, 0);
}

uint64_t sub_29AFCE118(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        *v11 = *v10;
        sub_29AFCF01C();
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29AFCF410(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

void sub_29AFCE1E4(uint64_t a1)
{
  *a1 = &unk_2A20A8BC0;
  std::mutex::~mutex((a1 + 616));
  sub_29A1E2AEC(a1 + 592, *(a1 + 600));
  sub_29AFCE118((a1 + 8));
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals::~UsdImagingDataSourceStageGlobals(a1);

  operator delete(v2);
}

unint64_t sub_29AFCE258(atomic_ullong *a1)
{
  v2 = sub_29AFCE2D8();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = (v2 + 8);
      sub_29A124AB0(&v6);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens_StaticTokenType *sub_29AFCE2D8()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens_StaticTokenType::UsdImagingStageSceneIndexTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AFCE31C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t sub_29AFCE3CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t *sub_29AFCE430(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_29A03AFE8(a1, v4);
      sub_29AFA6978((v4 + 4));
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void sub_29AFCE498(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = (a2 + 1680);
    sub_29A0176E4(&v7);
    sub_29AF15098(a2 + 1120, v3);
    sub_29AF151A0(a2 + 560, v4);
    v6 = sub_29AF152B8(a2, v5);
    operator delete(v6);
  }
}

void sub_29AFCE4F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AFCE4F4(a1, *a2);
    sub_29AFCE4F4(a1, a2[1]);
    sub_29AFA6978((a2 + 4));

    operator delete(a2);
  }
}

void *sub_29AFCE550(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A8C28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFCE5A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFCE5C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFCE5EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFCE61C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A8C78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AFCE65C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 16), &v5);
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

void sub_29AFCE6B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AFCE6D0(void *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9.n128_u64[0] = a2;
  v9.n128_u64[1] = a3;
  sub_29A89A040(v8, a4);
  v5 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v7);
  sub_29B2CDA30(v5, a1, &v9, v8);
  sub_29B29B9F8(v7, v8);
  return v5;
}

void sub_29AFCE748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AFCE7A4(uint64_t a1, const std::type_info *a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v12);
  if (v12[0] == v2)
  {
    v12[0] = "tf/notice.h";
    v12[1] = "GetNoticeType";
    v12[2] = 614;
    v12[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>]";
    v13 = 0;
    v14 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((off_2A205BC00 & 0x7FFFFFFFFFFFFFFFLL), &v8);
    v3 = std::string::insert(&v8, 0, "notice type ");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v9, " undefined in the TfType system");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v12, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  return v2;
}

void sub_29AFCE8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AFCE910(void *a1, char *a2, uint64_t a3)
{
  v6 = (*(*a1 + 24))(a1);
  result = pxrInternal__aapl__pxrReserved__::TfType::IsA(a2, v6);
  if (result)
  {
    if (a1[8])
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    result = 0;
    if (a3)
    {
      if ((a1[8] & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
      }
    }
  }

  return result;
}

void *sub_29AFCE9AC(uint64_t a1)
{
  v2 = operator new(0x58uLL);
  (*(*a1 + 24))(a1);
  sub_29B2CDA30(v2, (a1 + 40), (a1 + 72), (a1 + 56));
  return v2;
}

uint64_t sub_29AFCEA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = a5 - 16;
  }

  else
  {
    v8 = 0;
  }

  sub_29A5B05F4(v13, v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = (a2 + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  v9(v11, a3, v13);
  return sub_29B28F9E0(v13);
}

void sub_29AFCEAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFCEAF8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2CE00C();
}

uint64_t sub_29AFCEB48(uint64_t *a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, unsigned int *, uint64_t), void *a8)
{
  v13 = 0;
  v14 = bswap64(0x9E3779B97F4A7C55 * (a3[1] + ((a3[1] + *a3 + (a3[1] + *a3) * (a3[1] + *a3)) >> 1)));
  v15 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29AFCF050(&v30, a1, v15 & v14, 0);
    v16 = (v32 + 16);
    do
    {
      v16 = *v16;
    }

    while (v16 >= 0x40 && *a3 != v16[2]);
    if (a2)
    {
      break;
    }

    if (v16)
    {
      v17 = 1;
LABEL_10:
      v18 = a8;
      if (!a5)
      {
        goto LABEL_45;
      }

LABEL_11:
      if ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v19 = 2;
        while ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v20 = v19 < 16;
          v19 *= 2;
          if (!v20)
          {
            v21 = v30;
            v30 = 0;
            if (v31 == 1)
            {
LABEL_16:
              v22 = *v21;
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v24 = v22;
                atomic_compare_exchange_strong(v21, &v24, v23);
                if (v24 == v22)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
                {
                  sched_yield();
                  goto LABEL_16;
                }
              }
            }

            else
            {
              atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v25 = *a1;
            __dmb(0xBu);
            a8 = v18;
            goto LABEL_31;
          }
        }
      }

      sub_29A0F845C(&v30);
      *(a5 + 16) = v16;
      *(a5 + 24) = v14;
      if (!v13)
      {
        goto LABEL_42;
      }

LABEL_41:
      sub_29AFCEE94(a1, v13, (a1 + 72), 0);
      goto LABEL_42;
    }

    v25 = *a1;
    __dmb(0xBu);
    if (v15 == v25 || !sub_29A108BB8(a1, v14, v15, v25))
    {
      sub_29A0F845C(&v30);
      return 0;
    }

LABEL_31:
    sub_29A0F845C(&v30);
    v15 = v25;
  }

  if (v16)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_10;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v31 & 1) == 0)
  {
    v31 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v30) & 1) == 0)
    {
      v16 = (v32 + 16);
      while (1)
      {
        v16 = *v16;
        if (v16 < 0x40)
        {
          break;
        }

        if (*a3 == v16[2])
        {
          if (v31 != 1)
          {
            goto LABEL_7;
          }

          v17 = 0;
          atomic_fetch_add(v30, 3uLL);
          v31 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v25 = *a1;
  __dmb(0xBu);
  if (v15 != v25)
  {
    if (!sub_29A108BB8(a1, v14, v15, v25))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v25 = v15;
LABEL_33:
  v13 = sub_29A108650(a1, v32, a8, v25);
  v18 = 0;
  v17 = 1;
  v16 = a8;
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_45:
  sub_29A0F845C(&v30);
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v18)
  {
    sub_29AFCF01C();
  }

  return v17;
}

void sub_29AFCEE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29AFCEE94(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29AFCF050(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29AFCF12C(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29AFCF12C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29AFCF050(&v15, a1, v10 & a3, 0);
  v11 = (v17 + 16);
  v12 = *(v17 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while ((bswap64(0x9E3779B97F4A7C55 * (*(v12 + 20) + ((*(v12 + 20) + *(v12 + 16) + (*(v12 + 20) + *(v12 + 16)) * (*(v12 + 20) + *(v12 + 16))) >> 1))) & v13) == a3)
    {
      if (v16 & 1) != 0 || (v16 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v15)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_24:
        v12 = *v11;
        if (*v11 <= 0x3F)
        {
          return sub_29A0F845C(&v15);
        }
      }

      else
      {
        v11 = (v17 + 16);
        v12 = *(v17 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v15);
        }
      }
    }

    v11 = v12;
    goto LABEL_24;
  }

  return sub_29A0F845C(&v15);
}

void sub_29AFCF2C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFCF320(uint64_t a1, uint64_t a2, _DWORD **a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x1E0);
  v9[1] = a1;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 400) = 0u;
  *(v5 + 416) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 464) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  v6 = *a3;
  sub_29A1E21F4((v5 + 16), v6);
  sub_29A1E2240((v5 + 20), v6 + 1);
  *(v5 + 472) = 0x800000000;
  v9[0] = 0;
  sub_29AFCF3DC(v9, v7);
  return v5;
}

uint64_t *sub_29AFCF3DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

uint64_t sub_29AFCF410(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ToDs(_DWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_29ABE8360(a1, &v12);
  v13 = v12;
  v12 = 0uLL;
  v4 = pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::Builder::SetInstancer(&v14, &v13);
  v5 = operator new(0x10uLL);
  *v5 = &unk_2A2077528;
  v5[2] = a1[2];
  sub_29ABF40E4(&v10, v5);
  v11 = v10;
  v10 = 0uLL;
  v6 = pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::Builder::SetPrototypeIndex(v4, &v11);
  sub_29ABF4FA0((a1 + 4), &v8);
  v9 = v8;
  v8 = 0uLL;
  v7 = pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::Builder::SetInstanceIndices(v6, &v9);
  pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::Builder::Build(v7, a2);
  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
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
}

void sub_29AFCF5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29ABF2F5C((v20 - 80));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ToDs(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_29A039314(&v11, 0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 3));
    v6 = *a1;
    v7 = a1[1];
    while (v6 != v7)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ToDs(v6, &v9);
      v10 = v9;
      v9 = 0uLL;
      sub_29A01729C(&v11, &v10);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }

      v6 += 14;
    }

    v8 = v11;
    *&v9 = (v12 - v11) >> 4;
    sub_29AC00FD8(&v9, &v8, &v10);
    *a2 = v10;
    *&v10 = &v11;
    sub_29A0176E4(&v10);
  }
}

{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_29A039314(&v11, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
    v6 = *a1;
    v7 = a1[1];
    while (v6 != v7)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ToDs(v6, &v9);
      v10 = v9;
      v9 = 0uLL;
      sub_29A01729C(&v11, &v10);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }

      v6 += 3;
    }

    v8 = v11;
    *&v9 = (v12 - v11) >> 4;
    sub_29AC00FD8(&v9, &v8, &v10);
    *a2 = v10;
    *&v10 = &v11;
    sub_29A0176E4(&v10);
  }
}

void sub_29AFCF72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  sub_29A0176E4(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ToDs(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v11 = 0u;
  v12 = 0u;
  v8 = 1;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v8, &v9);
  v10 = v9;
  v9 = 0uLL;
  v4 = pxrInternal__aapl__pxrReserved__::HdSelectionSchema::Builder::SetFullySelected(&v11, &v10);
  pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ToDs(a1, &v6);
  v5 = pxrInternal__aapl__pxrReserved__::HdSelectionSchema::Builder::SetNestedInstanceIndices(v4, &v6);
  pxrInternal__aapl__pxrReserved__::HdSelectionSchema::Builder::Build(v5, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }
}

void sub_29AFCF838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29A95E544(va);
  _Unwind_Resume(a1);
}

void sub_29AFCF978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  sub_29A0176E4(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_GetPath(uint64_t *a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  if ((a2 & 0x80000000) != 0 || (v4 = *a1) == 0)
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  else
  {
    (*(*v4 + 32))(v7, 0.0);
    if (v7[0] <= a2)
    {
      *a3 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
    }

    else
    {
      v6 = (v7[4] + 8 * a2);
      sub_29A1E21F4(a3, v6);
      sub_29A1E2240(a3 + 1, v6 + 1);
    }

    sub_29ABED558(v7);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_GetIndexOfPrototype(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl *this, pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetPrototypes(this, &v7);
  if (v7)
  {
    (*(*v7 + 32))(v6, 0.0);
    if (v6[0])
    {
      v4 = 0;
      while (*(v6[4] + 8 * v4) != *a2)
      {
        if (v6[0] == ++v4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v4 = 0;
    }

    sub_29ABED558(v6);
  }

  else
  {
    v4 = 0;
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return v4;
}

void sub_29AFCFB74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_NumInstances(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl *this, pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *a2)
{
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetInstanceIndices(this, &v3);
  sub_29AC3721C(&v3, &v5);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v5)
  {
    (*(*v5 + 32))(&v3, 0.0);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return 0;
}

void sub_29AFCFC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 - 24);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_Range@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl *this@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19D6E4(a2, this);
  if (this)
  {
    v5 = 0;
    do
    {
      result = sub_29A19DBEC(a2);
      *(*(a2 + 32) + 4 * v5) = v5;
      v5 = (v5 + 1);
    }

    while (this != v5);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeAllInstanceIndicesForPrototype(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(a2);
  (*(*v6 + 16))(&v19);
  v26 = v20;
  v20 = 0uLL;
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetFromParent(&v26, &v24);
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPaths(&v24, &v22);
  if (v22)
  {
    (*(*v22 + 32))(&v19, 0.0);
    if (v19 != 1)
    {
      if (!v19)
      {
        *a3 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a3 + 4));
        *(a3 + 8) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0;
        sub_29ABED558(&v19);
        goto LABEL_18;
      }

      *&v16 = "usdImaging/selectionSceneIndex.cpp";
      *(&v16 + 1) = "_ComputeAllInstanceIndicesForPrototype";
      *&v17 = 302;
      *(&v17 + 1) = "_InstanceIndices pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeAllInstanceIndicesForPrototype(const SdfPath &, const HdSceneIndexBaseRefPtr &)";
      LOBYTE(v18) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 1, "Expected at most one instancer");
    }

    v7 = v21;
    v8 = sub_29AC1199C(a2);
    (*(*v8 + 16))(&v16);
    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent(&v16 + 1, &v15);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    IndexOfPrototype = pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_GetIndexOfPrototype(&v15, a1, v9);
    v11 = pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_NumInstances(&v15, IndexOfPrototype);
    pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_Range(v11, &v16);
    sub_29A1E21F4(a3, v7);
    sub_29A1E2240((a3 + 4), v7 + 1);
    *(a3 + 8) = IndexOfPrototype;
    v12 = v17;
    *(a3 + 16) = v16;
    *(a3 + 32) = v12;
    v13 = v18;
    *(a3 + 48) = v18;
    if (v13)
    {
      v14 = (v13 - 16);
      if (*(a3 + 40))
      {
        v14 = *(a3 + 40);
      }

      atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a3 + 4));
  *(a3 + 8) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
LABEL_18:
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }
}

void sub_29AFCFF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29ABED558(va);
  v10 = *(v8 - 72);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = *(v8 - 56);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v8 - 40);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeAllNestedInstanceIndicesForPrototype(_DWORD *a1, uint64_t *a2)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_29A1E21F4(&v15, a1);
  sub_29A1E2240(&v16, a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeAllInstanceIndicesForPrototype(&v15, a2, &v12);
  if (sub_29AF49C14(9) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12) && sub_29AF49C14(9))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v15);
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v12);
    v6 = v13;
    sub_29AFD027C(&v14);
    p_p = &__p;
    if (v11 < 0)
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("                Protoype %s is instanced by instancer %s (as its %d. prototype)\n                    Instance indices: %s\n", v7, v8, Text, v5, v6, p_p);
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  sub_29A2258F0(&v15, &v12);
  sub_29A225948(&v16, &v12 + 1);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15))
  {
    sub_29AFD04B8(&v17, &v12);
  }

  else
  {
    if (v17 != v18 && v18 - 14 > v17)
    {
      sub_29AFD2634(v17);
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AFD01F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *v26 = v29;
  v26[1] = v28;
  v26[2] = v27;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29AFD04F8();
}

uint64_t sub_29AFD027C(uint64_t a1)
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
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v7, a1, &v13, sub_29A19E054);
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

void sub_29AFD0494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFD04B8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AFD2804(a1, a2);
  }

  else
  {
    sub_29AFD2794(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputePiPropagatedPathsAndNestedInstanceIndices(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(a1, &v18);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetPiPropagatedPrototypes(&v18, &v16);
  if (v16)
  {
    (*(*v16 + 16))(&v14);
    v4 = v14;
    for (i = v15; v4 != i; v4 += 8)
    {
      (*(*v16 + 24))(&v9);
      sub_29ABE1B68(&v9, &v12);
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      if (v12)
      {
        (*(*v12 + 32))(&v11, 0.0);
        if (sub_29AF49C14(9))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v11);
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("            Prim is PI prototype with propagated copy at %s\n", v7, v8, Text);
        }

        sub_29A1E21F4(&v9, &v11);
        sub_29A1E2240(&v9 + 1, &v11 + 1);
        pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeAllNestedInstanceIndicesForPrototype(&v11, a2);
      }

      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    v9 = &v14;
    sub_29A124AB0(&v9);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }
}

void sub_29AFD0730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  v23 = *(v21 - 80);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  sub_29AFD2BBC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFD07D8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AFD2C90(a1, a2);
  }

  else
  {
    sub_29AFD2DA0(a1, a1[1], a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

_DWORD *sub_29AFD0824(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29AFD2560(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeNiPrototypePathAndInstanceIndices(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl *this@<X0>, pxrInternal__aapl__pxrReserved__::HdInstanceSchema *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetInstancer(this, &v18);
  if (v18)
  {
    (*(*v18 + 4))(&v8, 0.0);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetPrototypeIndex(this, &v18);
  if (v18)
  {
    v13 = (*(*v18 + 4))(v18, 0.0);
    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetPrototypes(a2, &v10);
    pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_GetPath(&v10, v13, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetInstanceIndex(this, &v8);
  if (v8)
  {
    v7 = (*(*v8 + 32))(v8, 0.0);
    v20 = &v8;
    v21 = &v7;
    sub_29A19D79C(v14);
    v18 = &v21;
    v19 = &v20;
    sub_29A90D764(v14, 1uLL, &v18);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29AFD240C(a3, &v16, &v11);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AFD0AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v15 = *(v14 - 72);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  sub_29AFD04F8();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeNiPrototypePathAndInstanceIndices(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetFromParent(a1, &v14);
  pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetInstancer(&v14, &v13);
  if (v13)
  {
    (*(*v13 + 32))(&v7, 0.0);
    v5 = sub_29AC1199C(a2);
    (*(*v5 + 16))(&v8);
    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent(&v9, &v6);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeNiPrototypePathAndInstanceIndices(&v14, &v6, a3);
  }

  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6 + 1);
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v8 + 1);
  LODWORD(v9) = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  sub_29AFD240C(a3, &v6, &v8);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_TranslatePathToNiPrototype(uint64_t *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v6);
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeNiPrototypePathAndInstanceIndices(a1, a2, &__p);
}

void sub_29AFD0F74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29AFD04F8();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_Concat@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29AFD2FB8(a3, *a1, a1[1], 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3));
  return sub_29AFD30EC(a3, a3[1], *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
}

void sub_29AFD1170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFD2560(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_AddPiPropagatedPrototypes(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  memset(v16, 0, sizeof(v16));
  sub_29AFD2FB8(v16, *(a3 + 8), *(a3 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 16) - *(a3 + 8)) >> 3));
  pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputePiPropagatedPathsAndNestedInstanceIndices(a1, a2, &v14);
  v7 = v14;
  for (i = v15; v7 != i; v7 += 32)
  {
    if (sub_29AF49C14(9))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v7);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("            New path: %s\n", v10, v11, Text);
    }

    sub_29A1E21F4(&v12, v7);
    sub_29A1E2240(&v12 + 1, (v7 + 4));
    pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_Concat(v16, (v7 + 8), v13);
    sub_29AFD07D8(a4, &v12);
    v17 = v13;
    sub_29AFD2560(&v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
    sub_29A1DE3A4(&v12);
  }

  v12 = &v14;
  sub_29AFD2BBC(&v12);
  v12 = v16;
  sub_29AFD2560(&v12);
}

void sub_29AFD12C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a10 = &a17;
  sub_29AFD2560(&a10);
  _Unwind_Resume(a1);
}

void sub_29AFD1444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeSceneIndexPrimsAndInstanceIndices(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, uint64_t *a2@<X1>, void **a3@<X8>)
{
  v39 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1752378, memory_order_acquire) & 1) == 0)
  {
    v25 = __cxa_guard_acquire(&qword_2A1752378);
    if (v25)
    {
      v26 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v25);
      sub_29A1E21F4(dword_2A1752358, v26);
      sub_29A1E2240(&dword_2A1752358[1], v26 + 1);
      qword_2A1752360 = 0;
      qword_2A1752368 = 0;
      qword_2A1752370 = 0;
      __cxa_atexit(sub_29AFD0824, dword_2A1752358, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1752378);
    }
  }

  sub_29A1E21F4(&v37, dword_2A1752358);
  sub_29A1E2240(&v37 + 1, &dword_2A1752358[1]);
  memset(v38, 0, sizeof(v38));
  sub_29AFD2FB8(v38, qword_2A1752360, qword_2A1752368, 0x6DB6DB6DB6DB6DB7 * ((qword_2A1752368 - qword_2A1752360) >> 3));
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29AFD367C(a3, &v37, &v39, 1uLL);
  *&v33 = v38;
  sub_29AFD2560(&v33);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v37 + 1);
  sub_29A1DE3A4(&v37);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(a1, &v37);
  v6 = v37;
  for (i = v38[0]; v6 != i; v6 = (v6 + 8))
  {
    v8 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v6);
    v35 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 &= 0xFFFFFFFFFFFFFFF8;
    }

    if (sub_29AF49C14(9))
    {
      v11 = v35 & 0xFFFFFFFFFFFFFFF8;
      if ((v35 & 0xFFFFFFFFFFFFFFF8) != 0)
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

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    Processing next path element of usdPath: %s\n", v9, v10, v12);
    }

    v33 = 0uLL;
    v34 = 0;
    v13 = *a3;
    if (*a3 != a3[1])
    {
      sub_29A1E21F4(&v30, v13);
      sub_29A1E2240(&v31, v13 + 1);
      memset(v32, 0, sizeof(v32));
      sub_29AFD2FB8(v32, *(v13 + 1), *(v13 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 2) - *(v13 + 1)) >> 3));
      pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_AppendNameToSceneIndexPrimsAndInstanceIndices(&v30, &v35);
    }

    sub_29AFD3830(a3);
    *a3 = v33;
    a3[2] = v34;
    v34 = 0;
    v33 = 0uLL;
    v36 = &v33;
    sub_29AFD2BBC(&v36);
    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *&v33 = &v37;
  sub_29A1E234C(&v33);
  if (sub_29AF49C14(9))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    Traversing descendants of usdPath %s\n", v15, v16, Text);
  }

  if (a3[1] != *a3)
  {
    v17 = 0;
    do
    {
      if (sub_29AF49C14(9))
      {
        v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*a3 + 32 * v17));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("        Adding children of scene index prim %s\n", v19, v20, v18);
      }

      v21 = sub_29AC1199C(a2);
      (*(*v21 + 24))(&v37);
      v22 = v37;
      if (v37 != v38[0])
      {
        v23 = *a3 + 32 * v17;
        sub_29A1E21F4(&v27, v23);
        sub_29A1E2240(&v28, (v23 + 4));
        memset(v29, 0, sizeof(v29));
        sub_29AFD2FB8(v29, *(v23 + 8), *(v23 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(v23 + 16) - *(v23 + 8)) >> 3));
        NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v22);
        pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_AppendNameToSceneIndexPrimsAndInstanceIndices(&v27, NameToken);
      }

      *&v33 = &v37;
      sub_29A1E234C(&v33);
      ++v17;
    }

    while (v17 < (a3[1] - *a3) >> 5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::~UsdImagingSelectionSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex *this, const void *a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), a2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::~UsdImagingSelectionSceneIndex(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  if (*(a3 + 8))
  {
    sub_29AFD1C10((a3 + 8), this + 18, a2, &v9);
    v7 = v9;
    v9 = 0uLL;
    v8 = *(a3 + 16);
    *(a3 + 8) = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }
    }
  }
}

void *sub_29AFD1C10@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  sub_29AFD396C(v8, a1, a2, a3);

  return sub_29AFD3C5C(a4, v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::AddSelection(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v5 = v4;
  v6 = v3;
  v17[929] = *MEMORY[0x29EDCA608];
  if (sub_29AF49C14(9))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v5);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("UsdImagingSelectionSceneInedx::AddSelection(usdPath = %s)\n", v8, v9, Text);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ComputeSceneIndexPrimsAndInstanceIndices(v5, (v6 + 112), v15);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v10 = v15[0];
  if (v15[0] != v15[1])
  {
    v11 = *(v6 + 144);
    v16[0] = v15[0];
    v12 = sub_29A55C168(v11, v15[0], &unk_29B4D6118, v16);
    memset(v17, 0, 24);
    sub_29AFD2FB8(v17, v10[1], v10[2], 0x6DB6DB6DB6DB6DB7 * ((v10[2] - v10[1]) >> 3));
    sub_29AFD2054((v12 + 10), v17);
    v16[0] = v17;
    sub_29AFD2560(v16);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  sub_29A1E2AEC(&v13, v14[0]);
  v17[0] = v15;
  sub_29AFD2BBC(v17);
}

void sub_29AFD1FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_29ABC3488(va2);
  __cxa_guard_abort(&qword_2A1752548);
  sub_29ABD3844(&STACK[0x220]);
  sub_29A1E2AEC(va, v8);
  STACK[0x220] = va1;
  sub_29AFD2BBC(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFD2054(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AFD3D68(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = (v3 + 3);
  }

  *(a1 + 8) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::ClearSelection(pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v19 = *MEMORY[0x29EDCA608];
  if (sub_29AF49C14(9))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("UsdImagingSelectionSceneIndex::ClearSelection()\n", v4, v5);
  }

  if (*(*(v3 + 18) + 16))
  {
    v18 = 0x1000000000;
    IsObserved = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(v3);
    v7 = *(v3 + 18);
    if (IsObserved)
    {
      v8 = *(v7 + 16);
      if (v8 >= 0x11)
      {
        sub_29AC14D54(v17, v8);
        v7 = *(v3 + 18);
      }

      v9 = *v7;
      if (*v7 != v7 + 8)
      {
        do
        {
          if ((atomic_load_explicit(&qword_2A1752718, memory_order_acquire) & 1) == 0)
          {
            v13 = __cxa_guard_acquire(&qword_2A1752718);
            if (v13)
            {
              DefaultLocator = pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetDefaultLocator(v13);
              sub_29ABD30AC(v16, DefaultLocator);
              v15[0] = v16;
              v15[1] = 1;
              pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1752550, v15);
              sub_29ABC3488(v16);
              __cxa_atexit(sub_29ABE62AC, &unk_2A1752550, &dword_299FE7000);
              __cxa_guard_release(&qword_2A1752718);
            }
          }

          sub_29AC2C3E8(v17, v9 + 8, &unk_2A1752550);
          v10 = v9[1];
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
              v11 = v9[2];
              v12 = *v11 == v9;
              v9 = v11;
            }

            while (!v12);
          }

          v9 = v11;
        }

        while (v11 != (v7 + 8));
        v7 = *(v3 + 18);
      }
    }

    sub_29AFD3910(v7, *(v7 + 8));
    *v7 = v7 + 8;
    *(v7 + 16) = 0;
    *(v7 + 8) = 0;
    if (v18)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v3, v17);
    }

    sub_29ABD3844(v17);
  }
}

void sub_29AFD22B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29ABC3488(va);
  __cxa_guard_abort(&qword_2A1752718);
  sub_29ABD3844(va1);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex::_PrimsRemoved(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1[18] + 16))
  {
    v3 = *(a3 + 128);
    v4 = *(a3 + 132) >= 0x11u ? *a3 : a3;
    if (v3)
    {
      v5 = v4 + 8 * v3;
      do
      {
        if (*(a1[18] + 8))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
        }

        v4 += 8;
      }

      while (v4 != v5);
    }
  }

  return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
}

uint64_t sub_29AFD240C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29A1E21F4((a1 + 8), a3);
  sub_29A1E2240((a1 + 12), (a3 + 4));
  *(a1 + 16) = *(a3 + 8);
  v7 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 32);
  *(a1 + 24) = v7;
  v8 = *(a3 + 48);
  *(a1 + 56) = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(a1 + 48))
    {
      v9 = *(a1 + 48);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  return a1;
}

_DWORD *sub_29AFD24A0(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29AFD24EC(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29AFD24EC(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_29AFD2560(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_29AFD2560(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29AFD25E8();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29AFD2634(int *a1)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v4 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v5 = a1[2];
  v2 = *(a1 + 2);
  v6 = *(a1 + 1);
  v7 = v2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v8 = *(a1 + 6);
  *(a1 + 6) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

double sub_29AFD2794(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  sub_29A1DDD84(v4, a2);
  sub_29A1DDDC0((v4 + 4), (a2 + 4));
  *(v4 + 8) = *(a2 + 8);
  v5 = *(a2 + 32);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 32) = v5;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(v4 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t sub_29AFD2804(uint64_t *a1, uint64_t a2)
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
  sub_29A1DDD84(v8, a2);
  sub_29A1DDDC0(v8 + 1, (a2 + 4));
  *(v8 + 2) = *(a2 + 8);
  v9 = *(a2 + 32);
  *(v8 + 1) = *(a2 + 16);
  *(v8 + 2) = v9;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 48) = 0;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29AFD2978(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29AFD2B40(&v16);
  return v15;
}

void sub_29AFD2964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AFD2B40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFD2978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      sub_29AFD2A44(a1, a4, v7);
      v7 += 56;
      a4 = v12 + 56;
      v12 += 56;
    }

    while (v7 != a3);
    v10 = 1;
    if (a2 != a3)
    {
      sub_29AFD25E8();
    }
  }

  return sub_29AFD2AB4(v9);
}

_DWORD *sub_29AFD2A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  result = sub_29A1E2240((a2 + 4), (a3 + 4));
  *(a2 + 8) = *(a3 + 8);
  v6 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v6;
  v7 = *(a3 + 48);
  *(a2 + 48) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AFD2AB4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AFD2AEC(a1);
  }

  return a1;
}

uint64_t sub_29AFD2AEC(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    sub_29AFD25E8();
  }

  return result;
}

void **sub_29AFD2B40(void **a1)
{
  sub_29AFD2B74(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AFD2B74(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != *(result + 8))
  {
    *(result + 16) = v1 - 56;
    sub_29AFD25E8();
  }

  return result;
}

void sub_29AFD2BBC(void ***a1)
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
        sub_29AFD2C44(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AFD2C44(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  sub_29AFD2560(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));
  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AFD2C90(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[32 * v2];
  *(&v17 + 1) = &v8[32 * v7];
  sub_29AFD2DA0(a1, v16, a2);
  *&v17 = v16 + 32;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29AFD2DFC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AFD2F3C(&v15);
  return v14;
}

void sub_29AFD2D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AFD2F3C(va);
  _Unwind_Resume(a1);
}

__n128 sub_29AFD2DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0((a2 + 4), (a3 + 4));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = *(a3 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_29AFD2DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AFD2DA0(a1, a4, v7);
      v7 += 32;
      a4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AFD2C44(a1, v5);
      v5 += 32;
    }
  }

  return sub_29AFD2EB0(v9);
}

uint64_t sub_29AFD2EB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AFD2EE8(a1);
  }

  return a1;
}

uint64_t *sub_29AFD2EE8(uint64_t *result)
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
      result = sub_29AFD2C44(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AFD2F3C(void **a1)
{
  sub_29AFD2F70(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AFD2F70(_DWORD *result)
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
      result = sub_29AFD2C44(v4, v1 - 32);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void *sub_29AFD2FB8(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A044EF0(result, a4);
    result = sub_29AFD3040(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AFD3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AFD2560(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFD3040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AFD2A44(a1, v4, v6);
      v6 += 56;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AFD2AB4(v9);
  return v4;
}

uint64_t sub_29AFD30EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_29AFD32FC(a1, a2, a1[1], a2 + 56 * a5);
        v19 = v20 + v7;
      }

      else
      {
        a1[1] = sub_29AFD348C(a1, v18 + a3, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29AFD32FC(a1, v5, v10, v5 + 56 * a5);
        v19 = v18 + v7;
      }

      sub_29AFD35F8(v25, v7, v19, v5);
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
    v28 = a1;
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
    v26 = v21;
    v27 = &v17[56 * v15];
    v22 = 56 * a5;
    v23 = &v21[56 * a5];
    do
    {
      sub_29AFD2A44(v28, v21, v7);
      v21 += 56;
      v7 += 56;
      v22 -= 56;
    }

    while (v22);
    v26 = v23;
    v5 = sub_29AFD33D0(a1, v25, v5);
    sub_29AFD2B40(v25);
  }

  return v5;
}

uint64_t sub_29AFD32FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = v7 + v10;
      v12 = v6 + v10;
      sub_29A1DDD84((v6 + v10), (v7 + v10));
      sub_29A1DDDC0((v6 + v10 + 4), (v7 + v10 + 4));
      *(v12 + 8) = *(v7 + v10 + 8);
      v13 = *(v7 + v10 + 32);
      *(v12 + 16) = *(v7 + v10 + 16);
      *(v12 + 32) = v13;
      *(v11 + 16) = 0u;
      *(v11 + 32) = 0u;
      *(v12 + 48) = *(v7 + v10 + 48);
      *(v11 + 48) = 0;
      v10 += 56;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return sub_29AFD3538(&v15, a2, v7);
}

uint64_t sub_29AFD33D0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29AFD2978(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29AFD2978(a1, v7, a3, v9);
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

uint64_t sub_29AFD348C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AFD2A44(a1, v4, v6);
      v6 += 56;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AFD2AB4(v9);
  return v4;
}

uint64_t sub_29AFD3538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a3;
}

uint64_t sub_29AFD35F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A2258F0(a4, v5);
    sub_29A225948((a4 + 4), (v5 + 4));
    *(a4 + 8) = *(v5 + 8);
    sub_29A27CF04((a4 + 16), (v5 + 16));
    a4 += 56;
    v5 += 56;
  }

  while (v5 != v6);
  return v6;
}

void *sub_29AFD367C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29AFD3704(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AFD36E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AFD2BBC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFD3704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AFD37B0(a1, v4, v6);
      v6 += 32;
      v4 = v12 + 32;
      v12 += 32;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AFD2EB0(v9);
  return v4;
}

void *sub_29AFD37B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240((a2 + 4), (a3 + 4));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return sub_29AFD2FB8((a2 + 8), *(a3 + 8), *(a3 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 16) - *(a3 + 8)) >> 3));
}

void sub_29AFD3830(void **a1)
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
        v3 -= 32;
        sub_29AFD2C44(a1, v3);
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

void sub_29AFD38BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A8D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AFD3910(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AFD3910(a1, *a2);
    sub_29AFD3910(a1, a2[1]);
    sub_29AFD24A0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_29AFD396C(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4)
{
  v7 = *a2;
  v6 = a2[1];
  *a1 = &unk_2A20A8DE0;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 40), a4);
  sub_29A1E2240((a1 + 44), a4 + 1);
  return a1;
}

void sub_29AFD39F8(uint64_t a1)
{
  *a1 = &unk_2A20A8DE0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AFD3A70(uint64_t a1)
{
  *a1 = &unk_2A20A8DE0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v4);
}

pxrInternal__aapl__pxrReserved__::HdSelectionsSchema *sub_29AFD3AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  result = sub_29A55CDFC(*(a1 + 24));
  if ((*(a1 + 24) + 8) != result)
  {
    SchemaToken = pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetSchemaToken(result);
    return sub_29A1D8028(a2, SchemaToken);
  }

  return result;
}

void sub_29AFD3B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AFD3B84(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {
    v6 = *(**(a1 + 8) + 24);

    v6();
  }

  else
  {
    v5 = sub_29A55CDFC(*(a1 + 24));
    if (*(a1 + 24) + 8 == v5)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingSelectionSceneIndex_Impl::_ToDs((v5 + 40), &v7);
      *a3 = v7;
    }
  }
}

void *sub_29AFD3C5C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A8E28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFD3CB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFD3CD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFD3CF8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFD3D28(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A8E78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFD3D68(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

  v8 = &v7[3 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[3 * v6];
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = *a2;
  v8[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v17 = v8 + 3;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  sub_29AFD3EA8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AFD3FE4(&v15);
  return v14;
}

void sub_29AFD3E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AFD3FE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFD3EA8(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      sub_29AFD2560(&v12);
      v5 += 3;
    }
  }

  return sub_29AFD3F60(v8);
}

uint64_t sub_29AFD3F60(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AFD3F98(a1);
  }

  return a1;
}

void sub_29AFD3F98(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_29AFD2560(&v3);
  }
}

void **sub_29AFD3FE4(void **a1)
{
  sub_29AFD4018(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AFD4018(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29AFD2560(&v5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType::~UsdImagingTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType *this)
{
  v29 = (this + 224);
  sub_29A124AB0(&v29);
  v2 = *(this + 27);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 26);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 25);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 24);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 23);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 22);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 21);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 20);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 19);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 18);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 17);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 16);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 15);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 14);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 13);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 12);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 11);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 10);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 9);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 8);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 7);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 6);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 5);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 4);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 3);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 2);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 1);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType::UsdImagingTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType *this)
{
  v63 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "collection:lightLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "collection:shadowLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "config:", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "faceIndexPrimvar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "faceOffsetPrimvar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "primvars:normals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "primvars:widths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "ptexFaceIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "ptexFaceOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "usdPopulatedPrimCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "usdVaryingExtent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "usdVaryingPrimvar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "usdVaryingTopology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "usdVaryingVisibility", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "usdVaryingWidths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "usdVaryingNormals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "usdVaryingXform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "usdVaryingTexture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "uvPrimvar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "UsdPreviewSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "UsdUVTexture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "UsdPrimvarReader_float", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "UsdPrimvarReader_float2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "UsdPrimvarReader_float3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "UsdPrimvarReader_float4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "UsdPrimvarReader_int", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "UsdTransform2d", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "__usdStageSceneIndexRepopulate", 0);
  v3 = (this + 224);
  v4 = *this;
  v35 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v36 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v37 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v38 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v39 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v40 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v41 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v42 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v43 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v44 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v45 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v46 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v47 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v48 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v49 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v50 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v51 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v52 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v53 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v54 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v55 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 21);
  v56 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 22);
  v57 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 23);
  v58 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 24);
  v59 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 25);
  v60 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 26);
  v61 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 27);
  v62 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  sub_29A12EF7C(v3, &v35, &v63, 0x1CuLL);
  for (i = 216; i != -8; i -= 8)
  {
    v33 = *(&v35 + i);
    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AFD4AF0(_Unwind_Exception *a1)
{
  v3 = 216;
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
      v5 = v1[27];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[26];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[25];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[24];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[23];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[22];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[21];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[20];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[19];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[18];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[17];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[16];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[15];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[14];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[13];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[12];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[11];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[10];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[9];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[8];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[7];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[6];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[5];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[4];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[3];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[2];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[1];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *this)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::GetImagingSubprims(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::InvalidateImagingSubprim@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x800000000;
  *(a1 + 448) = 0x800000000;
  return result;
}

uint64_t sub_29AFD4EF8()
{
  v1 = nullsub_1759;
  return sub_29AFD7C40(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::~UsdImagingBasisCurvesAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v7 = *(v6 + 10);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29AFD51A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFD51B4@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim::UsdImagingDataSourceBasisCurvesPrim(v8, a1, &v13, a3);
  sub_29AFD7E6C(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, void *a5@<X8>)
{
  if (!*a2)
  {
    return pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim::Invalidate(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  a5[56] = 0x800000000;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 10);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29AFD5430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v4 + 54) ^ *a2) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v5 + 84) ^ *a2) < 8)
  {
    return 1;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_IsBuiltinPrimvar(this, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, _DWORD *a3, __int16 a4)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(a1, a2, a3, a4);
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  result = sub_29AFB9C00(PrimvarDescCache, a3);
  if (a4 < 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v15, a2);
    v16 = 0;
    v15[0] = &unk_2A2060598;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v10)
    {
      v10 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v15, (v10 + 48), v14);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v14, v11);
  }

  if ((a4 & 0x800) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v15, a2);
    v16 = 0;
    v15[0] = &unk_2A2060598;
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v12)
    {
      v12 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v15, (v12 + 40), v14);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v14, v13);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 102) ^ *a4) < 8)
  {
    return 32;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 28) ^ *a4) < 8)
  {
    return 256;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 4) ^ *a4) < 8)
  {
    return 256;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 142) ^ *a4) < 8)
  {
    return 256;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v13 + 166) ^ *a4) < 8)
  {
    return 256;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v15 + 165) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v31, a2);
    v31[0] = &unk_2A205FD48;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomCurves::GetWidthsInterpolation(v31, &v29);
    v30 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v29, v17);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v18)
  {
    v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v18 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v31, a2);
    v31[0] = &unk_2A2060168;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v31, &v29);
    v30 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v29, v20);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v21)
  {
    v21 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v21 + 6) ^ *a4) <= 7)
  {
    v22 = this;
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = 0x8000;
    goto LABEL_39;
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v27)
  {
    v27 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  v28 = *(v27 + 5) ^ *a4;
  v22 = this;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  if (v28 <= 7)
  {
    v26 = 2048;
LABEL_39:

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(v22, v23, v24, v25, v26, 1);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void sub_29AFD6894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::~UsdGeomPointBased(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::GetTopology(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v5, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  memset(&v4[1], 0, 24);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AFD7134(a2, (v3 + 32), v4);
}

void sub_29AFD702C(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v1 - 120);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(v1 - 112);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(v1 - 104);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(v1 - 96);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(v1 - 88);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v1 - 80);
  _Unwind_Resume(a1);
}

void sub_29AFD7134(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a2, &v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void sub_29AFD71C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A5888DC(&a9);
  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AFD71F4(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a2, &v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  sub_29A0ECEEC(&v22, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v12 + 54) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v13)
    {
      v13 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v13 + 40), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v14);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v15)
  {
    v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v15 + 84) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v16)
    {
      v16 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v16 + 48), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v17);
  }

  result = pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(a1, a2, a3, a4, a5, a6);
  if (v22)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }

  return result;
}

void sub_29AFD7918(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter::_GetRprimPrimvarNames(pxrInternal__aapl__pxrReserved__::UsdImagingBasisCurvesAdapter *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1752738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752738))
  {
    v2 = atomic_load(&qword_2A1752740);
    if (!v2)
    {
      v2 = sub_29AFD7F78();
    }

    v3 = *v2;
    v11 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v4;
      }
    }

    v5 = atomic_load(&qword_2A1752740);
    if (!v5)
    {
      v5 = sub_29AFD7F78();
    }

    v6 = *(v5 + 8);
    v12 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&qword_2A1752740);
    if (!v7)
    {
      v7 = sub_29AFD7F78();
    }

    v8 = *(v7 + 16);
    v13 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1752720 = 0;
    *algn_2A1752728 = 0;
    qword_2A1752730 = 0;
    sub_29A12EF7C(&qword_2A1752720, &v11, &v14, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v11 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1752720, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1752738);
  }

  return &qword_2A1752720;
}

uint64_t sub_29AFD7C40(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20A9178;
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

void sub_29AFD7CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFD7CF0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFD7D18@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFD7D54(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFD7D54(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20A91B8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20A8F18;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFD7E00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A91B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AFD7E6C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A9208;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFD7EC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFD7EE0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFD7F08(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFD7F38(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A9258))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29AFD7F78()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "pointSizeScale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "screenSpaceWidths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "minScreenSpaceWidths", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A1752740, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A1752740);
  }

  return v0;
}

void sub_29AFD80F4(_Unwind_Exception *a1)
{
  v4 = 16;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AFD8190()
{
  v1 = nullsub_1760;
  return sub_29AFD9C04(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::~UsdImagingCapsuleAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
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

pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::GetImagingSubprimData@<X0>(pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  if (!*a3)
  {
    StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(this);
    SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v7);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  *a4 = 0;
  a4[1] = 0;
  return this;
}

void sub_29AFD8488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFD84A0@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  sub_29AFD9E30(v8, a1, &v13, a3);
  sub_29AFDA424(a4, v8);
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

pxrInternal__aapl__pxrReserved__ *sub_29AFD85DC@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  sub_29AFDA530(v8, a1, &v13, a3);
  sub_29AFDAB24(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a4@<X3>, int a5@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a6@<X8>)
{
  if (!*a3)
  {
    StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(a1);
    SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v13);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
    {

      sub_29AFD87F0(a2, a3, a4, a5, a6);
    }

    sub_29AFD88C8(a2, a3, a4, a5, a6);
  }

  *&result = 0x800000000;
  *(a6 + 56) = 0x800000000;
  return result;
}

void sub_29AFD87F0(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29AFDA190();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

void sub_29AFD88C8(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29AFDA890();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29AFD8AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AFD9068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 51) ^ *a4) < 8)
  {
    return 32;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 115) ^ *a4) < 8)
  {
    return 32;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 116) ^ *a4) < 8)
  {
    return 32;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 117) ^ *a4) < 8)
  {
    return 32;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 3) ^ *a4) < 8)
  {
    return 32;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::GetPoints(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v26, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::GetPoints(const UsdPrim &, UsdTimeCode) const");
  v25[2] = 0x3FE0000000000000;
  v25[3] = 0x4000000000000000;
  v25[1] = 0x3FE0000000000000;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v4 = *(v3 + 170);
  v25[0] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25[0] &= 0xFFFFFFFFFFFFFFF8;
  }

  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(v3);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v6);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo);
  if (IsA)
  {
    v9 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
    v27[0] = &unk_2A205FBE8;
    pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::GetHeightAttr(v9, v17);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
  }

  v10 = pxrInternal__aapl__pxrReserved__::UsdGeomCapsule_1::_GetStaticTfType(IsA);
  v12 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v10, v11);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, v12))
  {
    v13 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
    v27[0] = &unk_2A205FC40;
    pxrInternal__aapl__pxrReserved__::UsdGeomCapsule_1::GetHeightAttr(v13, v17);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetImplicitBasis(v25, v17);
  v14 = pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::ComputeNumPoints(0xA, 4, 1);
  sub_29A193124(v15, v14);
  sub_29A1935CC(v15);
  v27[5] = v17;
  v28 = v16;
  v27[0] = sub_29AD318A8;
  v27[1] = 0;
  v27[2] = sub_29AD318E4;
  v27[3] = 0;
  v27[4] = &v28;
  pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::GetTopology@<X0>(uint64_t a1@<X8>)
{
  sub_29A0ECEEC(&v4, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingCapsuleAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if ((atomic_load_explicit(&qword_2A1752938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752938))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::GenerateTopology(0xA, 4, 1, v3);
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&unk_2A1752748, v3, 0);
    sub_29AB72E30();
  }

  *(a1 + 8) = &off_2A20A8498;
  result = sub_29AFBD25C(a1, &unk_2A1752748);
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  return result;
}

uint64_t sub_29AFD9C04(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20A94E0;
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

void sub_29AFD9C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFD9CB4(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFD9CDC@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFD9D18(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFD9D18(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20A9520;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20A9280;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFD9DC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A9520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AFD9E30(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 8);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, (a3 + 16));
  sub_29A1E2240(&v15, (a3 + 20));
  v9 = *(a3 + 24);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::UsdImagingDataSourceGprim(a1, a2, &v12, a4);
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

  *a1 = &unk_2A20A9570;
  return a1;
}

void sub_29AFD9F5C(uint64_t a1)
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

void sub_29AFD9FF8(uint64_t a1)
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

void *sub_29AFDA098@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AFDA0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AFDA0EC(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29AFDA190();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29AFDA190()
{
  if ((atomic_load_explicit(&qword_2A14FA0A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA0A0))
  {
    v1 = sub_29AFDA270(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA078, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA078, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA0A0);
  }

  return &unk_2A14FA078;
}

unint64_t sub_29AFDA270@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::GetSchemaAttributeNames(0);
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v5 = *v3;
      if ((*(result + 296) ^ *v3) >= 8)
      {
        v6 = *v3;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v7, v3);
        v8[0] = &unk_2A20A6098;
        v8[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v8[3] = v8;
        sub_29AF7EF90(a1, &v6);
        sub_29AF72C3C(v8);
        result = sub_29ABC3488(v7);
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AFDA3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29AFDA424(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A95B8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFDA47C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDA498(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDA4C0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFDA4F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A9608))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AFDA530(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 8);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, (a3 + 16));
  sub_29A1E2240(&v15, (a3 + 20));
  v9 = *(a3 + 24);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::UsdImagingDataSourceGprim(a1, a2, &v12, a4);
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

  *a1 = &unk_2A20A9630;
  return a1;
}

void sub_29AFDA65C(uint64_t a1)
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

void sub_29AFDA6F8(uint64_t a1)
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

void *sub_29AFDA798@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AFDA7D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AFDA7EC(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29AFDA890();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29AFDA890()
{
  if ((atomic_load_explicit(&qword_2A14FA0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA0D0))
  {
    v1 = sub_29AFDA970(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA0A8, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA0A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA0D0);
  }

  return &unk_2A14FA0A8;
}

unint64_t sub_29AFDA970@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomCapsule_1::GetSchemaAttributeNames(0);
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v5 = *v3;
      if ((*(result + 296) ^ *v3) >= 8)
      {
        v6 = *v3;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v7, v3);
        v8[0] = &unk_2A20A6098;
        v8[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v8[3] = v8;
        sub_29AF7EF90(a1, &v6);
        sub_29AF72C3C(v8);
        result = sub_29ABC3488(v7);
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AFDAAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29AFDAB24(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A9678;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFDAB7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDAB98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDABC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFDABF0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A96C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFDAC30()
{
  v1 = nullsub_1761;
  return sub_29AFDC328(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::~UsdImagingCameraAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v7 = *(v6 + 17);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29AFDAED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFDAEEC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim::UsdImagingDataSourceCameraPrim(v8, a1, &v13, a3);
  sub_29AFDC6A0(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X3>, int a3@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  if (*a1)
  {
    *(a4 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim::Invalidate(a1, a2, a3, a4);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v3 + 17);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::UsdGeomCamera *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, _DWORD *a3@<X8>)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomCamera::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v6);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) != 0 || (result = sub_29B2CE058(v10, a3), (result))
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
    {
      sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  return result;
}

void sub_29AFDB1D8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::TrackVariability(uint64_t a1, atomic_ullong **a2, uint64_t a3, _DWORD *a4)
{
  v7 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v28, a2);
  v28 = &unk_2A205FB90;
  if (v29 && (*(v29 + 57) & 8) == 0 && (off_2A205FBB0(v7) & 1) != 0 || (v26[0] = "usdImaging/cameraAdapter.cpp", v26[1] = "TrackVariability", v26[2] = 107, v26[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v27 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v26, "cam", 0) & 1) != 0))
  {
    v21 = *a2;
    v8 = a2[1];
    v22 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v23, a2 + 4);
    sub_29A1E2240(&v24, a2 + 5);
    v9 = a2[3];
    v25 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = (v25 & 0xFFFFFFFFFFFFFFF8);
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v10)
    {
      v10 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v21, 1, (v10 + 128), a4);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
    sub_29A1DE3A4(&v23);
    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v11);
    }

    v16 = *a2;
    v12 = a2[1];
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v18, a2 + 4);
    sub_29A1E2240(&v19, a2 + 5);
    v13 = a2[3];
    v20 = v13;
    if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = (v20 & 0xFFFFFFFFFFFFFFF8);
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v14)
    {
      v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v15)
    {
      v15 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v16, (v14 + 112), 4, v15 + 56, a4, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(&v28);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::Get(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3@<X8>, double a4@<D0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v28, a1);
  v28 = &unk_2A205FB90;
  if (v29 && (*(v29 + 57) & 8) == 0 && (off_2A205FBB0(&v28) & 1) != 0 || (v30[0] = "usdImaging/cameraAdapter.cpp", v30[1] = "Get", *&v31 = 188, *(&v31 + 1) = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const", LOBYTE(v32) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v30, "cam", 0) & 1) != 0))
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v8)
    {
      v8 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*v8 ^ *a2) <= 7)
    {
      __p = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetProjectionAttr(&v28, v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v9)
    {
      v9 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v9 + 1) ^ *a2) <= 7)
    {
      LODWORD(__p) = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetHorizontalApertureAttr(&v28, v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v10)
    {
      v10 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v10 + 2) ^ *a2) <= 7)
    {
      LODWORD(__p) = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetVerticalApertureAttr(&v28, v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v11)
    {
      v11 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v11 + 3) ^ *a2) <= 7)
    {
      LODWORD(__p) = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetHorizontalApertureOffsetAttr(&v28, v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v12)
    {
      v12 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v12 + 4) ^ *a2) <= 7)
    {
      LODWORD(__p) = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetVerticalApertureOffsetAttr(&v28, v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v13)
    {
      v13 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v13 + 5) ^ *a2) <= 7)
    {
      LODWORD(__p) = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetFocalLengthAttr(&v28, v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v14)
    {
      v14 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v14 + 6) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetClippingRangeAttr(&v28, v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>();
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v15)
    {
      v15 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v15 + 7) ^ *a2) <= 7)
    {
      v32 = 0;
      *v30 = 0u;
      v31 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetClippingPlanesAttr(&v28, &__p);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v16)
    {
      v16 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    if ((*(v16 + 8) ^ *a2) > 7)
    {
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v18)
      {
        v18 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      if ((*(v18 + 9) ^ *a2) > 7)
      {
        v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
        if (!v20)
        {
          v20 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
        }

        if ((*(v20 + 20) ^ *a2) > 7)
        {
          v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
          if (!v22)
          {
            v22 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
          }

          if ((*(v22 + 21) ^ *a2) > 7)
          {
            v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
            if (!v24)
            {
              v24 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
            }

            v25 = *(v24 + 22) ^ *a2;
            *(a3 + 1) = 0;
            if (v25 > 7)
            {
              pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a1, a2, v30);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetExposureAttr(&v28, v30);
            }

            v26.n128_f64[0] = a4;
            pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(v30, a3, v26);
          }

          else
          {
            *(a3 + 1) = 0;
            pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetShutterCloseAttr(&v28, v30);
            v23.n128_f64[0] = a4;
            pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(v30, a3, v23);
          }
        }

        else
        {
          *(a3 + 1) = 0;
          pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetShutterOpenAttr(&v28, v30);
          v21.n128_f64[0] = a4;
          pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(v30, a3, v21);
        }
      }

      else
      {
        *(a3 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetFocusDistanceAttr(&v28, v30);
        v19.n128_f64[0] = a4;
        pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(v30, a3, v19);
      }
    }

    else
    {
      *(a3 + 1) = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetFStopAttr(&v28, v30);
      v17.n128_f64[0] = a4;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(v30, a3, v17);
    }

    sub_29A5888DC(v30);
  }

  else
  {
    *(a3 + 1) = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(&v28);
}

void sub_29AFDBE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_29A5888DC(&a17);
  sub_29A186B14(v17);
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(&a14);
  _Unwind_Resume(a1);
}

float64x2_t *sub_29AFDBFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29AB8E75C(a2, *a1);
  return sub_29AFDC554(a2, *(a1 + 32), (*(a1 + 32) + 16 * *a1), *a1);
}

void sub_29AFDBFF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, a2))
  {
    return 1;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v6 + 14) ^ *a4) < 8)
  {
    return 4;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v7)
  {
    v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v7 + 108) ^ *a4) < 8)
  {
    return 2;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 54) ^ *a4) < 8)
  {
    return 2;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 155) ^ *a4) < 8)
  {
    return 2;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 55) ^ *a4) < 8)
  {
    return 2;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 156) ^ *a4) < 8)
  {
    return 2;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 45) ^ *a4) < 8)
  {
    return 2;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v13 + 15) ^ *a4) < 8)
  {
    return 2;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 48) ^ *a4) < 8)
  {
    return 2;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v15 + 46) ^ *a4) < 8)
  {
    return 2;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v16 + 126) ^ *a4) < 8)
  {
    return 2;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v17)
  {
    v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v17 + 125) ^ *a4) < 8)
  {
    return 2;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v18)
  {
    v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v18 + 36) ^ *a4) < 8)
  {
    return 2;
  }

  else
  {
    return 4294967293;
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingCameraAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 17, a2);
}

uint64_t sub_29AFDC328(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20A9930;
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