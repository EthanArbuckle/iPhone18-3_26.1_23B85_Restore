void sub_29B056254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 168;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 80;
      while (1)
      {
        v18 = *(v13 - 192 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetResolution(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetPixelAspectRatio(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetAspectRatioConformPolicy(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetDataWindowNDC(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetDisableMotionBlur(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetDisableDepthOfField(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetCamera(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetProductType(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetProductName(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetOrderedVars(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = v4;
  *(a1 + 168) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens))
    {
      sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!result)
  {
    return sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757D08))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1757CD0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1757CD0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1757D08);
  }

  return &unk_2A1757CD0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757D48, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757D48);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757CD0, (v3 + 88), dword_2A1757D10);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757D10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757D48);
    }
  }

  return dword_2A1757D10;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::~UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *this)
{
  v14 = (this + 104);
  sub_29A124AB0(&v14);
  v2 = *(this + 12);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 11);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 10);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 9);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 8);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 7);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 6);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 5);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 4);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 3);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 2);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 1);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *this)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdRenderSettings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "resolution", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "pixelAspectRatio", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "aspectRatioConformPolicy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "dataWindowNDC", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "disableMotionBlur", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "disableDepthOfField", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "includedPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "materialBindingPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "renderingColorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "products", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "namespacedSettings", 0);
  v3 = (this + 104);
  v4 = *this;
  v20 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v21 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v22 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v23 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v25 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v26 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v27 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v28 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v29 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v30 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v31 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v32 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  sub_29A12EF7C(v3, &v20, &v33, 0xDuLL);
  for (i = 96; i != -8; i -= 8)
  {
    v18 = *(&v20 + i);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B056E28(_Unwind_Exception *a1)
{
  v3 = 96;
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
      v5 = v1[12];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[11];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[10];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[9];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[8];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[7];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[6];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[5];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[4];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[3];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[2];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolution(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

  sub_29AC954CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatio(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicy(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDC(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

  sub_29AC959A0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlur(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfField(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 6);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCamera(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 7);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposes(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 8);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposes(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 9);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpace(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 10);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProducts(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 11);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 12);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v101 = *MEMORY[0x29EDCA608];
  v20 = &v98;
  memset(v100, 0, sizeof(v100));
  v98 = 0u;
  memset(v99, 0, sizeof(v99));
  v21 = v100;
  if (*a1)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v23)
    {
      v23 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v20 = v99;
    v21 = v100 + 1;
    sub_29A166F2C(v100, v23 + 1);
    v25 = *a1;
    v24 = a1[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(&v98 + 1);
    *&v98 = v25;
    *(&v98 + 1) = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  if (*a2)
  {
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v28)
    {
      v28 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v21, v28 + 2);
    ++v27;
    v30 = *a2;
    v29 = a2[1];
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *(v20 + 1);
    *v20 = v30;
    *(v20 + 1) = v29;
    if (v31)
    {
      sub_29A014BEC(v31);
    }
  }

  if (*a3)
  {
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v32)
    {
      v32 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v27, v32 + 3);
    v33 = v27 + 1;
    v34 = &v99[v27 - 1];
    v36 = *a3;
    v35 = a3[1];
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = v34[1];
    *v34 = v36;
    v34[1] = v35;
    if (v37)
    {
      sub_29A014BEC(v37);
    }
  }

  else
  {
    v33 = v27;
  }

  if (*a4)
  {
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v38)
    {
      v38 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v33, v38 + 4);
    v39 = v33 + 1;
    v40 = &v99[v33 - 1];
    v42 = *a4;
    v41 = a4[1];
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    v43 = v40[1];
    *v40 = v42;
    v40[1] = v41;
    if (v43)
    {
      sub_29A014BEC(v43);
    }
  }

  else
  {
    v39 = v33;
  }

  if (*a5)
  {
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v44)
    {
      v44 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v39, v44 + 5);
    v45 = v39 + 1;
    v46 = &v99[v39 - 1];
    v48 = *a5;
    v47 = a5[1];
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    v49 = v46[1];
    *v46 = v48;
    v46[1] = v47;
    if (v49)
    {
      sub_29A014BEC(v49);
    }
  }

  else
  {
    v45 = v39;
  }

  if (*a6)
  {
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v50)
    {
      v50 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v45, v50 + 6);
    v51 = v45 + 1;
    v52 = &v99[v45 - 1];
    v54 = *a6;
    v53 = a6[1];
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    v55 = v52[1];
    *v52 = v54;
    v52[1] = v53;
    if (v55)
    {
      sub_29A014BEC(v55);
    }
  }

  else
  {
    v51 = v45;
  }

  if (*a7)
  {
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v56)
    {
      v56 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v51, v56 + 7);
    v57 = v51 + 1;
    v58 = &v99[v51 - 1];
    v60 = *a7;
    v59 = a7[1];
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = v58[1];
    *v58 = v60;
    v58[1] = v59;
    if (v61)
    {
      sub_29A014BEC(v61);
    }
  }

  else
  {
    v57 = v51;
  }

  if (*a8)
  {
    v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v62)
    {
      v62 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v57, v62 + 8);
    v63 = v57 + 1;
    v64 = &v99[v57 - 1];
    v66 = *a8;
    v65 = a8[1];
    if (v65)
    {
      atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
    }

    v67 = v64[1];
    *v64 = v66;
    v64[1] = v65;
    if (v67)
    {
      sub_29A014BEC(v67);
    }
  }

  else
  {
    v63 = v57;
  }

  if (*a10)
  {
    v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v68)
    {
      v68 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v63, v68 + 9);
    v69 = v63 + 1;
    v70 = &v99[v63 - 1];
    v72 = *a10;
    v71 = a10[1];
    if (v71)
    {
      atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
    }

    v73 = v70[1];
    *v70 = v72;
    v70[1] = v71;
    if (v73)
    {
      sub_29A014BEC(v73);
    }
  }

  else
  {
    v69 = v63;
  }

  if (*a11)
  {
    v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v74)
    {
      v74 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v69, v74 + 10);
    v75 = v69 + 1;
    v76 = &v99[v69 - 1];
    v78 = *a11;
    v77 = a11[1];
    if (v77)
    {
      atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
    }

    v79 = v76[1];
    *v76 = v78;
    v76[1] = v77;
    if (v79)
    {
      sub_29A014BEC(v79);
    }
  }

  else
  {
    v75 = v69;
  }

  if (*a12)
  {
    v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v80)
    {
      v80 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v75, v80 + 11);
    v81 = v75 + 1;
    v82 = &v99[v75 - 1];
    v84 = *a12;
    v83 = a12[1];
    if (v83)
    {
      atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
    }

    v85 = v82[1];
    *v82 = v84;
    v82[1] = v83;
    if (v85)
    {
      sub_29A014BEC(v85);
    }
  }

  else
  {
    v81 = v75;
  }

  if (*a13)
  {
    v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v86)
    {
      v86 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v81, v86 + 12);
    v87 = v81 + 1;
    v88 = &v99[v81 - 1];
    v90 = *a13;
    v89 = a13[1];
    if (v89)
    {
      atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
    }

    v91 = v88[1];
    *v88 = v90;
    v88[1] = v89;
    if (v91)
    {
      sub_29A014BEC(v91);
    }
  }

  else
  {
    v87 = v81;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v87, v100, &v98, &v97);
  *a9 = v97;
  for (i = 184; i != -8; i -= 16)
  {
    v93 = *(&v99[-1] + i);
    if (v93)
    {
      sub_29A014BEC(v93);
    }
  }

  for (j = 88; j != -8; j -= 8)
  {
    v95 = *(v100 + j);
    if ((v95 & 7) != 0)
    {
      atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29B057EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 184;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 88;
      while (1)
      {
        v18 = *(v13 - 192 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetResolution(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetPixelAspectRatio(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetAspectRatioConformPolicy(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetDataWindowNDC(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetDisableMotionBlur(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetDisableDepthOfField(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetCamera(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetIncludedPurposes(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetMaterialBindingPurposes(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetRenderingColorSpace(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetProducts(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = v4;
  *(a1 + 168) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 184);
  *(a1 + 176) = v4;
  *(a1 + 184) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens))
    {
      sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!result)
  {
    return sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757D88))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1757D50, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1757D50, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1757D88);
  }

  return &unk_2A1757D50;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolutionLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757DC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757DC8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 8), dword_2A1757D90);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757D90, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757DC8);
    }
  }

  return dword_2A1757D90;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatioLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757E08, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757E08);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 16), dword_2A1757DD0);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757DD0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757E08);
    }
  }

  return dword_2A1757DD0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicyLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757E48, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757E48);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 24), dword_2A1757E10);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757E10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757E48);
    }
  }

  return dword_2A1757E10;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDCLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757E88, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757E88);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 32), dword_2A1757E50);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757E50, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757E88);
    }
  }

  return dword_2A1757E50;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlurLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757EC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757EC8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 40), dword_2A1757E90);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757E90, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757EC8);
    }
  }

  return dword_2A1757E90;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfFieldLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757F08, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757F08);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 48), dword_2A1757ED0);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757ED0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757F08);
    }
  }

  return dword_2A1757ED0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCameraLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757F48, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757F48);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 56), dword_2A1757F10);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757F10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757F48);
    }
  }

  return dword_2A1757F10;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposesLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757F88, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757F88);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 64), dword_2A1757F50);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757F50, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757F88);
    }
  }

  return dword_2A1757F50;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposesLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757FC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757FC8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 72), dword_2A1757F90);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757F90, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757FC8);
    }
  }

  return dword_2A1757F90;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpaceLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758008, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758008);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 80), dword_2A1757FD0);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757FD0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758008);
    }
  }

  return dword_2A1757FD0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProductsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758048, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758048);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 88), dword_2A1758010);
      __cxa_atexit(sub_29ABC33B4, dword_2A1758010, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758048);
    }
  }

  return dword_2A1758010;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758088, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758088);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757D50, (v3 + 96), dword_2A1758050);
      __cxa_atexit(sub_29ABC33B4, dword_2A1758050, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758088);
    }
  }

  return dword_2A1758050;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::~UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdRenderVar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "dataType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "sourceName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "sourceType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "namespacedSettings", 0);
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

void sub_29B0590EC(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDataType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceName(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

  sub_29AC22098(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v12)
    {
      v12 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v17)
    {
      v17 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v21)
    {
      v21 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

void sub_29B05970C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetDataType(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetSourceName(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetSourceType(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens))
    {
      sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!result)
  {
    return sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17580C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17580C8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1758090, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1758090, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17580C8);
  }

  return &unk_2A1758090;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758108, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758108);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1758090, (v3 + 32), dword_2A17580D0);
      __cxa_atexit(sub_29ABC33B4, dword_2A17580D0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758108);
    }
  }

  return dword_2A17580D0;
}

uint64_t sub_29B059B54()
{
  v1 = nullsub_1801;
  return sub_29B059ED4(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::~UsdImagingRectLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 34);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 34);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 272, this);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 272), a2, a3);
}

