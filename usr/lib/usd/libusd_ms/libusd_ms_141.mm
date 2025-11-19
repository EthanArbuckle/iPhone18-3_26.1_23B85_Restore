uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetResolution(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetRenderVars(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetCameraPrim(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPixelAspectRatio(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetAspectRatioConformPolicy(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetApertureSize(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDataWindowNDC(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableMotionBlur(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableDepthOfField(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 200);
  *(a1 + 192) = v4;
  *(a1 + 200) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens))
    {
      sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!result)
  {
    return sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B1C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B1C8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174B190, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174B190, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174B1C8);
  }

  return &unk_2A174B190;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetResolutionLocator(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B208, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B208);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B190, (v3 + 32), dword_2A174B1D0);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B1D0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B208);
    }
  }

  return dword_2A174B1D0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetRenderVarsLocator(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B248, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B248);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B190, (v3 + 40), dword_2A174B210);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B210, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B248);
    }
  }

  return dword_2A174B210;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B288, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B288);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B190, (v3 + 104), dword_2A174B250);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B250, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B288);
    }
  }

  return dword_2A174B250;
}

pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType *sub_29AC96C04(atomic_ullong *a1)
{
  result = sub_29AC96C4C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType::~HdRenderProductSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType *sub_29AC96C4C()
{
  v0 = operator new(0x88uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType::HdRenderProductSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC96C90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2079A90, 0)) != 0)
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

void *sub_29AC96D20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2079CB0, 0)) != 0)
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

double pxrInternal__aapl__pxrReserved__::HdRenderSettings::HdRenderSettings(pxrInternal__aapl__pxrReserved__::HdRenderSettings *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdBprim::HdBprim(this, a2);
  *v2 = &unk_2A207E1B0;
  *(v2 + 8) = 0;
  *(v2 + 19) = 0;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 17) = 0;
  return result;
}

{
  v2 = pxrInternal__aapl__pxrReserved__::HdBprim::HdBprim(this, a2);
  *v2 = &unk_2A207E1B0;
  *(v2 + 8) = 0;
  *(v2 + 19) = 0;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 17) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettings::~HdRenderSettings(pxrInternal__aapl__pxrReserved__::HdRenderSettings *this)
{
  *this = &unk_2A207E1B0;
  sub_29A186B14(this + 144);
  v2 = *(this + 17);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

{
  pxrInternal__aapl__pxrReserved__::HdRenderSettings::~HdRenderSettings(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettings::GetAndResetHasDirtyProducts(pxrInternal__aapl__pxrReserved__::HdRenderSettings *this)
{
  v1 = *(this + 17);
  *(this + 17) = 0;
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettings::Sync(pxrInternal__aapl__pxrReserved__::HdRenderSettings *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v8 = *a4;
  if ((*a4 & 2) != 0)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens))
    {
      sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*a2 + 120))(&v23, a2, this + 8);
    if (sub_29A1EFCDC(&v23))
    {
      if ((v24 & 4) != 0)
      {
        v10 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
      }

      else
      {
        v10 = &v23;
      }

      *(this + 16) = *v10;
    }

    sub_29A186B14(&v23);
    v8 = *a4;
  }

  if ((v8 & 4) != 0)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v11)
    {
      v11 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*a2 + 120))(&v23, a2, this + 8, v11 + 8);
    if (sub_29A185258(&v23))
    {
      if ((v24 & 4) != 0)
      {
        v12 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
      }

      else
      {
        v12 = v23;
      }

      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(this + 3, v12);
    }

    sub_29A186B14(&v23);
    v8 = *a4;
  }

  if ((v8 & 8) != 0)
  {
    *(this + 17) = 1;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v13)
    {
      v13 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*a2 + 120))(&v23, a2, this + 8, v13 + 16);
    if (sub_29AC00EC0(&v23))
    {
      v14 = ((v24 & 4) != 0 ? (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23) : v23);
      if ((this + 32) != v14)
      {
        sub_29AC97BD0(this + 32, *v14, v14[1], 0xEEEEEEEEEEEEEEEFLL * ((v14[1] - *v14) >> 3));
      }
    }

    sub_29A186B14(&v23);
    v8 = *a4;
  }

  if ((v8 & 0x10) != 0)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v15)
    {
      v15 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*a2 + 120))(&v23, a2, this + 8, v15 + 24);
    if (sub_29A1FA748(&v23))
    {
      if ((v24 & 4) != 0)
      {
        v16 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
      }

      else
      {
        v16 = v23;
      }

      sub_29A280D90((this + 56), v16);
    }

    sub_29A186B14(&v23);
    v8 = *a4;
  }

  if ((v8 & 0x20) != 0)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v17)
    {
      v17 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*a2 + 120))(&v23, a2, this + 8, v17 + 32);
    if (sub_29A1FA748(&v23))
    {
      if ((v24 & 4) != 0)
      {
        v18 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
      }

      else
      {
        v18 = v23;
      }

      sub_29A280D90(this + 6, v18);
    }

    sub_29A186B14(&v23);
    v8 = *a4;
  }

  if ((v8 & 0x40) != 0)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v19)
    {
      v19 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*a2 + 120))(&v23, a2, this + 8, v19 + 40);
    if (sub_29A1FA710(&v23))
    {
      if ((v24 & 4) != 0)
      {
        v20 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
      }

      else
      {
        v20 = &v23;
      }

      sub_29A166F2C(this + 17, v20);
    }

    sub_29A186B14(&v23);
    v8 = *a4;
  }

  if ((v8 & 0x80) != 0)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v21)
    {
      v21 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*a2 + 120))(&v23, a2, this + 8, v21 + 48);
    sub_29A18606C(this + 18, &v23);
    sub_29A186B14(&v23);
  }

  result = (*(*this + 40))(this, a2, a3, a4);
  *a4 = 0;
  return result;
}

void sub_29AC97490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t a2, char *a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((*(a2 + 8) ^ *(a1 + 8)) > 7)
  {
    return 0;
  }

  if ((*(a2 + 16) ^ *(a1 + 16)) > 7)
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v6 - v5 != *(a2 + 40) - v7)
  {
    return 0;
  }

  while (v5 != v6)
  {
    if (!pxrInternal__aapl__pxrReserved__::operator==(v5, v7))
    {
      return 0;
    }

    v5 += 56;
    v7 += 56;
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || (*(a2 + 72) ^ *(a1 + 72)) > 7 || *(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84) || *(a1 + 88) != *(a2 + 88) || *(a1 + 92) != *(a2 + 92) || *(a1 + 96) != *(a2 + 96) || *(a1 + 100) != *(a2 + 100) || *(a1 + 104) != *(a2 + 104) || *(a1 + 105) != *(a2 + 105))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::operator==((a1 + 112), (a2 + 112), a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator!=(uint64_t a1, uint64_t a2)
{
  return pxrInternal__aapl__pxrReserved__::operator==(a1, a2) ^ 1;
}

{
  return pxrInternal__aapl__pxrReserved__::operator==(a1, a2) ^ 1;
}

void sub_29AC97984(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_29AC97A08((v4 - 30));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC97A08(uint64_t a1)
{
  sub_29A184A10((a1 + 112), 0);
  v2 = *(a1 + 72);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
  sub_29A1DE3A4((a1 + 56));
  v6 = (a1 + 32);
  sub_29AC97ABC(&v6);
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29AC97ABC(void ***a1)
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
        v4 -= 56;
        sub_29AC97B44(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC97B44(uint64_t a1, uint64_t a2)
{
  sub_29A184A10((a2 + 48), 0);
  v3 = *(a2 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  v4 = *(a2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AC97BD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(result + 16) - *result) >> 3) < a4)
  {
    sub_29AC97D68(result);
    if (a4 > 0x222222222222222)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDDDDDDDDDDDDDDDELL * ((v7[2] - *v7) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xEEEEEEEEEEEEEEEFLL * ((v7[2] - *v7) >> 3) >= 0x111111111111111)
    {
      v10 = 0x222222222222222;
    }

    else
    {
      v10 = v9;
    }

    sub_29A9C996C(v7, v10);
    result = sub_29AC97DC8(v7, v6, a3, v7[1]);
LABEL_15:
    v7[1] = result;
    return result;
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - v8) >> 3) < a4)
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_29AC982E0(v8, v14);
        v14 += 120;
        v8 += 120;
        v13 -= 120;
      }

      while (v13);
      v11 = v7[1];
    }

    result = sub_29AC97DC8(v7, v6 + v12, a3, v11);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AC982E0(v8, v6);
      v6 += 120;
      v8 += 120;
    }

    while (v6 != a3);
    v11 = v7[1];
  }

  while (v11 != v8)
  {
    v11 -= 120;
    result = sub_29AC97A08(v11);
  }

  v7[1] = v8;
  return result;
}

void sub_29AC97D68(void **a1)
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
        v3 = sub_29AC97A08((v3 - 30));
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

uint64_t sub_29AC97DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29AC97E4C(a4, v6);
      v6 += 120;
      a4 += 120;
      v7 -= 120;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29AC97E28(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 120);
    do
    {
      v4 = sub_29AC97A08(v4) - 30;
      v2 += 120;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC97E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 16);
  *(a1 + 16) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 24) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29AC98008((a1 + 32), *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  sub_29A1E21F4((a1 + 56), (a2 + 56));
  sub_29A1E2240((a1 + 60), (a2 + 60));
  *(a1 + 64) = *(a2 + 64);
  v8 = *(a2 + 72);
  *(a1 + 72) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 72) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a2 + 80);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 80) = v9;
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 112), (a2 + 112));
  return a1;
}

void sub_29AC97F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 72);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v2 + 56));
  sub_29AC97ABC(va);
  v5 = *(v2 + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(v2 + 8);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(v2);
  _Unwind_Resume(a1);
}

void *sub_29AC98008(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A044EF0(result, a4);
    result = sub_29AC98090(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AC98070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC97ABC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC98090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AC98134(v4, v6);
      v6 += 56;
      v4 = v11 + 56;
      v11 += 56;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29AC98254(v8);
  return v4;
}

uint64_t sub_29AC98134(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a2 + 39) < 0)
  {
    sub_29A008D14((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v6;
  }

  v7 = *(a2 + 40);
  *(a1 + 40) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 48), (a2 + 48));
  return a1;
}

