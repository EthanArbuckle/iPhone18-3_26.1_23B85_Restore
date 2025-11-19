void sub_29AF7953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  sub_29A7D6840(&a12);
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void sub_29AF799B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29ABC3488(&a31);
  sub_29ABF2F5C(&a19);
  sub_29ABC3488(v31 - 152);
  sub_29A7D1904((v31 - 96));
  sub_29A7CCF50(&a27);
  _Unwind_Resume(a1);
}

void *sub_29AF79AE8@<X0>(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeColorSpace::UsdImagingDataSourceAttributeColorSpace(v4, a1);

  return sub_29AF79BC0(a2, v4);
}

void *sub_29AF79B54@<X0>(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeTypeName::UsdImagingDataSourceAttributeTypeName(v4, a1);

  return sub_29AF79CCC(a2, v4);
}

void *sub_29AF79BC0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5928;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF79C18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF79C34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF79C5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF79C8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5978))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF79CCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A59A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF79D24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF79D40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF79D68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF79D98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A59F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF79DDC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF79E04(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF79E34(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5A68))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF79E74(_DWORD *a1)
{
  *a1 = &unk_2A20A5A90;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 11);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 2));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF79EDC(_DWORD *a1)
{
  *a1 = &unk_2A20A5A90;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 11);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 2));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF79F48(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs((a1 + 8), 1, &v9);
  sub_29A1D7F98(a2, (v10 - v9) >> 5);
  v3 = v9;
  for (i = v10; v3 != i; v3 = (v3 + 32))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetValueProducingAttributes(v12, v3, 0);
    if (v14 >= 2)
    {
      v5 = v12[0];
    }

    else
    {
      v5 = v12;
    }

    if (v13)
    {
      v6 = 32 * v13;
      while (1)
      {
        v7 = sub_29A5A6058(v5);
        if (pxrInternal__aapl__pxrReserved__::UsdShadeUtils::GetType(v7, v8) == 2)
        {
          break;
        }

        v5 += 4;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(v3, &v11);
      sub_29A153214(a2, &v11);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

LABEL_12:
    sub_29A7D1904(v12);
  }

  v12[0] = &v9;
  sub_29A7D6840(v12);
}

void sub_29AF7A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  sub_29A7D6840(&a12);
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void sub_29AF7A4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_29AC2C710(&a33);
  sub_29A7D1904((v33 - 136));
  sub_29A7CCF50(&a29);
  _Unwind_Resume(a1);
}

void sub_29AF7A5F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF7A618(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF7A648(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5B28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF7A68C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF7A6B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF7A6E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5BA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29AF7A724(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AF7A76C(a1, a2);
  }

  else
  {
    result = sub_29A3E00AC(v3, a2) + 3;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AF7A76C(uint64_t a1, uint64_t *a2)
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_29A3E00AC(v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29AF7A898(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A3E0E04(&v14);
  return v13;
}

void sub_29AF7A884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3E0E04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF7A898(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_29A3E00AC(a4, v7);
      v7 += 3;
      a4 = v12 + 3;
      v12 += 3;
    }

    while (v7 != a3);
  }

  v10 = 1;
  sub_29A3E0D9C(a1, a2, a3);
  return sub_29AF7A948(v9);
}

uint64_t sub_29AF7A948(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A3E0140(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29AF7A994(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1601D8(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v1;
        v8 = *(v4 + v5);
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9[0] = v8;
        v9[1] = v6;
        sub_29A162678(v7, v9, v9);
        if ((v9[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
        v4 = *a1;
        v5 += 24;
      }

      while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    }
  }
}

void sub_29AF7AA98(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29AF7AAD0(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  *a1 = &unk_2A20A5BC8;
  v3 = (a1 + 8);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((a1 + 8), a2);
  *(a1 + 32) = 0u;
  *(a1 + 8) = &unk_2A2061000;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::ComputeInterfaceInputConsumersMap(v3);
}

void sub_29AF7AB84(_Unwind_Exception *a1)
{
  sub_29A7F5244(v3);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *sub_29AF7ABB0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5C10;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF7AC08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF7AC20(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A5BC8;
  v2 = (a1 + 8);
  sub_29A7F5244(a1 + 32);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial(v2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF7AC84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A5BC8;
  v2 = (a1 + 8);
  sub_29A7F5244(a1 + 32);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void *sub_29AF7ACEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 56));
  for (i = *(a1 + 48); i; i = *i)
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName((i + 2), &v6);
    result = sub_29A153214(a2, &v6);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF7AD74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AF7B238(uint64_t a1, uint64_t *a2)
{
  sub_29AF7B2DC(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_29AF7B2DC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A7F4C88(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29AF7B338(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(16 * a2);
  v5 = v4;
  v6 = a1;
  if (*(a1 + 36) >= 3u)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = 16 * v7;
    v9 = v4;
    do
    {
      *v9++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
      v8 -= 16;
    }

    while (v8);
  }

  sub_29AF7B3CC(a1);
  if (*(a1 + 36) >= 3u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 36) = v2;
}

void sub_29AF7B3CC(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 9) >= 3u)
  {
    v1 = *a1;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = (v1 + 1);
    do
    {
      if (*v4)
      {
        sub_29A014BEC(*v4);
      }

      v4 += 2;
      v3 -= 16;
    }

    while (v3);
  }
}

__n128 sub_29AF7B428(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 36);
  if (v5 == v4)
  {
    sub_29AF7B338(a1, v5 + (v5 >> 1) + 1);
    v4 = *(a1 + 36);
  }

  v6 = a1;
  if (v4 >= 3)
  {
    v6 = *a1;
  }

  result = *a2;
  *(v6 + 16 * *(a1 + 32)) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++*(a1 + 32);
  return result;
}

uint64_t sub_29AF7B498(uint64_t a1)
{
  sub_29AF7B3CC(a1);
  if (*(a1 + 36) >= 3u)
  {
    free(*a1);
  }

  return a1;
}

void sub_29AF7B4DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF7B504(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF7B534(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5C60))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF7B574(void *a1)
{
  *a1 = &unk_2A20A5C88;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((a1 + 1));
  return a1;
}

void sub_29AF7B5B8(void *a1)
{
  *a1 = &unk_2A20A5C88;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((a1 + 1));

  operator delete(a1);
}

void *sub_29AF7B60C(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A20A5C88;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v2 + 1), (a1 + 8));
  v2[1] = &unk_2A2061000;
  return v2;
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *sub_29AF7B690(uint64_t a1, void *a2)
{
  *a2 = &unk_2A20A5C88;
  result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((a2 + 1), (a1 + 8));
  a2[1] = &unk_2A2061000;
  return result;
}

void sub_29AF7B700(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29AF7B7AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5CE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AF7B7F8(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x28);
  v5[4] = 0;
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

uint64_t sub_29AF7B950(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AF7BA24(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AF7BBA4(DetachedDispatcher, v8);
    v5 = (***(v4 - 5))(*(v4 - 5), v4, (v4 - 1));
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AF7BB04();
  }

  return sub_29AF762BC(v8, v6);
}

uint64_t sub_29AF7BA24(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x28);
  v4[4] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
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
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

void sub_29AF7BB04()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

void *sub_29AF7BBA4(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A5D08;
  sub_29AF7BA24((v5 + 1), a2);
  v5[71] = a1 + 272;
  return v5;
}

void *sub_29AF7BC44(void *a1, void *a2)
{
  *a1 = &unk_2A20A5D08;
  sub_29AF762BC((a1 + 1), a2);
  return a1;
}

void sub_29AF7BC88(void *a1, void *a2)
{
  *a1 = &unk_2A20A5D08;
  sub_29AF762BC((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AF7BCDC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AF7BB04();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AF7BD6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void *sub_29AF7BD80(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5D50;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF7BDD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF7BDF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF7BE1C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF7BE4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5DA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceSubdivisionTags::UsdImagingDataSourceSubdivisionTags(void *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2, uint64_t a3)
{
  *a1 = &unk_2A20A5DC8;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((a1 + 1), a2);
  a1[1] = &unk_2A205FF58;
  a1[4] = a3;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceSubdivisionTags::GetNames@<X0>(void *a1@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v4 = *(v3 + 1);
  v22 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v6 = *(v5 + 2);
  v23 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v8 = *(v7 + 3);
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v9)
  {
    v9 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v10 = *(v9 + 4);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v11)
  {
    v11 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v12 = *(v11 + 5);
  v26 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v13)
  {
    v13 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v14 = *(v13 + 6);
  v27 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v15)
  {
    v15 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v16 = *(v15 + 7);
  v28 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v17)
  {
    v17 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v18 = *(v17 + 8);
  v29 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v22, &v30, 8uLL);
  for (i = 56; i != -8; i -= 8)
  {
    v21 = *(&v22 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF7C210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceSubdivisionTags::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceSubdivisionTags *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVaryingLinearInterpolationAttr((this + 8), &v14);
    sub_29AF6E290(&v14, *(this + 4));
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(v7 + 2) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetInterpolateBoundaryAttr((this + 8), &v14);
    sub_29AF6E290(&v14, *(this + 4));
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(v8 + 3) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetTriangleSubdivisionRuleAttr((this + 8), &v14);
    sub_29AF6E290(&v14, *(this + 4));
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v9)
  {
    v9 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(v9 + 4) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerIndicesAttr((this + 8), &v14);
    sub_29AF7C664(&v14, *(this + 4));
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(v10 + 5) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerSharpnessesAttr((this + 8), &v14);
    sub_29AF7C6F8(&v14, *(this + 4));
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v11)
  {
    v11 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(v11 + 6) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseIndicesAttr((this + 8), &v14);
    sub_29AF7C664(&v14, *(this + 4));
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v12)
  {
    v12 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(v12 + 7) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseLengthsAttr((this + 8), &v14);
    sub_29AF7C664(&v14, *(this + 4));
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!result)
  {
    result = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  if ((*(result + 8) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseSharpnessesAttr((this + 8), &v14);
    sub_29AF7C6F8(&v14, *(this + 4));
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF7C664(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v4 = operator new(0x88uLL);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v5);
  sub_29AF6EF40(v4, a1, a2, v5, v6);
}

void sub_29AF7C6F8(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v4 = operator new(0x88uLL);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v5);
  sub_29AF7E040(v4, a1, a2, v5, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshTopology::UsdImagingDataSourceMeshTopology(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A5DF8;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A205FF58;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF7C82C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshTopology::GetNames@<X0>(void *a1@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v4 = *(v3 + 1);
  v14 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v6 = *(v5 + 2);
  v15 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v8 = *(v7 + 3);
  v16 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v10 = *(v9 + 4);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v14, &v18, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v14 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF7CA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshTopology::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshTopology *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    if ((atomic_load_explicit(&qword_2A17518E0, memory_order_acquire) & 1) == 0)
    {
      v10 = __cxa_guard_acquire(&qword_2A17518E0);
      if (v10)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetDefaultLocator(v10);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, a2, dword_2A17518A8);
        __cxa_atexit(sub_29ABC33B4, dword_2A17518A8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17518E0);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr((this + 16), &v16);
    sub_29AF6E204(&v16, *(this + 5), this + 8, dword_2A17518A8);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(v7 + 2) ^ *a2) <= 7)
  {
    if ((atomic_load_explicit(&qword_2A1751920, memory_order_acquire) & 1) == 0)
    {
      v12 = __cxa_guard_acquire(&qword_2A1751920);
      if (v12)
      {
        v13 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetDefaultLocator(v12);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v13, a2, dword_2A17518E8);
        __cxa_atexit(sub_29ABC33B4, dword_2A17518E8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1751920);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexIndicesAttr((this + 16), &v16);
    sub_29AF6E204(&v16, *(this + 5), this + 8, dword_2A17518E8);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(v8 + 3) ^ *a2) <= 7)
  {
    if ((atomic_load_explicit(&qword_2A1751960, memory_order_acquire) & 1) == 0)
    {
      v14 = __cxa_guard_acquire(&qword_2A1751960);
      if (v14)
      {
        v15 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetDefaultLocator(v14);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v15, a2, dword_2A1751928);
        __cxa_atexit(sub_29ABC33B4, dword_2A1751928, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1751960);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetHoleIndicesAttr((this + 16), &v16);
    sub_29AF6E204(&v16, *(this + 5), this + 8, dword_2A1751928);
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!result)
  {
    result = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(result + 4) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetOrientationAttr((this + 16), &v16);
    sub_29AF6E290(&v16, *(this + 5));
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMesh::UsdImagingDataSourceMesh(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A5E28;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A205FF58;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF7CF1C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMesh::GetNames@<X0>(void *a1@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v4 = *(v3 + 1);
  v14 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v6 = *(v5 + 2);
  v15 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v8 = *(v7 + 4);
  v16 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v10 = *(v9 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v14, &v18, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v14 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF7D110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMesh::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMesh *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    sub_29AF7D360(this + 2, (this + 16), *(this + 5), v10);
LABEL_5:
    *a3 = *v10;
    return;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v7 + 2) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetSubdivisionSchemeAttr((this + 16), v10);
    sub_29AF6E290(v10, *(this + 5));
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v8 + 4) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDoubleSidedAttr((this + 16), v10);
    sub_29AF7D438(v10, *(this + 5));
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v9 + 3) ^ *a2) <= 7)
  {
    sub_29AF7D4CC((this + 16), *(this + 5), v10);
    goto LABEL_5;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
}

void sub_29AF7D360(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A205FF58;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshTopology::UsdImagingDataSourceMeshTopology(v8, a1, v9, a3);
  sub_29AF7E0BC(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(v9);
}

void sub_29AF7D404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(va);
  _Unwind_Resume(a1);
}

void sub_29AF7D438(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v4 = operator new(0x88uLL);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v5);
  sub_29AF7E1C8(v4, a1, a2, v5, v6);
}

void sub_29AF7D4CC(const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, a1);
  v7[0] = &unk_2A205FF58;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceSubdivisionTags::UsdImagingDataSourceSubdivisionTags(v6, v7, a2);
  sub_29AF7E244(a3, v6);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(v7);
}

void sub_29AF7D568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim::UsdImagingDataSourceMeshPrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20A5E58;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  return sub_29A1D8028(a2, v3);
}

void sub_29AF7D724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, (this + 16));
    v7[0] = &unk_2A205FF58;
    sub_29AF7D840(this + 2, v7, *(this + 6), &v8);
    *a3 = v8;
    v8 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(v7);
  }
}

void sub_29AF7D82C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(va);
  _Unwind_Resume(a1);
}

void sub_29AF7D840(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A205FF58;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMesh::UsdImagingDataSourceMesh(v8, a1, v9, a3);
  sub_29AF7E350(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(v9);
}

void sub_29AF7D8E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v20[57] = *MEMORY[0x29EDCA608];
  *(a5 + 56) = 0x800000000;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 130) ^ *v10) <= 7)
      {
        SubdivisionSchemeLocator = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionSchemeLocator(v12);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, SubdivisionSchemeLocator);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v14)
      {
        v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v14 + 42) ^ *v10) < 8)
      {
        goto LABEL_18;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v14)
      {
        v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v14 + 43) ^ *v10) < 8)
      {
        goto LABEL_18;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v14)
      {
        v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v14 + 53) ^ *v10) < 8)
      {
        goto LABEL_18;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v14)
      {
        v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v14 + 91) ^ *v10) <= 7)
      {
LABEL_18:
        TopologyLocator = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetTopologyLocator(v14);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, TopologyLocator);
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 60) ^ *v10) < 8)
      {
        goto LABEL_43;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 41) ^ *v10) < 8)
      {
        goto LABEL_43;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 135) ^ *v10) < 8)
      {
        goto LABEL_43;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 23) ^ *v10) < 8)
      {
        goto LABEL_43;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 24) ^ *v10) < 8)
      {
        goto LABEL_43;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 25) ^ *v10) < 8)
      {
        goto LABEL_43;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 18) ^ *v10) < 8)
      {
        goto LABEL_43;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v16)
      {
        v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v16 + 19) ^ *v10) <= 7)
      {
LABEL_43:
        SubdivisionTagsLocator = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionTagsLocator(v16);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, SubdivisionTagsLocator);
      }

      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v18)
      {
        v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v18 + 30) ^ *v10) <= 7)
      {
        DoubleSidedLocator = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDoubleSidedLocator(v18);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DoubleSidedLocator);
      }

      v10 = (v10 + 8);
    }

    while (v10 != v11);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v20);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v20);
  sub_29ABD3178();
}