uint64_t sub_29B059ED4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B0D50;
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

void sub_29B059F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B059F84(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B059FAC@<D0>(_OWORD *a1@<X8>)
{
  sub_29B059FE8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B059FE8(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B0D90;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B0B10;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05A094(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B0D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05A100()
{
  v1 = nullsub_1802;
  return sub_29B05A594(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::~UsdImagingRenderPassAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 41);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B05A3A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B05A3BC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::UsdImagingDataSourceRenderPassPrim(v8, a1, &v13, a3);
  sub_29B05A7C0(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::InvalidateImagingSubprim(void *a1@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::Invalidate(a2, a3);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::Populate@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

uint64_t sub_29B05A594(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1020;
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

void sub_29B05A620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05A644(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B05A66C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B05A6A8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B05A6A8(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B1060;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B0DE0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05A754(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B1060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B05A7C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B10B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B05A818(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05A834(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05A85C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05A88C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1100))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B05A8CC()
{
  v1 = nullsub_1803;
  return sub_29B05AD64(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::~UsdImagingRenderProductAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B05AB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B05AB88@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::UsdImagingDataSourceRenderProductPrim(v8, a1, &v13, a3);
  sub_29B05AF90(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::InvalidateImagingSubprim(void *a1@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::Invalidate(a2, a3);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

uint64_t sub_29B05AD64(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1368;
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

void sub_29B05ADF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05AE14(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B05AE3C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B05AE78(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B05AE78(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B13A8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B1128;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05AF24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B13A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B05AF90(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B13F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B05AFE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05B004(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05B02C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05B05C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1448))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B05B09C()
{
  v1 = nullsub_1804;
  return sub_29B05C9A4(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::~UsdImagingRenderSettingsAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 40);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B05B344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B05B358@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::UsdImagingDataSourceRenderSettingsPrim(v8, a1, &v13, a3);
  sub_29B05CBD0(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::InvalidateImagingSubprim(void *a1@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::Invalidate(a2, a3);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsBprimTypeSupported(a2, v3 + 40);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFE7290(a3, v5 + 40, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::TrackVariability(int a1, pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(this, &v7);
  v6[0] = v7;
  v6[1] = v8;
  if (v7 != v8)
  {
    v4 = sub_29A7885F8(v6, v2, v3);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::ValueMightBeTimeVarying(v4, v5);
  }

  v6[0] = &v7;
  sub_29A5BB908(v6);
}

void sub_29B05BFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  a10 = &a12;
  sub_29A5BB908(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v5)
  {
    v5 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v5 + 18) ^ *a4) < 8)
  {
    return 16;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v7)
  {
    v7 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v7 + 23) ^ *a4) < 8)
  {
    return 32;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v8)
  {
    v8 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v8 + 34) ^ *a4) >= 8)
  {
    return 12;
  }

  else
  {
    return 64;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v10)
  {
    v10 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*(v10 + 1) ^ *a4) > 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v11)
    {
      v11 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v11 + 2) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v34, a2);
      v34 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetRenderSettingsNamespaces(&v30, this);
      pxrInternal__aapl__pxrReserved__::UsdRenderComputeSpec(&v34, v26);
      v25[0] = &v30;
      sub_29A124AB0(v25);
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(&v34);
      memset(v25, 0, sizeof(v25));
      sub_29ACCA484(v25, 0x6DB6DB6DB6DB6DB7 * ((v26[1] - v26[0]) >> 4));
      v12 = v26[0];
      for (i = v26[1]; v12 != i; v12 = (v12 + 112))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v34);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v34 + 1);
        memset(v35, 0, sizeof(v35));
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v36);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v37);
        v38 = 0;
        v39 = 0;
        v40 = xmmword_29B480F70;
        v42 = 0;
        sub_29A2258F0(&v34, v12);
        sub_29A225948(&v34 + 1, v12 + 1);
        sub_29A166F2C(v35, v12 + 1);
        sub_29A166F2C(v35 + 1, v12 + 2);
        *&v35[1] = *(v12 + 36);
        sub_29ACCA870(&v35[1] + 1, (*(v12 + 11) - *(v12 + 10)) >> 3);
        v14 = *(v12 + 10);
        v15 = *(v12 + 11);
        while (v14 != v15)
        {
          v16 = *(&v27 + 1) + 56 * *v14;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v30);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v30 + 1);
          v33 = 0u;
          v32 = 0u;
          v31 = 0u;
          sub_29A2258F0(&v30, v16);
          sub_29A225948(&v30 + 1, (v16 + 4));
          sub_29A166F2C(&v31, (v16 + 8));
          std::string::operator=((&v31 + 8), (v16 + 16));
          sub_29A166F2C(&v33, (v16 + 40));
          pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v33 + 1, (v16 + 48));
          sub_29ACCA958(&v35[1] + 8, &v30);
          sub_29A184A10(&v33 + 1, 0);
          if ((v33 & 7) != 0)
          {
            atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(*(&v31 + 1));
          }

          if ((v31 & 7) != 0)
          {
            atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30 + 1);
          sub_29A1DE3A4(&v30);
          ++v14;
        }

        sub_29A2258F0(&v36, v12 + 6);
        sub_29A225948(v37, v12 + 7);
        v37[1] = *(v12 + 11);
        sub_29A166F2C(&v38, v12 + 6);
        v39 = *(v12 + 7);
        v40 = *(v12 + 4);
        v41 = *(v12 + 16);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v42, v12 + 13);
        sub_29ACCA560(v25, &v34);
        sub_29AC97A08(&v34);
      }

      *(a5 + 8) = &off_2A2084A30;
      sub_29ACCB0C8(a5, v25);
      v34 = v25;
      sub_29AC97984(&v34);
      sub_29A184A10(&v29, 0);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v17)
    {
      v17 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v17 + 3) ^ *a4) <= 7)
    {
      v28 = 0;
      *v26 = 0u;
      v27 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v30, a2);
      v30 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetIncludedPurposesAttr(&v30, &v34);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v18)
    {
      v18 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v18 + 4) ^ *a4) <= 7)
    {
      v28 = 0;
      *v26 = 0u;
      v27 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v30, a2);
      v30 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetMaterialBindingPurposesAttr(&v30, &v34);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v19)
    {
      v19 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    v20 = *a4;
    if ((*(v19 + 5) ^ *a4) <= 7)
    {
      v30 = 0;
      v21 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v34, a2);
      v34 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetRenderingColorSpaceAttr(v21, v26);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v26[0] = "usdImaging/renderSettingsAdapter.cpp";
    v26[1] = "Get";
    *&v27 = 342;
    *(&v27 + 1) = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const";
    LOBYTE(v28) = 0;
    v22 = v20 & 0xFFFFFFFFFFFFFFF8;
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

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v26, 1, "Property %s not supported for RenderSettings by UsdImaging, path: %s", v23, Text);
    *(a5 + 8) = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetRenderSettingsNamespaces(v26, this);
    pxrInternal__aapl__pxrReserved__::UsdRenderComputeNamespacedSettings(a2, &v30);
    *(a5 + 8) = &off_2A2042030;
    sub_29A187864(a5, &v30);
    sub_29A184A10(&v30, 0);
    v34 = v26;
    sub_29A124AB0(&v34);
  }
}

void sub_29B05C838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_29A5888DC(&a17);
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings((v34 - 208));
  if ((a34 & 7) != 0)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B05C9A4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B16B0;
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

void sub_29B05CA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05CA54(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B05CA7C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B05CAB8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B05CAB8(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B16F0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B1470;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05CB64(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B16F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B05CBD0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B1740;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B05CC28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05CC44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05CC6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05CC9C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1790))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29B05CCDC()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "outputs:ri:integrator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "outputs:ri:sampleFilters", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "outputs:ri:displayFilters", 0);
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
  atomic_compare_exchange_strong(&qword_2A1758110, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A1758110);
  }

  return v0;
}

