void sub_29AE63888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char **a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_29A186B14(v46 - 104);
  a18 = &a33;
  sub_29AE64438(&a18);
  a33 = &a36;
  sub_29ADD60F4(&a33);
  if ((a39 & 7) != 0)
  {
    atomic_fetch_add_explicit((a39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A184A10(&a40, 0);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 161) < 0)
  {
    operator delete(*(v46 - 184));
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  v48 = *(v46 - 128);
  if (v48)
  {
    sub_29A014BEC(v48);
  }

  sub_29A0E9CEC(v46 - 120);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMaterial::_InitFallbackShader(pxrInternal__aapl__pxrReserved__::HdStMaterial *this)
{
  if (!pxrInternal__aapl__pxrReserved__::HdStMaterial::_fallbackGlslfx)
  {
    pxrInternal__aapl__pxrReserved__::HdStPackageFallbackMaterialNetworkShader(&v10);
    v1 = operator new(0x138uLL);
    v2 = v1;
    if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v10 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v1);
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v4)
    {
      v4 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v2, EmptyString, v4 + 112);
    pxrInternal__aapl__pxrReserved__::HdStMaterial::_fallbackGlslfx = v2;
    if ((pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v2, 0) & 1) == 0)
    {
      LOBYTE(v9) = 0;
      v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Failed to load fallback surface shader!", v5, v6, "hdSt/material.cpp", "_InitFallbackShader", 417, "void pxrInternal__aapl__pxrReserved__::HdStMaterial::_InitFallbackShader()", v9);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v8, "_fallbackGlslfx->IsValid()", v7);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AE63AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterial::_GetHasLimitSurfaceEvaluation(pxrInternal__aapl__pxrReserved__::HdStMaterial *this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&qword_2A174F260);
  if (!v3)
  {
    v3 = sub_29AE64BC0();
  }

  v6[1] = 0;
  sub_29AE63C10(a2, v3, v6, v7);
  sub_29A186B14(v6);
  if (sub_29A1EFCDC(v7))
  {
    v4 = *sub_29A1EFD10(v7);
  }

  else
  {
    v4 = 0;
  }

  sub_29A186B14(v7);
  return v4 & 1;
}

void sub_29AE63BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AE63C10@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, EmptyString);
  v10 = v9;
  v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v10 != v12 || (v10 ? (v13 = v8 == v11) : (v13 = 1), !v13))
  {
    a3 = (v8 + 56);
  }

  return sub_29A186EF4(a4, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterial::GetMaterialNetworkShader@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStMaterial::SetMaterialNetworkShader(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

uint64_t sub_29AE63CFC(uint64_t a1, pxrInternal__aapl__pxrReserved__ *this, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned __int8 *a9, unsigned int *a10, unsigned int *a11)
{
  v18 = pxrInternal__aapl__pxrReserved__::hash_value(this, this);
  if (*(a1 + 8))
  {
    v18 += (*a1 + v18 + (*a1 + v18) * (*a1 + v18)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;

  return sub_29AE63DC0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_29AE63DC0(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned __int8 *a8, unsigned int *a9, unsigned int *a10)
{
  v10 = *a2;
  if (*(a1 + 8))
  {
    v10 += (*a1 + v10 + (*a1 + v10) * (*a1 + v10)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_29AE63E14(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_29AE63E14(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned __int8 *a7, unsigned int *a8, unsigned int *a9)
{
  v9 = *a2;
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29AE63E64(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_29AE63E64(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned __int8 *a6, unsigned int *a7, unsigned int *a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29AE63EAC(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29AE63EAC(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned __int8 *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = *a2;
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29AE63EF0(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29AE63EF0(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned __int8 *a4, unsigned int *a5, unsigned int *a6)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29AE63F30(a1, a3, a4, a5, a6);
}

uint64_t sub_29AE63F30(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29AE63F6C(a1, a3, a4, a5);
}

uint64_t sub_29AE63F6C(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AE63FA4(a1, a3, a4);
}

uint64_t sub_29AE63FA4(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

void sub_29AE63FE4(void *a1@<X8>)
{
  v2 = operator new(0x100uLL);
  sub_29AE64048(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void *sub_29AE64048(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20982E8;
  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::HdSt_MaterialNetworkShader((a1 + 3));
  return a1;
}

void sub_29AE640C4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20982E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE64130(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[40 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[40 * v6];
  *v8 = *a2;
  *a2 = 0;
  *(v8 + 2) = *(a2 + 8);
  *(v8 + 1) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v8 + 4) = *(a2 + 32);
  *&v17 = v8 + 40;
  v9 = *(a1 + 8);
  v10 = &v8[*a1 - v9];
  sub_29AE64278(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AE6438C(&v15);
  return v14;
}

void sub_29AE64264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AE6438C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE64278(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = *(v4 + 2);
      *(a4 + 16) = *(v4 + 1);
      v4[2] = 0;
      v4[3] = 0;
      *(a4 + 32) = v4[4];
      v4 += 5;
      a4 += 40;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7 = 1;
  sub_29AE64324(a1, a2, a3);
  return sub_29ADD6A10(v6);
}

void sub_29AE64324(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = v4[3];
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      if ((*v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t sub_29AE6438C(uint64_t a1)
{
  sub_29AE643C4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AE643C4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 40);
    *(a1 + 16) = i - 40;
    v6 = *(i - 16);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    if ((*v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AE64438(void ***a1)
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
        v4 -= 88;
        sub_29AE644C0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AE644C0(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 80));
  sub_29A1DE3A4((a2 + 76));
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((a2 + 8));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AE64514(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29AE64694(a1);
    if (a4 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
    {
      v10 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A9332C4(a1, v10);
    v11 = sub_29AE64700(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v12 >> 3) < a4)
  {
    sub_29AE648F4(&v16, a2, a2 + v12, v8);
    v11 = sub_29AE64700(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29AE648F4(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 88;
      sub_29AE644C0(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29AE64694(void **a1)
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
        v3 -= 88;
        sub_29AE644C0(a1, v3);
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

uint64_t sub_29AE64700(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
      sub_29AE647AC(a1, v4, v6);
      v6 += 11;
      v4 = v12 + 88;
      v12 += 88;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AE64868(v9);
  return v4;
}

_DWORD *sub_29AE647AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier((a2 + 8), (a3 + 1));
  v6 = *(a3 + 3);
  v7 = *(a3 + 5);
  v8 = *(a3 + 7);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  *(a2 + 24) = v6;
  sub_29A1E21F4((a2 + 76), a3 + 19);

  return sub_29A1E2240((a2 + 80), a3 + 20);
}

uint64_t sub_29AE64868(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AE648A0(a1);
  }

  return a1;
}

void sub_29AE648A0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 88;
      sub_29AE644C0(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_29AE648F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A166F2C(a4, v5);
    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator=((a4 + 8), (v5 + 8));
    v7 = *(v5 + 40);
    v8 = *(v5 + 56);
    v9 = *(v5 + 72);
    *(a4 + 24) = *(v5 + 24);
    *(a4 + 72) = v9;
    *(a4 + 56) = v8;
    *(a4 + 40) = v7;
    sub_29A2258F0((a4 + 76), (v5 + 76));
    sub_29A225948((a4 + 80), (v5 + 80));
    a4 += 88;
    v5 += 88;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_29AE6499C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29ADD6420(a1);
    if (a4 > 0x276276276276276)
    {
      sub_29A00C9A4();
    }

    v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v10 = 0x276276276276276;
    }

    else
    {
      v10 = v9;
    }

    sub_29AB89A2C(a1, v10);
    result = sub_29AE64B1C(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v12 >> 3) < a4)
  {
    sub_29ADD66D4(&v16, a2, a2 + v12, v8);
    result = sub_29AE64B1C(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29ADD66D4(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 104;
      result = sub_29ADD617C(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_29AE64B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29ADD6530(a4, a2);
  }

  v7 = 1;
  sub_29ADD6648(v6);
  return a4;
}

unint64_t sub_29AE64BC0()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "limitSurfaceEvaluation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "opacity", 0);
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
  atomic_compare_exchange_strong(&qword_2A174F260, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174F260);
  }

  return v0;
}

void sub_29AE64D04(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__::HdStMaterialNetwork *pxrInternal__aapl__pxrReserved__::HdStMaterialNetwork::HdStMaterialNetwork(pxrInternal__aapl__pxrReserved__::HdStMaterialNetwork *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v2)
  {
    v2 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  v3 = *v2;
  *this = *v2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *this &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 21) = 0;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStMaterialNetwork::~HdStMaterialNetwork(pxrInternal__aapl__pxrReserved__::HdStMaterialNetwork *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = (this + 112);
  sub_29AE64438(&v4);
  v4 = (this + 88);
  sub_29ADD60F4(&v4);
  sub_29A184A10(this + 10, 0);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStMaterialNetwork::ProcessMaterialNetwork(uint64_t a1, _DWORD *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a4)
{
  v100 = *MEMORY[0x29EDCA608];
  if (*(a1 + 31) < 0)
  {
    **(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 31) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    **(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    *(a1 + 56) = 0;
    *(a1 + 79) = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::clear((a1 + 80));
  v9 = *(a1 + 88);
  for (i = *(a1 + 96); i != v9; sub_29ADD617C(a1 + 88, i))
  {
    i -= 104;
  }

  v10 = *(a1 + 112);
  *(a1 + 96) = v9;
  for (j = *(a1 + 120); j != v10; sub_29AE644C0(a1 + 112, j))
  {
    j -= 88;
  }

  *(a1 + 120) = v10;
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v12)
  {
    v12 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  sub_29A166F2C(a1, v12);
  v91 = 0;
  pxrInternal__aapl__pxrReserved__::HdConvertToHdMaterialNetwork2(a3, &v91, v85);
  v13 = v91;
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
  if (v13)
  {
    if (!v14)
    {
      v14 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    }

    v14 += 2;
  }

  else if (!v14)
  {
    v14 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v83);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v84);
  v15 = sub_29A31B8F0(&v87, v14);
  if (&v88 == v15)
  {
    goto LABEL_182;
  }

  v16 = sub_29A55CDFC(v85);
  sub_29A2258F0(&v83, (v15 + 40));
  size = sub_29A225948(&v84, (v15 + 44));
  if (!v91)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_ApplyMaterialXFilter(v85, a2, (v16 + 40), &v83, a4, &__dst);
    v18 = *&__dst.__r_.__value_.__l.__data_;
    *&__dst.__r_.__value_.__l.__data_ = 0uLL;
    size = *(a1 + 168);
    *(a1 + 160) = v18;
    if (size)
    {
      sub_29A014BEC(size);
      size = __dst.__r_.__value_.__l.__size_;
      if (__dst.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__dst.__r_.__value_.__l.__size_);
      }
    }
  }

  Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(size);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v20)
  {
    v20 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(Instance, (v16 + 40), v20);
  if (ShaderNodeByIdentifierAndType)
  {
    v22 = ShaderNodeByIdentifierAndType[135];
    if (v22 < 0)
    {
      if (*(ShaderNodeByIdentifierAndType + 15))
      {
LABEL_31:
        v23 = (ShaderNodeByIdentifierAndType + 112);
        v24 = *(a1 + 152);
        if (v24)
        {
          v25 = *(a1 + 136);
          if (!v25)
          {
            goto LABEL_66;
          }

          v26 = *(v25 + 23);
          v27 = v26 >= 0 ? *(v25 + 23) : *(v25 + 8);
          v28 = *(ShaderNodeByIdentifierAndType + 14);
          v29 = v22 >= 0 ? ShaderNodeByIdentifierAndType[135] : *(ShaderNodeByIdentifierAndType + 15);
          if (v27 == v29)
          {
            v30 = v26 >= 0 ? *(a1 + 136) : *v25;
            v31 = v22 >= 0 ? v23 : v28;
            v32 = memcmp(v30, v31, v27);
            v29 = v27;
            if (!v32)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          v28 = *(ShaderNodeByIdentifierAndType + 14);
          if (v22 >= 0)
          {
            v29 = ShaderNodeByIdentifierAndType[135];
          }

          else
          {
            v29 = *(ShaderNodeByIdentifierAndType + 15);
          }
        }

        __dst.__r_.__value_.__r.__words[0] = 0;
        __dst.__r_.__value_.__s.__data_[8] = 0;
        if (v22 >= 0)
        {
          v35 = v23;
        }

        else
        {
          v35 = v28;
        }

        pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&__dst, v35, v29);
        v24 = bswap64(0x9E3779B97F4A7C55 * __dst.__r_.__value_.__r.__words[0]);
        *(a1 + 152) = v24;
LABEL_66:
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGLSLFXFile(a4, v24, &__dst);
        if (v95 == 1)
        {
          sub_29AE54950(v23, &v99);
          v36 = v99;
          v99 = 0uLL;
          v37 = *(a1 + 144);
          *(a1 + 136) = v36;
          if (v37)
          {
            sub_29A014BEC(v37);
            if (*(&v99 + 1))
            {
              sub_29A014BEC(*(&v99 + 1));
            }
          }

          sub_29AE65CC4(&__dst, (a1 + 136));
        }

        v38 = *&__dst.__r_.__value_.__r.__words[1];
        if (__dst.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((__dst.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v39 = *(a1 + 144);
        *(a1 + 136) = v38;
        if (v39)
        {
          sub_29A014BEC(v39);
        }

        if (v94 == 1)
        {
          std::mutex::unlock(v93);
        }

        if (__dst.__r_.__value_.__r.__words[2])
        {
          sub_29A014BEC(__dst.__r_.__value_.__r.__words[2]);
        }

        goto LABEL_79;
      }
    }

    else if (ShaderNodeByIdentifierAndType[135])
    {
      goto LABEL_31;
    }

    if ((ShaderNodeByIdentifierAndType[223] & 0x8000000000000000) != 0)
    {
      if (!*(ShaderNodeByIdentifierAndType + 26))
      {
        goto LABEL_79;
      }
    }

    else if (!ShaderNodeByIdentifierAndType[223])
    {
      goto LABEL_79;
    }

    sub_29A5DB8D8(&__dst, (ShaderNodeByIdentifierAndType + 200), 8);
    sub_29AE65E3C(&__dst, &v99);
    v33 = v99;
    v99 = 0uLL;
    v34 = *(a1 + 144);
    *(a1 + 136) = v33;
    if (v34)
    {
      sub_29A014BEC(v34);
      if (*(&v99 + 1))
      {
        sub_29A014BEC(*(&v99 + 1));
      }
    }

    __dst.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9530];
    *(__dst.__r_.__value_.__r.__words + *(__dst.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
    __dst.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
    if (v97 < 0)
    {
      operator delete(__p);
    }

    __dst.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(&v93);
    std::istream::~istream();
    MEMORY[0x29C2C4390](&v98);
  }

LABEL_79:
  v40 = *(a1 + 136);
  if (v40 && pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v40, 0))
  {
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSurfaceSource(*(a1 + 136), &__dst);
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = __dst;
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetVolumeSource(*(a1 + 136), &__dst);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = __dst;
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetMetadata(*(a1 + 136), &__dst);
    v41 = __dst.__r_.__value_.__r.__words[0];
    __dst.__r_.__value_.__r.__words[0] = 0;
    sub_29A184A10((a1 + 80), v41);
    sub_29A184A10(&__dst, 0);
    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v42)
    {
      v42 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    *(&v99 + 1) = 0;
    sub_29AE63C10((a1 + 80), v42 + 20, &v99, &__dst);
    sub_29A186B14(&v99);
    if (sub_29A1EFC10(&__dst))
    {
      if ((__dst.__r_.__value_.__s.__data_[8] & 4) != 0)
      {
        (*((__dst.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8) + 168))(&__dst);
      }

      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v82);
    }

    else
    {
      v43 = *(v16 + 48);
      v44 = (v16 + 56);
      if (v43 == (v16 + 56))
      {
LABEL_102:
        v49 = atomic_load(&qword_2A174F268);
        if (!v49)
        {
          v49 = sub_29AE65F68();
        }

        if (v16 + 80 != sub_29A31B8F0(v16 + 72, (v49 + 8)))
        {
          goto LABEL_105;
        }

        v52 = *(v16 + 48);
        if (v52 == v44)
        {
          goto LABEL_123;
        }

        while (1)
        {
          v53 = atomic_load(&qword_2A174F268);
          if (!v53)
          {
            v53 = sub_29AE65F68();
          }

          if ((*(v53 + 8) ^ v52[4]) <= 7)
          {
            break;
          }

          v54 = v52[1];
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = v52[2];
              v48 = *v55 == v52;
              v52 = v55;
            }

            while (!v48);
          }

          v52 = v55;
          if (v55 == v44)
          {
            goto LABEL_123;
          }
        }

        if (*sub_29A8D5794((v52 + 5)) >= 1.0)
        {
LABEL_123:
          v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          if (!v57)
          {
            v57 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          }

          v51 = *v57;
        }

        else
        {
LABEL_105:
          v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          if (!v50)
          {
            v50 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          }

          v51 = *(v50 + 4);
        }
      }

      else
      {
        while (1)
        {
          v45 = atomic_load(&qword_2A174F268);
          if (!v45)
          {
            v45 = sub_29AE65F68();
          }

          if ((*(v45 + 32) ^ v43[4]) <= 7 && *sub_29A8D5794((v43 + 5)) > 0.0)
          {
            break;
          }

          v46 = v43[1];
          if (v46)
          {
            do
            {
              v47 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = v43[2];
              v48 = *v47 == v43;
              v43 = v47;
            }

            while (!v48);
          }

          v43 = v47;
          if (v47 == v44)
          {
            goto LABEL_102;
          }
        }

        v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v56)
        {
          v56 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v51 = *(v56 + 1);
      }

      v82 = v51;
      if ((v51 & 7) != 0)
      {
        v58 = (v51 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed) & 1) == 0)
        {
          v82 = v58;
        }
      }
    }

    v59 = sub_29A186B14(&__dst);
    if (&v82 == a1)
    {
      if ((v82 & 7) != 0)
      {
        atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a1 = v82;
    }

    v60 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v59);
    v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v61)
    {
      v61 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    v62 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v60, (v16 + 40), v61);
    v64 = v62;
    if (v62)
    {
      *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
      __dst.__r_.__value_.__r.__words[0] = &__dst.__r_.__value_.__l.__size_;
      InputNames = pxrInternal__aapl__pxrReserved__::NdrNode::GetInputNames(v62);
      v66 = *InputNames;
      v67 = *(InputNames + 8);
      while (v66 != v67)
      {
        sub_29AE66834(v85, v16 + 40, v66++, &__dst, (a1 + 88), a1 + 112, a1);
      }

      sub_29A1E2AEC(&__dst, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst.__r_.__value_.__r.__words[0] = "hdSt/materialNetwork.cpp";
      __dst.__r_.__value_.__l.__size_ = "_GatherMaterialParams";
      __dst.__r_.__value_.__r.__words[2] = 1040;
      v93 = "void pxrInternal__aapl__pxrReserved__::_GatherMaterialParams(const HdMaterialNetwork2 &, const HdMaterialNode2 &, HdSt_MaterialParamVector *, HdStMaterialNetwork::TextureDescriptorVector *, const TfToken &)";
      v94 = 0;
      v68 = *(v16 + 40) & 0xFFFFFFFFFFFFFFF8;
      if (v68)
      {
        v69 = (v68 + 16);
        if (*(v68 + 39) < 0)
        {
          v69 = *v69;
        }
      }

      else
      {
        v69 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__dst, "Unrecognized node: %s", v63, v69);
    }

    v70 = *(a1 + 88);
    v71 = *(a1 + 96);
    if (v70 != v71)
    {
      v72 = &unk_2A204475B;
      do
      {
        if (*v70 != 4 && !*(v70 + 24))
        {
          sub_29AE6878C(v85, (v16 + 40), (v70 + 8), &__dst);
          sub_29A18606C((v70 + 16), &__dst);
          sub_29A186B14(&__dst);
          v73 = atomic_load(&qword_2A174F268);
          if (!v73)
          {
            v73 = sub_29AE65F68();
          }

          if ((*v73 ^ *(v16 + 40)) <= 7)
          {
            v74 = atomic_load(&qword_2A174F268);
            if (!v74)
            {
              v74 = sub_29AE65F68();
            }

            if ((*(v74 + 16) ^ *(v70 + 8)) <= 7)
            {
              if (sub_29A1EFC10((v70 + 16)))
              {
                v75 = sub_29A1EFC48((v70 + 16));
                if (*(v75 + 23) < 0)
                {
                  sub_29A008D14(&__dst, *v75, v75[1]);
                }

                else
                {
                  v76 = *v75;
                  __dst.__r_.__value_.__r.__words[2] = v75[2];
                  *&__dst.__r_.__value_.__l.__data_ = v76;
                }

                v80 = atomic_load(&qword_2A174F268);
                if (!v80)
                {
                  v80 = sub_29AE65F68();
                }

                v79 = pxrInternal__aapl__pxrReserved__::TfToken::operator==((v80 + 24), &__dst.__r_.__value_.__l.__data_);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }
              }

              else if (sub_29A1FA710((v70 + 16)))
              {
                v81 = v72;
                v77 = *sub_29A27A0F8((v70 + 16));
                if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v77 &= 0xFFFFFFFFFFFFFFF8;
                }

                v78 = atomic_load(&qword_2A174F268);
                if (!v78)
                {
                  v78 = sub_29AE65F68();
                }

                v79 = (v77 ^ *(v78 + 24)) < 8;
                if ((v77 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v72 = v81;
              }

              else
              {
                v79 = 1;
              }

              __dst.__r_.__value_.__l.__size_ = v72;
              LODWORD(__dst.__r_.__value_.__l.__data_) = v79;
              sub_29A18606C((v70 + 16), &__dst);
              sub_29A186B14(&__dst);
            }
          }
        }

        v70 += 104;
      }

      while (v70 != v71);
    }

    if (v64)
    {
      memset(&__dst, 0, sizeof(__dst));
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetDisplacementSource(*(a1 + 136), &__dst);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = __dst;
  }

LABEL_182:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v84);
  sub_29A1DE3A4(&v83);
  sub_29A184A10(&v90, 0);
  __dst.__r_.__value_.__r.__words[0] = &v89;
  sub_29A124AB0(&__dst);
  sub_29AC329F8(&v87, v88);
  sub_29AC32AB8(v85, v86);
}

void sub_29AE65B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_29A186B14(&__p);
  sub_29A1DCEA8(&a13);
  sub_29AC43430(&a15);
  _Unwind_Resume(a1);
}

void sub_29AE65CC4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AE65D94(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AE65D7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE65D94(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AE65E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE65E3C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x150uLL);
  result = sub_29AE65E98(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29AE65E98(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2092E40;
  sub_29AE65F08(&v4, (a1 + 3), a2);
  return a1;
}

uint64_t sub_29AE65F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v5)
  {
    v5 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  return pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(a2, a3, v5 + 112);
}

unint64_t sub_29AE65F68()
{
  v39 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "UsdPreviewSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "opacity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "opacityMode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "transparent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "opacityThreshold", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "isPtex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "st", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "uv", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "fieldname", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "diffuseColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "a", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "HwUvTexture_1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "textureMemory", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "sourceColorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "in", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "mtlx", 0);
  v1 = v0 + 16;
  v2 = *v0;
  v23 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v24 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v25 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v26 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v27 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v28 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v29 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v30 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v31 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v32 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v33 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v34 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v35 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v36 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v37 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v38 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[17] = 0;
  v0[18] = 0;
  sub_29A12EF7C(v1, &v23, &v39, 0x10uLL);
  for (i = 120; i != -8; i -= 8)
  {
    v19 = *(&v23 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v20 = 0;
  atomic_compare_exchange_strong(&qword_2A174F268, &v20, v0);
  if (v20)
  {
    v21 = sub_29AE66678(v0);
    operator delete(v21);
    return atomic_load(&qword_2A174F268);
  }

  return v0;
}

void sub_29AE6643C(_Unwind_Exception *a1)
{
  v4 = 120;
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
      v6 = v1[15];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[14];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[13];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[12];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[11];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[10];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[9];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[8];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[7];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[6];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[5];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[4];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[3];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[2];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[1];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t sub_29AE66678(uint64_t a1)
{
  v18 = (a1 + 128);
  sub_29A124AB0(&v18);
  v2 = *(a1 + 120);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 112);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 104);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 96);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 88);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 80);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 72);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 64);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 56);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 48);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 40);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 32);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 24);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 16);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 8);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::SdrRegistry *sub_29AE66834(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7)
{
  v249 = *MEMORY[0x29EDCA608];
  Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(a1);
  v14 = sub_29A31B8F0(a2 + 32, a3);
  if (a2 + 40 != v14)
  {
    v15 = *(v14 + 40);
    if (v15 != *(v14 + 48))
    {
      v16 = sub_29A55CDFC(a1);
      if ((a1 + 8) != v16)
      {
        v17 = v16;
        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
        if (!v18)
        {
          v18 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
        }

        v19 = *v18;
        __p.__r_.__value_.__r.__words[0] = v19;
        if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          __p.__r_.__value_.__r.__words[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        v20 = atomic_load(&qword_2A174F268);
        if (!v20)
        {
          v20 = sub_29AE65F68();
        }

        v21 = *(v20 + 120);
        __p.__r_.__value_.__l.__size_ = v21;
        if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          __p.__r_.__value_.__l.__size_ &= 0xFFFFFFFFFFFFFFF8;
        }

        v215 = v17;
        v242 = 0;
        v243 = 0;
        v244[0] = 0;
        sub_29A12EF7C(&v242, &__p, &__p.__r_.__value_.__r.__words[2], 2uLL);
        ShaderNodeByIdentifier = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifier(Instance, (v17 + 40), &v242);
        __dst.__r_.__value_.__r.__words[0] = &v242;
        sub_29A124AB0(&__dst);
        for (i = 8; i != -8; i -= 8)
        {
          v25 = *(&__p.__r_.__value_.__l.__data_ + i);
          if ((v25 & 7) != 0)
          {
            atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        if (ShaderNodeByIdentifier)
        {
          pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetRole(ShaderNodeByIdentifier, &v242);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v217);
          if (SHIBYTE(v244[0]) < 0)
          {
            operator delete(v242);
          }

          v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          if (!v26)
          {
            v26 = sub_29AE69B60(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          }

          if ((*(v26 + 1) ^ v217) <= 7)
          {
            result = sub_29A1EF6EC(a4);
            if ((a4 + 8) == result)
            {
              v212 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(result);
              v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
              v214 = a4;
              if (!v28)
              {
                v28 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
              }

              v29 = *v28;
              __p.__r_.__value_.__r.__words[0] = v29;
              if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                __p.__r_.__value_.__r.__words[0] &= 0xFFFFFFFFFFFFFFF8;
              }

              v30 = atomic_load(&qword_2A174F268);
              if (!v30)
              {
                v30 = sub_29AE65F68();
              }

              v31 = *(v30 + 120);
              __p.__r_.__value_.__l.__size_ = v31;
              if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                __p.__r_.__value_.__l.__size_ &= 0xFFFFFFFFFFFFFFF8;
              }

              v242 = 0;
              v243 = 0;
              v244[0] = 0;
              sub_29A12EF7C(&v242, &__p, &__p.__r_.__value_.__r.__words[2], 2uLL);
              v32 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifier(v212, (v17 + 40), &v242);
              __dst.__r_.__value_.__r.__words[0] = &v242;
              sub_29A124AB0(&__dst);
              for (j = 8; j != -8; j -= 8)
              {
                v34 = *(&__p.__r_.__value_.__l.__data_ + j);
                if ((v34 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              v228 = v32;
              pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v242);
              LODWORD(v242) = 1;
              sub_29A166F2C(&v243, a3);
              ShaderOutput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderOutput(v228, (v15 + 8));
              if (ShaderOutput)
              {
                v36 = (*(*ShaderOutput + 24))(ShaderOutput);
                v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens);
                if (!v37)
                {
                  v37 = sub_29AE69E04(&pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens);
                }

                v38 = sub_29A16039C(v36, v37);
                if (v38)
                {
                  std::string::operator=(&v247, v38 + 1);
                }
              }

              v246 = 0;
              if (v228)
              {
                Metadata = pxrInternal__aapl__pxrReserved__::NdrNode::GetMetadata(v228);
                v40 = atomic_load(&qword_2A174F268);
                if (!v40)
                {
                  v40 = sub_29AE65F68();
                }

                if (sub_29A16039C(Metadata, (v40 + 40)))
                {
                  v246 = 2;
                }
              }

              v41 = atomic_load(&qword_2A174F268);
              if (!v41)
              {
                v41 = sub_29AE65F68();
              }

              if ((*(v41 + 72) ^ *a3) > 7)
              {
                goto LABEL_81;
              }

              v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
              if (!v42)
              {
                v42 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
              }

              if ((*(v42 + 1) ^ *a7) < 8)
              {
                goto LABEL_81;
              }

              v43 = atomic_load(&qword_2A174F268);
              if (!v43)
              {
                v43 = sub_29AE65F68();
              }

              v44 = sub_29A31B8F0(a2 + 32, (v43 + 8));
              if (a2 + 40 == v44 || (v45 = *(v44 + 40), *(v17 + 32) != *v45))
              {
LABEL_81:
                v47 = 0;
              }

              else
              {
                v46 = atomic_load(&qword_2A174F268);
                if (!v46)
                {
                  v46 = sub_29AE65F68();
                }

                v47 = (*(v46 + 80) ^ v45[1]) < 8uLL;
              }

              v210 = v47;
              v248 = v47;
              v53 = atomic_load(&qword_2A174F268);
              if (!v53)
              {
                v53 = sub_29AE65F68();
              }

              v54 = sub_29A31B8F0(v17 + 48, (v53 + 104));
              v55 = v54;
              v213 = v17 + 56;
              if (v17 + 56 == v54 || (v56 = (v54 + 40), !sub_29A1FA710((v54 + 40))))
              {
                if (!v228 || (ShaderInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(v228, (v53 + 104)), (v60 = ShaderInput) == 0) || (v61 = ShaderInput + 3, !sub_29A1FA710((ShaderInput + 3))))
                {
                  v227 = 0;
                  goto LABEL_107;
                }

                v62 = v60[4];
                if ((v62 & 4) != 0)
                {
                  v61 = (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(v60 + 3);
                }

                v58 = *v61;
              }

              else
              {
                v57 = *(v55 + 48);
                if ((v57 & 4) != 0)
                {
                  v56 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(v55 + 40);
                }

                v58 = *v56;
              }

              v227 = v58;
              if ((v58 & 7) != 0)
              {
                v58 &= 0xFFFFFFFFFFFFFFF8;
                if (atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed))
                {
                  v58 = v227;
                }

                else
                {
                  v227 = v58;
                }
              }

              if (v58)
              {
LABEL_130:
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v225);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v226);
                pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(v224);
                AssetIdentifierInputNames = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetAssetIdentifierInputNames(v228, &v222);
                if (v222 == v223)
                {
                  __p.__r_.__value_.__r.__words[0] = "hdSt/materialNetwork.cpp";
                  __p.__r_.__value_.__l.__size_ = "_MakeMaterialParamsForTexture";
                  __p.__r_.__value_.__r.__words[2] = 732;
                  v239.__r_.__value_.__r.__words[0] = "void pxrInternal__aapl__pxrReserved__::_MakeMaterialParamsForTexture(const HdMaterialNetwork2 &, const HdMaterialNode2 &, const HdMaterialNode2 &, const SdfPath &, const TfToken &, const TfToken &, SdfPathSet *, HdSt_MaterialParamVector *, HdStMaterialNetwork::TextureDescriptorVector *, const TfToken &)";
                  v239.__r_.__value_.__s.__data_[8] = 0;
                  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v17 + 32));
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Invalid number of asset identifier input names: %s", v85, Text);
                  v211 = 1;
                  goto LABEL_214;
                }

                v75 = *v222;
                v229.__r_.__value_.__r.__words[0] = v75;
                if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v229.__r_.__value_.__r.__words[0] &= 0xFFFFFFFFFFFFFFF8;
                }

                v77 = v222;
                v76 = v223;
                if ((v223 - v222) >= 9 && v222 != v223)
                {
                  while (1)
                  {
                    if ((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v78 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
                    }

                    else
                    {
                      AssetIdentifierInputNames = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AssetIdentifierInputNames);
                      v78 = AssetIdentifierInputNames;
                    }

                    v79 = (*v77 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*v77 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AssetIdentifierInputNames);
                    v80 = *(v79 + 23) >= 0 ? v79 : *v79;
                    v81 = *(v78 + 23);
                    v82 = v81 >= 0 ? *(v78 + 23) : *(v78 + 8);
                    AssetIdentifierInputNames = strlen(v80);
                    if (v82 >= AssetIdentifierInputNames)
                    {
                      v83 = *v78;
                      if (v81 >= 0)
                      {
                        v83 = v78;
                      }

                      AssetIdentifierInputNames = strcmp((v83 + v82 - AssetIdentifierInputNames), v80);
                      if (!AssetIdentifierInputNames)
                      {
                        break;
                      }
                    }

                    ++v77;
                    a4 = v214;
                    v17 = v215;
                    if (v77 == v76)
                    {
                      goto LABEL_156;
                    }
                  }

                  sub_29A166F2C(&v229, v77);
                  a4 = v214;
                  v17 = v215;
                }

LABEL_156:
                v86 = sub_29A31B8F0(v17 + 48, &v229);
                v87 = v86;
                if (v213 != v86)
                {
                  v88 = (v86 + 40);
                  sub_29A2258F0(&v225, (v17 + 32));
                  sub_29A225948(&v226, (v17 + 36));
                  if (sub_29AE69BEC((v87 + 40)))
                  {
                    v89 = *(v87 + 48);
                    if ((v89 & 4) != 0)
                    {
                      v90 = (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(v87 + 40);
                    }

                    else
                    {
                      v90 = *v88;
                    }

                    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator=(v224, v90);
LABEL_211:
                    v211 = 0;
LABEL_212:
                    if ((v229.__r_.__value_.__s.__data_[0] & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v229.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

LABEL_214:
                    v105 = atomic_load(&qword_2A174F268);
                    if (!v105)
                    {
                      v105 = sub_29AE65F68();
                    }

                    v106 = sub_29A31B8F0(v17 + 72, (v105 + 48));
                    if ((v17 + 80) == v106)
                    {
                      v107 = atomic_load(&qword_2A174F268);
                      if (!v107)
                      {
                        v107 = sub_29AE65F68();
                      }

                      v106 = sub_29A31B8F0(v17 + 72, (v107 + 56));
                    }

                    if (v106 == (v17 + 80))
                    {
                      v115 = atomic_load(&qword_2A174F268);
                      if (!v115)
                      {
                        v115 = sub_29AE65F68();
                      }

                      v116 = sub_29A31B8F0(v17 + 48, (v115 + 48));
                      if (v213 == v116)
                      {
                        v117 = atomic_load(&qword_2A174F268);
                        if (!v117)
                        {
                          v117 = sub_29AE65F68();
                        }

                        v116 = sub_29A31B8F0(v17 + 48, (v117 + 56));
                      }

                      if (v116 != v213)
                      {
                        v118 = (v116 + 40);
                        if (sub_29A1FA710((v116 + 40)))
                        {
                          v119 = *(v116 + 48);
                          if ((v119 & 4) != 0)
                          {
                            v118 = (*((v119 & 0xFFFFFFFFFFFFFFF8) + 168))(v116 + 40);
                          }

                          sub_29A1D8028(v245, v118);
                        }
                      }
                    }

                    else
                    {
                      v108 = v106[5];
                      if (v108 != v106[6])
                      {
                        v109 = sub_29A55CDFC(a1);
                        v110 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
                        if (!v110)
                        {
                          v110 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
                        }

                        ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v212, (v109 + 40), v110);
                        if (ShaderNodeByIdentifierAndType)
                        {
                          pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetRole(ShaderNodeByIdentifierAndType, &__p);
                          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v220);
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          v112 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
                          if (!v112)
                          {
                            v112 = sub_29AE69B60(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
                            a4 = v214;
                          }

                          if ((*v112 ^ v220.__r_.__value_.__r.__words[0]) > 7)
                          {
                            v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
                            if (!v120)
                            {
                              v120 = sub_29AE69B60(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
                              a4 = v214;
                            }

                            if ((*(v120 + 3) ^ v220.__r_.__value_.__r.__words[0]) > 7)
                            {
                              goto LABEL_274;
                            }

                            memset(&__p, 0, sizeof(__p));
                            if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
                            {
                              EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
                            }

                            else
                            {
                              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v120);
                            }

                            v122 = sub_29A911628("_", EmptyString, &v221.__r_.__value_.__l.__data_);
                            if ((v106[4] & 0xFFFFFFFFFFFFFFF8) != 0)
                            {
                              v123 = ((v106[4] & 0xFFFFFFFFFFFFFFF8) + 16);
                            }

                            else
                            {
                              v123 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v122);
                            }

                            v124 = *(v123 + 23);
                            if (v124 >= 0)
                            {
                              v125 = v123;
                            }

                            else
                            {
                              v125 = *v123;
                            }

                            if (v124 >= 0)
                            {
                              v126 = *(v123 + 23);
                            }

                            else
                            {
                              v126 = v123[1];
                            }

                            v127 = std::string::append(&v221, v125, v126);
                            v128 = *&v127->__r_.__value_.__l.__data_;
                            v229.__r_.__value_.__r.__words[2] = v127->__r_.__value_.__r.__words[2];
                            *&v229.__r_.__value_.__l.__data_ = v128;
                            v127->__r_.__value_.__l.__size_ = 0;
                            v127->__r_.__value_.__r.__words[2] = 0;
                            v127->__r_.__value_.__r.__words[0] = 0;
                            v129 = std::string::append(&v229, "_transform2d");
                            v130 = *&v129->__r_.__value_.__l.__data_;
                            __dst.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
                            *&__dst.__r_.__value_.__l.__data_ = v130;
                            v129->__r_.__value_.__l.__size_ = 0;
                            v129->__r_.__value_.__r.__words[2] = 0;
                            v129->__r_.__value_.__r.__words[0] = 0;
                            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v218);
                            sub_29AE6917C(a1, (v109 + 40), v108, &v218, a4, &__p);
                            if ((v218.__r_.__value_.__s.__data_[0] & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v218.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__dst.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v229.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v221.__r_.__value_.__l.__data_);
                            }

                            size = __p.__r_.__value_.__l.__size_;
                            v131 = __p.__r_.__value_.__r.__words[0];
                            if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                            {
                              sub_29A1D8028(v245, (__p.__r_.__value_.__r.__words[0] + 8));
                              size = __p.__r_.__value_.__l.__size_;
                              v131 = __p.__r_.__value_.__r.__words[0];
                            }

                            sub_29AE69E90(a5, a5[1], v131, size, 0x4EC4EC4EC4EC4EC5 * ((size - v131) >> 3));
                          }

                          else
                          {
                            memset(&__p, 0, sizeof(__p));
                            sub_29AE68C7C((v109 + 40), v108, v106 + 4, a4, &__p);
                            if (&v242 != __p.__r_.__value_.__l.__data_ && __p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                            {
                              sub_29A34AC54(v245, *(__p.__r_.__value_.__r.__words[0] + 32), *(__p.__r_.__value_.__r.__words[0] + 40), (*(__p.__r_.__value_.__r.__words[0] + 40) - *(__p.__r_.__value_.__r.__words[0] + 32)) >> 3);
                            }

                            v114 = v245[0];
                            v113 = v245[1];
                            while (v114 != v113)
                            {
                              sub_29AE68B90(v114++, a5);
                            }
                          }

                          __dst.__r_.__value_.__r.__words[0] = &__p;
                          sub_29ADD60F4(&__dst);
LABEL_274:
                          if ((v220.__r_.__value_.__s.__data_[0] & 7) != 0)
                          {
                            atomic_fetch_add_explicit((v220.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }
                        }
                      }
                    }

                    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&__p);
                    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v134 = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
                    }

                    else
                    {
                      v134 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v133);
                    }

                    if (*(v134 + 23) >= 0)
                    {
                      v135 = *(v134 + 23);
                    }

                    else
                    {
                      v135 = v134[1];
                    }

                    sub_29A022DE0(&v220, v135 + 1);
                    if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v136 = &v220;
                    }

                    else
                    {
                      v136 = v220.__r_.__value_.__r.__words[0];
                    }

                    if (v135)
                    {
                      if (*(v134 + 23) >= 0)
                      {
                        v137 = v134;
                      }

                      else
                      {
                        v137 = *v134;
                      }

                      memmove(v136, v137, v135);
                    }

                    *(&v136->__r_.__value_.__l.__data_ + v135) = 95;
                    v138 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    if (!v138)
                    {
                      v138 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    }

                    v139 = v215;
                    if ((*(v138 + 25) & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v140 = ((*(v138 + 25) & 0xFFFFFFFFFFFFFFF8) + 16);
                    }

                    else
                    {
                      v140 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v138);
                    }

                    v141 = *(v140 + 23);
                    if (v141 >= 0)
                    {
                      v142 = v140;
                    }

                    else
                    {
                      v142 = *v140;
                    }

                    if (v141 >= 0)
                    {
                      v143 = *(v140 + 23);
                    }

                    else
                    {
                      v143 = v140[1];
                    }

                    v144 = std::string::append(&v220, v142, v143);
                    v145 = *&v144->__r_.__value_.__l.__data_;
                    v221.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
                    *&v221.__r_.__value_.__l.__data_ = v145;
                    v144->__r_.__value_.__l.__size_ = 0;
                    v144->__r_.__value_.__r.__words[2] = 0;
                    v144->__r_.__value_.__r.__words[0] = 0;
                    v146 = std::string::append(&v221, "_");
                    v147 = *&v146->__r_.__value_.__l.__data_;
                    v229.__r_.__value_.__r.__words[2] = v146->__r_.__value_.__r.__words[2];
                    *&v229.__r_.__value_.__l.__data_ = v147;
                    v146->__r_.__value_.__l.__size_ = 0;
                    v146->__r_.__value_.__r.__words[2] = 0;
                    v146->__r_.__value_.__r.__words[0] = 0;
                    v148 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    if (!v148)
                    {
                      v148 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    }

                    if ((*(v148 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v149 = ((*(v148 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
                    }

                    else
                    {
                      v149 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v148);
                    }

                    v150 = *(v149 + 23);
                    if (v150 >= 0)
                    {
                      v151 = v149;
                    }

                    else
                    {
                      v151 = *v149;
                    }

                    if (v150 >= 0)
                    {
                      v152 = *(v149 + 23);
                    }

                    else
                    {
                      v152 = v149[1];
                    }

                    v153 = std::string::append(&v229, v151, v152);
                    v154 = *&v153->__r_.__value_.__l.__data_;
                    __dst.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
                    *&__dst.__r_.__value_.__l.__data_ = v154;
                    v153->__r_.__value_.__l.__size_ = 0;
                    v153->__r_.__value_.__r.__words[2] = 0;
                    v153->__r_.__value_.__r.__words[0] = 0;
                    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v218);
                    if ((__p.__r_.__value_.__s.__data_[8] & 7) != 0)
                    {
                      atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    __p.__r_.__value_.__l.__size_ = v218.__r_.__value_.__r.__words[0];
                    v218.__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v229.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v221.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v220.__r_.__value_.__l.__data_);
                    }

                    v155 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    if (!v155)
                    {
                      v155 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                      v139 = v215;
                    }

                    __asm { FMOV            V0.4S, #1.0 }

                    *&v229.__r_.__value_.__l.__data_ = _Q0;
                    v161 = sub_29AE69C78(v139 + 40, &v228, v155 + 5, &v229);
                    v163 = v162;
                    v165 = v164;
                    v167 = v166;
                    __dst.__r_.__value_.__l.__size_ = &off_2A2042A68 + 2;
                    v168 = operator new(0x14uLL);
                    *v168 = v161;
                    v168[1] = v163;
                    v168[2] = v165;
                    v168[3] = v167;
                    atomic_store(0, v168 + 4);
                    __dst.__r_.__value_.__r.__words[0] = v168;
                    atomic_fetch_add_explicit(v168 + 4, 1u, memory_order_relaxed);
                    sub_29A18606C(&__p.__r_.__value_.__r.__words[2], &__dst);
                    sub_29A186B14(&__dst);
                    sub_29AE10C54(a5, &__p);
                    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&__dst);
                    LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
                    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v170 = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
                    }

                    else
                    {
                      v170 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v169);
                    }

                    if (*(v170 + 23) >= 0)
                    {
                      v171 = *(v170 + 23);
                    }

                    else
                    {
                      v171 = v170[1];
                    }

                    sub_29A022DE0(&v218, v171 + 1);
                    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v172 = &v218;
                    }

                    else
                    {
                      v172 = v218.__r_.__value_.__r.__words[0];
                    }

                    if (v171)
                    {
                      if (*(v170 + 23) >= 0)
                      {
                        v173 = v170;
                      }

                      else
                      {
                        v173 = *v170;
                      }

                      memmove(v172, v173, v171);
                    }

                    *(&v172->__r_.__value_.__l.__data_ + v171) = 95;
                    v174 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    if (!v174)
                    {
                      v174 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    }

                    v175 = v215;
                    if ((*(v174 + 25) & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v176 = ((*(v174 + 25) & 0xFFFFFFFFFFFFFFF8) + 16);
                    }

                    else
                    {
                      v176 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v174);
                    }

                    v177 = *(v176 + 23);
                    if (v177 >= 0)
                    {
                      v178 = v176;
                    }

                    else
                    {
                      v178 = *v176;
                    }

                    if (v177 >= 0)
                    {
                      v179 = *(v176 + 23);
                    }

                    else
                    {
                      v179 = v176[1];
                    }

                    v180 = std::string::append(&v218, v178, v179);
                    v181 = *&v180->__r_.__value_.__l.__data_;
                    v220.__r_.__value_.__r.__words[2] = v180->__r_.__value_.__r.__words[2];
                    *&v220.__r_.__value_.__l.__data_ = v181;
                    v180->__r_.__value_.__l.__size_ = 0;
                    v180->__r_.__value_.__r.__words[2] = 0;
                    v180->__r_.__value_.__r.__words[0] = 0;
                    v182 = std::string::append(&v220, "_");
                    v183 = *&v182->__r_.__value_.__l.__data_;
                    v221.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
                    *&v221.__r_.__value_.__l.__data_ = v183;
                    v182->__r_.__value_.__l.__size_ = 0;
                    v182->__r_.__value_.__r.__words[2] = 0;
                    v182->__r_.__value_.__r.__words[0] = 0;
                    v184 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    if (!v184)
                    {
                      v184 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    }

                    if ((*(v184 + 6) & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v185 = ((*(v184 + 6) & 0xFFFFFFFFFFFFFFF8) + 16);
                    }

                    else
                    {
                      v185 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v184);
                    }

                    v186 = *(v185 + 23);
                    if (v186 >= 0)
                    {
                      v187 = v185;
                    }

                    else
                    {
                      v187 = *v185;
                    }

                    if (v186 >= 0)
                    {
                      v188 = *(v185 + 23);
                    }

                    else
                    {
                      v188 = v185[1];
                    }

                    v189 = std::string::append(&v221, v187, v188);
                    v190 = *&v189->__r_.__value_.__l.__data_;
                    v229.__r_.__value_.__r.__words[2] = v189->__r_.__value_.__r.__words[2];
                    *&v229.__r_.__value_.__l.__data_ = v190;
                    v189->__r_.__value_.__l.__size_ = 0;
                    v189->__r_.__value_.__r.__words[2] = 0;
                    v189->__r_.__value_.__r.__words[0] = 0;
                    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v219);
                    if ((__dst.__r_.__value_.__s.__data_[8] & 7) != 0)
                    {
                      atomic_fetch_add_explicit((__dst.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    __dst.__r_.__value_.__l.__size_ = v219;
                    v219 = 0;
                    if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v229.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v221.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v220.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v218.__r_.__value_.__l.__data_);
                    }

                    v191 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                    if (!v191)
                    {
                      v191 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
                      v175 = v215;
                    }

                    *&v221.__r_.__value_.__l.__data_ = 0uLL;
                    v192 = sub_29AE69C78(v175 + 40, &v228, v191 + 6, &v221);
                    v194 = v193;
                    v196 = v195;
                    v198 = v197;
                    v229.__r_.__value_.__l.__size_ = &off_2A2042A68 + 2;
                    v199 = operator new(0x14uLL);
                    *v199 = v192;
                    v199[1] = v194;
                    v199[2] = v196;
                    v199[3] = v198;
                    atomic_store(0, v199 + 4);
                    v229.__r_.__value_.__r.__words[0] = v199;
                    atomic_fetch_add_explicit(v199 + 4, 1u, memory_order_relaxed);
                    sub_29A18606C(&__dst.__r_.__value_.__r.__words[2], &v229);
                    sub_29A186B14(&v229);
                    sub_29AE10C54(a5, &__dst);
                    v200 = atomic_load(&qword_2A174F268);
                    if (!v200)
                    {
                      v200 = sub_29AE65F68();
                      v175 = v215;
                    }

                    LODWORD(v229.__r_.__value_.__l.__data_) = 0;
                    v201 = sub_29A31B8F0(v175 + 48, (v200 + 96));
                    v202 = v201;
                    if (v213 == v201 || (v203 = (v201 + 40), !sub_29A3F9DF4((v201 + 40))))
                    {
                      if (!v228 || (v205 = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(v228, (v200 + 96)), (v206 = v205) == 0) || (v203 = v205 + 1, !sub_29A3F9DF4(&v205[1])))
                      {
                        v203 = &v229;
LABEL_384:
                        v207 = *&v203->__r_.__value_.__l.__data_;
                        v208 = *a3;
                        v229.__r_.__value_.__r.__words[0] = v208;
                        if ((v208 & 7) != 0 && (atomic_fetch_add_explicit((v208 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                        {
                          v229.__r_.__value_.__r.__words[0] &= 0xFFFFFFFFFFFFFFF8;
                        }

                        pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(&v229.__r_.__value_.__r.__words[1], v224);
                        v230 = v246;
                        pxrInternal__aapl__pxrReserved__::HdGetSamplerParameters((v175 + 40), &v228, (v175 + 32), v231);
                        *&v231[36] = vcvts_n_u32_f32(v207, 0x14uLL);
                        v231[44] = v211;
                        sub_29A1E21F4(&v232, &v225);
                        sub_29A1E2240(v233, &v226);
                        sub_29AE69D4C(a6, &v229);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v233);
                        sub_29A1DE3A4(&v232);
                        pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&v229.__r_.__value_.__r.__words[1]);
                        if ((v229.__r_.__value_.__s.__data_[0] & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v229.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        sub_29AE10C54(a5, &v242);
                        if (v237 < 0)
                        {
                          operator delete(v236);
                        }

                        v229.__r_.__value_.__r.__words[0] = &v235;
                        sub_29A124AB0(&v229);
                        sub_29A186B14(&__dst.__r_.__value_.__r.__words[2]);
                        if ((__dst.__r_.__value_.__s.__data_[8] & 7) != 0)
                        {
                          atomic_fetch_add_explicit((__dst.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        if (v241 < 0)
                        {
                          operator delete(v240);
                        }

                        __dst.__r_.__value_.__r.__words[0] = &v239.__r_.__value_.__l.__size_;
                        sub_29A124AB0(&__dst);
                        sub_29A186B14(&__p.__r_.__value_.__r.__words[2]);
                        if ((__p.__r_.__value_.__s.__data_[8] & 7) != 0)
                        {
                          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        __p.__r_.__value_.__r.__words[0] = &v222;
                        sub_29A124AB0(&__p);
                        pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(v224);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v226);
                        sub_29A1DE3A4(&v225);
                        if ((v227 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v227 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v247.__r_.__value_.__l.__data_);
                        }

                        __p.__r_.__value_.__r.__words[0] = v245;
                        sub_29A124AB0(&__p);
                        result = sub_29A186B14(v244);
                        if ((v243 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v243 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        goto LABEL_403;
                      }

                      v204 = v206[1].__r_.__value_.__l.__size_;
                      if ((v204 & 4) == 0)
                      {
                        goto LABEL_384;
                      }
                    }

                    else
                    {
                      v204 = *(v202 + 48);
                      if ((v204 & 4) == 0)
                      {
                        goto LABEL_384;
                      }
                    }

                    v175 = v215;
                    v203 = (*((v204 & 0xFFFFFFFFFFFFFFF8) + 168))(v203);
                    goto LABEL_384;
                  }

                  if ((sub_29A1EFC10((v87 + 40)) & 1) != 0 || sub_29A1FA780((v87 + 40)))
                  {
                    if (sub_29A1FA780((v87 + 40)))
                    {
                      v91 = sub_29A3467F8((v87 + 40));
                      v92 = v91;
                      if (*(v91 + 23) < 0)
                      {
                        sub_29A008D14(&__p, *v91, v91[1]);
                      }

                      else
                      {
                        v93 = *v91;
                        __p.__r_.__value_.__r.__words[2] = v91[2];
                        *&__p.__r_.__value_.__l.__data_ = v93;
                      }

                      if (*(v92 + 47) < 0)
                      {
                        sub_29A008D14(&v239, v92[3], v92[4]);
                      }

                      else
                      {
                        v98 = *(v92 + 3);
                        v239.__r_.__value_.__r.__words[2] = v92[5];
                        *&v239.__r_.__value_.__l.__data_ = v98;
                      }

                      if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
                      {
                        sub_29A008D14(&__dst, v239.__r_.__value_.__l.__data_, v239.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        __dst = v239;
                      }

                      v99 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v99 = __dst.__r_.__value_.__l.__size_;
                      }

                      if (!v99)
                      {
                        std::string::operator=(&__dst, &__p);
                      }

                      if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v239.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    else if (sub_29A1EFC10((v87 + 40)))
                    {
                      v94 = *(v87 + 48);
                      if ((v94 & 4) != 0)
                      {
                        v95 = (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(v87 + 40);
                      }

                      else
                      {
                        v95 = *v88;
                      }

                      if (*(v95 + 23) < 0)
                      {
                        sub_29A008D14(&__dst, *v95, *(v95 + 8));
                      }

                      else
                      {
                        v96 = *v95;
                        __dst.__r_.__value_.__r.__words[2] = *(v95 + 16);
                        *&__dst.__r_.__value_.__l.__data_ = v96;
                      }
                    }

                    else
                    {
                      memset(&__dst, 0, sizeof(__dst));
                    }

                    if (pxrInternal__aapl__pxrReserved__::HdStIsSupportedUdimTexture(&__dst.__r_.__value_.__l.__data_))
                    {
                      v246 = 3;
                    }

                    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v221);
                    if (v246 == 3)
                    {
                      v103 = operator new(0x18uLL);
                      pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier::HdStUdimSubtextureIdentifier(v103, v210, &v227);
                    }

                    else if (v246 == 2)
                    {
                      v103 = operator new(0x10uLL);
                      pxrInternal__aapl__pxrReserved__::HdStPtexSubtextureIdentifier::HdStPtexSubtextureIdentifier(v103, v210);
                    }

                    else
                    {
                      if (v246)
                      {
                        v103 = 0;
                        goto LABEL_205;
                      }

                      v100 = atomic_load(&qword_2A174F268);
                      if (!v100)
                      {
                        v100 = sub_29AE65F68();
                        v17 = v215;
                      }

                      v101 = *(v17 + 40);
                      v102 = *(v100 + 88);
                      v103 = operator new(0x18uLL);
                      pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier::HdStAssetUvSubtextureIdentifier(v103, (v102 ^ v101) < 8, v210, &v227);
                    }

                    v17 = v215;
LABEL_205:
                    v220.__r_.__value_.__r.__words[0] = v103;
                    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(&__p, &v221, &v220);
                    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator=(v224, &__p);
                    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&__p);
                    v104 = v220.__r_.__value_.__r.__words[0];
                    v220.__r_.__value_.__r.__words[0] = 0;
                    if (v104)
                    {
                      (*(*v104 + 16))(v104);
                    }

                    if ((v221.__r_.__value_.__s.__data_[0] & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v221.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_211;
                  }

                  if (sub_29A1F594C((v87 + 40)))
                  {
                    v97 = *(v87 + 48);
                    if ((v97 & 4) != 0)
                    {
                      v88 = (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(v87 + 40);
                    }

                    sub_29A2258F0(&v225, v88);
                    sub_29A225948(&v226, v88 + 1);
                  }
                }

                v211 = 1;
                goto LABEL_212;
              }

LABEL_107:
              v64 = atomic_load(&qword_2A174F268);
              if (!v64)
              {
                v64 = sub_29AE65F68();
              }

              v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
              if (!v65)
              {
                v65 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
              }

              if ((*(v65 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v66 = ((*(v65 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                v66 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v65);
              }

              v67 = sub_29A31B8F0(v17 + 48, (v64 + 104));
              v68 = v67;
              if (v213 == v67 || !sub_29A1EFC10((v67 + 40)))
              {
                if (!v228 || (v70 = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(v228, (v64 + 104)), (v71 = v70) == 0) || !sub_29A1EFC10((v70 + 3)))
                {
LABEL_123:
                  if (*(v66 + 23) < 0)
                  {
                    sub_29A008D14(&__p, *v66, v66[1]);
                  }

                  else
                  {
                    v73 = *v66;
                    __p.__r_.__value_.__r.__words[2] = v66[2];
                    *&__p.__r_.__value_.__l.__data_ = v73;
                  }

                  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__dst);
                  if ((v227 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v227 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  v227 = __dst.__r_.__value_.__r.__words[0];
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_130;
                }

                v72 = v71[4];
                if ((v72 & 4) == 0)
                {
                  v66 = v71[3];
                  goto LABEL_123;
                }

                v209 = (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(v71 + 3);
              }

              else
              {
                v69 = *(v68 + 48);
                if ((v69 & 4) == 0)
                {
                  v66 = *(v68 + 40);
                  goto LABEL_123;
                }

                v209 = (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(v68 + 40);
              }

              v66 = v209;
              goto LABEL_123;
            }

LABEL_403:
            v52 = v217;
            goto LABEL_78;
          }

          v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          if (!v50)
          {
            v50 = sub_29AE69B60(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          }

          if ((*v50 ^ v217) <= 7)
          {
            result = sub_29AE68C7C((v17 + 40), v17 + 32, a3, a4, a5);
            goto LABEL_403;
          }

          v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          if (!v51)
          {
            v51 = sub_29AE69B60(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          }

          if ((*(v51 + 2) ^ v217) <= 7)
          {
            result = sub_29AE68F48(v17 + 40, v17 + 32, a3, a4, a5);
            goto LABEL_403;
          }

          v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          if (!v63)
          {
            v63 = sub_29AE69B60(&pxrInternal__aapl__pxrReserved__::SdrNodeRole);
          }

          if ((*(v63 + 3) ^ v217) <= 7)
          {
            result = sub_29AE6917C(a1, (v17 + 40), v17 + 32, a3, a4, a5);
            goto LABEL_403;
          }

          if ((v217 & 7) != 0)
          {
            atomic_fetch_add_explicit((v217 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v242 = "hdSt/materialNetwork.cpp";
          v243 = "_MakeParamsForInputParameter";
          v244[0] = 997;
          v244[1] = "void pxrInternal__aapl__pxrReserved__::_MakeParamsForInputParameter(const HdMaterialNetwork2 &, const HdMaterialNode2 &, const TfToken &, SdfPathSet *, HdSt_MaterialParamVector *, HdStMaterialNetwork::TextureDescriptorVector *, const TfToken &)";
          LOBYTE(v245[0]) = 0;
          v48 = *(v17 + 40) & 0xFFFFFFFFFFFFFFF8;
          if (v48)
          {
            v49 = (v48 + 16);
            if (*(v48 + 39) < 0)
            {
              v49 = *v49;
            }
          }

          else
          {
            v49 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v242, "Unrecognized connected node: %s", v23, v49);
        }
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v242);
  LODWORD(v242) = 0;
  sub_29A166F2C(&v243, a3);
  sub_29AE10C54(a5, &v242);
  if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v245;
  sub_29A124AB0(&__p);
  result = sub_29A186B14(v244);
  v52 = v243;
LABEL_78:
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AE68298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_29AE10CA0(v16 - 240);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_29AE6878C@<X0>(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X2>, unsigned int **a4@<X8>)
{
  v37[2] = *MEMORY[0x29EDCA608];
  Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(a1);
  v9 = sub_29A31B8F0(a2 + 32, a3);
  if ((a2 + 40) == v9)
  {
    goto LABEL_18;
  }

  v10 = *(v9 + 40);
  if (v10 == *(v9 + 48))
  {
    goto LABEL_18;
  }

  v11 = sub_29A55CDFC(a1);
  v12 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v11);
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v13)
  {
    v13 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v12, (v11 + 40), v13);
  if (!result)
  {
LABEL_12:
    a4[1] = 0;
    goto LABEL_16;
  }

  v15 = result;
  DefaultInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetDefaultInput(result);
  if (!DefaultInput || (v17 = sub_29A31B8F0(v11 + 48, DefaultInput + 1), v11 + 56 == v17))
  {
    result = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderOutput(v15, (v10 + 8));
    if (result)
    {
      v18 = result;
      sub_29A186EF4(v37, result + 3);
      if (v37[1])
      {
        sub_29A186EF4(a4, v37);
      }

      else
      {
        (*(*v18 + 48))(&v31, v18);
        SdfType = pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetSdfType(&v31);
        DefaultValue = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultValue(&SdfType);
        sub_29A186EF4(a4, DefaultValue);
        if ((v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      result = sub_29A186B14(v37);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  result = sub_29A186EF4(a4, (v17 + 40));
LABEL_16:
  if (a4[1])
  {
    return result;
  }

  sub_29A186B14(a4);
LABEL_18:
  v20 = sub_29A31B8F0(a2 + 8, a3);
  if ((a2 + 16) != v20)
  {
    return sub_29A186EF4(a4, (v20 + 40));
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v21)
  {
    v21 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(Instance, a2, v21);
  if (!ShaderNodeByIdentifierAndType)
  {
    goto LABEL_29;
  }

  ShaderInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(ShaderNodeByIdentifierAndType, a3);
  v25 = ShaderInput;
  if (!ShaderInput)
  {
    goto LABEL_29;
  }

  result = sub_29A186EF4(a4, ShaderInput + 3);
  if (!a4[1])
  {
    (*(*v25 + 48))(&v31, v25);
    v37[0] = pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetSdfType(&v31);
    v26 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultValue(v37);
    result = sub_29A1854E8(a4, v26);
    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!a4[1])
    {
      sub_29A186B14(a4);
LABEL_29:
      v31 = "hdSt/materialNetwork.cpp";
      v32 = "_GetParamFallbackValue";
      v33 = 298;
      v34 = "VtValue pxrInternal__aapl__pxrReserved__::_GetParamFallbackValue(const HdMaterialNetwork2 &, const HdMaterialNode2 &, const TfToken &)";
      v35 = 0;
      v27 = *a3 & 0xFFFFFFFFFFFFFFF8;
      if (v27)
      {
        v28 = (v27 + 16);
        if (*(v27 + 39) < 0)
        {
          v28 = *v28;
        }
      }

      else
      {
        v28 = "";
      }

      v29 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v31, "Couldn't determine default value for: %s on nodeType: %s", v23, v28, v30);
      a4[1] = (&off_2A2042840 + 2);
      result = operator new(0x10uLL);
      *result = 0;
      result[2] = 0;
      atomic_store(0, result + 3);
      *a4 = result;
      atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
    }
  }

  return result;
}

void sub_29AE68B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE68B90(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v6);
  v6 = 4;
  sub_29A166F2C(&v7, a1);
  sub_29AE10C54(a2, &v6);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v5 = &v9;
  sub_29A124AB0(&v5);
  result = sub_29A186B14(&v8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AE68C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AE10CA0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdrRegistry *sub_29AE68C7C(const pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v29 = *MEMORY[0x29EDCA608];
  result = sub_29A1EF6EC(a4);
  if ((a4 + 8) == result)
  {
    Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(result);
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v11)
    {
      v11 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(Instance, a1, v11);
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v21);
    v21 = 2;
    sub_29A166F2C(&v22, a3);
    v13 = *(ShaderNodeByIdentifierAndType + 47);
    for (i = *(ShaderNodeByIdentifierAndType + 48); v13 != i; ++v13)
    {
      v28 = 0;
      v15 = sub_29A31B8F0(a1 + 8, v13);
      if ((a1 + 16) == v15 || (sub_29A1854E8(&v27, (v15 + 40)), !v28))
      {
        ShaderInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(ShaderNodeByIdentifierAndType, v13);
        if (ShaderInput)
        {
          sub_29A1854E8(&v27, ShaderInput + 3);
        }
      }

      if (sub_29A1FA710(&v27))
      {
        if ((v28 & 4) != 0)
        {
          v17 = (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(&v27);
        }

        else
        {
          v17 = &v27;
        }

        v18 = *v17;
        v20 = v18;
        if ((v18 & 7) == 0)
        {
          goto LABEL_21;
        }

        v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
        if (atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (sub_29A1EFC10(&v27))
        {
          if ((v28 & 4) != 0)
          {
            (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(&v27);
          }

          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v20);
          goto LABEL_21;
        }

        v19 = 0;
      }

      v20 = v19;
LABEL_21:
      sub_29A186B14(&v27);
      if (v20)
      {
        sub_29A1D8028(v24, &v20);
        if ((v20 & 7) != 0)
        {
          atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }

    sub_29AE10C54(a5, &v21);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    v27 = v24;
    sub_29A124AB0(&v27);
    result = sub_29A186B14(&v23);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AE68EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AE10CA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE68F48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v21 = *MEMORY[0x29EDCA608];
  result = sub_29A1EF6EC(a4);
  if (a4 + 8 == result)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v16);
    v16 = 3;
    sub_29A166F2C(&v17, a3);
    v10 = atomic_load(&qword_2A174F268);
    if (!v10)
    {
      v10 = sub_29AE65F68();
    }

    v11 = sub_29A31B8F0(a1 + 8, (v10 + 64));
    if (a1 + 16 != v11)
    {
      sub_29A186EF4(&v14, (v11 + 40));
      if (sub_29A1FA710(&v14))
      {
        if ((v15 & 4) != 0)
        {
          v12 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
        }

        else
        {
          v12 = &v14;
        }

        sub_29A1D8028(v19, v12);
      }

      else if (sub_29A1EFC10(&v14))
      {
        if ((v15 & 4) != 0)
        {
          (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
        }

        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v13);
        sub_29A153214(v19, &v13);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      sub_29A186B14(&v14);
    }

    sub_29AE10C54(a5, &v16);
    if (v20 < 0)
    {
      operator delete(v19[4]);
    }

    v14 = v19;
    sub_29A124AB0(&v14);
    result = sub_29A186B14(&v18);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AE69120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29AE10CA0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdrRegistry *sub_29AE6917C(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v92 = *MEMORY[0x29EDCA608];
  result = sub_29A1EF6EC(a5);
  if ((a5 + 8) == result)
  {
    Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(result);
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v87);
    v87 = 5;
    sub_29A166F2C(&v88, a4);
    v13 = atomic_load(&qword_2A174F268);
    if (!v13)
    {
      v13 = sub_29AE65F68();
    }

    sub_29AE6878C(a1, a2, (v13 + 112), &v81);
    sub_29A18606C(v89, &v81);
    sub_29A186B14(&v81);
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v14 = atomic_load(&qword_2A174F268);
    if (!v14)
    {
      v14 = sub_29AE65F68();
    }

    v15 = sub_29A31B8F0(a2 + 32, (v14 + 112));
    v16 = v15;
    if ((a2 + 40) == v15)
    {
      v22 = atomic_load(&qword_2A174F268);
      if (!v22)
      {
        v22 = sub_29AE65F68();
      }

      v23 = sub_29A31B8F0(a2 + 8, (v22 + 112));
      v24 = v23;
      if ((a2 + 16) != v23)
      {
        v25 = (v23 + 40);
        if (sub_29A1FA710((v23 + 40)))
        {
          v26 = *(v24 + 48);
          if ((v26 & 4) != 0)
          {
            v25 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v24 + 40);
          }

          sub_29A1D8028(v90, v25);
        }
      }
    }

    else
    {
      v17 = *(v15 + 40);
      if (v17 != *(v15 + 48))
      {
        v18 = sub_29A55CDFC(a1);
        v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
        if (!v19)
        {
          v19 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
        }

        if (pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(Instance, (v18 + 40), v19))
        {
          v81 = 0;
          v82 = 0;
          v83[0] = 0;
          sub_29AE68C7C((v18 + 40), v17, (v16 + 32), a5, &v81);
          if (&v87 != v81 && v81 != v82)
          {
            sub_29A34AC54(v90, *(v81 + 4), *(v81 + 5), (*(v81 + 5) - *(v81 + 4)) >> 3);
          }

          v20 = v90[0];
          v21 = v90[1];
          while (v20 != v21)
          {
            sub_29AE68B90(v20++, &v68);
          }

          __p[0] = &v81;
          sub_29ADD60F4(__p);
        }
      }
    }

    sub_29AE10C54(a6, &v87);
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v81);
    LODWORD(v81) = 0;
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
    }

    if (*(EmptyString + 23) >= 0)
    {
      v29 = *(EmptyString + 23);
    }

    else
    {
      v29 = EmptyString[1];
    }

    v30 = &v71;
    sub_29A022DE0(&v71, v29 + 1);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v71.__r_.__value_.__r.__words[0];
    }

    if (v29)
    {
      if (*(EmptyString + 23) >= 0)
      {
        v31 = EmptyString;
      }

      else
      {
        v31 = *EmptyString;
      }

      memmove(v30, v31, v29);
    }

    *(&v30->__r_.__value_.__l.__data_ + v29) = 95;
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v32)
    {
      v32 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v32 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v33 = ((*(v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v33 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
    }

    v34 = *(v33 + 23);
    if (v34 >= 0)
    {
      v35 = v33;
    }

    else
    {
      v35 = *v33;
    }

    if (v34 >= 0)
    {
      v36 = *(v33 + 23);
    }

    else
    {
      v36 = v33[1];
    }

    v37 = std::string::append(&v71, v35, v36);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v77[0] = *(&v37->__r_.__value_.__l + 2);
    *__p = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v75);
    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v82 = v75.__r_.__value_.__r.__words[0];
    v75.__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v77[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v39)
    {
      v39 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    sub_29AE6878C(a1, a2, v39 + 7, __p);
    sub_29A18606C(v83, __p);
    sub_29A186B14(__p);
    sub_29AE10C54(a6, &v81);
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(__p);
    LODWORD(__p[0]) = 0;
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v41 = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v41 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v40);
    }

    if (*(v41 + 23) >= 0)
    {
      v42 = *(v41 + 23);
    }

    else
    {
      v42 = v41[1];
    }

    v43 = &v75;
    sub_29A022DE0(&v75, v42 + 1);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v43 = v75.__r_.__value_.__r.__words[0];
    }

    if (v42)
    {
      if (*(v41 + 23) >= 0)
      {
        v44 = v41;
      }

      else
      {
        v44 = *v41;
      }

      memmove(v43, v44, v42);
    }

    *(&v43->__r_.__value_.__l.__data_ + v42) = 95;
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v45)
    {
      v45 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v45 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v46 = ((*(v45 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v46 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v45);
    }

    v47 = *(v46 + 23);
    if (v47 >= 0)
    {
      v48 = v46;
    }

    else
    {
      v48 = *v46;
    }

    if (v47 >= 0)
    {
      v49 = *(v46 + 23);
    }

    else
    {
      v49 = v46[1];
    }

    v50 = std::string::append(&v75, v48, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v71.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
    *&v71.__r_.__value_.__l.__data_ = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v66);
    if ((__p[1] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __p[1] = v66.__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v52)
    {
      v52 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    sub_29AE6878C(a1, a2, v52 + 5, &v71);
    sub_29A18606C(v77, &v71);
    sub_29A186B14(&v71);
    sub_29AE10C54(a6, __p);
    pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v71);
    LODWORD(v71.__r_.__value_.__l.__data_) = 0;
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v54 = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v54 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v53);
    }

    if (*(v54 + 23) >= 0)
    {
      v55 = *(v54 + 23);
    }

    else
    {
      v55 = v54[1];
    }

    v56 = &v66;
    sub_29A022DE0(&v66, v55 + 1);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v56 = v66.__r_.__value_.__r.__words[0];
    }

    if (v55)
    {
      if (*(v54 + 23) >= 0)
      {
        v57 = v54;
      }

      else
      {
        v57 = *v54;
      }

      memmove(v56, v57, v55);
    }

    *(&v56->__r_.__value_.__l.__data_ + v55) = 95;
    v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v58)
    {
      v58 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v58 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v59 = ((*(v58 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v59 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v58);
    }

    v60 = *(v59 + 23);
    if (v60 >= 0)
    {
      v61 = v59;
    }

    else
    {
      v61 = *v59;
    }

    if (v60 >= 0)
    {
      v62 = *(v59 + 23);
    }

    else
    {
      v62 = v59[1];
    }

    v63 = std::string::append(&v66, v61, v62);
    v64 = *&v63->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v67);
    if ((v71.__r_.__value_.__s.__data_[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v71.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v71.__r_.__value_.__l.__size_ = v67;
    v67 = 0;
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v65)
    {
      v65 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    sub_29AE6878C(a1, a2, v65 + 8, &v75);
    sub_29A18606C(&v71.__r_.__value_.__r.__words[2], &v75);
    sub_29A186B14(&v75);
    sub_29AE10C54(a6, &v71);
    sub_29AE69E90(a6, a6[1], v68, v69, 0x4EC4EC4EC4EC4EC5 * ((v69 - v68) >> 3));
    if (v74 < 0)
    {
      operator delete(v73);
    }

    v75.__r_.__value_.__r.__words[0] = &v72;
    sub_29A124AB0(&v75);
    sub_29A186B14(&v71.__r_.__value_.__r.__words[2]);
    if ((v71.__r_.__value_.__s.__data_[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v71.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v80 < 0)
    {
      operator delete(v79);
    }

    v71.__r_.__value_.__r.__words[0] = &v78;
    sub_29A124AB0(&v71);
    sub_29A186B14(v77);
    if ((__p[1] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v86 < 0)
    {
      operator delete(v85);
    }

    __p[0] = &v84;
    sub_29A124AB0(__p);
    sub_29A186B14(v83);
    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v81 = &v68;
    sub_29ADD60F4(&v81);
    if (v91 < 0)
    {
      operator delete(v90[4]);
    }

    v81 = v90;
    sub_29A124AB0(&v81);
    result = sub_29A186B14(v89);
    if ((v88 & 7) != 0)
    {
      atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AE69A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char *a61)
{
  a61 = &a16;
  sub_29ADD60F4(&a61);
  sub_29AE10CA0(v61 - 200);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType *sub_29AE69B60(atomic_ullong *a1)
{
  result = sub_29AE69BA8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType::~SdrNodeRole_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType *sub_29AE69BA8()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType::SdrNodeRole_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AE69BEC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B710689 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2098328);
}

float sub_29AE69C78(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_29A31B8F0(a1 + 8, a3);
  if (a1 + 16 != v8)
  {
    v9 = v8;
    if (sub_29A3FEA70((v8 + 40)))
    {
      v10 = *(v9 + 48);
      if ((v10 & 4) == 0)
      {
        a4 = *(v9 + 40);
        return *a4;
      }

      v15 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(v9 + 40);
LABEL_13:
      a4 = v15;
      return *a4;
    }
  }

  if (*a2)
  {
    ShaderInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(*a2, a3);
    if (ShaderInput)
    {
      v12 = ShaderInput;
      if (sub_29A3FEA70((ShaderInput + 3)))
      {
        v13 = v12[4];
        if ((v13 & 4) == 0)
        {
          a4 = v12[3];
          return *a4;
        }

        v15 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v12 + 3);
        goto LABEL_13;
      }
    }
  }

  return *a4;
}

uint64_t sub_29AE69D4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AE6A308(a1, a2);
  }

  else
  {
    sub_29AE6A454(a1, *(a1 + 8), a2);
    result = v3 + 88;
    *(a1 + 8) = v3 + 88;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AE69DAC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 80));
  sub_29A1DE3A4((a1 + 76));
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((a1 + 8));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType *sub_29AE69E04(atomic_ullong *a1)
{
  result = sub_29AE69E4C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType::~HdStSdrMetadataTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType *sub_29AE69E4C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType::HdStSdrMetadataTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AE69E90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 3) < a5)
    {
      v11 = *a1;
      v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 3);
      if (v12 <= 0x276276276276276)
      {
        v13 = a2 - v11;
        v14 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 3);
        if (2 * v14 > v12)
        {
          v12 = 2 * v14;
        }

        if (v14 >= 0x13B13B13B13B13BLL)
        {
          v15 = 0x276276276276276;
        }

        else
        {
          v15 = v12;
        }

        v16 = 0x4EC4EC4EC4EC4EC5 * (v13 >> 3);
        v22[4] = a1;
        if (v15)
        {
          v17 = sub_29A09B7D4(a1, v15);
        }

        else
        {
          v17 = 0;
        }

        v22[0] = v17;
        v22[3] = &v17[104 * v15];
        sub_29ADD6530(&v17[104 * v16], a3);
      }

      sub_29A00C9A4();
    }

    v18 = v10 - a2;
    if (0x4EC4EC4EC4EC4EC5 * ((v10 - a2) >> 3) >= a5)
    {
      v20 = 104 * a5;
      sub_29AE6A098(a1, a2, a1[1], a2 + 104 * a5);
      v19 = v20 + a3;
      goto LABEL_15;
    }

    a1[1] = sub_29ADD648C(a1, v18 + a3, a4, a1[1]);
    if (v18 >= 1)
    {
      sub_29AE6A098(a1, a2, v10, a2 + 104 * a5);
      v19 = v18 + a3;
LABEL_15:
      sub_29ADD66D4(v22, a3, v19, a2);
    }
  }

  return a2;
}

uint64_t sub_29AE6A098(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      sub_29AE0D0AC(a1, v8, v10);
      v10 += 104;
      v8 += 104;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29AE6A1F4(&v12, a2, v7, v6);
}

uint64_t sub_29AE6A138(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29AE0CFF8(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29AE0CFF8(a1, v7, a3, v9);
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

uint64_t sub_29AE6A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = a3 + v7;
      *(a4 + v7 - 104) = *(a3 + v7 - 104);
      if (a3 != a4)
      {
        v10 = *(v8 - 96);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(v8 - 96) = *(v9 - 96);
        *(v9 - 96) = 0;
      }

      sub_29A18606C((v8 - 88), (v9 - 88));
      sub_29A2F7B20((v8 - 72));
      *(v8 - 72) = *(v9 - 72);
      *(v8 - 56) = *(v9 - 56);
      *(v9 - 64) = 0;
      *(v9 - 56) = 0;
      *(v9 - 72) = 0;
      *(v8 - 48) = *(v9 - 48);
      v11 = (v8 - 40);
      if (*(v8 - 17) < 0)
      {
        operator delete(*v11);
      }

      v12 = a3 + v7;
      v13 = *(a3 + v7 - 40);
      *(v8 - 24) = *(a3 + v7 - 24);
      *v11 = v13;
      *(v12 - 17) = 0;
      *(v12 - 40) = 0;
      *(a4 + v7 - 16) = *(a3 + v7 - 16);
      v7 -= 104;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_29AE6A308(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_29A00C9A4();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A1587D0(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[11 * v2];
  *(&v16 + 1) = &v7[11 * v6];
  sub_29AE6A454(a1, v15, a2);
  *&v16 = v15 + 11;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29AE6A4F0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AE6A678(&v14);
  return v13;
}

void sub_29AE6A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AE6A678(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AE6A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier((a2 + 8), (a3 + 8));
  v5 = *(a3 + 24);
  v6 = *(a3 + 40);
  v7 = *(a3 + 56);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v7;
  *(a2 + 40) = v6;
  *(a2 + 24) = v5;
  sub_29A1DDD84((a2 + 76), (a3 + 76));

  return sub_29A1DDDC0((a2 + 80), (a3 + 80));
}

uint64_t sub_29AE6A4F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29AE6A5BC(a1, a4, v7);
      v7 += 11;
      a4 = v12 + 88;
      v12 += 88;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AE644C0(a1, v5);
      v5 += 88;
    }
  }

  return sub_29AE64868(v9);
}

_DWORD *sub_29AE6A5BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier((a2 + 8), (a3 + 1));
  v6 = *(a3 + 3);
  v7 = *(a3 + 5);
  v8 = *(a3 + 7);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  *(a2 + 24) = v6;
  sub_29A1E21F4((a2 + 76), a3 + 19);

  return sub_29A1E2240((a2 + 80), a3 + 20);
}

void **sub_29AE6A678(void **a1)
{
  sub_29AE6A6AC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AE6A6AC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 88;
    sub_29AE644C0(v4, i - 88);
  }
}

void sub_29AE6A6F4()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_FORCE_QUADRANGULATE))
  {
    sub_29B2CA4DC();
  }
}

void sub_29AE6A724()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_PACKED_NORMALS))
  {
    sub_29B2CA510();
  }
}

pxrInternal__aapl__pxrReserved__::HdStMesh *pxrInternal__aapl__pxrReserved__::HdStMesh::HdStMesh(pxrInternal__aapl__pxrReserved__::HdStMesh *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdMesh::HdMesh(this, a2);
  *v3 = &unk_2A2098348;
  *(v3 + 29) = 0u;
  *(v3 + 30) = 0u;
  *(v3 + 31) = 0u;
  *(v3 + 64) = 0xFFFFFFFF00000000;
  *(v3 + 65) = 0;
  *(v3 + 264) = *(v3 + 264) & 0xFC00 | 8;
  v4 = operator new(0x18uLL);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  *(this + 67) = v4;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::~HdStMesh(void ***this)
{
  sub_29AE74F10(this + 67, 0);
  v2 = this[61];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = this[59];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdMesh::~HdMesh(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStMesh::~HdStMesh(this);

  free(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::Sync(pxrInternal__aapl__pxrReserved__::HdStMesh *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateVisibility(this, a2, a4);
  v11 = *a4;
  v12 = *a4 & 0x80;
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::HdStSetMaterialId(a2, a3, this, v10);
    v11 = *a4;
  }

  v13 = v11 & 0x800010 | v12;
  v14 = *(this + 264);
  pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateRepr(this, a2, a3, a5, a4);
  v15 = v11 & 0x813190 | (*(this + 264) ^ v14) & 1;
  if (v13 || !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 4) && ((*(this + 264) ^ v14) & 0x80) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateMaterialTagsForAllReprs(this, a2, a3);
  }

  if ((v11 & 0x800080) != 0 || v15 != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateShadersForAllReprs(this, a2, a3, (v11 & 0x800080) != 0, v15 != 0);
  }

  *a4 &= 0xFF800000;
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateRepr(pxrInternal__aapl__pxrReserved__::HdStMesh *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, unsigned int *a5)
{
  sub_29A0ECEEC(&v33, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateRepr(HdSceneDelegate *, HdRenderParam *, const TfToken &, HdDirtyBits *)");
  v30 = this;
  Repr = pxrInternal__aapl__pxrReserved__::HdRprim::_GetRepr(this, a4);
  if (*Repr)
  {
    if (sub_29ABCF8C0(26))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
      v12 = *a4 & 0xFFFFFFFFFFFFFFF8;
      if (v12)
      {
        v13 = (v12 + 16);
        if (*(v12 + 39) < 0)
        {
          v13 = *v13;
        }
      }

      else
      {
        v13 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStMesh::_UpdateRepr for %s : Repr = %s\n", v10, v11, Text, v13);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::DumpDirtyBits(*a5);
    }

    pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc(a4, v31);
    v14 = 0;
    v15 = 0;
    v16 = v31;
    v17 = 1;
    do
    {
      v18 = v17;
      if (*v16)
      {
        v19 = v16[16];
        v15 |= v19 ^ 1;
        v14 |= v19;
      }

      v17 = 0;
      v16 = v32;
    }

    while ((v18 & 1) != 0);
    v20 = 0;
    v21 = 0;
    v22 = v31;
    v23 = 1;
    do
    {
      v24 = v23;
      v25 = *v22;
      if (*v22)
      {
        if ((*a5 & 0xFFFFFFFD) != 0)
        {
          pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItem(v30, a2, a3, *(**Repr + 8 * v21), a5, a4, Repr, v22, v15 & 1, v14 & 1, v20);
          v25 = *v22;
        }

        ++v21;
        if (v25 != 7)
        {
          ++v20;
        }
      }

      v23 = 0;
      v22 = v32;
    }

    while ((v24 & 1) != 0);
    *a5 &= ~0x800000u;
    for (i = 40; i != -24; i -= 32)
    {
      v27 = *(v31 + i);
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  if (v33)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v34, v33);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateMaterialTagsForAllReprs(pxrInternal__aapl__pxrReserved__::HdStMesh *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3)
{
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(%s) - Updating material tags for draw items of all reprs.\n", v7, v8, Text);
  }

  v9 = *(this + 55);
  v26 = *(this + 56);
  if (v9 != v26)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc(v9, v34);
      v11 = *(v9 + 1);
      v10 = *(v9 + 2);
      v27 = v9;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = v10;
      v12 = 0;
      v31 = 0;
      v13 = v34;
      v14 = 1;
      do
      {
        v15 = v14;
        if (*v13)
        {
          pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(a2, a3, *(*v11 + 8 * v12++), (this + 16), ((*(this + 264) >> 7) & 1), HIBYTE(*(this + 264)) & 1);
          if (*v13 != 7)
          {
            v29 = v15;
            v30 = v12;
            v16 = *(this + 58);
            v17 = *(v16 + 392) - *(v16 + 384);
            if (v17)
            {
              v18 = v17 >> 6;
              if (v18 <= 1)
              {
                v19 = 1;
              }

              else
              {
                v19 = v18;
              }

              v20 = 8 * v18 * v31;
              v21 = 12;
              do
              {
                v22 = *(v16 + 384);
                v23 = *(*v11 + 8 * v11[3] + v20);
                if (v23 || (v32[0] = "hdSt/mesh.cpp", v32[1] = "_UpdateMaterialTagsForAllReprs", v32[2] = 3023, v32[3] = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateMaterialTagsForAllReprs(HdSceneDelegate *, HdRenderParam *)", v33 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v32, "drawItem", 0) & 1) != 0))
                {
                  pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(a2, a3, v23, (v22 + v21), ((*(this + 264) >> 7) & 1), HIBYTE(*(this + 264)) & 1);
                }

                v20 += 8;
                v21 += 64;
                --v19;
              }

              while (v19);
            }

            ++v31;
            v15 = v29;
            v12 = v30;
          }
        }

        v14 = 0;
        v13 = &v35;
      }

      while ((v15 & 1) != 0);
      if (v28)
      {
        sub_29A014BEC(v28);
      }

      for (i = 40; i != -24; i -= 32)
      {
        v25 = *(v34 + i);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v9 = (v27 + 24);
    }

    while ((v27 + 24) != v26);
  }
}

void sub_29AE6AE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  v23 = 40;
  while (1)
  {
    v24 = *(&a22 + v23);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v23 -= 32;
    if (v23 == -24)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateShadersForAllReprs(pxrInternal__aapl__pxrReserved__::HdStMesh *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, int a4, int a5)
{
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(%s) - Updating geometric and material shaders for draw items of all reprs.\n", v8, v9, Text);
  }

  (*(*a2 + 112))(a2, this + 376);
  v11 = *(this + 55);
  v38 = *(this + 56);
  if (v11 != v38)
  {
    v12 = v10;
    v13 = 0;
    v14 = 0;
    v48 = v10 & 1;
    v41 = v10;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc(v11, v54);
      v18 = *(v11 + 2);
      v51 = *(v11 + 1);
      v39 = v11;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v40 = v18;
      v19 = 0;
      v44 = 0;
      v20 = v54;
      v21 = 1;
      do
      {
        v22 = v21;
        if (*v20)
        {
          v23 = *(*v51 + 8 * v19);
          v24 = *(v23 + 72);
          *(v23 + 72) = v48;
          v45 = v21;
          if (a4)
          {
            pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(this, a2, v16, v17);
          }

          v25 = v14;
          if (a5)
          {
            pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItemGeometricShader(this, a2, a3, v23, v20, (this + 16));
          }

          ++v19;
          v13 |= v12 ^ v24;
          if (*v20 != 7)
          {
            v42 = v19;
            v43 = v13;
            v47 = *(this + 58);
            v26 = *(v47 + 392) - *(v47 + 384);
            if (v26)
            {
              v27 = v26 >> 6;
              if (v27 <= 1)
              {
                v28 = 1;
              }

              else
              {
                v28 = v27;
              }

              v29 = 8 * v27 * v44;
              v30 = 12;
              do
              {
                v31 = *(v47 + 384);
                v32 = *(*v51 + 8 * v51[3] + v29);
                if (v32 || (v52[0] = "hdSt/mesh.cpp", v52[1] = "_UpdateShadersForAllReprs", v52[2] = 2952, v52[3] = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateShadersForAllReprs(HdSceneDelegate *, HdRenderParam *, BOOL, BOOL)", v53 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v52, "drawItem", 0) & 1) != 0))
                {
                  *(v32 + 72) = v48;
                  if (a4)
                  {
                    pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(this, a2, (v31 + v30), v17);
                  }
                }

                v29 += 8;
                v30 += 64;
                --v28;
              }

              while (v28);
            }

            ++v44;
            v14 = v25;
            v12 = v41;
            v19 = v42;
            v13 = v43;
          }

          v22 = v45;
        }

        v21 = 0;
        v20 = &v55;
      }

      while ((v22 & 1) != 0);
      if (v40)
      {
        sub_29A014BEC(v40);
      }

      for (i = 40; i != -24; i -= 32)
      {
        v34 = *(v54 + i);
        if ((v34 & 7) != 0)
        {
          atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v11 = (v39 + 24);
    }

    while ((v39 + 24) != v38);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(a3, v15);
      if (sub_29ABCF8C0(26))
      {
        v35 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Marking all batches dirty to trigger deep validation because the materialIsFinal was updated.\n", v36, v37, v35);
      }
    }
  }
}

void sub_29AE6B278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::Finalize(pxrInternal__aapl__pxrReserved__::HdStMesh *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(a2, a2);
  v4 = *(this + 55);
  v22 = this;
  v19 = *(this + 56);
  if (v4 != v19)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc(v4, v25);
      v6 = *(v4 + 1);
      v5 = *(v4 + 2);
      v20 = v4;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v5;
      v7 = 0;
      v8 = 0;
      v9 = v25;
      v10 = 1;
      do
      {
        v11 = v10;
        if (*v9)
        {
          pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(a2, (*(*v6 + 8 * v7++) + 32));
          if (*v9 != 7)
          {
            v12 = *(*(v22 + 58) + 392) - *(*(v22 + 58) + 384);
            if (v12)
            {
              v13 = v12 >> 6;
              if (v13 <= 1)
              {
                v14 = 1;
              }

              else
              {
                v14 = v13;
              }

              v15 = 8 * v13 * v8;
              do
              {
                v16 = *(*v6 + 8 * v6[3] + v15);
                if (v16 || (v23[0] = "hdSt/mesh.cpp", v23[1] = "Finalize", v23[2] = 209, v23[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStMesh::Finalize(HdRenderParam *)", v24 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v23, "drawItem", 0) & 1) != 0))
                {
                  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(a2, (v16 + 32));
                }

                v15 += 8;
                --v14;
              }

              while (v14);
            }

            ++v8;
          }
        }

        v10 = 0;
        v9 = &v26;
      }

      while ((v11 & 1) != 0);
      if (v21)
      {
        sub_29A014BEC(v21);
      }

      for (i = 40; i != -24; i -= 32)
      {
        v18 = *(v25 + i);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v4 = (v20 + 24);
    }

    while ((v20 + 24) != v19);
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseRenderTagCount(a2, (v22 + 432));
}

void sub_29AE6B4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  v20 = 40;
  while (1)
  {
    v21 = *(&a19 + v20);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v20 -= 32;
    if (v20 == -24)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMesh::GetTopology@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 472);
  *a2 = *(this + 464);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMesh::IsEnabledPackedNormals(pxrInternal__aapl__pxrReserved__::HdStMesh *this)
{
  if ((atomic_load_explicit(&qword_2A174F278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F278))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_PACKED_NORMALS);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A174F270 = *v2 == 1;
    __cxa_guard_release(&qword_2A174F278);
  }

  return byte_2A174F270;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(uint64_t a1, _DWORD *a2)
{
  if ((*a2 - 4) < 3)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v6 = *(a1 + 464);
  if (v6)
  {
    return *(v6 + 488);
  }

  v7[0] = "hdSt/mesh.cpp";
  v7[1] = "_GetRefineLevelForDesc";
  v7[2] = 251;
  v7[3] = "int pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(const HdMeshReprDesc &) const";
  v8 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "_topology", 0);
  if (result)
  {
    v6 = *(a1 + 464);
    return *(v6 + 488);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_GatherFaceVaryingTopologies(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, int a6, _BYTE *a7, pxrInternal__aapl__pxrReserved__::SdfPath *a8, pxrInternal__aapl__pxrReserved__::HdMeshTopology **a9)
{
  v50[2] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v43, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_GatherFaceVaryingTopologies(HdSceneDelegate *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, const SdfPath &, HdSt_MeshTopologySharedPtr)");
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a5, a2, 4, a3, *a4, a6, (*(*a9 + 49) - *(*a9 + 48)) >> 6, v42);
  v18 = v42[0];
  v19 = v42[1];
  while (v18 != v19)
  {
    if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a7, a8, v18, v17))
    {
      NumFaceVaryings = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaceVaryings(*a9);
      v50[1] = 0;
      sub_29A19D6E4(&v40, 0);
      if (*(v18 + 24) == 1)
      {
        (*(*a2 + 128))(&v45, a2, a1 + 376, v18, &v40);
        sub_29A18606C(v50, &v45);
        sub_29A186B14(&v45);
        if (v40)
        {
          if (NumFaceVaryings > v40)
          {
            v45 = "hdSt/mesh.cpp";
            v46 = "_GatherFaceVaryingTopologies";
            v47 = 298;
            v48 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_GatherFaceVaryingTopologies(HdSceneDelegate *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, const SdfPath &, HdSt_MeshTopologySharedPtr)";
            v49 = 0;
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a8);
            v24 = *v18 & 0xFFFFFFFFFFFFFFF8;
            if (v24)
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

            pxrInternal__aapl__pxrReserved__::TfStringPrintf("Indices for face-varying primvar %s has only %d elements, while its topology expects at least %d elements. Skipping indices update.", v21, v22, v25, v40, NumFaceVaryings);
            v31 = __p;
            if (v39 < 0)
            {
              v31 = __p[0];
            }

            goto LABEL_23;
          }

LABEL_12:
          sub_29AE6BBF8(*(a1 + 536), v18, &v40);
        }

        else
        {
          v45 = "hdSt/mesh.cpp";
          v46 = "_GatherFaceVaryingTopologies";
          v47 = 290;
          v48 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_GatherFaceVaryingTopologies(HdSceneDelegate *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, const SdfPath &, HdSt_MeshTopologySharedPtr)";
          v49 = 0;
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a8);
          v28 = *v18 & 0xFFFFFFFFFFFFFFF8;
          if (v28)
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

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("Found empty indices for indexed face-varying primvar %s. Skipping indices update.", v26, v27, v29);
          v31 = __p;
          if (v39 < 0)
          {
            v31 = __p[0];
          }

LABEL_23:
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v45, "Invalid Hydra prim '%s': %s", v30, Text, v31);
          if (SHIBYTE(v39) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      (*(*a2 + 120))(&v45, a2, a1 + 376, v18);
      sub_29A18606C(v50, &v45);
      sub_29A186B14(&v45);
      LODWORD(v45) = 0;
      if (NumFaceVaryings >= 1)
      {
        do
        {
          sub_29A7ACEC4(&v40, &v45);
          LODWORD(v45) = v45 + 1;
        }

        while (v45 < NumFaceVaryings);
      }

      goto LABEL_12;
    }

    v18 += 4;
  }

  v40 = 0uLL;
  v41 = 0;
  if ((*a7 & 0x40) != 0)
  {
    v32 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a5 + 24), *(a5 + 16));
    v45 = 0;
    v46 = 0;
    v47 = 0;
    pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v32, v42, &v45, a8, __p);
    sub_29AC1F70C(&v40);
    v40 = *__p;
    v41 = v39;
    __p[1] = 0;
    v39 = 0;
    __p[0] = 0;
    v50[0] = __p;
    sub_29ABC6FA0(v50);
    __p[0] = &v45;
    sub_29A124AB0(__p);
    v33 = v40;
    if (*(&v40 + 1) != v40)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        sub_29AE6BE4C(*(a1 + 536), (v33 + v34));
        ++v35;
        v33 = v40;
        v34 += 24;
      }

      while (v35 < 0xAAAAAAAAAAAAAAABLL * ((*(&v40 + 1) - v40) >> 3));
    }
  }

  v36 = *(a1 + 536);
  v37 = sub_29AE746F4(*v36, v36[1], sub_29AE74788);
  sub_29AE74660(v36, v37, v36[1]);
  v45 = &v40;
  sub_29ABC6FA0(&v45);
  *&v40 = v42;
  sub_29ABEE9FC(&v40);
  if (v43)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v44, v43);
  }
}

void sub_29AE6BB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t *a31)
{
  sub_29A124AB0(&__p);
  a31 = &a20;
  sub_29ABC6FA0(&a31);
  a20 = &a26;
  sub_29ABEE9FC(&a20);
  sub_29A0E9CEC(&a29);
  _Unwind_Resume(a1);
}

void *sub_29AE6BBF8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (a1[1] == *a1)
  {
LABEL_5:
    sub_29AE6BE4C(a1, a2);
    v16 = *a2;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v14, 0, sizeof(v14));
    sub_29A12EF7C(v14, &v16, &v17, 1uLL);
    sub_29AE745DC(v15, a3);
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==(v6 + v7, a3);
    if (result)
    {
      break;
    }

    ++v8;
    v6 = *a1;
    v7 += 64;
    if (v8 >= (a1[1] - *a1) >> 6)
    {
      goto LABEL_5;
    }
  }

  v10 = *a1 + v7;
  v11 = *(v10 + 40);
  v12 = *(v10 + 48);
  if (v11 != v12)
  {
    while ((*v11 ^ *a2) >= 8)
    {
      if (++v11 == v12)
      {
        goto LABEL_14;
      }
    }
  }

  if (v11 == v12)
  {
LABEL_14:
    sub_29AE6BE4C(a1, a2);
    v13 = *a1 + v7 + 40;

    return sub_29A1D8028(v13, a2);
  }

  return result;
}

void sub_29AE6BDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AE6BE4C(uint64_t *result, void *a2)
{
  v2 = *result;
  if (result[1] != *result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = v2 + (v5 << 6);
      v8 = *(v6 + 40);
      v9 = *(v6 + 48);
      v7 = v6 + 40;
      if (v8 != v9)
      {
        while ((*v8 ^ *a2) >= 8)
        {
          if (++v8 == v9)
          {
            v8 = v9;
            break;
          }
        }
      }

      result = sub_29A3203E8(v7, v8, v9);
      ++v5;
      v2 = *v4;
    }

    while (v5 < (v4[1] - *v4) >> 6);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItemsForGeomSubsets(void *a1, const pxrInternal__aapl__pxrReserved__::HdRprim *a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::HdMesh *this, uint64_t a6, uint64_t *a7, unint64_t a8)
{
  v72 = *a7;
  v73 = a7[1];
  v10 = (v73 - *a7) >> 6;
  if (v10 == a8)
  {
    v13 = v82;
    result = pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc(this, v82);
    v75 = 0;
    if (a8 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a8;
    }

    v69 = 8 * a8;
    v70 = v16;
    v17 = 1;
    do
    {
      v18 = v17;
      if (*v13)
      {
        v19 = *v13 == 7;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        if (v73 != v72)
        {
          v20 = v70;
          v21 = v69 * v75;
          v22 = 12;
          do
          {
            v23 = *a7;
            if (*(**a6 + 8 * *(*a6 + 24) + v21) || (v77 = "hdSt/mesh.cpp", v78 = "_UpdateDrawItemsForGeomSubsets", v79 = 491, v80 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItemsForGeomSubsets(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, const TfToken &, const HdReprSharedPtr &, const HdGeomSubsets &, size_t)", v81 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v77, "subsetDrawItem", 0), (result & 1) != 0))
            {
              pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(a1, a2, (v23 + v22), v15);
            }

            v21 += 8;
            v22 += 64;
            --v20;
          }

          while (v20);
        }

        v75 = (v75 + 1);
      }

      v17 = 0;
      v13 = v83;
    }

    while ((v18 & 1) != 0);
    for (i = 40; i != -24; i -= 32)
    {
      v25 = *(v82 + i);
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  else
  {
    v71 = 2 * v10;
    if (sub_29AE41C4C(a4))
    {
      v29 = sub_29ADC9478(a4);
      if (v10 >= a8)
      {
        for (j = v29 - 1; ; --j)
        {
          v61 = *(a4 + 24);
          v62 = sub_29ADCA7A8(a4 + 8, j);
          v63 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v61, v62);
          v64 = v63[1];
          *&v82[0] = *v63;
          *(&v82[0] + 1) = v64;
          if (v64)
          {
            atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(v82, (v71 + j + 10), (a1 + 4), a3);
          if (*(&v82[0] + 1))
          {
            sub_29A014BEC(*(&v82[0] + 1));
          }
        }
      }

      if (v29)
      {
        v30 = 0;
        v31 = (v71 + 10);
        do
        {
          v32 = *(a4 + 24);
          v33 = sub_29ADCA7A8(a4 + 8, v30);
          v34 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v32, v33);
          v35 = v34[1];
          *&v82[0] = *v34;
          *(&v82[0] + 1) = v35;
          if (v35)
          {
            atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(v82, v31, (a1 + 4), a3);
          if (*(&v82[0] + 1))
          {
            sub_29A014BEC(*(&v82[0] + 1));
          }

          v31 = (v31 + 1);
          ++v30;
          --v29;
        }

        while (v29);
      }
    }

    v36 = a1[55];
    v65 = a1[56];
    if (v36 != v65)
    {
      do
      {
        v37 = v36;
        pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc(v36, v82);
        v39 = *(v37 + 1);
        v38 = *(v37 + 2);
        v66 = v37;
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v67 = v38;
        sub_29AE7480C(v39, (*v39 + 8 * *(v39 + 24)), *(v39 + 8));
        if (a8)
        {
          v40 = 0;
          v41 = v82;
          v42 = 1;
          do
          {
            v43 = v42;
            v44 = *v41;
            if (v44)
            {
              v45 = v44 == 7;
            }

            else
            {
              v45 = 1;
            }

            if (!v45)
            {
              v46 = a8;
              v47 = 8 * a8 * v40;
              do
              {
                v48 = *(*v39 + 8 * *(v39 + 24) + v47);
                if (v48 || (v77 = "hdSt/mesh.cpp", v78 = "_UpdateDrawItemsForGeomSubsets", v79 = 403, v80 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItemsForGeomSubsets(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, const TfToken &, const HdReprSharedPtr &, const HdGeomSubsets &, size_t)", v81 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v77, "subsetDrawItem", 0) & 1) != 0))
                {
                  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(a3, (v48 + 32));
                }

                v47 += 8;
                --v46;
              }

              while (v46);
              ++v40;
            }

            v42 = 0;
            v41 = v83;
          }

          while ((v43 & 1) != 0);
          sub_29AE7480C(v39, (*v39 + 8 * *(v39 + 24)), *(v39 + 8));
        }

        v49 = 0;
        v50 = v82;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = *v50;
          if (*v50)
          {
            *(*(*v39 + 8 * v49) + 10) = v71 + 10;
            if (v53 != 7 && v73 != v72)
            {
              v55 = *a7;
              sub_29A0ECEEC(&v77, "hdSt", "new HdStDrawItem");
              v56 = malloc(0x50uLL);
              if (v77)
              {
                pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v78, v77);
              }

              pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(v56, a1 + 4);
              pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(a1, a2, (v55 + 12), v57);
            }

            ++v49;
          }

          v51 = 0;
          v50 = v83;
        }

        while ((v52 & 1) != 0);
        if (v67)
        {
          sub_29A014BEC(v67);
        }

        for (k = 40; k != -24; k -= 32)
        {
          v59 = *(v82 + k);
          if ((v59 & 7) != 0)
          {
            atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        v36 = (v66 + 24);
      }

      while ((v66 + 24) != v65);
    }

    return pxrInternal__aapl__pxrReserved__::HdStMarkGeomSubsetDrawItemsDirty(a3, v28);
  }

  return result;
}

void sub_29AE6C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  v27 = 40;
  while (1)
  {
    v28 = *(&a26 + v27);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v27 -= 32;
    if (v27 == -24)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateTopology(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, unsigned int *a5, pxrInternal__aapl__pxrReserved__::HdMesh *a6, uint64_t a7, _DWORD *a8)
{
  sub_29A0ECEEC(&v159, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const TfToken &, const HdReprSharedPtr &, const HdMeshReprDesc &, int)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(v145, a2[1]);
  v13 = (a1 + 376);
  v158 = *v145;
  if (*&v145[8])
  {
    atomic_fetch_add_explicit((*&v145[8] + 8), 1uLL, memory_order_relaxed);
    if (*&v145[8])
    {
      sub_29A014BEC(*&v145[8]);
    }
  }

  v118 = a2[1];
  IsTopologyDirty = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTopologyDirty(*a5, (a1 + 376), v12);
  v15 = *(a1 + 536);
  v156 = 0;
  v157 = 0;
  v155 = 0;
  sub_29AE74F54(&v155, *v15, v15[1], (v15[1] - *v15) >> 6);
  if ((IsTopologyDirty & 1) != 0 || (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(*a5, (a1 + 376), v16) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsSubdivTagsDirty(*a5, (a1 + 376), v17) & 1) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*a5, (a1 + 376), v18))
  {
    v19 = (*(*a2 + 14))(a2, a1 + 376);
    v20 = v19;
    *(a1 + 528) = (v19 >> 37) & 8 | (v19 >> 30) & 4 | (HIDWORD(v19) >> 8) & 0x100 | (v19 >> 47) & 0x200 | *(a1 + 528) & 0xFCE3;
    (*(*a2 + 5))(v145, a2, a1 + 376);
    if (IsTopologyDirty)
    {
      v142 = v152;
      v143 = v153;
      v144 = v154;
      if (v154)
      {
        v21 = (v154 - 16);
        if (*(&v143 + 1))
        {
          v21 = *(&v143 + 1);
        }

        atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
      }

      NumFaces = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(v145);
      v139 = v149;
      v140 = v150;
      v141 = v151;
      if (v151)
      {
        v23 = (v151 - 16);
        if (*(&v140 + 1))
        {
          v23 = *(&v140 + 1);
        }

        atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
      }

      NumPoints = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumPoints(v145);
      pxrInternal__aapl__pxrReserved__::HdStProcessTopologyVisibility(&v142, NumFaces, &v139, NumPoints, a1 + 32, a4);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    if ((*(a1 + 528) & 4) != 0)
    {
      v25 = *(a1 + 512);
      if ((v25 & 0x2000000) == 0)
      {
        *(a1 + 512) = v25 | 0x2000000;
        *a5 |= 0x2000000u;
      }
    }

    v26 = *&v145[8];
    if ((v145[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v145[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 &= 0xFFFFFFFFFFFFFFF8;
    }

    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v27)
    {
      v27 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v28 = v26 ^ *(v27 + 1);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v28 < 8)
    {
      v20 = 0;
    }

    v29 = *&v145[8];
    if ((v145[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v145[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 &= 0xFFFFFFFFFFFFFFF8;
    }

    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v30)
    {
      v30 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((v29 ^ *(v30 + 6)) >= 8)
    {
      v31 = *&v145[8];
      if ((v145[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v145[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v31 &= 0xFFFFFFFFFFFFFFF8;
      }

      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v32)
      {
        v32 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      if ((v31 ^ *(v32 + 1)) >= 8 && v20 >= 1)
      {
        pxrInternal__aapl__pxrReserved__::HdStMesh::_UseLimitRefinement(a1, a2[1], v145);
      }

      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v158);
    v34 = *((*(*Hgi + 200))(Hgi) + 48);
    v35 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v158);
    v36 = (v34 & 0x10 | *((*(*v35 + 200))(v35) + 48) & 0x4000) == 0;
    pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::New(v145, v20, 0, v36, &v138);
    v37 = *(a1 + 464);
    if (v37)
    {
      v136 = 0uLL;
      v137 = 0;
      sub_29AC534F4(&v136, *(v37 + 384), *(v37 + 392), (*(v37 + 392) - *(v37 + 384)) >> 6);
      v37 = *(&v136 + 1);
      v38 = v136;
    }

    else
    {
      v38 = 0;
      v136 = 0uLL;
      v137 = 0;
    }

    v39 = v138;
    v41 = *(v138 + 384);
    v40 = *(v138 + 392);
    v42 = v37 - v38;
    if (v40 - v41 == v42)
    {
      if (v41 == v40)
      {
        goto LABEL_60;
      }

      do
      {
        v43 = pxrInternal__aapl__pxrReserved__::operator==(v41, v38);
        v41 += 64;
        v38 += 64;
        if (v41 == v40)
        {
          v44 = 0;
        }

        else
        {
          v44 = v43;
        }
      }

      while ((v44 & 1) != 0);
      if (v43)
      {
        goto LABEL_60;
      }

      v42 = *(&v136 + 1) - v136;
    }

    pxrInternal__aapl__pxrReserved__::HdStMesh::_UpdateDrawItemsForGeomSubsets(a1, a2, a3, a4, a6, a7, (v39 + 384), v42 >> 6);
LABEL_60:
    v45 = v138;
    if (v20 >= 1)
    {
      (*(*a2 + 7))(&v131, a2, a1 + 376);
      sub_29AE6DF30(v45, &v131);
    }

    v46 = *(v138 + 152);
    if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v46 &= 0xFFFFFFFFFFFFFFF8;
    }

    v47 = pxrInternal__aapl__pxrReserved__::HdMeshTopology::ComputeHash(v138);
    v48 = a4;
    *(a1 + 496) = v47;
    v49 = *(a1 + 536);
    v50 = *v49;
    v51 = v49[1];
    if (*v49 != v51)
    {
      do
      {
        v47 = pxrInternal__aapl__pxrReserved__::ArchHash64(*(v50 + 32), (4 * *v50), v47);
        *(a1 + 496) = v47;
        v53 = *(v50 + 40);
        v52 = *(v50 + 48);
        while (v53 != v52)
        {
          v54 = *v53 & 0xFFFFFFFFFFFFFFF8;
          if (v54)
          {
            v55 = *(v54 + 39);
            if ((v55 & 0x8000000000000000) != 0)
            {
              v56 = *(v54 + 16);
              v55 = *(v54 + 24);
            }

            else
            {
              v56 = (v54 + 16);
            }
          }

          else
          {
            v55 = 0;
            v56 = "";
          }

          v47 = pxrInternal__aapl__pxrReserved__::ArchHash64(v56, v55, v47);
          *(a1 + 496) = v47;
          ++v53;
        }

        v50 += 64;
      }

      while (v50 != v51);
    }

    a4 = v48;
    v13 = (a1 + 376);
    v130 = pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(a1, a2[1], &v138);
    v57 = pxrInternal__aapl__pxrReserved__::ArchHash64(&v130, 1, *(a1 + 496));
    *(a1 + 496) = v57;
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterMeshTopology(v158, v57, &v131);
    if (v135 == 1)
    {
      sub_29AE6E118(&v131, &v138);
      if (v130 == 1)
      {
        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadInfoBuilderComputation(v138, (a1 + 376), v158, 1, &v128);
        v58 = v158;
        v126 = v128;
        v127 = v129;
        if (v129)
        {
          atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v58, &v126);
        if (v127)
        {
          sub_29A014BEC(v127);
        }

        if (v129)
        {
          sub_29A014BEC(v129);
        }
      }
    }

    v60 = *(&v131 + 1);
    v59 = v132;
    if (v132)
    {
      atomic_fetch_add_explicit((v132 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = *(a1 + 472);
    *(a1 + 464) = v60;
    *(a1 + 472) = v59;
    if (v61)
    {
      sub_29A014BEC(v61);
    }

    if (v134 == 1)
    {
      std::mutex::unlock(v133);
    }

    if (v132)
    {
      sub_29A014BEC(v132);
    }

    if (!*(a1 + 464))
    {
      *&v131 = "hdSt/mesh.cpp";
      *(&v131 + 1) = "_PopulateTopology";
      v132 = 706;
      v133 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const TfToken &, const HdReprSharedPtr &, const HdMeshReprDesc &, int)";
      v134 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v131, "_topology", 0);
    }

    if (sub_29ABCF8C0(27) && (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::operator==(v138, *(a1 + 464)) & 1) == 0)
    {
      *&v131 = "hdSt/mesh.cpp";
      *(&v131 + 1) = "_PopulateTopology";
      v132 = 710;
      v133 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const TfToken &, const HdReprSharedPtr &, const HdMeshReprDesc &, int)";
      v134 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v131, "*topology == *_topology", 0);
    }

    v62 = *(a1 + 488);
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
    if (v62)
    {
      sub_29A014BEC(v62);
    }

    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *&v131 = &v136;
    sub_29AC5346C(&v131);
    if (*(&v138 + 1))
    {
      sub_29A014BEC(*(&v138 + 1));
    }

    pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v145);
  }

  RefineLevelForDesc = pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(a1, a8);
  v126 = 0;
  if (!RefineLevelForDesc)
  {
    v67 = 1;
    goto LABEL_123;
  }

  v65 = *(*(a1 + 464) + 152);
  if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v66 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v66)
  {
    v66 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  if ((v65 ^ *v66) < 8)
  {
    goto LABEL_110;
  }

  if ((pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(*a5, v13, v63) & 1) != 0 || (v68 = *(a1 + 536), v70 = v155, v69 = v156, v71 = *v68, v156 - v155 != v68[1] - *v68))
  {
    v67 = 0;
  }

  else
  {
    if (v155 == v156)
    {
LABEL_110:
      v67 = 1;
      goto LABEL_121;
    }

    do
    {
      v67 = sub_29AE75348(&v131, v70, v71);
      v70 += 64;
      v71 += 64;
      if (v70 == v69)
      {
        v72 = 0;
      }

      else
      {
        v72 = v67;
      }
    }

    while ((v72 & 1) != 0);
  }

LABEL_121:
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_123:
  v73 = *(a4 + 8);
  v74 = *a5;
  if (v73 == 9)
  {
    if ((((v74 & 0x10000000) == 0) & v67) != 0)
    {
      goto LABEL_172;
    }

    *a5 = v74 & 0xEFFFFFFF;
    v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v77)
    {
      v77 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v76 = (v77 + 480);
  }

  else if (v73 == 8)
  {
    if ((((v74 & 0x8000000) == 0) & v67) != 0)
    {
      goto LABEL_172;
    }

    *a5 = v74 & 0xF7FFFFFF;
    v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v75)
    {
      v75 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v76 = (v75 + 304);
  }

  else
  {
    if ((((v74 & 0x4000000) == 0) & v67) != 0)
    {
      goto LABEL_172;
    }

    *a5 = v74 & 0xFBFFFFFF;
    v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v78)
    {
      v78 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v76 = (v78 + 312);
  }

  sub_29A166F2C(&v126, v76);
  v116 = *(a1 + 464);
  if (*(v116 + 48) != *(v116 + 49) && *a8 != 7)
  {
    v131 = 0uLL;
    v136 = 0uLL;
    if (RefineLevelForDesc < 1)
    {
      if (pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(a1, a2[1], (a1 + 464)))
      {
        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadIndexBuilderComputation(*(a1 + 464), v145);
        v101 = *v145;
        *&v145[8] = 0;
        *v145 = 0;
        v102 = *(&v131 + 1);
        v131 = v101;
        if (v102)
        {
          sub_29A014BEC(v102);
          if (*&v145[8])
          {
            sub_29A014BEC(*&v145[8]);
          }
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v158, &v131);
        v100 = 1;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetTriangleIndexBuilderComputation(*(a1 + 464), v13, v145);
        v111 = *v145;
        *&v145[8] = 0;
        *v145 = 0;
        v112 = *(&v131 + 1);
        v131 = v111;
        if (v112)
        {
          sub_29A014BEC(v112);
          if (*&v145[8])
          {
            sub_29A014BEC(*&v145[8]);
          }
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v158, &v131);
        v100 = 0;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdIndexBuilderComputation(v116, v145);
      v90 = *v145;
      *&v145[8] = 0;
      *v145 = 0;
      v91 = *(&v131 + 1);
      v131 = v90;
      if (v91)
      {
        sub_29A014BEC(v91);
        if (*&v145[8])
        {
          sub_29A014BEC(*&v145[8]);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v158, &v131);
      v92 = *(*(a1 + 464) + 152);
      if ((v92 & 7) != 0 && (atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v92 &= 0xFFFFFFFFFFFFFFF8;
      }

      v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v93)
      {
        v93 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v94 = v92 ^ *v93;
      if ((v92 & 7) != 0)
      {
        atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v94 >= 8 && *(*(a1 + 536) + 8) != **(a1 + 536))
      {
        v95 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdFvarIndexBuilderComputation(*(a1 + 464), v95, v145);
          v96 = *v145;
          *&v145[8] = 0;
          *v145 = 0;
          v97 = *(&v136 + 1);
          v136 = v96;
          if (v97)
          {
            sub_29A014BEC(v97);
            if (*&v145[8])
            {
              sub_29A014BEC(*&v145[8]);
            }
          }

          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v158, &v136);
          ++v95;
        }

        while (v95 < (*(*(a1 + 536) + 8) - **(a1 + 536)) >> 6);
      }

      v98 = *(*(a1 + 464) + 8);
      if ((v98 & 7) != 0 && (atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v98 &= 0xFFFFFFFFFFFFFFF8;
      }

      v99 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v99)
      {
        v99 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      if ((v98 ^ *(v99 + 7)) >= 8)
      {
        v103 = *(*(a1 + 464) + 8);
        if ((v103 & 7) != 0 && (atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v103 &= 0xFFFFFFFFFFFFFFF8;
        }

        v104 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        if (!v104)
        {
          v104 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        }

        v100 = (v103 ^ *(v104 + 6)) < 8;
        if ((v103 & 7) != 0)
        {
          atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v100 = 1;
      }

      if ((v98 & 7) != 0)
      {
        atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetGeomSubsetFaceIndexHelperComputation(*(a1 + 464), RefineLevelForDesc > 0, v100, &v138);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v158, &v138);
    if (RefineLevelForDesc >= 1)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdBaseFaceToRefinedFacesMapComputation(*(a1 + 464), v158, &v124);
      if (v125)
      {
        sub_29A014BEC(v125);
      }
    }

    v113 = *(*(a1 + 464) + 616);
    v123 = v158;
    if (*(&v158 + 1))
    {
      atomic_fetch_add_explicit((*(&v158 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v122 = v131;
    if (*(&v131 + 1))
    {
      atomic_fetch_add_explicit((*(&v131 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v121 = v136;
    if (*(&v136 + 1))
    {
      atomic_fetch_add_explicit((*(&v136 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v120 = v138;
    if (*(&v138 + 1))
    {
      atomic_fetch_add_explicit((*(&v138 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE6E6E0(v145, *v113, v113[1]);
    pxrInternal__aapl__pxrReserved__::HdStMesh::_CreateTopologyRangeForGeomSubset(a1, &v123, v118 + 440, a3, a4, &v126, &v122, &v121, &v120, v145, RefineLevelForDesc > 0);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterMeshIndexRange(v158, &v126, *(a1 + 496), v145);
  if (v148 == 1)
  {
    v131 = 0uLL;
    v132 = 0;
    v138 = 0uLL;
    if (*a8 == 7)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetPointsIndexBuilderComputation(*(a1 + 464), &v136);
    }

    if (RefineLevelForDesc < 1)
    {
      if (pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(a1, a2[1], (a1 + 464)))
      {
        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadIndexBuilderComputation(*(a1 + 464), &v136);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetTriangleIndexBuilderComputation(*(a1 + 464), v13, &v136);
      }

      v80 = v136;
      v136 = 0uLL;
      v81 = *(&v138 + 1);
      v138 = v80;
      if (v81)
      {
        sub_29A014BEC(v81);
        if (*(&v136 + 1))
        {
          sub_29A014BEC(*(&v136 + 1));
        }
      }

      sub_29A017F80(&v131, &v138);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdIndexBuilderComputation(*(a1 + 464), &v136);
      v105 = v136;
      v136 = 0uLL;
      v106 = *(&v138 + 1);
      v138 = v105;
      if (v106)
      {
        sub_29A014BEC(v106);
        if (*(&v136 + 1))
        {
          sub_29A014BEC(*(&v136 + 1));
        }
      }

      sub_29A017F80(&v131, &v138);
      v107 = *(*(a1 + 464) + 152);
      if ((v107 & 7) != 0 && (atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v107 &= 0xFFFFFFFFFFFFFFF8;
      }

      v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v108)
      {
        v108 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v109 = v107 ^ *v108;
      if ((v107 & 7) != 0)
      {
        atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v109 >= 8 && *(*(a1 + 536) + 8) != **(a1 + 536))
      {
        v110 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdFvarIndexBuilderComputation(*(a1 + 464), v110, &v136);
          sub_29A017F80(&v131, &v136);
          if (*(&v136 + 1))
          {
            sub_29A014BEC(*(&v136 + 1));
          }

          ++v110;
        }

        while (v110 < (*(*(a1 + 536) + 8) - **(a1 + 536)) >> 6);
      }
    }

    v136 = 0uLL;
    v137 = 0;
    sub_29AE22748(&v131, &v136);
    if (*pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 8)))
    {
      v82 = 42;
    }

    else
    {
      v82 = 40;
    }

    v83 = v158;
    v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v84)
    {
      v84 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(v83, v84 + 616, &v136, v82, &v128);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v158, &v128, &v131);
    sub_29AE227C0(v145, &v128);
    if (v129)
    {
      sub_29A014BEC(v129);
    }

    v128 = &v136;
    sub_29ABC6FA0(&v128);
    if (*(&v138 + 1))
    {
      sub_29A014BEC(*(&v138 + 1));
    }

    *&v136 = &v131;
    sub_29A0176E4(&v136);
  }

  v85 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 8));
  v86 = v85;
  v131 = *&v145[8];
  if (*&v145[16])
  {
    atomic_fetch_add_explicit((*&v145[16] + 8), 1uLL, memory_order_relaxed);
  }

  if (pxrInternal__aapl__pxrReserved__::HdStIsValidBAR(v85) && v131 != *v86)
  {
    if (sub_29ABCF8C0(26))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s has varying topology (topology index = %d).\n", v88, v89, Text, *(a4 + 8));
    }

    *(a1 + 528) |= 0x40u;
  }

  pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v131, *(a4 + 8), (a1 + 32), a3);
  if (*(&v131 + 1))
  {
    sub_29A014BEC(*(&v131 + 1));
  }

  if (v147 == 1)
  {
    std::mutex::unlock(v146);
  }

  if (*&v145[16])
  {
    sub_29A014BEC(*&v145[16]);
  }

LABEL_172:
  if ((v126 & 7) != 0)
  {
    atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v145 = &v155;
  sub_29ACB596C(v145);
  if (*(&v158 + 1))
  {
    sub_29A014BEC(*(&v158 + 1));
  }

  if (v159)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v160, v159);
  }
}

void sub_29AE6DF30(uint64_t a1, uint64_t a2)
{
  sub_29AE749A0((a1 + 8), a2, v3);
  sub_29AE74A38(a1 + 8, v3);
  sub_29AB72E30();
}

uint64_t *sub_29AE6DF8C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_29ACD5EB8(a2, v2);
      v2 += 64;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_29AE6DFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A8440C8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology **a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(*a3, a2);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::HdStMesh::_MaterialHasPtex(v5, a2, (a1 + 16));
  }

  return 0;
}

void sub_29AE6E118(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AE752A0(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AE6E1D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_CreateTopologyRangeForGeomSubset(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2, uint64_t a3, pxrInternal__aapl__pxrReserved__ *a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t a10, char a11)
{
  v18 = pxrInternal__aapl__pxrReserved__::ArchHash64(*(a10 + 32), (4 * *a10), *(a1 + 496));
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterMeshIndexRange(*a2, a6, v18, &v54);
  if (v59 == 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v19 = a9[1];
    v48 = *a9;
    v49 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetGeomSubsetFaceIndexBuilderComputation(&v48, a10, &v50);
    if (v49)
    {
      sub_29A014BEC(v49);
    }

    if (a11)
    {
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(*a2, &v50);
      v20 = *(a1 + 464);
      v21 = a7[1];
      v46 = *a7;
      v47 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = v50;
      if (*(&v50 + 1))
      {
        atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetRefinedIndexSubsetComputation(v20, &v46, &v45, &v36);
      if (*(&v45 + 1))
      {
        sub_29A014BEC(*(&v45 + 1));
      }

      if (v47)
      {
        sub_29A014BEC(v47);
      }

      sub_29A017F80(&v51, &v36);
      if (*a8)
      {
        v22 = *(a1 + 464);
        v23 = a8[1];
        v42 = *a8;
        v43 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = v50;
        if (*(&v50 + 1))
        {
          atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetRefinedIndexSubsetComputation(v22, &v42, &v41, &v44);
        if (*(&v41 + 1))
        {
          sub_29A014BEC(*(&v41 + 1));
        }

        if (v43)
        {
          sub_29A014BEC(v43);
        }

        sub_29A017F80(&v51, &v44);
        if (*(&v44 + 1))
        {
          sub_29A014BEC(*(&v44 + 1));
        }
      }
    }

    else
    {
      v24 = a7[1];
      v39 = *a7;
      v40 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = v50;
      if (*(&v50 + 1))
      {
        atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetIndexSubsetComputation(&v39, &v38, &v36);
      if (*(&v38 + 1))
      {
        sub_29A014BEC(*(&v38 + 1));
      }

      if (v40)
      {
        sub_29A014BEC(v40);
      }

      sub_29A017F80(&v51, &v36);
      sub_29A017F80(&v51, &v50);
    }

    if (*(&v36 + 1))
    {
      sub_29A014BEC(*(&v36 + 1));
    }

    v36 = 0uLL;
    v37 = 0;
    sub_29AE22748(&v51, &v36);
    if (*pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a5 + 24), *(a5 + 8)))
    {
      v25 = 42;
    }

    else
    {
      v25 = 40;
    }

    v26 = *a2;
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v27)
    {
      v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(v26, v27 + 616, &v36, v25, &v44);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(*a2, &v44, &v51);
    sub_29AE227C0(&v54, &v44);
    if (*(&v44 + 1))
    {
      sub_29A014BEC(*(&v44 + 1));
    }

    *&v44 = &v36;
    sub_29ABC6FA0(&v44);
    if (*(&v50 + 1))
    {
      sub_29A014BEC(*(&v50 + 1));
    }

    *&v36 = &v51;
    sub_29A0176E4(&v36);
  }

  v28 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a5 + 24), *(a5 + 8));
  v29 = v28;
  v30 = v55;
  v51 = v55;
  v52 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IsValidBAR = pxrInternal__aapl__pxrReserved__::HdStIsValidBAR(v28);
  if (v30 == *v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = IsValidBAR;
  }

  if (v32 == 1)
  {
    if (sub_29ABCF8C0(26))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s has varying topology (topology index = %d).\n", v34, v35, Text, *(a5 + 8));
    }

    *(a1 + 528) |= 0x40u;
  }

  pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v51, *(a5 + 8), (a1 + 32), a4);
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  if (v58 == 1)
  {
    std::mutex::unlock(v57);
  }

  if (v56)
  {
    sub_29A014BEC(v56);
  }
}

void sub_29AE6E5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a24)
  {
    sub_29A014BEC(a24);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a32)
  {
    sub_29A014BEC(a32);
  }

  a12 = (v32 - 160);
  sub_29A0176E4(&a12);
  sub_29ADCA62C(v32 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE6E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A90D704(a1, a2, a3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateAdjacency(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2)
{
  sub_29A0ECEEC(&v28, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateAdjacency(const HdStResourceRegistrySharedPtr &)");
  if (*(a1 + 464))
  {
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterVertexAdjacencyBuilder(*a2, *(a1 + 496), v23);
    if (v27 == 1)
    {
      sub_29AE753D4(&v21);
      pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder::GetSharedVertexAdjacencyBuilderComputation(v21, *(a1 + 464), &v19);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(*a2, &v19);
      v14 = v21;
      sub_29AE754EC(&v14, &v19, &v16);
      v4 = v16;
      v18 = v16;
      v16 = 0uLL;
      v17 = 0;
      (*(*v18.n128_u64[0] + 24))(v18.n128_u64[0], &v16, v4);
      v5 = *a2;
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v6)
      {
        v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(v5, v6 + 616, &v16, 8u, &v14);
      v7 = v21;
      v9 = v14;
      v8 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v7 + 7);
      *(v7 + 6) = v9;
      *(v7 + 7) = v8;
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(*a2, &v14, &v18);
      sub_29AE6E9C0(v23, &v21);
      if (v15)
      {
        sub_29A014BEC(v15);
      }

      v14 = &v16;
      sub_29ABC6FA0(&v14);
      if (v18.n128_u64[1])
      {
        sub_29A014BEC(v18.n128_u64[1]);
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if (v22)
      {
        sub_29A014BEC(v22);
      }
    }

    v12 = v23[1];
    v11 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 488);
    *(a1 + 480) = v12;
    *(a1 + 488) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (v26 == 1)
    {
      std::mutex::unlock(v25);
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  if (v28)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v29, v28);
  }
}

void sub_29AE6E930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  a9 = &a11;
  sub_29ABC6FA0(&a9);
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  sub_29ADCA62C(&a21);
  sub_29A0E9CEC(v21 - 56);
  _Unwind_Resume(a1);
}

void sub_29AE6E9C0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AE7563C(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AE6EA78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, int *a5, uint64_t a6, int a7, int *a8, char a9)
{
  v253 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v244, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)");
  v205 = a2[1];
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v248, v205);
  v243 = v248;
  if (v248.n128_u64[1])
  {
    atomic_fetch_add_explicit((v248.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    if (v248.n128_u64[1])
    {
      sub_29A014BEC(v248.n128_u64[1]);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a6, a2, 3, a4, *a5, a7, (*(*(a1 + 464) + 392) - *(*(a1 + 464) + 384)) >> 6, &v241);
  v17 = v241;
  v16 = v242;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a6, a2, 2, a4, *a5, a7, (*(*(a1 + 464) + 392) - *(*(a1 + 464) + 384)) >> 6, &v239);
  sub_29AE756E4(&v241, v242, v239, v240, (v240 - v239) >> 5);
  (*(*a2 + 368))(v238, a2, a1 + 376, 3);
  v235 = 0;
  v236 = 0;
  v237 = 0;
  v233 = 0;
  v234 = 0;
  v229 = 0;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  __src = 0;
  v227 = 0;
  v228 = 0;
  sub_29A039314(&v235, (v242 - v241) >> 5);
  v18 = *(a1 + 464);
  if (!v18)
  {
    NumPoints = 0;
    goto LABEL_8;
  }

  NumPoints = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumPoints(v18);
  v19 = *(a1 + 464);
  if (!v19)
  {
LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v20 = *(v19 + 488) > 0;
LABEL_9:
  pxrInternal__aapl__pxrReserved__::HdSt_GetExtComputationPrimvarsComputations(a1 + 376, a2, v238, *a8, &v235, &v232, &v229, &__src);
  v248 = 0uLL;
  v249 = 0;
  sub_29ADE0D9C(&v248, v232, v233, (v233 - v232) >> 4);
  v210 = a2;
  v209 = v20;
  v204 = a3;
  v206 = a6;
  v250 = 0;
  p_src = 0;
  v252 = 0;
  sub_29ADE0D9C(&v250, v235, v236, (v236 - v235) >> 4);
  v21 = 0;
  v22 = 0;
  v208 = ((v16 - v17) >> 5) - 1;
  v23 = (a1 + 516);
  do
  {
    v25 = v248.n128_u64[v22];
    v24 = v248.n128_u64[v22 + 1];
    while (v25 != v24)
    {
      v26 = (*(**v25 + 16))();
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v27)
      {
        v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v27 + 59) ^ *v26) <= 7)
      {
        *v23 = (*(**v25 + 56))();
        v21 = 1;
      }

      v28 = (*(**v25 + 16))();
      v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v29)
      {
        v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v29 + 54) ^ *v28) <= 7)
      {
        *(a1 + 520) = 3;
        *(a1 + 528) |= 0x20u;
      }

      v25 += 16;
    }

    v22 += 3;
  }

  while (v22 != 6);
  for (i = 24; i != -24; i -= 24)
  {
    v223 = (&v248 + i);
    sub_29A0176E4(&v223);
  }

  v31 = pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(a1, v205, (a1 + 464));
  v32 = v232;
  v33 = v233;
  while (v32 != v33)
  {
    sub_29AE7095C(v32, (a1 + 464), a1 + 376, v209, v31, &v243, &__src, 0);
    v32 += 16;
  }

  v34 = v235;
  v35 = v236;
  while (v34 != v35)
  {
    sub_29AE7095C(v34, (a1 + 464), a1 + 376, v209, v31, &v243, &__src, 0);
    v34 += 16;
  }

  v207 = v31;
  v223 = 0;
  v224 = 0;
  v225 = 0;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v243.n128_u64[0]);
  IsPrimvarDirty = (*(*Hgi + 200))(Hgi);
  v222 = *(IsPrimvarDirty + 49) & 1;
  v40 = v241;
  v39 = v242;
  if (v241 != v242)
  {
    v41 = 0;
    while (1)
    {
      IsPrimvarDirty = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a8, (a1 + 376), v40, v38);
      if ((IsPrimvarDirty & 1) == 0)
      {
        goto LABEL_99;
      }

      (*(*v210 + 120))(&v246);
      if (!*(&v246 + 1))
      {
        goto LABEL_98;
      }

      LODWORD(__p[0]) = 1;
      sub_29AE75AF8(v40, &v246, __p, &v222, &v248);
      v217 = v248;
      if (!(*(*v248.n128_u64[0] + 64))(v248.n128_u64[0], v248))
      {
        v42 = (*(*v217.n128_u64[0] + 16))(v217.n128_u64[0]);
        v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v43)
        {
          v43 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v43 + 59) ^ *v42) >= 8)
        {
          sub_29AE70BB0(&v223, v40);
LABEL_94:
          v62 = 0;
          v63 = 11;
          goto LABEL_95;
        }
      }

      if (NumPoints > (*(*v217.n128_u64[0] + 64))(v217.n128_u64[0]))
      {
        v248.n128_u64[0] = "hdSt/mesh.cpp";
        v248.n128_u64[1] = "_PopulateVertexPrimvars";
        v249 = 1404;
        v250 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
        LOBYTE(p_src) = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
        v45 = *v40 & 0xFFFFFFFFFFFFFFF8;
        if (v45)
        {
          v46 = (v45 + 16);
          if (*(v45 + 39) < 0)
          {
            v46 = *v46;
          }
        }

        else
        {
          v46 = "";
        }

        v50 = (*(*v217.n128_u64[0] + 64))(v217.n128_u64[0]);
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Vertex primvar %s has only %d elements, while its topology expects at least %d elements. Skipping  primvar update.", v51, v52, v46, v50, NumPoints);
        v54 = __p;
        if (v221 < 0)
        {
          v54 = __p[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v248, "Invalid Hydra prim '%s': %s", v53, Text, v54);
        if (SHIBYTE(v221) < 0)
        {
          operator delete(__p[0]);
        }

        v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v55)
        {
          v55 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v55 + 59) ^ *v40) <= 7)
        {
          v56 = *(v206 + 13);
          v248 = 0uLL;
          pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Set((a1 + 32), v56, &v248);
          if (v248.n128_u64[1])
          {
            sub_29A014BEC(v248.n128_u64[1]);
          }

          v248.n128_u64[0] = "hdSt/mesh.cpp";
          v248.n128_u64[1] = "_PopulateVertexPrimvars";
          v249 = 1415;
          v250 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
          LOBYTE(p_src) = 0;
          v57 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
          pxrInternal__aapl__pxrReserved__::TfStringPrintf("Skipping prim because its points data is insufficient.", v58, v59);
          v61 = __p;
          if (v221 < 0)
          {
            v61 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v248, "Invalid Hydra prim '%s': %s", v60, v57, v61);
          if (SHIBYTE(v221) < 0)
          {
            operator delete(__p[0]);
          }

          v62 = 0;
          v63 = 1;
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      if (NumPoints < (*(*v217.n128_u64[0] + 64))(v217.n128_u64[0]))
      {
        v248.n128_u64[0] = "hdSt/mesh.cpp";
        v248.n128_u64[1] = "_PopulateVertexPrimvars";
        v249 = 1427;
        v250 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
        LOBYTE(p_src) = 0;
        v47 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
        v48 = *v40 & 0xFFFFFFFFFFFFFFF8;
        if (v48)
        {
          v49 = (v48 + 16);
          if (*(v48 + 39) < 0)
          {
            v49 = *v49;
          }
        }

        else
        {
          v49 = "";
        }

        v64 = (*(*v217.n128_u64[0] + 64))(v217.n128_u64[0]);
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Vertex primvar %s has %d elements, while its topology references only upto element index %d.", v65, v66, v49, v64, NumPoints);
        v68 = __p;
        if (v221 < 0)
        {
          v68 = __p[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v248, "Invalid Hydra prim '%s': %s", v67, v47, v68);
        if (SHIBYTE(v221) < 0)
        {
          operator delete(__p[0]);
        }

        v69 = v217;
        if (v217.n128_u64[1])
        {
          atomic_fetch_add_explicit((v217.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::HdVtBufferSource::Truncate(v69.n128_u64[0], NumPoints);
        if (v69.n128_u64[1])
        {
          sub_29A014BEC(v69.n128_u64[1]);
        }
      }

      v70 = (*(*v217.n128_u64[0] + 16))(v217.n128_u64[0]);
      v71 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v71)
      {
        v71 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v71 + 54) ^ *v70) <= 7)
      {
        break;
      }

      v74 = (*(*v217.n128_u64[0] + 16))(v217.n128_u64[0]);
      v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v75)
      {
        v75 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v75 + 20) ^ *v74) <= 7)
      {
        v73 = 128;
LABEL_82:
        *(a1 + 528) |= v73;
      }

      v76 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v76)
      {
        v76 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v76 + 59) ^ *v40) <= 7)
      {
        if (v21)
        {
          v248.n128_u64[0] = "hdSt/mesh.cpp";
          v248.n128_u64[1] = "_PopulateVertexPrimvars";
          v249 = 1448;
          v250 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
          LOBYTE(p_src) = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v248, "!isPointsComputedPrimvar", 0) & 1) == 0)
          {
            v248.n128_u64[0] = "hdSt/mesh.cpp";
            v248.n128_u64[1] = "_PopulateVertexPrimvars";
            v249 = 1451;
            v250 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
            LOBYTE(p_src) = 0;
            v77 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
            pxrInternal__aapl__pxrReserved__::TfStringPrintf("'points' specified as both computed and authored primvar. Skipping authored value.", v78, v79);
            v81 = __p;
            if (v221 < 0)
            {
              v81 = __p[0];
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v248, "Invalid Hydra prim '%s': %s", v80, v77, v81);
            if (SHIBYTE(v221) < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_94;
          }
        }

        *v23 = (*(*v217.n128_u64[0] + 56))(v217.n128_u64[0]);
      }

      sub_29AE7095C(&v217, (a1 + 464), a1 + 376, v209, v207, &v243, &__src, v41 > v208);
      sub_29A017F80(&v235, &v217);
      v63 = 0;
      v62 = 1;
LABEL_95:
      if (v217.n128_u64[1])
      {
        sub_29A014BEC(v217.n128_u64[1]);
      }

      if (v62)
      {
LABEL_98:
        IsPrimvarDirty = sub_29A186B14(&v246);
        goto LABEL_99;
      }

      IsPrimvarDirty = sub_29A186B14(&v246);
      if (v63 != 11 && v63)
      {
        goto LABEL_288;
      }

LABEL_99:
      v40 = (v40 + 32);
      ++v41;
      if (v40 == v39)
      {
        goto LABEL_104;
      }
    }

    if (v41 > v208)
    {
      v72 = 2;
    }

    else
    {
      v72 = 3;
    }

    *(a1 + 520) = v72;
    v73 = 32;
    goto LABEL_82;
  }

LABEL_104:
  v82 = v223;
  v83 = v224;
  if (v223 != v224)
  {
    v84 = v242;
    do
    {
      v85 = v241;
      if (v241 != v84)
      {
        while ((*v85 ^ *v82) > 7 || (v85[2] ^ v82[2]) > 7 || *(v85 + 2) != *(v82 + 2))
        {
          v85 += 4;
          if (v85 == v84)
          {
            v85 = v84;
            break;
          }
        }
      }

      if (v84 != v85)
      {
        IsPrimvarDirty = sub_29AE75CE8(&v248, (v85 + 4), v84, v85);
        v84 = v86;
        for (j = v242; j != v86; j -= 4)
        {
          v88 = *(j - 2);
          if ((v88 & 7) != 0)
          {
            atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v90 = *(j - 4);
          v89 = v90;
          if ((v90 & 7) != 0)
          {
            atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        v242 = v86;
      }

      v82 += 4;
    }

    while (v82 != v83);
  }

  v219 = 0;
  if ((a9 & 1) != 0 && (*a8 & 0x1000000) != 0)
  {
    *a8 &= ~0x1000000u;
    if (!*(a1 + 480))
    {
      v248.n128_u64[0] = "hdSt/mesh.cpp";
      v248.n128_u64[1] = "_PopulateVertexPrimvars";
      v249 = 1484;
      v250 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
      LOBYTE(p_src) = 0;
      IsPrimvarDirty = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v248, "_vertexAdjacencyBuilder", 0);
    }

    IsEnabledPackedNormals = pxrInternal__aapl__pxrReserved__::HdStMesh::IsEnabledPackedNormals(IsPrimvarDirty);
    v92 = IsEnabledPackedNormals & ((v209 | v207) ^ 1);
    v217.n128_u8[0] = IsEnabledPackedNormals & ((v209 | v207) ^ 1);
    v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (v92 == 1)
    {
      if (!v93)
      {
        v93 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v94 = (v93 + 8);
    }

    else
    {
      if (!v93)
      {
        v93 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v94 = (v93 + 16);
    }

    sub_29A166F2C(&v219, v94);
    if (*v23 != -1)
    {
      __p[0] = *(a1 + 480);
      v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v95)
      {
        v95 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AE75D9C(__p, v95 + 472, &v219, (a1 + 516), &v217, &v248);
      v96 = v248;
      v97 = v227;
      if (v227 >= v228)
      {
        v99 = 0xAAAAAAAAAAAAAAABLL * ((v227 - __src) >> 3);
        v100 = v99 + 1;
        if (v99 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_29A00C9A4();
        }

        if (0x5555555555555556 * ((v228 - __src) >> 3) > v100)
        {
          v100 = 0x5555555555555556 * ((v228 - __src) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v228 - __src) >> 3) >= 0x555555555555555)
        {
          v101 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v101 = v100;
        }

        p_src = &__src;
        if (v101)
        {
          v102 = sub_29A012C48(&__src, v101);
        }

        else
        {
          v102 = 0;
        }

        v103 = &v102[24 * v99];
        *v103 = v96;
        if (v96.n128_u64[1])
        {
          atomic_fetch_add_explicit((v96.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        v104 = &v102[24 * v101];
        v103[1].n128_u32[0] = 2;
        v98 = &v103[1].n128_i8[8];
        v105 = v103 - (v227 - __src);
        memcpy(v105, __src, v227 - __src);
        v106 = __src;
        __src = v105;
        v107 = v228;
        v227 = v98;
        v228 = v104;
        v249 = v106;
        v250 = v107;
        v248.n128_u64[0] = v106;
        v248.n128_u64[1] = v106;
        sub_29A03D11C(&v248);
      }

      else
      {
        *v227 = v248.n128_u64[0];
        *(v97 + 1) = v96.n128_u64[1];
        if (v96.n128_u64[1])
        {
          atomic_fetch_add_explicit((v96.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        *(v97 + 4) = 2;
        v98 = v97 + 24;
      }

      v227 = v98;
      if (v209)
      {
        v108 = *(a1 + 464);
        v109 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v109)
        {
          v109 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdRefineComputationGPU(v108, v109 + 2, v243.n128_i64[0], 0, 0, __p);
        v110 = __p[0];
        if (__p[0])
        {
          v111 = v227;
          if (v227 >= v228)
          {
            v117 = 0xAAAAAAAAAAAAAAABLL * ((v227 - __src) >> 3);
            v118 = v117 + 1;
            if (v117 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_29A00C9A4();
            }

            if (0x5555555555555556 * ((v228 - __src) >> 3) > v118)
            {
              v118 = 0x5555555555555556 * ((v228 - __src) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v228 - __src) >> 3) >= 0x555555555555555)
            {
              v119 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v119 = v118;
            }

            p_src = &__src;
            if (v119)
            {
              v120 = sub_29A012C48(&__src, v119);
              v110 = __p[0];
            }

            else
            {
              v120 = 0;
            }

            v121 = &v120[24 * v117];
            *v121 = v110;
            v122 = __p[1];
            *(v121 + 1) = __p[1];
            if (v122)
            {
              atomic_fetch_add_explicit(v122 + 1, 1uLL, memory_order_relaxed);
            }

            v123 = &v120[24 * v119];
            *(v121 + 4) = 3;
            v113 = v121 + 24;
            v124 = &v121[-(v227 - __src)];
            memcpy(v124, __src, v227 - __src);
            v125 = __src;
            __src = v124;
            v126 = v228;
            v227 = v113;
            v228 = v123;
            v249 = v125;
            v250 = v126;
            v248.n128_u64[0] = v125;
            v248.n128_u64[1] = v125;
            sub_29A03D11C(&v248);
          }

          else
          {
            *v227 = __p[0];
            v112 = __p[1];
            *(v111 + 1) = __p[1];
            if (v112)
            {
              atomic_fetch_add_explicit(v112 + 1, 1uLL, memory_order_relaxed);
            }

            *(v111 + 4) = 3;
            v113 = v111 + 24;
          }

          v227 = v113;
        }

        v116 = __p[1];
        if (!__p[1])
        {
          goto LABEL_181;
        }
      }

      else
      {
        if (!v207)
        {
          goto LABEL_181;
        }

        v114 = *(a1 + 464);
        v115 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v115)
        {
          v115 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadrangulateComputationGPU(v114, v115 + 16, *v23, &v248);
        if (v248.n128_u64[0])
        {
          sub_29AE70BFC(&__src, &v248, &dword_29B7106C8);
        }

        v116 = v248.n128_u64[1];
        if (!v248.n128_u64[1])
        {
          goto LABEL_181;
        }
      }

      sub_29A014BEC(v116);
LABEL_181:
      if (v96.n128_u64[1])
      {
        sub_29A014BEC(v96.n128_u64[1]);
      }
    }
  }

  v127 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v206 + 24), *(v206 + 13));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v235, &__src, v127, *a8) & 1) == 0)
  {
    v128 = *a8;
    __p[0] = 0;
    __p[1] = 0;
    v221 = 0;
    v212 = v127;
    if ((v128 & 0x40) != 0)
    {
      v248 = 0uLL;
      v249 = 0;
      if (v219)
      {
        *&v246 = v219;
        if ((v219 & 7) != 0 && (atomic_fetch_add_explicit((v219 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v246 = v246 & 0xFFFFFFFFFFFFFFF8;
        }

        sub_29A5CC36C(&v248, &v246, &v246 + 1, 1uLL);
        if ((v246 & 7) != 0)
        {
          atomic_fetch_add_explicit((v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v129 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v129)
        {
          v129 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v130 = *(v129 + 1);
        *&v246 = v130;
        if ((v130 & 7) != 0 && (atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v246 = v246 & 0xFFFFFFFFFFFFFFF8;
        }

        v131 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v131)
        {
          v131 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v132 = *(v131 + 2);
        *(&v246 + 1) = v132;
        if ((v132 & 7) != 0 && (atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(&v246 + 1) &= 0xFFFFFFFFFFFFFFF8;
        }

        sub_29A5CC36C(&v248, &v246, &v247, 2uLL);
        for (k = 8; k != -8; k -= 8)
        {
          v134 = *(&v246 + k);
          if ((v134 & 7) != 0)
          {
            atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }
      }

      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v127, &v241, v238, &v248, (a1 + 376), &v246);
      sub_29AC1F70C(__p);
      *__p = v246;
      v221 = v247;
      v247 = 0;
      v246 = 0uLL;
      v217.n128_u64[0] = &v246;
      sub_29ABC6FA0(&v217);
      *&v246 = &v248;
      sub_29A124AB0(&v246);
    }

    v246 = 0uLL;
    v247 = 0;
    sub_29AE22748(&v235, &v246);
    sub_29AE22748(&v232, &v246);
    pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&__src, &v246);
    v217 = 0uLL;
    v218 = 0;
    v135 = sub_29ADE0D9C(&v217, v235, v236, (v236 - v235) >> 4);
    v136 = v232;
    v137 = v233;
    if (v232 != v233)
    {
      v138 = v217.n128_u64[1];
      do
      {
        if (v138 >= v218)
        {
          v140 = (v138 - v217.n128_u64[0]) >> 4;
          if ((v140 + 1) >> 60)
          {
            sub_29A00C9A4();
          }

          v141 = (v218 - v217.n128_u64[0]) >> 3;
          if (v141 <= v140 + 1)
          {
            v141 = v140 + 1;
          }

          if (v218 - v217.n128_u64[0] >= 0x7FFFFFFFFFFFFFF0)
          {
            v142 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v142 = v141;
          }

          p_src = &v217;
          if (v142)
          {
            v143 = sub_29A017BD4(&v217, v142);
          }

          else
          {
            v143 = 0;
          }

          v144 = &v143[16 * v140];
          v145 = *v136;
          *v144 = *v136;
          if (*(&v145 + 1))
          {
            atomic_fetch_add_explicit((*(&v145 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v146 = &v143[16 * v142];
          v138 = v144 + 16;
          v147 = &v144[-(v217.n128_u64[1] - v217.n128_u64[0])];
          memcpy(v147, v217.n128_u64[0], v217.n128_u64[1] - v217.n128_u64[0]);
          v148 = v217.n128_u64[0];
          v149 = v218;
          v217.n128_u64[0] = v147;
          v217.n128_u64[1] = v138;
          v218 = v146;
          v249 = v148;
          v250 = v149;
          v248.n128_u64[0] = v148;
          v248.n128_u64[1] = v148;
          v135 = sub_29A017C0C(&v248);
        }

        else
        {
          *v138 = *v136;
          v139 = *(v136 + 1);
          v138[1] = v139;
          if (v139)
          {
            atomic_fetch_add_explicit((v139 + 8), 1uLL, memory_order_relaxed);
          }

          v138 += 2;
        }

        v217.n128_u64[1] = v138;
        v136 += 16;
      }

      while (v136 != v137);
    }

    v216 = 0uLL;
    v150 = v212;
    if (pxrInternal__aapl__pxrReserved__::HdStIsEnabledSharedVertexPrimvar(v135))
    {
      if ((pxrInternal__aapl__pxrReserved__::HdStIsValidBAR(v212) & 1) == 0)
      {
        v156 = pxrInternal__aapl__pxrReserved__::HdStComputeSharedPrimvarId(*(a1 + 496), &v217, &__src);
        *(a1 + 504) = v156;
        v215.n128_u8[0] = 1;
        pxrInternal__aapl__pxrReserved__::HdStMesh::_GetSharedPrimvarRange(v156, &v246, __p, v212, &v215, &v243, &v248);
        v157 = v248;
        v248 = 0uLL;
        v158 = v216.n128_u64[1];
        v216 = v157;
        if (v158)
        {
          sub_29A014BEC(v158);
          if (v248.n128_u64[1])
          {
            sub_29A014BEC(v248.n128_u64[1]);
          }
        }

        if (v215.n128_u8[0])
        {
          if (sub_29ABCF8C0(26))
          {
            v159 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Allocated an immutable BAR (%p).\n", v160, v161, v159, v216.n128_u64[0]);
          }
        }

        else
        {
          if (sub_29ABCF8C0(26))
          {
            v162 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Found an immutable BAR (%p) for sharing.\n", v163, v164, v162, v216.n128_u64[0]);
          }

          v165 = v235;
          for (m = v236; m != v165; m -= 16)
          {
            v167 = *(m - 1);
            if (v167)
            {
              sub_29A014BEC(v167);
            }
          }

          v236 = v165;
          v168 = v227;
          v169 = __src;
          while (v168 != v169)
          {
            v170 = *(v168 - 2);
            if (v170)
            {
              sub_29A014BEC(v170);
            }

            v168 -= 24;
          }

          v227 = v169;
        }

        goto LABEL_272;
      }

      if ((*(**v212 + 32))())
      {
        v248 = 0uLL;
        v249 = 0;
        (*(**v212 + 144))(*v212, &v248);
        v151 = v246 != *(&v246 + 1) && pxrInternal__aapl__pxrReserved__::HdBufferSpec::IsSubset(&v246, &v248);
        if ((*(a1 + 528) & 0x40) != 0 || ((*a8 & 0x800000) == 0 ? (v171 = v151) : (v171 = 0), v171 || __p[0] != __p[1]))
        {
          v172 = (*(**v212 + 120))();
          *(a1 + 504) = 0;
          v173 = v243.n128_u64[0];
          v174 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v174)
          {
            v174 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            v150 = v212;
          }

          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v173, v174 + 520, v150, &v246, __p, v172 & 0xFFFFFFFE, &v215);
          v175 = v215;
          v215 = 0uLL;
          v176 = v216.n128_u64[1];
          v216 = v175;
          if (v176)
          {
            sub_29A014BEC(v176);
            if (v215.n128_u64[1])
            {
              sub_29A014BEC(v215.n128_u64[1]);
            }
          }

          if (sub_29ABCF8C0(26))
          {
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Transitioning from immutable to mutable BAR\n", v177, v178);
          }
        }

        else if (v246 == *(&v246 + 1))
        {
          v197 = *v212;
          v196 = v212[1];
          if (v196)
          {
            atomic_fetch_add_explicit((v196 + 8), 1uLL, memory_order_relaxed);
          }

          v198 = v216.n128_u64[1];
          v216.n128_u64[0] = v197;
          v216.n128_u64[1] = v196;
          if (v198)
          {
            sub_29A014BEC(v198);
          }
        }

        else
        {
          v190 = pxrInternal__aapl__pxrReserved__::HdStComputeSharedPrimvarId(*(a1 + 504), &v217, &__src);
          *(a1 + 504) = v190;
          v214 = 1;
          pxrInternal__aapl__pxrReserved__::HdStMesh::_GetSharedPrimvarRange(v190, &v246, __p, v212, &v214, &v243, &v215);
          v191 = v215;
          v215 = 0uLL;
          v192 = v216.n128_u64[1];
          v216 = v191;
          if (v192)
          {
            sub_29A014BEC(v192);
            if (v215.n128_u64[1])
            {
              sub_29A014BEC(v215.n128_u64[1]);
            }
          }

          if ((v214 & 1) == 0)
          {
            v193 = v235;
            for (n = v236; n != v193; n -= 16)
            {
              v195 = *(n - 1);
              if (v195)
              {
                sub_29A014BEC(v195);
              }
            }

            v236 = v193;
            v199 = v227;
            v200 = __src;
            while (v199 != v200)
            {
              v201 = *(v199 - 2);
              if (v201)
              {
                sub_29A014BEC(v201);
              }

              v199 -= 24;
            }

            v227 = v200;
          }

          if (sub_29ABCF8C0(26))
          {
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Migrating from immutable to another immutable BAR\n", v202, v203);
          }
        }

        v215.n128_u64[0] = &v248;
        sub_29ABC6FA0(&v215);
LABEL_272:
        pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v216, *(v206 + 13), (a1 + 32), v204);
        if (v235 == v236 && __src == v227 || (v179 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v206 + 24), *(v206 + 13)), ((*(**v179 + 16))(*v179) & 1) != 0) || (v248.n128_u64[0] = "hdSt/mesh.cpp", v248.n128_u64[1] = "_PopulateVertexPrimvars", v249 = 1729, v250 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)", LOBYTE(p_src) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v248, "drawItem->GetVertexPrimvarRange()->IsValid()", 0) & 1) != 0))
        {
          if (v235 != v236)
          {
            v180 = v243.n128_u64[0];
            v181 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v206 + 24), *(v206 + 13));
            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v180, v181, &v235);
          }

          v182 = __src;
          v183 = v227;
          if (__src != v227)
          {
            v184 = v243.n128_u64[0];
            do
            {
              v185 = *(v182 + 4);
              v186 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v206 + 24), *(v206 + 13));
              pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v184, v186, v182, v185);
              v182 += 24;
            }

            while (v182 != v183);
          }

          v187 = v229;
          v188 = v230;
          if (v229 != v230)
          {
            v189 = v243.n128_u64[0];
            do
            {
              pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v189, v187);
              v187 += 2;
            }

            while (v187 != v188);
          }
        }

        if (v216.n128_u64[1])
        {
          sub_29A014BEC(v216.n128_u64[1]);
        }

        v248.n128_u64[0] = &v217;
        sub_29A0176E4(&v248);
        v248.n128_u64[0] = &v246;
        sub_29ABC6FA0(&v248);
        v248.n128_u64[0] = __p;
        sub_29ABC6FA0(&v248);
        goto LABEL_286;
      }

      v152 = v243.n128_u64[0];
      v153 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v153)
      {
        v153 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        v150 = v212;
      }
    }

    else
    {
      v152 = v243.n128_u64[0];
      v153 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v153)
      {
        v153 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v152, v153 + 520, v150, &v246, __p, 0x18u, &v248);
    v154 = v248;
    v248 = 0uLL;
    v155 = v216.n128_u64[1];
    v216 = v154;
    if (v155)
    {
      sub_29A014BEC(v155);
      if (v248.n128_u64[1])
      {
        sub_29A014BEC(v248.n128_u64[1]);
      }
    }

    goto LABEL_272;
  }

LABEL_286:
  if ((v219 & 7) != 0)
  {
    atomic_fetch_add_explicit((v219 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_288:
  v248.n128_u64[0] = &v223;
  sub_29ABEE9FC(&v248);
  v248.n128_u64[0] = &__src;
  sub_29A03CE34(&v248);
  v248.n128_u64[0] = &v229;
  sub_29A0176E4(&v248);
  v248.n128_u64[0] = &v232;
  sub_29A0176E4(&v248);
  v248.n128_u64[0] = &v235;
  sub_29A0176E4(&v248);
  v248.n128_u64[0] = v238;
  sub_29ABF15A8(&v248);
  v248.n128_u64[0] = &v239;
  sub_29ABEE9FC(&v248);
  v248.n128_u64[0] = &v241;
  sub_29ABEE9FC(&v248);
  if (v243.n128_u64[1])
  {
    sub_29A014BEC(v243.n128_u64[1]);
  }

  if (v244)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v245, v244);
  }
}

void sub_29AE705D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *****__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void ****a40, uint64_t a41, uint64_t a42, void ***a43, uint64_t a44, uint64_t a45, void ******a46, uint64_t a47, uint64_t a48, void *****a49, uint64_t a50, uint64_t a51, void ****a52, uint64_t a53, uint64_t a54, void ***a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v65 + 200);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v65 + 200) = v66 - 160;
  sub_29A124AB0((v66 - 192));
  *(v65 + 200) = &__p;
  sub_29ABC6FA0((v66 - 192));
  if ((a32 & 7) != 0)
  {
    atomic_fetch_add_explicit((a32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a40;
  sub_29ABEE9FC(&__p);
  a40 = &a43;
  sub_29A03CE34(&a40);
  a43 = &a46;
  sub_29A0176E4(&a43);
  a46 = &a49;
  sub_29A0176E4(&a46);
  a49 = &a52;
  sub_29A0176E4(&a49);
  a52 = &a55;
  sub_29ABF15A8(&a52);
  a55 = &a58;
  sub_29ABEE9FC(&a55);
  a58 = (v66 - 248);
  sub_29ABEE9FC(&a58);
  if (a65)
  {
    sub_29A014BEC(a65);
  }

  sub_29A0E9CEC(v66 - 208);
  _Unwind_Resume(a1);
}

void sub_29AE7095C(uint64_t a1, void **a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t a7, int a8)
{
  if (a4)
  {

    sub_29AE74CEC(a1, a2, a6, a7, a8, 0);
  }

  else if (a5)
  {
    if (a7 || (v30 = a2, v31 = sub_29B2CA578(v34), a2 = v30, (v31 & 1) != 0))
    {
      v10 = *a2;
      v11 = (*(**a1 + 16))();
      v12 = (*(**a1 + 56))();
      pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadrangulateComputationGPU(v10, v11, v12, &v32);
      v13 = v32;
      if (v32)
      {
        v14 = *(a7 + 8);
        v15 = *(a7 + 16);
        if (v14 >= v15)
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a7) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_29A00C9A4();
          }

          v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a7) >> 3);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x555555555555555)
          {
            v21 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v21 = v19;
          }

          v35[4] = a7;
          if (v21)
          {
            v22 = sub_29A012C48(a7, v21);
            v13 = v32;
          }

          else
          {
            v22 = 0;
          }

          v23 = v33;
          v24 = &v22[24 * v18];
          *v24 = v13;
          *(v24 + 1) = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = &v22[24 * v21];
          *(v24 + 4) = 1;
          v17 = v24 + 24;
          v26 = *(a7 + 8) - *a7;
          v27 = &v24[-v26];
          memcpy(&v24[-v26], *a7, v26);
          v28 = *a7;
          *a7 = v27;
          *(a7 + 8) = v17;
          v29 = *(a7 + 16);
          *(a7 + 16) = v25;
          v35[2] = v28;
          v35[3] = v29;
          v35[0] = v28;
          v35[1] = v28;
          sub_29A03D11C(v35);
        }

        else
        {
          v16 = v33;
          *v14 = v32;
          *(v14 + 8) = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *(v14 + 16) = 1;
          v17 = (v14 + 24);
        }

        *(a7 + 8) = v17;
      }

      if (v33)
      {
        sub_29A014BEC(v33);
      }
    }
  }
}

void sub_29AE70B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE70BB0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AE75BD8(a1, a2);
  }

  else
  {
    sub_29ACCD2E8(a1, *(a1 + 8), a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

char *sub_29AE70BFC(const void **a1, void *a2, _DWORD *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    v23[4] = a1;
    if (v13)
    {
      v14 = sub_29A012C48(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = a2[1];
    v16 = &v14[24 * v10];
    *v16 = *a2;
    *(v16 + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = &v14[24 * v13];
    *(v16 + 4) = *a3;
    v9 = v16 + 24;
    v18 = a1[1] - *a1;
    v19 = &v16[-v18];
    memcpy(&v16[-v18], *a1, v18);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v9;
    v21 = a1[2];
    a1[2] = v17;
    v23[2] = v20;
    v23[3] = v21;
    v23[0] = v20;
    v23[1] = v20;
    sub_29A03D11C(v23);
  }

  else
  {
    v8 = a2[1];
    *v6 = *a2;
    *(v6 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(v6 + 4) = *a3;
    v9 = v6 + 24;
  }

  a1[1] = v9;
  return v9 - 24;
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_GetSharedPrimvarRange(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X4>, _BYTE *a5@<X5>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a6@<X6>, uint64_t *a7@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterPrimvarRange(*a6, a1, v20);
  *a7 = 0;
  a7[1] = 0;
  if (v24 == 1)
  {
    v13 = *a6;
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v14)
    {
      v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformImmutableBufferArrayRange(v13, v14 + 520, a4, a2, a3, 24, &v19);
    v15 = v19;
    v19 = 0uLL;
    v16 = a7[1];
    *a7 = v15;
    if (v16)
    {
      sub_29A014BEC(v16);
      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }
    }

    sub_29AE227C0(v20, a7);
    if (a5)
    {
LABEL_8:
      *a5 = v24;
    }
  }

  else
  {
    v18 = v20[1];
    v17 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a7 = v18;
    a7[1] = v17;
    if (a5)
    {
      goto LABEL_8;
    }
  }

  if (v23 == 1)
  {
    std::mutex::unlock(v22);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }
}

void sub_29AE70E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 8);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  sub_29ADCA62C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, int *a5, uint64_t a6, int a7, unsigned int *a8)
{
  v98 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v88, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a6, a2, 4, a4, *a5, a7, (*(*(a1 + 464) + 392) - *(*(a1 + 464) + 384)) >> 6, &v86);
  if (v86 != v87 || *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16)))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v94, a2[1]);
    v85 = v94;
    if (v94.n128_u64[1])
    {
      atomic_fetch_add_explicit((v94.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      if (v94.n128_u64[1])
      {
        sub_29A014BEC(v94.n128_u64[1]);
      }
    }

    v82 = 0;
    v83 = 0;
    v84 = 0;
    sub_29A039314(&v82, (v87 - v86) >> 5);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    RefineLevelForDesc = pxrInternal__aapl__pxrReserved__::HdStMesh::_GetRefineLevelForDesc(a1, a5);
    NumFaceVaryings = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaceVaryings(*(a1 + 464));
    v18 = *(*(a1 + 464) + 152);
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 &= 0xFFFFFFFFFFFFFFF8;
    }

    v71 = v18;
    if (RefineLevelForDesc < 1)
    {
      v20 = 0;
    }

    else
    {
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v19)
      {
        v19 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v20 = (v18 ^ *v19) > 7;
    }

    v21 = pxrInternal__aapl__pxrReserved__::HdStMesh::_UseQuadIndices(a1, a2[1], (a1 + 464));
    if (RefineLevelForDesc < 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v21;
    }

    if ((v23 & 1) == 0)
    {
      v21 = !pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(*(a1 + 464), v22);
    }

    v72 = v21;
    v70 = a3;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v85.n128_u64[0]);
    v75 = *((*(*Hgi + 200))(Hgi) + 49) & 1;
    v27 = v86;
    v26 = v87;
    if (v86 != v87)
    {
      while (!pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a8, (a1 + 376), v27, v25))
      {
LABEL_70:
        v27 += 4;
        if (v27 == v26)
        {
          goto LABEL_71;
        }
      }

      *(&v90 + 1) = 0;
      v28 = v20 & v27[3];
      if (v28 == 1)
      {
        sub_29A19D6E4(&v94, 0);
        (*(*a2 + 16))(&v92, a2, a1 + 376, v27, &v94);
        sub_29A18606C(&v90, &v92);
        sub_29A186B14(&v92);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      (*(*a2 + 15))(&v94, a2, a1 + 376, v27);
      sub_29A18606C(&v90, &v94);
      sub_29A186B14(&v94);
      if (!*(&v90 + 1))
      {
LABEL_69:
        sub_29A186B14(&v90);
        goto LABEL_70;
      }

      LODWORD(v92) = 1;
      sub_29AE75AF8(v27, &v90, &v92, &v75, &v94);
      v74 = v94;
      v29 = v94.n128_u64[0];
      if ((v28 & 1) == 0)
      {
        if (!(*(*v94.n128_u64[0] + 64))(v94.n128_u64[0], v94))
        {
          sub_29AE70BB0(&v76, v27);
          goto LABEL_67;
        }

        v29 = v74.n128_u64[0];
      }

      if (NumFaceVaryings == (*(*v29 + 64))(v29))
      {
        v30 = 1;
      }

      else
      {
        v30 = v28;
      }

      if ((v30 & 1) == 0)
      {
        v94.n128_u64[0] = "hdSt/mesh.cpp";
        v94.n128_u64[1] = "_PopulateFaceVaryingPrimvars";
        v95 = 1842;
        v96 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *)";
        v97 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
        v35 = (*(*v74.n128_u64[0] + 64))(v74.n128_u64[0]);
        v38 = *v27 & 0xFFFFFFFFFFFFFFF8;
        if (v38)
        {
          v39 = (v38 + 16);
          if (*(v38 + 39) < 0)
          {
            v39 = *v39;
          }
        }

        else
        {
          v39 = "";
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("# of facevaryings mismatch (%d != %d) for primvar %s", v36, v37, v35, NumFaceVaryings, v39, v70);
        v44 = &v92;
        if (v93 < 0)
        {
          v44 = v92;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v94, "Invalid Hydra prim '%s': %s", v43, Text, v44);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92);
        }

        goto LABEL_67;
      }

      v31 = (*(*v74.n128_u64[0] + 16))(v74.n128_u64[0]);
      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v32)
      {
        v32 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v32 + 54) ^ *v31) > 7)
      {
        v40 = (*(*v74.n128_u64[0] + 16))(v74.n128_u64[0]);
        v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v41)
        {
          v41 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v41 + 20) ^ *v40) > 7)
        {
LABEL_43:
          if (v20)
          {
            v42 = sub_29AE71A7C(*(a1 + 536), v27);
            if (v42 < 0)
            {
LABEL_67:
              if (v74.n128_u64[1])
              {
                sub_29A014BEC(v74.n128_u64[1]);
              }

              goto LABEL_69;
            }
          }

          else
          {
            v42 = 0;
          }

          v73 = v74;
          if (v74.n128_u64[1])
          {
            atomic_fetch_add_explicit((v74.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
          }

          if (v20)
          {
            sub_29AE74CEC(&v73, (a1 + 464), &v85, &v79, 2, v42);
          }

          else
          {
            if (v72)
            {
              pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadrangulateFaceVaryingComputation(*(a1 + 464), &v94);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetTriangulateFaceVaryingComputation(*(a1 + 464), &v94);
            }

            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v85.n128_i64[0], &v73);
            v45 = v94;
            v94 = 0uLL;
            v46 = v73.n128_u64[1];
            v73 = v45;
            if (v46)
            {
              sub_29A014BEC(v46);
              if (v94.n128_u64[1])
              {
                sub_29A014BEC(v94.n128_u64[1]);
              }
            }
          }

          v47 = v73;
          v73 = 0uLL;
          v48 = v74.n128_u64[1];
          v74 = v47;
          if (v48)
          {
            sub_29A014BEC(v48);
            if (v73.n128_u64[1])
            {
              sub_29A014BEC(v73.n128_u64[1]);
            }
          }

          sub_29A017F80(&v82, &v74);
          goto LABEL_67;
        }

        v33 = 128;
      }

      else
      {
        *(a1 + 520) = 4;
        v33 = 32;
      }

      *(a1 + 528) |= v33;
      goto LABEL_43;
    }

LABEL_71:
    v49 = v76;
    v50 = v77;
    if (v76 != v77)
    {
      v51 = v87;
      do
      {
        v52 = v86;
        if (v86 != v51)
        {
          while ((*v52 ^ *v49) > 7 || (v52[2] ^ *(v49 + 16)) > 7 || *(v52 + 2) != *(v49 + 8))
          {
            v52 += 4;
            if (v52 == v51)
            {
              v52 = v51;
              break;
            }
          }
        }

        if (v51 != v52)
        {
          sub_29AE75CE8(&v94, (v52 + 4), v51, v52);
          v51 = v53;
          for (i = v87; i != v53; i -= 4)
          {
            v55 = *(i - 2);
            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v57 = *(i - 4);
            v56 = v57;
            if ((v57 & 7) != 0)
            {
              atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          v87 = v53;
        }

        v49 += 32;
      }

      while (v49 != v50);
    }

    v58 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16));
    if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v82, &v79, v58, *a8) & 1) == 0)
    {
      v59 = *a8;
      v92 = 0uLL;
      v93 = 0;
      if ((v59 & 0x40) != 0)
      {
        v94 = 0uLL;
        v95 = 0;
        pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v58, &v86, &v94, (a1 + 376), &v90);
        sub_29AC1F70C(&v92);
        v92 = v90;
        v93 = v91;
        v91 = 0;
        v90 = 0uLL;
        v74.n128_u64[0] = &v90;
        sub_29ABC6FA0(&v74);
        *&v90 = &v94;
        sub_29A124AB0(&v90);
      }

      v90 = 0uLL;
      v91 = 0;
      sub_29AE22748(&v82, &v90);
      pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&v79, &v90);
      v60 = v85.n128_u64[0];
      v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v61)
      {
        v61 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v60, v61 + 520, v58, &v90, &v92, 8u, &v74);
      pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v74, *(a6 + 16), (a1 + 32), v70);
      if (v82 == v83 && v79 == v80 || (v62 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16)), ((*(**v62 + 16))(*v62) & 1) != 0) || (v94.n128_u64[0] = "hdSt/mesh.cpp", v94.n128_u64[1] = "_PopulateFaceVaryingPrimvars", v95 = 1919, v96 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateFaceVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *)", v97 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v94, "drawItem->GetFaceVaryingPrimvarRange()->IsValid()", 0) & 1) != 0))
      {
        if (v82 != v83)
        {
          v63 = v85.n128_u64[0];
          v64 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16));
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v63, v64, &v82);
        }

        v65 = v79;
        v66 = v80;
        if (v79 != v80)
        {
          v67 = v85.n128_u64[0];
          do
          {
            v68 = v65[4];
            v69 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 16));
            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v67, v69, v65, v68);
            v65 += 6;
          }

          while (v65 != v66);
        }
      }

      if (v74.n128_u64[1])
      {
        sub_29A014BEC(v74.n128_u64[1]);
      }

      v94.n128_u64[0] = &v90;
      sub_29ABC6FA0(&v94);
      v94.n128_u64[0] = &v92;
      sub_29ABC6FA0(&v94);
    }

    v94.n128_u64[0] = &v76;
    sub_29ABEE9FC(&v94);
    if ((v71 & 7) != 0)
    {
      atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v94.n128_u64[0] = &v79;
    sub_29A03CE34(&v94);
    v94.n128_u64[0] = &v82;
    sub_29A0176E4(&v94);
    if (v85.n128_u64[1])
    {
      sub_29A014BEC(v85.n128_u64[1]);
    }
  }

  v94.n128_u64[0] = &v86;
  sub_29ABEE9FC(&v94);
  if (v88)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v89, v88);
  }
}

void sub_29AE718B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, std::__shared_weak_count *a18, uint64_t a19, void ****a20, uint64_t a21, uint64_t a22, void ***a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  a17 = (v34 - 208);
  sub_29ABC6FA0(&a17);
  *(v34 - 208) = v34 - 176;
  sub_29ABC6FA0((v34 - 208));
  *(v34 - 176) = &a20;
  sub_29ABEE9FC((v34 - 176));
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a20 = &a23;
  sub_29A03CE34(&a20);
  v36 = a30;
  a23 = &a26;
  sub_29A0176E4(&a23);
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  a26 = &a31;
  sub_29ABEE9FC(&a26);
  sub_29A0E9CEC(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE71A7C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = v3 >> 6;
  if ((v3 >> 6) <= 1)
  {
    v5 = 1;
  }

  while (1)
  {
    v6 = v2 + (result << 6);
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    if (v7 != v8)
    {
      while ((*v7 ^ *a2) >= 8)
      {
        if (++v7 == v8)
        {
          goto LABEL_9;
        }
      }
    }

    if (v7 != v8)
    {
      return result;
    }

LABEL_9:
    if (++result == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, int *a5, uint64_t a6, int a7, int *a8, char a9)
{
  v108 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v98, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v100, a2[1]);
  v17 = v100;
  if (v100.n128_u64[1])
  {
    atomic_fetch_add_explicit((v100.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    if (v100.n128_u64[1])
    {
      sub_29A014BEC(v100.n128_u64[1]);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a6, a2, 1, a4, *a5, a7, (*(*(a1 + 464) + 392) - *(*(a1 + 464) + 384)) >> 6, &v96);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  sub_29A039314(&v93, (v97 - v96) >> 5);
  v18 = *(a1 + 464);
  if (v18)
  {
    LODWORD(v18) = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(v18);
  }

  v81 = a3;
  v92 = v18;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v17.n128_u64[0]);
  IsPrimvarDirty = (*(*Hgi + 200))(Hgi);
  v88 = *(IsPrimvarDirty + 49) & 1;
  v23 = v96;
  v22 = v97;
  if (v96 != v97)
  {
    while (1)
    {
      IsPrimvarDirty = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a8, (a1 + 376), v23, v21);
      if (IsPrimvarDirty)
      {
        break;
      }

LABEL_33:
      v23 = (v23 + 32);
      if (v23 == v22)
      {
        goto LABEL_34;
      }
    }

    (*(*a2 + 15))(&v106, a2, a1 + 376, v23);
    if (!v106.n128_u64[1])
    {
LABEL_32:
      IsPrimvarDirty = sub_29A186B14(&v106);
      goto LABEL_33;
    }

    LODWORD(__p) = 1;
    sub_29AE75AF8(v23, &v106, &__p, &v88, &v100);
    v104 = v100;
    if (!(*(*v100.n128_u64[0] + 64))(v100.n128_u64[0], v100))
    {
      sub_29AE70BB0(&v89, v23);
      goto LABEL_30;
    }

    v24 = (*(*v104.n128_u64[0] + 64))(v104.n128_u64[0]);
    if (v92 != v24)
    {
      v100.n128_u64[0] = "hdSt/mesh.cpp";
      v100.n128_u64[1] = "_PopulateElementPrimvars";
      v101 = 1995;
      v102 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
      LOBYTE(v103) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
      v29 = (*(*v104.n128_u64[0] + 64))(v104.n128_u64[0]);
      v32 = *v23 & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("# of faces mismatch (%d != %d) for uniform primvar %s", v30, v31, v29, v92, v33, v81);
      p_p = &__p;
      if ((v87 & 0x8000000000000000) != 0)
      {
        p_p = __p;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Invalid Hydra prim '%s': %s", v36, Text, p_p);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_30;
    }

    v25 = (*(*v104.n128_u64[0] + 16))(v104.n128_u64[0]);
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v26)
    {
      v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v26 + 54) ^ *v25) > 7)
    {
      v34 = (*(*v104.n128_u64[0] + 16))(v104.n128_u64[0]);
      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v35)
      {
        v35 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v35 + 20) ^ *v34) > 7)
      {
        goto LABEL_24;
      }

      v27 = 128;
    }

    else
    {
      *(a1 + 520) = 1;
      v27 = 32;
    }

    *(a1 + 528) |= v27;
LABEL_24:
    sub_29A017F80(&v93, &v104);
LABEL_30:
    if (v104.n128_u64[1])
    {
      sub_29A014BEC(v104.n128_u64[1]);
    }

    goto LABEL_32;
  }

