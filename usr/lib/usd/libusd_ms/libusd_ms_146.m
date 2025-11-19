void pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(pxrInternal__aapl__pxrReserved__::HdTask *this)
{
  *this = &unk_2A2085448;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdTask::GetRenderTags(pxrInternal__aapl__pxrReserved__::HdTask *this)
{
  if ((atomic_load_explicit(&qword_2A174BB98, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C77B8();
  }

  return &qword_2A174BBA0;
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::~HdTetMeshSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::HdTetMeshSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "tetMesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "topology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "doubleSided", 0);
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

void sub_29ACE04B8(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetTopology(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDoubleSided(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
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
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
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
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v13)
    {
      v13 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
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

void sub_29ACE088C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
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

void *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::Builder::SetTopology(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::Builder::SetDoubleSided(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens))
    {
      sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!result)
  {
    return sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BBF0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174BBB8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174BBB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174BBF0);
  }

  return &unk_2A174BBB8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetTopologyLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BC30, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BC30);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174BBB8, (v3 + 8), dword_2A174BBF8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174BBF8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BC30);
    }
  }

  return dword_2A174BBF8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDoubleSidedLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BC70, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BC70);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174BBB8, (v3 + 16), dword_2A174BC38);
      __cxa_atexit(sub_29ABC33B4, dword_2A174BC38, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BC70);
    }
  }

  return dword_2A174BC38;
}

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *sub_29ACE0D0C(atomic_ullong *a1)
{
  result = sub_29ACE0D54();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::~HdTetMeshSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *sub_29ACE0D54()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::HdTetMeshSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::~HdTetMeshTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::HdTetMeshTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "topology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "tetVertexIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "surfaceFaceVertexIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "orientation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "leftHanded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "rightHanded", 0);
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

void sub_29ACE1054(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetTetVertexIndices(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
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

  sub_29ACE11DC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACE11DC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ACE1D8C(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSurfaceFaceVertexIndices(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
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

  sub_29ACE1308(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACE1308(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ACE1E1C(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetOrientation(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
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
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v10)
    {
      v10 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
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
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v15)
    {
      v15 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
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
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v19)
    {
      v19 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
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

void sub_29ACE1660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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

void *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::Builder::SetTetVertexIndices(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::Builder::SetSurfaceFaceVertexIndices(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::Builder::SetOrientation(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens))
    {
      sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!result)
  {
    return sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BCB0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BCB0);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      if (!v4)
      {
        v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A174BC78);
      __cxa_atexit(sub_29ABC33B4, dword_2A174BC78, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BCB0);
    }
  }

  return dword_2A174BC78;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetTetVertexIndicesLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BCF0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BCF0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(dword_2A174BC78, (v3 + 8), dword_2A174BCB8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174BCB8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BCF0);
    }
  }

  return dword_2A174BCB8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSurfaceFaceVertexIndicesLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BD30, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BD30);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(dword_2A174BC78, (v3 + 16), dword_2A174BCF8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174BCF8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BD30);
    }
  }

  return dword_2A174BCF8;
}

double pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::BuildOrientationDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v5)
  {
    v5 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(v5 + 4) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v7)
    {
      v7 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    }

    if ((*(v7 + 5) ^ *this) > 7)
    {
      sub_29ABCCFA4(this, &v11);
      result = *&v11;
      *a2 = v11;
      return result;
    }

    if ((atomic_load_explicit(&qword_2A174BD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD60))
    {
      sub_29ABCCFA4(this, &qword_2A174BD50);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174BD50, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BD60);
    }

    v6 = &qword_2A174BD50;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174BD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD48))
    {
      sub_29ABCCFA4(this, &qword_2A174BD38);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174BD38, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BD48);
    }

    v6 = &qword_2A174BD38;
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

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *sub_29ACE1D00(atomic_ullong *a1)
{
  result = sub_29ACE1D48();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::~HdTetMeshTopologySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *sub_29ACE1D48()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::HdTetMeshTopologySchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ACE1D8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207EB98, 0)) != 0)
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

void *sub_29ACE1E1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207EC78, 0)) != 0)
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