void sub_29B05CE58(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex::UsdImagingRenderSettingsFlatteningSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!result)
  {
    result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(result + 40) ^ *a3) <= 7)
  {
    v8 = operator new(0x28uLL);
    v10 = a3[1];
    v9 = a3[2];
    *v8 = &unk_2A20B1830;
    v8[1] = v10;
    v8[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v8[3] = *(this + 14);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void sub_29B05D25C(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29B05D2C0(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void *sub_29B05D328@<X0>(void *a1@<X8>)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1878;
  *a1 = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A20B18C0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  a1[1] = result;
  return result;
}

void sub_29B05D3A0(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29B05D3B8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

void sub_29B05D414(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

void *sub_29B05D474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetSchemaToken(v3);
  v5 = sub_29A1D8028(a2, SchemaToken);
  v6 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v5);
  return sub_29A1D8028(a2, v6);
}

void sub_29B05D4E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29B05D4FC(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetSchemaToken(a1);
  if ((*SchemaToken ^ *a2) <= 7)
  {
    v7 = operator new(0x20uLL);
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    *v7 = &unk_2A20B1938;
    v7[1] = v9;
    v7[2] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v7[3] = *(a1 + 24);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  if ((*pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(SchemaToken) ^ *a2) > 7)
  {
    v53 = *(**(a1 + 8) + 24);

    v53();
  }

  else
  {
    if (*(a1 + 8))
    {
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v125 = 0;
      v126 = 0;
      v127 = 0;
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), __p);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProducts(__p, &v117);
      if (v117.__r_.__value_.__r.__words[0])
      {
        (*(*v117.__r_.__value_.__l.__data_ + 32))(v123, 0.0);
        v139 = 0;
        v140 = 0;
        v138 = &v139;
        if (*v123)
        {
          v10 = v124;
          v11 = (v124 + 8 * *v123);
          do
          {
            v12 = sub_29AC1199C((a1 + 24));
            (*(*v12 + 16))(&v136);
            if (*(&v136 + 1))
            {
              pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetFromParent(&v136 + 1, &v135);
              if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v135))
              {
                sub_29A1E28B4(&v128, v10);
                pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetOrderedVars(&v135, &v134);
                if (v134)
                {
                  (*(*v134 + 32))(&v131, 0.0);
                  if (v131)
                  {
                    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
                  }

                  sub_29ABED558(&v131);
                }

                if (*(&v134 + 1))
                {
                  sub_29A014BEC(*(&v134 + 1));
                }
              }

              if (*(&v135 + 1))
              {
                sub_29A014BEC(*(&v135 + 1));
              }
            }

            if (v137)
            {
              sub_29A014BEC(v137);
            }

            if ((v136 & 7) != 0)
            {
              atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v10 += 2;
          }

          while (v10 != v11);
          v13 = v138;
          if (v138 != &v139)
          {
            do
            {
              v14 = sub_29AC1199C((a1 + 24));
              (*(*v14 + 16))(&v131);
              if (v132)
              {
                pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetFromParent(&v132, &v136);
                if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v136))
                {
                  sub_29A1E28B4(&v125, v13 + 7);
                }

                if (*(&v136 + 1))
                {
                  sub_29A014BEC(*(&v136 + 1));
                }
              }

              if (v133)
              {
                sub_29A014BEC(v133);
              }

              if ((v131 & 7) != 0)
              {
                atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v15 = v13[1];
              if (v15)
              {
                do
                {
                  v16 = v15;
                  v15 = *v15;
                }

                while (v15);
              }

              else
              {
                do
                {
                  v16 = v13[2];
                  v17 = *v16 == v13;
                  v13 = v16;
                }

                while (!v17);
              }

              v13 = v16;
            }

            while (v16 != &v139);
          }
        }

        sub_29A1E2AEC(&v138, v139);
        sub_29ABED558(v123);
      }

      if (v117.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v117.__r_.__value_.__l.__size_);
      }

      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }

      if ((atomic_load_explicit(&qword_2A17586D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17586D8))
      {
        v54 = atomic_load(qword_2A17586E0);
        if (!v54)
        {
          v54 = sub_29B0600FC();
        }

        v55 = *v54;
        qword_2A1758138 = v55;
        if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758138 &= 0xFFFFFFFFFFFFFFF8;
        }

        IncludedPurposesLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposesLocator(v54);
        v57 = sub_29ABD30AC(dword_2A1758140, IncludedPurposesLocator);
        v58 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetIncludedPurposesLocator(v57);
        sub_29ABD30AC(dword_2A1758178, v58);
        v59 = atomic_load(qword_2A17586E0);
        if (!v59)
        {
          v59 = sub_29B0600FC();
        }

        v60 = *(v59 + 1);
        qword_2A17581B0 = v60;
        if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17581B0 &= 0xFFFFFFFFFFFFFFF8;
        }

        MaterialBindingPurposesLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposesLocator(v59);
        v62 = sub_29ABD30AC(dword_2A17581B8, MaterialBindingPurposesLocator);
        v63 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetMaterialBindingPurposesLocator(v62);
        sub_29ABD30AC(dword_2A17581F0, v63);
        v64 = atomic_load(qword_2A17586E0);
        if (!v64)
        {
          v64 = sub_29B0600FC();
        }

        v65 = *(v64 + 2);
        qword_2A1758228 = v65;
        if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758228 &= 0xFFFFFFFFFFFFFFF8;
        }

        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettingsLocator(v64);
        v67 = sub_29ABD30AC(dword_2A1758230, NamespacedSettingsLocator);
        v68 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetNamespacedSettingsLocator(v67);
        sub_29ABD30AC(dword_2A1758268, v68);
        v69 = atomic_load(qword_2A17586E0);
        if (!v69)
        {
          v69 = sub_29B0600FC();
        }

        v70 = *(v69 + 3);
        qword_2A17582A0 = v70;
        if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17582A0 &= 0xFFFFFFFFFFFFFFF8;
        }

        RenderingColorSpaceLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpaceLocator(v69);
        v72 = sub_29ABD30AC(dword_2A17582A8, RenderingColorSpaceLocator);
        v73 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderingColorSpaceLocator(v72);
        sub_29ABD30AC(dword_2A17582E0, v73);
        v74 = atomic_load(qword_2A17586E0);
        if (!v74)
        {
          v74 = sub_29B0600FC();
        }

        v75 = *(v74 + 4);
        qword_2A1758318 = v75;
        if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758318 &= 0xFFFFFFFFFFFFFFF8;
        }

        ResolutionLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolutionLocator(v74);
        v77 = sub_29ABD30AC(dword_2A1758320, ResolutionLocator);
        RenderProductsLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v77);
        sub_29ABD30AC(dword_2A1758358, RenderProductsLocator);
        v79 = atomic_load(qword_2A17586E0);
        if (!v79)
        {
          v79 = sub_29B0600FC();
        }

        v80 = *(v79 + 5);
        qword_2A1758390 = v80;
        if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758390 &= 0xFFFFFFFFFFFFFFF8;
        }

        PixelAspectRatioLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatioLocator(v79);
        v82 = sub_29ABD30AC(dword_2A1758398, PixelAspectRatioLocator);
        v83 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v82);
        sub_29ABD30AC(dword_2A17583D0, v83);
        v84 = atomic_load(qword_2A17586E0);
        if (!v84)
        {
          v84 = sub_29B0600FC();
        }

        v85 = *(v84 + 6);
        qword_2A1758408 = v85;
        if ((v85 & 7) != 0 && (atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758408 &= 0xFFFFFFFFFFFFFFF8;
        }

        AspectRatioConformPolicyLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicyLocator(v84);
        v87 = sub_29ABD30AC(dword_2A1758410, AspectRatioConformPolicyLocator);
        v88 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v87);
        sub_29ABD30AC(dword_2A1758448, v88);
        v89 = atomic_load(qword_2A17586E0);
        if (!v89)
        {
          v89 = sub_29B0600FC();
        }

        v90 = *(v89 + 7);
        qword_2A1758480 = v90;
        if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758480 &= 0xFFFFFFFFFFFFFFF8;
        }

        DataWindowNDCLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDCLocator(v89);
        v92 = sub_29ABD30AC(dword_2A1758488, DataWindowNDCLocator);
        v93 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v92);
        sub_29ABD30AC(dword_2A17584C0, v93);
        v94 = atomic_load(qword_2A17586E0);
        if (!v94)
        {
          v94 = sub_29B0600FC();
        }

        v95 = *(v94 + 8);
        qword_2A17584F8 = v95;
        if ((v95 & 7) != 0 && (atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17584F8 &= 0xFFFFFFFFFFFFFFF8;
        }

        DisableMotionBlurLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlurLocator(v94);
        v97 = sub_29ABD30AC(dword_2A1758500, DisableMotionBlurLocator);
        v98 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v97);
        sub_29ABD30AC(dword_2A1758538, v98);
        v99 = atomic_load(qword_2A17586E0);
        if (!v99)
        {
          v99 = sub_29B0600FC();
        }

        v100 = *(v99 + 9);
        qword_2A1758570 = v100;
        if ((v100 & 7) != 0 && (atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758570 &= 0xFFFFFFFFFFFFFFF8;
        }

        DisableDepthOfFieldLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfFieldLocator(v99);
        v102 = sub_29ABD30AC(dword_2A1758578, DisableDepthOfFieldLocator);
        v103 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v102);
        sub_29ABD30AC(dword_2A17585B0, v103);
        v104 = atomic_load(qword_2A17586E0);
        if (!v104)
        {
          v104 = sub_29B0600FC();
        }

        v105 = *(v104 + 10);
        qword_2A17585E8 = v105;
        if ((v105 & 7) != 0 && (atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17585E8 &= 0xFFFFFFFFFFFFFFF8;
        }

        CameraLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCameraLocator(v104);
        v107 = sub_29ABD30AC(dword_2A17585F0, CameraLocator);
        v108 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v107);
        sub_29ABD30AC(dword_2A1758628, v108);
        v109 = atomic_load(qword_2A17586E0);
        if (!v109)
        {
          v109 = sub_29B0600FC();
        }

        v110 = *(v109 + 11);
        qword_2A1758660 = v110;
        if ((v110 & 7) != 0 && (atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758660 &= 0xFFFFFFFFFFFFFFF8;
        }

        ProductsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProductsLocator(v109);
        v112 = sub_29ABD30AC(dword_2A1758668, ProductsLocator);
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v112);
        sub_29ABD30AC(dword_2A17586A0, DefaultLocator);
        __cxa_atexit(sub_29B060770, 0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17586D8);
      }

      v131 = 0;
      v132 = 0;
      v133 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v18 = ((v129 - v128) >> 3) + ((v126 - v125) >> 3);
      sub_29A1D7F98(&v131, v18 + 12);
      sub_29A039314(&v138, v18 + 12);
      v19 = &qword_2A1758138;
      v20 = 1440;
      do
      {
        sub_29A1D8028(&v131, v19);
        v124 = 0u;
        memset(v123, 0, sizeof(v123));
        sub_29ABE8360((a1 + 32), &v135);
        *&v117.__r_.__value_.__l.__data_ = v135;
        v135 = 0uLL;
        v21 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(v123, &v117);
        sub_29AD24300((v19 + 1), &v122);
        v134 = v122;
        v122 = 0uLL;
        v22 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v21, &v134);
        sub_29AD24300((v19 + 8), &v120);
        v121 = v120;
        v120 = 0uLL;
        v23 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v22, &v121);
        pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v23, __p);
        v136 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        sub_29A01729C(&v138, &v136);
        if (*(&v136 + 1))
        {
          sub_29A014BEC(*(&v136 + 1));
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        if (*(&v121 + 1))
        {
          sub_29A014BEC(*(&v121 + 1));
        }

        if (*(&v120 + 1))
        {
          sub_29A014BEC(*(&v120 + 1));
        }

        if (*(&v134 + 1))
        {
          sub_29A014BEC(*(&v134 + 1));
        }

        if (*(&v122 + 1))
        {
          sub_29A014BEC(*(&v122 + 1));
        }

        if (v117.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v117.__r_.__value_.__l.__size_);
        }

        if (*(&v135 + 1))
        {
          sub_29A014BEC(*(&v135 + 1));
        }

        if (*(&v124 + 1))
        {
          sub_29A014BEC(*(&v124 + 1));
        }

        if (*&v123[24])
        {
          sub_29A014BEC(*&v123[24]);
        }

        if (*&v123[8])
        {
          sub_29A014BEC(*&v123[8]);
        }

        v19 += 15;
        v20 -= 120;
      }

      while (v20);
      sub_29A008E78(&v136, "renderSettings_depOn_");
      if (v129 != v128)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          if (SHIBYTE(v137) >= 0)
          {
            v26 = HIBYTE(v137);
          }

          else
          {
            v26 = *(&v136 + 1);
          }

          sub_29A022DE0(v123, v26 + 8);
          if (v123[23] >= 0)
          {
            v27 = v123;
          }

          else
          {
            v27 = *v123;
          }

          if (v26)
          {
            if (SHIBYTE(v137) >= 0)
            {
              v28 = &v136;
            }

            else
            {
              v28 = v136;
            }

            memmove(v27, v28, v26);
          }

          strcpy(&v27[v26], "product_");
          std::to_string(&v117, v25);
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v117;
          }

          else
          {
            v29 = v117.__r_.__value_.__r.__words[0];
          }

          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v117.__r_.__value_.__l.__size_;
          }

          v31 = std::string::append(v123, v29, size);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v119 = v31->__r_.__value_.__r.__words[2];
          *__p = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          if ((v123[23] & 0x80000000) != 0)
          {
            operator delete(*v123);
          }

          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v123);
          sub_29A153214(&v131, v123);
          if ((v123[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v124 = 0u;
          memset(v123, 0, sizeof(v123));
          sub_29ABE8360((v128 + v24), &v122);
          v134 = v122;
          v122 = 0uLL;
          v33 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(v123, &v134);
          v34 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(v33);
          sub_29AD24300(v34, &v120);
          v121 = v120;
          v120 = 0uLL;
          v35 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v33, &v121);
          v36 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v35);
          sub_29AD24300(v36, &v115);
          v116 = v115;
          v115 = 0uLL;
          v37 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v35, &v116);
          pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v37, &v135);
          *&v117.__r_.__value_.__l.__data_ = v135;
          v135 = 0uLL;
          sub_29A01729C(&v138, &v117);
          if (v117.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(v117.__r_.__value_.__l.__size_);
          }

          if (*(&v135 + 1))
          {
            sub_29A014BEC(*(&v135 + 1));
          }

          if (*(&v116 + 1))
          {
            sub_29A014BEC(*(&v116 + 1));
          }

          if (*(&v115 + 1))
          {
            sub_29A014BEC(*(&v115 + 1));
          }

          if (*(&v121 + 1))
          {
            sub_29A014BEC(*(&v121 + 1));
          }

          if (*(&v120 + 1))
          {
            sub_29A014BEC(*(&v120 + 1));
          }

          if (*(&v134 + 1))
          {
            sub_29A014BEC(*(&v134 + 1));
          }

          if (*(&v122 + 1))
          {
            sub_29A014BEC(*(&v122 + 1));
          }

          if (*(&v124 + 1))
          {
            sub_29A014BEC(*(&v124 + 1));
          }

          if (*&v123[24])
          {
            sub_29A014BEC(*&v123[24]);
          }

          if (*&v123[8])
          {
            sub_29A014BEC(*&v123[8]);
          }

          if (SHIBYTE(v119) < 0)
          {
            operator delete(__p[0]);
          }

          ++v25;
          v24 += 8;
        }

        while (v25 < (v129 - v128) >> 3);
      }

      if (v126 != v125)
      {
        v38 = 0;
        v39 = 0;
        do
        {
          if (SHIBYTE(v137) >= 0)
          {
            v40 = HIBYTE(v137);
          }

          else
          {
            v40 = *(&v136 + 1);
          }

          sub_29A022DE0(v123, v40 + 4);
          if (v123[23] >= 0)
          {
            v41 = v123;
          }

          else
          {
            v41 = *v123;
          }

          if (v40)
          {
            if (SHIBYTE(v137) >= 0)
            {
              v42 = &v136;
            }

            else
            {
              v42 = v136;
            }

            memmove(v41, v42, v40);
          }

          strcpy(&v41[v40], "var_");
          std::to_string(&v117, v39);
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v117;
          }

          else
          {
            v43 = v117.__r_.__value_.__r.__words[0];
          }

          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v117.__r_.__value_.__l.__size_;
          }

          v45 = std::string::append(v123, v43, v44);
          v46 = *&v45->__r_.__value_.__l.__data_;
          v119 = v45->__r_.__value_.__r.__words[2];
          *__p = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          if ((v123[23] & 0x80000000) != 0)
          {
            operator delete(*v123);
          }

          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v123);
          sub_29A153214(&v131, v123);
          if ((v123[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v124 = 0u;
          memset(v123, 0, sizeof(v123));
          sub_29ABE8360((v125 + v38), &v122);
          v134 = v122;
          v122 = 0uLL;
          v47 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(v123, &v134);
          v48 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(v47);
          sub_29AD24300(v48, &v120);
          v121 = v120;
          v120 = 0uLL;
          v49 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v47, &v121);
          v50 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v49);
          sub_29AD24300(v50, &v115);
          v116 = v115;
          v115 = 0uLL;
          v51 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v49, &v116);
          pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v51, &v135);
          *&v117.__r_.__value_.__l.__data_ = v135;
          v135 = 0uLL;
          sub_29A01729C(&v138, &v117);
          if (v117.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(v117.__r_.__value_.__l.__size_);
          }

          if (*(&v135 + 1))
          {
            sub_29A014BEC(*(&v135 + 1));
          }

          if (*(&v116 + 1))
          {
            sub_29A014BEC(*(&v116 + 1));
          }

          if (*(&v115 + 1))
          {
            sub_29A014BEC(*(&v115 + 1));
          }

          if (*(&v121 + 1))
          {
            sub_29A014BEC(*(&v121 + 1));
          }

          if (*(&v120 + 1))
          {
            sub_29A014BEC(*(&v120 + 1));
          }

          if (*(&v134 + 1))
          {
            sub_29A014BEC(*(&v134 + 1));
          }

          if (*(&v122 + 1))
          {
            sub_29A014BEC(*(&v122 + 1));
          }

          if (*(&v124 + 1))
          {
            sub_29A014BEC(*(&v124 + 1));
          }

          if (*&v123[24])
          {
            sub_29A014BEC(*&v123[24]);
          }

          if (*&v123[8])
          {
            sub_29A014BEC(*&v123[8]);
          }

          if (SHIBYTE(v119) < 0)
          {
            operator delete(__p[0]);
          }

          ++v39;
          v38 += 8;
        }

        while (v39 < (v126 - v125) >> 3);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v132 - v131) >> 3, v131, v138, v123);
      v114 = *v123;
      if (SHIBYTE(v137) < 0)
      {
        operator delete(v136);
      }

      *v123 = &v138;
      sub_29A0176E4(v123);
      *v123 = &v131;
      sub_29A124AB0(v123);
      *v123 = &v125;
      sub_29A1E234C(v123);
      *v123 = &v128;
      sub_29A1E234C(v123);
      v52 = v114;
    }

    else
    {
      v52 = 0uLL;
    }

    *a3 = v52;
  }
}