void sub_29AF7DC90(uint64_t a1)
{
  *a1 = &unk_2A20A5DC8;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF7DCE4(uint64_t a1)
{
  *a1 = &unk_2A20A5DC8;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF7DD3C(_DWORD *a1)
{
  *a1 = &unk_2A20A5DF8;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF7DDAC(_DWORD *a1)
{
  *a1 = &unk_2A20A5DF8;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF7DE20(_DWORD *a1)
{
  *a1 = &unk_2A20A5E28;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF7DE90(_DWORD *a1)
{
  *a1 = &unk_2A20A5E28;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF7DF04(uint64_t a1)
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

void sub_29AF7DFA0(uint64_t a1)
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

void sub_29AF7E0A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AF7E0BC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5EE8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF7E114(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF7E130(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF7E158(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF7E188(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5F38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF7E230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AF7E244(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5F60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF7E29C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF7E2B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF7E2E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF7E310(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5FB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF7E350(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5FD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF7E3A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF7E3C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF7E3EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF7E41C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6028))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::UsdImagingDataSourceNurbsCurvesPrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20A6050;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AF7E5C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetSchemaToken(this);
  if ((*SchemaToken ^ *a2) > 7)
  {
    if ((*pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(SchemaToken) ^ *a2) > 7)
    {

      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, &v8);
      sub_29ABC3244(&v8, &v10);
      sub_29AF7E8BC();
      sub_29AF71240(this + 8, this + 16, &qword_2A17519A8, *(this + 6), &v7);
      sub_29AF711A0(&v10, &v7, &v12);
      *a3 = v12;
      v12 = 0uLL;
      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }

      if (v11)
      {
        sub_29A014BEC(v11);
      }

      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }
  }

  else
  {
    sub_29AF7E7E4();
    sub_29AF7E758(this + 16, this + 2, &unk_2A1751968, *(this + 6), &v12);
    *a3 = v12;
  }
}

void sub_29AF7E720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF7E758@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::UsdImagingDataSourceMapped(v10, a1, a2, a3, a4);

  return sub_29AF72CBC(a5, v10);
}

void sub_29AF7E7E4()
{
  if ((atomic_load_explicit(&qword_2A1751990, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A1751990))
    {
      v0 = sub_29AF7ECE0(v2);
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdNurbsCurvesSchema::GetDefaultLocator(v0);
      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A1751968, v2, DefaultLocator);
      v3 = v2;
      sub_29AF738D4(&v3);
      __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A1751968, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751990);
    }
  }
}

void sub_29AF7E8BC()
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17519A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17519A0))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v0)
    {
      v0 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    qword_2A1751998 = v0 + 824;
    __cxa_guard_release(&qword_2A17519A0);
  }

  if ((atomic_load_explicit(&qword_2A17519C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17519C0))
  {
    v1 = qword_2A1751998;
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v2)
    {
      v2 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v3 = 0;
    sub_29AC9BE9C(v4, v1, v2 + 103, &v3);
    qword_2A17519A8 = 0;
    unk_2A17519B0 = 0;
    qword_2A17519B8 = 0;
    sub_29AF715C8(&qword_2A17519A8, v4, &v5, 1uLL);
    sub_29ABEC7EC(v4);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AF714E8, &qword_2A17519A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17519C0);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v10[57] = *MEMORY[0x29EDCA608];
  sub_29AF7E7E4();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, &unk_2A1751968, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v10);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v10);
  sub_29ABD3178();
}

void sub_29AF7EBA4(uint64_t a1)
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

void sub_29AF7EC40(uint64_t a1)
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

unint64_t sub_29AF7ECE0@<X0>(void *a1@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomNurbsCurves::GetSchemaAttributeNames(0);
  v3 = *SchemaAttributeNames;
  v4 = SchemaAttributeNames[1];
  if (*SchemaAttributeNames != v4)
  {
    do
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v5)
      {
        v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v6 = *v3;
      if ((*(v5 + 103) ^ *v3) >= 8)
      {
        v11 = *v3;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v12, v3);
        v13 = &unk_2A20A6098;
        v14 = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v15 = &v13;
        sub_29AF7EF90(a1, &v11);
        sub_29AF72C3C(&v13);
        sub_29ABC3488(v12);
        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  result = pxrInternal__aapl__pxrReserved__::UsdGeomCurves::GetSchemaAttributeNames(0);
  v8 = *result;
  v9 = *(result + 8);
  if (*result != v9)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v10 = *v8;
      if ((*(result + 1320) ^ *v8) >= 8)
      {
        v11 = *v8;
        if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v12, v8);
        v13 = &unk_2A20A6098;
        v14 = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v15 = &v13;
        sub_29AF7EF90(a1, &v11);
        sub_29AF72C3C(&v13);
        result = sub_29ABC3488(v12);
        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v8 = (v8 + 8);
    }

    while (v8 != v9);
  }

  return result;
}

