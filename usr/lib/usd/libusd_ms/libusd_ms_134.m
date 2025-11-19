pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!result)
  {
    return sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749C20))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749BE8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749BE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749C20);
  }

  return &unk_2A1749BE8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetEnabledLocator(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749C60, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749C60);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749BE8, (v3 + 8), dword_2A1749C28);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749C28, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749C60);
    }
  }

  return dword_2A1749C28;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetPriorityLocator(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749CA0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749CA0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749BE8, (v3 + 16), dword_2A1749C68);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749C68, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749CA0);
    }
  }

  return dword_2A1749C68;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetFilePathLocator(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749CE0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749CE0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749BE8, (v3 + 24), dword_2A1749CA8);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749CA8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749CE0);
    }
  }

  return dword_2A1749CA8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetConstantsLocator(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749D20, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749D20);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749BE8, (v3 + 32), dword_2A1749CE8);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749CE8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749D20);
    }
  }

  return dword_2A1749CE8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetMaterialNetworkLocator(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749D60, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749D60);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749BE8, (v3 + 40), dword_2A1749D28);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749D28, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749D60);
    }
  }

  return dword_2A1749D28;
}

void *sub_29AC33FB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2077550, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType::~HdInstanceCategoriesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType::HdInstanceCategoriesSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "instanceCategories", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "categoriesValues", 0);
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