void *pxrInternal__aapl__pxrReserved__::HdResampleNeighbors@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, float a2@<S0>, std::type_info *a3@<X1>, void *a4@<X8>)
{
  v165 = *MEMORY[0x29EDCA608];
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(this, a3);
  v140 = Type;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v157);
  if (*&v157.f64[0] == Type)
  {
    *&v157.f64[0] = "hd/timeSampleArray.cpp";
    *&v157.f64[1] = "HdResampleNeighbors";
    *&v158.f64[0] = 89;
    *&v158.f64[1] = "VtValue pxrInternal__aapl__pxrReserved__::HdResampleNeighbors(float, const VtValue &, const VtValue &)";
    LOBYTE(v159) = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(this, &__p);
    if (v150.f64[0] >= 0.0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = *&__p.f64[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v157, 1, "Unknown sample value type '%s'", p_p);
    if (SHIBYTE(v150.f64[0]) < 0)
    {
      operator delete(*&__p.f64[0]);
    }

    return sub_29A186EF4(a4, this);
  }

  else
  {
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(a3, v10))
    {
      a4[1] = 0;
      if ((atomic_load_explicit(&qword_2A174BD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD70))
      {
        qword_2A174BD68 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94C0], v124);
        __cxa_guard_release(&qword_2A174BD70);
      }

      if (v140 == qword_2A174BD68)
      {
        v17 = sub_29A8D5794(this);
        v18 = (1.0 - a2) * *v17 + a2 * *sub_29A8D5794(a3);
        *&v157.f64[1] = &unk_2A2044C63;
        *v157.f64 = v18;
      }

      else
      {
        if ((atomic_load_explicit(&qword_2A174BD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD80))
        {
          qword_2A174BD78 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042500, v125);
          __cxa_guard_release(&qword_2A174BD80);
        }

        if (v140 == qword_2A174BD78)
        {
          v19 = sub_29A18ED70(this);
          v20 = sub_29A18ED70(a3);
          sub_29A18E048(&v157, *v19);
          if (*&v157.f64[0])
          {
            v21 = 0;
            v22 = a2;
            do
            {
              v23 = *(v19[4] + 4 * v21);
              v24 = *(v20[4] + v21);
              sub_29A18E624(&v157);
              v25 = (1.0 - v22) * v23 + v22 * v24;
              *(v159 + 4 * v21++) = v25;
            }

            while (v21 < *&v157.f64[0]);
          }

          *&__p.f64[1] = &off_2A2042F70;
          v26 = operator new(0x30uLL);
          v27 = v158;
          *v26 = v157;
          *(v26 + 1) = v27;
          v28 = v159;
          *(v26 + 4) = v159;
          if (v28)
          {
            v29 = (v28 - 16);
            if (*(v26 + 3))
            {
              v29 = *(v26 + 3);
            }

            atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
          }

          atomic_store(0, v26 + 10);
          *&__p.f64[0] = v26;
          atomic_fetch_add_explicit(v26 + 10, 1u, memory_order_relaxed);
          sub_29A18606C(a4, &__p);
          sub_29A186B14(&__p);
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
        }

        if ((atomic_load_explicit(&qword_2A174BD90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD90))
        {
          qword_2A174BD88 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94B8], v126);
          __cxa_guard_release(&qword_2A174BD90);
        }

        if (v140 == qword_2A174BD88)
        {
          v30 = sub_29A337248(this);
          v31 = (1.0 - a2) * *v30 + *sub_29A337248(a3) * a2;
          *&v157.f64[1] = &unk_2A2044D1B;
          v157.f64[0] = v31;
        }

        else
        {
          if ((atomic_load_explicit(&qword_2A174BDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDA0))
          {
            qword_2A174BD98 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20424E8, v127);
            __cxa_guard_release(&qword_2A174BDA0);
          }

          if (v140 == qword_2A174BD98)
          {
            v32 = sub_29A190618(this);
            v33 = sub_29A190618(a3);
            sub_29A18FC40(&v157, *v32);
            if (*&v157.f64[0])
            {
              v34 = 0;
              v35 = a2;
              do
              {
                v36 = *(v32[4] + 8 * v34);
                v37 = *(v33[4] + v34);
                sub_29A190088(&v157);
                *(v159 + 8 * v34++) = (1.0 - v35) * v36 + v37 * v35;
              }

              while (v34 < *&v157.f64[0]);
            }

            *&__p.f64[1] = &off_2A20430E0;
            v38 = operator new(0x30uLL);
            v39 = v158;
            *v38 = v157;
            *(v38 + 1) = v39;
            v40 = v159;
            *(v38 + 4) = v159;
            if (v40)
            {
              v41 = (v40 - 16);
              if (*(v38 + 3))
              {
                v41 = *(v38 + 3);
              }

              atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
            }

            atomic_store(0, v38 + 10);
            *&__p.f64[0] = v38;
            atomic_fetch_add_explicit(v38 + 10, 1u, memory_order_relaxed);
            sub_29A18606C(a4, &__p);
            sub_29A186B14(&__p);
            pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
          }

          if ((atomic_load_explicit(&qword_2A174BDB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDB0))
          {
            qword_2A174BDA8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040768, v128);
            __cxa_guard_release(&qword_2A174BDB0);
          }

          if (v140 == qword_2A174BDA8)
          {
            v42 = sub_29ACE30B4(this);
            v43 = (1.0 - a2) * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v42] + a2 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*sub_29ACE30B4(a3)];
            if (v43 == 0.0)
            {
              v44 = HIWORD(LODWORD(v43));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v43) >> 23])
            {
              v44 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v43) >> 23] + (((LODWORD(v43) & 0x7FFFFF) + ((LODWORD(v43) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v44) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v43));
            }

            *&v157.f64[1] = &off_2A2044BA8 + 3;
            LOWORD(v157.f64[0]) = v44;
          }

          else
          {
            if ((atomic_load_explicit(&qword_2A174BDC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDC0))
            {
              qword_2A174BDB8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042518, v129);
              __cxa_guard_release(&qword_2A174BDC0);
            }

            if (v140 == qword_2A174BDB8)
            {
              v45 = sub_29A18DFB4(this);
              v46 = sub_29A18DFB4(a3);
              sub_29ACE319C(v45, v46, &v157, a2);
              *&__p.f64[1] = &off_2A2043028;
              v47 = operator new(0x30uLL);
              v48 = v158;
              *v47 = v157;
              *(v47 + 1) = v48;
              v49 = v159;
              *(v47 + 4) = v159;
              if (v49)
              {
                v50 = (v49 - 16);
                if (*(v47 + 3))
                {
                  v50 = *(v47 + 3);
                }

                atomic_fetch_add_explicit(v50, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v47 + 10);
              *&__p.f64[0] = v47;
              atomic_fetch_add_explicit(v47 + 10, 1u, memory_order_relaxed);
              sub_29A18606C(a4, &__p);
              sub_29A186B14(&__p);
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
            }

            if ((atomic_load_explicit(&qword_2A174BDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDD0))
            {
              qword_2A174BDC8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20407C8, v130);
              __cxa_guard_release(&qword_2A174BDD0);
            }

            if (v140 != qword_2A174BDC8)
            {
              if ((atomic_load_explicit(&qword_2A174BDE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDE0))
              {
                qword_2A174BDD8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042290, v131);
                __cxa_guard_release(&qword_2A174BDE0);
              }

              if (v140 == qword_2A174BDD8)
              {
                v60 = sub_29ACE3358(this);
                v61 = sub_29ACE3358(a3);
                sub_29ACE33EC(v60, v61, &v157, a2);
                *&__p.f64[1] = &off_2A20483F0;
                v62 = operator new(0x30uLL);
                v63 = v158;
                *v62 = v157;
                *(v62 + 1) = v63;
                v64 = v159;
                *(v62 + 4) = v159;
                if (v64)
                {
                  v65 = (v64 - 16);
                  if (*(v62 + 3))
                  {
                    v65 = *(v62 + 3);
                  }

                  atomic_fetch_add_explicit(v65, 1uLL, memory_order_relaxed);
                }

                atomic_store(0, v62 + 10);
                *&__p.f64[0] = v62;
                atomic_fetch_add_explicit(v62 + 10, 1u, memory_order_relaxed);
                sub_29A18606C(a4, &__p);
                sub_29A186B14(&__p);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
              }

              if ((atomic_load_explicit(&qword_2A174BDF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDF0))
              {
                qword_2A174BDE8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20407F8, v132);
                __cxa_guard_release(&qword_2A174BDF0);
              }

              if (v140 == qword_2A174BDE8)
              {
                v66 = sub_29ACE359C(this);
                v67 = sub_29ACE359C(a3);
                v68 = a2;
                v157 = *v66;
                v69 = *(v66 + 1);
                v70 = *(v66 + 2);
                v71 = *(v66 + 3);
                *&v161 = v66[8];
                v159 = v70;
                v160 = v71;
                v158 = v69;
                pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v157, 1.0 - v68);
                v150 = *(v72 + 16);
                v151 = *(v72 + 32);
                v152 = *(v72 + 48);
                *&v153 = *(v72 + 64);
                __p = *v72;
                v157 = *v67;
                v73 = *(v67 + 1);
                v74 = *(v67 + 2);
                v75 = *(v67 + 3);
                *&v161 = v67[8];
                v159 = v74;
                v160 = v75;
                v158 = v73;
                pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v157, v68);
                *v141 = *v76;
                v77 = *(v76 + 16);
                v78 = *(v76 + 32);
                v79 = *(v76 + 48);
                *&v145 = *(v76 + 64);
                v143 = v78;
                v144 = v79;
                v142 = v77;
                v159 = v151;
                v160 = v152;
                *&v161 = v153;
                v157 = __p;
                v158 = v150;
                pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator+=(v157.f64, v141);
                *&__p.f64[1] = &off_2A20484A8 + 2;
                v80 = operator new(0x50uLL);
                v81 = v160;
                *(v80 + 2) = v159;
                *(v80 + 3) = v81;
                *(v80 + 8) = v161;
                v82 = v158;
                *v80 = v157;
                *(v80 + 1) = v82;
                v83 = (v80 + 72);
              }

              else
              {
                if ((atomic_load_explicit(&qword_2A174BE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE00))
                {
                  qword_2A174BDF8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042278, v133);
                  __cxa_guard_release(&qword_2A174BE00);
                }

                if (v140 == qword_2A174BDF8)
                {
                  v85 = sub_29ACE3630(this);
                  v86 = sub_29ACE3630(a3);
                  sub_29ACE36C4(v85, v86, &v157, a2);
                  *&__p.f64[1] = &off_2A2048560;
                  v87 = operator new(0x30uLL);
                  v88 = v158;
                  *v87 = v157;
                  *(v87 + 1) = v88;
                  v89 = v159;
                  *(v87 + 4) = v159;
                  if (v89)
                  {
                    v90 = (v89 - 16);
                    if (*(v87 + 3))
                    {
                      v90 = *(v87 + 3);
                    }

                    atomic_fetch_add_explicit(v90, 1uLL, memory_order_relaxed);
                  }

                  atomic_store(0, v87 + 10);
                  *&__p.f64[0] = v87;
                  atomic_fetch_add_explicit(v87 + 10, 1u, memory_order_relaxed);
                  sub_29A18606C(a4, &__p);
                  sub_29A186B14(&__p);
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
                }

                if ((atomic_load_explicit(&qword_2A174BE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE10))
                {
                  qword_2A174BE08 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040818, v134);
                  __cxa_guard_release(&qword_2A174BE10);
                }

                if (v140 != qword_2A174BE08)
                {
                  if ((atomic_load_explicit(&qword_2A174BE20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE20))
                  {
                    qword_2A174BE18 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042260, v135);
                    __cxa_guard_release(&qword_2A174BE20);
                  }

                  if (v140 == qword_2A174BE18)
                  {
                    v118 = sub_29A1988F4(this);
                    v119 = sub_29A1988F4(a3);
                    sub_29ACE561C(v118, v119, &v157, a2);
                    *&__p.f64[1] = &off_2A2043810;
                    v120 = operator new(0x30uLL);
                    v121 = v158;
                    *v120 = v157;
                    *(v120 + 1) = v121;
                    v122 = v159;
                    *(v120 + 4) = v159;
                    if (v122)
                    {
                      v123 = (v122 - 16);
                      if (*(v120 + 3))
                      {
                        v123 = *(v120 + 3);
                      }

                      atomic_fetch_add_explicit(v123, 1uLL, memory_order_relaxed);
                    }

                    atomic_store(0, v120 + 10);
                    *&__p.f64[0] = v120;
                    atomic_fetch_add_explicit(v120 + 10, 1u, memory_order_relaxed);
                    sub_29A18606C(a4, &__p);
                    sub_29A186B14(&__p);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
                  }

                  return sub_29ACE3934(this, a3, &v140, a4, a2);
                }

                v91 = sub_29AB14D3C(this);
                v92 = sub_29AB14D3C(a3);
                v93 = a2;
                v94 = *v91;
                v95 = *(v91 + 1);
                v96 = *(v91 + 3);
                v159 = *(v91 + 2);
                v160 = v96;
                v157 = v94;
                v158 = v95;
                v97 = *(v91 + 4);
                v98 = *(v91 + 5);
                v99 = *(v91 + 7);
                v163 = *(v91 + 6);
                v164 = v99;
                v161 = v97;
                v162 = v98;
                pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v157, 1.0 - v93);
                v153 = *(v100 + 64);
                v154 = *(v100 + 80);
                v155 = *(v100 + 96);
                v156 = *(v100 + 112);
                __p = *v100;
                v150 = *(v100 + 16);
                v151 = *(v100 + 32);
                v152 = *(v100 + 48);
                v101 = *v92;
                v102 = *(v92 + 1);
                v103 = *(v92 + 3);
                v159 = *(v92 + 2);
                v160 = v103;
                v157 = v101;
                v158 = v102;
                v104 = *(v92 + 4);
                v105 = *(v92 + 5);
                v106 = *(v92 + 7);
                v163 = *(v92 + 6);
                v164 = v106;
                v161 = v104;
                v162 = v105;
                pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v157, v93);
                v108 = *v107;
                v109 = v107[1];
                v110 = v107[3];
                v143 = v107[2];
                v144 = v110;
                *v141 = v108;
                v142 = v109;
                v111 = v107[4];
                v112 = v107[5];
                v113 = v107[7];
                v147 = v107[6];
                v148 = v113;
                v145 = v111;
                v146 = v112;
                v161 = v153;
                v162 = v154;
                v163 = v155;
                v164 = v156;
                v157 = __p;
                v158 = v150;
                v159 = v151;
                v160 = v152;
                pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(v157.f64, v141);
                *&__p.f64[1] = &off_2A2042BD8 + 2;
                v80 = operator new(0x88uLL);
                v114 = v162;
                *(v80 + 4) = v161;
                *(v80 + 5) = v114;
                v115 = v164;
                *(v80 + 6) = v163;
                *(v80 + 7) = v115;
                v116 = v158;
                *v80 = v157;
                *(v80 + 1) = v116;
                v117 = v160;
                *(v80 + 2) = v159;
                *(v80 + 3) = v117;
                v83 = (v80 + 128);
              }

              atomic_store(0, v83);
              *&__p.f64[0] = v80;
              atomic_fetch_add_explicit(v83, 1u, memory_order_relaxed);
              sub_29A18606C(a4, &__p);
              v84 = &__p;
              return sub_29A186B14(v84);
            }

            v51 = sub_29ACE32C4(this);
            v52 = sub_29ACE32C4(a3);
            v53 = a2;
            v54 = *(v51 + 1);
            v157 = *v51;
            v158 = v54;
            pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v157, 1.0 - v53);
            v136 = v55[1];
            v138 = *v55;
            v56 = *(v52 + 1);
            v157 = *v52;
            v158 = v56;
            pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v157, v53);
            v58 = v57[1];
            __p = *v57;
            v150 = v58;
            v157 = v138;
            v158 = v136;
            pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator+=(v157.f64, __p.f64);
            v137 = v157;
            v139 = v158;
            *&v157.f64[1] = &off_2A2048338 + 2;
            v59 = operator new(0x28uLL);
            *v59 = v137;
            *(v59 + 1) = v139;
            atomic_store(0, v59 + 8);
            *&v157.f64[0] = v59;
            atomic_fetch_add_explicit(v59 + 8, 1u, memory_order_relaxed);
          }
        }
      }

      sub_29A18606C(a4, &v157);
      v84 = &v157;
      return sub_29A186B14(v84);
    }

    *&v157.f64[0] = "hd/timeSampleArray.cpp";
    *&v157.f64[1] = "HdResampleNeighbors";
    *&v158.f64[0] = 96;
    *&v158.f64[1] = "VtValue pxrInternal__aapl__pxrReserved__::HdResampleNeighbors(float, const VtValue &, const VtValue &)";
    LOBYTE(v159) = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(this, &__p);
    v13 = SHIBYTE(v150.f64[0]);
    v14 = *&__p.f64[0];
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(a3, v141);
    v15 = &__p;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if ((SBYTE7(v142) & 0x80u) == 0)
    {
      v16 = v141;
    }

    else
    {
      v16 = v141[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v157, 1, "Mismatched sample value types '%s' and '%s'", v15, v16);
    if (SBYTE7(v142) < 0)
    {
      operator delete(v141[0]);
    }

    if (SHIBYTE(v150.f64[0]) < 0)
    {
      operator delete(*&__p.f64[0]);
    }

    return sub_29A186EF4(a4, this);
  }
}

