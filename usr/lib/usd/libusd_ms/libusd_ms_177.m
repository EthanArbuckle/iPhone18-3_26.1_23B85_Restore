void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetCollectionMaterialBindings(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  sub_29AC100E4(a1, &v7);
  v5 = v8;
  *a3 = v7;
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens))
    {
      sub_29AF4F594(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens);
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

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens);
  if (!result)
  {
    return sub_29AF4F594(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17516D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17516D0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF4F594(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1751698, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1751698, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17516D0);
  }

  return &unk_2A1751698;
}

atomic_uint **sub_29AF4F594(atomic_ullong *a1)
{
  result = sub_29AF4F5DC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType::~UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AF4F5DC()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType::~UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "directMaterialBinding", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "materialPath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "bindingStrength", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF4F7EC(_Unwind_Exception *a1)
{
  v3 = 16;
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
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetMaterialPath(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4FE60(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetBindingStrength(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4FE60(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v25[1] = *MEMORY[0x29EDCA608];
  v5 = &v22;
  v24 = 0;
  v25[0] = 0;
  v6 = &v24;
  v22 = 0u;
  v23 = 0u;
  if (*a1)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AF4FE60(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
    }

    v5 = &v23;
    v6 = v25;
    sub_29A166F2C(&v24, v8 + 1);
    v10 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(&v22 + 1);
    *&v22 = v10;
    *(&v22 + 1) = v9;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (*a2)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
    if (!v13)
    {
      v13 = sub_29AF4FE60(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
    }

    sub_29A166F2C(v6, v13 + 2);
    ++v12;
    v15 = *a2;
    v14 = a2[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v5 + 1);
    *v5 = v15;
    *(v5 + 1) = v14;
    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v12, &v24, &v22, &v21);
  *a3 = v21;
  for (i = 24; i != -8; i -= 16)
  {
    v18 = *(&v22 + i);
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  for (j = 1; j != -1; --j)
  {
    v20 = v25[j - 1];
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AF4FB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v17 = 24;
  while (1)
  {
    v18 = *(&a11 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      v19 = 8;
      while (1)
      {
        v20 = *(&a16 + v19);
        if ((v20 & 7) != 0)
        {
          atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 -= 8;
        if (v19 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::Builder::SetMaterialPath(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::Builder::SetBindingStrength(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens))
    {
      sub_29AF4FE60(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
  if (!result)
  {
    return sub_29AF4FE60(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1751710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751710))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF4FE60(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A17516D8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A17516D8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751710);
  }

  return &unk_2A17516D8;
}

pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType *sub_29AF4FE60(atomic_ullong *a1)
{
  result = sub_29AF4FEA8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType::~UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType *sub_29AF4FEA8()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType::UsdImagingDirectMaterialBindingSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType::~UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "directMaterialBindings", 0);
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

void sub_29AF50068(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetPurposes(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema *this@<X0>, void *a2@<X8>)
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

void sub_29AF50148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDirectMaterialBinding(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF50478(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDirectMaterialBinding(this, v4 + 1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDirectMaterialBinding(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v4;
    }
  }

  sub_29ABC2F3C(this, &v9);
  v6 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    v7 = v10;
    *a3 = v6;
    a3[1] = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = 0;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens))
    {
      sub_29AF50478(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens);
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

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens);
  if (!result)
  {
    return sub_29AF50478(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1751750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751750))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF50478(&pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1751718, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1751718, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751750);
  }

  return &unk_2A1751718;
}

atomic_uint **sub_29AF50478(atomic_ullong *a1)
{
  result = sub_29AF504C0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType::~UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AF504C0()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType::UsdImagingDirectMaterialBindingsSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AF50724()
{
  xmmword_2A1751758 = 0u;
  unk_2A1751768 = 0u;
  dword_2A1751778 = 1065353216;
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v0)
  {
    v0 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v0 + 96);
  sub_29AF53B1C(&xmmword_2A1751758, (v0 + 96), &unk_29B4D6118, &v104)[3] = sub_29AF52694;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v1 + 552);
  sub_29AF53B1C(&xmmword_2A1751758, (v1 + 552), &unk_29B4D6118, &v104)[3] = sub_29AF526CC;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v2)
  {
    v2 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = v2;
  sub_29AF53B1C(&xmmword_2A1751758, v2, &unk_29B4D6118, &v104)[3] = sub_29AF52704;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v3)
  {
    v3 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v3 + 448);
  sub_29AF53B1C(&xmmword_2A1751758, (v3 + 448), &unk_29B4D6118, &v104)[3] = sub_29AF5273C;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v4)
  {
    v4 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v4 + 272);
  sub_29AF53B1C(&xmmword_2A1751758, (v4 + 272), &unk_29B4D6118, &v104)[3] = sub_29AF52774;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v5)
  {
    v5 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v5 + 728);
  sub_29AF53B1C(&xmmword_2A1751758, (v5 + 728), &unk_29B4D6118, &v104)[3] = sub_29AF527AC;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v6)
  {
    v6 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v6 + 280);
  sub_29AF53B1C(&xmmword_2A1751758, (v6 + 280), &unk_29B4D6118, &v104)[3] = sub_29AF527E4;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v7)
  {
    v7 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v7 + 736);
  sub_29AF53B1C(&xmmword_2A1751758, (v7 + 736), &unk_29B4D6118, &v104)[3] = sub_29AF5281C;
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v8)
  {
    v8 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v8 + 288);
  sub_29AF53B1C(&xmmword_2A1751758, (v8 + 288), &unk_29B4D6118, &v104)[3] = sub_29AF52854;
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v9 + 744);
  sub_29AF53B1C(&xmmword_2A1751758, (v9 + 744), &unk_29B4D6118, &v104)[3] = sub_29AF5288C;
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v10)
  {
    v10 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v10 + 296);
  sub_29AF53B1C(&xmmword_2A1751758, (v10 + 296), &unk_29B4D6118, &v104)[3] = sub_29AF528C4;
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v11)
  {
    v11 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v11 + 752);
  sub_29AF53B1C(&xmmword_2A1751758, (v11 + 752), &unk_29B4D6118, &v104)[3] = sub_29AF528FC;
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v12)
  {
    v12 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v12 + 304);
  sub_29AF53B1C(&xmmword_2A1751758, (v12 + 304), &unk_29B4D6118, &v104)[3] = sub_29AF52934;
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v13)
  {
    v13 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v13 + 760);
  sub_29AF53B1C(&xmmword_2A1751758, (v13 + 760), &unk_29B4D6118, &v104)[3] = sub_29AF5296C;
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v14)
  {
    v14 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v14 + 312);
  sub_29AF53B1C(&xmmword_2A1751758, (v14 + 312), &unk_29B4D6118, &v104)[3] = sub_29AF529A4;
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v15)
  {
    v15 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v15 + 768);
  sub_29AF53B1C(&xmmword_2A1751758, (v15 + 768), &unk_29B4D6118, &v104)[3] = sub_29AF529DC;
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v16)
  {
    v16 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v16 + 64);
  sub_29AF53B1C(&xmmword_2A1751758, (v16 + 64), &unk_29B4D6118, &v104)[3] = sub_29AF52A14;
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v17)
  {
    v17 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v17 + 520);
  sub_29AF53B1C(&xmmword_2A1751758, (v17 + 520), &unk_29B4D6118, &v104)[3] = sub_29AF52A4C;
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v18)
  {
    v18 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v18 + 176);
  sub_29AF53B1C(&xmmword_2A1751758, (v18 + 176), &unk_29B4D6118, &v104)[3] = sub_29AF52A84;
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v19)
  {
    v19 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v19 + 632);
  sub_29AF53B1C(&xmmword_2A1751758, (v19 + 632), &unk_29B4D6118, &v104)[3] = sub_29AF52ABC;
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v20)
  {
    v20 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v20 + 184);
  sub_29AF53B1C(&xmmword_2A1751758, (v20 + 184), &unk_29B4D6118, &v104)[3] = sub_29AF52854;
  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v21)
  {
    v21 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v21 + 640);
  sub_29AF53B1C(&xmmword_2A1751758, (v21 + 640), &unk_29B4D6118, &v104)[3] = sub_29AF5288C;
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v22)
  {
    v22 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v22 + 192);
  sub_29AF53B1C(&xmmword_2A1751758, (v22 + 192), &unk_29B4D6118, &v104)[3] = sub_29AF529A4;
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v23)
  {
    v23 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v23 + 648);
  sub_29AF53B1C(&xmmword_2A1751758, (v23 + 648), &unk_29B4D6118, &v104)[3] = sub_29AF529DC;
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v24)
  {
    v24 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v24 + 48);
  sub_29AF53B1C(&xmmword_2A1751758, (v24 + 48), &unk_29B4D6118, &v104)[3] = sub_29AF52AF4;
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v25)
  {
    v25 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v25 + 504);
  sub_29AF53B1C(&xmmword_2A1751758, (v25 + 504), &unk_29B4D6118, &v104)[3] = sub_29AF52B2C;
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v26)
  {
    v26 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v26 + 128);
  sub_29AF53B1C(&xmmword_2A1751758, (v26 + 128), &unk_29B4D6118, &v104)[3] = sub_29AF52B64;
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v27)
  {
    v27 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v27 + 584);
  sub_29AF53B1C(&xmmword_2A1751758, (v27 + 584), &unk_29B4D6118, &v104)[3] = sub_29AF52B9C;
  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v28)
  {
    v28 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v28 + 136);
  sub_29AF53B1C(&xmmword_2A1751758, (v28 + 136), &unk_29B4D6118, &v104)[3] = sub_29AF52774;
  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v29)
  {
    v29 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v29 + 592);
  sub_29AF53B1C(&xmmword_2A1751758, (v29 + 592), &unk_29B4D6118, &v104)[3] = sub_29AF527AC;
  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v30)
  {
    v30 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v30 + 144);
  sub_29AF53B1C(&xmmword_2A1751758, (v30 + 144), &unk_29B4D6118, &v104)[3] = sub_29AF528C4;
  v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v31)
  {
    v31 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v31 + 600);
  sub_29AF53B1C(&xmmword_2A1751758, (v31 + 600), &unk_29B4D6118, &v104)[3] = sub_29AF528FC;
  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v32)
  {
    v32 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v32 + 56);
  sub_29AF53B1C(&xmmword_2A1751758, (v32 + 56), &unk_29B4D6118, &v104)[3] = sub_29AF52BD4;
  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v33)
  {
    v33 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v33 + 512);
  sub_29AF53B1C(&xmmword_2A1751758, (v33 + 512), &unk_29B4D6118, &v104)[3] = sub_29AF52C0C;
  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v34)
  {
    v34 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v34 + 152);
  sub_29AF53B1C(&xmmword_2A1751758, (v34 + 152), &unk_29B4D6118, &v104)[3] = sub_29AF52C44;
  v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v35)
  {
    v35 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v35 + 608);
  sub_29AF53B1C(&xmmword_2A1751758, (v35 + 608), &unk_29B4D6118, &v104)[3] = sub_29AF52C7C;
  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v36)
  {
    v36 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v36 + 160);
  sub_29AF53B1C(&xmmword_2A1751758, (v36 + 160), &unk_29B4D6118, &v104)[3] = sub_29AF527E4;
  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v37)
  {
    v37 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v37 + 616);
  sub_29AF53B1C(&xmmword_2A1751758, (v37 + 616), &unk_29B4D6118, &v104)[3] = sub_29AF5281C;
  v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v38)
  {
    v38 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v38 + 168);
  sub_29AF53B1C(&xmmword_2A1751758, (v38 + 168), &unk_29B4D6118, &v104)[3] = sub_29AF52934;
  v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v39)
  {
    v39 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v39 + 624);
  sub_29AF53B1C(&xmmword_2A1751758, (v39 + 624), &unk_29B4D6118, &v104)[3] = sub_29AF5296C;
  v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v40)
  {
    v40 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v40 + 16);
  sub_29AF53B1C(&xmmword_2A1751758, (v40 + 16), &unk_29B4D6118, &v104)[3] = sub_29AF52CB4;
  v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v41)
  {
    v41 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v41 + 464);
  sub_29AF53B1C(&xmmword_2A1751758, (v41 + 464), &unk_29B4D6118, &v104)[3] = sub_29AF52CEC;
  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v42)
  {
    v42 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v42 + 104);
  sub_29AF53B1C(&xmmword_2A1751758, (v42 + 104), &unk_29B4D6118, &v104)[3] = sub_29AF52D24;
  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v43)
  {
    v43 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v43 + 560);
  sub_29AF53B1C(&xmmword_2A1751758, (v43 + 560), &unk_29B4D6118, &v104)[3] = sub_29AF52D5C;
  v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v44)
  {
    v44 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v44 + 112);
  sub_29AF53B1C(&xmmword_2A1751758, (v44 + 112), &unk_29B4D6118, &v104)[3] = sub_29AF52D94;
  v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v45)
  {
    v45 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v45 + 568);
  sub_29AF53B1C(&xmmword_2A1751758, (v45 + 568), &unk_29B4D6118, &v104)[3] = sub_29AF52DCC;
  v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v46)
  {
    v46 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v46 + 120);
  sub_29AF53B1C(&xmmword_2A1751758, (v46 + 120), &unk_29B4D6118, &v104)[3] = sub_29AF52E04;
  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v47)
  {
    v47 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v47 + 576);
  sub_29AF53B1C(&xmmword_2A1751758, (v47 + 576), &unk_29B4D6118, &v104)[3] = sub_29AF52E3C;
  v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v48)
  {
    v48 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v48 + 32);
  sub_29AF53B1C(&xmmword_2A1751758, (v48 + 32), &unk_29B4D6118, &v104)[3] = sub_29AF52E74;
  v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v49)
  {
    v49 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v49 + 488);
  sub_29AF53B1C(&xmmword_2A1751758, (v49 + 488), &unk_29B4D6118, &v104)[3] = sub_29AF52EAC;
  v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v50)
  {
    v50 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v50 + 344);
  sub_29AF53B1C(&xmmword_2A1751758, (v50 + 344), &unk_29B4D6118, &v104)[3] = sub_29AF52EE4;
  v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v51)
  {
    v51 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v51 + 800);
  sub_29AF53B1C(&xmmword_2A1751758, (v51 + 800), &unk_29B4D6118, &v104)[3] = sub_29AF52F1C;
  v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v52)
  {
    v52 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v52 + 352);
  sub_29AF53B1C(&xmmword_2A1751758, (v52 + 352), &unk_29B4D6118, &v104)[3] = sub_29AF52F54;
  v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v53)
  {
    v53 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v53 + 808);
  sub_29AF53B1C(&xmmword_2A1751758, (v53 + 808), &unk_29B4D6118, &v104)[3] = sub_29AF52F8C;
  v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v54)
  {
    v54 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v54 + 360);
  sub_29AF53B1C(&xmmword_2A1751758, (v54 + 360), &unk_29B4D6118, &v104)[3] = sub_29AF52FC4;
  v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v55)
  {
    v55 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v55 + 816);
  sub_29AF53B1C(&xmmword_2A1751758, (v55 + 816), &unk_29B4D6118, &v104)[3] = sub_29AF52FFC;
  v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v56)
  {
    v56 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v56 + 248);
  sub_29AF53B1C(&xmmword_2A1751758, (v56 + 248), &unk_29B4D6118, &v104)[3] = sub_29AF52774;
  v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v57)
  {
    v57 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v57 + 704);
  sub_29AF53B1C(&xmmword_2A1751758, (v57 + 704), &unk_29B4D6118, &v104)[3] = sub_29AF527AC;
  v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v58)
  {
    v58 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v58 + 256);
  sub_29AF53B1C(&xmmword_2A1751758, (v58 + 256), &unk_29B4D6118, &v104)[3] = sub_29AF527E4;
  v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v59)
  {
    v59 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v59 + 712);
  sub_29AF53B1C(&xmmword_2A1751758, (v59 + 712), &unk_29B4D6118, &v104)[3] = sub_29AF5281C;
  v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v60)
  {
    v60 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v60 + 264);
  sub_29AF53B1C(&xmmword_2A1751758, (v60 + 264), &unk_29B4D6118, &v104)[3] = sub_29AF52854;
  v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v61)
  {
    v61 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v61 + 720);
  sub_29AF53B1C(&xmmword_2A1751758, (v61 + 720), &unk_29B4D6118, &v104)[3] = sub_29AF5288C;
  v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v62)
  {
    v62 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v62 + 440);
  sub_29AF53B1C(&xmmword_2A1751758, (v62 + 440), &unk_29B4D6118, &v104)[3] = sub_29AF53034;
  v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v63)
  {
    v63 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v63 + 200);
  sub_29AF53B1C(&xmmword_2A1751758, (v63 + 200), &unk_29B4D6118, &v104)[3] = sub_29AF52774;
  v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v64)
  {
    v64 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v64 + 656);
  sub_29AF53B1C(&xmmword_2A1751758, (v64 + 656), &unk_29B4D6118, &v104)[3] = sub_29AF527AC;
  v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v65)
  {
    v65 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v65 + 208);
  sub_29AF53B1C(&xmmword_2A1751758, (v65 + 208), &unk_29B4D6118, &v104)[3] = sub_29AF527E4;
  v66 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v66)
  {
    v66 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v66 + 664);
  sub_29AF53B1C(&xmmword_2A1751758, (v66 + 664), &unk_29B4D6118, &v104)[3] = sub_29AF5281C;
  v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v67)
  {
    v67 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v67 + 216);
  sub_29AF53B1C(&xmmword_2A1751758, (v67 + 216), &unk_29B4D6118, &v104)[3] = sub_29AF52854;
  v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v68)
  {
    v68 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v68 + 672);
  sub_29AF53B1C(&xmmword_2A1751758, (v68 + 672), &unk_29B4D6118, &v104)[3] = sub_29AF5288C;
  v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v69)
  {
    v69 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v69 + 320);
  sub_29AF53B1C(&xmmword_2A1751758, (v69 + 320), &unk_29B4D6118, &v104)[3] = sub_29AF5306C;
  v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v70)
  {
    v70 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v70 + 776);
  sub_29AF53B1C(&xmmword_2A1751758, (v70 + 776), &unk_29B4D6118, &v104)[3] = sub_29AF530A4;
  v71 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v71)
  {
    v71 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v71 + 328);
  sub_29AF53B1C(&xmmword_2A1751758, (v71 + 328), &unk_29B4D6118, &v104)[3] = sub_29AF530DC;
  v72 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v72)
  {
    v72 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v72 + 784);
  sub_29AF53B1C(&xmmword_2A1751758, (v72 + 784), &unk_29B4D6118, &v104)[3] = sub_29AF53114;
  v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v73)
  {
    v73 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v73 + 336);
  sub_29AF53B1C(&xmmword_2A1751758, (v73 + 336), &unk_29B4D6118, &v104)[3] = sub_29AF5314C;
  v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v74)
  {
    v74 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v74 + 792);
  sub_29AF53B1C(&xmmword_2A1751758, (v74 + 792), &unk_29B4D6118, &v104)[3] = sub_29AF53184;
  v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v75)
  {
    v75 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v75 + 80);
  sub_29AF53B1C(&xmmword_2A1751758, (v75 + 80), &unk_29B4D6118, &v104)[3] = sub_29AF531BC;
  v76 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v76)
  {
    v76 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v76 + 536);
  sub_29AF53B1C(&xmmword_2A1751758, (v76 + 536), &unk_29B4D6118, &v104)[3] = sub_29AF531F4;
  v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v77)
  {
    v77 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v77 + 376);
  sub_29AF53B1C(&xmmword_2A1751758, (v77 + 376), &unk_29B4D6118, &v104)[3] = sub_29AF52B64;
  v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v78)
  {
    v78 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v78 + 832);
  sub_29AF53B1C(&xmmword_2A1751758, (v78 + 832), &unk_29B4D6118, &v104)[3] = sub_29AF52B9C;
  v79 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v79)
  {
    v79 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v79 + 384);
  sub_29AF53B1C(&xmmword_2A1751758, (v79 + 384), &unk_29B4D6118, &v104)[3] = sub_29AF52C44;
  v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v80)
  {
    v80 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v80 + 840);
  sub_29AF53B1C(&xmmword_2A1751758, (v80 + 840), &unk_29B4D6118, &v104)[3] = sub_29AF52C7C;
  v81 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v81)
  {
    v81 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v81 + 392);
  sub_29AF53B1C(&xmmword_2A1751758, (v81 + 392), &unk_29B4D6118, &v104)[3] = sub_29AF52A84;
  v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v82)
  {
    v82 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v82 + 848);
  sub_29AF53B1C(&xmmword_2A1751758, (v82 + 848), &unk_29B4D6118, &v104)[3] = sub_29AF52ABC;
  v83 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v83)
  {
    v83 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v83 + 400);
  sub_29AF53B1C(&xmmword_2A1751758, (v83 + 400), &unk_29B4D6118, &v104)[3] = sub_29AF52774;
  v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v84)
  {
    v84 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v84 + 856);
  sub_29AF53B1C(&xmmword_2A1751758, (v84 + 856), &unk_29B4D6118, &v104)[3] = sub_29AF527AC;
  v85 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v85)
  {
    v85 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v85 + 408);
  sub_29AF53B1C(&xmmword_2A1751758, (v85 + 408), &unk_29B4D6118, &v104)[3] = sub_29AF527E4;
  v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v86)
  {
    v86 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v86 + 864);
  sub_29AF53B1C(&xmmword_2A1751758, (v86 + 864), &unk_29B4D6118, &v104)[3] = sub_29AF5281C;
  v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v87)
  {
    v87 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v87 + 416);
  sub_29AF53B1C(&xmmword_2A1751758, (v87 + 416), &unk_29B4D6118, &v104)[3] = sub_29AF52854;
  v88 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v88)
  {
    v88 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v88 + 872);
  sub_29AF53B1C(&xmmword_2A1751758, (v88 + 872), &unk_29B4D6118, &v104)[3] = sub_29AF5288C;
  v89 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v89)
  {
    v89 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v89 + 88);
  sub_29AF53B1C(&xmmword_2A1751758, (v89 + 88), &unk_29B4D6118, &v104)[3] = sub_29AF5322C;
  v90 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v90)
  {
    v90 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v90 + 544);
  sub_29AF53B1C(&xmmword_2A1751758, (v90 + 544), &unk_29B4D6118, &v104)[3] = sub_29AF53264;
  v91 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v91)
  {
    v91 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v91 + 8);
  sub_29AF53B1C(&xmmword_2A1751758, (v91 + 8), &unk_29B4D6118, &v104)[3] = sub_29AF5329C;
  v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v92)
  {
    v92 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v92 + 456);
  sub_29AF53B1C(&xmmword_2A1751758, (v92 + 456), &unk_29B4D6118, &v104)[3] = sub_29AF532D4;
  v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v93)
  {
    v93 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v93 + 24);
  sub_29AF53B1C(&xmmword_2A1751758, (v93 + 24), &unk_29B4D6118, &v104)[3] = sub_29AF5330C;
  v94 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v94)
  {
    v94 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v94 + 480);
  sub_29AF53B1C(&xmmword_2A1751758, (v94 + 480), &unk_29B4D6118, &v104)[3] = sub_29AF53344;
  v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v95)
  {
    v95 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v95 + 40);
  sub_29AF53B1C(&xmmword_2A1751758, (v95 + 40), &unk_29B4D6118, &v104)[3] = sub_29AF5337C;
  v96 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v96)
  {
    v96 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v96 + 496);
  sub_29AF53B1C(&xmmword_2A1751758, (v96 + 496), &unk_29B4D6118, &v104)[3] = sub_29AF533B4;
  v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v97)
  {
    v97 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v97 + 224);
  sub_29AF53B1C(&xmmword_2A1751758, (v97 + 224), &unk_29B4D6118, &v104)[3] = sub_29AF52774;
  v98 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v98)
  {
    v98 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v98 + 680);
  sub_29AF53B1C(&xmmword_2A1751758, (v98 + 680), &unk_29B4D6118, &v104)[3] = sub_29AF527AC;
  v99 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v99)
  {
    v99 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v99 + 232);
  sub_29AF53B1C(&xmmword_2A1751758, (v99 + 232), &unk_29B4D6118, &v104)[3] = sub_29AF527E4;
  v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v100)
  {
    v100 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v100 + 688);
  sub_29AF53B1C(&xmmword_2A1751758, (v100 + 688), &unk_29B4D6118, &v104)[3] = sub_29AF5281C;
  v101 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v101)
  {
    v101 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v101 + 240);
  sub_29AF53B1C(&xmmword_2A1751758, (v101 + 240), &unk_29B4D6118, &v104)[3] = sub_29AF52854;
  v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v102)
  {
    v102 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  v104 = (v102 + 696);
  result = sub_29AF53B1C(&xmmword_2A1751758, (v102 + 696), &unk_29B4D6118, &v104);
  result[3] = sub_29AF5288C;
  return result;
}