void sub_29AC341C4(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::GetCategoriesValues(pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE628(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
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

  sub_29AC100E4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE628(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC343E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::Builder::SetCategoriesValues(void *a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens))
    {
      sub_29ABEE628(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
  if (!result)
  {
    return sub_29ABEE628(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749DA0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE628(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749D68, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749D68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749DA0);
  }

  return &unk_2A1749D68;
}

void pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType::~HdInstancedBySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType::HdInstancedBySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "instancedBy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "paths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "prototypeRoots", 0);
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

void sub_29AC34818(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPaths(pxrInternal__aapl__pxrReserved__::HdInstancedBySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
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

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC3494C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC34FD4(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPrototypeRoots(pxrInternal__aapl__pxrReserved__::HdInstancedBySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
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

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
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
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
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
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
    if (!v13)
    {
      v13 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
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

void sub_29AC34C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
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

void *pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::Builder::SetPaths(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::Builder::SetPrototypeRoots(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens))
    {
      sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdInstancedBySchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  if (!result)
  {
    return sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdInstancedBySchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749DE0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749DA8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749DA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749DE0);
  }

  return &unk_2A1749DA8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPathsLocator(pxrInternal__aapl__pxrReserved__::HdInstancedBySchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749E20, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749E20);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749DA8, (v3 + 8), dword_2A1749DE8);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749DE8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749E20);
    }
  }

  return dword_2A1749DE8;
}

void *sub_29AC34FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076AC0, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType::~HdInstanceIndicesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType::HdInstanceIndicesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "instancer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "prototypeIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "instanceIndices", 0);
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

void sub_29AC35230(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::GetInstancer(pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC35834(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
  }

  v6 = *v4;
  if ((*v4 & 7) != 0)
  {
    v5 = (*v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v5;
    }
  }

  sub_29ABE18CC(this, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::GetPrototypeIndex(pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC35834(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
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

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC35834(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
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

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v7 = &v30;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v8 = &v32;
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  if (*a1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
    if (!v10)
    {
      v10 = sub_29AC35834(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
    }

    v7 = v31;
    v8 = v33;
    sub_29A166F2C(&v32, v10);
    v12 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(&v30 + 1);
    *&v30 = v12;
    *(&v30 + 1) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (*a2)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
    if (!v15)
    {
      v15 = sub_29AC35834(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
    }

    sub_29A166F2C(v8, v15 + 1);
    ++v14;
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v7 + 1);
    *v7 = v17;
    *(v7 + 1) = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (*a3)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
    if (!v19)
    {
      v19 = sub_29AC35834(&pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens);
    }

    sub_29A166F2C(&v33[v14 - 1], v19 + 2);
    v20 = v14 + 1;
    v21 = &v31[v14 - 1];
    v23 = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v21[1];
    *v21 = v23;
    v21[1] = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  else
  {
    v20 = v14;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v20, &v32, &v30, &v29);
  *a4 = v29;
  for (i = 40; i != -8; i -= 16)
  {
    v26 = *(&v31[-1] + i);
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  for (j = 2; j != -1; --j)
  {
    v28 = v33[j - 1];
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC356F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = 40;
  while (1)
  {
    v19 = *(&a11 + v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v18 -= 16;
    if (v18 == -8)
    {
      v20 = 16;
      while (1)
      {
        v21 = *(&a17 + v20);
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 -= 8;
        if (v20 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::Builder::SetInstancer(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::Builder::SetPrototypeIndex(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::Builder::SetInstanceIndices(uint64_t a1, uint64_t *a2)
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

pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType *sub_29AC35834(atomic_ullong *a1)
{
  result = sub_29AC3587C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType::~HdInstanceIndicesSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType *sub_29AC3587C()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchemaTokens_StaticTokenType::HdInstanceIndicesSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdInstancer *pxrInternal__aapl__pxrReserved__::HdInstancer::HdInstancer(pxrInternal__aapl__pxrReserved__::HdInstancer *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  *this = &unk_2A207BEF8;
  *(this + 1) = a2;
  sub_29A1E21F4(this + 4, a3);
  sub_29A1E2240(this + 5, a3 + 1);
  *(this + 3) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 7);
  *(this + 4) = 850045863;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdInstancer::~HdInstancer(pxrInternal__aapl__pxrReserved__::HdInstancer *this)
{
  *this = &unk_2A207BEF8;
  v2 = (this + 28);
  std::mutex::~mutex((this + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(this + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 5);
  sub_29A1DE3A4(this + 4);
}

{
  pxrInternal__aapl__pxrReserved__::HdInstancer::~HdInstancer(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdInstancer::GetInstancerNumLevels(pxrInternal__aapl__pxrReserved__::HdInstancer *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::HdRprim *a3)
{
  sub_29A1E21F4(&v12, a2 + 2);
  sub_29A1E2240(&v13, a2 + 3);
  v5 = 0;
  while (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
  {
    Instancer = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(this, &v12);
    if (Instancer)
    {
      v7 = (Instancer + 24);
    }

    else
    {
      v10[0] = "hd/instancer.cpp";
      v10[1] = "GetInstancerNumLevels";
      v10[2] = 39;
      v10[3] = "static int pxrInternal__aapl__pxrReserved__::HdInstancer::GetInstancerNumLevels(HdRenderIndex &, const HdRprim &)";
      v11 = 0;
      v8 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instancer", 0);
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v8);
    }

    sub_29A2258F0(&v12, v7);
    sub_29A225948(&v13, v7 + 1);
    v5 = (v5 + 1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  return v5;
}

void sub_29AC35B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdInstancer::GetBuiltinPrimvarNames(pxrInternal__aapl__pxrReserved__::HdInstancer *this)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1749E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749E40))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v2)
    {
      v2 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    v3 = *(v2 + 6);
    v12 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v4)
    {
      v4 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    v5 = *(v4 + 7);
    v13 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v6)
    {
      v6 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    v7 = *(v6 + 8);
    v14 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v8)
    {
      v8 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    v9 = *(v8 + 9);
    v15 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1749E28 = 0;
    unk_2A1749E30 = 0;
    qword_2A1749E38 = 0;
    sub_29A12EF7C(&qword_2A1749E28, &v12, &v16, 4uLL);
    for (i = 24; i != -8; i -= 8)
    {
      v11 = *(&v12 + i);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1749E28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749E40);
  }

  return &qword_2A1749E28;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdInstancer::_SyncInstancerAndParents(pxrInternal__aapl__pxrReserved__::HdInstancer *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(this);
  v6 = (*(*RenderDelegate + 48))(RenderDelegate);
  sub_29A1E21F4(&v11, a2);
  sub_29A1E2240(&v12, a2 + 1);
  while (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v11))
  {
    Instancer = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(this, &v11);
    if (!Instancer)
    {
      v9[0] = "hd/instancer.cpp";
      v9[1] = "_SyncInstancerAndParents";
      v9[2] = 81;
      v9[3] = "static void pxrInternal__aapl__pxrReserved__::HdInstancer::_SyncInstancerAndParents(HdRenderIndex &, const SdfPath &)";
      v10 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "instancer", 0) & 1) == 0)
      {
        break;
      }
    }

    std::mutex::lock((Instancer + 32));
    LODWORD(v9[0]) = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetInstancerDirtyBits((this + 440), &v11);
    if (LODWORD(v9[0]))
    {
      (*(*Instancer + 16))(Instancer, *(Instancer + 8), v6, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkInstancerClean((this + 440), &v11, 0);
    }

    sub_29A2258F0(&v11, (Instancer + 24));
    sub_29A225948(&v12, (Instancer + 28));
    std::mutex::unlock((Instancer + 32));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  return sub_29A1DE3A4(&v11);
}

void sub_29AC35F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdInstancer::_UpdateInstancer(pxrInternal__aapl__pxrReserved__::HdInstancer *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsInstancerDirty(*a3, (this + 16), a3);
  if (result)
  {
    (*(*a2 + 264))(&v7, a2, this + 16);
    if (v7 != *(this + 3))
    {
      v6 = *(a2 + 1);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 6))
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveInstancerInstancerDependency((v6 + 440), (this + 24), (this + 16));
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v7))
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::AddInstancerInstancerDependency((v6 + 440), &v7, (this + 16));
      }

      sub_29A2258F0(this + 6, &v7);
      sub_29A225948(this + 7, &v7 + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7 + 1);
    return sub_29A1DE3A4(&v7);
  }

  return result;
}

void sub_29AC36084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType::~HdInstancerTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType::HdInstancerTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "instancerTopology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "prototypes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "instanceIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "mask", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "instanceLocations", 0);
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

void sub_29AC3631C(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::ComputeInstanceIndicesForProto(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetInstanceIndices(this, &v29);
  if (pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v29))
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetPrototypes(this, v21);
    if (*&v21[0])
    {
      (*(**&v21[0] + 32))(&v23, 0.0);
      sub_29ABED558(&v26);
      v26 = v23;
      v27 = v24;
      v23 = 0u;
      v24 = 0u;
      v28 = v25;
      v25 = 0;
      sub_29ABED558(&v23);
    }

    if (*(&v21[0] + 1))
    {
      sub_29A014BEC(*(&v21[0] + 1));
    }

    if (v26)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (v28 + v6)))
        {
          LODWORD(v23) = v7;
          sub_29A7ACA64(v31, &v23);
        }

        ++v7;
        v6 += 8;
      }

      while (v7 < v26);
    }

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetMask(this, &v17);
    if (v17)
    {
      (*(*v17 + 32))(v21, 0.0);
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }

    sub_29A19DBEC(v31);
    v8 = v32;
    sub_29A19DBEC(v31);
    if (v8 != v32 + 4 * *&v31[0])
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_29AC3721C(&v29, &v19);
      if (v19)
      {
        (*(*v19 + 32))(&v17, 0.0);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if (v23)
      {
        sub_29A19DBEC(v21);
        v9 = v22;
        sub_29A19DBEC(v21);
        v10 = &v22[*&v21[0]];
        while (v9 != v10)
        {
          v11 = *v9;
          LODWORD(v17) = v11;
          if (v11 >= v23 || (sub_29A20D1F0(&v23), *(v25 + v11) == 1))
          {
            sub_29A7ACEC4(a3, &v17);
          }

          ++v9;
        }
      }

      else
      {
        v12 = *a3;
        if (*a3)
        {
          v13 = *&v21[0];
          sub_29A19DBEC(a3);
          LODWORD(v19) = 0;
          v17 = &v19;
          sub_29A19D7EC(a3, v13 + v12, &v17);
          if (v13)
          {
            v14 = 0;
            v15 = 4 * v12;
            do
            {
              sub_29A19DBEC(v21);
              v16 = v22[v14];
              sub_29A19DBEC(a3);
              *(*(a3 + 32) + v15 + 4 * v14++) = v16;
            }

            while (v13 != v14);
          }
        }

        else
        {
          sub_29A27CF04(a3, v21);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  if (v30)
  {
    sub_29A014BEC(v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v5 = *(v4 + 2);
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

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetPrototypes(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetMask(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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

  sub_29AC36AE0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC36AE0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC37294(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetInstanceLocations(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v12)
    {
      v12 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v21)
    {
      v21 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v27)
    {
      v27 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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

void sub_29AC36EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
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

void *pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::SetPrototypes(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::SetInstanceIndices(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::SetMask(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::SetInstanceLocations(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens))
    {
      sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!result)
  {
    return sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749E80))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749E48, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749E48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749E80);
  }

  return &unk_2A1749E48;
}

void sub_29AC3721C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABC559C(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void *sub_29AC37294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207BF30, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType::~HdInstanceSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType *this)
{
  v5 = (this + 32);
  sub_29A124AB0(&v5);
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType::HdInstanceSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "instance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "instancer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "prototypeIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "instanceIndex", 0);
  v3 = (this + 32);
  v4 = *this;
  v15 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v5;
    }
  }

  v6 = *(this + 1);
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v8 = *(this + 2);
  v17 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v9;
    }
  }

  v10 = *(this + 3);
  v18 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v11;
    }
  }

  *v3 = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  sub_29A12EF7C(v3, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v15 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC37540(_Unwind_Exception *a1)
{
  v3 = 24;
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
      v5 = v1[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

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

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetInstancer(pxrInternal__aapl__pxrReserved__::HdInstanceSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetPrototypeIndex(pxrInternal__aapl__pxrReserved__::HdInstanceSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
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

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetInstanceIndex(pxrInternal__aapl__pxrReserved__::HdInstanceSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
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

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstanceSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v7 = &v30;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v8 = &v32;
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  if (*a1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    if (!v10)
    {
      v10 = sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    }

    v7 = v31;
    v8 = v33;
    sub_29A166F2C(&v32, v10 + 1);
    v12 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(&v30 + 1);
    *&v30 = v12;
    *(&v30 + 1) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (*a2)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    if (!v15)
    {
      v15 = sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    }

    sub_29A166F2C(v8, v15 + 2);
    ++v14;
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v7 + 1);
    *v7 = v17;
    *(v7 + 1) = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (*a3)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    if (!v19)
    {
      v19 = sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    }

    sub_29A166F2C(&v33[v14 - 1], v19 + 3);
    v20 = v14 + 1;
    v21 = &v31[v14 - 1];
    v23 = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v21[1];
    *v21 = v23;
    v21[1] = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  else
  {
    v20 = v14;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v20, &v32, &v30, &v29);
  *a4 = v29;
  for (i = 40; i != -8; i -= 16)
  {
    v26 = *(&v31[-1] + i);
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  for (j = 2; j != -1; --j)
  {
    v28 = v33[j - 1];
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC37A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = 40;
  while (1)
  {
    v19 = *(&a11 + v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v18 -= 16;
    if (v18 == -8)
    {
      v20 = 16;
      while (1)
      {
        v21 = *(&a17 + v20);
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 -= 8;
        if (v20 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetInstancer(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetPrototypeIndex(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetInstanceIndex(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens))
    {
      sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdInstanceSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
  if (!result)
  {
    return sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdInstanceSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749EC0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC37D50(&pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749E88, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749E88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749EC0);
  }

  return &unk_2A1749E88;
}

pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType *sub_29AC37D50(atomic_ullong *a1)
{
  result = sub_29AC37D98();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType::~HdInstanceSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType *sub_29AC37D98()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::HdInstanceSchemaTokens_StaticTokenType::HdInstanceSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType::~HdIntegratorSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType::HdIntegratorSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "integrator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "resource", 0);
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

void sub_29AC37F58(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetResource(pxrInternal__aapl__pxrReserved__::HdIntegratorSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
  }

  v5 = *(v4 + 1);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC381B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::Builder::SetResource(void *a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens))
    {
      sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdIntegratorSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
  if (!result)
  {
    return sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdIntegratorSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749F00))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749EC8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749EC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749F00);
  }

  return &unk_2A1749EC8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetResourceLocator(pxrInternal__aapl__pxrReserved__::HdIntegratorSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749F40, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749F40);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749EC8, (v3 + 8), dword_2A1749F08);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749F08, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749F40);
    }
  }

  return dword_2A1749F08;
}

void *pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::HdLazyContainerDataSource(void *a1, uint64_t a2)
{
  *a1 = &unk_2A207BF58;
  sub_29AC387AC((a1 + 1), a2);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::~HdLazyContainerDataSource(pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource *this)
{
  *this = &unk_2A207BF58;
  v2 = *(this + 6);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29AC38844(this + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::~HdLazyContainerDataSource(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::GetNames(pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::_GetSrc(this, &v4);
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

void sub_29AC3865C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::_GetSrc(pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29ABEC66C(this + 5, a2);
  if (!*a2)
  {
    v4 = a2[1];
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    v5 = *(this + 4);
    if (!v5)
    {
      sub_29A0DDCB0();
    }

    (*(*v5 + 48))(v5);
    sub_29ABE60F4(this + 5, a2);
  }
}

void sub_29AC386F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::Get(pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::_GetSrc(this, &v6);
  v5 = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6, a2);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (!v5)
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_29AC38794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC387AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29AC38844(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType::~HdLegacyDisplayStyleSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType *this)
{
  v11 = (this + 80);
  sub_29A124AB0(&v11);
  v2 = *(this + 9);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 7);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 5);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 4);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 3);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 2);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 1);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType::HdLegacyDisplayStyleSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "displayStyle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "refineLevel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "flatShadingEnabled", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "displacementEnabled", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "occludedSelectionShowsThrough", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "pointsShadingEnabled", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "materialIsFinal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "shadingStyle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "reprSelector", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "cullStyle", 0);
  v3 = (this + 80);
  v4 = *this;
  v27 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v5;
    }
  }

  v6 = *(this + 1);
  v28 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v7;
    }
  }

  v8 = *(this + 2);
  v29 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v9;
    }
  }

  v10 = *(this + 3);
  v30 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v11;
    }
  }

  v12 = *(this + 4);
  v31 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v13;
    }
  }

  v14 = *(this + 5);
  v32 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v15;
    }
  }

  v16 = *(this + 6);
  v33 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v17;
    }
  }

  v18 = *(this + 7);
  v34 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 = v19;
    }
  }

  v20 = *(this + 8);
  v35 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 = v21;
    }
  }

  v22 = *(this + 9);
  v36 = v22;
  if ((v22 & 7) != 0)
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 = v23;
    }
  }

  *v3 = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  sub_29A12EF7C(v3, &v27, &v37, 0xAuLL);
  for (i = 72; i != -8; i -= 8)
  {
    v25 = *(&v27 + i);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC38CC0(_Unwind_Exception *a1)
{
  v3 = 72;
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
      v5 = v1[9];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[8];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[7];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[6];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[5];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[4];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[3];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[2];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[1];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetRefineLevel(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFlatShadingEnabled(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDisplacementEnabled(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetOccludedSelectionShowsThrough(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetPointsShadingEnabled(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetMaterialIsFinal(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetShadingStyle(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetReprSelector(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

void sub_29AC393A4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC3A620(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetCullStyle(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10)
{
  v81 = *MEMORY[0x29EDCA608];
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v16 = &v77;
  memset(v78, 0, sizeof(v78));
  v77 = 0u;
  v17 = v79;
  if (*a1)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    v16 = v78;
    v17 = v79 + 1;
    sub_29A166F2C(v79, v19 + 1);
    v21 = *a1;
    v20 = a1[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(&v77 + 1);
    *&v77 = v21;
    *(&v77 + 1) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  if (*a2)
  {
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v24)
    {
      v24 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v17, v24 + 2);
    ++v23;
    v26 = *a2;
    v25 = a2[1];
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *(v16 + 1);
    *v16 = v26;
    *(v16 + 1) = v25;
    if (v27)
    {
      sub_29A014BEC(v27);
    }
  }

  if (*a3)
  {
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v28)
    {
      v28 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v79 + v23, v28 + 3);
    v29 = v23 + 1;
    v30 = &v78[v23 - 1];
    v32 = *a3;
    v31 = a3[1];
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = v30[1];
    *v30 = v32;
    v30[1] = v31;
    if (v33)
    {
      sub_29A014BEC(v33);
    }
  }

  else
  {
    v29 = v23;
  }

  if (*a4)
  {
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v34)
    {
      v34 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v79 + v29, v34 + 4);
    v35 = v29 + 1;
    v36 = &v78[v29 - 1];
    v38 = *a4;
    v37 = a4[1];
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    v39 = v36[1];
    *v36 = v38;
    v36[1] = v37;
    if (v39)
    {
      sub_29A014BEC(v39);
    }
  }

  else
  {
    v35 = v29;
  }

  if (*a5)
  {
    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v40)
    {
      v40 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v79 + v35, v40 + 5);
    v41 = v35 + 1;
    v42 = &v78[v35 - 1];
    v44 = *a5;
    v43 = a5[1];
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = v42[1];
    *v42 = v44;
    v42[1] = v43;
    if (v45)
    {
      sub_29A014BEC(v45);
    }
  }

  else
  {
    v41 = v35;
  }

  if (*a6)
  {
    v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v46)
    {
      v46 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v79 + v41, v46 + 6);
    v47 = v41 + 1;
    v48 = &v78[v41 - 1];
    v50 = *a6;
    v49 = a6[1];
    if (v49)
    {
      atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
    }

    v51 = v48[1];
    *v48 = v50;
    v48[1] = v49;
    if (v51)
    {
      sub_29A014BEC(v51);
    }
  }

  else
  {
    v47 = v41;
  }

  if (*a7)
  {
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v52)
    {
      v52 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v79 + v47, v52 + 7);
    v53 = v47 + 1;
    v54 = &v78[v47 - 1];
    v56 = *a7;
    v55 = a7[1];
    if (v55)
    {
      atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
    }

    v57 = v54[1];
    *v54 = v56;
    v54[1] = v55;
    if (v57)
    {
      sub_29A014BEC(v57);
    }
  }

  else
  {
    v53 = v47;
  }

  if (*a8)
  {
    v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v58)
    {
      v58 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v79 + v53, v58 + 8);
    v59 = v53 + 1;
    v60 = &v78[v53 - 1];
    v62 = *a8;
    v61 = a8[1];
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v63 = v60[1];
    *v60 = v62;
    v60[1] = v61;
    if (v63)
    {
      sub_29A014BEC(v63);
    }
  }

  else
  {
    v59 = v53;
  }

  if (*a10)
  {
    v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v64)
    {
      v64 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A166F2C(v79 + v59, v64 + 9);
    v65 = v59 + 1;
    v66 = &v78[v59 - 1];
    v68 = *a10;
    v67 = a10[1];
    if (v67)
    {
      atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
    }

    v69 = v66[1];
    *v66 = v68;
    v66[1] = v67;
    if (v69)
    {
      sub_29A014BEC(v69);
    }
  }

  else
  {
    v65 = v59;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v65, v79, &v77, &v76);
  *a9 = v76;
  for (i = 136; i != -8; i -= 16)
  {
    v71 = *(&v78[-1] + i);
    if (v71)
    {
      sub_29A014BEC(v71);
    }
  }

  for (j = 64; j != -8; j -= 8)
  {
    v73 = *(v79 + j);
    if ((v73 & 7) != 0)
    {
      atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC399BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v32 = 136;
  while (1)
  {
    v33 = *(&a13 + v32);
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    v32 -= 16;
    if (v32 == -8)
    {
      v34 = 64;
      while (1)
      {
        v35 = *(&a31 + v34);
        if ((v35 & 7) != 0)
        {
          atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v34 -= 8;
        if (v34 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetRefineLevel(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetFlatShadingEnabled(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetDisplacementEnabled(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetOccludedSelectionShowsThrough(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetPointsShadingEnabled(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetMaterialIsFinal(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetShadingStyle(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetReprSelector(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetCullStyle(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens))
    {
      sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!result)
  {
    return sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749F80))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749F48, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749F48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749F80);
  }

  return &unk_2A1749F48;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetRefineLevelLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749FC0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749FC0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 8), dword_2A1749F88);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749F88, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749FC0);
    }
  }

  return dword_2A1749F88;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetFlatShadingEnabledLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A000, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A000);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 16), dword_2A1749FC8);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749FC8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A000);
    }
  }

  return dword_2A1749FC8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDisplacementEnabledLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A040, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A040);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 24), dword_2A174A008);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A008, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A040);
    }
  }

  return dword_2A174A008;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetOccludedSelectionShowsThroughLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A080, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A080);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 32), dword_2A174A048);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A048, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A080);
    }
  }

  return dword_2A174A048;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetPointsShadingEnabledLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A0C0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A0C0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 40), dword_2A174A088);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A088, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A0C0);
    }
  }

  return dword_2A174A088;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetMaterialIsFinalLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A100, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A100);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 48), dword_2A174A0C8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A0C8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A100);
    }
  }

  return dword_2A174A0C8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetShadingStyleLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A140, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A140);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 56), dword_2A174A108);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A108, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A140);
    }
  }

  return dword_2A174A108;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetReprSelectorLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A180, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A180);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 64), dword_2A174A148);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A148, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A180);
    }
  }

  return dword_2A174A148;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetCullStyleLocator(pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A1C0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A1C0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1749F48, (v3 + 72), dword_2A174A188);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A188, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A1C0);
    }
  }

  return dword_2A174A188;
}