void sub_29AF7EF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF7EF90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AF7EFF0(a1, a2);
  }

  else
  {
    sub_29AF7F124(a1, *(a1 + 8), a2);
    result = v3 + 96;
    *(a1 + 8) = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AF7EFF0(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A0CFEE8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[12 * v2];
  *(&v16 + 1) = &v7[12 * v6];
  sub_29AF7F124(a1, v15, a2);
  *&v16 = v15 + 12;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29AF739A4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AF73B98(&v14);
  return v13;
}

void sub_29AF7F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AF73B98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF7F124(uint64_t a1, uint64_t a2, void *a3)
{
  *a2 = *a3;
  *a3 = 0;
  sub_29ABD30AC((a2 + 8), (a3 + 1));

  return sub_29AF73344(a2 + 64, (a3 + 8));
}

void *sub_29AF7F19C(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20A6098;
  result[1] = v3;
  return result;
}

uint64_t sub_29AF7F1E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20A6098;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AF7F228(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::UsdImagingDataSourceNurbsPatchPrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20A6148;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AF7F3E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetSchemaToken(this);
  if ((*SchemaToken ^ *a2) > 7)
  {
    if ((*pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(SchemaToken) ^ *a2) > 7)
    {

      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, &v8);
      sub_29ABC3244(&v8, &v10);
      sub_29AF7F648();
      sub_29AF71240(this + 8, this + 16, &qword_2A1751A08, *(this + 6), &v7);
      sub_29AF711A0(&v10, &v7, &v12);
      *a3 = v12;
      v12 = 0uLL;
      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }

      if (v11)
      {
        sub_29A014BEC(v11);
      }

      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }
  }

  else
  {
    sub_29AF7F570();
    sub_29AF7E758(this + 16, this + 2, &unk_2A17519C8, *(this + 6), &v12);
    *a3 = v12;
  }
}

void sub_29AF7F538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF7F570()
{
  if ((atomic_load_explicit(&qword_2A17519F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A17519F0))
    {
      v0 = sub_29AF7FA6C(v2);
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchema::GetDefaultLocator(v0);
      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A17519C8, v2, DefaultLocator);
      v3 = v2;
      sub_29AF738D4(&v3);
      __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A17519C8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17519F0);
    }
  }
}

void sub_29AF7F648()
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751A00))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v0)
    {
      v0 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    qword_2A17519F8 = v0 + 824;
    __cxa_guard_release(&qword_2A1751A00);
  }

  if ((atomic_load_explicit(qword_2A1751A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1751A20))
  {
    v1 = qword_2A17519F8;
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v2)
    {
      v2 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v3 = 0;
    sub_29AC9BE9C(v4, v1, v2 + 103, &v3);
    qword_2A1751A08 = 0;
    unk_2A1751A10 = 0;
    qword_2A1751A18 = 0;
    sub_29AF715C8(&qword_2A1751A08, v4, &v5, 1uLL);
    sub_29ABEC7EC(v4);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AF714E8, &qword_2A1751A08, &dword_299FE7000);
    __cxa_guard_release(qword_2A1751A20);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v10[57] = *MEMORY[0x29EDCA608];
  sub_29AF7F570();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, &unk_2A17519C8, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v10);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v10);
  sub_29ABD3178();
}

void sub_29AF7F930(uint64_t a1)
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

void sub_29AF7F9CC(uint64_t a1)
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

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AF7FA6C@<X0>(void *a1@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v2)
  {
    v2 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(v2 + 30);
  v15 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v16, (v4 + 104));
  v17 = &unk_2A20A6098;
  v18 = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
  v19 = &v17;
  sub_29AF7EF90(a1, &v15);
  sub_29AF72C3C(&v17);
  sub_29ABC3488(v16);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v6 = *(v5 + 91);
  v15 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AC63C00(&pxrInternal__aapl__pxrReserved__::HdNurbsPatchSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v16, (v7 + 96));
  v17 = &unk_2A20A6098;
  v18 = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
  v19 = &v17;
  sub_29AF7EF90(a1, &v15);
  sub_29AF72C3C(&v17);
  sub_29ABC3488(v16);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch::GetSchemaAttributeNames(0);
  v9 = *result;
  v10 = *(result + 1);
  if (*result != v10)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v11 = *v9;
      if ((*(result + 103) ^ *v9) >= 8)
      {
        v15 = *v9;
        if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v15 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*v9 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::TokenizeIdentifierAsTokens(EmptyString, v13);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v16, (v13[1] - v13[0]) >> 3, v13[0]);
        v14 = v13;
        sub_29A124AB0(&v14);
        v17 = &unk_2A20A6098;
        v18 = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v19 = &v17;
        sub_29AF7EF90(a1, &v15);
        sub_29AF72C3C(&v17);
        result = sub_29ABC3488(v16);
        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }

  return result;
}

void sub_29AF7FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerMask::UsdImagingDataSourcePointInstancerMask(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerMask *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a3, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4)
{
  *this = &unk_2A20A6190;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((this + 8), a3);
  *(this + 1) = &unk_2A2060328;
  *(this + 4) = a4;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetInvisibleIdsAttr(a3, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29AF80004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_guard_abort(&qword_2A1751A68);
  sub_29A5888DC(&a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(v10);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerMask::GetValue(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerMask *this@<X0>, float a2@<S0>, void *a3@<X8>)
{
  (*(*this + 32))(v4, a2);
  a3[1] = &off_2A20474B8;
  sub_29A18ECC8(a3, v4);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29AF80170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF80188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AF82354(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerTopology::UsdImagingDataSourcePointInstancerTopology(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A61C8;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A2060328;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF8027C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerTopology::GetNames@<X0>(void *a1@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v4 = *(v3 + 1);
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v7 = *(v6 + 2);
  v14 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v9 = *(v8 + 3);
  v15 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v12 = *(&v13 + i);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF8041C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void pxrInternal__aapl__pxrReserved__::_GetCustomPrimvarMappings(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v2 = this;
  v27 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751A88, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1751A88);
    v2 = this;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v4)
      {
        v4 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v5)
      {
        v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29AC9BE9C(v22, v4 + 9, v5 + 104, v6 + 11);
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v7)
      {
        v7 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v8)
      {
        v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v9)
      {
        v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29AC9BE9C(v23, v7 + 8, v8 + 123, v9 + 11);
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v10)
      {
        v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v11)
      {
        v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v12)
      {
        v12 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29AC9BE9C(v24, v10 + 82, v11 + 153, v12 + 11);
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v13)
      {
        v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v14)
      {
        v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v15)
      {
        v15 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29AC9BE9C(v25, v13, v14, v15 + 11);
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v17)
      {
        v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v18)
      {
        v18 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29AC9BE9C(v26, v16 + 2, v17 + 2, v18 + 11);
      qword_2A1751A70 = 0;
      *algn_2A1751A78 = 0;
      qword_2A1751A80 = 0;
      sub_29AF715C8(&qword_2A1751A70, v22, &v27, 5uLL);
      for (i = 12; i != -3; i -= 3)
      {
        sub_29ABEC7EC(&v22[i]);
      }

      __cxa_atexit(sub_29AF714E8, &qword_2A1751A70, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751A88);
      v2 = this;
    }
  }

  v21 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v22, v2);
  v22[0] = &unk_2A2060328;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::UsesOrientationsf(v22, &v21);
}

void sub_29AF80A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_guard_abort(&qword_2A1751AC8);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(va);
  if ((a7 & 7) != 0)
  {
    atomic_fetch_add_explicit((a7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AF80B38@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29AF71768(a2, qword_2A1751A70, *algn_2A1751A78, 0xAAAAAAAAAAAAAAABLL * ((*algn_2A1751A78 - qword_2A1751A70) >> 3));
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    result = sub_29AF7171C(a2, v5);
    v5 += 3;
  }

  return result;
}

void sub_29AF80BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC1C990(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerTopology::Get@<X0>(const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v9)
    {
      v9 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    if ((*(v9 + 2) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetProtoIndicesAttr((this + 2), &v14);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14);
    }

    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!result)
    {
      result = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    if ((*(result + 3) ^ *a2) <= 7)
    {
      sub_29AF81150((this + 1), (this + 2), this[5]);
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetPrototypesRel((this + 2), &v10);
    sub_29AF810A0(&v10, this[5], &v14);
    *a3 = v14;
    v14 = 0uLL;
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    result = *(&v10 + 1);
    if (*(&v10 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v10 + 1), v7);
    }
  }

  return result;
}

void sub_29AF80FF0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A1751B08);
  sub_29A5888DC(v1 - 80);
  _Unwind_Resume(a1);
}

void *sub_29AF810A0@<X0>(const pxrInternal__aapl__pxrReserved__::UsdRelationship *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::UsdImagingDataSourceRelationship(v6, a1, a2);

  return sub_29AF8258C(a3, v6);
}

void sub_29AF81114(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29AF82698(a1, v4);
  }

  else if (!v3)
  {
    sub_29A844078(a1, *a1 + 40 * a2);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::UsdImagingDataSourcePointInstancerPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
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

  *a1 = &unk_2A20A61F8;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetSchemaToken(Names);
  v5 = sub_29A1D8028(a2, SchemaToken);
  v6 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v5);
  return sub_29A1D8028(a2, v6);
}

void sub_29AF81350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetSchemaToken(this);
  if ((*SchemaToken ^ *a2) > 7)
  {
    if ((*pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(SchemaToken) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(this, a2, &v8);
      sub_29ABC3244(&v8, &v9);
      sub_29AE4529C(sub_29AF816F0, &v9, &v11);
      pxrInternal__aapl__pxrReserved__::_GetCustomPrimvarMappings((this + 16), v7);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v10, (this + 16));
    v10[0] = &unk_2A2060328;
    sub_29AF81558(this + 2, v10, *(this + 6), &v11);
    *a3 = v11;
    v11 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(v10);
  }
}

void sub_29AF814FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF81558(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A2060328;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerTopology::UsdImagingDataSourcePointInstancerTopology(v8, a1, v9, a3);
  sub_29AF82930(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(v9);
}

void sub_29AF815FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(va);
  _Unwind_Resume(a1);
}

void sub_29AF81630(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  v7 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v8 = *a2;
  v9 = v7;
  *a2 = 0;
  *(a2 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, &v9, &v8);
  sub_29ABDE960(a3, v6);
  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }
}