void sub_29B05E5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48)
{
  do
  {
    v48 -= 15;
    sub_29AC13BD0(v48);
  }

  while (v48 != &qword_2A1758138);
  __cxa_guard_abort(&qword_2A17586D8);
  a35 = &a45;
  sub_29A1E234C(&a35);
  a35 = &a48;
  sub_29A1E234C(&a35);
  _Unwind_Resume(a1);
}

void sub_29B05EB74(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void sub_29B05EB9C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_29B05EBB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05EBDC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05EC0C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1910))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B05ECE0(void *a1@<X8>)
{
  v1 = a1;
  v21 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1758130, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1758130);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v5 = *(v4 + 1);
      v16 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v7 = *(v6 + 3);
      v17 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v9 = *(v8 + 4);
      v18 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v10)
      {
        v10 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v11 = *(v10 + 5);
      v19 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v12)
      {
        v12 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v13 = *(v12 + 6);
      v20 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1758118 = 0;
      unk_2A1758120 = 0;
      qword_2A1758128 = 0;
      sub_29A12EF7C(&qword_2A1758118, &v16, &v21, 5uLL);
      for (i = 32; i != -8; i -= 8)
      {
        v15 = *(&v16 + i);
        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1758118, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758130);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29B05F018(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettings(&v106, v77);
    goto LABEL_5;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v8 + 3) ^ *a2) > 7)
  {
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v56)
    {
      v56 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    if ((*(v56 + 4) ^ *a2) > 7)
    {
      v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v57)
      {
        v57 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      if ((*(v57 + 5) ^ *a2) > 7)
      {
        v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
        if (!v58)
        {
          v58 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
        }

        if ((*(v58 + 6) ^ *a2) > 7)
        {
          v59 = *(**(a1 + 8) + 24);

          v59();
          return;
        }

        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpace(&v106, v77);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposes(&v106, v77);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposes(&v106, v77);
    }

LABEL_5:
    *a3 = *v77;
    v7 = *(&v106 + 1);
    if (!*(&v106 + 1))
    {
      return;
    }

    goto LABEL_6;
  }

  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  if (!v10)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent(v9, &v81);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProducts(&v81, &v79);
  if (v79)
  {
    (*(*v79 + 32))(v77, 0.0);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    sub_29A039314(&v74, v77[0]);
    if (v77[0])
    {
      v11 = v78;
      v12 = &v78[2 * v77[0]];
      do
      {
        v13 = sub_29AC1199C(v9 + 2);
        (*(*v13 + 16))(&v71);
        if (v72)
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetFromParent(&v72, &v69);
          if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v69))
          {
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetOrderedVars(&v69, &v67);
            (*(*v67 + 32))(v66, 0.0);
            v63 = 0;
            v64 = 0;
            v65 = 0;
            sub_29A039314(&v63, v66[0]);
            if (v66[0])
            {
              v14 = v66[4];
              v15 = 8 * v66[0];
              do
              {
                v16 = sub_29AC1199C(v9 + 2);
                (*(*v16 + 16))(&v61);
                if (v61.i64[1])
                {
                  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetFromParent(&v61.i64[1], &v103);
                  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v103))
                  {
                    v109 = 0u;
                    v110 = 0u;
                    v107 = 0u;
                    v108 = 0u;
                    v106 = 0u;
                    sub_29ABE8360(v14, &v127);
                    v128 = v127;
                    v127 = 0uLL;
                    v17 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetPath(&v106, &v128);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDataType(&v103, &v126);
                    v18 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetDataType(v17, v126.i64);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceName(&v103, &v121);
                    (*(*v121 + 32))(&v122, 0.0);
                    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v101);
                    sub_29ABCCFA4(v101.i64, &v124);
                    v125 = v124;
                    v124 = 0uLL;
                    v19 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceName(v18, v125.i64);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceType(&v103, &v120);
                    v20 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceType(v19, &v120);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettings(&v103, &v119);
                    v21 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetNamespacedSettings(v20, v119.i64);
                    pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::Build(v21, &v129);
                    v102 = v129;
                    v129 = 0uLL;
                    if (v119.i64[1])
                    {
                      sub_29A014BEC(v119.i64[1]);
                    }

                    if (*(&v120 + 1))
                    {
                      sub_29A014BEC(*(&v120 + 1));
                    }

                    if (v125.i64[1])
                    {
                      sub_29A014BEC(v125.i64[1]);
                    }

                    if (v124.i64[1])
                    {
                      sub_29A014BEC(v124.i64[1]);
                    }

                    if ((v101.i8[0] & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v101.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    if (v123 < 0)
                    {
                      operator delete(v122);
                    }

                    if (*(&v121 + 1))
                    {
                      sub_29A014BEC(*(&v121 + 1));
                    }

                    if (v126.i64[1])
                    {
                      sub_29A014BEC(v126.i64[1]);
                    }

                    if (*(&v128 + 1))
                    {
                      sub_29A014BEC(*(&v128 + 1));
                    }

                    if (*(&v127 + 1))
                    {
                      sub_29A014BEC(*(&v127 + 1));
                    }

                    if (*(&v110 + 1))
                    {
                      sub_29A014BEC(*(&v110 + 1));
                    }

                    if (*(&v109 + 1))
                    {
                      sub_29A014BEC(*(&v109 + 1));
                    }

                    if (*(&v108 + 1))
                    {
                      sub_29A014BEC(*(&v108 + 1));
                    }

                    if (*(&v107 + 1))
                    {
                      sub_29A014BEC(*(&v107 + 1));
                    }

                    if (*(&v106 + 1))
                    {
                      sub_29A014BEC(*(&v106 + 1));
                    }

                    sub_29A01729C(&v63, &v102);
                    if (v102.i64[1])
                    {
                      sub_29A014BEC(v102.i64[1]);
                    }
                  }

                  if (v103.i64[1])
                  {
                    sub_29A014BEC(v103.i64[1]);
                  }
                }

                if (v62)
                {
                  sub_29A014BEC(v62);
                }

                if ((v61.i8[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((v61.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v14 += 2;
                v15 -= 8;
              }

              while (v15);
            }

            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v106 = 0u;
            sub_29ABE8360(v11, &v129);
            v61 = v129;
            v129 = 0uLL;
            v22 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPath(&v106, v61.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductType(&v69, &v128);
            v23 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetType(v22, &v128);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductName(&v69, &v127);
            v24 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetName(v23, &v127);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetResolution(&v69, &v125);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolution(&v81, &v124);
            v25 = vdup_n_s32(v125.i64[0] == 0);
            v26.i64[0] = v25.u32[0];
            v26.i64[1] = v25.u32[1];
            v27 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v26, 0x3FuLL)), v124, v125);
            v126 = v27;
            if (v27.i64[1])
            {
              atomic_fetch_add_explicit((v27.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v28 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetResolution(v24, v126.i64);
            v105 = (v64 - v63) >> 4;
            v104 = v63;
            sub_29AC00FD8(&v105, &v104, &v120);
            v121 = v120;
            v120 = 0uLL;
            v29 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetRenderVars(v28, &v121);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetCamera(&v69, &v103);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCamera(&v81, &v102);
            v30 = vdup_n_s32(v103.i64[0] == 0);
            v31.i64[0] = v30.u32[0];
            v31.i64[1] = v30.u32[1];
            v32 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL)), v102, v103);
            v119 = v32;
            if (v32.i64[1])
            {
              atomic_fetch_add_explicit((v32.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v33 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetCameraPrim(v29, v119.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetPixelAspectRatio(&v69, &v100);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatio(&v81, &v99);
            v34 = vdup_n_s32(v100.i64[0] == 0);
            v35.i64[0] = v34.u32[0];
            v35.i64[1] = v34.u32[1];
            v36 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v35, 0x3FuLL)), v99, v100);
            v101 = v36;
            if (v36.i64[1])
            {
              atomic_fetch_add_explicit((v36.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v37 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPixelAspectRatio(v33, v101.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetAspectRatioConformPolicy(&v69, &v97);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicy(&v81, &v96);
            v38 = vdup_n_s32(v97.i64[0] == 0);
            v39.i64[0] = v38.u32[0];
            v39.i64[1] = v38.u32[1];
            v40 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v39, 0x3FuLL)), v96, v97);
            v98 = v40;
            if (v40.i64[1])
            {
              atomic_fetch_add_explicit((v40.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v41 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetAspectRatioConformPolicy(v37, v98.i64);
            v94 = 0;
            v95 = 0;
            v42 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetApertureSize(v41, &v94);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDataWindowNDC(&v69, &v92);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDC(&v81, &v91);
            v43 = vdup_n_s32(v92.i64[0] == 0);
            v44.i64[0] = v43.u32[0];
            v44.i64[1] = v43.u32[1];
            v45 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v44, 0x3FuLL)), v91, v92);
            v93 = v45;
            if (v45.i64[1])
            {
              atomic_fetch_add_explicit((v45.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v46 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDataWindowNDC(v42, v93.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableMotionBlur(&v69, &v89);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlur(&v81, &v88);
            v47 = vdup_n_s32(v89.i64[0] == 0);
            v48.i64[0] = v47.u32[0];
            v48.i64[1] = v47.u32[1];
            v49 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v48, 0x3FuLL)), v88, v89);
            v90 = v49;
            if (v49.i64[1])
            {
              atomic_fetch_add_explicit((v49.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v50 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableMotionBlur(v46, v90.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableDepthOfField(&v69, &v86);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfField(&v81, &v85);
            v51 = vdup_n_s32(v86.i64[0] == 0);
            v52.i64[0] = v51.u32[0];
            v52.i64[1] = v51.u32[1];
            v53 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v52, 0x3FuLL)), v85, v86);
            v87 = v53;
            if (v53.i64[1])
            {
              atomic_fetch_add_explicit((v53.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v54 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableDepthOfField(v50, v87.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettings(&v69, &v83);
            v55 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetNamespacedSettings(v54, &v83);
            pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::Build(v55, &v122);
            v60 = v122;
            v122 = 0uLL;
            if (v84)
            {
              sub_29A014BEC(v84);
            }

            if (v87.i64[1])
            {
              sub_29A014BEC(v87.i64[1]);
            }

            if (v85.i64[1])
            {
              sub_29A014BEC(v85.i64[1]);
            }

            if (v86.i64[1])
            {
              sub_29A014BEC(v86.i64[1]);
            }

            if (v90.i64[1])
            {
              sub_29A014BEC(v90.i64[1]);
            }

            if (v88.i64[1])
            {
              sub_29A014BEC(v88.i64[1]);
            }

            if (v89.i64[1])
            {
              sub_29A014BEC(v89.i64[1]);
            }

            if (v93.i64[1])
            {
              sub_29A014BEC(v93.i64[1]);
            }

            if (v91.i64[1])
            {
              sub_29A014BEC(v91.i64[1]);
            }

            if (v92.i64[1])
            {
              sub_29A014BEC(v92.i64[1]);
            }

            if (v95)
            {
              sub_29A014BEC(v95);
            }

            if (v98.i64[1])
            {
              sub_29A014BEC(v98.i64[1]);
            }

            if (v96.i64[1])
            {
              sub_29A014BEC(v96.i64[1]);
            }

            if (v97.i64[1])
            {
              sub_29A014BEC(v97.i64[1]);
            }

            if (v101.i64[1])
            {
              sub_29A014BEC(v101.i64[1]);
            }

            if (v99.i64[1])
            {
              sub_29A014BEC(v99.i64[1]);
            }

            if (v100.i64[1])
            {
              sub_29A014BEC(v100.i64[1]);
            }

            if (v119.i64[1])
            {
              sub_29A014BEC(v119.i64[1]);
            }

            if (v102.i64[1])
            {
              sub_29A014BEC(v102.i64[1]);
            }

            if (v103.i64[1])
            {
              sub_29A014BEC(v103.i64[1]);
            }

            if (*(&v121 + 1))
            {
              sub_29A014BEC(*(&v121 + 1));
            }

            if (*(&v120 + 1))
            {
              sub_29A014BEC(*(&v120 + 1));
            }

            if (v126.i64[1])
            {
              sub_29A014BEC(v126.i64[1]);
            }

            if (v124.i64[1])
            {
              sub_29A014BEC(v124.i64[1]);
            }

            if (v125.i64[1])
            {
              sub_29A014BEC(v125.i64[1]);
            }

            if (*(&v127 + 1))
            {
              sub_29A014BEC(*(&v127 + 1));
            }

            if (*(&v128 + 1))
            {
              sub_29A014BEC(*(&v128 + 1));
            }

            if (v61.i64[1])
            {
              sub_29A014BEC(v61.i64[1]);
            }

            if (v129.i64[1])
            {
              sub_29A014BEC(v129.i64[1]);
            }

            sub_29AC015C0(&v106);
            sub_29A01729C(&v74, &v60);
            if (*(&v60 + 1))
            {
              sub_29A014BEC(*(&v60 + 1));
            }

            *&v106 = &v63;
            sub_29A0176E4(&v106);
            sub_29ABED558(v66);
            if (v68)
            {
              sub_29A014BEC(v68);
            }
          }

          if (v70)
          {
            sub_29A014BEC(v70);
          }
        }

        if (v73)
        {
          sub_29A014BEC(v73);
        }

        if ((v71 & 7) != 0)
        {
          atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    v66[0] = (v75 - v74) >> 4;
    *&v122 = v74;
    sub_29AC00FD8(v66, &v122, &v106);
    *a3 = v106;
    *&v106 = &v74;
    sub_29A0176E4(&v106);
    sub_29ABED558(v77);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  if (v80)
  {
    sub_29A014BEC(v80);
  }

  v7 = v82;
  if (v82)
  {
LABEL_6:
    sub_29A014BEC(v7);
  }
}

void sub_29B05FBB0(_Unwind_Exception *a1)
{
  if (STACK[0x258])
  {
    sub_29A014BEC(STACK[0x258]);
  }

  _Unwind_Resume(a1);
}

void sub_29B060038(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B060068(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B19D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B0600A8(uint64_t result)
{
  if (result)
  {
    sub_29ABD4DDC();
  }

  return result;
}

unint64_t sub_29B0600FC()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "renderSettings_depOn_usdRenderSettings_includedPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "renderSettings_depOn_usdRenderSettings_materialBindingPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "renderSettings_depOn_usdRenderSettings_namespacedSettings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "renderSettings_depOn_usdRenderSettings_renderingColorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "renderSettings_depOn_usdRenderSettings_resolution", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "renderSettings_depOn_usdRenderSettings_pixelAspectRatio", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "renderSettings_depOn_usdRenderSettings_aspectRatioConformPolicy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "renderSettings_depOn_usdRenderSettings_dataWindowNDC", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "renderSettings_depOn_usdRenderSettings_disableMotionBlur", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "renderSettings_depOn_usdRenderSettings_disableDepthOfField", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "renderSettings_depOn_usdRenderSettings_camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "__dependencies_depOn_usdRenderSettings_products", 0);
  v1 = v0 + 12;
  v2 = *v0;
  v19 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v20 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v21 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v22 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v23 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v24 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v25 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v27 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v28 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v29 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v30 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[13] = 0;
  v0[14] = 0;
  sub_29A12EF7C(v1, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v15 = *(&v19 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v16 = 0;
  atomic_compare_exchange_strong(qword_2A17586E0, &v16, v0);
  if (v16)
  {
    v17 = sub_29AB67BC8(v0);
    operator delete(v17);
    return atomic_load(qword_2A17586E0);
  }

  return v0;
}

void sub_29B0604D0(_Unwind_Exception *a1)
{
  v4 = 88;
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
      v6 = v1[11];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[10];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[9];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[8];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[7];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[6];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[5];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[4];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[3];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[2];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void sub_29B060690(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0606C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1A48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B060700(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((result + 36));
    sub_29A1DE3A4((v1 + 32));
    sub_29ABD4DDC();
  }

  return result;
}

uint64_t sub_29B060770()
{
  v0 = &unk_2A17586A0;
  v1 = -1440;
  do
  {
    sub_29ABC3488(v0);
    result = sub_29ABC3488((v0 - 56));
    v3 = *(v0 - 8);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v0 -= 120;
    v1 += 120;
  }

  while (v1);
  return result;
}

uint64_t sub_29B0607D4()
{
  v1 = nullsub_1805;
  return sub_29B060C6C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::~UsdImagingRenderVarAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B060A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B060A90@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::UsdImagingDataSourceRenderVarPrim(v8, a1, &v13, a3);
  sub_29B060E98(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::InvalidateImagingSubprim(void *a1@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::Invalidate(a2, a3);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

uint64_t sub_29B060C6C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1CB0;
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

void sub_29B060CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B060D1C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B060D44@<D0>(_OWORD *a1@<X8>)
{
  sub_29B060D80(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B060D80(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B1CF0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B1A70;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B060E2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B1CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B060E98(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B1D40;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B060EF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B060F0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B060F34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B060F64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1D90))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29B060FA4()
{
  v1 = nullsub_1806;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRepresentedByAncestorPrimAdapter::GetImagingSubprims(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRepresentedByAncestorPrimAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

uint64_t sub_29B061064(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B061094(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_29B061194(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29A1E234C(va);
  sub_29A1DCEA8((v1 + 152));
  sub_29A1DCEA8((v1 + 144));
  sub_29AC113C4(v1, v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::~UsdImagingRerootingSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex *this)
{
  v3 = (this + 160);
  sub_29A1E234C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 39);
  sub_29A1DE3A4(this + 38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 37);
  sub_29A1DE3A4(this + 36);
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), v2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::~UsdImagingRerootingSceneIndex(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 152));
  if (result)
  {
    if (*(this + 184) == 1)
    {
      sub_29A1E21F4(&v16, a2);
      sub_29A1E2240(&v16 + 1, a2 + 1);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v16, a2, (this + 152), (this + 144), 1);
    }

    v7 = sub_29AC1199C(this + 14);
    (*(*v7 + 16))(v7, &v16);
    if (a3[1])
    {
      if ((*(this + 184) & 1) == 0)
      {
        v8 = operator new(0x28uLL);
        sub_29B061E64(v8, this + 36, this + 38, a3 + 1);
        sub_29B061EF8(&v15, v8);
        v9 = v15;
        v15 = 0uLL;
        v10 = a3[2];
        *(a3 + 1) = v9;
        if (v10)
        {
          sub_29A014BEC(v10);
          if (*(&v15 + 1))
          {
            sub_29A014BEC(*(&v15 + 1));
          }
        }
      }

      if (*a2 == *(this + 19))
      {
        pxrInternal__aapl__pxrReserved__::HdSystemSchema::ComposeAsPrimDataSource(this + 14, &v16, 0, &v13);
        sub_29AC68F54(&v13, (a3 + 1), &v15);
        v11 = v15;
        v15 = 0uLL;
        v12 = a3[2];
        *(a3 + 1) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
          if (*(&v15 + 1))
          {
            sub_29A014BEC(*(&v15 + 1));
          }
        }

        if (v14)
        {
          sub_29A014BEC(v14);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16 + 1);
    return sub_29A1DE3A4(&v16);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_29B061440(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29AC2B620(v6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::GetChildPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 152)))
  {
    v6 = *(this + 184);
    v7 = sub_29AC1199C(this + 14);
    v8 = v7;
    if (v6 == 1)
    {
      v9 = *(*v7 + 24);

      return v9();
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v12, a2, (this + 152), (this + 144), 1);
      (*(*v8 + 24))(v8, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      result = sub_29A1DE3A4(&v12);
      if (*a3 != *(a3 + 8))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v12, *a3, (this + 144), (this + 152), 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((this + 152), a2);
    if (result)
    {
      v11 = (*(this + 20) + 8 * pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2));
      sub_29A1E21F4(&v12, v11);
      sub_29A1E2240(&v12 + 1, v11 + 1);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      sub_29A65B758(a3, &v12, &v13, 1uLL);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      return sub_29A1DE3A4(&v12);
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  return result;
}

void sub_29B0616AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void **pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::_PrimsAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[33] = *MEMORY[0x29EDCA608];
  v16[32] = 0x1000000000;
  v5 = *(a3 + 256);
  if (v5 >= 0x11)
  {
    sub_29AC3D6F0(v16, v5);
  }

  if (*(a1 + 184) == 1)
  {
    if (*(a3 + 260) >= 0x11u)
    {
      v6 = *a3;
    }

    else
    {
      v6 = a3;
    }

    v7 = *(a3 + 256);
    if (v7)
    {
      v8 = 16 * v7;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v6, (a1 + 144)))
        {
          sub_29AC50374(v16, v6);
        }

        v6 = (v6 + 16);
        v8 -= 16;
      }

      while (v8);
    }
  }

  else
  {
    if (*(a3 + 260) >= 0x11u)
    {
      v9 = *a3;
    }

    else
    {
      v9 = a3;
    }

    v10 = *(a3 + 256);
    if (*(a1 + 185) == 1)
    {
      if (v10)
      {
        v11 = &v9[2 * v10];
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v9, (a1 + 144), (a1 + 152), 1);
          v12 = v9 + 1;
          sub_29AC4CE80(v16, &v15, v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
          sub_29A1DE3A4(&v15);
          v9 = v12 + 1;
        }

        while (v9 != v11);
      }
    }

    else if (v10)
    {
      v13 = 16 * v10;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v9, (a1 + 144)))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v9, (a1 + 144), (a1 + 152), 1);
          sub_29AC4CE80(v16, &v15, v9 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
          sub_29A1DE3A4(&v15);
        }

        v9 += 2;
        v13 -= 16;
      }

      while (v13);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v16);
  return sub_29AC263E4(v16);
}

void sub_29B0618C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AC263E4(va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::_PrimsRemoved(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = a3;
  v15[17] = *MEMORY[0x29EDCA608];
  v15[16] = 0x1000000000;
  v5 = *(a3 + 32);
  if (v5 >= 0x11)
  {
    sub_29AC3D990(v15, v5);
  }

  if (*(a1 + 184) == 1)
  {
    v6 = *(v3 + 32);
    if (*(v3 + 33) >= 0x11u)
    {
      v3 = *v3;
    }

    if (v6)
    {
      v7 = 8 * v6;
      while (1)
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v3, (a1 + 144)))
        {
          sub_29AC4DAF8(v15, v3);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((a1 + 144), v3))
        {
          break;
        }

        v3 = (v3 + 8);
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      sub_29A1E21F4(&v12, (a1 + 152));
      sub_29A1E2240(&v13, (a1 + 156));
      v14[16] = 0x1000000001;
      sub_29A1E21F4(v14, &v12);
      sub_29A1E2240(v14 + 1, &v13);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v14);
      sub_29AC26348(v14);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      sub_29A1DE3A4(&v12);
      return sub_29AC26348(v15);
    }
  }

  else
  {
    v8 = *(v3 + 32);
    if (*(v3 + 33) >= 0x11u)
    {
      v3 = *v3;
    }

    if (*(a1 + 185) == 1)
    {
      if (v8)
      {
        v9 = 8 * v8;
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v14, v3, (a1 + 144), (a1 + 152), 1);
          sub_29AC4DAF8(v15, v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v14 + 1);
          sub_29A1DE3A4(v14);
          v3 = (v3 + 8);
          v9 -= 8;
        }

        while (v9);
      }
    }

    else if (v8)
    {
      v10 = 8 * v8;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v3, (a1 + 144)))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v14, v3, (a1 + 144), (a1 + 152), 1);
          sub_29AC4DAF8(v15, v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v14 + 1);
          sub_29A1DE3A4(v14);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((a1 + 144), v3))
        {
          goto LABEL_27;
        }

        v3 = (v3 + 8);
        v10 -= 8;
      }

      while (v10);
    }
  }

LABEL_26:
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v15);
  return sub_29AC26348(v15);
}

void sub_29B061BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0x1000000000;
  v7 = *(v4 + 1856);
  if (v7 >= 0x11)
  {
    sub_29AC14D54(v18, v7);
  }

  if (*(v6 + 184) == 1)
  {
    if (*(v5 + 1857) >= 0x11u)
    {
      v8 = *v5;
    }

    else
    {
      v8 = v5;
    }

    v9 = *(v5 + 1856);
    if (v9)
    {
      v10 = 464 * v9;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v8, (v6 + 144)))
        {
          sub_29AD9391C(v18, v8);
        }

        v8 = (v8 + 464);
        v10 -= 464;
      }

      while (v10);
    }
  }

  else
  {
    if (*(v5 + 1857) >= 0x11u)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v5;
    }

    v12 = *(v5 + 1856);
    if (*(v6 + 185) == 1)
    {
      if (v12)
      {
        v13 = (v11 + 464 * v12);
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v17, v11, (v6 + 144), (v6 + 152), 1);
          v14 = v11 + 8;
          sub_29AC2C3E8(v18, &v17, v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
          sub_29A1DE3A4(&v17);
          v11 = (v14 + 456);
        }

        while (v11 != v13);
      }
    }

    else if (v12)
    {
      v15 = 464 * v12;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v11, (v6 + 144)))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v17, v11, (v6 + 144), (v6 + 152), 1);
          sub_29AC2C3E8(v18, &v17, v11 + 8);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
          sub_29A1DE3A4(&v17);
        }

        v11 = (v11 + 464);
        v15 -= 464;
      }

      while (v15);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v18);
  return sub_29ABD3844(v18);
}