void *sub_29AC3A620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2077630, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::HdLegacyGeomSubsetSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::~HdLegacyGeomSubsetSceneIndex(pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex *this)
{
  *this = &unk_2A207BFA0;
  sub_29A6551B8(this + 144, *(this + 19));
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), v2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::~HdLegacyGeomSubsetSceneIndex(this);
}

void pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(&v25);
  if (!v26)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v23);
    if ((this + 152) != sub_29A55CDFC(this + 144))
    {
      v7 = sub_29AC1199C(this + 14);
      (*(*v7 + 16))(&v20);
      v8 = sub_29AC3AC94(&v21);
      if (v8)
      {
        v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v9)
        {
          v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        v10 = *(v9 + 6);
        *a3 = v10;
        if ((v10 & 7) != 0)
        {
          v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
          {
            *a3 = v11;
          }
        }

        v12 = operator new(0x68uLL);
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v13)
        {
          v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::HdDataSourceLegacyPrim(v12, a2, (v13 + 48), v8);
        *v12 = &unk_2A207C018;
        sub_29A1E21F4(v12 + 22, &v23);
        sub_29A1E2240(v12 + 23, &v24);
        v15 = v20;
        *(v12 + 12) = v20;
        if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(v12 + 12) &= 0xFFFFFFFFFFFFFFF8;
        }

        if (!pxrInternal__aapl__pxrReserved__::HdPrimTypeSupportsGeomSubsets((v12 + 24), v14))
        {
          v28[0] = "hd/legacyGeomSubsetSceneIndex.cpp";
          v28[1] = "_HdDataSourceLegacyGeomSubset";
          v28[2] = 141;
          v28[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_HdDataSourceLegacyGeomSubset::_HdDataSourceLegacyGeomSubset(const SdfPath &, const SdfPath &, const TfToken &, HdSceneDelegate *)";
          v29 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v28, "HdPrimTypeSupportsGeomSubsets(_parentType)", 0);
        }

        v16 = operator new(0x20uLL);
        *v16 = &unk_2A207C060;
        *(v16 + 1) = 0;
        *(v16 + 2) = 0;
        *(v16 + 3) = v12;
        a3[1] = v12;
        a3[2] = v16;
        if (v22)
        {
          sub_29A014BEC(v22);
        }

        if ((v20 & 7) != 0)
        {
          atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
        sub_29A1DE3A4(&v23);
        goto LABEL_31;
      }

      if (v22)
      {
        sub_29A014BEC(v22);
      }

      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
    sub_29A1DE3A4(&v23);
  }

  v17 = v25;
  *a3 = v25;
  if ((v17 & 7) != 0)
  {
    v18 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v18;
    }
  }

  v19 = v27;
  a3[1] = v26;
  a3[2] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_31:
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC3AB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if ((*v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(v16 + 22);
  sub_29AC3C4B0(v16);
  operator delete(v16);
  if ((*v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC3AC94(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens))
  {
    sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  }

  (*(*v2 + 24))(&v6, v2);
  sub_29AC3C124(&v6, &v8);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v4 = v8;
  if (v8)
  {
    v1 = (*(*v8 + 32))(v8, 0.0);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (!v4)
  {
    return 0;
  }

  return v1;
}

void sub_29AC3AD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

int *pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::GetChildPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 24))(v6, a2);
  result = sub_29A55CDFC(this + 144);
  if ((this + 152) != result)
  {
    return sub_29A23DE4C(a3, a3[1], *(result + 5), *(result + 6), (*(result + 6) - *(result + 5)) >> 3);
  }

  return result;
}