void sub_29ACE2DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_guard_abort(&qword_2A174BE20);
  sub_29A186B14(v41);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdGetContributingSampleTimesForInterval(_BOOL8 result, int *a2, const void **a3, float a4, float a5)
{
  if (!result)
  {
    return result;
  }

  v9 = 0;
  v10 = 0;
  v11 = result - 1;
  v12 = a2 - 1;
  do
  {
    v13 = *(v12 + 1);
    v16 = v13;
    if (v10)
    {
      if (!a3)
      {
        return 1;
      }

      goto LABEL_5;
    }

    if (v9 && v13 > a4)
    {
      if (a3)
      {
        sub_29A0C2184(a3, v12);
        v10 = 1;
        if (v16 >= a4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v13 >= a4)
        {
          return 1;
        }

        v10 = 1;
      }
    }

    else
    {
      v10 = v13 >= a4;
      if (v13 >= a4 && a3 != 0)
      {
        v10 = 0;
LABEL_5:
        ++v10;
        sub_29A0C2184(a3, &v16);
      }
    }

    v14 = v16 >= a5 || v11 == v9++;
    ++v12;
  }

  while (!v14);
  if (v10)
  {
    return v10 != 1;
  }

  if (a3)
  {
    sub_29A0C2184(a3, a2);
  }

  return 0;
}

void **sub_29ACE30B4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3F9C34(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ACE3148, &stru_2A2040768);
  }
}

_WORD *sub_29ACE3148@<X0>(void *a1@<X8>)
{
  result = operator new(2uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29ACE3190;
  a1[2] = &stru_2A2040768;
  return result;
}

void sub_29ACE3190(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29ACE319C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A18EE04(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = (1.0 - v10) * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v9)] + v10 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(*(a2 + 32) + 2 * v9)];
      if (v11 == 0.0)
      {
        v12 = HIWORD(LODWORD(v11));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
      {
        v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
      }

      result = sub_29A18F540(a3);
      *(a3[4] + 2 * v9++) = v12;
    }

    while (v9 < *a3);
  }

  return result;
}

void **sub_29ACE32C4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FB9E8(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::Invoke, &stru_2A20407C8);
  }
}

void **sub_29ACE3358(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FBB48(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ACE3500, &stru_2A2042290);
  }
}

uint64_t sub_29ACE33EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A220F88(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = a1[4] + 32 * v9;
      v12 = *(a2 + 32);
      v13 = *(v11 + 16);
      v25 = *v11;
      v26 = v13;
      pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v25, 1.0 - v10);
      v14 = (v12 + 32 * v9);
      v20 = v15[1];
      v22 = *v15;
      v16 = v14[1];
      v25 = *v14;
      v26 = v16;
      pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v25, v10);
      v18 = v17[1];
      v24[0] = *v17;
      v24[1] = v18;
      v25 = v22;
      v26 = v20;
      pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator+=(v25.f64, v24);
      v21 = v26;
      v23 = v25;
      result = sub_29A2216E8(a3);
      v19 = (a3[4] + 32 * v9);
      *v19 = v23;
      v19[1] = v21;
      ++v9;
    }

    while (v9 < *a3);
  }

  return result;
}

double sub_29ACE3500@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29ACE3550;
  a1[2] = &stru_2A2042290;
  return result;
}

uint64_t sub_29ACE3550(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  return result;
}

void **sub_29ACE359C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FBEFC(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::Invoke, &stru_2A20407F8);
  }
}

void **sub_29ACE3630(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FC06C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ACE3898, &stru_2A2042278);
  }
}

uint64_t sub_29ACE36C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  v48 = *MEMORY[0x29EDCA608];
  result = sub_29A221F2C(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = a4;
    do
    {
      v12 = a1[4] + v9;
      v13 = *(a2 + 32);
      v38 = *v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 32);
      v16 = *(v12 + 48);
      v42 = *(v12 + 64);
      v40 = v15;
      v41 = v16;
      v39 = v14;
      pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v38, 1.0 - v11);
      v18 = v17[3];
      v45 = v17[2];
      v46 = v18;
      v47 = *(v17 + 8);
      v19 = v17[1];
      v43 = *v17;
      v44 = v19;
      v38 = *(v13 + v9);
      v20 = *(v13 + v9 + 16);
      v21 = *(v13 + v9 + 32);
      v22 = *(v13 + v9 + 48);
      v42 = *(v13 + v9 + 64);
      v40 = v21;
      v41 = v22;
      v39 = v20;
      pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v38, v11);
      v36[0] = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 32);
      v26 = *(v23 + 48);
      v37 = *(v23 + 64);
      v36[2] = v25;
      v36[3] = v26;
      v36[1] = v24;
      v33 = v45;
      v34 = v46;
      v35 = v47;
      v31 = v43;
      v32 = v44;
      pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator+=(&v31, v36);
      result = sub_29A222868(a3);
      v27 = a3[4] + v9;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      *(v27 + 64) = v35;
      *(v27 + 32) = v29;
      *(v27 + 48) = v30;
      *v27 = v31;
      *(v27 + 16) = v28;
      ++v10;
      v9 += 72;
    }

    while (v10 < *a3);
  }

  return result;
}

double sub_29ACE3898@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29ACE38E8;
  a1[2] = &stru_2A2042278;
  return result;
}

uint64_t sub_29ACE38E8(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  return result;
}