void sub_29B061E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABD3844(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B061E64(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  *a1 = &unk_2A20B2070;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  v8 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void *sub_29B061EF8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B2248;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B061F50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B061F68(uint64_t a1)
{
  *a1 = &unk_2A20B2070;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B061FEC(uint64_t a1)
{
  *a1 = &unk_2A20B2070;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

uint64_t sub_29B062074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_29B0620AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  (*(*v4 + 24))(&v15);
  if (v15)
  {
    sub_29ABC3244(&v15, &v13);
    if (v13)
    {
      v5 = operator new(0x28uLL);
      sub_29B061E64(v5, (a1 + 8), (a1 + 16), &v13);
      sub_29B061EF8(&v12, v5);
      *a2 = v12;
    }

    else
    {
      if (v14)
      {
        sub_29A014BEC(v14);
      }

      sub_29ABE1B68(&v15, &v13);
      if (v13)
      {
        v6 = operator new(0x28uLL);
        *v6 = &unk_2A20B20B8;
        sub_29A1E21F4(v6 + 2, (a1 + 8));
        sub_29A1E2240(v6 + 3, (a1 + 12));
        sub_29A1E21F4(v6 + 4, (a1 + 16));
        sub_29A1E2240(v6 + 5, (a1 + 20));
        v7 = v14;
        *(v6 + 3) = v13;
        *(v6 + 4) = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = operator new(0x20uLL);
        v9 = &unk_2A20B2108;
      }

      else
      {
        if (v14)
        {
          sub_29A014BEC(v14);
        }

        sub_29AC34FD4(&v15, &v13);
        if (!v13)
        {
          if (v14)
          {
            sub_29A014BEC(v14);
          }

          v11 = v16;
          *a2 = v15;
          a2[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_22;
        }

        v6 = operator new(0x28uLL);
        *v6 = &unk_2A20B2180;
        sub_29A1E21F4(v6 + 2, (a1 + 8));
        sub_29A1E2240(v6 + 3, (a1 + 12));
        sub_29A1E21F4(v6 + 4, (a1 + 16));
        sub_29A1E2240(v6 + 5, (a1 + 20));
        v10 = v14;
        *(v6 + 3) = v13;
        *(v6 + 4) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = operator new(0x20uLL);
        v9 = &unk_2A20B21D0;
      }

      *v8 = v9;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = v6;
      *a2 = v6;
      a2[1] = v8;
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

LABEL_22:
  if (v16)
  {
    sub_29A014BEC(v16);
  }
}

void sub_29B062318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  (*(*v14 + 8))(v14);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(a1);
}

void sub_29B062378(uint64_t a1)
{
  *a1 = &unk_2A20B20B8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B0623FC(uint64_t a1)
{
  *a1 = &unk_2A20B20B8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

_DWORD *sub_29B062484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 32))(&v4);
  *(a2 + 8) = &off_2A20470E8 + 1;
  sub_29A1E21F4(a2, &v4);
  sub_29A1E2240((a2 + 4), &v4 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  return sub_29A1DE3A4(&v4);
}

uint64_t sub_29B062514(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

_DWORD *sub_29B062544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  if (v4)
  {
    (*(*v4 + 32))(&v6);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a2, &v6, (a1 + 1), (a1 + 2), 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    return sub_29A1DE3A4(&v6);
  }

  else
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 4));
  }
}

void sub_29B062618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B062630(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B062658(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B062688(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2158))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0626C8(uint64_t a1)
{
  *a1 = &unk_2A20B2180;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B06274C(uint64_t a1)
{
  *a1 = &unk_2A20B2180;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29B0627D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2076AF0;
  sub_29A18ECC8(a2, v3);
  sub_29ABED558(v3);
}

void sub_29B062848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABED558(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B062860(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void *sub_29B062890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = a1[3];
  if (result)
  {
    result = (*(*result + 32))(a2);
    v5 = *a2;
    if (*a2)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath((a1 + 1));
      if (result)
      {
        v8 = 0;
      }

      else
      {
        v9 = 0;
        v8 = 0;
        while (1)
        {
          result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((*(a2 + 32) + v9), (a1 + 1));
          if (result)
          {
            break;
          }

          ++v8;
          v9 += 8;
          if (v5 == v8)
          {
            return result;
          }
        }
      }

      if (v5 > v8)
      {
        sub_29AC6A5F4(a2, v6, v7);
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v10, (*(a2 + 32) + 8 * v8), (a1 + 1), (a1 + 2), 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_29B0629EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B062A14(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B062A44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2220))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B062A88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B062AB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B062AE0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2298))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCreateSceneIndices(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0;
  if (*(a1 + 25))
  {
    if ((atomic_load_explicit(&qword_2A1758720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758720))
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens);
      if (!v5)
      {
        v5 = sub_29AFCE258(&pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndexTokens);
      }

      LOBYTE(v6) = 1;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v6, &v11);
      *&__dst.__r_.__value_.__l.__data_ = v11;
      v11 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v5, &__dst, &v13);
      xmmword_2A1758710 = v13;
      v13 = 0uLL;
      if (__dst.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__dst.__r_.__value_.__l.__size_);
      }

      if (*(&v11 + 1))
      {
        sub_29A014BEC(*(&v11 + 1));
      }

      __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1758710, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758720);
    }

    v7 = xmmword_2A1758710;
    if (*(&xmmword_2A1758710 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A1758710 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0uLL;
  }

  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::OverlayedContainerDataSources(&v7, (a1 + 8), &v10);
  sub_29B063590(&v10, &v9);
  v4 = *a2;
  *a2 = v9;
  v9 = 0;
  sub_29B290B2C(a2, v4);
  v8 = *a2;
  sub_29B293C98(a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_RemoveRef();
}

uint64_t sub_29B063590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x390uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingStageSceneIndex::UsdImagingStageSceneIndex(v4, a1);
  *a2 = v4;
  return result;
}

uint64_t sub_29B0635E8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void *sub_29B0636AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x210uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::HdRetainedSmallVectorDataSource(v6, *a1, a2);

  return sub_29AC011AC(a3, v6);
}

void *sub_29B063818()
{
  result = operator new(0x10uLL);
  *result = &unk_2A20B22C0;
  return result;
}

void sub_29B0638D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B0638EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2330))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29B063968(void *result, void *a2)
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