void sub_29AC3AE30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::_PrimsAdded(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, void **a3)
{
  v3 = a3;
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0x1000000000;
  if (*(a3 + 65) >= 0x11u)
  {
    v5 = *a3;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a3 + 64);
  if (v6)
  {
    v7 = &v5[16 * v6];
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdPrimTypeSupportsGeomSubsets((v5 + 8), a2))
      {
        v8 = sub_29AC1199C(a1 + 14);
        (*(*v8 + 16))(v14);
        pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::_ListDelegateSubsets(v5, v14, v13);
        if (v13[0] != v13[1])
        {
          sub_29AC3C1B4(&v12, v5);
        }

        v12 = v13;
        sub_29A1E234C(&v12);
        if (v15)
        {
          sub_29A014BEC(v15);
        }

        if ((v14[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v14[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v5 += 16;
    }

    while (v5 != v7);
    if (v17)
    {
      if (HIDWORD(v17) >= 0x11)
      {
        v9 = v16[0];
      }

      else
      {
        v9 = v16;
      }

      if (*(v3 + 65) >= 0x11u)
      {
        v10 = *v3;
      }

      else
      {
        v10 = v3;
      }

      sub_29AC3B510(v16, v9, v10, v10 + 16 * *(v3 + 64));
      v3 = v16;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v3);
  return sub_29AC263E4(v16);
}

void sub_29AC3B094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *a20)
{
  a9 = &a13;
  sub_29A1E234C(&a9);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AC263E4(&a20);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::_ListDelegateSubsets(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a2 + 1;
  if (a2[1])
  {
    if (pxrInternal__aapl__pxrReserved__::HdPrimTypeSupportsGeomSubsets(a2, a2))
    {
      v7 = sub_29AC3AC94(v4);
      if (v7)
      {
        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v8)
        {
          v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        if ((*(v8 + 10) ^ *a2) > 7)
        {
          v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v11)
          {
            v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v11 + 7) ^ *a2) <= 7)
          {
            (*(*v7 + 40))(v17, v7, a1);
            v12 = v18;
            for (i = v19; v12 != i; v12 += 64)
            {
              NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v12 + 4));
              pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, NameToken, &v22);
              sub_29A377BD0(a3, &v22);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
              sub_29A1DE3A4(&v22);
            }

            if (v21)
            {
              v15 = atomic_load(&qword_2A174A568);
              if (!v15)
              {
                v15 = sub_29AC3C298();
              }

              pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, (v15 + 16), &v22);
              sub_29A377BD0(a3, &v22);
              sub_29A1DCEA8(&v22);
            }

            if (v20)
            {
              v16 = atomic_load(&qword_2A174A568);
              if (!v16)
              {
                v16 = sub_29AC3C298();
              }

              pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, v16, &v22);
              sub_29A377BD0(a3, &v22);
              sub_29A1DCEA8(&v22);
            }

            pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v17);
          }
        }

        else
        {
          (*(*v7 + 48))(v17, v7, a1);
          if (v17[19])
          {
            v9 = atomic_load(&qword_2A174A568);
            if (!v9)
            {
              v9 = sub_29AC3C298();
            }

            pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, (v9 + 8), &v22);
            sub_29A377BD0(a3, &v22);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
            sub_29A1DE3A4(&v22);
          }

          if (v17[14])
          {
            v10 = atomic_load(&qword_2A174A568);
            if (!v10)
            {
              v10 = sub_29AC3C298();
            }

            pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, v10, &v22);
            sub_29A377BD0(a3, &v22);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
            sub_29A1DE3A4(&v22);
          }

          pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v17);
        }
      }
    }
  }
}