void sub_29AF816C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (v13)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF816F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29ABC3244(a1, &v7);
  v3 = v7;
  if (v7)
  {
    v4 = operator new(0x18uLL);
    *v4 = &unk_2A20A6270;
    v4[1] = v3;
    v5 = v8;
    v4[2] = v8;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = operator new(0x20uLL);
    *v6 = &unk_2A20A62B8;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v4;
    *a2 = v4;
    a2[1] = v6;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29AF817B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::Invalidate(pxrInternal__aapl__pxrReserved__ *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a2, a3, a4, a5);
  if (!*a2)
  {
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v12)
        {
          v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v12 + 110) ^ *v10) <= 7)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v12);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
        }

        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v14)
        {
          v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v14 + 109) ^ *v10) <= 7)
        {
          if ((atomic_load_explicit(&qword_2A1751B48, memory_order_acquire) & 1) == 0)
          {
            v19 = __cxa_guard_acquire(&qword_2A1751B48);
            if (v19)
            {
              v20 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v19);
              v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
              if (!v21)
              {
                v21 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
              }

              pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v20, (v21 + 16), dword_2A1751B10);
              __cxa_atexit(sub_29ABC33B4, dword_2A1751B10, &dword_299FE7000);
              __cxa_guard_release(&qword_2A1751B48);
            }
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, dword_2A1751B10);
        }

        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v15)
        {
          v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v15 + 63) ^ *v10) <= 7)
        {
          if ((atomic_load_explicit(&qword_2A1751B88, memory_order_acquire) & 1) == 0)
          {
            v22 = __cxa_guard_acquire(&qword_2A1751B88);
            if (v22)
            {
              v23 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v22);
              v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
              if (!v24)
              {
                v24 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
              }

              pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v23, (v24 + 24), dword_2A1751B50);
              __cxa_atexit(sub_29ABC33B4, dword_2A1751B50, &dword_299FE7000);
              __cxa_guard_release(&qword_2A1751B88);
            }
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, dword_2A1751B50);
        }

        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v16)
        {
          v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v16 + 92) ^ *v10) < 8)
        {
          goto LABEL_23;
        }

        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v16)
        {
          v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v16 + 93) ^ *v10) <= 7)
        {
LABEL_23:
          v17 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v16);
          v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          if (!v18)
          {
            v18 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v17, (v18 + 56), v25);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v25);
          sub_29ABC3488(v25);
        }

        v10 = (v10 + 8);
      }

      while (v10 != v11);
    }

    pxrInternal__aapl__pxrReserved__::_GetCustomPrimvarMappings(a1, v9);
  }
}

void sub_29AF81B8C(uint64_t a1)
{
  *a1 = &unk_2A20A6190;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF81BE0(uint64_t a1)
{
  *a1 = &unk_2A20A6190;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF81C38(_DWORD *a1)
{
  *a1 = &unk_2A20A61C8;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF81CA8(_DWORD *a1)
{
  *a1 = &unk_2A20A61C8;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF81D1C(uint64_t a1)
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

void sub_29AF81DB8(uint64_t a1)
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

void sub_29AF81E58(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A6270;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF81EB4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A6270;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF81F3C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v7 = *(a1 + 8);
  if ((*(v6 + 3) ^ *a2) <= 7)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v8);
    }

    else
    {
      v21 = 0;
    }

    v20 = v7;
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetInterpolation(&v20, &v23);
    if (v23)
    {
      (*(*v23 + 32))(&v22, 0.0);
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v11)
      {
        v11 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v12 = v22;
      if ((*(v11 + 6) ^ v22) >= 8)
      {
        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v14)
        {
          v14 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        v12 = v22;
        v13 = (*(v14 + 7) ^ v22) < 8;
      }

      else
      {
        v13 = 1;
      }

      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v13 = 0;
    }

    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    if (v13)
    {
      v15 = &xmmword_2A1751B90;
      if ((atomic_load_explicit(qword_2A1751BA0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(qword_2A1751BA0))
      {
        goto LABEL_34;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v16)
      {
        v16 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29ABCCFA4(v16 + 6, &v23);
      xmmword_2A1751B90 = v23;
      __cxa_atexit(sub_29AD26C2C, &xmmword_2A1751B90, &dword_299FE7000);
      v17 = qword_2A1751BA0;
    }

    else
    {
      v15 = &xmmword_2A1751BB0;
      if ((atomic_load_explicit(&qword_2A1751BC0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1751BC0))
      {
        goto LABEL_34;
      }

      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v19)
      {
        v19 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29ABCCFA4(v19 + 11, &v23);
      xmmword_2A1751BB0 = v23;
      __cxa_atexit(sub_29AD26C2C, &xmmword_2A1751BB0, &dword_299FE7000);
      v17 = &qword_2A1751BC0;
    }

    __cxa_guard_release(v17);
LABEL_34:
    v18 = *(v15 + 1);
    *a3 = *v15;
    a3[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  v9 = *(*v7 + 24);
  v10 = *(a1 + 8);

  v9(v10, a2);
}

void sub_29AF822BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF822E4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF82314(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6308))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_29AF82354(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v13[0] = a2;
  v13[1] = a3;
  v12[0] = a4;
  v12[1] = a5;
  sub_29A20CF8C(a1);
  v11[0] = v13;
  v11[1] = v12;
  return sub_29AF823D0(a1, v5 - v7 + 8 * (a4 - a2), v11);
}

unint64_t *sub_29AF823D0(unint64_t *result, unint64_t a2, void ***a3)
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
          if (v3 >= a2)
          {
            v13 = result[4];
            goto LABEL_26;
          }

          v9 = result[4];
          if (*(v9 - 8) < a2)
          {
            v10 = sub_29A20D160(result, a2);
            v7 = v10;
            if (v3)
            {
              for (i = 0; i != v3; ++i)
              {
                *(v10 + i) = *(v9 + i);
              }
            }
          }

          v12 = (v7 + v3);
          v13 = v7;
LABEL_25:
          result = sub_29AF82548(**a3, (*a3)[1], *a3[1], a3[1][1], v12);
LABEL_26:
          if (v13 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v14 = a2;
      }

      else
      {
        v14 = *result;
      }

      result = sub_29A20D160(result, a2);
      v13 = result;
      if (v3)
      {
        v15 = result;
        do
        {
          v16 = *v7;
          v7 = (v7 + 1);
          *v15 = v16;
          v15 = (v15 + 1);
          --v14;
        }

        while (v14);
      }

      if (v3 >= a2)
      {
        goto LABEL_26;
      }

      v12 = (result + v3);
      goto LABEL_25;
    }

    v12 = sub_29A20D160(result, a2);
    v13 = v12;
    goto LABEL_25;
  }

  return sub_29A20CF8C(result);
}

_BYTE *sub_29AF82548(void *a1, int a2, void *a3, int a4, _BYTE *a5)
{
  while (a1 != a3 || a2 != a4)
  {
    *a5++ = (*a1 >> a2) & 1;
    a1 += a2 == 63;
    if (a2 == 63)
    {
      a2 = 0;
    }

    else
    {
      ++a2;
    }
  }

  return a5;
}

void *sub_29AF8258C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6330;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF825E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF82600(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF82628(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF82658(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6380))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF82698(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = a1;
    if (v9)
    {
      v10 = sub_29A10E224(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;
    v18 = &v10[40 * v6];
    *(&v19 + 1) = &v10[40 * v9];
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v18, v12);
    *&v19 = &v18[v12];
    v13 = *(a1 + 8);
    v14 = &v18[*a1 - v13];
    sub_29ACD6D8C(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    sub_29ACD6F00(&v17);
  }
}

void sub_29AF82810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACD6F00(va);
  _Unwind_Resume(a1);
}

void *sub_29AF82824(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A63A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF8287C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF82898(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF828C0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF828F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A63F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF82930(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6420;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF82988(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF829A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF829CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF829FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6470))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim::UsdImagingDataSourcePointsPrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20A6498;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, &v12);
  if ((*pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v6) ^ *a2) > 7)
  {
    v7 = v13;
    *a3 = v12;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29ABC3244(&v12, &v9);
    sub_29AF82C8C();
    sub_29AF71240(this + 8, this + 16, &qword_2A1751BC8, *(this + 6), &v8);
    sub_29AF711A0(&v9, &v8, &v11);
    *a3 = v11;
    v11 = 0uLL;
    if (*(&v8 + 1))
    {
      sub_29A014BEC(*(&v8 + 1));
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }
}

void sub_29AF82C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF82C8C()
{
  v4 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(qword_2A1751BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1751BE0))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v0)
    {
      v0 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v1)
    {
      v1 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v2 = 0;
    sub_29AC9BE9C(v3, v0 + 3, v1 + 165, &v2);
    qword_2A1751BC8 = 0;
    unk_2A1751BD0 = 0;
    qword_2A1751BD8 = 0;
    sub_29AF715C8(&qword_2A1751BC8, v3, &v4, 1uLL);
    sub_29ABEC7EC(v3);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AF714E8, &qword_2A1751BC8, &dword_299FE7000);
    __cxa_guard_release(qword_2A1751BE0);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v8[57] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, a5);
  if (!*a2)
  {
    sub_29AF82C8C();
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::Invalidate(a3, &qword_2A1751BC8, v8);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v8);
    sub_29ABD3178();
  }
}

void sub_29AF82ED8(uint64_t a1)
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

void sub_29AF82F74(uint64_t a1)
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

pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVisibility *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVisibility::UsdImagingDataSourceVisibility(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVisibility *this, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4)
{
  *this = &unk_2A20A64E0;
  v7 = (this + 8);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((this + 8), a2);
  *(this + 16) = a4;
  v9 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v7, v8);
  if (v9)
  {
    v10 = *(this + 16);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetDefaultLocator(v9);
    (*(*v10 + 24))(v10, a3, DefaultLocator);
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVisibility::GetNames@<X0>(void *a1@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  }

  v4 = *v3;
  v7 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v5;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v7, &v8, 1uLL);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVisibility::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVisibility *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  if (!result)
  {
    result = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  }

  if ((*result ^ *a2) <= 7)
  {
    v7 = 0;
    (*(**(this + 16) + 16))(*(this + 16));
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF832E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePurpose *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePurpose::UsdImagingDataSourcePurpose(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePurpose *this, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3)
{
  *this = &unk_2A20A6510;
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((this + 8), a2);
  *(this + 16) = a3;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePurpose::GetNames@<X0>(void *a1@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  }

  v4 = *v3;
  v7 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v5;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v7, &v8, 1uLL);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePurpose::Get@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, void *a2@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  if (!result)
  {
    result = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  }

  if ((*result ^ *a1) <= 7)
  {
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_29AF835F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_guard_abort(&qword_2A1751C00);
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentCoordinate::UsdImagingDataSourceExtentCoordinate(uint64_t a1, uint64_t *a2, _DWORD *a3, int a4)
{
  v8 = *a2;
  v7 = a2[1];
  *a1 = &unk_2A20A6540;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 24), a3);
  sub_29A1E2240((a1 + 28), a3 + 1);
  *(a1 + 32) = a4;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentCoordinate::GetValue@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentCoordinate *this@<X0>, float a2@<S0>, void *a3@<X8>)
{
  v4 = (*(*this + 32))(this, a2);
  v6 = v5;
  v8 = v7;
  a3[1] = &off_2A20428F8 + 2;
  result = operator new(0x20uLL);
  *result = v4;
  *(result + 1) = v6;
  *(result + 2) = v8;
  atomic_store(0, result + 6);
  *a3 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentCoordinate::GetTypedValue(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentCoordinate *this, float a2)
{
  (*(**(this + 1) + 32))(v7, a2);
  if (v7[0] <= *(this + 8))
  {
    v5[0] = "usdImaging/dataSourcePrim.cpp";
    v5[1] = "GetTypedValue";
    v5[2] = 158;
    v5[3] = "virtual GfVec3d pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentCoordinate::GetTypedValue(HdSampledDataSource::Time)";
    v6 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 24));
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v5, "<%s> Attribute does not have expected index entry %d", v4, Text, *(this + 8));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtent::UsdImagingDataSourceExtent(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtent *this, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4)
{
  *this = &unk_2A20A6578;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v9 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(a2, v8);
  if (v9)
  {
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetDefaultLocator(v9);
    (*(*a4 + 24))(a4, a3, DefaultLocator);
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF83A00(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A1DCEA8((v1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *sub_29AF83A30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207F1B8, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtent::GetNames@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  if (this[2])
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v3)
    {
      v3 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    v4 = *(v3 + 1);
    v11 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v6)
    {
      v6 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    v7 = *(v6 + 2);
    v12 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v8;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    this = sub_29A12EF7C(a2, &v11, &v13, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v11 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtent::Get@<X0>(void *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this + 2;
  if (this[2])
  {
    v6 = this;
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    if ((*(v7 + 1) ^ *a2) <= 7)
    {
      v8 = 0;
LABEL_10:
      this = sub_29AF83D1C(v4, (v6 + 8), &v8, &v9);
      *a3 = v9;
      return this;
    }

    this = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!this)
    {
      this = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    if ((this[2] ^ *a2) <= 7)
    {
      v8 = 1;
      goto LABEL_10;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return this;
}

void *sub_29AF83D1C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentCoordinate::UsdImagingDataSourceExtentCoordinate(v8, a1, a2, *a3);

  return sub_29AF873E8(a4, v8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentsHint::UsdImagingDataSourceExtentsHint(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentsHint *this, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4)
{
  *this = &unk_2A20A65A8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v9 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(a2, v8);
  if (v9)
  {
    DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetDefaultLocator(v9);
    (*(*a4 + 24))(a4, a3, DefaultLocator);
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF83EF8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A1DCEA8((v1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentsHint::GetNames@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 16))
  {
    v2 = this;
    sub_29AF83FE4();
    (*(**(v2 + 16) + 32))(v3, 0.0);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return this;
}

void sub_29AF83FE4()
{
  if ((atomic_load_explicit(&qword_2A1751C20, memory_order_acquire) & 1) == 0)
  {
    v0 = __cxa_guard_acquire(&qword_2A1751C20);
    if (v0)
    {
      OrderedPurposeTokens = pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetOrderedPurposeTokens(v0);
      sub_29AF8730C(OrderedPurposeTokens);
      __cxa_atexit(sub_29A3C73E0, &qword_2A1751C08, &dword_299FE7000);

      __cxa_guard_release(&qword_2A1751C20);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceExtentsHint::Get@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = this + 16;
  if (*(this + 16))
  {
    sub_29AF83FE4();
    (*(**v3 + 32))(&v4, 0.0);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void sub_29AF84234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A95E544(v20 - 96);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformResetXformStack::UsdImagingDataSourceXformResetXformStack(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformResetXformStack *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery *a2, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3)
{
  *this = &unk_2A20A65D8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformResetXformStack::GetValue@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformResetXformStack *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  result = (*(*this + 32))(this, a2);
  *(a3 + 8) = &unk_2A20443C3;
  *a3 = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformMatrix::UsdImagingDataSourceXformMatrix(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformMatrix *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery *a2, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3)
{
  *this = &unk_2A20A6610;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>();
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformMatrix::GetValue@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformMatrix *this@<X0>, float a2@<S0>, void *a3@<X8>)
{
  (*(*this + 32))(v9, a2);
  a3[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v5 = v9[5];
  *(result + 4) = v9[4];
  *(result + 5) = v5;
  v6 = v9[7];
  *(result + 6) = v9[6];
  *(result + 7) = v6;
  v7 = v9[1];
  *result = v9[0];
  *(result + 1) = v7;
  v8 = v9[3];
  *(result + 2) = v9[2];
  *(result + 3) = v8;
  atomic_store(0, result + 32);
  *a3 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformMatrix::GetTypedValue@<W0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformMatrix *this@<X0>, float a2@<S0>, _OWORD *a3@<X8>)
{
  v5 = (*(**(this + 5) + 16))(*(this + 5)) + a2;

  return pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation(this + 1, a3, v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXformMatrix::GetContributingSampleTimesForInterval(uint64_t a1, void *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v24 = v8;
  v9 = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::TransformMightBeTimeVarying((a1 + 8));
  if (v9 == 1)
  {
    v20 = v8 + a3;
    v21 = fabs(v20) != INFINITY;
    v22 = v8 + a4;
    v23 = fabs(v22) != INFINITY;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetTimeSamplesInInterval((a1 + 8), &v20, &v17);
    v10 = v18;
    if (v17 == v18 || *v17 > v20)
    {
      v16 = v20;
      sub_29AF84724(&v17, v17, &v16);
      v10 = v18;
    }

    if (*(v10 - 1) < v22)
    {
      v16 = v22;
      sub_29A08B03C(&v17, &v16);
      v10 = v18;
    }

    sub_29A0A171C(a2, (v10 - v17) >> 3);
    v11 = v17;
    v12 = v18;
    if (v18 != v17)
    {
      v13 = 0;
      do
      {
        v14 = v11[v13] - v8;
        *(*a2 + 4 * v13++) = v14;
      }

      while (v13 < (v12 - v11) >> 3);
    }

    if (v11)
    {
      v18 = v11;
      operator delete(v11);
    }
  }

  return v9;
}

void sub_29AF846FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AF84724(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v28 = a1;
    if (v14)
    {
      v16 = sub_29A00C9BC(a1, v14);
    }

    else
    {
      v16 = 0;
    }

    v25 = v16;
    v26 = &v16[8 * v15];
    *&v27 = v26;
    *(&v27 + 1) = &v16[8 * v14];
    sub_29A1C0150(&v25, a3);
    v17 = v26;
    memcpy(v27, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v26;
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = &v19[-(v4 - v18)];
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_29AF848AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXform::UsdImagingDataSourceXform(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXform *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4)
{
  *this = &unk_2A20A6648;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>();
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXform::GetNames@<X0>(void *a1@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  v4 = *(v3 + 1);
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  v7 = *(v6 + 2);
  v13 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v8;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v12, &v14, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceXform::Get@<X0>(const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    sub_29AF84C24((this + 1), this[5]);
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!result)
  {
    result = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  if ((*(result + 2) ^ *a2) <= 7)
  {
    sub_29AF84C98((this + 1), this[5]);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimOrigin *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimOrigin::UsdImagingDataSourcePrimOrigin(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimOrigin *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  *this = &unk_2A20A6678;
  *(this + 2) = *a2;
  v4 = *(a2 + 1);
  *(this + 2) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(this + 6, a2 + 4);
  sub_29A1E2240(this + 7, a2 + 5);
  v5 = *(a2 + 3);
  *(this + 4) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimOrigin::GetNames@<X0>(void *a1@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
  if (!v3)
  {
    v3 = sub_29AC6FCFC(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
  }

  v4 = v3[1];
  v7 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v5;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v7, &v8, 1uLL);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimOrigin::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimOrigin *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
  if (!result)
  {
    result = sub_29AC6FCFC(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
  }

  if ((result[1] ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((this + 8));
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF850C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_29A57F434(&a16);
  sub_29A1DCEA8((v16 - 72));
  a16 = (v16 - 64);
  sub_29A1E234C(&a16);
  sub_29A1DCEA8((v16 - 40));
  _Unwind_Resume(a1);
}

void *sub_29AF85174@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A20A6978;
  sub_29A1E21F4(v4 + 2, a1);
  sub_29A1E2240(v4 + 3, a1 + 1);

  return sub_29AF87B34(a2, v4);
}

_DWORD *sub_29AF851FC(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim_ModelAPI *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim_ModelAPI::UsdImagingDataSourcePrim_ModelAPI(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim_ModelAPI *this, const pxrInternal__aapl__pxrReserved__::UsdModelAPI *a2)
{
  *this = &unk_2A20A66A8;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((this + 8), a2);
  *(this + 1) = &unk_2A205F368;
  v4 = *(a2 + 3);
  *(this + 4) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 1) = &unk_2A205F668;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim_ModelAPI::GetNames@<X0>(void *a1@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v3)
  {
    v3 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  v4 = *(v3 + 1);
  v14 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  v6 = *(v5 + 2);
  v15 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  v8 = *(v7 + 3);
  v16 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v9)
  {
    v9 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  v10 = *(v9 + 4);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v14, &v18, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v14 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF854D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim_ModelAPI::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim_ModelAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    sub_29A580660(&v10, this + 2, this + 6);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v10);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  if ((*(v7 + 2) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v10);
    if (pxrInternal__aapl__pxrReserved__::UsdModelAPI::GetAssetIdentifier((this + 8), &v10))
    {
      sub_29ACAFDA0(&v10, &v13);
      *a3 = v13;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    if (v12 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_24;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
  }

  if ((*(v8 + 3) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    if (!v9)
    {
      v9 = sub_29AF87C40(&pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens);
    }

    if ((*(v9 + 4) ^ *a2) > 7)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      return;
    }

    memset(&v10, 0, sizeof(v10));
    if (pxrInternal__aapl__pxrReserved__::UsdModelAPI::GetAssetVersion(this + 8, &v10))
    {
      goto LABEL_19;
    }
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
    if (pxrInternal__aapl__pxrReserved__::UsdModelAPI::GetAssetName(this + 8, &v10))
    {
LABEL_19:
      sub_29AC02AF4(&v10, &v13);
      *a3 = v13;
      goto LABEL_24;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
LABEL_24:
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_29AF8575C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A20A66D8;
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

pxrInternal__aapl__pxrReserved__::UsdGeomImageable *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((this + 8));
  if (result)
  {
    StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(result);
    SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v6);
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(this + 16, SchemaInfo);
    if (IsA)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetSchemaToken(IsA);
      v10 = sub_29A1D8028(a2, SchemaToken);
      v11 = pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetSchemaToken(v10);
      IsA = sub_29A1D8028(a2, v11);
    }

    v12 = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::_GetStaticTfType(IsA);
    v14 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v12, v13);
    v15 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(this + 16, v14);
    if (v15)
    {
      v16 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(v15);
      v15 = sub_29A1D8028(a2, v16);
    }

    v17 = pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::_GetStaticTfType(v15);
    v19 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v17, v18);
    v20 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(this + 16, v19);
    if (v20)
    {
      v22 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetSchemaToken(v20);
      sub_29A1D8028(a2, v22);
    }

    v23 = sub_29A7557D8(this + 16, v21);
    if (v23)
    {
      v24 = pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetSchemaToken(v23);
      sub_29A1D8028(a2, v24);
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v34, (this + 16));
    v34[3] = 0;
    v34[0] = &unk_2A205FFB0;
    pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetExtentsHintAttr(v34, v35);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v40, v35);
    HasAuthoredValue = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(v40);
    sub_29A5896C0(v40);
    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
    sub_29A1DE3A4(&v37);
    if (v36)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36, v26);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(v34);
    if (HasAuthoredValue)
    {
      v28 = pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetSchemaToken(v27);
      v27 = sub_29A1D8028(a2, v28);
    }

    v29 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSchemaToken(v27);
    v30 = sub_29A1D8028(a2, v29);
    v31 = pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetSchemaToken(v30);
    v32 = sub_29A1D8028(a2, v31);
    v33 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v32);
    return sub_29A1D8028(a2, v33);
  }

  return result;
}

void sub_29AF85A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_29A5896C0(va2);
  sub_29A5888DC(va1);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(va);
  sub_29A124AB0(va2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((this + 1));
  if (!IsPrimPath)
  {
    goto LABEL_58;
  }

  SchemaToken = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(IsPrimPath);
  if ((*SchemaToken ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v19, (this + 2));
    v19[0] = &unk_2A20608A8;
    if (v19[1] && (*(v19[1] + 57) & 8) == 0 && (off_2A20608C8(v19) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::XformQuery(&v23, v19);
      if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::HasNonEmptyXformOpOrder(&v23))
      {
        sub_29AF861AC(&v23, (this + 1), this[6]);
      }

      *a3 = 0;
      a3[1] = 0;
      v16 = &v23;
      sub_29A7544DC(&v16);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(v19);
    return;
  }

  v8 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(SchemaToken);
  if ((*v8 ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v23, (this + 2));
    v24 = 0;
    *&v23 = &unk_2A2060598;
    sub_29AF86230((this + 1), (this + 2), &v23, this[6], v19);
    *a3 = *v19;
    v19[0] = 0;
    v19[1] = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(&v23);
    return;
  }

  v9 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetSchemaToken(v8);
  if ((*v9 ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v16, (this + 2));
    v16 = &unk_2A205FF00;
    if (v17 && (*(v17 + 57) & 8) == 0 && (off_2A205FF20(&v16) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetVisibilityAttr(&v16, v19);
      pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(&v23, v19);
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
      sub_29A1DE3A4(&v20);
      if (v19[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19[1], v10);
      }

      if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(&v23))
      {
        sub_29AF86364(&v23, (this + 1), this[6], v19);
LABEL_28:
        *a3 = *v19;
LABEL_50:
        sub_29A5896C0(&v23);
        goto LABEL_30;
      }

      goto LABEL_49;
    }

    goto LABEL_29;
  }

  v11 = pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetSchemaToken(v9);
  if ((*v11 ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v16, (this + 2));
    v16 = &unk_2A205FF00;
    if (v17 && (*(v17 + 57) & 8) == 0 && (off_2A205FF20(&v16) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetPurposeAttr(&v16, v19);
      pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(&v23, v19);
      sub_29A5888DC(v19);
      if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(&v23))
      {
        sub_29AF863E8(&v23, this[6], v19);
        goto LABEL_28;
      }

LABEL_49:
      *a3 = 0;
      a3[1] = 0;
      goto LABEL_50;
    }

LABEL_29:
    *a3 = 0;
    a3[1] = 0;
LABEL_30:
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v16);
    return;
  }

  v12 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetSchemaToken(v11);
  if ((*v12 ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v16, (this + 2));
    v16 = &unk_2A205FB38;
    if (v17 && (*(v17 + 57) & 8) == 0 && (off_2A205FB58(&v16) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetExtentAttr(&v16, v19);
      pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(&v23, v19);
      sub_29A5888DC(v19);
      if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(&v23))
      {
        sub_29AF8645C(&v23, (this + 1), this[6]);
      }

      *a3 = 0;
      a3[1] = 0;
      sub_29A5896C0(&v23);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::~UsdGeomBoundable(&v16);
    return;
  }

  v13 = pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetSchemaToken(v12);
  if ((*v13 ^ *a2) > 7)
  {
    v14 = pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetSchemaToken(v13);
    if ((*v14 ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v23, (this + 2));
      v24 = 0;
      *&v23 = &unk_2A205F668;
      if (*(&v23 + 1) && (*(*(&v23 + 1) + 57) & 8) == 0 && off_2A205F688(&v23) && pxrInternal__aapl__pxrReserved__::UsdObject::HasAssetInfo((this + 2)))
      {
        sub_29AF86564(&v23, v19);
        *a3 = *v19;
        pxrInternal__aapl__pxrReserved__::UsdModelAPI::~UsdModelAPI(&v23);
        return;
      }

      pxrInternal__aapl__pxrReserved__::UsdModelAPI::~UsdModelAPI(&v23);
      goto LABEL_58;
    }

    v15 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSchemaToken(v14);
    if ((*v15 ^ *a2) <= 7)
    {
      sub_29AF865D0(this + 4, &v23);
LABEL_57:
      *a3 = v23;
      return;
    }

    if ((*pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetSchemaToken(v15) ^ *a2) <= 7)
    {
      sub_29AF866F4((this + 2), &v23);
      goto LABEL_57;
    }

LABEL_58:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v16, (this + 2));
  v18 = 0;
  v16 = &unk_2A205FFB0;
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetExtentsHintAttr(&v16, v19);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(&v23, v19);
  sub_29A5888DC(v19);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&v16);
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(&v23))
  {
    sub_29AF864E0(&v23, (this + 1), this[6]);
  }

  *a3 = 0;
  a3[1] = 0;
  sub_29A5896C0(&v23);
}

void sub_29AF86098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdModelAPI::~UsdModelAPI(va);
  _Unwind_Resume(a1);
}

void sub_29AF86230(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v12, a3);
  v11 = *(a3 + 3);
  v12[0] = &unk_2A205F368;
  v13 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12[0] = &unk_2A2060598;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::UsdImagingDataSourcePrimvars(v10, a1, a2, v12, a4);
  sub_29AF87DD8(a5, v10);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(v12);
}

void *sub_29AF86364@<X0>(const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x88uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVisibility::UsdImagingDataSourceVisibility(v8, a1, a2, a3);

  return sub_29AF87EE4(a4, v8);
}

void *sub_29AF863E8@<X0>(const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x88uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePurpose::UsdImagingDataSourcePurpose(v6, a1, a2);

  return sub_29AF87FF0(a3, v6);
}

void *sub_29AF86564@<X0>(const pxrInternal__aapl__pxrReserved__::UsdModelAPI *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim_ModelAPI::UsdImagingDataSourcePrim_ModelAPI(v4, a1);

  return sub_29AF88314(a2, v4);
}

pxrInternal__aapl__pxrReserved__ *sub_29AF865D0@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  v9 = *a1;
  v5 = *(a1 + 1);
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v11, a1 + 4);
  sub_29A1E2240(&v12, a1 + 5);
  v6 = *(a1 + 3);
  v13 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::UsdImagingDataSourceUsdPrimInfo(v4, &v9);
  sub_29AF88420(a2, v4);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

void *sub_29AF866F4@<X0>(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimOrigin::UsdImagingDataSourcePrimOrigin(v4, a1);

  return sub_29AF8852C(a2, v4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X2>, int a3@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  *(a4 + 56) = 0x800000000;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v8)
      {
        v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v8 + 158) ^ *v5) <= 7)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetDefaultLocator(v8);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, DefaultLocator);
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v10)
      {
        v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v10 + 114) ^ *v5) <= 7)
      {
        v11 = pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetDefaultLocator(v10);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v11);
      }

      IsTransformationAffectedByAttrNamed = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(v5, a1);
      if (IsTransformationAffectedByAttrNamed)
      {
        v14 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(IsTransformationAffectedByAttrNamed);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v14);
      }

      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v15)
      {
        v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v15 + 37) ^ *v5) <= 7)
      {
        v16 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetDefaultLocator(v15);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v16);
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v17)
      {
        v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v17 + 38) ^ *v5) <= 7)
      {
        v18 = pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetDefaultLocator(v17);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v18);
      }

      CanContainPropertyName = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(v5, v13);
      if (CanContainPropertyName)
      {
        if (a3 == 1)
        {
          v20 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(CanContainPropertyName);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v20);
        }

        else
        {
          v21 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(CanContainPropertyName);
          v22 = *v5 & 0xFFFFFFFFFFFFFFF8;
          if (v22)
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

          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v24, v23 + 9);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v21, &v24, v25);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v25);
          sub_29ABC3488(v25);
          if ((v24 & 7) != 0)
          {
            atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }
      }

      v5 = (v5 + 8);
    }

    while (v5 != v6);
  }
}

void sub_29AF8698C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC3488(va);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29ABD3178();
}