void sub_29AF52680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void sub_29AF53478(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A1E30;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5358C(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF535C8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A1E30;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5361C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A1E30;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF53674(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047B38;
  sub_29A215A28(a2, v3);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }
}

BOOL sub_29AF53710(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF53954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF53980(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfAssetPath *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(a2);
  (*(**(a1 + 128) + 16))(*(a1 + 128), v3);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
}

void *sub_29AF53A10(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1E80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF53A68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF53A84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF53AAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF53ADC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1ED0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF53B1C(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, uint64_t a3, void **a4)
{
  Hash = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetHash(this);
  v9 = Hash;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = Hash;
      if (Hash >= v10)
      {
        v4 = Hash % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & Hash;
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
            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(v14 + 2, this))
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

  v14 = operator new(0x20uLL);
  *v14 = 0;
  v14[1] = v9;
  v14[2] = **a4;
  v14[3] = 0;
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
    *v14 = *v23;
LABEL_38:
    *v23 = v14;
    goto LABEL_39;
  }

  *v14 = *(a1 + 16);
  *(a1 + 16) = v14;
  *(v22 + 8 * v4) = a1 + 16;
  if (*v14)
  {
    v24 = *(*v14 + 8);
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
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v14;
}

void sub_29AF53DE8(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A1EF8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF53EC8(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF53EF4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A1EF8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF53F48(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A1EF8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF53FA0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = off_2A2047BF0;
  sub_29A18ECC8(a2, v3);
  sub_29A216064(v3);
}

void sub_29AF54014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A216064(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AF5402C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF54270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5429C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>();
}

void *sub_29AF54334(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1F48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5438C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF543A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF543D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF54400(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1F98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF544CC(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A1FC0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF545AC(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF545D8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A1FC0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5462C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A1FC0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF54684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A20443C3;
  *a2 = result;
  return result;
}

BOOL sub_29AF546DC(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF54920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF549CC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2010;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF54A24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF54A40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF54A68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF54A98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2060))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF54B64(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2088;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF54C44(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF54C70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2088;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF54CC4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2088;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF54D1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20474B8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

BOOL sub_29AF54DA8(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF54FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF55018(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void *sub_29AF550B0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A20D8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF55108(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF55124(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5514C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5517C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2128))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF55248(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2150;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF55328(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF55354(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2150;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF553A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2150;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF55400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &off_2A2042788 + 3;
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

BOOL sub_29AF55460(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF556A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5575C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A21A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF557B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF557D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF557F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF55828(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A21F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF558F4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2218;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF559D4(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF55A00(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2218;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF55A54(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2218;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF55AAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043478;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

BOOL sub_29AF55B38(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF55D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF55DA8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
}

void *sub_29AF55E40(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2268;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF55E98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF55EB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF55EDC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF55F0C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A22B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF55FD8(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A22E0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF560B8(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF560E4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A22E0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF56138(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A22E0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

_DWORD *sub_29AF56190@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  v7 = v6;
  a2[1] = &off_2A2042840 + 2;
  result = operator new(0x10uLL);
  *result = v3;
  result[1] = v5;
  result[2] = v7;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF56224(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF56468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5651C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2330;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF56574(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF56590(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF565B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF565E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2380))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF566B4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A23A8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF56794(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF567C0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A23A8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF56814(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A23A8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5686C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

BOOL sub_29AF568F8(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF56B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF56B68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void *sub_29AF56C00(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A23F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF56C58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF56C74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF56C9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF56CCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2448))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF56D98(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2470;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF56E78(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF56EA4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2470;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF56EF8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2470;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF56F50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  v7 = v6;
  a2[1] = &off_2A20428F8 + 2;
  result = operator new(0x20uLL);
  *result = v3;
  *(result + 1) = v5;
  *(result + 2) = v7;
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF56FE4(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF57228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF572DC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A24C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF57334(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF57350(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF57378(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF573A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2510))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF57474(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2538;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF57554(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF57580(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2538;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF575D4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2538;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5762C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043530;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

BOOL sub_29AF576B8(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF578FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF57928(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
}

void *sub_29AF579C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2588;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF57A18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF57A34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF57A5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF57A8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A25D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF57B58(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2600;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF57C38(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF57C64(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2600;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF57CB8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2600;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF57D10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *a2 = result;
  a2[1] = &off_2A20429B0 + 3;
  return result;
}

BOOL sub_29AF57D64(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF57FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF58054(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2650;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF580AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF580C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF580F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF58120(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A26A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF581EC(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A26C8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF582CC(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF582F8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A26C8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5834C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A26C8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF583A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20436A0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

BOOL sub_29AF58430(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF58674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF586A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
}

void *sub_29AF58738(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2718;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF58790(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF587AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF587D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF58804(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2768))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF588D0(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2790;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF589B0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF589DC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2790;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF58A30(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2790;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

_DWORD *sub_29AF58A88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a2[1] = &off_2A2042A68 + 2;
  result = operator new(0x14uLL);
  *result = v3;
  result[1] = v5;
  result[2] = v7;
  result[3] = v9;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF58B20(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF58D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF58E14(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A27E0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF58E6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF58E88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF58EB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF58EE0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2830))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF58FAC(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2858;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5908C(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF590B8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2858;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5910C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2858;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF59164(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20435E8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

BOOL sub_29AF591F0(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF59434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF59460(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
}

void *sub_29AF594F8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A28A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF59550(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5956C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF59594(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF595C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A28F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF59690(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2920;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF59770(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5979C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2920;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF597F0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2920;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF59848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a2[1] = &off_2A2042B20 + 2;
  result = operator new(0x28uLL);
  *result = v3;
  *(result + 1) = v5;
  *(result + 2) = v7;
  *(result + 3) = v9;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF598E0(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF59B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF59BD8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2970;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF59C30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF59C4C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF59C74(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF59CA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A29C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF59D70(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A29E8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF59E50(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF59E7C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A29E8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF59ED0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A29E8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF59F28(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043758;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

BOOL sub_29AF59FB4(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5A1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5A224(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
}

void *sub_29AF5A2BC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2A38;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5A314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5A330(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5A358(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5A388(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2A88))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5A454(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2AB0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5A534(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5A560(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2AB0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5A5B4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2AB0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5A60C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = v3;
}

BOOL sub_29AF5A664(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5A8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5A954(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2B00;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5A9AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5A9C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5A9F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5AA20(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2B50))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5AAEC(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2B78;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5ABCC(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5ABF8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2B78;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5AC4C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2B78;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5ACA4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20430E0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

BOOL sub_29AF5AD30(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5AF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5AFA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
}

void *sub_29AF5B038(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2BC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5B090(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5B0AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5B0D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5B104(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2C18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5B1D0(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2C40;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5B2B0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5B2DC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2C40;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5B330(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2C40;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF5B388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  a2[1] = &off_2A20426D0 + 2;
  result = operator new(0x18uLL);
  *result = v3;
  *(result + 1) = v5;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF5B40C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5B650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5B6FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2C90;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5B754(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5B770(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5B798(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5B7C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2CE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5B894(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2D08;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5B974(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5B9A0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2D08;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5B9F4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2D08;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5BA4C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043308;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

BOOL sub_29AF5BAD8(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5BD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5BD48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
}

void *sub_29AF5BDE0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2D58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5BE38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5BE54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5BE7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5BEAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2DA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5BF78(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2DD0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5C058(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5C084(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2DD0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5C0D8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2DD0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF5C130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &off_2A2044BA8 + 3;
  *a2 = result;
  return result;
}

BOOL sub_29AF5C188(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5C3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5C478(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2E20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5C4D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5C4EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5C514(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5C544(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2E70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5C610(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2E98;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5C6F0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5C71C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2E98;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5C770(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2E98;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5C7C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043028;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

BOOL sub_29AF5C854(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5CA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5CAC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>();
}

void *sub_29AF5CB5C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2EE8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5CBB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5CBD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5CBF8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5CC28(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A2F38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5CCF4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A2F60;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5CDD4(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5CE00(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2F60;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5CE54(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A2F60;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF5CEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &off_2A2042560 + 3;
  *a2 = result;
  return result;
}

BOOL sub_29AF5CF04(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5D148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5D1F4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A2FB0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5D24C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5D268(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5D290(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5D2C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3000))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5D38C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3028;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5D46C(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5D498(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3028;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5D4EC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3028;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5D544(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043250;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

BOOL sub_29AF5D5D0(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5D814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5D840(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
}

void *sub_29AF5D8D8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3078;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5D930(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5D94C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5D974(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5D9A4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A30C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5DA70(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A30F0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5DB50(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5DB7C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A30F0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5DBD0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A30F0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5DC28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = v3;
}

BOOL sub_29AF5DC80(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5DEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5DF70(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3140;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5DFC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5DFE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5E00C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5E03C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3190))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5E108(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A31B8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5E1E8(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5E214(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A31B8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5E268(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A31B8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5E2C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2042F70;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

BOOL sub_29AF5E34C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5E590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5E5BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void *sub_29AF5E654(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3208;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5E6AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5E6C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5E6F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5E720(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3258))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5E7EC(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3280;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5E8CC(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5E8F8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3280;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5E94C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3280;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5E9A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  *(a2 + 8) = &off_2A2042618 + 3;
  *a2 = v3;
  *(a2 + 4) = v4;
}

BOOL sub_29AF5E9FC(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5EC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5ECEC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A32D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5ED44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5ED60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5ED88(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5EDB8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3320))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5EE84(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3348;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5EF64(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5EF90(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3348;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5EFE4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3348;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5F03C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043198;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

BOOL sub_29AF5F0C8(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5F30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5F338(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
}

void *sub_29AF5F3D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3398;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5F428(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5F444(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5F46C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5F49C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A33E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5F568(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3410;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5F648(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5F674(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3410;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5F6C8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3410;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF5F720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A204475B;
  *a2 = result;
  return result;
}

BOOL sub_29AF5F778(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF5F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF5FA68(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3460;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF5FAC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF5FADC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF5FB04(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF5FB34(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A34B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF5FC00(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A34D8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF5FCE0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF5FD0C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A34D8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF5FD60(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A34D8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF5FDB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043D18;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

BOOL sub_29AF5FE44(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF60088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF600B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void *sub_29AF6014C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3528;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF601A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF601C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF601E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF60218(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3578))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF602E4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A35A0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF603C4(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF603F0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A35A0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF60444(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A35A0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF6049C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *a2 = result;
  a2[1] = &off_2A2047EE8 + 3;
  return result;
}

BOOL sub_29AF604F0(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF60734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF607E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A35F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF60838(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF60854(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6087C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF608AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3640))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF60978(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3668;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF60A58(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF60A84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3668;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF60AD8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3668;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF60B30(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047FA0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

BOOL sub_29AF60BBC(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF60E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF60E2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
}

void *sub_29AF60EC4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A36B8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF60F1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF60F38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF60F60(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF60F90(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3708))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6105C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3730;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6113C(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF61168(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3730;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF611BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3730;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

_DWORD *sub_29AF61214@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  a2[1] = &off_2A2048058 + 2;
  result = operator new(0x10uLL);
  *result = v3;
  result[2] = v5;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF6129C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF614E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF61594(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3780;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF615EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF61608(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF61630(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF61660(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A37D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6172C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A37F8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6180C(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF61838(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A37F8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6188C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A37F8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF618E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048110;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

BOOL sub_29AF61970(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF61BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF61BE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
}

void *sub_29AF61C78(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3848;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF61CD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF61CEC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF61D14(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF61D44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3898))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF61E10(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A38C0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF61EF0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF61F1C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A38C0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF61F70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A38C0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF61FC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  a2[1] = &off_2A20481C8 + 2;
  result = operator new(0x14uLL);
  *result = v3;
  *(result + 1) = v5;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF6204C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF62290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF6233C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3910;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF62394(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF623B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF623D8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF62408(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3960))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF624D4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3988;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF625B4(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF625E0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3988;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF62634(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3988;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF6268C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048280;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

BOOL sub_29AF62718(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6295C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF62988(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
}

void *sub_29AF62A20(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A39D8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF62A78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF62A94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF62ABC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF62AEC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3A28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF62BB8(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3A50;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF62C98(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF62CC4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3A50;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF62D18(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3A50;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF62D70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *a2 = result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

BOOL sub_29AF62DC4(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF63008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF630B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3AA0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6310C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF63128(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF63150(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF63180(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3AF0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6324C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3B18;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6332C(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF63358(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3B18;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF633AC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3B18;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF63404(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047630;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

BOOL sub_29AF63490(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF636D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF63700(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>();
}

void *sub_29AF63798(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3B68;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF637F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6380C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF63834(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF63864(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3BB8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF63930(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3BE0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF63A10(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF63A3C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3BE0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF63A90(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3BE0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF63AE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a2[1] = &off_2A2048338 + 2;
  result = operator new(0x28uLL);
  *result = v3;
  *(result + 1) = v5;
  *(result + 2) = v7;
  *(result + 3) = v9;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF63B80(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF63DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF63E78(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3C30;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF63ED0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF63EEC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF63F14(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF63F44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3C80))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF64010(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3CA8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF640F0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6411C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3CA8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF64170(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3CA8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF641C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20483F0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

BOOL sub_29AF64254(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF64498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF644C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>();
}

void *sub_29AF6455C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3CF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF645B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF645D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF645F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF64628(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3D48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF646F4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3D70;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF647D4(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF64800(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3D70;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF64854(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3D70;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF648AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v6);
  a2[1] = &off_2A20484A8 + 2;
  result = operator new(0x50uLL);
  v4 = v6[3];
  *(result + 2) = v6[2];
  *(result + 3) = v4;
  *(result + 8) = v7;
  v5 = v6[1];
  *result = v6[0];
  *(result + 1) = v5;
  atomic_store(0, result + 18);
  *a2 = result;
  atomic_fetch_add_explicit(result + 18, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF64948(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}