void sub_29AC3B3E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8((v3 - 56));
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(va);
  *(v3 - 56) = v2;
  sub_29A1E234C((v3 - 56));
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC3B46C(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A1E234C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29AC3B4B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29AC3B510(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = a1[65];
  v9 = a1;
  if (v8 >= 0x11)
  {
    v9 = *a1;
  }

  v10 = a1[64];
  v11 = &v9[4 * v10];
  v12 = a4 - a3;
  v13 = v10 + ((a4 - a3) >> 4);
  v14 = v8 + (v8 >> 1);
  if (v14 + 1 > v13)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v10 + ((a4 - a3) >> 4);
  }

  if (v11 == a2)
  {
    if (v13 > v8)
    {
      sub_29AC3D6F0(a1, v15);
      LODWORD(v8) = a1[65];
    }

    v19 = a1;
    if (v8 >= 0x11)
    {
      v19 = *a1;
    }

    v20 = &v19[4 * a1[64]];
    goto LABEL_25;
  }

  if (v13 <= v8)
  {
    v21 = v12 >> 4;
    v22 = a1;
    if (v8 >= 0x11)
    {
      v22 = *a1;
    }

    v23 = &v22[4 * v10];
    v24 = (v23 - v6) >> 4;
    if (v24 >= v21)
    {
      v25 = v12 >> 4;
    }

    else
    {
      v25 = (v23 - v6) >> 4;
    }

    v26 = v23 + 16 * (v21 - v25);
    v27 = v6 + 16 * (v24 - v25);
    sub_29AC3D770(v27, v23, v26);
    sub_29AC3D888(&v31, v6, v27, v26);
    if (v25 >= 1)
    {
      do
      {
        sub_29A2258F0(v6, v5);
        sub_29A225948((v6 + 4), (v5 + 4));
        sub_29A166F2C((v6 + 8), (v5 + 8));
        v5 += 16;
        v6 += 16;
        --v25;
      }

      while (v25);
    }

    v28 = a1;
    if (a1[65] >= 0x11u)
    {
      v28 = *a1;
    }

    v20 = &v28[4 * a1[64]];
LABEL_25:
    sub_29AC3D7EC(v5, a4, v20);
    goto LABEL_32;
  }

  if (v8 > 0x10)
  {
    v29 = a2 - *a1;
    v16 = malloc(16 * v15);
    v17 = v16 + v29;
    v18 = *a1;
  }

  else
  {
    v16 = malloc(16 * v15);
    v17 = v16 + v6 - a1;
    v18 = a1;
  }

  sub_29AC3D770(v18, v6, v16);
  sub_29AC3D7EC(v5, a4, v17);
  v30 = a1;
  if (a1[65] >= 0x11u)
  {
    v30 = *a1;
  }

  sub_29AC3D770(v6, &v30[4 * a1[64]], v17 + v12);
  sub_29AC26424(a1);
  if (a1[65] >= 0x11u)
  {
    free(*a1);
  }

  *a1 = v16;
  a1[65] = v15;
LABEL_32:
  a1[64] += v12 >> 4;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::_PrimsRemoved(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v4 = *a3;
  }

  else
  {
    v4 = a3;
  }

  if (v3)
  {
    v5 = v4 + 8 * v3;
    do
    {
      if (a1[19])
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
}

void **pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v21 = v3;
  v34 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174A390, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_2A174A390);
    if (v12)
    {
      v13 = v5;
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetDefaultLocator(v12);
      v15 = sub_29ABD30AC(v27, DefaultLocator);
      v16 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetDefaultLocator(v15);
      sub_29ABD30AC(v28, v16);
      v25 = v27;
      v26 = 2;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A174A1C8, &v25);
      for (i = 7; i != -7; i -= 7)
      {
        sub_29ABC3488(&v27[i]);
      }

      __cxa_atexit(sub_29ABE62AC, &unk_2A174A1C8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A390);
      v5 = v13;
    }
  }

  if ((atomic_load_explicit(&qword_2A174A560, memory_order_acquire) & 1) == 0)
  {
    v18 = __cxa_guard_acquire(&qword_2A174A560);
    if (v18)
    {
      v19 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v18);
      sub_29ABD30AC(v27, v19);
      v25 = v27;
      v26 = 1;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A174A398, &v25);
      sub_29ABC3488(v27);
      __cxa_atexit(sub_29ABE62AC, &unk_2A174A398, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A560);
    }
  }

  v33 = 0x1000000000;
  v31 = 0x1000000000;
  v29 = 0x1000000000;
  if (*(v5 + 1857) >= 0x11u)
  {
    v6 = *v5;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(v5 + 1856);
  if (v7)
  {
    v20 = &v6[58 * v7];
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v6 + 1), &unk_2A174A1C8))
      {
        v8 = sub_29AC1199C(v21 + 14);
        (*(*v8 + 16))(v23);
        pxrInternal__aapl__pxrReserved__::HdLegacyGeomSubsetSceneIndex::_ListDelegateSubsets(v6, v23, v22);
        if (v21 + 19 != sub_29A55CDFC((v21 + 18)))
        {
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
        }

        if (v22[0] != v22[1])
        {
          sub_29AC3C1B4(&v25, v6);
        }

        v25 = v22;
        sub_29A1E234C(&v25);
        if (v24)
        {
          sub_29A014BEC(v24);
        }

        if ((v23[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v23[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v6 += 58;
    }

    while (v6 != v20);
    if (v31)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v21, v30);
    }
  }

  if (v29)
  {
    if (HIDWORD(v29) >= 0x11)
    {
      v9 = v27[0];
    }

    else
    {
      v9 = v27;
    }

    if (*(v5 + 1857) >= 0x11u)
    {
      v10 = *v5;
    }

    else
    {
      v10 = v5;
    }

    sub_29AC12278(v27, v9, v10, &v10[116 * *(v5 + 1856)]);
    v5 = v27;
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v21, v5);
  if (v33)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v21, v32);
  }

  sub_29ABD3844(v27);
  sub_29AC26348(v30);
  return sub_29AC263E4(v32);
}

void sub_29AC3BF30(_Unwind_Exception *a1)
{
  sub_29ABC3488(&STACK[0x288]);
  __cxa_guard_abort(&qword_2A174A560);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC3C0E4(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void *sub_29AC3C124@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20789A0, 0)) != 0)
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

void sub_29AC3C1B4(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

uint64_t sub_29AC3C228(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

unint64_t sub_29AC3C298()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "__invisiblePoints", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "__invisibleCurves", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "__invisibleFaces", 0);
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
  atomic_compare_exchange_strong(&qword_2A174A568, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A174A568);
  }

  return v0;
}

void sub_29AC3C414(_Unwind_Exception *a1)
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

void sub_29AC3C4B0(uint64_t a1)
{
  *a1 = &unk_2A2076A50;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC3C550(uint64_t a1)
{
  *a1 = &unk_2A207C018;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  *a1 = &unk_2A2076A50;
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(a1 + 16);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC3C638(uint64_t a1)
{
  sub_29AC3C550(a1);

  operator delete(v1);
}

void *sub_29AC3C660@<X0>(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetSchemaToken(a1);
  v4 = sub_29A1D8028(a2, SchemaToken);
  v5 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetSchemaToken(v4);
  v6 = sub_29A1D8028(a2, v5);
  v7 = pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v6);
  v8 = sub_29A1D8028(a2, v7);
  v9 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v8);
  sub_29A1D8028(a2, v9);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  if (!v10)
  {
    v10 = sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  }

  return sub_29A1D8028(a2, v10);
}

void sub_29AC3C6FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AC3C714(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v31[1] = *MEMORY[0x29EDCA608];
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetSchemaToken(a1);
  if ((*SchemaToken ^ *a2) <= 7)
  {
    sub_29AC3CE28(a1, &v23);
    if (v23)
    {
      v7 = v24[0] == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v28 = 0u;
      v29 = 0u;
      sub_29ABCCFA4(&v23, &v21);
      v22 = v21;
      v21 = 0uLL;
      v8 = pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::Builder::SetType(&v28, &v22);
      sub_29ABF4FA0(v24, &v19);
      v20 = v19;
      v19 = 0uLL;
      v9 = pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::Builder::SetIndices(v8, &v20);
      pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::Builder::Build(v9, &v30);
      *a3 = v30;
      v30 = 0uLL;
      if (*(&v20 + 1))
      {
        sub_29A014BEC(*(&v20 + 1));
      }

      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }

      if (*(&v22 + 1))
      {
        sub_29A014BEC(*(&v22 + 1));
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      if (*(&v29 + 1))
      {
        sub_29A014BEC(*(&v29 + 1));
      }

      if (*(&v28 + 1))
      {
        sub_29A014BEC(*(&v28 + 1));
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27);
    sub_29A1DE3A4(&v26);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v10 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetSchemaToken(SchemaToken);
  if ((*v10 ^ *a2) <= 7)
  {
    sub_29AC3CE28(a1, &v23);
    if (v23)
    {
      v11 = v24[0] == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v30 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v25, &v21);
      v22 = v21;
      v21 = 0uLL;
      v12 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::SetVisibility(&v30, &v22);
      pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::Build(&v28, v12);
      *a3 = v28;
      v28 = 0uLL;
      if (*(&v22 + 1))
      {
        sub_29A014BEC(*(&v22 + 1));
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      if (*(&v30 + 1))
      {
        sub_29A014BEC(*(&v30 + 1));
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27);
    sub_29A1DE3A4(&v26);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v13 = pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v10);
  if ((*v13 ^ *a2) <= 7)
  {
    sub_29AC3CE28(a1, &v23);
    if (v23 && v24[0] && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v26))
    {
      if ((atomic_load_explicit(&qword_2A174A588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174A588))
      {
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens);
        if (!v17)
        {
          v17 = sub_29ABF207C(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens);
        }

        v18 = *(v17 + 1);
        *&v28 = v18;
        if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v28 = v28 & 0xFFFFFFFFFFFFFFF8;
        }

        qword_2A174A570 = 0;
        *algn_2A174A578 = 0;
        qword_2A174A580 = 0;
        sub_29A12EF7C(&qword_2A174A570, &v28, &v28 + 1, 1uLL);
        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        __cxa_atexit(sub_29A3C73E0, &qword_2A174A570, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174A588);
      }

      v21 = 0uLL;
      sub_29ABE8360(&v26, &v19);
      v20 = v19;
      v19 = 0uLL;
      v14 = pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::SetPath(&v21, &v20);
      pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::Build(&v22, v14);
      v30 = v22;
      v22 = 0uLL;
      *&v29 = 0;
      v28 = 0uLL;
      sub_29AC3D3EC(&v28, &v30, v31, 1uLL);
      if (*(&v30 + 1))
      {
        sub_29A014BEC(*(&v30 + 1));
      }

      if (*(&v22 + 1))
      {
        sub_29A014BEC(*(&v22 + 1));
      }

      if (*(&v20 + 1))
      {
        sub_29A014BEC(*(&v20 + 1));
      }

      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::BuildRetained((*algn_2A174A578 - qword_2A174A570) >> 3, qword_2A174A570, v28, &v30);
      *a3 = v30;
      *&v30 = &v28;
      sub_29A0176E4(&v30);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27);
    sub_29A1DE3A4(&v26);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  if ((*pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v13) ^ *a2) > 7)
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
    if (!v16)
    {
      v16 = sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
    }

    if ((*v16 ^ *a2) > 7)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::Get(a1, a2, a3);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174A5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174A5A0))
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::BuildRetained(0, 0, 0, &qword_2A174A590);
      __cxa_atexit(sub_29ABE5FF4, &qword_2A174A590, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A5A0);
    }

    v15 = *algn_2A174A598;
    *a3 = qword_2A174A590;
    *(a3 + 8) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AC3CCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __cxa_guard_abort(&qword_2A174A588);
  sub_29AC3D390(va);
}