void sub_29AF869D8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A64E0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86A2C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A64E0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF86A84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6510;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86AD8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6510;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF86B30(uint64_t a1)
{
  *a1 = &unk_2A20A6540;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86B9C(uint64_t a1)
{
  *a1 = &unk_2A20A6540;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF86C0C(uint64_t a1)
{
  *a1 = &unk_2A20A6578;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86C7C(uint64_t a1)
{
  *a1 = &unk_2A20A6578;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF86CF0(uint64_t a1)
{
  *a1 = &unk_2A20A65A8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86D60(uint64_t a1)
{
  *a1 = &unk_2A20A65A8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF86DD4(void **a1)
{
  *a1 = &unk_2A20A65D8;
  v2 = a1 + 1;
  sub_29A7544DC(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86E30(void **a1)
{
  *a1 = &unk_2A20A65D8;
  v3 = a1 + 1;
  sub_29A7544DC(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void sub_29AF86E98(void **a1)
{
  *a1 = &unk_2A20A6610;
  v2 = a1 + 1;
  sub_29A7544DC(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86EF4(void **a1)
{
  *a1 = &unk_2A20A6610;
  v3 = a1 + 1;
  sub_29A7544DC(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void sub_29AF86F54(void **a1)
{
  *a1 = &unk_2A20A6648;
  v2 = a1 + 1;
  sub_29A7544DC(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF86FB0(void **a1)
{
  *a1 = &unk_2A20A6648;
  v3 = a1 + 1;
  sub_29A7544DC(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void sub_29AF87010(uint64_t a1)
{
  *a1 = &unk_2A20A6678;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF87098(uint64_t a1)
{
  *a1 = &unk_2A20A6678;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AF87124(uint64_t a1)
{
  *a1 = &unk_2A20A66A8;
  pxrInternal__aapl__pxrReserved__::UsdModelAPI::~UsdModelAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF87178(uint64_t a1)
{
  *a1 = &unk_2A20A66A8;
  pxrInternal__aapl__pxrReserved__::UsdModelAPI::~UsdModelAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF871D0(uint64_t a1)
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

void sub_29AF8726C(uint64_t a1)
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

uint64_t **sub_29AF8730C(uint64_t **result)
{
  qword_2A1751C08 = 0;
  unk_2A1751C10 = 0;
  qword_2A1751C18 = 0;
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    do
    {
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v3)
      {
        v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v4 = v1;
      if ((*(v3 + 29) ^ *v1) <= 7)
      {
        v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v5)
        {
          v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v4 = (v5 + 288);
      }

      result = sub_29A1D8028(&qword_2A1751C08, v4);
      ++v1;
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29AF873D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void *sub_29AF873E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6810;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF87440(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8745C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF87484(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF874B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6860))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF874F4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6888;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF8754C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF87568(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF87590(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF875C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A68D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF87600(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6900;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF87658(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF87674(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8769C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF876CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6950))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF8770C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6978;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8776C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6978;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

_DWORD *sub_29AF877F0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, (a1 + 8)) + 1;

  return sub_29A1E2240(v3, (a1 + 12));
}

uint64_t *sub_29AF87834(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF87854(_DWORD **a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF879A0(a1);
}

_DWORD *sub_29AF87988@<X0>(_DWORD **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20A69B8;
  return sub_29AF87AD4(a2, v2);
}

void sub_29AF879A0(_DWORD **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v1 + 1);
    v2 = sub_29A1DE3A4(v1);

    operator delete(v2);
  }
}

uint64_t sub_29AF87A0C(_DWORD **a1)
{
  v2 = atomic_load(*a1 + 2);
  if (v2 != 1)
  {
    sub_29AF87A74(*a1, &v4);
    sub_29AF879A0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AF879A0(&v4);
  }

  return *a1;
}

_DWORD *sub_29AF87A74@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xCuLL);
  v5 = sub_29A1E21F4(v4, a1);
  result = sub_29A1E2240(v5 + 1, a1 + 1);
  atomic_store(0, v4 + 2);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  return result;
}

_DWORD *sub_29AF87AD4(void *a1, _DWORD *a2)
{
  v4 = operator new(0xCuLL);
  v5 = sub_29A1E21F4(v4, a2);
  result = sub_29A1E2240(v5 + 1, a2 + 1);
  atomic_store(0, v4 + 2);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  return result;
}

void *sub_29AF87B34(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6A90;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF87B8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF87BA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF87BD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF87C00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6AE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType *sub_29AF87C40(atomic_ullong *a1)
{
  result = sub_29AF87C88();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType::~UsdImagingModelSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType *sub_29AF87C88()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingModelSchemaTokens_StaticTokenType::UsdImagingModelSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AF87CCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6B08;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF87D24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF87D40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF87D68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF87D98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6B58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF87DD8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6B80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF87E30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF87E4C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF87E74(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF87EA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6BD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF87EE4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6BF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF87F3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF87F58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF87F80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF87FB0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6C48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF87FF0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6C70;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF88048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF88064(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8808C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF880BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6CC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF880FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6CE8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF88154(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF88170(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF88198(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF881C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6D38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF88208(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6D60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF88260(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8827C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF882A4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF882D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6DB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF88314(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6DD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF8836C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF88388(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF883B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF883E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6E28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF88420(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6E50;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF88478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF88494(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF884BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF884EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6EA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF8852C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6EC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF88584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF885A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF885C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF885F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6F18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::UsdImagingDataSourcePrimvars(uint64_t a1, _DWORD *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI *a4, uint64_t a5)
{
  *a1 = &unk_2A20A6F40;
  v10 = (a1 + 12);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240(v10, a2 + 1);
  *(a1 + 16) = *a3;
  v11 = *(a3 + 8);
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), (a3 + 16));
  sub_29A1E2240((a1 + 36), (a3 + 20));
  v12 = *(a3 + 24);
  *(a1 + 40) = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = a5;
  *(a1 + 72) = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetAuthoredPrimvars(a4);
}

void sub_29AF88880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a14 = &a9;
  sub_29A7A3864(&a14);
  sub_29AF8A488(v16, *(v14 + 64));
  sub_29A57F434(v15);
  sub_29A1DCEA8((v14 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::_GetPrefixedName(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars *this@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X8>)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  std::operator+<char>();
  if (v6 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2, p_p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_29AF88974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::GetNames(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A1D7F98(a2, *(this + 9));
  v4 = *(this + 7);
  if (v4 != (this + 64))
  {
    do
    {
      sub_29A1D8028(a2, v4 + 4);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 64));
  }

  sub_29A008E78(__p, "primvars:");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredPropertiesInNamespace(this + 16, __p, v16);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16[0] != v16[1])
  {
    v8 = v16[0] + 16;
    LODWORD(__p[0]) = *v16[0];
    v9 = *(v16[0] + 8);
    __p[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v13, v8);
    sub_29A1E2240(&v14, (v8 + 4));
    v10 = *(v8 + 8);
    v15 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    Overlay::UsdProperty_As(__p, v11);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v11);
  }

  __p[0] = v16;
  sub_29A58C74C(__p);
}

void sub_29AF88BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A124AB0(&__p);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29A31B8F0(this + 56, a2);
  if ((this + 64) == v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::_GetPrefixedName(a2, &v19);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship((this + 16), &v19, v18);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v18);
  }

  v7 = v6;
  v8 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(&v19, (v6 + 40));
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(v8))
  {
    v9 = *(this + 6);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndicesAttr((v7 + 40), v17);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v18, v17);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation((v7 + 40), &v14);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolationToken(&v14, &v15);
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource(&v15, &v16);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName((v7 + 40), &v11);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdRole(&v11, &v12);
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource(&v12, &v13);
    sub_29AF89154(this + 8, a2, v9, &v19, v18, &v16, &v13);
  }

  *a3 = 0;
  a3[1] = 0;
  return sub_29A5896C0(&v19);
}

void sub_29AF88FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v16 = *(v14 - 184);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (a9)
  {
    sub_29A014BEC(a9);
  }

  sub_29ABEF2C0((v14 - 176));
  sub_29A5B6480(va);
  _Unwind_Resume(a1);
}

void sub_29AF89154(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = operator new(0x120uLL);
  sub_29A589860(v20, a4);
  sub_29A589860(v19, a5);
  v15 = a6[1];
  v18[0] = *a6;
  v18[1] = v15;
  *a6 = 0;
  a6[1] = 0;
  v16 = a7[1];
  v17[0] = *a7;
  v17[1] = v16;
  *a7 = 0;
  a7[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar::UsdImagingDataSourcePrimvar(v14, a1, a2, a3, v20, v19, v18, v17);
}

void sub_29AF89254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  sub_29A5896C0(&a13);
  sub_29A5896C0(&a28);
  if (v31)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void *sub_29AF89294@<X0>(const pxrInternal__aapl__pxrReserved__::UsdRelationship *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::UsdImagingDataSourceRelationship(v6, a1, a2);

  return sub_29AF8258C(a3, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::UsdImagingDataSourceCustomPrimvars(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  *a1 = &unk_2A20A6F70;
  v10 = (a1 + 12);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240(v10, a2 + 1);
  *(a1 + 16) = *a3;
  v11 = *(a3 + 8);
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), (a3 + 16));
  sub_29A1E2240((a1 + 36), (a3 + 20));
  v12 = *(a3 + 24);
  *(a1 + 40) = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = a5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29AF71768((a1 + 56), *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * (a4[1] - *a4));
  return a1;
}

void sub_29AF89414(_Unwind_Exception *a1)
{
  sub_29A57F434(v2);
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
  v5 = *(this + 7);
  v6 = *(this + 8);
  while (v5 != v6)
  {
    result = sub_29A1D8028(a2, v5);
    v5 += 3;
  }

  return result;
}

void sub_29AF894B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::Get@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v5 == v4)
  {
LABEL_5:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = a2;
    v7 = this;
    while ((*a2 ^ *v5) > 7)
    {
      v5 += 3;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute((this + 16), (v5 + 1), v22);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v21, v22);
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(v21))
    {
      v8 = *(v7 + 6);
      pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v20);
      v9 = v5[2];
      if (v9)
      {
        v18 = v5[2];
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v18 &= 0xFFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v27 = 0;
        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v10)
        {
          v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v17 = 0;
        v11 = sub_29A5809FC(v22, (v10 + 488), &v27, &v17);
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v11)
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolationToken(&v27, &v18);
        }

        else
        {
          v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v12)
          {
            v12 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          v13 = *(v12 + 9);
          v18 = v13;
          if ((v13 & 7) != 0)
          {
            v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
            if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
            {
              v18 = v14;
            }
          }
        }

        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource(&v18, &v19);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(v22, &v16);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdRole(&v16, &v27);
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource(&v27, &v17);
      sub_29AF89154(v7 + 8, v6, v8, v21, v20, &v19, &v17);
    }

    *a3 = 0;
    a3[1] = 0;
    sub_29A5896C0(v21);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
    sub_29A1DE3A4(&v24);
    this = v23;
    if (v23)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v15);
    }
  }

  return this;
}

void sub_29AF89788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v35 = *(v33 - 56);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(&a16);
  sub_29A5896C0(&a33);
  sub_29A5888DC(v33 - 88);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::Invalidate(uint64_t a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  v17[7] = *MEMORY[0x29EDCA608];
  *(a3 + 56) = 0x800000000;
  v15 = 0u;
  v16 = 0u;
  v5 = *a2;
  v6 = *(a2 + 8);
  while (v5 != v6)
  {
    v7 = sub_29AF899B8(&v15, v5 + 1);
    sub_29A166F2C(v7, v5);
    v5 += 3;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  while (v8 != v9)
  {
    v10 = sub_29A161380(&v15, v8);
    v11 = v10;
    if (*(&v15 + 1) != v10)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v10);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v11 + 8), v17);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, v17);
      sub_29ABC3488(v17);
    }

    ++v8;
  }

  v13 = *(&v16 + 1);
  *(&v16 + 1) = 0;
  if (v13)
  {
    v14 = sub_29A155EF4(v13);
    operator delete(v14);
  }

  v17[0] = &v15;
  sub_29A40DADC(v17);
}

void sub_29AF89984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29ABC3488(&a13);
  sub_29AF89A6C(&a9);
  sub_29ABD3178();
}

void *sub_29AF899B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v6 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v3;
    }
  }

  v7 = 0;
  v4 = sub_29AF8A794(a1, &v6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v4 + 1;
}

void sub_29AF89A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF89A6C(uint64_t a1)
{
  sub_29A1601D8((a1 + 24), 0);
  v3 = a1;
  sub_29A40DADC(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar::UsdImagingDataSourcePrimvar(void *a1, int a2, int a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a5, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a6, void *a7, void *a8)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A20A6FA0;
  a1[1] = a4;
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 2), a5);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 17), a6);
  a1[32] = *a7;
  v12 = a7[1];
  a1[33] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  a1[34] = *a8;
  v13 = a8[1];
  a1[35] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute((a1 + 17));
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(Attribute);
}

void sub_29AF89D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29ABC3488(&a9);
  v11 = *(v9 + 35);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v9 + 33);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  sub_29A5896C0(v9 + 136);
  sub_29A5896C0(v9 + 16);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar::GetNames(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar *this)
{
  v2 = *MEMORY[0x29EDCA608];
  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute((this + 136));
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(Attribute);
}

void sub_29AF89FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8A1F0(uint64_t a1)
{
  sub_29AF8A338(a1);

  operator delete(v1);
}

void sub_29AF8A21C(uint64_t a1)
{
  sub_29AF8A3E0(a1);

  operator delete(v1);
}

void sub_29AF8A244(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6FA0;
  v2 = *(a1 + 35);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 33);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A5896C0(a1 + 136);
  sub_29A5896C0(a1 + 16);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8A2BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6FA0;
  v2 = *(a1 + 35);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 33);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A5896C0(a1 + 136);
  sub_29A5896C0(a1 + 16);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v4);
}

void sub_29AF8A338(uint64_t a1)
{
  *a1 = &unk_2A20A6F40;
  sub_29AF8A488(a1 + 56, *(a1 + 64));
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

void sub_29AF8A3E0(uint64_t a1)
{
  *a1 = &unk_2A20A6F70;
  v5 = (a1 + 56);
  sub_29AC1C990(&v5);
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

void sub_29AF8A488(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AF8A488(a1, *a2);
    sub_29AF8A488(a1, a2[1]);
    sub_29AF8A4E4((a2 + 4));

    operator delete(a2);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AF8A4E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  result = *(a1 + 16);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t *sub_29AF8A56C(uint64_t **a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29AF8A604(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_DWORD *sub_29AF8A604@<X0>(uint64_t a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  v6[4] = **a2;
  *v7 = 0;
  *(v6 + 10) = 3;
  v6[6] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v6 + 14);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v6 + 15);
  v6[8] = 0;
  v6[9] = 0;
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AF8A688(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A7018;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF8A6E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8A6FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8A724(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8A754(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7068))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF8A794(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 4;
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = v6;
    v13 = v5;
    v7 = sub_29A162678(v4, &v12, &v12);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return (*a1 + 16 * v7[3]);
    }

    goto LABEL_14;
  }

  result = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while ((*result ^ *a2) >= 8)
    {
      result += 2;
      if (result == v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (result == v10)
  {
LABEL_14:
    sub_29A3AA17C(&v12, a2, a2 + 1);
    sub_29AF8A930(a1, &v12);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v11 = a1[1];
    if ((v11 - *a1) >= 0x7F1)
    {
      sub_29AF8AB90(a1);
      v11 = a1[1];
    }

    return (v11 - 16);
  }

  return result;
}

void sub_29AF8A8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF8A930(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AF8A978(a1, a2);
  }

  else
  {
    result = sub_29A3ACAE4(v3, a2) + 2;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AF8A978(uint64_t a1, uint64_t *a2)
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
  v16 = &v8[2 * v2];
  *(&v17 + 1) = &v8[2 * v7];
  sub_29A3ACAE4(v16, a2);
  *&v17 = v16 + 2;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  sub_29AF8AA84(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A40DDD8(&v15);
  return v14;
}

void sub_29AF8AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A40DDD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF8AA84(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_29A3ACAE4(a4, v6);
      v6 += 2;
      a4 = v12 + 2;
      v12 += 2;
    }

    while (v6 != a3);
    for (i = 1; v5 != a3; v5 += 2)
    {
      v7 = v5[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29AF8AB58(v9);
}

uint64_t sub_29AF8AB58(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A40DD8C(a1);
  }

  return a1;
}

void sub_29AF8AB90(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1601D8(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v1;
        v8 = *(v4 + v5);
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9[0] = v8;
        v9[1] = v6;
        sub_29A162678(v7, v9, v9);
        if ((v9[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
        v4 = *a1;
        v5 += 16;
      }

      while (v6 < (a1[1] - *a1) >> 4);
    }
  }
}

void sub_29AF8AC7C(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::UsdImagingDataSourceRelationship(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A20A7090;
  *(a1 + 8) = *a2;
  v6 = *(a2 + 8);
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 24), (a2 + 16));
  sub_29A1E2240((a1 + 28), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 32) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 40) = a3;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::GetValue(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship *this@<X0>, float a2@<S0>, void *a3@<X8>)
{
  (*(*this + 32))(v4, a2);
  a3[1] = &off_2A2076AF0;
  sub_29A18ECC8(a3, v4);
  sub_29ABED558(v4);
}

void sub_29AF8ADE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABED558(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::GetTypedValue(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets((this + 8), &v4);
  sub_29AF8AE74(a2, v4, v5);
  v7 = &v4;
  sub_29A1E234C(&v7);
}

void sub_29AF8AE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF8AE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29ABF4840(a1, a2, a3);
  return a1;
}

void sub_29AF8AEC8(uint64_t a1)
{
  *a1 = &unk_2A20A7090;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8AF50(uint64_t a1)
{
  *a1 = &unk_2A20A7090;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::UsdImagingDataSourceRenderPassPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
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

  *a1 = &unk_2A20A70E0;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2061FD8;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2061FD8;
    *v6 = &unk_2A20A7200;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2061FD8;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A7248;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(v8);
  }
}

void sub_29AF8B348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  (*(*v12 + 8))(v12);
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(&a12);
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::Invalidate(const pxrInternal__aapl__pxrReserved__::TfToken **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29AF8B540();
  if ((atomic_load_explicit(&qword_2A1751C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751C50))
  {
    sub_29AE15FD8(qword_2A1751C28, qword_2A1751CE8, unk_2A1751CF0, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751C28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751C50);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751C28, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, v8);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v8);
        sub_29ABC3488(v8);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }
}

void sub_29AF8B540()
{
  v10 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D00))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v0)
    {
      v0 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    v1 = *(v0 + 25);
    v8 = v1;
    if ((v1 & 7) != 0)
    {
      v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 = v2;
      }
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v3)
    {
      v3 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    v4 = *(v3 + 36);
    v9 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 = v5;
      }
    }

    qword_2A1751CE8 = 0;
    unk_2A1751CF0 = 0;
    qword_2A1751CF8 = 0;
    sub_29A12EF7C(&qword_2A1751CE8, &v8, &v10, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v7 = *(&v8 + i);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751CE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D00);
  }
}

void sub_29AF8B6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1751D00);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::UsdImagingDataSourceRenderSettingsPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
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

  *a1 = &unk_2A20A7110;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2062088;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2062088;
    *v6 = &unk_2A20A72C0;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2062088;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A7308;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(v8);
  }
}

void sub_29AF8BA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  (*(*v12 + 8))(v12);
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(&a12);
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::Invalidate(const pxrInternal__aapl__pxrReserved__::TfToken **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_29AF8BC94();
  if ((atomic_load_explicit(&qword_2A1751C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751C80))
  {
    sub_29AE15FD8(qword_2A1751C58, qword_2A1751D08, *algn_2A1751D10, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751C58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751C80);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751C58, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, v9);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v9);
        sub_29ABC3488(v9);
      }

      else
      {
        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettingsLocator(0);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, NamespacedSettingsLocator);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }
}

void sub_29AF8BC94()
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D20))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetSchemaAttributeNames(1);
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v1)
    {
      v1 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v2 = *(v1 + 12);
    v11 = v2;
    if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v3)
    {
      v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v4 = *(v3 + 7);
    v12 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v5)
    {
      v5 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v6 = *(v5 + 11);
    v13 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v9, 0, sizeof(v9));
    sub_29A12EF7C(v9, &v11, &v14, 3uLL);
    sub_29AF8D354(SchemaAttributeNames, v9, &qword_2A1751D08);
    v10 = v9;
    sub_29A124AB0(&v10);
    for (i = 16; i != -8; i -= 8)
    {
      v8 = *(&v11 + i);
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751D08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D20);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::UsdImagingDataSourceRenderProductPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
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

  *a1 = &unk_2A20A7140;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2062030;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2062030;
    *v6 = &unk_2A20A7380;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2062030;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A73C8;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(v8);
  }
}