void *sub_29ACE3934(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, void *a3, void *a4, float a5)
{
  v235 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174BE30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE30))
  {
    qword_2A174BE28 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040948, v180);
    __cxa_guard_release(&qword_2A174BE30);
  }

  if (*a3 == qword_2A174BE28)
  {
    v11 = sub_29ACE5804(a1);
    v223 = vaddq_f64(vmulq_n_f64(*v11, 1.0 - a5), vmulq_n_f64(*sub_29ACE5804(a2), a5));
    *(&v230 + 1) = &off_2A20426D0 + 2;
    v12 = 24;
LABEL_56:
    v13 = operator new(v12);
    *v13 = v223;
LABEL_57:
    v14 = (v13 + 16);
LABEL_58:
    atomic_store(0, v14);
    *&v230 = v13;
    atomic_fetch_add_explicit(v14, 1u, memory_order_relaxed);
LABEL_77:
    sub_29A18606C(a4, &v230);
    return sub_29A186B14(&v230);
  }

  if ((atomic_load_explicit(&qword_2A174BE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE40))
  {
    qword_2A174BE38 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042200, v181);
    __cxa_guard_release(&qword_2A174BE40);
  }

  if (*a3 == qword_2A174BE38)
  {
    v15 = sub_29A192BB8(a1);
    v16 = sub_29A192BB8(a2);
    sub_29A1921FC(&v230, *v15);
    if (v230)
    {
      v17 = 0;
      v208 = 1.0 - a5;
      v212 = a5;
      do
      {
        v216 = *(v16[4] + v17);
        v224 = *(v15[4] + 16 * v17);
        sub_29A19255C(&v230);
        *(v232 + 16 * v17++) = vaddq_f64(vmulq_n_f64(v224, v208), vmulq_n_f64(v216, v212));
      }

      while (v17 < v230);
    }

    v234 = &off_2A2043308;
    v18 = operator new(0x30uLL);
    v19 = v231;
    *v18 = v230;
    *(v18 + 1) = v19;
    v20 = v232;
    *(v18 + 4) = v232;
    if (v20)
    {
      v21 = (v20 - 16);
      if (*(v18 + 3))
      {
        v21 = *(v18 + 3);
      }

      atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v18 + 10);
    v233 = v18;
    atomic_fetch_add_explicit(v18 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE50))
  {
    qword_2A174BE48 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040958, v182);
    __cxa_guard_release(&qword_2A174BE50);
  }

  if (*a3 == qword_2A174BE48)
  {
    v22 = sub_29ABC9830(a1);
    v23 = vadd_f32(vmul_n_f32(*sub_29ABC9830(a2), a5), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v22), 1.0 - a5)));
    *(&v230 + 1) = &off_2A2042618 + 3;
    *&v230 = v23;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE60))
  {
    qword_2A174BE58 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421B8, v183);
    __cxa_guard_release(&qword_2A174BE60);
  }

  if (*a3 == qword_2A174BE58)
  {
    v24 = sub_29A1915AC(a1);
    v25 = sub_29A1915AC(a2);
    sub_29A190B18(&v230, *v24);
    if (v230)
    {
      v26 = 0;
      do
      {
        v27 = *(v24[4] + 8 * v26);
        v28 = *(v25[4] + 8 * v26);
        sub_29A190F50(&v230);
        *(v232 + 8 * v26++) = vadd_f32(vmul_n_f32(v28, a5), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v27), 1.0 - a5)));
      }

      while (v26 < v230);
    }

    v234 = &off_2A2043198;
    v29 = operator new(0x30uLL);
    v30 = v231;
    *v29 = v230;
    *(v29 + 1) = v30;
    v31 = v232;
    *(v29 + 4) = v232;
    if (v31)
    {
      v32 = (v31 - 16);
      if (*(v29 + 3))
      {
        v32 = *(v29 + 3);
      }

      atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v29 + 10);
    v233 = v29;
    atomic_fetch_add_explicit(v29 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE70))
  {
    qword_2A174BE68 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040968, v184);
    __cxa_guard_release(&qword_2A174BE70);
  }

  if (*a3 == qword_2A174BE68)
  {
    v33 = sub_29ACE5898(a1);
    v34 = sub_29ACE5898(a2);
    LODWORD(v230) = *v33;
    LODWORD(v33) = *sub_29A56E160(&v230, 1.0 - a5);
    LODWORD(v230) = *v34;
    LODWORD(v233) = *sub_29A56E160(&v230, a5);
    LODWORD(v230) = v33;
    v35 = *sub_29A56E070(&v230, &v233);
    *(&v230 + 1) = &off_2A2042560 + 3;
    LODWORD(v230) = v35;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE80))
  {
    qword_2A174BE78 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042170, v185);
    __cxa_guard_release(&qword_2A174BE80);
  }

  if (*a3 == qword_2A174BE78)
  {
    v36 = sub_29A190A84(a1);
    v37 = sub_29A190A84(a2);
    sub_29ACE592C(v36, v37, &v230, a5);
    v234 = &off_2A2043250;
    v38 = operator new(0x30uLL);
    v39 = v231;
    *v38 = v230;
    *(v38 + 1) = v39;
    v40 = v232;
    *(v38 + 4) = v232;
    if (v40)
    {
      v41 = (v40 - 16);
      if (*(v38 + 3))
      {
        v41 = *(v38 + 3);
      }

      atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v38 + 10);
    v233 = v38;
    atomic_fetch_add_explicit(v38 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE90))
  {
    qword_2A174BE88 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040988, v186);
    __cxa_guard_release(&qword_2A174BE90);
  }

  if (*a3 == qword_2A174BE88)
  {
    v42 = sub_29ACE5A20(a1);
    v43 = sub_29ACE5A20(a2);
    v44 = 1.0 - a5;
    v45 = v44 * v42[1].f64[0] + v43[1].f64[0] * a5;
    *(&v230 + 1) = &off_2A20428F8 + 2;
    v225 = vaddq_f64(vmulq_n_f64(*v42, v44), vmulq_n_f64(*v43, a5));
    v13 = operator new(0x20uLL);
    *v13 = v225;
    *(v13 + 2) = v45;
    v14 = (v13 + 24);
    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A174BEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEA0))
  {
    qword_2A174BE98 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421E8, v187);
    __cxa_guard_release(&qword_2A174BEA0);
  }

  if (*a3 == qword_2A174BE98)
  {
    v46 = sub_29A1952C8(a1);
    v47 = sub_29A1952C8(a2);
    sub_29A1948F8(&v230, *v46);
    if (v230)
    {
      v48 = 0;
      v49 = 0;
      v209 = 1.0 - a5;
      v213 = a5;
      do
      {
        v50 = (v46[4] + v48);
        v51 = (v47[4] + v48);
        v52 = v50[1].f64[0];
        v217 = *v51;
        v226 = *v50;
        v53 = v51[1].f64[0];
        sub_29A194CC8(&v230);
        v54 = (v232 + v48);
        *v54 = vaddq_f64(vmulq_n_f64(v226, v209), vmulq_n_f64(v217, v213));
        v54[1].f64[0] = v209 * v52 + v53 * v213;
        ++v49;
        v48 += 24;
      }

      while (v49 < v230);
    }

    v234 = &off_2A2043530;
    v55 = operator new(0x30uLL);
    v56 = v231;
    *v55 = v230;
    *(v55 + 1) = v56;
    v57 = v232;
    *(v55 + 4) = v232;
    if (v57)
    {
      v58 = (v57 - 16);
      if (*(v55 + 3))
      {
        v58 = *(v55 + 3);
      }

      atomic_fetch_add_explicit(v58, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v55 + 10);
    v233 = v55;
    atomic_fetch_add_explicit(v55 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEB0))
  {
    qword_2A174BEA8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040998, v188);
    __cxa_guard_release(&qword_2A174BEB0);
  }

  if (*a3 == qword_2A174BEA8)
  {
    v59 = sub_29A912E78(a1);
    v60 = sub_29A912E78(a2);
    v61 = 1.0 - a5;
    v62 = v61 * v59[1].f32[0];
    v63 = (v60[1].f32[0] * a5) + v62;
    v64 = vadd_f32(vmul_n_f32(*v60, a5), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v59), v61)));
    *(&v230 + 1) = &off_2A2042840 + 2;
    v13 = operator new(0x10uLL);
    *v13 = v64;
    *(v13 + 2) = v63;
    v14 = (v13 + 12);
    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A174BEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEC0))
  {
    qword_2A174BEB8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421A0, v189);
    __cxa_guard_release(&qword_2A174BEC0);
  }

  if (*a3 == qword_2A174BEB8)
  {
    v65 = sub_29A193BCC(a1);
    v66 = sub_29A193BCC(a2);
    sub_29A193124(&v230, *v65);
    if (v230)
    {
      v67 = 0;
      v68 = 0;
      v218 = 1.0 - a5;
      do
      {
        v69 = (v65[4] + v67);
        v70 = (v66[4] + v67);
        v71 = v69[1].f32[0];
        v72 = *v69;
        v73 = *v70;
        v74 = v70[1].f32[0];
        sub_29A1935CC(&v230);
        v75 = v218 * v71;
        v76 = (v232 + v67);
        *v76 = vadd_f32(vmul_n_f32(v73, a5), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v72), v218)));
        v76[1].f32[0] = (v74 * a5) + v75;
        ++v68;
        v67 += 12;
      }

      while (v68 < v230);
    }

    v234 = &off_2A20433C0;
    v77 = operator new(0x30uLL);
    v78 = v231;
    *v77 = v230;
    *(v77 + 1) = v78;
    v79 = v232;
    *(v77 + 4) = v232;
    if (v79)
    {
      v80 = (v79 - 16);
      if (*(v77 + 3))
      {
        v80 = *(v77 + 3);
      }

      atomic_fetch_add_explicit(v80, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v77 + 10);
    v233 = v77;
    atomic_fetch_add_explicit(v77 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BED0))
  {
    qword_2A174BEC8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409A8, v190);
    __cxa_guard_release(&qword_2A174BED0);
  }

  if (*a3 == qword_2A174BEC8)
  {
    v81 = sub_29ACE5AB4(a1);
    v82 = sub_29ACE5AB4(a2);
    v83 = *v81;
    WORD2(v230) = *(v81 + 2);
    LODWORD(v230) = v83;
    v84 = sub_29A130AC8(&v230, 1.0 - a5);
    v85 = v84[2];
    v86 = *v84;
    v87 = *v82;
    WORD2(v230) = *(v82 + 2);
    LODWORD(v230) = v87;
    v88 = sub_29A130AC8(&v230, a5);
    v89 = *v88;
    WORD2(v233) = v88[2];
    LODWORD(v233) = v89;
    WORD2(v230) = (v86 | (v85 << 32)) >> 32;
    LODWORD(v230) = v86;
    v90 = sub_29A130DE0(&v230, &v233);
    v91 = *v90;
    v92 = v90[2];
    *(&v230 + 1) = &off_2A2042788 + 3;
    WORD2(v230) = v92;
    LODWORD(v230) = v91;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEE0))
  {
    qword_2A174BED8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042158, v191);
    __cxa_guard_release(&qword_2A174BEE0);
  }

  if (*a3 == qword_2A174BED8)
  {
    v93 = sub_29A193090(a1);
    v94 = sub_29A193090(a2);
    sub_29ACE5B48(v93, v94, &v230, a5);
    v234 = &off_2A2043478;
    v95 = operator new(0x30uLL);
    v96 = v231;
    *v95 = v230;
    *(v95 + 1) = v96;
    v97 = v232;
    *(v95 + 4) = v232;
    if (v97)
    {
      v98 = (v97 - 16);
      if (*(v95 + 3))
      {
        v98 = *(v95 + 3);
      }

      atomic_fetch_add_explicit(v98, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v95 + 10);
    v233 = v95;
    atomic_fetch_add_explicit(v95 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEF0))
  {
    qword_2A174BEE8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409C8, v192);
    __cxa_guard_release(&qword_2A174BEF0);
  }

  if (*a3 == qword_2A174BEE8)
  {
    v99 = sub_29ACE5C94(a1);
    v100 = sub_29ACE5C94(a2);
    v101 = a5;
    v102 = 1.0 - a5;
    v103 = &off_2A2042B20 + 2;
LABEL_108:
    *(&v230 + 1) = v103;
    v219 = vaddq_f64(vmulq_n_f64(v99[1], v102), vmulq_n_f64(v100[1], v101));
    v227 = vaddq_f64(vmulq_n_f64(*v99, v102), vmulq_n_f64(*v100, v101));
    v13 = operator new(0x28uLL);
    *v13 = v227;
    *(v13 + 1) = v219;
    v14 = (v13 + 32);
    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A174BF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF00))
  {
    qword_2A174BEF8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421D0, v193);
    __cxa_guard_release(&qword_2A174BF00);
  }

  if (*a3 == qword_2A174BEF8)
  {
    v104 = sub_29A1978C0(a1);
    v105 = sub_29A1978C0(a2);
    sub_29A196EB8(&v230, *v104);
    if (v230)
    {
      v106 = 0;
      v107 = 0;
      v204 = 1.0 - a5;
      v206 = a5;
      do
      {
        v108 = (v104[4] + v106);
        v109 = (v105[4] + v106);
        v220 = v108[1];
        v228 = *v108;
        v210 = *v109;
        v214 = v109[1];
        sub_29A19722C(&v230);
        v110 = (v232 + v106);
        *v110 = vaddq_f64(vmulq_n_f64(v228, v204), vmulq_n_f64(v210, v206));
        v110[1] = vaddq_f64(vmulq_n_f64(v220, v204), vmulq_n_f64(v214, v206));
        ++v107;
        v106 += 32;
      }

      while (v107 < v230);
    }

    v234 = &off_2A2043758;
    v111 = operator new(0x30uLL);
    v112 = v231;
    *v111 = v230;
    *(v111 + 1) = v112;
    v113 = v232;
    *(v111 + 4) = v232;
    if (v113)
    {
      v114 = (v113 - 16);
      if (*(v111 + 3))
      {
        v114 = *(v111 + 3);
      }

      atomic_fetch_add_explicit(v114, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v111 + 10);
    v233 = v111;
    atomic_fetch_add_explicit(v111 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF10))
  {
    qword_2A174BF08 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409D8, v194);
    __cxa_guard_release(&qword_2A174BF10);
  }

  if (*a3 == qword_2A174BF08)
  {
    v115 = sub_29A9FF92C(a1);
    v223 = vaddq_f32(vmulq_n_f32(*sub_29A9FF92C(a2), a5), vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v115), 1.0 - a5)), vmulq_n_f64(vcvt_hight_f64_f32(*v115->f32), 1.0 - a5)));
    *(&v230 + 1) = &off_2A2042A68 + 2;
    v12 = 20;
    goto LABEL_56;
  }

  if ((atomic_load_explicit(&qword_2A174BF20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF20))
  {
    qword_2A174BF18 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042188, v195);
    __cxa_guard_release(&qword_2A174BF20);
  }

  if (*a3 == qword_2A174BF18)
  {
    v116 = sub_29A196258(a1);
    v117 = sub_29A196258(a2);
    sub_29ACE5D28(v116, v117, &v230, a5);
    v234 = &off_2A20435E8;
    v118 = operator new(0x30uLL);
    v119 = v231;
    *v118 = v230;
    *(v118 + 1) = v119;
    v120 = v232;
    *(v118 + 4) = v232;
    if (v120)
    {
      v121 = (v120 - 16);
      if (*(v118 + 3))
      {
        v121 = *(v118 + 3);
      }

      atomic_fetch_add_explicit(v121, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v118 + 10);
    v233 = v118;
    atomic_fetch_add_explicit(v118 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF30))
  {
    qword_2A174BF28 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409E8, v196);
    __cxa_guard_release(&qword_2A174BF30);
  }

  if (*a3 == qword_2A174BF28)
  {
    v122 = sub_29ACE5E08(a1);
    v123 = sub_29ACE5E08(a2);
    *&v230 = *v122;
    v124 = *sub_29A573358(&v230, 1.0 - a5);
    *&v230 = *v123;
    v233 = *sub_29A573358(&v230, a5);
    *&v230 = v124;
    *&v230 = *sub_29A5731B0(&v230, &v233);
    *(&v230 + 1) = &off_2A20429B0 + 3;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF40))
  {
    qword_2A174BF38 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042140, v197);
    __cxa_guard_release(&qword_2A174BF40);
  }

  if (*a3 == qword_2A174BF38)
  {
    v125 = sub_29A1956FC(a1);
    v126 = sub_29A1956FC(a2);
    sub_29ACE5E9C(v125, v126, &v230, a5);
    v234 = &off_2A20436A0;
    v127 = operator new(0x30uLL);
    v128 = v231;
    *v127 = v230;
    *(v127 + 1) = v128;
    v129 = v232;
    *(v127 + 4) = v232;
    if (v129)
    {
      v130 = (v129 - 16);
      if (*(v127 + 3))
      {
        v130 = *(v127 + 3);
      }

      atomic_fetch_add_explicit(v130, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v127 + 10);
    v233 = v127;
    atomic_fetch_add_explicit(v127 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF50))
  {
    qword_2A174BF48 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040848, v198);
    __cxa_guard_release(&qword_2A174BF50);
  }

  if (*a3 == qword_2A174BF48)
  {
    v99 = sub_29ACE5F90(a1);
    v100 = sub_29ACE5F90(a2);
    v101 = a5;
    v103 = &off_2A2042EB8;
    v102 = 1.0 - a5;
    goto LABEL_108;
  }

  if ((atomic_load_explicit(&qword_2A174BF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF60))
  {
    qword_2A174BF58 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042398, v199);
    __cxa_guard_release(&qword_2A174BF60);
  }

  if (*a3 == qword_2A174BF58)
  {
    v131 = sub_29A19B764(a1);
    v132 = sub_29A19B764(a2);
    sub_29A19AD54(&v230, *v131);
    if (v230)
    {
      v133 = 0;
      v134 = 0;
      v205 = 1.0 - a5;
      v207 = a5;
      do
      {
        v135 = (v131[4] + v133);
        v136 = (v132[4] + v133);
        v221 = v135[1];
        v229 = *v135;
        v211 = *v136;
        v215 = v136[1];
        sub_29A19B0C4(&v230);
        v137 = (v232 + v133);
        *v137 = vaddq_f64(vmulq_n_f64(v229, v205), vmulq_n_f64(v211, v207));
        v137[1] = vaddq_f64(vmulq_n_f64(v221, v205), vmulq_n_f64(v215, v207));
        ++v134;
        v133 += 32;
      }

      while (v134 < v230);
    }

    v234 = &off_2A2043AF0;
    v138 = operator new(0x30uLL);
    v139 = v231;
    *v138 = v230;
    *(v138 + 1) = v139;
    v140 = v232;
    *(v138 + 4) = v232;
    if (v140)
    {
      v141 = (v140 - 16);
      if (*(v138 + 3))
      {
        v141 = *(v138 + 3);
      }

      atomic_fetch_add_explicit(v141, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v138 + 10);
    v233 = v138;
    atomic_fetch_add_explicit(v138 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF70))
  {
    qword_2A174BF68 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040858, v200);
    __cxa_guard_release(&qword_2A174BF70);
  }

  if (*a3 == qword_2A174BF68)
  {
    v142 = sub_29ACE6024(a1);
    v143 = sub_29ACE6024(a2);
    v145 = pxrInternal__aapl__pxrReserved__::GfSlerp(v142, a5, v143, v144);
    v147 = v146;
    v149 = v148;
    v151 = v150;
    *(&v230 + 1) = &off_2A2042D48;
    v13 = operator new(0x14uLL);
    *v13 = v145;
    *(v13 + 1) = v147;
    *(v13 + 2) = v149;
    *(v13 + 3) = v151;
    goto LABEL_57;
  }

  if ((atomic_load_explicit(&qword_2A174BF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF80))
  {
    qword_2A174BF78 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042380, v201);
    __cxa_guard_release(&qword_2A174BF80);
  }

  if (*a3 == qword_2A174BF78)
  {
    v152 = sub_29A19A110(a1);
    v153 = sub_29A19A110(a2);
    sub_29A199640(&v230, *v152);
    if (v230)
    {
      v155 = 0;
      v156 = 0;
      do
      {
        v157 = pxrInternal__aapl__pxrReserved__::GfSlerp((v152[4] + v155), a5, (v153[4] + v155), v154);
        v159 = v158;
        v161 = v160;
        v163 = v162;
        sub_29A199A70(&v230);
        v164 = (v232 + v155);
        *v164 = v157;
        *(v164 + 1) = v159;
        *(v164 + 2) = v161;
        *(v164 + 3) = v163;
        ++v156;
        v155 += 16;
      }

      while (v156 < v230);
    }

    v234 = &off_2A2043980;
    v165 = operator new(0x30uLL);
    v166 = v231;
    *v165 = v230;
    *(v165 + 1) = v166;
    v167 = v232;
    *(v165 + 4) = v232;
    if (v167)
    {
      v168 = (v167 - 16);
      if (*(v165 + 3))
      {
        v168 = *(v165 + 3);
      }

      atomic_fetch_add_explicit(v168, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v165 + 10);
    v233 = v165;
    atomic_fetch_add_explicit(v165 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF90))
  {
    qword_2A174BF88 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040868, v202);
    __cxa_guard_release(&qword_2A174BF90);
  }

  if (*a3 == qword_2A174BF88)
  {
    v169 = sub_29ACE60B8(a1);
    v170 = sub_29ACE60B8(a2);
    *&v230 = sub_29ACE614C(v169, v170, a5);
    *(&v230 + 1) = &off_2A2042E00 + 1;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BFA0))
  {
    qword_2A174BF98 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042368, v203);
    __cxa_guard_release(&qword_2A174BFA0);
  }

  if (*a3 == qword_2A174BF98)
  {
    v171 = sub_29A1995AC(a1);
    v172 = sub_29A1995AC(a2);
    sub_29A19A1A4(&v230, *v171);
    if (v230)
    {
      v173 = 0;
      v174 = 0;
      do
      {
        v175 = sub_29ACE614C((v171[4] + v173), (v172[4] + v173), a5);
        sub_29A19A5A0(&v230);
        *(v232 + 8 * v174++) = v175;
        v173 += 8;
      }

      while (v174 < v230);
    }

    v234 = &off_2A2043A38;
    v176 = operator new(0x30uLL);
    v177 = v231;
    *v176 = v230;
    *(v176 + 1) = v177;
    v178 = v232;
    *(v176 + 4) = v232;
    if (v178)
    {
      v179 = (v178 - 16);
      if (*(v176 + 3))
      {
        v179 = *(v176 + 3);
      }

      atomic_fetch_add_explicit(v179, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v176 + 10);
    v233 = v176;
    atomic_fetch_add_explicit(v176 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v233);
    sub_29A186B14(&v233);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  if (a5 >= 1.0)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  return sub_29A1854E8(a4, v9);
}

uint64_t sub_29ACE561C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  v70 = *MEMORY[0x29EDCA608];
  result = sub_29A197D6C(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = a4;
    do
    {
      v12 = (a1[4] + v9);
      v13 = *(a2 + 32);
      v14 = *v12;
      v15 = v12[1];
      v16 = v12[3];
      v56 = v12[2];
      v57 = v16;
      v54 = v14;
      v55 = v15;
      v17 = v12[4];
      v18 = v12[5];
      v19 = v12[7];
      v60 = v12[6];
      v61 = v19;
      v58 = v17;
      v59 = v18;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v54, 1.0 - v11);
      v21 = v20[5];
      v66 = v20[4];
      v67 = v21;
      v22 = v20[7];
      v68 = v20[6];
      v69 = v22;
      v23 = v20[1];
      v62 = *v20;
      v63 = v23;
      v24 = v20[3];
      v64 = v20[2];
      v65 = v24;
      v25 = *(v13 + v9);
      v26 = *(v13 + v9 + 16);
      v27 = *(v13 + v9 + 48);
      v56 = *(v13 + v9 + 32);
      v57 = v27;
      v54 = v25;
      v55 = v26;
      v28 = *(v13 + v9 + 64);
      v29 = *(v13 + v9 + 80);
      v30 = *(v13 + v9 + 112);
      v60 = *(v13 + v9 + 96);
      v61 = v30;
      v58 = v28;
      v59 = v29;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v54, v11);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[3];
      v53[2] = v31[2];
      v53[3] = v34;
      v53[0] = v32;
      v53[1] = v33;
      v35 = v31[4];
      v36 = v31[5];
      v37 = v31[7];
      v53[6] = v31[6];
      v53[7] = v37;
      v53[4] = v35;
      v53[5] = v36;
      v49 = v66;
      v50 = v67;
      v51 = v68;
      v52 = v69;
      v45 = v62;
      v46 = v63;
      v47 = v64;
      v48 = v65;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(&v45, v53);
      result = sub_29A198240(a3);
      v38 = (a3[4] + v9);
      v39 = v45;
      v40 = v46;
      v41 = v48;
      v38[2] = v47;
      v38[3] = v41;
      v42 = v52;
      v44 = v49;
      v43 = v50;
      v38[6] = v51;
      v38[7] = v42;
      v38[4] = v44;
      v38[5] = v43;
      *v38 = v39;
      v38[1] = v40;
      ++v10;
      v9 += 128;
    }

    while (v10 < *a3);
  }

  return result;
}