void sub_29AC3CE28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((a1 + 8));
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v5 + 10) ^ *(a1 + 96)) > 7)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v10)
    {
      v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v11 = *(a1 + 96);
    if ((*(v10 + 7) ^ v11) > 7)
    {
      v38[0] = "hd/legacyGeomSubsetSceneIndex.cpp";
      v38[1] = "_FindSubset";
      v38[2] = 251;
      v38[3] = "_HdDataSourceLegacyGeomSubset::_Subset pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_HdDataSourceLegacyGeomSubset::_FindSubset() const";
      v39 = 0;
      v17 = v11 & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0xFFFFFFFFFFFFFFF8) != 0)
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

      goto LABEL_60;
    }

    (*(**(a1 + 24) + 40))(v38);
    v12 = atomic_load(&qword_2A174A568);
    if (!v12)
    {
      v12 = sub_29AC3C298();
    }

    if ((*(v12 + 16) ^ *NameToken) > 7)
    {
      v25 = atomic_load(&qword_2A174A568);
      if (!v25)
      {
        v25 = sub_29AC3C298();
      }

      if ((*v25 ^ *NameToken) > 7)
      {
        v31 = v46;
        v32 = v47;
        while (1)
        {
          if (v31 == v32)
          {
            pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v38);
            goto LABEL_60;
          }

          if ((*NameToken ^ *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v31 + 4))) <= 7)
          {
            break;
          }

          v31 += 64;
        }

        v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
        if (!v33)
        {
          v33 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
        }

        v34 = *(v33 + 3);
        *a2 = v34;
        if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *a2 &= 0xFFFFFFFFFFFFFFF8;
        }

        v35 = *(v31 + 24);
        *(a2 + 24) = *(v31 + 40);
        *(a2 + 8) = v35;
        v36 = *(v31 + 56);
        *(a2 + 40) = v36;
        if (v36)
        {
          v37 = (v36 - 16);
          if (*(a2 + 32))
          {
            v37 = *(a2 + 32);
          }

          atomic_fetch_add_explicit(v37, 1uLL, memory_order_relaxed);
        }

        *(a2 + 48) = 1;
        sub_29A1E21F4((a2 + 52), (v31 + 12));
        sub_29A1E2240((a2 + 56), (v31 + 16));
        goto LABEL_56;
      }

      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      if (!v26)
      {
        v26 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      }

      v27 = *(v26 + 4);
      *a2 = v27;
      if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 &= 0xFFFFFFFFFFFFFFF8;
      }

      v28 = v49;
      *(a2 + 8) = v48;
      *(a2 + 24) = v28;
      v16 = v50;
    }

    else
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      if (!v13)
      {
        v13 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      }

      v14 = *(v13 + 3);
      *a2 = v14;
      if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 &= 0xFFFFFFFFFFFFFFF8;
      }

      v15 = v52;
      *(a2 + 8) = v51;
      *(a2 + 24) = v15;
      v16 = v53;
    }

    *(a2 + 40) = v16;
    if (v16)
    {
      v29 = (v16 - 16);
      if (*(a2 + 32))
      {
        v29 = *(a2 + 32);
      }

      atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
    }

    *(a2 + 52) = 0;
    v30 = (a2 + 52);
    *(v30 - 4) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v30);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v30 + 1);
LABEL_56:
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v38);
    return;
  }

  (*(**(a1 + 24) + 48))(v38);
  v6 = atomic_load(&qword_2A174A568);
  if (!v6)
  {
    v6 = sub_29AC3C298();
  }

  if ((*(v6 + 8) ^ *NameToken) > 7)
  {
    v19 = atomic_load(&qword_2A174A568);
    if (!v19)
    {
      v19 = sub_29AC3C298();
    }

    if ((*v19 ^ *NameToken) <= 7)
    {
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      if (!v20)
      {
        v20 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      }

      v21 = *(v20 + 4);
      *a2 = v21;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 &= 0xFFFFFFFFFFFFFFF8;
      }

      v22 = v41;
      *(a2 + 8) = v40;
      *(a2 + 24) = v22;
      v9 = v42;
      goto LABEL_37;
    }

    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v38);
LABEL_60:
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a2 + 52));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 56));
    return;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  }

  v8 = *(v7 + 5);
  *a2 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 8) = v43;
  *(a2 + 24) = v44;
  v9 = v45;
LABEL_37:
  *(a2 + 40) = v9;
  if (v9)
  {
    v23 = (v9 - 16);
    if (*(a2 + 32))
    {
      v23 = *(a2 + 32);
    }

    atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  v24 = (a2 + 52);
  *(v24 - 4) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v24 + 1);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v38);
}

void sub_29AC3D364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(va);
  _Unwind_Resume(a1);
}

void sub_29AC3D390(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 56));
  sub_29A1DE3A4((a1 + 52));
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void *sub_29AC3D3EC(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AC3D474(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AC3D454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AC3D474(uint64_t a1, void *a2, void *a3, void *a4)
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
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AC3D4FC(v7);
  return v4;
}

uint64_t sub_29AC3D4FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29AC3D538(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC3D560(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC3D590(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207C0B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29AC3D5D0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A38932C(a1, &v9);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x40uLL);
    sub_29A6565BC((v6 + 4), a3);
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

_DWORD *sub_29AC3D658(_DWORD *a1, uint64_t a2)
{
  v4 = a1[64];
  v5 = a1[65];
  if (v4 == v5)
  {
    sub_29AC3D6F0(a1, v4 + (v4 >> 1) + 1);
    v5 = a1[65];
  }

  v6 = a1;
  if (v5 >= 0x11)
  {
    v6 = *a1;
  }

  v7 = &v6[4 * a1[64]];
  sub_29A1DDD84(v7, a2);
  result = sub_29A1DDDC0(v7 + 1, (a2 + 4));
  *(v7 + 1) = *(a2 + 8);
  *(a2 + 8) = 0;
  ++a1[64];
  return result;
}

void sub_29AC3D6F0(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(16 * a2);
  v5 = a1;
  if (a1[65] >= 0x11u)
  {
    v5 = *a1;
  }

  sub_29AC3D770(v5, v5 + 16 * a1[64], v4);
  sub_29AC26424(a1);
  if (a1[65] >= 0x11u)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[65] = v2;
}

uint64_t sub_29AC3D770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a3 + 4;
    v5 = a1 + 4;
    do
    {
      sub_29A1DDD84((v4 - 4), (v5 - 4));
      sub_29A1DDDC0(v4, v5);
      *(v4 + 4) = *(v5 + 4);
      *(v5 + 4) = 0;
      v4 += 16;
      v6 = v5 + 12;
      v5 += 16;
    }

    while (v6 != a2);
    return v4 - 4;
  }

  return a3;
}

uint64_t sub_29AC3D7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a3 + 4;
    v5 = a1 + 4;
    do
    {
      sub_29A1E21F4((v4 - 4), (v5 - 4));
      sub_29A1E2240(v4, v5);
      v6 = *(v5 + 4);
      *(v4 + 4) = v6;
      if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 4) &= 0xFFFFFFFFFFFFFFF8;
      }

      v4 += 16;
      v7 = v5 + 12;
      v5 += 16;
    }

    while (v7 != a2);
    return v4 - 4;
  }

  return a3;
}