void sub_29AF8C29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  (*(*v12 + 8))(v12);
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(&a12);
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::Invalidate(const pxrInternal__aapl__pxrReserved__::TfToken **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_29AF8C4AC();
  if ((atomic_load_explicit(&qword_2A1751CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751CB0))
  {
    sub_29AE15FD8(qword_2A1751C88, qword_2A1751D28, *algn_2A1751D30, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751C88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751CB0);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751C88, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, v9);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v9);
        sub_29ABC3488(v9);
      }

      else
      {
        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettingsLocator(0);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, NamespacedSettingsLocator);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }
}

void sub_29AF8C4AC()
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D40))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdRenderProduct::GetSchemaAttributeNames(1);
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v1)
    {
      v1 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v2 = *(v1 + 11);
    v11 = v2;
    if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v3)
    {
      v3 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v4 = *(v3 + 7);
    v12 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v5)
    {
      v5 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v6 = *(v5 + 10);
    v13 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v9, 0, sizeof(v9));
    sub_29A12EF7C(v9, &v11, &v14, 3uLL);
    sub_29AF8D354(SchemaAttributeNames, v9, &qword_2A1751D28);
    v10 = v9;
    sub_29A124AB0(&v10);
    for (i = 16; i != -8; i -= 8)
    {
      v8 = *(&v11 + i);
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751D28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D40);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::UsdImagingDataSourceRenderVarPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
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

  *a1 = &unk_2A20A7170;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2062138;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2062138;
    *v6 = &unk_2A20A7440;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2062138;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A7488;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(v8);
  }
}