void sub_29B063BC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29B063C2C()
{
  v1 = nullsub_1809;
  return sub_29B0647A8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::~UsdImagingSphereAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 14);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B063ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B063EE8@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  sub_29B0649D4(v8, a1, &v13, a3);
  sub_29B064FC8(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    sub_29B064050(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

void sub_29B064050(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29B064D34();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(this, a2);
}

void sub_29B06423C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 115) ^ *a4) < 8)
  {
    return 32;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetPoints(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, a2);
  v2 = 0x3FF0000000000000;
  v3[0] = &unk_2A2060648;
  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::GetRadiusAttr(v3, &v4);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_29B064620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::~UsdGeomSphere(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetTopology@<X0>(uint64_t a1@<X8>)
{
  sub_29A0ECEEC(&v4, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingSphereAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if ((atomic_load_explicit(&qword_2A1758918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758918))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::GenerateTopology(0xA, 0xAuLL, 1, v3);
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&unk_2A1758728, v3, 0);
    sub_29AB72E30();
  }

  *(a1 + 8) = &off_2A20A8498;
  result = sub_29AFBD25C(a1, &unk_2A1758728);
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  return result;
}

uint64_t sub_29B0647A8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B25B0;
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

void sub_29B064834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B064858(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B064880@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0648BC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0648BC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B25F0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B2350;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B064968(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B25F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B0649D4(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20B2640;
  return a1;
}

void sub_29B064B00(uint64_t a1)
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

void sub_29B064B9C(uint64_t a1)
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

void *sub_29B064C3C@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29B064C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29B064C90(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29B064D34();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29B064D34()
{
  if ((atomic_load_explicit(&qword_2A14FA3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA3C0))
  {
    v1 = sub_29B064E14(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA398, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA398, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA3C0);
  }

  return &unk_2A14FA398;
}

unint64_t sub_29B064E14@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomSphere::GetSchemaAttributeNames(0);
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

void sub_29B064F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29B064FC8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B2688;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B065020(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B06503C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B065064(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B065094(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B26D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B0650D4()
{
  v1 = nullsub_1810;
  return sub_29B065454(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::~UsdImagingSphereLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 36);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 36);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 288, this);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingSphereLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 288), a2, a3);
}

uint64_t sub_29B065454(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B2940;
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

void sub_29B0654E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B065504(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B06552C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B065568(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B065568(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B2980;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B2700;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B065614(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B2980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B065680()
{
  v1 = nullsub_1811;
  return sub_29B066250(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::~UsdImagingTetMeshAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B065928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B06593C@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::UsdImagingDataSourceTetMeshPrim(v8, a1, &v13, a3);
  sub_29B06647C(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(this, a2);
}

void sub_29B065B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  if ((*(v10 + 134) ^ *a4) < 8)
  {
    return 256;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 91) ^ *a4) < 8)
  {
    return 256;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetTopology(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v8, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingTetMeshAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, a2);
  v3[0] = &unk_2A20606F8;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::GetSurfaceFaceVertexIndicesAttr(v3, v7);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v3);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
}

uint64_t sub_29B066250(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B2C30;
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

void sub_29B0662DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B066300(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B066328@<D0>(_OWORD *a1@<X8>)
{
  sub_29B066364(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B066364(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B2C70;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B29D0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B066410(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B2C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B06647C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B2CC0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0664D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0664F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B066518(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B066548(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B2D10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_GetUdimTiles(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = *MEMORY[0x29EDCA608];
  v5 = a1[23];
  v6 = *a1;
  v7 = *(a1 + 1);
  if (v5 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v5 >= 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9 < 6)
  {
    goto LABEL_20;
  }

  v12 = &v8[v9];
  v13 = v8;
  while (1)
  {
    v14 = memchr(v13, 60, v9 - 5);
    if (!v14)
    {
      goto LABEL_20;
    }

    if (*v14 == 1229215036 && *(v14 + 2) == 15949)
    {
      break;
    }

    v13 = v14 + 1;
    v9 = v12 - v13;
    if (v12 - v13 < 6)
    {
      goto LABEL_20;
    }
  }

  if (v14 == v12 || (v16 = v14 - v8, v16 == -1))
  {
LABEL_20:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if ((v5 & 0x80000000) != 0)
    {
      sub_29A008D14(&__dst, v6, v7);
    }

    else
    {
      __dst = *a1;
    }

    std::string::replace(&__dst, v16, 6uLL, "%i");
    v17 = pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(v46);
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v17);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    sub_29B066998(a4, a2);
    if ((a2 & 0x80000000) == 0)
    {
      v19 = 0;
      v20 = a2 + 1001;
      if (a2 + 1001 <= 1001)
      {
        v20 = 1001;
      }

      v21 = v20 - 1000;
      do
      {
        v22 = sub_29B293A0C(a3);
        if (v23 & 1 | v22)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf(p_dst, v23, v24, (v19 + 1001));
          pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(a3, &__p, &v40);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &__dst;
          }

          else
          {
            v26 = __dst.__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf(v26, v23, v24, (v19 + 1001));
        }

        pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(Resolver);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          size = __p.__r_.__value_.__l.__size_;
          operator delete(__p.__r_.__value_.__l.__data_);
          if (size)
          {
LABEL_41:
            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v39);
            v29 = a4[1];
            v28 = a4[2];
            if (v29 >= v28)
            {
              v30 = (v29 - *a4) >> 4;
              v31 = v30 + 1;
              if ((v30 + 1) >> 60)
              {
                sub_29A00C9A4();
              }

              v32 = v28 - *a4;
              if (v32 >> 3 > v31)
              {
                v31 = v32 >> 3;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              v45 = a4;
              if (v33)
              {
                v34 = sub_29A017BD4(a4, v33);
              }

              else
              {
                v34 = 0;
              }

              v35 = &v34[16 * v30];
              __p.__r_.__value_.__r.__words[0] = v34;
              __p.__r_.__value_.__l.__size_ = v35;
              v44 = &v34[16 * v33];
              *v35 = v19;
              *(v35 + 8) = v39;
              v39 = 0;
              __p.__r_.__value_.__r.__words[2] = v35 + 16;
              sub_29AEAE75C(a4, &__p);
              v36 = a4[1];
              sub_29AEAE800(&__p);
              v37 = v39;
              a4[1] = v36;
              if ((v37 & 7) != 0)
              {
                atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else
            {
              *v29 = v19;
              *(v29 + 8) = v39;
              a4[1] = v29 + 16;
            }
          }
        }

        else if (*(&__p.__r_.__value_.__s + 23))
        {
          goto LABEL_41;
        }

        if (v41 < 0)
        {
          operator delete(v40);
        }

        ++v19;
      }

      while (v21 != v19);
    }

    sub_29B066A28(a4);
    pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(v46);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t *sub_29B066998(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v5[4] = result;
    v5[0] = sub_29A017BD4(result, a2);
    v5[1] = v5[0] + v3;
    v5[2] = v5[0] + v3;
    v5[3] = v5[0] + 16 * v4;
    sub_29AEAE75C(v2, v5);
    return sub_29AEAE800(v5);
  }

  return result;
}

void sub_29B066A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AEAE800(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B066A28(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = v4 >> 4;
    v13 = result;
    if (v1 == v2)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(result, v4 >> 4);
      v3 = v5[2] - *v5;
    }

    v9 = v7;
    v10 = &v7[16 * v6];
    v11 = v10;
    v12 = &v7[16 * v8];
    if (v8 < v3 >> 4)
    {
      sub_29AEAE75C(v5, &v9);
    }

    return sub_29AEAE800(&v9);
  }

  return result;
}

void sub_29B066AC8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AEAE800(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29B066AB8);
}

uint64_t sub_29B066AF0()
{
  v1 = nullsub_1812;
  return sub_29B067554(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::~UsdImagingVolumeAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 15);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B066D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B066DAC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::UsdImagingDataSourceVolumePrim(v8, a1, &v13, a3);
  sub_29B067818(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 15);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::_GatherVolumeData(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v7, a2);
  v7 = &unk_2A2060BE0;
  if (v8 && (*(v8 + 57) & 8) == 0 && off_2A2060C00(&v7))
  {
    pxrInternal__aapl__pxrReserved__::UsdVolVolume::GetFieldPaths(&v7, &v6);
  }

  v4 = *(a3 + 16) != 0;
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(&v7);
  return v4;
}

void sub_29B067028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(this, a2);
}

void sub_29B0670FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetVolumeFieldDescriptors(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::_GatherVolumeData(a1, a2, &v24))
  {
    v4 = v24;
    if (v24 != v25)
    {
      v5 = off_2A2060B50[0];
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, (v4 + 5), &v19);
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v17, &v19);
        v17 = &unk_2A2060B30;
        if (v18 && (*(v18 + 57) & 8) == 0 && v5(&v17))
        {
          v16 = 0;
          PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, &v19, 0);
          v7 = *PrimAdapter;
          v8 = PrimAdapter[1];
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v7)
          {
            if (v9)
            {
              goto LABEL_13;
            }
          }

          v14[0] = "usdImaging/volumeAdapter.cpp";
          v14[1] = "GetVolumeFieldDescriptors";
          v14[2] = 169;
          v14[3] = "virtual HdVolumeFieldDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingVolumeAdapter::GetVolumeFieldDescriptors(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
          v15 = 0;
          if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "fieldAdapter", 0))
          {
            v9 = 0;
LABEL_13:
            (*(*v9 + 536))(v14);
            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v16 = v14[0];
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v19);
          }

          if (v8)
          {
            sub_29A014BEC(v8);
          }

          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdVolFieldBase::~UsdVolFieldBase(&v17);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
        sub_29A1DE3A4(&v21);
        if (v20)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v10);
        }

        v11 = v4[1];
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
            v12 = v4[2];
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v4 = v12;
      }

      while (v12 != v25);
    }
  }

  sub_29A349AC0(&v24, v25[0]);
}

void sub_29B067454(_Unwind_Exception *a1, void **a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdVolFieldBase::~UsdVolFieldBase(va1);
  sub_29A57F434(va2);
  sub_29A349AC0(v5 - 112, *(v5 - 104));
  v7 = a2;
  sub_29ABF537C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B067514(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29B06798C(a1, a2);
  }

  else
  {
    sub_29B067924(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29B067554(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B2F98;
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

void sub_29B0675E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B067604(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B06762C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B067668(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B067668(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B2FD8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B2D38;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B067714(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B2FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B067780(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v6 = *a2;
  *a1 = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 16), a4);
  sub_29A1E2240((a1 + 20), a4 + 1);
  return a1;
}

void *sub_29B067818(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B3028;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B067870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B06788C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0678B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0678E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B3078))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_29B067924(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  *(v4 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84((v4 + 16), (a2 + 16));
  result = sub_29A1DDDC0((v4 + 20), (a2 + 20));
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t sub_29B06798C(uint64_t *a1, uint64_t a2)
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
  *(v8 + 1) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84(v8 + 4, (a2 + 16));
  sub_29A1DDDC0(v8 + 5, (a2 + 20));
  *&v17 = v8 + 24;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29ACCC558(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACCC6CC(&v15);
  return v14;
}

void sub_29B067AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCC6CC(va);
  _Unwind_Resume(a1);
}

void sub_29B067ADC()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGINGGL_ENGINE_DEBUG_SCENE_DELEGATE_ID))
  {
    sub_29B2CFD5C();
  }
}

void sub_29B067B0C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGINGGL_ENGINE_ENABLE_SCENE_INDEX))
  {
    sub_29B2CFD90();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, a2, a2 + 8, a2 + 32, (a2 + 56), (a2 + 64), a2 + 88, *(a2 + 96), *(a2 + 97));
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, a2, a2 + 8, a2 + 32, (a2 + 56), (a2 + 64), a2 + 88, *(a2 + 96), *(a2 + 97));
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, uint64_t a7, char a8, char a9)
{
  *a1 = 0;
  v13 = *a6;
  *(a1 + 8) = *a6;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 16), a6 + 1);
  *(a1 + 40) = 0;
  *(a1 + 48) = a9;
  *(a1 + 49) = a8;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  sub_29A1E21F4((a1 + 80), a5);
  sub_29A1E2240((a1 + 84), a5 + 1);
  *(a1 + 88) = 0;
  sub_29B06E490((a1 + 96));
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 112));
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 216));
  *(a1 + 320) = 0;
  *(a1 + 328) = xmmword_29B712FC0;
  *(a1 + 344) = 1;
  sub_29A1E21F4((a1 + 348), a2);
  sub_29A1E2240((a1 + 352), a2 + 1);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_29B067E28()
{
  v1 = *(v0 + 496);
  *(v0 + 496) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = *(v0 + 488);
  *(v0 + 488) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29ABD4DDC();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_29B068134();
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, v8, v10, v9, dword_2A17589D0, a2, a3, a4, 0);
}