uint64_t sub_29AC3D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      sub_29A2258F0((a4 + v7 - 16), (a3 + v7 - 16));
      sub_29A225948((a4 + v7 - 12), (a3 + v7 - 12));
      sub_29A166F2C((a4 + v7 - 8), (a3 + v7 - 8));
      v7 -= 16;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

_DWORD *sub_29AC3D914(_DWORD *a1, _DWORD *a2)
{
  v5 = a1[32];
  v4 = a1[33];
  if (v5 == v4)
  {
    sub_29AC3D990(a1, v5 + (v5 >> 1) + 1);
    v4 = a1[33];
  }

  v6 = a1;
  if (v4 >= 0x11)
  {
    v6 = *a1;
  }

  v7 = sub_29A1DDD84(&v6[2 * a1[32]], a2);
  result = sub_29A1DDDC0(v7 + 1, a2 + 1);
  ++a1[32];
  return result;
}

void sub_29AC3D990(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(8 * a2);
  v5 = a1;
  if (a1[33] >= 0x11u)
  {
    v5 = *a1;
  }

  sub_29A7D8DFC(v5, &v5[2 * a1[32]], v4);
  sub_29AC26388(a1);
  if (a1[33] >= 0x11u)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[33] = v2;
}

uint64_t sub_29AC3DA10(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 7424);
  v5 = *(a1 + 7428);
  if (v4 == v5)
  {
    sub_29AC14D54(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 7428);
  }

  v6 = a1;
  if (v5 >= 0x11)
  {
    v6 = *a1;
  }

  v7 = (v6 + 464 * *(a1 + 7424));
  sub_29A1DDD84(v7, a2);
  sub_29A1DDDC0(v7 + 1, a2 + 1);
  result = sub_29AC14EB8((v7 + 2), (a2 + 2));
  ++*(a1 + 7424);
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::AddLegacyPrim(pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v10 = a4;
  sub_29A1E21F4(&v12, a2);
  sub_29A1E2240(&v13, a2 + 1);
  v7 = *a3;
  v14 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC3DC94(a2, a3, &v10, &v8);
  v15 = v8;
  v8 = 0uLL;
  memset(v9, 0, sizeof(v9));
  sub_29AC3E6DC(v9, &v12, &v16, 1uLL);
  (*(*this + 40))(this, v9);
  v11 = v9;
  sub_29AC3E968(&v11);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }
}

void sub_29AC3DC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC3DC94@<X0>(const pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::HdDataSourceLegacyPrim(v8, a1, a2, *a3);

  return sub_29AC3E5D0(a4, v8);
}

_DWORD *sub_29AC3DD18(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::AddLegacyTask(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v11 = a3;
  sub_29A1E21F4(&v13, a2);
  sub_29A1E2240(&v14, a2 + 1);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v8 = *(v7 + 42);
  v15 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC3DF78(a2, &v11, a4, &v9);
  v16 = v9;
  v9 = 0uLL;
  memset(v10, 0, sizeof(v10));
  sub_29AC3E6DC(v10, &v13, &v17, 1uLL);
  (*(*a1 + 40))(a1, v10);
  v12 = v10;
  sub_29AC3E968(&v12);
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
  sub_29A1DE3A4(&v13);
  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }
}

void sub_29AC3DF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AC3DF78(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  v9 = v8;
  v10 = *a2;
  v11 = a3[1];
  v12 = *a3;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim::HdDataSourceLegacyTaskPrim(v8, a1, v10, &v12);
  sub_29AC3E9F0(a4, v9);
  if (v13)
  {
    sub_29A014BEC(v13);
  }
}

void sub_29AC3E014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v11)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::RemovePrim(pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v14[3] = *MEMORY[0x29EDCA608];
  (*(*this + 24))(&v9);
  v4 = v9;
  v5 = v10;
  v14[0] = &v9;
  sub_29A1E234C(v14);
  if (v4 == v5)
  {
    sub_29A1E21F4(v14, a2);
    sub_29A1E2240(v14 + 1, a2 + 1);
    v13[12] = 0x1000000001;
    sub_29A1E21F4(&v9, v14);
    sub_29A1E2240(&v9 + 1, v14 + 1);
    (*(*this + 48))(this, &v9);
    sub_29AC26348(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v14 + 1);
    v6 = v14;
  }

  else
  {
    sub_29A1E21F4(&v9, a2);
    sub_29A1E2240(&v9 + 1, a2 + 1);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v14, 0, 24);
    sub_29AC3E6DC(v14, &v9, v13, 1uLL);
    (*(*this + 40))(this, v14);
    v8 = v14;
    sub_29AC3E968(&v8);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
    v6 = &v9;
  }

  return sub_29A1DE3A4(v6);
}

void sub_29AC3E21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::DirtyPrims(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (*(a2 + 7428) >= 0x11u)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *(a2 + 7424);
  if (v6)
  {
    v7 = 464 * v6;
    do
    {
      CachedLocators = pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::GetCachedLocators(a1);
      a1 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v5 + 8), CachedLocators);
      if (a1)
      {
        (*(*v4 + 16))(&v10, v4, v5);
        v12 = v11;
        v11 = 0uLL;
        sub_29AC3E3B0(&v12, &v13);
        if (*(&v12 + 1))
        {
          sub_29A014BEC(*(&v12 + 1));
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13)
        {
          pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::PrimDirtied(v13, (v5 + 8));
        }

        a1 = v14;
        if (v14)
        {
          sub_29A014BEC(v14);
        }
      }

      v5 += 464;
      v7 -= 464;
    }

    while (v7);
  }

  return pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::DirtyPrims(v4, a2, a3);
}

void sub_29AC3E398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC3E3B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
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

void sub_29AC3E440(uint64_t *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);
}

void sub_29AC3E494(uint64_t *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);

  operator delete(v2);
}

uint64_t *sub_29AC3E4EC(uint64_t *a1)
{
  sub_29AC3E524(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29AC3E524(uint64_t *a1)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 24);
          v8 = *(v6 + 32);
          if (v7)
          {
            sub_29A014BEC(v7);
          }

          v9 = *(v6 + 8);
          if ((v9 & 7) != 0)
          {
            atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v10 = sub_29A1DE3A4(v6);
          operator delete(v10);
          v6 = v8;
        }

        while (v8);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

void *sub_29AC3E5D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207C140;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC3E628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC3E644(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC3E66C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC3E69C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207C190))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AC3E6DC(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29AC3E764(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AC3E744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC3E968(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC3E764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AC3E7F8(a1, v4, v6);
      v6 += 32;
      v4 = v12 + 32;
      v12 += 32;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AC3E878(v9);
  return v4;
}

_DWORD *sub_29AC3E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  result = sub_29A1E2240((a2 + 4), (a3 + 4));
  v6 = *(a3 + 8);
  *(a2 + 8) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(a3 + 24);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC3E878(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC3E8B0(a1);
  }

  return a1;
}

uint64_t *sub_29AC3E8B0(uint64_t *result)
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
      result = sub_29AC3E904(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

_DWORD *sub_29AC3E904(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29AC3E968(void ***a1)
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
        sub_29AC3E904(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_29AC3E9F0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207C1B8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC3EA48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC3EA64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC3EA8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC3EABC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207C208))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType::~HdLegacyTaskSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType::HdLegacyTaskSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "task", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "factory", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "parameters", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "collection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "renderTags", 0);
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

void sub_29AC3ED74(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetFactory(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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

  sub_29AC3EEE0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC3EEE0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC3FBB4(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetParameters(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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

  sub_29AC0F63C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetCollection(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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

  sub_29AC3F0C0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC3F0C0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC3FC44(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetRenderTags(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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

  sub_29AC3F1EC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC3F1EC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC3FCD4(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    if (!v12)
    {
      v12 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    if (!v17)
    {
      v17 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    if (!v21)
    {
      v21 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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

void sub_29AC3F4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
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

void *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::Builder::SetFactory(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::Builder::SetParameters(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::Builder::SetCollection(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::Builder::SetRenderTags(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens))
    {
      sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!result)
  {
    return sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A5E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174A5E0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174A5A8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174A5A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174A5E0);
  }

  return &unk_2A174A5A8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetFactoryLocator(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A620, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A620);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A5A8, (v3 + 8), dword_2A174A5E8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A5E8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A620);
    }
  }

  return dword_2A174A5E8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetParametersLocator(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A660, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A660);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A5A8, (v3 + 16), dword_2A174A628);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A628, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A660);
    }
  }

  return dword_2A174A628;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetCollectionLocator(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A6A0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A6A0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A5A8, (v3 + 24), dword_2A174A668);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A668, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A6A0);
    }
  }

  return dword_2A174A668;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetRenderTagsLocator(pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A6E0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A6E0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A5A8, (v3 + 32), dword_2A174A6A8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A6A8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A6E0);
    }
  }

  return dword_2A174A6A8;
}

void *sub_29AC3FBB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207A958, 0)) != 0)
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