void sub_29AF8CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  (*(*v12 + 8))(v12);
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(&a12);
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::Invalidate(const pxrInternal__aapl__pxrReserved__::TfToken **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_29AF8CCC4();
  if ((atomic_load_explicit(&qword_2A1751CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751CE0))
  {
    sub_29AE15FD8(qword_2A1751CB8, qword_2A1751D48, *algn_2A1751D50, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751CB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751CE0);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751CB8, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, v9);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v9);
        sub_29ABC3488(v9);
      }

      else
      {
        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettingsLocator(0);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, NamespacedSettingsLocator);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }
}

void sub_29AF8CCC4()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D60))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdRenderVar::GetSchemaAttributeNames(1);
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v1)
    {
      v1 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    v2 = *(v1 + 4);
    v6 = v2;
    if ((v2 & 7) != 0)
    {
      v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
      {
        v6 = v3;
      }
    }

    memset(v4, 0, sizeof(v4));
    sub_29A12EF7C(v4, &v6, &v7, 1uLL);
    sub_29AF8D354(SchemaAttributeNames, v4, &qword_2A1751D48);
    v5 = v4;
    sub_29A124AB0(&v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751D48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D60);
  }
}

void sub_29AF8CE64(uint64_t a1)
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

void sub_29AF8CF00(uint64_t a1)
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

void sub_29AF8CFA0(uint64_t a1)
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

void sub_29AF8D03C(uint64_t a1)
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

void sub_29AF8D0DC(uint64_t a1)
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

void sub_29AF8D178(uint64_t a1)
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

void sub_29AF8D218(uint64_t a1)
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

void sub_29AF8D2B4(uint64_t a1)
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

char *sub_29AF8D354@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A1D7F98(a3, a2[1] - *a2 + a1[1] - *a1);
  sub_29A372808(a3, a3[1], *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(a3, a3[1], *a2, a2[1], a2[1] - *a2);
}

void sub_29AF8D3E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *sub_29AF8D404(atomic_ullong *a1)
{
  result = sub_29AF8D44C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::~UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *sub_29AF8D44C()
{
  v0 = operator new(0x80uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(v0);
  return v0;
}