{
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_29B068134();
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(a1, v8, v10, v9, dword_2A17589D0, a2, a3, a4, 0);
}

void sub_29B068108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  a16 = &a10;
  sub_29A1E234C(&a16);
  a10 = &a13;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void sub_29B068134()
{
  if ((atomic_load_explicit(&qword_2A17589D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17589D8))
  {
    v0 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGINGGL_ENGINE_DEBUG_SCENE_DELEGATE_ID);
    if (!v0)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&unk_2A17589D0, v0);
    __cxa_atexit(sub_29A1DCEA8, &unk_2A17589D0, &dword_299FE7000);

    __cxa_guard_release(&qword_2A17589D8);
  }
}

void sub_29B0682BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  a16 = &a10;
  sub_29A1E234C(&a16);
  a10 = &a13;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetRendererPlugin(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_InitializeHgiIfNecessary(this);
  Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(v4);
  v6 = Instance;
  v17 = 0;
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetDefaultPluginId(Instance, *(this + 49), &v14);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v17 = v14;
    goto LABEL_11;
  }

  pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetOrCreateRendererPlugin(Instance, a2, &v12);
  if (v12 && (*(*v12 + 40))(v12, *(this + 49)))
  {
    sub_29A166F2C(&v17, a2);
    pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(&v12);
    if (!*(this + 8))
    {
      goto LABEL_16;
    }

LABEL_11:
    pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::GetPluginId(this + 7, &v14);
    v9 = v17 ^ v14;
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 < 8)
    {
      v10 = 1;
    }

    else
    {
LABEL_16:
      v14 = 0u;
      v15 = 0u;
      v16 = 1065353216;
      pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::CreateRenderDelegate(v6, &v17, &v14, &v12);
      sub_29AC1E22C(&v14);
      v10 = v13 != 0;
      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_SetRenderDelegateAndRestoreState(this, &v12);
      }

      pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::~HdPluginRenderDelegateUniqueHandle(&v12);
    }

    goto LABEL_21;
  }

  *&v14 = "usdImagingGL/engine.cpp";
  *(&v14 + 1) = "SetRendererPlugin";
  *&v15 = 1018;
  *(&v15 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetRendererPlugin(const TfToken &)";
  LOBYTE(v16) = 0;
  v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v7)
  {
    v8 = (v7 + 16);
    if (*(v7 + 39) < 0)
    {
      v8 = *v8;
    }
  }

  else
  {
    v8 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 1, "Invalid plugin id or plugin is unsupported: %s", v8);
  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(&v12);
  v10 = 0;