void **sub_29ACE5804(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD4E0(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2d>::Invoke, &stru_2A2040948);
  }
}

void **sub_29ACE5898(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD158(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2h>::Invoke, &stru_2A2040968);
  }
}

uint64_t sub_29ACE592C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A191640(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = *(a2 + 32);
      v14 = *(a1[4] + 4 * v9);
      v12 = *sub_29A56E160(&v14, 1.0 - v10);
      v14 = *(v11 + 4 * v9);
      v13 = *sub_29A56E160(&v14, v10);
      v14 = v12;
      LODWORD(v11) = *sub_29A56E070(&v14, &v13);
      result = sub_29A191A40(a3);
      *(a3[4] + 4 * v9++) = v11;
    }

    while (v9 < *a3);
  }

  return result;
}

void **sub_29ACE5A20(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FE138(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3d>::Invoke, &stru_2A2040988);
  }
}

void **sub_29ACE5AB4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FDC80(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3h>::Invoke, &stru_2A20409A8);
  }
}

uint64_t sub_29ACE5B48@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A193C60(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = a4;
    do
    {
      v12 = (a1[4] + v9);
      v13 = *(a2 + 32);
      v14 = *v12;
      v29 = *(v12 + 2);
      v28 = v14;
      v15 = sub_29A130AC8(&v28, 1.0 - v11);
      v16 = (v13 + v9);
      v17 = v15[2];
      v18 = *v15;
      v19 = *v16;
      v29 = *(v16 + 2);
      v28 = v19;
      v20 = sub_29A130AC8(&v28, v11);
      v21 = *v20;
      v27 = v20[2];
      v26 = v21;
      v29 = (v18 | (v17 << 32)) >> 32;
      v28 = v18;
      v22 = sub_29A130DE0(&v28, &v26);
      v23 = v22[2];
      v24 = *v22;
      result = sub_29A1940CC(a3);
      v25 = a3[4] + v9;
      *(v25 + 4) = (v24 | (v23 << 32)) >> 32;
      *v25 = v24;
      ++v10;
      v9 += 6;
    }

    while (v10 < *a3);
  }

  return result;
}