void sub_29AC981F8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC98254(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC9828C(a1);
  }

  return a1;
}

uint64_t *sub_29AC9828C(uint64_t *result)
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
      v3 -= 56;
      result = sub_29AC97B44(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29AC982E0(uint64_t a1, uint64_t a2)
{
  sub_29A2258F0(a1, a2);
  sub_29A225948((a1 + 4), (a2 + 4));
  sub_29A166F2C((a1 + 8), (a2 + 8));
  sub_29A166F2C((a1 + 16), (a2 + 16));
  *(a1 + 24) = *(a2 + 24);
  if (a1 != a2)
  {
    sub_29AC983B0(a1 + 32, *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  sub_29A2258F0((a1 + 56), (a2 + 56));
  sub_29A225948((a1 + 60), (a2 + 60));
  *(a1 + 64) = *(a2 + 64);
  sub_29A166F2C((a1 + 72), (a2 + 72));
  v4 = *(a2 + 90);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 90) = v4;
  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 112), (a2 + 112));
  return a1;
}

uint64_t sub_29AC983B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29AC98530(a1);
    if (a4 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    sub_29A044EF0(a1, v10);
    result = sub_29AC98090(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v12 >> 3) < a4)
  {
    sub_29AC9859C(&v16, a2, a2 + v12, v8);
    result = sub_29AC98090(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AC9859C(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 56;
      result = sub_29AC97B44(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29AC98530(void **a1)
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
        v3 -= 56;
        sub_29AC97B44(a1, v3);
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

uint64_t sub_29AC9859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    sub_29A166F2C((a4 + 8), (v5 + 8));
    std::string::operator=((a4 + 16), (v5 + 16));
    sub_29A166F2C((a4 + 40), (v5 + 40));
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a4 + 48), (v5 + 48));
    a4 += 56;
    v5 += 56;
  }

  while (v5 != v6);
  return v6;
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType::~HdRenderSettingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType *this)
{
  v9 = (this + 64);
  sub_29A124AB0(&v9);
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 5);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 3);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 1);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType::HdRenderSettingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "renderSettings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "namespacedSettings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "active", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "renderProducts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "includedPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "materialBindingPurposes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "renderingColorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "shutterInterval", 0);
  v3 = (this + 64);
  v4 = *this;
  v23 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v5;
    }
  }

  v6 = *(this + 1);
  v24 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v7;
    }
  }

  v8 = *(this + 2);
  v25 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v9;
    }
  }

  v10 = *(this + 3);
  v26 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v11;
    }
  }

  v12 = *(this + 4);
  v27 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v13;
    }
  }

  v14 = *(this + 5);
  v28 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v15;
    }
  }

  v16 = *(this + 6);
  v29 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v17;
    }
  }

  v18 = *(this + 7);
  v30 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v19;
    }
  }

  *v3 = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  sub_29A12EF7C(v3, &v23, &v31, 8uLL);
  for (i = 56; i != -8; i -= 8)
  {
    v21 = *(&v23 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC98998(_Unwind_Exception *a1)
{
  v3 = 56;
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
      v5 = v1[7];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[6];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetFrameLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B2C8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B2C8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&qword_2A174B2D0);
      if (!v3)
      {
        v3 = sub_29AC99E84();
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, v3, dword_2A174B290);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B290, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B2C8);
    }
  }

  return dword_2A174B290;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B310))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174B2D8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174B2D8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174B310);
  }

  return &unk_2A174B2D8;
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
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

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetActive(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProducts(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 3);
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  sub_29AC100E4(this, &v9);
  v7 = v10;
  *a2 = v9;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetIncludedPurposes(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
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

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetMaterialBindingPurposes(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
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

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderingColorSpace(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetShutterInterval(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
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

  sub_29AC626DC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X8>)
{
  v66 = *MEMORY[0x29EDCA608];
  v65 = 0;
  v14 = &v62;
  memset(v64, 0, sizeof(v64));
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  v15 = v64;
  if (*a1)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    v14 = v63;
    v15 = v64 + 1;
    sub_29A166F2C(v64, v17 + 1);
    v19 = *a1;
    v18 = a1[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(&v62 + 1);
    *&v62 = v19;
    *(&v62 + 1) = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  if (*a2)
  {
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v22)
    {
      v22 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v15, v22 + 2);
    ++v21;
    v24 = *a2;
    v23 = a2[1];
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *(v14 + 1);
    *v14 = v24;
    *(v14 + 1) = v23;
    if (v25)
    {
      sub_29A014BEC(v25);
    }
  }

  if (*a3)
  {
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v26)
    {
      v26 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v64 + v21, v26 + 3);
    v27 = v21 + 1;
    v28 = &v63[v21 - 1];
    v30 = *a3;
    v29 = a3[1];
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = v28[1];
    *v28 = v30;
    v28[1] = v29;
    if (v31)
    {
      sub_29A014BEC(v31);
    }
  }

  else
  {
    v27 = v21;
  }

  if (*a4)
  {
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v32)
    {
      v32 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v64 + v27, v32 + 4);
    v33 = v27 + 1;
    v34 = &v63[v27 - 1];
    v36 = *a4;
    v35 = a4[1];
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

  if (*a5)
  {
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v38)
    {
      v38 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v64 + v33, v38 + 5);
    v39 = v33 + 1;
    v40 = &v63[v33 - 1];
    v42 = *a5;
    v41 = a5[1];
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

  if (*a6)
  {
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v44)
    {
      v44 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v64 + v39, v44 + 6);
    v45 = v39 + 1;
    v46 = &v63[v39 - 1];
    v48 = *a6;
    v47 = a6[1];
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

  if (*a7)
  {
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v50)
    {
      v50 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v64 + v45, v50 + 7);
    v51 = v45 + 1;
    v52 = &v63[v45 - 1];
    v54 = *a7;
    v53 = a7[1];
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

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v51, v64, &v62, &v61);
  *a8 = v61;
  for (i = 104; i != -8; i -= 16)
  {
    v57 = *(&v63[-1] + i);
    if (v57)
    {
      sub_29A014BEC(v57);
    }
  }

  for (j = 48; j != -8; j -= 8)
  {
    v59 = *(v64 + j);
    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC99538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v28 = 104;
  while (1)
  {
    v29 = *(&a13 + v28);
    if (v29)
    {
      sub_29A014BEC(v29);
    }

    v28 -= 16;
    if (v28 == -8)
    {
      v30 = 48;
      while (1)
      {
        v31 = *(&a27 + v30);
        if ((v31 & 7) != 0)
        {
          atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v30 -= 8;
        if (v30 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::Builder::SetNamespacedSettings(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::Builder::SetActive(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::Builder::SetRenderProducts(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::Builder::SetIncludedPurposes(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::Builder::SetMaterialBindingPurposes(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::Builder::SetRenderingColorSpace(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::Builder::SetShutterInterval(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens))
    {
      sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!result)
  {
    return sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B350, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B350);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, (v3 + 8), dword_2A174B318);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B318, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B350);
    }
  }

  return dword_2A174B318;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetActiveLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B390, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B390);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, (v3 + 16), dword_2A174B358);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B358, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B390);
    }
  }

  return dword_2A174B358;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B3D0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B3D0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, (v3 + 24), dword_2A174B398);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B398, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B3D0);
    }
  }

  return dword_2A174B398;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetIncludedPurposesLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B410, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B410);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, (v3 + 32), dword_2A174B3D8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B3D8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B410);
    }
  }

  return dword_2A174B3D8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetMaterialBindingPurposesLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B450, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B450);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, (v3 + 40), dword_2A174B418);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B418, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B450);
    }
  }

  return dword_2A174B418;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderingColorSpaceLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B490, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B490);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, (v3 + 48), dword_2A174B458);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B458, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B490);
    }
  }

  return dword_2A174B458;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetShutterIntervalLocator(pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B4D0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B4D0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B2D8, (v3 + 56), dword_2A174B498);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B498, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B4D0);
    }
  }

  return dword_2A174B498;
}

unint64_t sub_29AC99E84()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "frame", 0);
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
  atomic_compare_exchange_strong(&qword_2A174B2D0, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174B2D0);
  }

  return v0;
}