LABEL_21:
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v10;
}

void sub_29B0684E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::~HdPluginRenderDelegateUniqueHandle(va);
  v5 = *(v3 - 40);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetDefaultRendererPluginId(pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine *this@<X0>, atomic_uint **a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17589C8, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_2A17589C8);
    if (this)
    {
      sub_29A008E78(v16, "HD_DEFAULT_RENDERER");
      sub_29A008E78(&__p, "");
      pxrInternal__aapl__pxrReserved__::TfGetenv(v16, &__p, &qword_2A17589B0);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A17589B0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17589C8);
    }
  }

  v3 = qword_2A17589B8;
  if (byte_2A17589C7 >= 0)
  {
    v3 = byte_2A17589C7;
  }

  if (v3)
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
    Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(this);
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(Instance, &__p);
    if (v21 == __p)
    {
LABEL_24:
      v16[0] = "usdImagingGL/engine.cpp";
      v16[1] = "_GetDefaultRendererPluginId";
      v17 = 1933;
      v18 = "static TfToken pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::_GetDefaultRendererPluginId()";
      v19 = 0;
      if (byte_2A17589C7 >= 0)
      {
        v13 = &qword_2A17589B0;
      }

      else
      {
        v13 = qword_2A17589B0;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v16, "Failed to find default renderer with display name '%s'.", v5, v13);
      v14 = 0;
    }

    else
    {
      if (byte_2A17589C7 >= 0)
      {
        v6 = byte_2A17589C7;
      }

      else
      {
        v6 = qword_2A17589B8;
      }

      if (byte_2A17589C7 >= 0)
      {
        v7 = &qword_2A17589B0;
      }

      else
      {
        v7 = qword_2A17589B0;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v21 - __p) >> 3) <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - __p) >> 3);
      }

      v9 = __p + 16;
      while (1)
      {
        v10 = v9[15];
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *v9;
        }

        if (v10 == v6)
        {
          v12 = v11 >= 0 ? v9 - 8 : *(v9 - 1);
          if (!memcmp(v12, v7, v6))
          {
            break;
          }
        }

        v9 += 40;
        if (!--v8)
        {
          goto LABEL_24;
        }
      }

      v15 = *(v9 - 2);
      *a2 = v15;
      if ((v15 & 7) == 0)
      {
        goto LABEL_29;
      }

      v14 = (v15 & 0xFFFFFFFFFFFFFFF8);
      if (atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed))
      {
        goto LABEL_29;
      }
    }

    *a2 = v14;
LABEL_29:
    v16[0] = &__p;
    sub_29AC877F8(v16);
    return;
  }

  *a2 = 0;
}