void **sub_29ACE5C94(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FED30(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4d>::Invoke, &stru_2A20409C8);
  }
}

float32x4_t sub_29ACE5D28@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  sub_29A195790(a3, *a1);
  if (*a3)
  {
    v8 = 0;
    do
    {
      v10 = *(*(a2 + 32) + 16 * v8);
      v11 = *(a1[4] + 16 * v8);
      sub_29A195BC4(a3);
      result = vaddq_f32(vmulq_n_f32(v10, a4), vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v11.f32), 1.0 - a4)), vmulq_n_f64(vcvt_hight_f64_f32(v11), 1.0 - a4)));
      *(a3[4] + 16 * v8++) = result;
    }

    while (v8 < *a3);
  }

  return result;
}

void **sub_29ACE5E08(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FE8A4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4h>::Invoke, &stru_2A20409E8);
  }
}

uint64_t sub_29ACE5E9C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A1962EC(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = *(a2 + 32);
      v15 = *(a1[4] + 8 * v9);
      v12 = *sub_29A573358(&v15, 1.0 - v10);
      v15 = *(v11 + 8 * v9);
      v14 = *sub_29A573358(&v15, v10);
      v15 = v12;
      v13 = *sub_29A5731B0(&v15, &v14);
      result = sub_29A1966EC(a3);
      *(a3[4] + 8 * v9++) = v13;
    }

    while (v9 < *a3);
  }

  return result;
}

void **sub_29ACE5F90(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FCAF4(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuatd>::Invoke, &stru_2A2040848);
  }
}

void **sub_29ACE6024(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FC86C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuatf>::Invoke, &stru_2A2040858);
  }
}

void **sub_29ACE60B8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FC630(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuath>::Invoke, &stru_2A2040868);
  }
}

uint64_t sub_29ACE614C(uint64_t *a1, uint64_t *a2, double a3)
{
  v6 = 1.0 - a3;
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  v13 = *a1;
  v8 = *sub_29A130000(&v13, v7);
  v9 = a3;
  if (v9 == 0.0)
  {
    v10 = HIWORD(LODWORD(v9));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23])
  {
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23] + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  v13 = *a2;
  v12 = *sub_29A130000(&v13, v10);
  v13 = v8;
  return *sub_29A130D48(&v13, &v12);
}

void pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType::~HdTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *this)
{
  v88 = (this + 696);
  sub_29A124AB0(&v88);
  v2 = *(this + 86);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 85);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 84);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 83);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 82);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 81);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 80);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 79);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 78);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 77);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 76);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 75);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 74);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 73);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 72);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 71);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 70);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 69);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 68);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 67);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 66);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 65);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 64);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 63);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 62);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 61);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 60);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 59);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 58);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 57);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 56);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 55);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 54);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 53);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 52);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 51);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 50);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 49);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 48);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 47);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(this + 46);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(this + 45);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(this + 44);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(this + 43);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(this + 42);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(this + 41);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(this + 40);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(this + 39);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(this + 38);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(this + 37);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(this + 36);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(this + 35);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(this + 34);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(this + 33);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(this + 32);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(this + 31);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(this + 30);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(this + 29);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(this + 28);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(this + 27);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(this + 26);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(this + 25);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(this + 24);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(this + 23);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(this + 22);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(this + 21);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(this + 20);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(this + 19);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(this + 18);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(this + 17);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(this + 16);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(this + 15);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(this + 14);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(this + 13);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(this + 12);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(this + 11);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(this + 10);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(this + 9);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(this + 8);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(this + 7);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(this + 6);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = *(this + 5);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = *(this + 4);
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = *(this + 3);
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = *(this + 2);
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = *(this + 1);
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType::HdTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *this)
{
  v181 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "accelerations", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "adjacency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "angularVelocities", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "bboxLocalMin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "bboxLocalMax", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "bbox", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "bezier", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "bspline", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "blurScale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "catmullRom", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "centripetalCatmullRom", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "collection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "computeShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "coordSysBindings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "cubic", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "cullStyle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "doubleSided", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "dispatchCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "displayColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "displayOpacity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "displayStyle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "drawDispatch", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "drawingShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "drawingCoord0", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "drawingCoord1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "drawingCoord2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "drawingCoordI", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 224, "drivers", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 232, "edgeIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 240, "elementCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 248, "elementsVisibility", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 256, "extent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 264, "faceColors", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 272, "filters", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 280, "full", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 288, "geometry", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 296, "hermite", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 304, "hullIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 312, "indices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 320, "isFlipped", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 328, "itemsDrawn", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 336, "layout", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 344, "leftHanded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 352, "linear", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 360, "lightLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 368, "filterLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 376, "lightFilterLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 384, "lightFilterType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 392, "meshLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 400, "materialParams", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 408, "materialSyncMode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 416, "nonlinearSampleCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 424, "nonperiodic", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 432, "normals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 440, "params", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 448, "patchParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 456, "periodic", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 464, "pinned", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 472, "points", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 480, "pointsIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 488, "portals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 496, "power", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 504, "preview", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 512, "pointsVisibility", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 520, "primvar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 528, "primID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 536, "primitiveParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 544, "tessFactors", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 552, "quadInfo", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 560, "renderTags", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 568, "rightHanded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 576, "segmented", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 584, "shadowLink", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 592, "subdivTags", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 600, "taskState", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 608, "taskParams", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 616, "topology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 624, "topologyVisibility", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 632, "totalItemCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 640, "transform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 648, "transformInverse", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 656, "velocities", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 664, "visibility", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 672, "widths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 680, "isLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 688, "bspline", 0);
  v3 = *this;
  v94 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v95 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v96 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v97 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v98 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v98 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v99 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v99 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v100 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v101 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v102 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v103 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v104 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v104 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v105 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v106 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v107 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v107 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v108 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v109 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v109 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v110 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v110 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v111 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v111 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v112 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v113 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v113 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v114 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v115 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v115 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v116 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v116 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v117 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v117 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v118 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v118 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v119 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v119 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v120 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v120 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v121 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v121 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v122 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v122 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v123 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v123 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v124 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v124 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v125 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v125 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v126 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v126 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v127 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v127 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v128 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v128 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v129 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v129 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v130 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v130 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v131 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v131 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v132 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v132 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v133 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v133 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v134 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v134 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v135 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v135 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v136 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v136 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = *(this + 43);
  v137 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v137 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = *(this + 44);
  v138 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v138 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = *(this + 45);
  v139 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v139 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = *(this + 46);
  v140 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v140 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = *(this + 47);
  v141 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v141 &= 0xFFFFFFFFFFFFFFF8;
  }

  v51 = *(this + 48);
  v142 = v51;
  if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v142 &= 0xFFFFFFFFFFFFFFF8;
  }

  v52 = *(this + 49);
  v143 = v52;
  if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v143 &= 0xFFFFFFFFFFFFFFF8;
  }

  v53 = *(this + 50);
  v144 = v53;
  if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v144 &= 0xFFFFFFFFFFFFFFF8;
  }

  v54 = *(this + 51);
  v145 = v54;
  if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v145 &= 0xFFFFFFFFFFFFFFF8;
  }

  v55 = *(this + 52);
  v146 = v55;
  if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v146 &= 0xFFFFFFFFFFFFFFF8;
  }

  v56 = *(this + 53);
  v147 = v56;
  if ((v56 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v147 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = *(this + 54);
  v148 = v57;
  if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v148 &= 0xFFFFFFFFFFFFFFF8;
  }

  v58 = *(this + 55);
  v149 = v58;
  if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v149 &= 0xFFFFFFFFFFFFFFF8;
  }

  v59 = *(this + 56);
  v150 = v59;
  if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v150 &= 0xFFFFFFFFFFFFFFF8;
  }

  v60 = *(this + 57);
  v151 = v60;
  if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v151 &= 0xFFFFFFFFFFFFFFF8;
  }

  v61 = *(this + 58);
  v152 = v61;
  if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v152 &= 0xFFFFFFFFFFFFFFF8;
  }

  v62 = *(this + 59);
  v153 = v62;
  if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v153 &= 0xFFFFFFFFFFFFFFF8;
  }

  v63 = *(this + 60);
  v154 = v63;
  if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v154 &= 0xFFFFFFFFFFFFFFF8;
  }

  v64 = *(this + 61);
  v155 = v64;
  if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v155 &= 0xFFFFFFFFFFFFFFF8;
  }

  v65 = *(this + 62);
  v156 = v65;
  if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v156 &= 0xFFFFFFFFFFFFFFF8;
  }

  v66 = *(this + 63);
  v157 = v66;
  if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v157 &= 0xFFFFFFFFFFFFFFF8;
  }

  v67 = *(this + 64);
  v158 = v67;
  if ((v67 & 7) != 0 && (atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v158 &= 0xFFFFFFFFFFFFFFF8;
  }

  v68 = *(this + 65);
  v159 = v68;
  if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v159 &= 0xFFFFFFFFFFFFFFF8;
  }

  v69 = *(this + 66);
  v160 = v69;
  if ((v69 & 7) != 0 && (atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v160 &= 0xFFFFFFFFFFFFFFF8;
  }

  v70 = *(this + 67);
  v161 = v70;
  if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v161 &= 0xFFFFFFFFFFFFFFF8;
  }

  v71 = *(this + 68);
  v162 = v71;
  if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v162 &= 0xFFFFFFFFFFFFFFF8;
  }

  v72 = *(this + 69);
  v163 = v72;
  if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v163 &= 0xFFFFFFFFFFFFFFF8;
  }

  v73 = *(this + 70);
  v164 = v73;
  if ((v73 & 7) != 0 && (atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v164 &= 0xFFFFFFFFFFFFFFF8;
  }

  v74 = *(this + 71);
  v165 = v74;
  if ((v74 & 7) != 0 && (atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v165 &= 0xFFFFFFFFFFFFFFF8;
  }

  v75 = *(this + 72);
  v166 = v75;
  if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v166 &= 0xFFFFFFFFFFFFFFF8;
  }

  v76 = *(this + 73);
  v167 = v76;
  if ((v76 & 7) != 0 && (atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v167 &= 0xFFFFFFFFFFFFFFF8;
  }

  v77 = *(this + 74);
  v168 = v77;
  if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v168 &= 0xFFFFFFFFFFFFFFF8;
  }

  v78 = *(this + 75);
  v169 = v78;
  if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v169 &= 0xFFFFFFFFFFFFFFF8;
  }

  v79 = *(this + 76);
  v170 = v79;
  if ((v79 & 7) != 0 && (atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v170 &= 0xFFFFFFFFFFFFFFF8;
  }

  v80 = *(this + 77);
  v171 = v80;
  if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v171 &= 0xFFFFFFFFFFFFFFF8;
  }

  v81 = *(this + 78);
  v172 = v81;
  if ((v81 & 7) != 0 && (atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v172 &= 0xFFFFFFFFFFFFFFF8;
  }

  v82 = *(this + 79);
  v173 = v82;
  if ((v82 & 7) != 0 && (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v173 &= 0xFFFFFFFFFFFFFFF8;
  }

  v83 = *(this + 80);
  v174 = v83;
  if ((v83 & 7) != 0 && (atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v174 &= 0xFFFFFFFFFFFFFFF8;
  }

  v84 = *(this + 81);
  v175 = v84;
  if ((v84 & 7) != 0 && (atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v175 &= 0xFFFFFFFFFFFFFFF8;
  }

  v85 = *(this + 82);
  v176 = v85;
  if ((v85 & 7) != 0 && (atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v176 &= 0xFFFFFFFFFFFFFFF8;
  }

  v86 = *(this + 83);
  v177 = v86;
  if ((v86 & 7) != 0 && (atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v177 &= 0xFFFFFFFFFFFFFFF8;
  }

  v87 = *(this + 84);
  v178 = v87;
  if ((v87 & 7) != 0 && (atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v178 &= 0xFFFFFFFFFFFFFFF8;
  }

  v88 = *(this + 85);
  v179 = v88;
  if ((v88 & 7) != 0 && (atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v179 &= 0xFFFFFFFFFFFFFFF8;
  }

  v89 = (this + 696);
  v90 = *(this + 86);
  v180 = v90;
  if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v180 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v89 = 0;
  *(this + 88) = 0;
  *(this + 89) = 0;
  sub_29A12EF7C(v89, &v94, &v181, 0x57uLL);
  for (i = 688; i != -8; i -= 8)
  {
    v92 = *(&v94 + i);
    if ((v92 & 7) != 0)
    {
      atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACE81E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23)
{
  v33 = 688;
  while (1)
  {
    v34 = *(v29 + v33);
    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v33 -= 8;
    if (v33 == -8)
    {
      if ((*v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a9 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a21 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a22 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a23 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v23[63];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v23[62];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v23[61];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v23[60];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v23[59];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v23[58];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v23[57];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v23[56];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v23[55];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v23[54];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v23[53];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v23[52];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v23[51];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v23[50];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v23[49];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v23[48];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v23[47];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v23[46];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v23[45];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v23[44];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v23[43];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v23[42];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v23[41];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v58 = v23[40];
      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v59 = v23[39];
      if ((v59 & 7) != 0)
      {
        atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v60 = v23[38];
      if ((v60 & 7) != 0)
      {
        atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v61 = v23[37];
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v62 = v23[36];
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v63 = v23[35];
      if ((v63 & 7) != 0)
      {
        atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v64 = v23[34];
      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v65 = v23[33];
      if ((v65 & 7) != 0)
      {
        atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v66 = v23[32];
      if ((v66 & 7) != 0)
      {
        atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v67 = v23[31];
      if ((v67 & 7) != 0)
      {
        atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v68 = v23[30];
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v69 = v23[29];
      if ((v69 & 7) != 0)
      {
        atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v70 = v23[28];
      if ((v70 & 7) != 0)
      {
        atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v71 = v23[27];
      if ((v71 & 7) != 0)
      {
        atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v72 = v23[26];
      if ((v72 & 7) != 0)
      {
        atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v73 = v23[25];
      if ((v73 & 7) != 0)
      {
        atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v74 = v23[24];
      if ((v74 & 7) != 0)
      {
        atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v75 = v23[23];
      if ((v75 & 7) != 0)
      {
        atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v76 = v23[22];
      if ((v76 & 7) != 0)
      {
        atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v77 = v23[21];
      if ((v77 & 7) != 0)
      {
        atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v78 = v23[20];
      if ((v78 & 7) != 0)
      {
        atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v79 = v23[19];
      if ((v79 & 7) != 0)
      {
        atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v80 = v23[18];
      if ((v80 & 7) != 0)
      {
        atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v81 = v23[17];
      if ((v81 & 7) != 0)
      {
        atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v82 = v23[16];
      if ((v82 & 7) != 0)
      {
        atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v83 = v23[15];
      if ((v83 & 7) != 0)
      {
        atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v84 = v23[14];
      if ((v84 & 7) != 0)
      {
        atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v85 = v23[13];
      if ((v85 & 7) != 0)
      {
        atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v86 = v23[12];
      if ((v86 & 7) != 0)
      {
        atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v87 = v23[11];
      if ((v87 & 7) != 0)
      {
        atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v88 = v23[10];
      if ((v88 & 7) != 0)
      {
        atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v89 = v23[9];
      if ((v89 & 7) != 0)
      {
        atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v90 = v23[8];
      if ((v90 & 7) != 0)
      {
        atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v91 = v23[7];
      if ((v91 & 7) != 0)
      {
        atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v92 = v23[6];
      if ((v92 & 7) != 0)
      {
        atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v93 = v23[5];
      if ((v93 & 7) != 0)
      {
        atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v94 = v23[4];
      if ((v94 & 7) != 0)
      {
        atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v95 = v23[3];
      if ((v95 & 7) != 0)
      {
        atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v96 = v23[2];
      if ((v96 & 7) != 0)
      {
        atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v97 = v23[1];
      if ((v97 & 7) != 0)
      {
        atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType::~HdInstancerTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType::HdInstancerTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "culledInstanceIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "instancer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "instancerTransform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "instancerTransformInverse", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "instanceIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "instanceIndexBase", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "hydra:instanceTransforms", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "hydra:instanceRotations", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "hydra:instanceScales", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "hydra:instanceTranslations", 0);
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

void sub_29ACE8FCC(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType::~HdReprTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *this)
{
  v10 = (this + 72);
  sub_29A124AB0(&v10);
  v2 = *(this + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType::HdReprTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "disabled", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "hull", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "points", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "smoothHull", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "refined", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "refinedWire", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "refinedWireOnSurf", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "wire", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "wireOnSurf", 0);
  v3 = (this + 72);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v5;
    }
  }

  v6 = *(this + 1);
  v26 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v7;
    }
  }

  v8 = *(this + 2);
  v27 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v9;
    }
  }

  v10 = *(this + 3);
  v28 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v11;
    }
  }

  v12 = *(this + 4);
  v29 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v13;
    }
  }

  v14 = *(this + 5);
  v30 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v15;
    }
  }

  v16 = *(this + 6);
  v31 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v17;
    }
  }

  v18 = *(this + 7);
  v32 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v19;
    }
  }

  v20 = *(this + 8);
  v33 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v21;
    }
  }

  *v3 = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  sub_29A12EF7C(v3, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACE94BC(_Unwind_Exception *a1)
{
  v3 = 64;
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
      v5 = v1[8];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType::~HdCullStyleTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType::HdCullStyleTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "dontCare", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "nothing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "back", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "front", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "backUnlessDoubleSided", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "frontUnlessDoubleSided", 0);
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

void sub_29ACE98A0(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType::~HdPerfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *this)
{
  v40 = (this + 312);
  sub_29A124AB0(&v40);
  v2 = *(this + 38);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 37);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 36);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 35);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 34);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 33);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 32);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 31);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 30);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 29);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 28);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 27);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 26);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 25);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 24);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 23);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 22);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 21);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 20);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 19);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 18);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 17);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 16);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 15);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 14);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 13);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 12);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 11);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 10);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 9);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 8);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 7);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 6);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 5);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 4);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 3);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 2);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 1);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType::HdPerfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *this)
{
  v84 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "adjacencyBufSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "basisCurvesTopology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "bufferSourcesResolved", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "bufferArrayRangeMigrated", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "bufferArrayRangeContainerResized", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "computationsCommited", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "drawBatches", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "drawCalls", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "dirtyLists", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "dirtyListsRebuilt", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "garbageCollected", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "garbageCollectedSsbo", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "garbageCollectedUbo", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "garbageCollectedVbo", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "gpuMemoryUsed", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "instBasisCurvesTopology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "instBasisCurvesTopologyRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "instExtComputationDataRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "instMeshTopology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "instMeshTopologyRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "instPrimvarRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "instVertexAdjacency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "meshTopology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "nonUniformSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "numCompletedSamples", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "quadrangulateCPU", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "quadrangulateGPU", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "quadrangulateFaceVarying", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 224, "quadrangulatedVerts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 232, "rebuildBatches", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 240, "singleBufferSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 248, "ssboSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 256, "skipInvisibleRprimSync", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 264, "subdivisionRefineCPU", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 272, "subdivisionRefineGPU", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 280, "textureMemory", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 288, "triangulateFaceVarying", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 296, "uboSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 304, "vboRelocated", 0);
  v3 = *this;
  v45 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v46 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v47 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v48 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v49 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v50 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v51 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v52 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v53 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v54 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v55 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v56 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v57 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v58 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v59 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v60 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v61 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v62 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v63 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v64 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v65 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v66 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v67 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v68 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v69 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v70 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v71 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v72 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v73 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v74 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v75 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v76 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v77 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v78 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v79 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v80 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v81 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v82 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v83 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  sub_29A12EF7C(this + 39, &v45, &v84, 0x27uLL);
  for (i = 304; i != -8; i -= 8)
  {
    v43 = *(&v45 + i);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEA7C0(_Unwind_Exception *a1)
{
  v3 = 304;
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
      v5 = v1[38];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[37];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[36];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[35];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[34];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[33];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[32];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[31];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[30];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[29];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[28];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[27];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[26];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[25];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[24];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[23];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[22];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[21];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[20];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[19];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[18];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[17];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[16];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[15];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[14];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[13];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[12];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[11];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[10];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[9];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[8];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[7];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[6];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[5];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[4];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[3];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[2];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[1];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType::~HdShaderTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *this)
{
  v35 = (this + 272);
  sub_29A124AB0(&v35);
  v2 = *(this + 33);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 31);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 30);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 29);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 28);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 27);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 26);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 25);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 24);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 23);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 22);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 21);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 20);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 19);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 18);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 17);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 16);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 15);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 14);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 13);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 12);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 11);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 10);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 9);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 8);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 7);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 6);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 5);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 4);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 3);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 2);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 1);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType::HdShaderTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *this)
{
  v74 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "alphaThreshold", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "clipPlanes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "commonShaderSource", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "computeShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "cullStyle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "drawRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "environmentMap", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "displacementShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "fragmentShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "geometryShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "imageToWorldMatrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "imageToHorizontallyNormalizedFilmback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "indicatorColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "lightingBlendAmount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "overrideColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "maskColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "projectionMatrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "pointColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "pointSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "pointSelectedSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "materialTag", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "numClipPlanes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "tessControlShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "tessEvalShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "postTessControlShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "postTessVertexShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "tessLevel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "viewport", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 224, "vertexShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 232, "wireframeColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 240, "worldToViewMatrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 248, "worldToViewInverseMatrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 256, "stepSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 264, "stepSizeLighting", 0);
  v3 = *this;
  v40 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v41 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v42 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v43 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v44 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v45 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v46 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v47 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v48 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v49 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v50 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v51 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v52 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v53 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v54 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v55 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v56 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v57 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v58 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v59 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v60 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v61 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v62 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v63 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v64 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v65 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v66 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v67 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v68 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v69 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v70 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v71 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v72 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v73 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  sub_29A12EF7C(this + 34, &v40, &v74, 0x22uLL);
  for (i = 264; i != -8; i -= 8)
  {
    v38 = *(&v40 + i);
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEB8C4(_Unwind_Exception *a1)
{
  v3 = 264;
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
      v5 = v1[33];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[32];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[31];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[30];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[29];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[28];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[27];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[26];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[25];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[24];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[23];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[22];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[21];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[20];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[19];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[18];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[17];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[16];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[15];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[14];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[13];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[12];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[11];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[10];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[9];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[8];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[7];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[6];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[5];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[4];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[3];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[2];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[1];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType::~HdRenderTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType::HdRenderTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "geometry", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "guide", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "hidden", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "proxy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "render", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "widget", 0);
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

void sub_29ACEBF64(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType::~HdRenderContextTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType::HdRenderContextTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "", 0);
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

void pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType::~HdMaterialTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType::HdMaterialTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "defaultMaterialTag", 0);
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

void pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType::~HdMaterialTerminalTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType::HdMaterialTerminalTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "surface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "displacement", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "volume", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "light", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "lightFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "imageShader", 0);
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