void *sub_29AC3FC44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207AB00, 0)) != 0)
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

void *sub_29AC3FCD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207AC98, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType::~HdLensDistortionSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType *this)
{
  v12 = (this + 88);
  sub_29A124AB0(&v12);
  v2 = *(this + 10);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 9);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 7);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 5);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 4);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 3);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 2);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 1);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType::HdLensDistortionSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType *this)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "lensDistortion", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "type", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "k1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "k2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "center", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "anaSq", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "asym", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "scale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "ior", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "standard", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "fisheye", 0);
  v3 = (this + 88);
  v4 = *this;
  v18 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v19 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v20 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v21 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v22 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v23 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v24 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v25 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v26 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v27 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v28 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  sub_29A12EF7C(v3, &v18, &v29, 0xBuLL);
  for (i = 80; i != -8; i -= 8)
  {
    v16 = *(&v18 + i);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC40208(_Unwind_Exception *a1)
{
  v3 = 80;
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
      v5 = v1[10];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[9];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[8];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[7];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[6];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[5];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[4];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[3];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[2];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[1];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetType(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetK1(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetK2(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetCenter(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

  sub_29ABCAFD4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetAnaSq(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetAsym(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

  sub_29ABCAFD4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetScale(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetIor(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>)
{
  v73 = *MEMORY[0x29EDCA608];
  v15 = &v70;
  memset(v72, 0, sizeof(v72));
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v16 = v72;
  if (*a1)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v18)
    {
      v18 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    v15 = v71;
    v16 = v72 + 1;
    sub_29A166F2C(v72, v18 + 1);
    v20 = *a1;
    v19 = a1[1];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(&v70 + 1);
    *&v70 = v20;
    *(&v70 + 1) = v19;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (*a2)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v23)
    {
      v23 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    sub_29A166F2C(v16, v23 + 2);
    ++v22;
    v25 = *a2;
    v24 = a2[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(v15 + 1);
    *v15 = v25;
    *(v15 + 1) = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  if (*a3)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    sub_29A166F2C(v72 + v22, v27 + 3);
    v28 = v22 + 1;
    v29 = &v71[v22 - 1];
    v31 = *a3;
    v30 = a3[1];
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

  if (*a4)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v33)
    {
      v33 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    sub_29A166F2C(v72 + v28, v33 + 4);
    v34 = v28 + 1;
    v35 = &v71[v28 - 1];
    v37 = *a4;
    v36 = a4[1];
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = v35[1];
    *v35 = v37;
    v35[1] = v36;
    if (v38)
    {
      sub_29A014BEC(v38);
    }
  }

  else
  {
    v34 = v28;
  }

  if (*a5)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v39)
    {
      v39 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    sub_29A166F2C(v72 + v34, v39 + 5);
    v40 = v34 + 1;
    v41 = &v71[v34 - 1];
    v43 = *a5;
    v42 = a5[1];
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = v41[1];
    *v41 = v43;
    v41[1] = v42;
    if (v44)
    {
      sub_29A014BEC(v44);
    }
  }

  else
  {
    v40 = v34;
  }

  if (*a6)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v45)
    {
      v45 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    sub_29A166F2C(v72 + v40, v45 + 6);
    v46 = v40 + 1;
    v47 = &v71[v40 - 1];
    v49 = *a6;
    v48 = a6[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v47[1];
    *v47 = v49;
    v47[1] = v48;
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  else
  {
    v46 = v40;
  }

  if (*a7)
  {
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v51)
    {
      v51 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    sub_29A166F2C(v72 + v46, v51 + 7);
    v52 = v46 + 1;
    v53 = &v71[v46 - 1];
    v55 = *a7;
    v54 = a7[1];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = v53[1];
    *v53 = v55;
    v53[1] = v54;
    if (v56)
    {
      sub_29A014BEC(v56);
    }
  }

  else
  {
    v52 = v46;
  }

  if (*a8)
  {
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v57)
    {
      v57 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    sub_29A166F2C(v72 + v52, v57 + 8);
    v58 = v52 + 1;
    v59 = &v71[v52 - 1];
    v61 = *a8;
    v60 = a8[1];
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v62 = v59[1];
    *v59 = v61;
    v59[1] = v60;
    if (v62)
    {
      sub_29A014BEC(v62);
    }
  }

  else
  {
    v58 = v52;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v58, v72, &v70, &v69);
  *a9 = v69;
  for (i = 120; i != -8; i -= 16)
  {
    v64 = *(&v71[-1] + i);
    if (v64)
    {
      sub_29A014BEC(v64);
    }
  }

  for (j = 56; j != -8; j -= 8)
  {
    v66 = *(v72 + j);
    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC40D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 120;
  while (1)
  {
    v31 = *(&a13 + v30);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v30 -= 16;
    if (v30 == -8)
    {
      v32 = 56;
      while (1)
      {
        v33 = *(&a29 + v32);
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v32 -= 8;
        if (v32 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetType(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetK1(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetK2(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetCenter(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetAnaSq(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetAsym(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetScale(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetIor(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens))
    {
      sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!result)
  {
    return sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A720, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A720);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
      if (!v4)
      {
        v4 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A174A6E8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A6E8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A720);
    }
  }

  return dword_2A174A6E8;
}

double pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::BuildTypeDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
  }

  if ((*(v5 + 9) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AC413F8(&pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens);
    }

    if ((*(v7 + 10) ^ *this) > 7)
    {
      sub_29ABCCFA4(this, &v11);
      result = *&v11;
      *a2 = v11;
      return result;
    }

    if ((atomic_load_explicit(&qword_2A174A750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174A750))
    {
      sub_29ABCCFA4(this, &qword_2A174A740);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174A740, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A750);
    }

    v6 = &qword_2A174A740;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174A738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174A738))
    {
      sub_29ABCCFA4(this, &qword_2A174A728);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174A728, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A738);
    }

    v6 = &qword_2A174A728;
  }

  v9 = *v6;
  v8 = v6[1];
  *a2 = v9;
  *(a2 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType *sub_29AC413F8(atomic_ullong *a1)
{
  result = sub_29AC41440();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType::~HdLensDistortionSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType *sub_29AC41440()
{
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::HdLensDistortionSchemaTokens_StaticTokenType::HdLensDistortionSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType::~HdLightTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType *this)
{
  v34 = (this + 264);
  sub_29A124AB0(&v34);
  v2 = *(this + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 31);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 30);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 29);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 28);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 27);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 26);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 25);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 24);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 23);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 22);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 21);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 20);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 19);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 18);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 17);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 16);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 15);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 14);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 13);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 12);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 11);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 10);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 9);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 8);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 7);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 6);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 5);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 4);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 3);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 2);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 1);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType::HdLightTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType *this)
{
  v72 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "angle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "colorTemperature", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "enableColorTemperature", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "domeOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "exposure", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "height", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "intensity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "radius", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "length", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "texture:file", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "texture:format", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "width", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "ambient", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "diffuse", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "specular", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "normalize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "hasShadow", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "shaping:focus", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "shaping:focusTint", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "shaping:cone:angle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "shaping:cone:softness", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "shaping:ies:file", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "shaping:ies:angleScale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "shaping:ies:normalize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "shadow:enable", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "shadow:color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "shadow:distance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 224, "shadow:falloff", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 232, "shadow:falloffGamma", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 240, "params", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 248, "shadowCollection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 256, "shadowParams", 0);
  v3 = *this;
  v39 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v40 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v41 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v42 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v43 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v44 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v45 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v46 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v47 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v48 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v49 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v50 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v51 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v52 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v53 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v54 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v55 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v56 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v57 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v58 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v59 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v60 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v61 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v62 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v63 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v64 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v65 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v66 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v67 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v68 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v69 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v70 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v71 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  sub_29A12EF7C(this + 33, &v39, &v72, 0x21uLL);
  for (i = 256; i != -8; i -= 8)
  {
    v37 = *(&v39 + i);
    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}