LABEL_34:
  v38 = v89;
  v39 = v90;
  v40 = v17.n128_u64[1];
  if (v89 != v90)
  {
    v41 = v97;
    do
    {
      v42 = v96;
      if (v96 != v41)
      {
        while ((*v42 ^ *v38) > 7 || (v42[2] ^ *(v38 + 16)) > 7 || *(v42 + 2) != *(v38 + 8))
        {
          v42 += 4;
          if (v42 == v41)
          {
            v42 = v41;
            break;
          }
        }
      }

      if (v41 != v42)
      {
        IsPrimvarDirty = sub_29AE75CE8(&v100, (v42 + 4), v41, v42);
        v41 = v43;
        for (i = v97; i != v43; i -= 4)
        {
          v45 = *(i - 2);
          if ((v45 & 7) != 0)
          {
            atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v47 = *(i - 4);
          v46 = v47;
          if ((v47 & 7) != 0)
          {
            atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        v97 = v43;
      }

      v38 += 32;
    }

    while (v38 != v39);
  }

  __p = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  if ((a9 & 1) != 0 && (*a8 & 0x2000000) != 0)
  {
    *a8 &= ~0x2000000u;
    if (!*(a1 + 464))
    {
      v100.n128_u64[0] = "hdSt/mesh.cpp";
      v100.n128_u64[1] = "_PopulateElementPrimvars";
      v101 = 2024;
      v102 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)";
      LOBYTE(v103) = 0;
      IsPrimvarDirty = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v100, "_topology", 0);
    }

    IsEnabledPackedNormals = pxrInternal__aapl__pxrReserved__::HdStMesh::IsEnabledPackedNormals(IsPrimvarDirty);
    v106.n128_u8[0] = IsEnabledPackedNormals;
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (IsEnabledPackedNormals)
    {
      if (!v49)
      {
        v49 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v50 = (v49 + 24);
    }

    else
    {
      if (!v49)
      {
        v49 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v50 = (v49 + 32);
    }

    sub_29A166F2C(&v84, v50);
    if (*(a1 + 516) != -1)
    {
      v51 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 8));
      v52 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 13));
      v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v53)
      {
        v53 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AE75F1C(v51, v52, &v92, v53 + 472, &v84, (a1 + 516), &v106, &v100);
      v54 = v100;
      v55 = v86;
      if (v86 >= v87)
      {
        v57 = 0xAAAAAAAAAAAAAAABLL * ((v86 - __p) >> 3);
        v58 = v57 + 1;
        if (v57 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_29A00C9A4();
        }

        if (0x5555555555555556 * ((v87 - __p) >> 3) > v58)
        {
          v58 = 0x5555555555555556 * ((v87 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v87 - __p) >> 3) >= 0x555555555555555)
        {
          v59 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v59 = v58;
        }

        v103 = &__p;
        if (v59)
        {
          v60 = sub_29A012C48(&__p, v59);
        }

        else
        {
          v60 = 0;
        }

        v61 = &v60[24 * v57];
        *v61 = v54;
        if (v54.n128_u64[1])
        {
          atomic_fetch_add_explicit((v54.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        v62 = &v60[24 * v59];
        v61[1].n128_u32[0] = 2;
        v56 = &v61[1].n128_i8[8];
        v63 = v61 - (v86 - __p);
        memcpy(v63, __p, v86 - __p);
        v64 = __p;
        v65 = v87;
        __p = v63;
        v86 = v56;
        v87 = v62;
        v101 = v64;
        v102 = v65;
        v100.n128_u64[0] = v64;
        v100.n128_u64[1] = v64;
        sub_29A03D11C(&v100);
        v40 = v17.n128_u64[1];
      }

      else
      {
        *v86 = v100.n128_u64[0];
        *(v55 + 1) = v54.n128_u64[1];
        if (v54.n128_u64[1])
        {
          atomic_fetch_add_explicit((v54.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        *(v55 + 4) = 2;
        v56 = v55 + 24;
      }

      v86 = v56;
      if (v54.n128_u64[1])
      {
        sub_29A014BEC(v54.n128_u64[1]);
      }
    }
  }

  v66 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v93, &__p, v66, *a8) & 1) == 0)
  {
    v67 = *a8;
    v106 = 0uLL;
    v107 = 0;
    if ((v67 & 0x40) != 0)
    {
      v100 = 0uLL;
      v101 = 0;
      if (v84)
      {
        v104.n128_u64[0] = v84;
        if ((v84 & 7) != 0 && (atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v104.n128_u64[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        sub_29A5CC36C(&v100, &v104, &v104.n128_i64[1], 1uLL);
        if ((v104.n128_u8[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v104.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v68)
        {
          v68 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          v40 = v17.n128_u64[1];
        }

        v69 = *(v68 + 3);
        v104.n128_u64[0] = v69;
        if ((v69 & 7) != 0 && (atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v104.n128_u64[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v70)
        {
          v70 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          v40 = v17.n128_u64[1];
        }

        v71 = *(v70 + 4);
        v104.n128_u64[1] = v71;
        if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v104.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
        }

        sub_29A5CC36C(&v100, &v104, &v105, 2uLL);
        for (j = 1; j != -1; --j)
        {
          v73 = v104.n128_u64[j];
          if ((v73 & 7) != 0)
          {
            atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }
      }

      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v66, &v96, &v100, (a1 + 376), &v104);
      sub_29AC1F70C(&v106);
      v106 = v104;
      v107 = v105;
      v105 = 0;
      v104 = 0uLL;
      v82 = &v104;
      sub_29ABC6FA0(&v82);
      v104.n128_u64[0] = &v100;
      sub_29A124AB0(&v104);
    }

    v104 = 0uLL;
    v105 = 0;
    sub_29AE22748(&v93, &v104);
    pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&__p, &v104);
    v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v74)
    {
      v74 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v17.n128_i64[0], v74 + 520, v66, &v104, &v106, 8u, &v82);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v82, *(a6 + 14), (a1 + 32), v81);
    if (v93 == v94 && __p == v86 || (v75 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14)), ((*(**v75 + 16))(*v75) & 1) != 0) || (v100.n128_u64[0] = "hdSt/mesh.cpp", v100.n128_u64[1] = "_PopulateElementPrimvars", v101 = 2092, v102 = "void pxrInternal__aapl__pxrReserved__::HdStMesh::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, const HdReprSharedPtr &, const HdMeshReprDesc &, HdStDrawItem *, int, HdDirtyBits *, BOOL)", LOBYTE(v103) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v100, "drawItem->GetElementPrimvarRange()->IsValid()", 0) & 1) != 0))
    {
      if (v93 != v94)
      {
        v76 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v17.n128_i64[0], v76, &v93);
      }

      v77 = __p;
      v78 = v86;
      while (v77 != v78)
      {
        v79 = *(v77 + 4);
        v80 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a6 + 24), *(a6 + 14));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v17.n128_i64[0], v80, v77, v79);
        v77 += 24;
      }
    }

    if (v83)
    {
      sub_29A014BEC(v83);
    }

    v100.n128_u64[0] = &v104;
    sub_29ABC6FA0(&v100);
    v100.n128_u64[0] = &v106;
    sub_29ABC6FA0(&v100);
  }

  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100.n128_u64[0] = &__p;
  sub_29A03CE34(&v100);
  v100.n128_u64[0] = &v89;
  sub_29ABEE9FC(&v100);
  v100.n128_u64[0] = &v93;
  sub_29A0176E4(&v100);
  v100.n128_u64[0] = &v96;
  sub_29ABEE9FC(&v100);
  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v98)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v99, v98);
  }
}