void sub_29ACEC634(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType::~HdModelDrawModeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType::HdModelDrawModeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "inherited", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "origin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "bounds", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "cards", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "default", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "cross", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "box", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "fromTexture", 0);
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

void sub_29ACECA64(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType::~HdOptionTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType::HdOptionTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "parallelRprimSync", 0);
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

void pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType::~HdLightTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType::HdLightTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "cylinderLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "diskLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "distantLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "domeLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "light", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "meshLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "pluginLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "rectLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "simpleLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "sphereLight", 0);
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

void sub_29ACED10C(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType::~HdLightFilterTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType::HdLightFilterTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "lightFilter", 0);
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

void pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType::~HdRprimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType *this)
{
  v18 = (this + 136);
  sub_29A124AB0(&v18);
  v2 = *(this + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 15);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 14);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 13);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 12);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 11);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 10);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 9);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 8);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 7);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 6);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 5);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 4);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 3);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 2);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 1);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType::HdRprimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "capsule", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "capsule_1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "cone", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "cube", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "cylinder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "cylinder_1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "geomSubset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "mesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "tetMesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "nurbsPatch", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "basisCurves", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "nurbsCurves", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "plane", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "points", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "sphere", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "volume", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "model", 0);
  v3 = (this + 136);
  v4 = *this;
  v24 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v25 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v26 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v27 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v28 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v29 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v30 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v31 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v32 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v34 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v35 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v36 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v37 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v38 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v39 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v40 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  sub_29A12EF7C(v3, &v24, &v41, 0x11uLL);
  for (i = 128; i != -8; i -= 8)
  {
    v22 = *(&v24 + i);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEDAA4(_Unwind_Exception *a1)
{
  v3 = 128;
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
      v5 = v1[16];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

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

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType::~HdSprimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType *this)
{
  v23 = (this + 176);
  sub_29A124AB0(&v23);
  v2 = *(this + 21);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 20);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 19);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 18);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 17);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 16);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 15);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 14);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 13);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 12);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 11);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 10);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 9);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 8);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 7);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 6);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 5);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 4);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 3);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 2);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 1);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType::HdSprimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType *this)
{
  v51 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "drawTarget", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "material", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "coordSys", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "instancer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "instance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "integrator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "sampleFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "displayFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "imageShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "cylinderLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "diskLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "distantLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "domeLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "light", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "meshLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "pluginLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "rectLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "simpleLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "sphereLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "lightFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "extComputation", 0);
  v3 = (this + 176);
  v4 = *this;
  v29 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v30 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v31 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v32 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v33 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v34 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v35 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v36 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v37 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v38 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v39 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v40 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v41 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v42 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v43 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v44 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v45 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v46 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v47 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v48 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v49 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 21);
  v50 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  sub_29A12EF7C(v3, &v29, &v51, 0x16uLL);
  for (i = 168; i != -8; i -= 8)
  {
    v27 = *(&v29 + i);
    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEE518(_Unwind_Exception *a1)
{
  v3 = 168;
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
      v5 = v1[21];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[20];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[19];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[18];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[17];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[16];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[15];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[14];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[13];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[12];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[11];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[10];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[9];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[8];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[7];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[6];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[5];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[4];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[3];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[2];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[1];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdBprimTypeTokens_StaticTokenType::~HdBprimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdBprimTypeTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdBprimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdBprimTypeTokens_StaticTokenType::HdBprimTypeTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "renderBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "renderSettings", 0);
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

void sub_29ACEE928(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType::~HdPrimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *this)
{
  v44 = (this + 344);
  sub_29A124AB0(&v44);
  v2 = *(this + 42);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 41);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 40);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 39);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 38);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 37);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 36);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 35);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 34);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 33);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 32);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 31);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 30);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 29);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 28);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 27);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 26);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 25);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 24);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 23);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 22);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 21);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 20);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 19);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 18);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 17);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 16);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 15);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 14);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 13);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 12);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 11);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 10);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 9);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 8);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 7);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 6);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 5);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 4);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 3);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(this + 2);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(this + 1);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}