void sub_29AC99FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType::~HdRenderVarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType::HdRenderVarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "renderVar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "path", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "dataType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "sourceName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "sourceType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "namespacedSettings", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC9A2AC(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetPath(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetDataType(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetSourceName(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetSourceType(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
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

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  v50 = *MEMORY[0x29EDCA608];
  v11 = &v46;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  v46 = 0u;
  v12 = v48;
  if (*a1)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    if (!v14)
    {
      v14 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    }

    v11 = v47;
    v12 = v48 + 1;
    sub_29A166F2C(v48, v14 + 1);
    v16 = *a1;
    v15 = a1[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(&v46 + 1);
    *&v46 = v16;
    *(&v46 + 1) = v15;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (*a2)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    if (!v19)
    {
      v19 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    }

    sub_29A166F2C(v12, v19 + 2);
    ++v18;
    v21 = *a2;
    v20 = a2[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v11 + 1);
    *v11 = v21;
    *(v11 + 1) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  if (*a3)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    if (!v23)
    {
      v23 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    }

    sub_29A166F2C(v48 + v18, v23 + 3);
    v24 = v18 + 1;
    v25 = &v47[v18 - 1];
    v27 = *a3;
    v26 = a3[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v25[1];
    *v25 = v27;
    v25[1] = v26;
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v24 = v18;
  }

  if (*a4)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    if (!v29)
    {
      v29 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    }

    sub_29A166F2C(v48 + v24, v29 + 4);
    v30 = v24 + 1;
    v31 = &v47[v24 - 1];
    v33 = *a4;
    v32 = a4[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = v31[1];
    *v31 = v33;
    v31[1] = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  else
  {
    v30 = v24;
  }

  if (*a5)
  {
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    if (!v35)
    {
      v35 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    }

    sub_29A166F2C(v48 + v30, v35 + 5);
    v36 = v30 + 1;
    v37 = &v47[v30 - 1];
    v39 = *a5;
    v38 = a5[1];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v37[1];
    *v37 = v39;
    v37[1] = v38;
    if (v40)
    {
      sub_29A014BEC(v40);
    }
  }

  else
  {
    v36 = v30;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v36, v48, &v46, &v45);
  *a6 = v45;
  for (i = 72; i != -8; i -= 16)
  {
    v42 = *(&v47[-1] + i);
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
    v44 = *(v48 + j);
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC9AA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v22 = 72;
  while (1)
  {
    v23 = *(&a11 + v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v22 -= 16;
    if (v22 == -8)
    {
      v24 = 32;
      while (1)
      {
        v25 = *(&a21 + v24);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v24 -= 8;
        if (v24 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetPath(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetDataType(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceName(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceType(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens))
    {
      sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!result)
  {
    return sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B510))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174B4D8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174B4D8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174B510);
  }

  return &unk_2A174B4D8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::HdRenderVarSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B550, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B550);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B4D8, (v3 + 40), dword_2A174B518);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B518, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B550);
    }
  }

  return dword_2A174B518;
}

pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType *sub_29AC9AEB0(atomic_ullong *a1)
{
  result = sub_29AC9AEF8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType::~HdRenderVarSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType *sub_29AC9AEF8()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens_StaticTokenType::HdRenderVarSchemaTokens_StaticTokenType(v0);
  return v0;
}

double pxrInternal__aapl__pxrReserved__::HdRenderThread::HdRenderThread(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  *this = &unk_2A207E208;
  *(this + 1) = pxrInternal__aapl__pxrReserved__::HdRenderThread::_DefaultRenderCallback;
  *(this + 3) = this;
  *(this + 4) = &unk_2A207E208;
  *(this + 5) = pxrInternal__aapl__pxrReserved__::HdRenderThread::_DefaultShutdownCallback;
  *(this + 7) = this + 32;
  *(this + 16) = 0;
  *(this + 9) = 850045863;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 1018212795;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 185) = 0;
  *(this + 24) = 0;
  *(this + 25) = 850045863;
  *(this + 32) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 13) = 0u;
  return result;
}

{
  *this = &unk_2A207E208;
  *(this + 1) = pxrInternal__aapl__pxrReserved__::HdRenderThread::_DefaultRenderCallback;
  *(this + 3) = this;
  *(this + 4) = &unk_2A207E208;
  *(this + 5) = pxrInternal__aapl__pxrReserved__::HdRenderThread::_DefaultShutdownCallback;
  *(this + 7) = this + 32;
  *(this + 16) = 0;
  *(this + 9) = 850045863;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 1018212795;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 185) = 0;
  *(this + 24) = 0;
  *(this + 25) = 850045863;
  *(this + 32) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 13) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderThread::_DefaultRenderCallback(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  v1[0] = "hd/renderThread.cpp";
  v1[1] = "_DefaultRenderCallback";
  v1[2] = 171;
  v1[3] = "static void pxrInternal__aapl__pxrReserved__::HdRenderThread::_DefaultRenderCallback()";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "StartThread() called without a render callback set");
}

void pxrInternal__aapl__pxrReserved__::HdRenderThread::~HdRenderThread(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  pxrInternal__aapl__pxrReserved__::HdRenderThread::StopThread(this);
  std::mutex::~mutex((this + 200));
  std::thread::~thread(this + 24);
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
  sub_29A0FC854(this + 32);

  sub_29A0FC854(this);
}

void pxrInternal__aapl__pxrReserved__::HdRenderThread::StopThread(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  v1 = (this + 192);
  if (*(this + 24))
  {
    atomic_store(0, this + 184);
    std::mutex::lock((this + 72));
    *(this + 16) = 3;
    atomic_store(0, this + 188);
    std::condition_variable::notify_one((this + 136));
    std::mutex::unlock((this + 72));

    std::thread::join(v1);
  }
}

void *sub_29AC9B1D0(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29A117068(v4, a2);
  sub_29AC9B690(v4, a1);
  sub_29A0FC854(v4);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdRenderThread::StartThread(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  if (*(this + 24))
  {
    *&v4 = "hd/renderThread.cpp";
    *(&v4 + 1) = "StartThread";
    v5 = 45;
    v6 = "void pxrInternal__aapl__pxrReserved__::HdRenderThread::StartThread()";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "StartThread() called while render thread is already running");
  }

  else
  {
    *(this + 16) = 1;
    *&v4 = pxrInternal__aapl__pxrReserved__::HdRenderThread::_RenderLoop;
    *(&v4 + 1) = 0;
    v2 = this;
    sub_29AC9B8F4(&v3.__t_, &v4, &v2);
    if (*(this + 24))
    {
      std::terminate();
    }

    *(this + 24) = v3;
    v3.__t_ = 0;
    std::thread::~thread(&v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderThread::_RenderLoop(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  v2 = (this + 72);
  do
  {
    v8.__m_ = v2;
    v8.__owns_ = 1;
    std::mutex::lock(v2);
    while (1)
    {
      v3 = *(this + 16);
      if (v3 != 1)
      {
        break;
      }

      std::condition_variable::wait((this + 136), &v8);
    }

    if (v3 == 3)
    {
      v5 = 0;
    }

    else
    {
      if (v3 == 2)
      {
        v4 = *(this + 3);
        if (!v4)
        {
          sub_29A0DDCB0();
        }

        (*(*v4 + 48))(v4);
        *(this + 185) = 0;
        atomic_store(0, this + 188);
        *(this + 16) = 1;
      }

      v5 = 1;
    }

    if (v8.__owns_)
    {
      std::mutex::unlock(v8.__m_);
    }
  }

  while ((v5 & 1) != 0);
  v6 = *(this + 7);
  if (!v6)
  {
    sub_29A0DDCB0();
  }

  return (*(*v6 + 48))(v6);
}

void sub_29AC9B418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdRenderThread::StartRender(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  v1 = this + 188;
  v2 = atomic_load(this + 188);
  if ((v2 & 1) == 0)
  {
    std::mutex::lock((this + 72));
    atomic_exchange(this + 184, 1u);
    *(this + 16) = 2;
    atomic_store(1u, v1);
    std::condition_variable::notify_one((this + 136));

    std::mutex::unlock((this + 72));
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderThread::StopRender(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  v1 = this + 188;
  v2 = atomic_load(this + 188);
  if (v2)
  {
    atomic_store(0, this + 184);
    std::mutex::lock((this + 72));
    *(this + 16) = 1;
    atomic_store(0, v1);

    std::mutex::unlock((this + 72));
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderThread::IsStopRequested(pxrInternal__aapl__pxrReserved__::HdRenderThread *this)
{
  v1 = 1;
  if (atomic_exchange(this + 184, 1u))
  {
    v1 = *(this + 185);
  }

  else
  {
    *(this + 185) = 1;
  }

  return v1 & 1;
}

void pxrInternal__aapl__pxrReserved__::HdRenderThread::LockFramebuffer(pxrInternal__aapl__pxrReserved__::HdRenderThread *this@<X0>, uint64_t a2@<X8>)
{
  v2 = (this + 200);
  *a2 = v2;
  *(a2 + 8) = 1;
  std::mutex::lock(v2);
}

void *sub_29AC9B5C8(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A207E208;
  result[1] = v3;
  return result;
}

uint64_t sub_29AC9B610(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A207E208;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AC9B644(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E278))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29AC9B690(void *result, void *a2)
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

void sub_29AC9B8E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

pthread_t *sub_29AC9B8F4(pthread_t *a1, _OWORD *a2, void *a3)
{
  v6 = operator new(8uLL);
  std::__thread_struct::__thread_struct(v6);
  v7 = operator new(0x20uLL);
  *v7 = v6;
  *(v7 + 8) = *a2;
  *(v7 + 3) = *a3;
  v8 = pthread_create(a1, 0, sub_29AC9B9CC, v7);
  if (v8)
  {
    std::__throw_system_error(v8, "thread constructor failed");
    __break(1u);
    JUMPOUT(0x29AC9B994);
  }

  return a1;
}

uint64_t sub_29AC9B9CC(uint64_t *a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  sub_29A173724(a1, 0);
  operator delete(a1);
  return 0;
}

void sub_29AC9BA4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC9BA64(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AC9BA64(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A173724(v2, 0);

    operator delete(v2);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdReprSelector::IsActiveRepr(pxrInternal__aapl__pxrReserved__::HdReprSelector *this, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_29B2C69F4(v8);
  }

  v4 = (this + 8);
  if (a2 != 1)
  {
    v4 = this;
  }

  if (a2 == 2)
  {
    v5 = (this + 16);
  }

  else
  {
    v5 = v4;
  }

  if (!*v5)
  {
    return 0;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v6)
  {
    v6 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  return (*v6 ^ *v5) > 7uLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdReprSelector::operator[](uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2 == 2)
  {
    return a1 + 16;
  }

  else
  {
    return v2;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdReprSelector::AnyActiveRepr(pxrInternal__aapl__pxrReserved__::HdReprSelector *this)
{
  if (pxrInternal__aapl__pxrReserved__::HdReprSelector::IsActiveRepr(this, 0))
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v3 == 2)
    {
      break;
    }

    ++v3;
  }

  while (!pxrInternal__aapl__pxrReserved__::HdReprSelector::IsActiveRepr(this, v4 + 1));
  return v4 < 2;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdReprSelector::CompositeOver@<X0>(pxrInternal__aapl__pxrReserved__::HdReprSelector *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*this)
  {
    v3 = this;
  }

  else
  {
    v3 = a2;
  }

  if (*(this + 1))
  {
    v4 = (this + 8);
  }

  else
  {
    v4 = (a2 + 8);
  }

  v6 = *(this + 2);
  v5 = (this + 16);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = (a2 + 16);
  }

  return sub_29AC9BE9C(a3, v3, v4, v7);
}

BOOL pxrInternal__aapl__pxrReserved__::HdReprSelector::operator<(uint64_t *a1, uint64_t *a2)
{
  v4[0] = a1;
  v4[1] = a1 + 1;
  v4[2] = a1 + 2;
  v3[0] = a2;
  v3[1] = a2 + 1;
  v3[2] = a2 + 2;
  return sub_29AC9BF24(&v5, v4, v3);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdReprSelector::Hash(pxrInternal__aapl__pxrReserved__::HdReprSelector *this)
{
  v2 = 0;
  v3 = 0;
  sub_29AC06AEC(&v2, this, this + 1, this + 2);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

const char *pxrInternal__aapl__pxrReserved__::HdReprSelector::GetText(pxrInternal__aapl__pxrReserved__::HdReprSelector *this)
{
  v1 = *this & 0xFFFFFFFFFFFFFFF8;
  if (!v1)
  {
    return "";
  }

  result = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdRepr::HdRepr(pxrInternal__aapl__pxrReserved__::HdRepr *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRepr::~HdRepr(void **this)
{
  v1 = this;
  sub_29AC9C344(&v1);
}

{
  v1 = this;
  sub_29AC9C344(&v1);
}

uint64_t *sub_29AC9BE9C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  *result = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *a3;
  result[1] = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *a4;
  result[2] = *a4;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

BOOL sub_29AC9BF24(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v5 = **a2;
  v6 = **a3;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      goto LABEL_34;
    }

    return 1;
  }

  if (v5 != v6)
  {
    v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    v10 = v6 & 0xFFFFFFFFFFFFFFF8;
    v11 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    v12 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v11 < v12)
    {
      return 1;
    }

    if (v11 == v12)
    {
      v16 = *(v10 + 16);
      v14 = v10 + 16;
      v15 = v16;
      v17 = *(v14 + 23);
      v20 = *(v9 + 16);
      v18 = v9 + 16;
      v19 = v20;
      v21 = *(v18 + 23);
      if (v21 >= 0)
      {
        v22 = *(v18 + 23);
      }

      else
      {
        v22 = *(v18 + 8);
      }

      if (v21 >= 0)
      {
        v23 = v18;
      }

      else
      {
        v23 = v19;
      }

      if (v17 >= 0)
      {
        v24 = *(v14 + 23);
      }

      else
      {
        v24 = *(v14 + 8);
      }

      if (v17 >= 0)
      {
        v25 = v14;
      }

      else
      {
        v25 = v15;
      }

      if (v24 >= v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v24;
      }

      v27 = memcmp(v23, v25, v26);
      v28 = v22 < v24;
      if (v27)
      {
        v28 = v27 < 0;
      }

      if (v28)
      {
        return 1;
      }
    }
  }

LABEL_34:
  if (v5)
  {
    v29 = v6 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    if (v5)
    {
      v30 = v6 == 0;
    }

    else
    {
      v30 = 0;
    }

    if (!v30)
    {
      return sub_29AC9C0C8(&v50, a2, a3);
    }

    return 0;
  }

  if (v6 != v5)
  {
    v31 = v6 & 0xFFFFFFFFFFFFFFF8;
    v32 = v5 & 0xFFFFFFFFFFFFFFF8;
    v33 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
    v34 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v33 < v34)
    {
      return 0;
    }

    if (v33 == v34)
    {
      v37 = *(v32 + 16);
      v35 = v32 + 16;
      v36 = v37;
      v38 = *(v35 + 23);
      v41 = *(v31 + 16);
      v39 = v31 + 16;
      v40 = v41;
      v42 = *(v39 + 23);
      v43 = v42 >= 0 ? *(v39 + 23) : *(v39 + 8);
      v44 = (v42 >= 0 ? v39 : v40);
      v45 = v38 >= 0 ? *(v35 + 23) : *(v35 + 8);
      v46 = (v38 >= 0 ? v35 : v36);
      v47 = v45 >= v43 ? v43 : v45;
      v48 = memcmp(v44, v46, v47);
      v49 = v43 < v45;
      if (v48)
      {
        v49 = v48 < 0;
      }

      if (v49)
      {
        return 0;
      }
    }
  }

  return sub_29AC9C0C8(&v50, a2, a3);
}

BOOL sub_29AC9C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a2 + 8);
  v6 = **(a3 + 8);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      goto LABEL_34;
    }

    return 1;
  }

  if (v5 != v6)
  {
    v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    v10 = v6 & 0xFFFFFFFFFFFFFFF8;
    v11 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    v12 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v11 < v12)
    {
      return 1;
    }

    if (v11 == v12)
    {
      v16 = *(v10 + 16);
      v14 = v10 + 16;
      v15 = v16;
      v17 = *(v14 + 23);
      v20 = *(v9 + 16);
      v18 = v9 + 16;
      v19 = v20;
      v21 = *(v18 + 23);
      if (v21 >= 0)
      {
        v22 = *(v18 + 23);
      }

      else
      {
        v22 = *(v18 + 8);
      }

      if (v21 >= 0)
      {
        v23 = v18;
      }

      else
      {
        v23 = v19;
      }

      if (v17 >= 0)
      {
        v24 = *(v14 + 23);
      }

      else
      {
        v24 = *(v14 + 8);
      }

      if (v17 >= 0)
      {
        v25 = v14;
      }

      else
      {
        v25 = v15;
      }

      if (v24 >= v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v24;
      }

      v27 = memcmp(v23, v25, v26);
      v28 = v22 < v24;
      if (v27)
      {
        v28 = v27 < 0;
      }

      if (v28)
      {
        return 1;
      }
    }
  }

LABEL_34:
  if (v5)
  {
    v29 = v6 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    if (v5)
    {
      v30 = v6 == 0;
    }

    else
    {
      v30 = 0;
    }

    if (!v30)
    {
      return sub_29AC9C26C(&v50, a2, a3);
    }

    return 0;
  }

  if (v6 != v5)
  {
    v31 = v6 & 0xFFFFFFFFFFFFFFF8;
    v32 = v5 & 0xFFFFFFFFFFFFFFF8;
    v33 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
    v34 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v33 < v34)
    {
      return 0;
    }

    if (v33 == v34)
    {
      v37 = *(v32 + 16);
      v35 = v32 + 16;
      v36 = v37;
      v38 = *(v35 + 23);
      v41 = *(v31 + 16);
      v39 = v31 + 16;
      v40 = v41;
      v42 = *(v39 + 23);
      v43 = v42 >= 0 ? *(v39 + 23) : *(v39 + 8);
      v44 = (v42 >= 0 ? v39 : v40);
      v45 = v38 >= 0 ? *(v35 + 23) : *(v35 + 8);
      v46 = (v38 >= 0 ? v35 : v36);
      v47 = v45 >= v43 ? v43 : v45;
      v48 = memcmp(v44, v46, v47);
      v49 = v43 < v45;
      if (v48)
      {
        v49 = v48 < 0;
      }

      if (v49)
      {
        return 0;
      }
    }
  }

  return sub_29AC9C26C(&v50, a2, a3);
}

BOOL sub_29AC9C26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(a2 + 16);
  v4 = **(a3 + 16);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    return !v6;
  }

  if (v3 != v4)
  {
    v7 = v3 & 0xFFFFFFFFFFFFFFF8;
    v8 = v4 & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v7 + 8);
    v10 = *(v8 + 8);
    if (v9 < v10)
    {
      return 1;
    }

    if (v9 == v10)
    {
      v14 = *(v8 + 16);
      v12 = v8 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      v18 = *(v7 + 16);
      v16 = v7 + 16;
      v17 = v18;
      v19 = *(v16 + 23);
      v20 = v19 >= 0 ? *(v16 + 23) : *(v16 + 8);
      v21 = (v19 >= 0 ? v16 : v17);
      v22 = v15 >= 0 ? *(v12 + 23) : *(v12 + 8);
      v23 = (v15 >= 0 ? v12 : v13);
      v24 = v22 >= v20 ? v20 : v22;
      v25 = memcmp(v21, v23, v24);
      v26 = v20 < v22;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (v26)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_29AC9C344(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AC9C398(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29AC9C398(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdResourceRegistry::HdResourceRegistry(void *this)
{
  *this = &unk_2A207E2A8;
  return this;
}

{
  *this = &unk_2A207E2A8;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdResourceRegistry::GarbageCollect(pxrInternal__aapl__pxrReserved__::HdResourceRegistry *this)
{
  sub_29A0ECEEC(&v5, "hd", "void pxrInternal__aapl__pxrReserved__::HdResourceRegistry::GarbageCollect()");
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v3)
  {
    v3 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v2, (v3 + 80));
  result = (*(*this + 48))(this);
  if (v5)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v6, v5);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdResourceRegistry::Commit(pxrInternal__aapl__pxrReserved__::HdResourceRegistry *this)
{
  sub_29A0ECEEC(&v3, "hd", "void pxrInternal__aapl__pxrReserved__::HdResourceRegistry::Commit()");
  result = (*(*this + 40))(this);
  if (v3)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v4, v3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  switch(a1)
  {
    case 0uLL:
      if ((atomic_load_explicit(&qword_2A174B568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B568))
      {
        v110 = operator new(8uLL);
        *v110 = &unk_2A207E348;
        sub_29AC9D6FC(v110);
        __cxa_atexit(sub_29AC9D76C, &qword_2A174B558, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174B568);
      }

      v8 = qword_2A174B560;
      *a4 = qword_2A174B558;
      a4[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      return;
    case 1uLL:
      v9 = operator new(0x28uLL);
      *v9 = &unk_2A2083720;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      v72 = *a3;
      if (*a3)
      {
        sub_29A166F2C(v9 + 1, a2);
        v74 = *a3;
        v73 = a3[1];
        if (v73)
        {
          atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
        }

        v75 = *(v9 + 3);
        *(v9 + 2) = v74;
        *(v9 + 3) = v73;
        if (v75)
        {
          sub_29A014BEC(v75);
        }

        v72 = 1;
      }

      *(v9 + 4) = v72;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083768;
      goto LABEL_155;
    case 2uLL:
      v9 = operator new(0x40uLL);
      v48 = 0;
      v49 = 0;
      *(v9 + 8) = 0u;
      *v9 = &unk_2A20837E0;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      do
      {
        if (a3[v48])
        {
          sub_29A166F2C(&v9[8 * v49 + 8], a2);
          v50 = *&a3[v48];
          v51 = a3[v48 + 1];
          if (v51)
          {
            atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
          }

          v52 = &v9[16 * v49 + 24];
          v53 = *(v52 + 8);
          *v52 = v50;
          if (v53)
          {
            sub_29A014BEC(v53);
          }

          ++v49;
        }

        v48 += 2;
        ++a2;
      }

      while (v48 != 4);
      *(v9 + 7) = v49;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083828;
      goto LABEL_155;
    case 3uLL:
      v9 = operator new(0x58uLL);
      v60 = 0;
      v61 = 0;
      *v9 = &unk_2A20838A0;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 9) = 0;
      do
      {
        if (a3[v60])
        {
          sub_29A166F2C(&v9[8 * v61 + 8], a2);
          v62 = *&a3[v60];
          v63 = a3[v60 + 1];
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          v64 = &v9[16 * v61 + 32];
          v65 = *(v64 + 8);
          *v64 = v62;
          if (v65)
          {
            sub_29A014BEC(v65);
          }

          ++v61;
        }

        v60 += 2;
        ++a2;
      }

      while (v60 != 6);
      *(v9 + 10) = v61;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A20838E8;
      goto LABEL_155;
    case 4uLL:
      v9 = operator new(0x70uLL);
      v30 = 0;
      v31 = 0;
      *(v9 + 8) = 0u;
      *(v9 + 40) = 0u;
      *v9 = &unk_2A2083960;
      *(v9 + 24) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      do
      {
        if (a3[v30])
        {
          sub_29A166F2C(&v9[8 * v31 + 8], a2);
          v32 = *&a3[v30];
          v33 = a3[v30 + 1];
          if (v33)
          {
            atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
          }

          v34 = &v9[16 * v31 + 40];
          v35 = *(v34 + 8);
          *v34 = v32;
          if (v35)
          {
            sub_29A014BEC(v35);
          }

          ++v31;
        }

        v30 += 2;
        ++a2;
      }

      while (v30 != 8);
      *(v9 + 13) = v31;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A20839A8;
      goto LABEL_155;
    case 5uLL:
      v9 = operator new(0x88uLL);
      v80 = 0;
      v81 = 0;
      *v9 = &unk_2A2083A20;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 15) = 0;
      do
      {
        if (a3[v80])
        {
          sub_29A166F2C(&v9[8 * v81 + 8], a2);
          v82 = *&a3[v80];
          v83 = a3[v80 + 1];
          if (v83)
          {
            atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
          }

          v84 = &v9[16 * v81 + 48];
          v85 = *(v84 + 8);
          *v84 = v82;
          if (v85)
          {
            sub_29A014BEC(v85);
          }

          ++v81;
        }

        v80 += 2;
        ++a2;
      }

      while (v80 != 10);
      *(v9 + 16) = v81;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083A68;
      goto LABEL_155;
    case 6uLL:
      v9 = operator new(0xA0uLL);
      v92 = 0;
      v93 = 0;
      *(v9 + 8) = 0u;
      *v9 = &unk_2A2083AE0;
      *(v9 + 56) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      do
      {
        if (a3[v92])
        {
          sub_29A166F2C(&v9[8 * v93 + 8], a2);
          v94 = *&a3[v92];
          v95 = a3[v92 + 1];
          if (v95)
          {
            atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
          }

          v96 = &v9[16 * v93 + 56];
          v97 = *(v96 + 8);
          *v96 = v94;
          if (v97)
          {
            sub_29A014BEC(v97);
          }

          ++v93;
        }

        v92 += 2;
        ++a2;
      }

      while (v92 != 12);
      *(v9 + 19) = v93;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083B28;
      goto LABEL_155;
    case 7uLL:
      v9 = operator new(0xB8uLL);
      v66 = 0;
      v67 = 0;
      *v9 = &unk_2A2083BA0;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 21) = 0;
      do
      {
        if (a3[v66])
        {
          sub_29A166F2C(&v9[8 * v67 + 8], a2);
          v68 = *&a3[v66];
          v69 = a3[v66 + 1];
          if (v69)
          {
            atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
          }

          v70 = &v9[16 * v67 + 64];
          v71 = *(v70 + 8);
          *v70 = v68;
          if (v71)
          {
            sub_29A014BEC(v71);
          }

          ++v67;
        }

        v66 += 2;
        ++a2;
      }

      while (v66 != 14);
      *(v9 + 22) = v67;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083BE8;
      goto LABEL_155;
    case 8uLL:
      v9 = operator new(0xD0uLL);
      v104 = 0;
      v105 = 0;
      *(v9 + 8) = 0u;
      *(v9 + 72) = 0u;
      *v9 = &unk_2A2083C60;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      do
      {
        if (a3[v104])
        {
          sub_29A166F2C(&v9[8 * v105 + 8], a2);
          v106 = *&a3[v104];
          v107 = a3[v104 + 1];
          if (v107)
          {
            atomic_fetch_add_explicit((v107 + 8), 1uLL, memory_order_relaxed);
          }

          v108 = &v9[16 * v105 + 72];
          v109 = *(v108 + 8);
          *v108 = v106;
          if (v109)
          {
            sub_29A014BEC(v109);
          }

          ++v105;
        }

        v104 += 2;
        ++a2;
      }

      while (v104 != 16);
      *(v9 + 25) = v105;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083CA8;
      goto LABEL_155;
    case 9uLL:
      v9 = operator new(0xE8uLL);
      v42 = 0;
      v43 = 0;
      *v9 = &unk_2A2083D20;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 27) = 0;
      do
      {
        if (a3[v42])
        {
          sub_29A166F2C(&v9[8 * v43 + 8], a2);
          v44 = *&a3[v42];
          v45 = a3[v42 + 1];
          if (v45)
          {
            atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
          }

          v46 = &v9[16 * v43 + 80];
          v47 = *(v46 + 8);
          *v46 = v44;
          if (v47)
          {
            sub_29A014BEC(v47);
          }

          ++v43;
        }

        v42 += 2;
        ++a2;
      }

      while (v42 != 18);
      *(v9 + 28) = v43;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083D68;
      goto LABEL_155;
    case 0xAuLL:
      v9 = operator new(0x100uLL);
      v98 = 0;
      v99 = 0;
      *(v9 + 8) = 0u;
      *v9 = &unk_2A2083DE0;
      *(v9 + 88) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      do
      {
        if (a3[v98])
        {
          sub_29A166F2C(&v9[8 * v99 + 8], a2);
          v100 = *&a3[v98];
          v101 = a3[v98 + 1];
          if (v101)
          {
            atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
          }

          v102 = &v9[16 * v99 + 88];
          v103 = *(v102 + 8);
          *v102 = v100;
          if (v103)
          {
            sub_29A014BEC(v103);
          }

          ++v99;
        }

        v98 += 2;
        ++a2;
      }

      while (v98 != 20);
      *(v9 + 31) = v99;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083E28;
      goto LABEL_155;
    case 0xBuLL:
      v9 = operator new(0x118uLL);
      v24 = 0;
      v25 = 0;
      *v9 = &unk_2A2083EA0;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0u;
      *(v9 + 33) = 0;
      do
      {
        if (a3[v24])
        {
          sub_29A166F2C(&v9[8 * v25 + 8], a2);
          v26 = *&a3[v24];
          v27 = a3[v24 + 1];
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          v28 = &v9[16 * v25 + 96];
          v29 = *(v28 + 8);
          *v28 = v26;
          if (v29)
          {
            sub_29A014BEC(v29);
          }

          ++v25;
        }

        v24 += 2;
        ++a2;
      }

      while (v24 != 22);
      *(v9 + 34) = v25;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083EE8;
      goto LABEL_155;
    case 0xCuLL:
      v9 = operator new(0x130uLL);
      v36 = 0;
      v37 = 0;
      *(v9 + 8) = 0u;
      *(v9 + 104) = 0u;
      *v9 = &unk_2A2083F60;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0u;
      *(v9 + 264) = 0u;
      *(v9 + 280) = 0u;
      do
      {
        if (a3[v36])
        {
          sub_29A166F2C(&v9[8 * v37 + 8], a2);
          v38 = *&a3[v36];
          v39 = a3[v36 + 1];
          if (v39)
          {
            atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
          }

          v40 = &v9[16 * v37 + 104];
          v41 = *(v40 + 8);
          *v40 = v38;
          if (v41)
          {
            sub_29A014BEC(v41);
          }

          ++v37;
        }

        v36 += 2;
        ++a2;
      }

      while (v36 != 24);
      *(v9 + 37) = v37;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2083FA8;
      goto LABEL_155;
    case 0xDuLL:
      v9 = operator new(0x148uLL);
      v86 = 0;
      v87 = 0;
      *v9 = &unk_2A2084020;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0u;
      *(v9 + 39) = 0;
      *(v9 + 264) = 0u;
      *(v9 + 280) = 0u;
      *(v9 + 296) = 0u;
      do
      {
        if (a3[v86])
        {
          sub_29A166F2C(&v9[8 * v87 + 8], a2);
          v88 = *&a3[v86];
          v89 = a3[v86 + 1];
          if (v89)
          {
            atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
          }

          v90 = &v9[16 * v87 + 112];
          v91 = *(v90 + 8);
          *v90 = v88;
          if (v91)
          {
            sub_29A014BEC(v91);
          }

          ++v87;
        }

        v86 += 2;
        ++a2;
      }

      while (v86 != 26);
      *(v9 + 40) = v87;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2084068;
      goto LABEL_155;
    case 0xEuLL:
      v9 = operator new(0x160uLL);
      v18 = 0;
      v19 = 0;
      *(v9 + 8) = 0u;
      *v9 = &unk_2A20840E0;
      *(v9 + 120) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0u;
      *(v9 + 264) = 0u;
      *(v9 + 280) = 0u;
      *(v9 + 296) = 0u;
      *(v9 + 312) = 0u;
      *(v9 + 328) = 0u;
      do
      {
        if (a3[v18])
        {
          sub_29A166F2C(&v9[8 * v19 + 8], a2);
          v20 = *&a3[v18];
          v21 = a3[v18 + 1];
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
          }

          v22 = &v9[16 * v19 + 120];
          v23 = *(v22 + 8);
          *v22 = v20;
          if (v23)
          {
            sub_29A014BEC(v23);
          }

          ++v19;
        }

        v18 += 2;
        ++a2;
      }

      while (v18 != 28);
      *(v9 + 43) = v19;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2084128;
      goto LABEL_155;
    case 0xFuLL:
      v9 = operator new(0x178uLL);
      v54 = 0;
      v55 = 0;
      *v9 = &unk_2A20841A0;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0u;
      *(v9 + 45) = 0;
      *(v9 + 264) = 0u;
      *(v9 + 280) = 0u;
      *(v9 + 296) = 0u;
      *(v9 + 312) = 0u;
      *(v9 + 328) = 0u;
      *(v9 + 344) = 0u;
      do
      {
        if (a3[v54])
        {
          sub_29A166F2C(&v9[8 * v55 + 8], a2);
          v56 = *&a3[v54];
          v57 = a3[v54 + 1];
          if (v57)
          {
            atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
          }

          v58 = &v9[16 * v55 + 128];
          v59 = *(v58 + 8);
          *v58 = v56;
          if (v59)
          {
            sub_29A014BEC(v59);
          }

          ++v55;
        }

        v54 += 2;
        ++a2;
      }

      while (v54 != 30);
      *(v9 + 46) = v55;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A20841E8;
      goto LABEL_155;
    case 0x10uLL:
      v9 = operator new(0x190uLL);
      v10 = 0;
      v11 = 0;
      *(v9 + 8) = 0u;
      *(v9 + 136) = 0u;
      *v9 = &unk_2A2084260;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      *(v9 + 120) = 0u;
      *(v9 + 152) = 0u;
      *(v9 + 168) = 0u;
      *(v9 + 184) = 0u;
      *(v9 + 200) = 0u;
      *(v9 + 216) = 0u;
      *(v9 + 232) = 0u;
      *(v9 + 248) = 0u;
      *(v9 + 264) = 0u;
      *(v9 + 280) = 0u;
      *(v9 + 296) = 0u;
      *(v9 + 312) = 0u;
      *(v9 + 328) = 0u;
      *(v9 + 344) = 0u;
      *(v9 + 360) = 0u;
      *(v9 + 376) = 0u;
      do
      {
        if (a3[v10])
        {
          sub_29A166F2C(&v9[8 * v11 + 8], a2);
          v12 = *&a3[v10];
          v13 = a3[v10 + 1];
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          v14 = &v9[16 * v11 + 136];
          v15 = *(v14 + 8);
          *v14 = v12;
          if (v15)
          {
            sub_29A014BEC(v15);
          }

          ++v11;
        }

        v10 += 2;
        ++a2;
      }

      while (v10 != 32);
      *(v9 + 49) = v11;
      v16 = operator new(0x20uLL);
      v17 = &unk_2A20842A8;
      goto LABEL_155;
    default:
      v9 = operator new(0x28uLL);
      *v9 = &unk_2A2084320;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      sub_29ACB3574(v9 + 1, v6);
      do
      {
        if (*a3)
        {
          v76 = sub_29ACB32D4(v9 + 1, a2);
          v77 = *a3;
          v78 = a3[1];
          if (v78)
          {
            atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
          }

          v79 = v76[1];
          *v76 = v77;
          if (v79)
          {
            sub_29A014BEC(v79);
          }
        }

        ++a2;
        a3 += 2;
        --v6;
      }

      while (v6);
      v16 = operator new(0x20uLL);
      v17 = &unk_2A2084368;
LABEL_155:
      *v16 = v17;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = v9;
      *a4 = v9;
      a4[1] = v16;
      return;
  }
}

void *sub_29AC9D6FC(uint64_t a1)
{
  qword_2A174B558 = a1;
  result = operator new(0x20uLL);
  *result = &unk_2A20836A8;
  result[1] = 0;
  result[2] = 0;
  result[3] = a1;
  qword_2A174B560 = result;
  return result;
}

void sub_29AC9D754(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC9D76C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v7[0] = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7[0] = v4;
    }
  }

  v5 = a2[1];
  v6[0] = *a2;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(1uLL, v7, v6, a3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if ((v7[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v7[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC9D86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(uint64_t *a1@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v16 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v6;
    }
  }

  v7 = *a3;
  v17 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v8;
    }
  }

  v9 = a2[1];
  v15[0] = *a2;
  v15[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  v15[2] = *a4;
  v15[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(2uLL, &v16, v15, a5);
  for (i = 3; i != -1; i -= 2)
  {
    v12 = v15[i];
    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }

  for (j = 8; j != -8; j -= 8)
  {
    v14 = *(&v16 + j);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(uint64_t *a1@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X2>, uint64_t *a4@<X3>, atomic_uint **a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = *a1;
  v21 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v8;
    }
  }

  v9 = *a3;
  v22 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v10;
    }
  }

  v11 = *a5;
  v23 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v12;
    }
  }

  v13 = a2[1];
  v20[0] = *a2;
  v20[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v20[2] = *a4;
  v20[3] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v20[4] = *a6;
  v20[5] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(3uLL, &v21, v20, a7);
  for (i = 5; i != -1; i -= 2)
  {
    v17 = v20[i];
    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  for (j = 16; j != -8; j -= 8)
  {
    v19 = *(&v21 + j);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  v18 = *a1;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *a3;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *a5;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *a7;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = a2[1];
  v17[0] = *a2;
  v17[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  v17[2] = *a4;
  v17[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a6[1];
  v17[4] = *a6;
  v17[5] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a8[1];
  v17[6] = *a8;
  v17[7] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(4uLL, &v18, v17, a9);
  for (i = 7; i != -1; i -= 2)
  {
    v14 = v17[i];
    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
    v16 = *(&v18 + j);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, atomic_uint **a10, uint64_t *a11)
{
  v28 = *MEMORY[0x29EDCA608];
  v23 = *a1;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *a3;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *a5;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *a7;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *a10;
  v27 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v12;
    }
  }

  v13 = a2[1];
  v22[0] = *a2;
  v22[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v22[2] = *a4;
  v22[3] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v22[4] = *a6;
  v22[5] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a8[1];
  v22[6] = *a8;
  v22[7] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a11[1];
  v22[8] = *a11;
  v22[9] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(5uLL, &v23, v22, a9);
  for (i = 9; i != -1; i -= 2)
  {
    v19 = v22[i];
    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
    v21 = *(&v23 + j);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, atomic_uint **a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v32 = *MEMORY[0x29EDCA608];
  v26 = *a1;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *a3;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *a5;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *a7;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *a10;
  v30 = v13;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v14;
    }
  }

  v31 = *a12;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = a2[1];
  v25[0] = *a2;
  v25[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a4[1];
  v25[2] = *a4;
  v25[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a6[1];
  v25[4] = *a6;
  v25[5] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a8[1];
  v25[6] = *a8;
  v25[7] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = a11[1];
  v25[8] = *a11;
  v25[9] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a13[1];
  v25[10] = *a13;
  v25[11] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(6uLL, &v26, v25, a9);
  for (i = 11; i != -1; i -= 2)
  {
    v22 = v25[i];
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  for (j = 40; j != -8; j -= 8)
  {
    v24 = *(&v26 + j);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::HdRetainedSmallVectorDataSource(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  *a1 = &unk_2A207E300;
  v6 = (a1 + 8);
  sub_29ACB3CE4((a1 + 8), a2);
  if (v4)
  {
    v7 = 0;
    v8 = (a3 + 8);
    do
    {
      v9 = *(v8 - 1);
      if (v9)
      {
        v10 = v6;
        if (*(a1 + 524) >= 0x21u)
        {
          v10 = *v6;
        }

        v11 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = &v10[v7];
        v13 = v12[1];
        *v12 = v9;
        v12[1] = v11;
        if (v13)
        {
          sub_29A014BEC(v13);
        }
      }

      v8 += 2;
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::GetElement@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(this + 520) <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v3 = (this + 8);
    if (*(this + 524) >= 0x21u)
    {
      v3 = *v3;
    }

    v4 = *&v3[2 * a2];
    *a3 = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void sub_29AC9E2D8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  switch(sub_29A29C774(a1))
  {
    case 0u:

      sub_29ACA02B0(v2, a2);
      break;
    case 1u:
      v41 = *(v2 + 8);
      if ((v41 & 4) != 0)
      {
        v2 = (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA13B8(v2, a2);
      break;
    case 2u:
      v37 = *(v2 + 8);
      if ((v37 & 4) != 0)
      {
        v2 = (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA1588(v2, a2);
      break;
    case 3u:
      v39 = *(v2 + 8);
      if ((v39 & 4) != 0)
      {
        v2 = (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA1758(v2, a2);
      break;
    case 4u:
      v34 = *(v2 + 8);
      if ((v34 & 4) != 0)
      {
        v2 = (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA1928(v2, a2);
      break;
    case 5u:
      v48 = *(v2 + 8);
      if ((v48 & 4) != 0)
      {
        v2 = (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA1AF8(v2, a2);
      break;
    case 6u:
      v52 = *(v2 + 8);
      if ((v52 & 4) != 0)
      {
        v2 = (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA1B64(v2, a2);
      break;
    case 7u:
      v40 = *(v2 + 8);
      if ((v40 & 4) != 0)
      {
        v2 = (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA1D34(v2, a2);
      break;
    case 8u:
      v54 = *(v2 + 8);
      if ((v54 & 4) != 0)
      {
        v2 = (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA1EFC(v2, a2);
      break;
    case 9u:
      v36 = *(v2 + 8);
      if ((v36 & 4) != 0)
      {
        v2 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA20C4(v2, a2);
      break;
    case 0xAu:
      v53 = *(v2 + 8);
      if ((v53 & 4) != 0)
      {
        v2 = (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA2294(v2, a2);
      break;
    case 0xBu:
      v31 = *(v2 + 8);
      if ((v31 & 4) != 0)
      {
        v2 = (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA2300(v2, a2);
      break;
    case 0xCu:

      sub_29ACA0300(v2, a2);
      break;
    case 0xDu:

      sub_29ACA0354(v2, a2);
      break;
    case 0xEu:

      sub_29ACA03A4(v2, a2);
      break;
    case 0xFu:

      sub_29ACA03F8(v2, a2);
      break;
    case 0x10u:

      sub_29ACA044C(v2, a2);
      break;
    case 0x11u:

      sub_29ACA04A0(v2, a2);
      break;
    case 0x12u:

      sub_29ACA04F4(v2, a2);
      break;
    case 0x13u:

      sub_29ACA0548(v2, a2);
      break;
    case 0x14u:

      sub_29ACA059C(v2, a2);
      break;
    case 0x15u:

      sub_29ACA05F0(v2, a2);
      break;
    case 0x16u:

      sub_29ACA0644(v2, a2);
      break;
    case 0x17u:

      sub_29ACA0698(v2, a2);
      break;
    case 0x18u:

      sub_29ACA06EC(v2, a2);
      break;
    case 0x19u:

      sub_29ACA0740(v2, a2);
      break;
    case 0x1Au:

      sub_29ACA0794(v2, a2);
      break;
    case 0x1Bu:

      sub_29ACA07E8(v2, a2);
      break;
    case 0x1Cu:

      sub_29ACA083C(v2, a2);
      break;
    case 0x1Du:

      sub_29ACA0890(v2, a2);
      break;
    case 0x1Eu:

      sub_29ACA08E4(v2, a2);
      break;
    case 0x1Fu:

      sub_29ACA0938(v2, a2);
      break;
    case 0x20u:

      sub_29ACA098C(v2, a2);
      break;
    case 0x21u:

      sub_29ACA09E0(v2, a2);
      break;
    case 0x22u:

      sub_29ACA0A34(v2, a2);
      break;
    case 0x23u:

      sub_29ACA0A88(v2, a2);
      break;
    case 0x24u:

      sub_29ACA0ADC(v2, a2);
      break;
    case 0x25u:

      sub_29ACA0B30(v2, a2);
      break;
    case 0x26u:

      sub_29ACA0B84(v2, a2);
      break;
    case 0x27u:

      sub_29ACA0BD8(v2, a2);
      break;
    case 0x28u:

      sub_29ACA0C2C(v2, a2);
      break;
    case 0x29u:

      sub_29ACA0C80(v2, a2);
      break;
    case 0x2Au:

      sub_29ACA0CD4(v2, a2);
      break;
    case 0x2Bu:

      sub_29ACA0D28(v2, a2);
      break;
    case 0x2Cu:

      sub_29ACA0D7C(v2, a2);
      break;
    case 0x2Du:

      sub_29ACA0DD0(v2, a2);
      break;
    case 0x2Eu:

      sub_29ACA0E24(v2, a2);
      break;
    case 0x2Fu:

      sub_29ACA0E78(v2, a2);
      break;
    case 0x30u:

      sub_29ACA0ECC(v2, a2);
      break;
    case 0x31u:

      sub_29ACA0F20(v2, a2);
      break;
    case 0x32u:

      sub_29ACA0F74(v2, a2);
      break;
    case 0x33u:

      sub_29ACA0FC8(v2, a2);
      break;
    case 0x34u:

      sub_29ACA101C(v2, a2);
      break;
    case 0x35u:

      sub_29ACA1070(v2, a2);
      break;
    case 0x36u:

      sub_29ACA10C4(v2, a2);
      break;
    case 0x37u:

      sub_29ACA1118(v2, a2);
      break;
    case 0x38u:

      sub_29ACA116C(v2, a2);
      break;
    case 0x39u:

      sub_29ACA11C0(v2, a2);
      break;
    case 0x3Au:

      sub_29ACA1214(v2, a2);
      break;
    case 0x3Bu:

      sub_29ACA1268(v2, a2);
      break;
    case 0x3Cu:

      sub_29ACA12BC(v2, a2);
      break;
    case 0x3Du:
      v46 = *(v2 + 8);
      if ((v46 & 4) != 0)
      {
        v47 = (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v47 = *v2;
      }

      sub_29ACA965C(v47, a2);
      break;
    case 0x3Eu:
      v50 = *(v2 + 8);
      if ((v50 & 4) != 0)
      {
        v51 = (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v51 = *v2;
      }

      sub_29ACA986C(v51, a2);
      break;
    case 0x3Fu:
      v38 = *(v2 + 8);
      if ((v38 & 4) != 0)
      {
        v2 = (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA98DC(v2, a2);
      break;
    case 0x40u:
      v35 = *(v2 + 8);
      if ((v35 & 4) != 0)
      {
        v2 = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA9944(v2, a2);
      break;
    case 0x41u:
      v49 = *(v2 + 8);
      if ((v49 & 4) != 0)
      {
        v2 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA9B0C(v2, a2);
      break;
    case 0x42u:
      v19 = *(v2 + 8);
      if ((v19 & 4) != 0)
      {
        v2 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACA9CF4(v2, a2);
      break;
    case 0x43u:
      v27 = *(v2 + 8);
      if ((v27 & 4) != 0)
      {
        v28 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v28 = *v2;
      }

      sub_29ACA9EC4(v28, a2);
      break;
    case 0x44u:
      v68 = *(v2 + 8);
      if ((v68 & 4) != 0)
      {
        v69 = (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v69 = *v2;
      }

      sub_29ACA9F30(v69, a2);
      break;
    case 0x45u:
      v26 = *(v2 + 8);
      if ((v26 & 4) != 0)
      {
        v2 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACAA14C(v2, a2);
      break;
    case 0x46u:
      v11 = *(v2 + 8);
      if ((v11 & 4) != 0)
      {
        v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v12 = *v2;
      }

      sub_29ACAA1B4(v12, a2);
      break;
    case 0x47u:
      v22 = *(v2 + 8);
      if ((v22 & 4) != 0)
      {
        v23 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v23 = *v2;
      }

      sub_29ACAA3CC(v23, a2);
      break;
    case 0x48u:
      v59 = *(v2 + 8);
      if ((v59 & 4) != 0)
      {
        v60 = (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v60 = *v2;
      }

      sub_29ACAA440(v60, a2);
      break;
    case 0x49u:
      v61 = *(v2 + 8);
      if ((v61 & 4) != 0)
      {
        v62 = (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v62 = *v2;
      }

      sub_29ACAA64C(v62, a2);
      break;
    case 0x4Au:
      v64 = *(v2 + 8);
      if ((v64 & 4) != 0)
      {
        v65 = (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v65 = *v2;
      }

      sub_29ACAA88C(v65, a2);
      break;
    case 0x4Bu:
      v24 = *(v2 + 8);
      if ((v24 & 4) != 0)
      {
        v25 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v25 = *v2;
      }

      sub_29ACAAAC0(v25, a2);
      break;
    case 0x4Cu:
      v44 = *(v2 + 8);
      if ((v44 & 4) != 0)
      {
        v45 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v45 = *v2;
      }

      sub_29ACAAEBC(v45, a2);
      break;
    case 0x4Du:
      v13 = *(v2 + 8);
      if ((v13 & 4) != 0)
      {
        v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v14 = *v2;
      }

      sub_29ACAAF50(v14, a2);
      break;
    case 0x4Eu:
      v66 = *(v2 + 8);
      if ((v66 & 4) != 0)
      {
        v67 = (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v67 = *v2;
      }

      sub_29ACAB1A8(v67, a2);
      break;
    case 0x4Fu:
      v9 = *(v2 + 8);
      if ((v9 & 4) != 0)
      {
        v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v10 = *v2;
      }

      sub_29ACAB3C0(v10, a2);
      break;
    case 0x50u:
      v20 = *(v2 + 8);
      if ((v20 & 4) != 0)
      {
        v21 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v21 = *v2;
      }

      sub_29ACAB868(v21, a2);
      break;
    case 0x51u:
      v32 = *(v2 + 8);
      if ((v32 & 4) != 0)
      {
        v33 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v33 = *v2;
      }

      sub_29ACABD1C(v33, a2);
      break;
    case 0x52u:
      v29 = *(v2 + 8);
      if ((v29 & 4) != 0)
      {
        v30 = (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v30 = *v2;
      }

      sub_29ACABF28(v30, a2);
      break;
    case 0x53u:
      v6 = *(v2 + 8);
      if ((v6 & 4) != 0)
      {
        v2 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACAC3AC(v2, a2);
      break;
    case 0x54u:
      v4 = *(v2 + 8);
      if ((v4 & 4) != 0)
      {
        v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v5 = *v2;
      }

      sub_29ACAC6F8(v5, a2);
      break;
    case 0x55u:
      v55 = *(v2 + 8);
      if ((v55 & 4) != 0)
      {
        v56 = (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v56 = *v2;
      }

      sub_29ACACB10(v56, a2);
      break;
    case 0x56u:
      v57 = *(v2 + 8);
      if ((v57 & 4) != 0)
      {
        v58 = (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v58 = *v2;
      }

      sub_29ACACF98(v58, a2);
      break;
    case 0x57u:
      v63 = *(v2 + 8);
      if ((v63 & 4) != 0)
      {
        v2 = (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      sub_29ACAD414(v2, a2);
      break;
    case 0x58u:
      v17 = *(v2 + 8);
      if ((v17 & 4) != 0)
      {
        v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v18 = *v2;
      }

      sub_29ACAD5DC(v18, a2);
      break;
    case 0x59u:
      v72 = *(v2 + 8);
      if ((v72 & 4) != 0)
      {
        v73 = (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v73 = *v2;
      }

      sub_29ACAD7E8(v73, a2);
      break;
    case 0x5Au:
      v70 = *(v2 + 8);
      if ((v70 & 4) != 0)
      {
        v71 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v71 = *v2;
      }

      sub_29ACAD9FC(v71, a2);
      break;
    case 0x5Bu:
      v7 = *(v2 + 8);
      if ((v7 & 4) != 0)
      {
        v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v8 = *v2;
      }

      sub_29ACADE88(v8, a2);
      break;
    case 0x5Cu:
      v42 = *(v2 + 8);
      if ((v42 & 4) != 0)
      {
        v43 = (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v43 = *v2;
      }

      sub_29ACAE274(v43, a2);
      break;
    case 0x5Du:
      v15 = *(v2 + 8);
      if ((v15 & 4) != 0)
      {
        v16 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      }

      else
      {
        v16 = *v2;
      }

      sub_29ACAE700(v16, a2);
      break;
    case 0x5Eu:

      sub_29ACA1310(v2, a2);
      break;
    case 0x5Fu:

      sub_29ACA1364(v2);
    default:

      sub_29ACAFAEC(v2, a2);
      break;
  }
}

void pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 == 1)
  {
    if ((atomic_load_explicit(&qword_2A174B580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B580))
    {
      v6 = operator new(0x10uLL);
      *v6 = &unk_2A20843E0;
      v6[8] = 1;
      sub_29ACB3E50(&qword_2A174B570, v6);
      __cxa_atexit(sub_29ABCF02C, &qword_2A174B570, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B580);
    }

    v3 = &qword_2A174B570;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174B598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B598))
    {
      v7 = operator new(0x10uLL);
      *v7 = &unk_2A20843E0;
      v7[8] = 0;
      sub_29ACB3E50(&qword_2A174B588, v7);
      __cxa_atexit(sub_29ABCF02C, &qword_2A174B588, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B598);
    }

    v3 = &qword_2A174B588;
  }

  v5 = *v3;
  v4 = v3[1];
  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void pxrInternal__aapl__pxrReserved__::HdMakeStaticCopy(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    (*(*v4 + 16))(&v12);
    memset(v11, 0, sizeof(v11));
    sub_29A039314(v11, v13 - v12);
    v5 = v12;
    v6 = v13;
    if (v12 == v13)
    {
      v7 = v12;
    }

    else
    {
      do
      {
        (*(**a1 + 24))(&v8);
        pxrInternal__aapl__pxrReserved__::HdMakeStaticCopy(&v10, &v8);
        sub_29A01729C(v11, &v10);
        if (*(&v10 + 1))
        {
          sub_29A014BEC(*(&v10 + 1));
        }

        if (v9)
        {
          sub_29A014BEC(v9);
        }

        ++v5;
      }

      while (v5 != v6);
      v5 = v12;
      v7 = v13;
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7 - v5, v5, v11[0], &v10);
    *a2 = v10;
    *&v10 = v11;
    sub_29A0176E4(&v10);
    v11[0] = &v12;
    sub_29A124AB0(v11);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void sub_29AC9FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a11 = &a13;
  sub_29A0176E4(&a11);
  a13 = &a16;
  sub_29A124AB0(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdMakeStaticCopy(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    goto LABEL_23;
  }

  sub_29ABC3244(a1, &v14);
  v4 = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::HdMakeStaticCopy(&v14, &v12);
    *a2 = v12;
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (!v4)
  {
    sub_29ABE3E74(a1, &v10);
    v5 = v10;
    if (v10)
    {
      v6 = (*(*v10 + 16))(v10);
      v13 = v6;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      sub_29A039314(&v14, v6);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          (*(*v10 + 24))(&v12);
          sub_29A01729C(&v14, &v12);
          if (*(&v12 + 1))
          {
            sub_29A014BEC(*(&v12 + 1));
          }
        }
      }

      v11 = v14;
      sub_29ACB06FC(&v13, &v11, &v12);
      v9 = v12;
      *&v12 = &v14;
      sub_29A0176E4(&v12);
      *a2 = v9;
    }

    if (*(&v10 + 1))
    {
      sub_29A014BEC(*(&v10 + 1));
    }

    if (!v5)
    {
      sub_29ABE3F04(a1, &v12);
      v8 = v12;
      if (v12)
      {
        (*(*v12 + 16))(&v14, v12, 0.0);
        sub_29AC9E2D8(&v14, &v10);
        sub_29A186B14(&v14);
        *a2 = v10;
      }

      if (*(&v12 + 1))
      {
        sub_29A014BEC(*(&v12 + 1));
      }

      if (!v8)
      {
        v14 = "hd/retainedDataSource.cpp";
        v15 = "HdMakeStaticCopy";
        v16 = 464;
        v17 = "HdDataSourceBaseHandle pxrInternal__aapl__pxrReserved__::HdMakeStaticCopy(const HdDataSourceBaseHandle &)";
        v18 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 1, "Unsupported data source type");
LABEL_23:
        *a2 = 0;
        *(a2 + 8) = 0;
      }
    }
  }
}

void sub_29ACA01C4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207E300;
  sub_29ACB3D5C(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ACA0218(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207E300;
  sub_29ACB3D5C(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29ACA0274(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void sub_29ACA029C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double sub_29ACA02B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(a1, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_29ACA0300@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29AC02AF4(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0354@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29ABCCFA4(a1, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_29ACA03A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA24D0(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA03F8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA2774(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA044C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA2A18(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA04A0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA2CBC(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA04F4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA2F60(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0548@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA3204(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA059C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA34A8(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA05F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA374C(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0644@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA39F0(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0698@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ABFABE8(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA06EC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA3C94(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0740@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA3F38(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0794@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA41DC(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA07E8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA4480(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA083C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA4724(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0890@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA49C8(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA08E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA4C6C(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0938@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA4F10(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA098C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA51B4(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA09E0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA5458(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0A34@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA56FC(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0A88@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA59A0(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0ADC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA5C44(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0B30@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA5EE8(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0B84@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA618C(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0BD8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA6430(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0C2C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA66D4(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0C80@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA6978(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0CD4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA6C1C(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0D28@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA6EC0(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0D7C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA7164(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0DD0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA7408(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0E24@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA76AC(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0E78@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA7950(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0ECC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA7BF4(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0F20@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA7E98(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0F74@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA813C(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA0FC8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA83E0(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA101C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ABF4FA0(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA1070@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA8684(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA10C4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA8928(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA1118@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA8BCC(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA116C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA8E70(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA11C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ABF6834(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA1214@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA9114(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA1268@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACA93B8(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA12BC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ABF3FFC(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA1310@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  sub_29ACAEBC0(v4, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA1364(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 4) != 0)
  {
    (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29ACAF538();
}

double sub_29ACA13B8@<D0>(_BYTE *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A207E3A8;
  v4[8] = *a1;
  sub_29ACA147C(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA1428(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1450@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A204430B;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACA147C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207E410;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA14D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA14F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1518(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA1548(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E460))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA1588@<D0>(_BYTE *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A207E488;
  v4[8] = *a1;
  sub_29ACA164C(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA15F8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1620@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A2044533;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACA164C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207E4F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA16A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA16C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA16E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA1718(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E540))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA1758@<D0>(_WORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A207E568;
  v4[4] = *a1;
  sub_29ACA181C(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA17C8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA17F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20445EB;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACA181C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207E5D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA1874(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA1890(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA18B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA18E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E620))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA1928@<D0>(_WORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A207E648;
  v4[4] = *a1;
  sub_29ACA19EC(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA1998(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA19C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20446A3;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACA19EC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207E6B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA1A44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA1A60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1A88(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA1AB8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E700))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA1AF8@<D0>(_DWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2077528;
  v4[2] = *a1;
  sub_29ABF40E4(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA1B64@<D0>(_DWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A207E728;
  v4[2] = *a1;
  sub_29ACA1C28(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA1BD4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1BFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A2044813;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACA1C28(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207E790;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA1C80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA1C9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1CC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA1CF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E7E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA1D34@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A207E808;
  v4[1] = v5;
  sub_29ACA1DF0(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACA1DA0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1DC8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29ACA1DF0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207E870;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA1E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA1E64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1E8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA1EBC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E8C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA1EFC@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A207E8E8;
  v4[1] = v5;
  sub_29ACA1FB8(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACA1F68(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA1F90@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &unk_2A2044AF3;
  return result;
}

void *sub_29ACA1FB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207E950;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA2010(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA202C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA2054(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA2084(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207E9A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA20C4@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A207E9C8;
  v4[1] = *a1;
  sub_29ACA2188(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA2134(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

double sub_29ACA215C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A2044D1B;
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

void *sub_29ACA2188(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207EA18;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA21E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA21FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA2224(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA2254(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207EA68))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA2294@<D0>(_DWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2079BC0;
  v4[2] = *a1;
  sub_29AC01310(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA2300@<D0>(_WORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A207EA90;
  v4[4] = *a1;
  sub_29ACA23C4(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA2370(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA2398@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2044BA8 + 3;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACA23C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207EAF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA241C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA2438(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA2460(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA2490(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207EB48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA24D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207EB70;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA2668(a2, v4);
}

uint64_t sub_29ACA2634@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA2668(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207EBD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA26C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA26DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA2704(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA2734(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207EC28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA2774@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207EC50;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA290C(a2, v4);
}

uint64_t sub_29ACA28D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA290C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207ECB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA2964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA2980(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA29A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA29D8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207ED08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA2A18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207ED30;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA2BB0(a2, v4);
}

uint64_t sub_29ACA2B7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA2BB0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207ED98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA2C08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA2C24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA2C4C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA2C7C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207EDE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA2CBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207EE10;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA2E54(a2, v4);
}

uint64_t sub_29ACA2E20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA2E54(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207EE78;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA2EAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA2EC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA2EF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA2F20(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207EEC8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA2F60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207EEF0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA30F8(a2, v4);
}

uint64_t sub_29ACA30C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA30F8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207EF58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA3150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA316C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA3194(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA31C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207EFA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA3204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207EFD0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA339C(a2, v4);
}

uint64_t sub_29ACA3368@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA339C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F038;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA33F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA3410(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA3438(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA3468(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F088))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA34A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F0B0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA3640(a2, v4);
}

uint64_t sub_29ACA360C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA3640(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F118;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA3698(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA36B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA36DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA370C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F168))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA374C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F190;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA38E4(a2, v4);
}

uint64_t sub_29ACA38B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA38E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F1F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA393C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA3958(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA3980(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA39B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F248))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA39F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F270;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA3B88(a2, v4);
}

uint64_t sub_29ACA3B54@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA3B88(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F2D8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA3BE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA3BFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA3C24(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA3C54(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F328))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA3C94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F350;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA3E2C(a2, v4);
}

uint64_t sub_29ACA3DF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA3E2C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F3A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA3E84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA3EA0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA3EC8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA3EF8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F3F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA3F38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F418;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA40D0(a2, v4);
}

uint64_t sub_29ACA409C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA40D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F468;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA4128(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA4144(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA416C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA419C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F4B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA41DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F4E0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA4374(a2, v4);
}

uint64_t sub_29ACA4340@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA4374(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F548;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA43CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA43E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA4410(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA4440(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F598))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA4480@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F5C0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA4618(a2, v4);
}

uint64_t sub_29ACA45E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA4618(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F628;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA4670(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA468C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA46B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA46E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F678))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA4724@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F6A0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA48BC(a2, v4);
}

uint64_t sub_29ACA4888@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}