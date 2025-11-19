void sub_29AD120FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_29AC877F8(&a14);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::HdGpGenerativeProceduralFilteringSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void sub_29AD12270(uint64_t a1, ...)
{
  va_start(va, a1);
  v2 = v1[22];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = v1[21];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A124AB0(va);
  sub_29AC113C4(v1, v4);
}

void sub_29AD1244C(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = v1[22];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A124AB0(va);
  sub_29AC113C4(v1, v4);
}

void *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  result = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::_ShouldSkipPrim(this, a3);
  if (result == 1)
  {
    v8 = 184;
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v8 = 176;
  }

  return sub_29A166F2C(a3, (this + v8));
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::_ShouldSkipPrim(void *a1, void *a2)
{
  if ((a1[21] ^ *a2) > 7)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::_GetProceduralType(a2, &v7);
  v4 = a1[18];
  v5 = a1[19];
  if (v4 == v5)
  {
LABEL_9:
    result = 1;
  }

  else
  {
    while (1)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
      if (!v6)
      {
        v6 = sub_29AD12C2C(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
      }

      if ((*(v6 + 4) ^ *v4) < 8 || (v7 ^ *v4) < 8)
      {
        break;
      }

      if (++v4 == v5)
      {
        goto LABEL_9;
      }
    }

    result = 2;
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::_PrimsAdded(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = *a3;
  if (*(a3 + 260) < 0x11u)
  {
    v4 = a3;
  }

  v5 = *(a3 + 256);
  if (v5)
  {
    v6 = (v4 + 8);
    v7 = 16 * v5;
    while ((a1[21] ^ *v6) >= 8)
    {
      v6 += 2;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v9 = v16;
    sub_29AD12CB8(v16, a3);
    if (v18 >= 0x11)
    {
      v9 = v16[0];
    }

    if (v17)
    {
      v10 = 16 * v17;
      while (1)
      {
        v11 = sub_29AC1199C(a1 + 14);
        (*(*v11 + 16))(v14);
        ShouldSkipPrim = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::_ShouldSkipPrim(a1, v14);
        v13 = a1 + 23;
        if (ShouldSkipPrim == 1)
        {
          goto LABEL_17;
        }

        if (ShouldSkipPrim == 2)
        {
          break;
        }

LABEL_18:
        if (v15)
        {
          sub_29A014BEC(v15);
        }

        if ((v14[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v14[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v9 += 2;
        v10 -= 16;
        if (!v10)
        {
          goto LABEL_23;
        }
      }

      v13 = a1 + 22;
LABEL_17:
      sub_29A166F2C(v9 + 1, v13);
      goto LABEL_18;
    }

LABEL_23:
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v16);
    return sub_29AC263E4(v16);
  }

  else
  {
LABEL_7:

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, a3);
  }
}

void sub_29AD1289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29AC263E4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralFilteringSceneIndex::_GetProceduralType(uint64_t a1@<X1>, atomic_uint **a2@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent((a1 + 8), &v9);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
  if (!v3)
  {
    v3 = sub_29AD12C2C(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&v9, v3 + 3, &v11);
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetPrimvarValue(&v11, &v7);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v7)
  {
    (*(*v7 + 16))(&v11, 0.0);
    if (sub_29A1FA710(&v11))
    {
      if ((v12 & 4) != 0)
      {
        v4 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(&v11);
      }

      else
      {
        v4 = &v11;
      }

      v5 = *v4;
      *a2 = *v4;
      if ((v5 & 7) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a2 = v6;
        }
      }

      sub_29A186B14(&v11);
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      goto LABEL_18;
    }

    sub_29A186B14(&v11);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  *a2 = 0;
LABEL_18:
  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29AD12A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, char a14, uint64_t a15)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD12AB8(uint64_t a1)
{
  v2 = *(a1 + 184);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 176);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 168);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = (a1 + 144);
  sub_29A124AB0(&v6);
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v5);
  sub_29ABD4DDC();
}

void sub_29AD12B70(uint64_t a1)
{
  v2 = *(a1 + 184);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 176);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 168);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = (a1 + 144);
  sub_29A124AB0(&v6);
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v5);
  sub_29ABD4DDC();
}

pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType *sub_29AD12C2C(atomic_ullong *a1)
{
  result = sub_29AD12C74();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType::~HdGpGenerativeProceduralTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType *sub_29AD12C74()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType::HdGpGenerativeProceduralTokens_StaticTokenType(v0);
  return v0;
}

_DWORD *sub_29AD12CB8(_DWORD *a1, uint64_t a2)
{
  a1[65] = 16;
  v4 = *(a2 + 256);
  v5 = a1;
  if (v4 >= 0x11)
  {
    v5 = malloc(16 * v4);
    *a1 = v5;
    a1[65] = v4;
  }

  a1[64] = v4;
  if (*(a2 + 260) >= 0x11u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  sub_29AC3D7EC(v6, v6 + 16 * *(a2 + 256), v5);
  return a1;
}

const pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_ConstructProcedural(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::GetInstance(this);

  return pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::ConstructProcedural(Instance, this, a2);
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::HdGpGenerativeProceduralResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void sub_29AD12E9C()
{
  std::mutex::~mutex(v0 + 22);
  std::mutex::~mutex(v0 + 21);
  sub_29AD17170(&v0[12].__m_.__opaque[8], v3);
  sub_29AD196D0(v2);
  sub_29AD172EC(&v0[2].__m_.__opaque[48], v4);
  sub_29AD19558(v1);
  sub_29AC113C4(v0, v5);
}

void sub_29AD13008()
{
  sub_29AD196D0(v2);
  sub_29AD172EC((v0 + 23), v3);
  sub_29AD19558(v1);
  sub_29AC113C4(v0, v4);
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AD19798(this + 784, a2, v12);
  if (v12[0])
  {
    v6 = 0;
  }

  else
  {
    v6 = v12[1] == this + 800;
  }

  if (v6)
  {
    goto LABEL_12;
  }

  v7 = atomic_load((v12[0] + 16));
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  if (!v9)
  {
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_12:
    v10 = sub_29AC1199C(this + 14);
    (*(*v10 + 16))(v10, a2);
    if ((*(this + 184) ^ *a3) <= 7)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
      if (!v11)
      {
        v11 = sub_29AD12C2C(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
      }

      sub_29A166F2C(a3, v11 + 1);
    }

    return;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v8)
  {
    sub_29A014BEC(v9);
    goto LABEL_12;
  }

LABEL_10:
  (*(*v8 + 32))(v8, this + 112, a2);
  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_CombinePathArrays(unsigned int **a1, unsigned int **a2)
{
  v4 = a2[1];
  v5 = *a2;
  if (v5 == v4)
  {
    v11 = *a1;
    v12 = a1[1];
    v13 = (v12 - *a1) >> 3;

    sub_29A23DE4C(a2, v5, v11, v12, v13);
  }

  else
  {
    sub_29AD19AD0(v14, v5, v4);
    v6 = *a1;
    v7 = a1[1];
    while (v6 != v7)
    {
      v8 = sub_29A377CFC(v14, v6);
      if (v14[1] == v8)
      {
        sub_29A1E28B4(a2, v6);
      }

      v6 += 2;
    }

    v9 = v15;
    v15 = 0;
    if (v9)
    {
      v10 = sub_29A1DE590(v9);
      operator delete(v10);
    }

    v16 = v14;
    sub_29A1E234C(&v16);
  }
}

void sub_29AD13288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A377C38(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, unsigned int **a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 24))(v6, a2);
  v7 = sub_29A2F4F50(this + 18, a2);
  v8 = v7;
  if (v7)
  {
    std::mutex::lock((v7 + 20));
    v9 = sub_29AD1341C(v8 + 16, a2);
    if (v8[17] != v9)
    {
      pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_CombinePathArrays(v9 + 1, a3);
    }

    std::mutex::unlock((v8 + 20));
  }

  else
  {
    sub_29AD19798(this + 784, a2, v12);
    if (v12[0] || v12[1] != (this + 800))
    {
      v10 = atomic_load((v12[0] + 16));
      if (v10)
      {
        std::mutex::lock((v10 + 136));
        v11 = sub_29AD1341C((v10 + 104), a2);
        if (*(v10 + 112) != v11)
        {
          pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_CombinePathArrays(v11 + 1, a3);
        }

        std::mutex::unlock((v10 + 136));
      }
    }
  }
}

void *sub_29AD1341C(void *a1, unsigned int *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A2F4F50(v3, a2);
    if (v4)
    {
      return (*a1 + 40 * v4[3]);
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      while (*result != *a2)
      {
        result += 5;
        if (result == v6)
        {
          return a1[1];
        }
      }
    }
  }

  return result;
}

void **pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_PrimsAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v42 = v4;
  v5 = v3;
  v58 = *MEMORY[0x29EDCA608];
  v53 = 0x1000000000;
  v55 = 0x1000000000;
  v57 = 0x1000000000;
  v44 = 0u;
  v45 = 0u;
  std::mutex::lock(v3 + 22);
  std::mutex::lock(v5 + 21);
  if (*(v42 + 260) >= 0x11u)
  {
    v6 = *v42;
  }

  else
  {
    v6 = v42;
  }

  v7 = *(v42 + 256);
  if (v7)
  {
    v8 = 0;
    v9 = &v6[2 * v7];
    while (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(v6))
    {
LABEL_34:
      v6 += 2;
      if (v6 == v9)
      {
        goto LABEL_37;
      }
    }

    if ((v5[23].__m_.__sig ^ v6[1]) > 7)
    {
      if (sub_29A2F4F50(&v5[2].__m_.__opaque[8], v6))
      {
        sub_29A377A70(&v44, v6);
      }

      if ((v8 & 1) == 0)
      {
        v8 = 0;
LABEL_24:
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v6, v50);
        v13 = sub_29A2F4F50(&v5[11].__m_.__opaque[32], v50);
        if (v13)
        {
          for (i = v13[5]; i; i = *i)
          {
            v15 = sub_29A377CFC(&v44, i + 4);
            if (*(&v44 + 1) == v15)
            {
              v16 = sub_29A2F4F50(&v5[2].__m_.__opaque[8], i + 4);
              v17 = v16;
              if (v16)
              {
                v18 = sub_29AD13AF4(v16 + 12, v50);
                v19 = v18;
                if (v17[13] != v18)
                {
                  ChildNamesDependencyKey = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural::GetChildNamesDependencyKey(v18);
                  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v19 + 8), ChildNamesDependencyKey))
                  {
                    sub_29A377A70(&v44, i + 4);
                  }
                }
              }
            }
          }
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v50 + 1);
        sub_29A1DE3A4(v50);
        goto LABEL_34;
      }

      sub_29AC4CE80(v52, v6, v6 + 1);
    }

    else
    {
      if ((v8 & 1) == 0)
      {
        v10 = v52;
        if (HIDWORD(v53) >= 0x11)
        {
          v10 = v52[0];
        }

        if (*(v42 + 260) >= 0x11u)
        {
          v11 = *v42;
        }

        else
        {
          v11 = v42;
        }

        sub_29AC3B510(v52, &v10[2 * v53], v11, v6);
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
      if (!v12)
      {
        v12 = sub_29AD12C2C(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
      }

      sub_29AC4CE80(v52, v6, v12 + 1);
      sub_29A377A70(&v44, v6);
    }

    v8 = 1;
    goto LABEL_24;
  }

  v8 = 0;
LABEL_37:
  std::mutex::unlock(v5 + 21);
  std::mutex::unlock(v5 + 22);
  v21 = *(&v44 + 1);
  v22 = v44;
  if (v44 != *(&v44 + 1))
  {
    v23 = (*(&v44 + 1) - v44) >> 3;
    if (v23 < 2)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProcedural(v5, v22++, 1, v52);
      }

      while (v22 != v21);
    }

    else
    {
      v51 = 0x1000000000;
      sub_29AD173EC(&v46);
      sub_29AD13B6C(v50, v23, &v46);
      sub_29ABD3844(&v49);
      sub_29AC26348(&v48);
      sub_29AC263E4(&v47);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v46 + 1);
      sub_29A1DE3A4(&v46);
      v25 = *(&v44 + 1);
      v24 = v44;
      if (v44 != *(&v44 + 1))
      {
        v26 = 4;
        do
        {
          if (HIDWORD(v51) >= 0x11)
          {
            v27 = v50[0];
          }

          else
          {
            v27 = v50;
          }

          v28 = (v27 + v26);
          sub_29A2258F0((v27 + v26 - 4), v24);
          sub_29A225948(v28, v24 + 1);
          v26 += 7840;
          v24 += 2;
        }

        while (v24 != v25);
      }

      v43[0] = v50;
      v43[1] = v5;
      v46 = &unk_2A2085EA8;
      v47 = v43;
      tbb::interface7::internal::isolate_within_arena(&v46, 0);
      if (HIDWORD(v51) >= 0x11)
      {
        v29 = v50[0];
      }

      else
      {
        v29 = v50;
      }

      if (v51)
      {
        v30 = 0;
        v31 = 7840 * v51;
        do
        {
          v32 = v52[0];
          if (HIDWORD(v53) < 0x11)
          {
            v32 = v52;
          }

          v33 = &v29[v30 / 8 + 1];
          if (HIDWORD(v29[v30 / 8 + 33]) >= 0x11)
          {
            v33 = *v33;
          }

          sub_29AC3B510(v52, &v32[2 * v53], v33, &v33[2 * LODWORD(v29[v30 / 8 + 33])]);
          v34 = v54[0];
          if (HIDWORD(v55) < 0x11)
          {
            v34 = v54;
          }

          v35 = &v29[v30 / 8 + 34];
          if (HIDWORD(v29[v30 / 8 + 50]) >= 0x11)
          {
            v35 = *v35;
          }

          sub_29AC5FD04(v54, &v34[v55], v35, &v35[LODWORD(v29[v30 / 8 + 50])]);
          v36 = v56[0];
          if (HIDWORD(v57) < 0x11)
          {
            v36 = v56;
          }

          v37 = &v29[v30 / 8 + 51];
          if (HIDWORD(v29[v30 / 8 + 979]) >= 0x11)
          {
            v37 = *v37;
          }

          sub_29AC12278(v56, &v36[58 * v57], v37, &v37[116 * LODWORD(v29[v30 / 8 + 979])]);
          v30 += 7840;
        }

        while (v31 != v30);
      }

      sub_29AD19C50(v50);
    }
  }

  if (v8)
  {
    v38 = v52;
  }

  else
  {
    v38 = v42;
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(&v5->__m_.__sig, v38);
  if (v55)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(&v5->__m_.__sig, v54);
  }

  if (v57)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(&v5->__m_.__sig, v56);
  }

  v39 = *(&v45 + 1);
  *(&v45 + 1) = 0;
  if (v39)
  {
    v40 = sub_29A1DE590(v39);
    operator delete(v40);
  }

  v50[0] = &v44;
  sub_29A1E234C(v50);
  sub_29ABD3844(v56);
  sub_29AC26348(v54);
  return sub_29AC263E4(v52);
}

void sub_29AD13A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29AD19C50(&STACK[0x1EE8]);
  sub_29A377C38(va);
  sub_29AD13EEC(&STACK[0x208F0]);
  _Unwind_Resume(a1);
}

void *sub_29AD13AF4(void *a1, unsigned int *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A2F4F50(v3, a2);
    if (v4)
    {
      return (*a1 + 464 * v4[3]);
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      while (*result != *a2)
      {
        result += 58;
        if (result == v6)
        {
          return a1[1];
        }
      }
    }
  }

  return result;
}

void sub_29AD13B6C(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = a1 + 122880;
  v6 = *(a1 + 125440);
  if (v6 <= a2)
  {
    if (v6 < a2)
    {
      v10 = *(a1 + 125444);
      if (v10 < a2)
      {
        sub_29AD1A970(a1, a2);
        LODWORD(v10) = *(v5 + 2564);
      }

      if (v10 >= 0x11)
      {
        v4 = *v4;
      }

      v11 = *(v5 + 2560);
      if (v11 != a2)
      {
        v12 = 0;
        v13 = 7840 * v11 - 7840 * a2;
        v14 = &v4[980 * v11];
        do
        {
          v14 = sub_29AD1AD50(v14, a3) + 1960;
          v12 -= 7840;
        }

        while (v13 != v12);
      }

      *(v5 + 2560) = a2;
    }
  }

  else
  {
    v7 = a1;
    if (*(a1 + 125444) >= 0x11u)
    {
      v7 = *a1;
    }

    v8 = &v7[980 * a2];

    sub_29AD19D20(a1, v8, &v7[980 * v6]);
  }
}

void sub_29AD13C7C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29AD1ACF8(v1);
      v1 += 7840;
      v3 -= 7840;
    }

    while (v3);
  }

  __cxa_rethrow();
}

_DWORD *sub_29AD13CC0(uint64_t a1)
{
  sub_29ABD3844(a1 + 408);
  sub_29AC26348((a1 + 272));
  sub_29AC263E4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProcedural(std::mutex *a1, uint64_t *a2, int a3, _DWORD *a4)
{
  std::mutex::lock(a1 + 22);
  v17[0] = a2;
  v8 = sub_29AD1CD00(&a1[2].__m_.__opaque[8], a2, &unk_29B4D6118, v17);
  std::mutex::unlock(a1 + 22);
  if (a3)
  {
    atomic_store(0, v8 + 32);
  }

  v9 = atomic_load(v8 + 32);
  if (v9 <= 1 && !pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProceduralDependencies(a1, a2, a4))
  {
    return 0;
  }

  v10 = v8 + 3;
  v11 = atomic_load(v8 + 32);
  if (v11 <= 3)
  {
    v12 = v8[6];
    if (v12)
    {
      (*(*v12 + 24))(v17);
      v13 = 2;
      atomic_compare_exchange_strong(v8 + 32, &v13, 3u);
      if (v13 == 2)
      {
        std::mutex::lock((v8 + 20));
        pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProceduralResult(a1, v8 + 3, a2, v17, a4);
        atomic_store(4u, v8 + 32);
      }

      else
      {
        std::mutex::lock((v8 + 20));
      }

      std::mutex::unlock((v8 + 20));
      v14 = v18;
      v18 = 0;
      if (v14)
      {
        v15 = sub_29A1DE590(v14);
        operator delete(v15);
      }

      v19 = v17;
      sub_29AD18DC4(&v19);
    }
  }

  return v10;
}

void sub_29AD13EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 160));
  sub_29AD16A0C(va);
  _Unwind_Resume(a1);
}

void **sub_29AD13EEC(void **a1)
{
  sub_29ABD3844((a1 + 50));
  sub_29AC26348(a1 + 33);

  return sub_29AC263E4(a1);
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_PrimsRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v85 = *MEMORY[0x29EDCA608];
  v71 = 0u;
  v72 = 0u;
  std::mutex::lock(v3 + 21);
  for (i = *(v6 + 760); i; i = *i)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAncestorsRange((i + 4), &v73);
    sub_29A1E21F4(v77, &v73);
    sub_29A1E2240(v77 + 1, &v73 + 1);
    v79[0] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v79);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v79 + 1);
    while (v77[0] != v79[0])
    {
      v8 = sub_29AD149F4(&v71, v77);
      sub_29A377A70(v8, i + 4);
      pxrInternal__aapl__pxrReserved__::SdfPathAncestorsRange::iterator::operator++(v77);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v79 + 1);
    sub_29A1DE3A4(v79);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v77 + 1);
    sub_29A1DE3A4(v77);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v73 + 1);
    sub_29A1DE3A4(&v73);
  }

  std::mutex::unlock((v6 + 1344));
  v69 = 0u;
  v70 = 0u;
  std::mutex::lock((v6 + 1408));
  for (j = *(v6 + 160); j; j = *j)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAncestorsRange((j + 4), &v73);
    sub_29A1E21F4(v77, &v73);
    sub_29A1E2240(v77 + 1, &v73 + 1);
    v79[0] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v79);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v79 + 1);
    while (v77[0] != v79[0])
    {
      v10 = sub_29AD149F4(&v69, v77);
      sub_29A377A70(v10, j + 4);
      pxrInternal__aapl__pxrReserved__::SdfPathAncestorsRange::iterator::operator++(v77);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v79 + 1);
    sub_29A1DE3A4(v79);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v77 + 1);
    sub_29A1DE3A4(v77);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v73 + 1);
    sub_29A1DE3A4(&v73);
  }

  std::mutex::unlock((v6 + 1408));
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = *(v5 + 128);
  if (*(v5 + 132) >= 0x11u)
  {
    v12 = *v5;
  }

  else
  {
    v12 = v5;
  }

  if (v11)
  {
    v13 = &v12[2 * v11];
    do
    {
      v14 = sub_29AD1341C(&v71, v12);
      if (*(&v71 + 1) == v14)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v12, v77);
        v20 = sub_29A2F4F50((v6 + 744), v77);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v77 + 1);
        sub_29A1DE3A4(v77);
        if (v20)
        {
          for (k = v20[5]; k; k = *k)
          {
            v22 = sub_29A377CFC(&v63, k + 4);
            if (*(&v63 + 1) == v22)
            {
              v23 = sub_29A2F4F50((v6 + 144), k + 4);
              if (v23)
              {
                pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v12, v77);
                v24 = sub_29AD13AF4(v23 + 12, v77);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v77 + 1);
                v25 = sub_29A1DE3A4(v77);
                if (v23[13] != v24)
                {
                  ChildNamesDependencyKey = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural::GetChildNamesDependencyKey(v25);
                  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v24 + 1), ChildNamesDependencyKey))
                  {
                    sub_29A377A70(&v65, k + 4);
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v15 = v14[1];
        v16 = v14[2];
        while (v15 != v16)
        {
          v17 = sub_29A2F4F50((v6 + 744), v15);
          if (v17)
          {
            sub_29A377A70(&v67, v15);
            for (m = v17[5]; m; m = *m)
            {
              v19 = sub_29A377CFC(&v63, m + 4);
              if (*(&v63 + 1) == v19)
              {
                sub_29A377A70(&v65, m + 4);
              }
            }
          }

          v15 += 2;
        }
      }

      v27 = sub_29AD1341C(&v69, v12);
      if (*(&v69 + 1) != v27)
      {
        v28 = v27[1];
        v29 = v27[2];
        while (v28 != v29)
        {
          sub_29A377A70(&v63, v28);
          sub_29AD14ADC(&v65, v28);
          v28 += 2;
        }
      }

      v12 += 2;
    }

    while (v12 != v13);
    if (v67 != *(&v67 + 1))
    {
      std::mutex::lock((v6 + 1344));
      v31 = *(&v67 + 1);
      for (n = v67; n != v31; n += 2)
      {
        sub_29AD1B804((v6 + 744), n);
      }

      std::mutex::unlock((v6 + 1344));
    }
  }

  v33 = *(&v63 + 1);
  for (ii = v63; ii != v33; ii += 2)
  {
    pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_RemoveProcedural(v6, ii, 0);
  }

  v35 = *(&v65 + 1);
  v34 = v65;
  if (v65 == *(&v65 + 1))
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v6, v5);
  }

  else
  {
    v80 = 0x1000000000;
    v82 = 0x1000000000;
    v84 = 0x1000000000;
    if (v81 != v5)
    {
      if (*(v5 + 132) >= 0x11u)
      {
        v36 = *v5;
      }

      else
      {
        v36 = v5;
      }

      sub_29AC60738(v81, v36, &v36[8 * *(v5 + 128)]);
      v35 = *(&v65 + 1);
      v34 = v65;
    }

    v37 = v35 - v34;
    if (v37 < 2)
    {
      while (v34 != v35)
      {
        pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProcedural(v6, v34++, 1, v79);
      }
    }

    else
    {
      v78 = 0x1000000000;
      sub_29AD173EC(&v73);
      sub_29AD13B6C(v77, v37, &v73);
      sub_29ABD3844(&v76);
      sub_29AC26348(&v75);
      sub_29AC263E4(&v74);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v73 + 1);
      sub_29A1DE3A4(&v73);
      v39 = *(&v65 + 1);
      v38 = v65;
      if (v65 != *(&v65 + 1))
      {
        v40 = 4;
        do
        {
          if (HIDWORD(v78) >= 0x11)
          {
            v41 = v77[0];
          }

          else
          {
            v41 = v77;
          }

          v42 = (v41 + v40);
          sub_29A2258F0((v41 + v40 - 4), v38);
          sub_29A225948(v42, v38 + 1);
          v40 += 7840;
          v38 += 2;
        }

        while (v38 != v39);
      }

      v62[0] = v77;
      v62[1] = v6;
      v73 = &unk_2A2085F30;
      v74 = v62;
      tbb::interface7::internal::isolate_within_arena(&v73, 0);
      if (HIDWORD(v78) >= 0x11)
      {
        v43 = v77[0];
      }

      else
      {
        v43 = v77;
      }

      if (v78)
      {
        v44 = 0;
        v45 = 7840 * v78;
        do
        {
          v46 = v79[0];
          if (HIDWORD(v80) < 0x11)
          {
            v46 = v79;
          }

          v47 = &v43[v44 / 8 + 1];
          if (HIDWORD(v43[v44 / 8 + 33]) >= 0x11)
          {
            v47 = *v47;
          }

          sub_29AC3B510(v79, &v46[2 * v80], v47, &v47[2 * LODWORD(v43[v44 / 8 + 33])]);
          v48 = v81[0];
          if (HIDWORD(v82) < 0x11)
          {
            v48 = v81;
          }

          v49 = &v43[v44 / 8 + 34];
          if (HIDWORD(v43[v44 / 8 + 50]) >= 0x11)
          {
            v49 = *v49;
          }

          sub_29AC5FD04(v81, &v48[v82], v49, &v49[LODWORD(v43[v44 / 8 + 50])]);
          v50 = v83[0];
          if (HIDWORD(v84) < 0x11)
          {
            v50 = v83;
          }

          v51 = &v43[v44 / 8 + 51];
          if (HIDWORD(v43[v44 / 8 + 979]) >= 0x11)
          {
            v51 = *v51;
          }

          sub_29AC12278(v83, &v50[58 * v84], v51, &v51[116 * LODWORD(v43[v44 / 8 + 979])]);
          v44 += 7840;
        }

        while (v45 != v44);
      }

      sub_29AD19C50(v77);
    }

    if (v80)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v6, v79);
    }

    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v6, v81);
    if (v84)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v83);
    }

    sub_29ABD3844(v83);
    sub_29AC26348(v81);
    sub_29AC263E4(v79);
  }

  v52 = *(&v64 + 1);
  *(&v64 + 1) = 0;
  if (v52)
  {
    v53 = sub_29A1DE590(v52);
    operator delete(v53);
  }

  v77[0] = &v63;
  sub_29A1E234C(v77);
  v54 = *(&v66 + 1);
  *(&v66 + 1) = 0;
  if (v54)
  {
    v55 = sub_29A1DE590(v54);
    operator delete(v55);
  }

  v77[0] = &v65;
  sub_29A1E234C(v77);
  v56 = *(&v68 + 1);
  *(&v68 + 1) = 0;
  if (v56)
  {
    v57 = sub_29A1DE590(v56);
    operator delete(v57);
  }

  v77[0] = &v67;
  sub_29A1E234C(v77);
  v58 = *(&v70 + 1);
  *(&v70 + 1) = 0;
  if (v58)
  {
    v59 = sub_29A1DE590(v58);
    operator delete(v59);
  }

  v77[0] = &v69;
  sub_29AD181A8(v77);
  v60 = *(&v72 + 1);
  *(&v72 + 1) = 0;
  if (v60)
  {
    v61 = sub_29A1DE590(v60);
    operator delete(v61);
  }

  v77[0] = &v71;
  sub_29AD181A8(v77);
}

void sub_29AD147C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_29AD19C50(&STACK[0x1F58]);
  sub_29AD13EEC(&STACK[0x20960]);
  v31 = a14;
  a14 = 0;
  if (v31)
  {
    v32 = sub_29A1DE590(v31);
    operator delete(v32);
  }

  STACK[0x1F58] = &a11;
  sub_29A1E234C(&STACK[0x1F58]);
  v33 = a18;
  a18 = 0;
  if (v33)
  {
    v34 = sub_29A1DE590(v33);
    operator delete(v34);
  }

  STACK[0x1F58] = &a15;
  sub_29A1E234C(&STACK[0x1F58]);
  v35 = a22;
  a22 = 0;
  if (v35)
  {
    v36 = sub_29A1DE590(v35);
    operator delete(v36);
  }

  STACK[0x1F58] = &a19;
  sub_29A1E234C(&STACK[0x1F58]);
  v37 = a26;
  a26 = 0;
  if (v37)
  {
    v38 = sub_29A1DE590(v37);
    operator delete(v38);
  }

  STACK[0x1F58] = &a23;
  sub_29AD181A8(&STACK[0x1F58]);
  v39 = a30;
  a30 = 0;
  if (v39)
  {
    v40 = sub_29A1DE590(v39);
    operator delete(v40);
  }

  STACK[0x1F58] = &a27;
  sub_29AD181A8(&STACK[0x1F58]);
  _Unwind_Resume(a1);
}

void *sub_29AD149F4(void *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v12, a2);
  sub_29A1E2240(&v13, a2 + 1);
  v15 = 0u;
  v14 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = sub_29AD1AE58(a1, &v12);
  v5 = *(&v15 + 1);
  *(&v15 + 1) = 0;
  if (v5)
  {
    v6 = sub_29A1DE590(v5);
    operator delete(v6);
  }

  v16 = &v14;
  sub_29A1E234C(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  v7 = *(&v11 + 1);
  *(&v11 + 1) = 0;
  if (v7)
  {
    v8 = sub_29A1DE590(v7);
    operator delete(v8);
  }

  v16 = &v10;
  sub_29A1E234C(&v16);
  return v4 + 1;
}

void sub_29AD14AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29AD182E0(&a13);
  sub_29A377C38(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD14ADC(uint64_t a1, unsigned int *a2)
{
  v4 = sub_29A377CFC(a1, a2);
  if (*(a1 + 8) == v4)
  {
    return 0;
  }

  sub_29AD1B6B8(a1, &v4);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_RemoveProcedural(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  std::mutex::lock((a1 + 1408));
  v6 = sub_29A2F4F50((a1 + 144), a2);
  if (v6)
  {
    if (a3)
    {
      PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
      v8 = v6[16];
      v9 = v6[17];
      if (v8 != v9)
      {
        v10 = PathElementCount + 1;
        do
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v8) == v10)
          {
            sub_29A1E21F4(&v22, v8);
            sub_29A1E2240(&v22 + 1, v8 + 1);
            sub_29AC3D914((a3 + 264), &v22);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
            sub_29A1DE3A4(&v22);
          }

          v8 = (v8 + 40);
        }

        while (v8 != v9);
      }
    }

    if (v6[12] != v6[13])
    {
      std::mutex::lock((a1 + 1344));
      v11 = v6[12];
      v12 = v6[13];
      while (v11 != v12)
      {
        v13 = sub_29A2F4F50((a1 + 744), v11);
        v14 = v13;
        if (v13)
        {
          sub_29A43AB80(v13 + 3, a2);
          if (!v14[6])
          {
            sub_29AD1B83C((a1 + 744), v14);
          }
        }

        v11 += 116;
      }

      std::mutex::unlock((a1 + 1344));
    }

    v15 = v6[8];
    v16 = v6[9];
    if (v15 != v16)
    {
      v17 = a1 + 800;
      do
      {
        sub_29AD19798(a1 + 784, v15, &v22);
        if (v22)
        {
          v18 = 0;
        }

        else
        {
          v18 = v23 == v17;
        }

        if (!v18)
        {
          atomic_store(0, (v22 + 16));
        }

        v15 += 4;
      }

      while (v15 != v16);
      v19 = v6[16];
      v20 = v6[17];
      while (v19 != v20)
      {
        sub_29AD19798(a1 + 784, v19, &v22);
        if (v22)
        {
          v21 = 0;
        }

        else
        {
          v21 = v23 == v17;
        }

        if (!v21)
        {
          atomic_store(0, (v22 + 16));
        }

        v19 += 10;
      }
    }

    sub_29AD1DA40((a1 + 144), v6);
  }

  std::mutex::unlock((a1 + 1408));
}

uint64_t sub_29AD14D48(uint64_t a1)
{
  sub_29A1DE554((a1 + 24), 0);
  v3 = a1;
  sub_29AD181A8(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v76 = *MEMORY[0x29EDCA608];
  v61 = 0u;
  v62 = 0u;
  std::mutex::lock(v3 + 22);
  std::mutex::lock(v6 + 21);
  if (*(v5 + 7428) >= 0x11u)
  {
    v7 = *v5;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v5 + 7424);
  if (v8)
  {
    v9 = &v7[116 * v8];
    do
    {
      if (sub_29A2F4F50(&v6[2].__m_.__opaque[8], v7))
      {
        v10 = sub_29AD156A0(&v61, v7);
        sub_29AD15788(v10, v7);
      }

      v11 = sub_29A2F4F50(&v6[11].__m_.__opaque[32], v7);
      if (v11)
      {
        for (i = v11[5]; i; i = *i)
        {
          v13 = sub_29A2F4F50(&v6[2].__m_.__opaque[8], i + 4);
          v14 = v13;
          if (v13)
          {
            v15 = sub_29AD13AF4(v13 + 12, v7);
            if (v14[13] != v15)
            {
              if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v7 + 2), v15 + 1))
              {
                v16 = sub_29AD156A0(&v61, i + 4);
                sub_29AD15788(v16, v7);
              }
            }
          }
        }
      }

      v7 += 116;
    }

    while (v7 != v9);
  }

  std::mutex::unlock(v6 + 21);
  std::mutex::unlock(v6 + 22);
  if (v61 == *(&v61 + 1))
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(&v6->__m_.__sig, v5);
    goto LABEL_84;
  }

  v71 = 0x1000000000;
  v73 = 0x1000000000;
  v75 = 0x1000000000;
  if (v74 != v5)
  {
    if (*(v5 + 7428) >= 0x11u)
    {
      v17 = *v5;
    }

    else
    {
      v17 = v5;
    }

    sub_29AC607B4(v74, v17, v17 + 464 * *(v5 + 7424));
  }

  sub_29AD1CB84(v69, v5);
  v18 = v61;
  v19 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v61 + 1) - v61) >> 3);
  if (v19 >= 2)
  {
    v68 = 0x1000000000;
    bzero(&v63, 0x1EA8uLL);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v63);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v63 + 1);
    v64[32] = 0x1000000000;
    v65[16] = 0x1000000000;
    v66[928] = 0x1000000000;
    v20 = v68;
    if (v19 >= v68)
    {
      if (v19 <= v68)
      {
LABEL_52:
        sub_29ABD3844(v66);
        sub_29AC26348(v65);
        sub_29AC263E4(v64);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v63 + 1);
        sub_29A1DE3A4(&v63);
        v41 = *(&v61 + 1);
        v40 = v61;
        if (v61 != *(&v61 + 1))
        {
          v42 = 0;
          v43 = HIDWORD(v68);
          do
          {
            if (v43 >= 0x11)
            {
              v44 = v67[0];
            }

            else
            {
              v44 = v67;
            }

            v45 = &v44[v42];
            sub_29A2258F0(&v44[v42], v40);
            sub_29A225948(v45 + 1, v40 + 1);
            v43 = HIDWORD(v68);
            v46 = v67[0];
            if (HIDWORD(v68) < 0x11)
            {
              v46 = v67;
            }

            v46[v42 + 980] = v40 + 2;
            v42 += 981;
            v40 += 10;
          }

          while (v40 != v41);
        }

        v60[0] = v67;
        v60[1] = v6;
        v63 = &unk_2A2085FB8;
        v64[0] = v60;
        tbb::interface7::internal::isolate_within_arena(&v63, 0);
        if (HIDWORD(v68) >= 0x11)
        {
          v47 = v67[0];
        }

        else
        {
          v47 = v67;
        }

        if (v68)
        {
          v48 = 0;
          v49 = 7848 * v68;
          do
          {
            v50 = v70[0];
            if (HIDWORD(v71) < 0x11)
            {
              v50 = v70;
            }

            v51 = &v47[v48 / 8 + 1];
            if (HIDWORD(v47[v48 / 8 + 33]) >= 0x11)
            {
              v51 = *v51;
            }

            sub_29AC3B510(v70, &v50[2 * v71], v51, &v51[2 * LODWORD(v47[v48 / 8 + 33])]);
            v52 = v72[0];
            if (HIDWORD(v73) < 0x11)
            {
              v52 = v72;
            }

            v53 = &v47[v48 / 8 + 34];
            if (HIDWORD(v47[v48 / 8 + 50]) >= 0x11)
            {
              v53 = *v53;
            }

            sub_29AC5FD04(v72, &v52[v73], v53, &v53[LODWORD(v47[v48 / 8 + 50])]);
            v54 = v74[0];
            if (HIDWORD(v75) < 0x11)
            {
              v54 = v74;
            }

            v55 = &v47[v48 / 8 + 51];
            if (HIDWORD(v47[v48 / 8 + 979]) >= 0x11)
            {
              v55 = *v55;
            }

            sub_29AC12278(v74, &v54[58 * v75], v55, &v55[116 * LODWORD(v47[v48 / 8 + 979])]);
            v48 += 7848;
          }

          while (v49 != v48);
        }

        sub_29AD158C0(v67);
        goto LABEL_79;
      }

      v28 = HIDWORD(v68);
      v29 = v67[0];
      v59 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v61 + 1) - v61) >> 3);
      if (v19 <= HIDWORD(v68))
      {
        v33 = v67[0];
      }

      else
      {
        v30 = v68;
        v31 = malloc(0x6666666666666C88 * ((*(&v61 + 1) - v61) >> 3));
        v32 = v30;
        v33 = v31;
        if (v28 >= 0x11)
        {
          v34 = v29;
        }

        else
        {
          v34 = v67;
        }

        if (v32)
        {
          v35 = 0;
          v36 = 7848 * v32;
          do
          {
            sub_29A1DDD84(&v33[v35], &v34[v35 / 8]);
            sub_29A1DDDC0(&v33[v35 + 4], &v34[v35 / 8] + 1);
            sub_29AD1AB44(&v33[v35 + 8], &v34[v35 / 8 + 1]);
            sub_29AD1ABD4(&v33[v35 + 272], &v34[v35 / 8 + 34]);
            sub_29AD1AC64(&v33[v35 + 408], &v34[v35 / 8 + 51]);
            *&v33[v35 + 7840] = v34[v35 / 8 + 980];
            v35 += 7848;
          }

          while (v36 != v35);
        }

        sub_29AD1CC08(v67);
        if (HIDWORD(v68) >= 0x11)
        {
          free(v67[0]);
        }

        v67[0] = v33;
        v19 = v59;
        HIDWORD(v68) = v59;
        v28 = v59;
        v20 = v68;
      }

      if (v28 >= 0x11)
      {
        v37 = v33;
      }

      else
      {
        v37 = v67;
      }

      if (v19 != v20)
      {
        v38 = 7848 * v20;
        v39 = 7848 * v59;
        do
        {
          sub_29A1E21F4(&v37[v38 / 8], &v63);
          sub_29A1E2240(&v37[v38 / 8] + 1, &v63 + 1);
          sub_29AD12CB8(&v37[v38 / 8 + 1], v64);
          sub_29AD1ADE0(&v37[v38 / 8 + 34], v65);
          sub_29AD1CB84(&v37[v38 / 8 + 51], v66);
          v37[v38 / 8 + 980] = v66[929];
          v37 += 981;
          v39 -= 7848;
        }

        while (v38 != v39);
      }

      v26 = v59;
    }

    else
    {
      v21 = 0;
      v22 = v67;
      if (HIDWORD(v68) >= 0x11)
      {
        v22 = v67[0];
      }

      v23 = 0x9999999999999378 * ((*(&v61 + 1) - v61) >> 3) + 7848 * v68;
      v58 = 0xBD31D7CFFBD31D7DLL * (v23 >> 3);
      v24 = &v22[981 * v68];
      v25 = -v23;
      do
      {
        sub_29ABD3844(v24 + v25 + 408);
        sub_29AC26348((v24 + v25 + 272));
        sub_29AC263E4((v24 + v25 + 8));
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v24 + v25 + 4));
        sub_29A1DE3A4((v24 + v25));
        v21 -= 7848;
        v24 += 981;
      }

      while (v25 != v21);
      v26 = v68 - v58;
    }

    LODWORD(v68) = v26;
    goto LABEL_52;
  }

  while (v18 != *(&v61 + 1))
  {
    v27 = v18 + 1;
    pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProcedural(v6, v18, 1, v70);
    v18 = v27 + 4;
  }

LABEL_79:
  if (v71)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(&v6->__m_.__sig, v70);
  }

  if (v73)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(&v6->__m_.__sig, v72);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(&v6->__m_.__sig, v74);
  sub_29ABD3844(v69);
  sub_29ABD3844(v74);
  sub_29AC26348(v72);
  sub_29AC263E4(v70);
LABEL_84:
  v56 = *(&v62 + 1);
  *(&v62 + 1) = 0;
  if (v56)
  {
    v57 = sub_29A1DE590(v56);
    operator delete(v57);
  }

  v67[0] = &v61;
  sub_29AD18A68(v67);
}

void sub_29AD15500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AD158C0(&STACK[0x1F00]);
  sub_29ABD3844(&STACK[0x20988]);
  sub_29AD13EEC(&STACK[0x22690]);
  sub_29AD15904(va);
  _Unwind_Resume(a1);
}

void *sub_29AD156A0(uint64_t *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v12, a2);
  sub_29A1E2240(&v13, a2 + 1);
  v15 = 0u;
  v14 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = sub_29AD1B8F4(a1, &v12);
  v5 = *(&v15 + 1);
  *(&v15 + 1) = 0;
  if (v5)
  {
    v6 = sub_29A1DE590(v5);
    operator delete(v6);
  }

  v16 = &v14;
  sub_29AD18D3C(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  v7 = *(&v11 + 1);
  *(&v11 + 1) = 0;
  if (v7)
  {
    v8 = sub_29A1DE590(v7);
    operator delete(v8);
  }

  v16 = &v10;
  sub_29AD18D3C(&v16);
  return v4 + 1;
}

void sub_29AD1576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29AD18BA0(&a13);
  sub_29AD1628C(&a9);
  _Unwind_Resume(a1);
}

void sub_29AD15788(void *a1, _DWORD *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3[56] = 0x800000000;
  sub_29AD1CB20(v4, a2, v3);
  sub_29AD1C414(a1, v4);
  sub_29ABD3178();
}

void sub_29AD15834(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

_DWORD *sub_29AD15868(uint64_t a1)
{
  sub_29ABD3844(a1 + 408);
  sub_29AC26348((a1 + 272));
  sub_29AC263E4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AD158C0(uint64_t a1)
{
  sub_29AD1CC08(a1);
  if (*(a1 + 125572) >= 0x11u)
  {
    free(*a1);
  }

  return a1;
}

uint64_t sub_29AD15904(uint64_t a1)
{
  sub_29A1DE554((a1 + 24), 0);
  v3 = a1;
  sub_29AD18A68(&v3);
  return a1;
}

unint64_t *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProceduralDependencies(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v61 = *MEMORY[0x29EDCA608];
  v6 = sub_29AC1199C((a1 + 112));
  (*(*v6 + 16))(&v54);
  if ((*(a1 + 1472) ^ v54) >= 8)
  {
    pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_RemoveProcedural(a1, a2, a3);
    v7 = 0;
    goto LABEL_71;
  }

  std::mutex::lock((a1 + 1408));
  *&v58 = a2;
  v8 = sub_29AD1CD00(a1 + 144, a2, &unk_29B4D6118, &v58);
  v7 = v8 + 3;
  std::mutex::unlock((a1 + 1408));
  v9 = atomic_load(v8 + 32);
  if (v9 <= 1)
  {
    v53 = 0;
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(&v55, &v51);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
    if (!v10)
    {
      v10 = sub_29AD12C2C(&pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&v51, v10 + 3, &v58);
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetPrimvarValue(&v58, &v49);
    if (*(&v58 + 1))
    {
      sub_29A014BEC(*(&v58 + 1));
    }

    v11 = v49;
    if (v49)
    {
      (*(*v49 + 16))(&v58, 0.0);
      if (sub_29A1FA710(&v58))
      {
        if ((BYTE8(v58) & 4) != 0)
        {
          v12 = (*((*(&v58 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v58);
        }

        else
        {
          v12 = &v58;
        }

        sub_29A166F2C(&v53, v12);
      }

      v11 = sub_29A186B14(&v58);
    }

    v47 = 0;
    v48 = 0;
    if (v8[6] && (v8[5] ^ v53) < 8)
    {
      if (*(a1 + 1480) == 1)
      {
        sub_29AD1D68C(a1 + 184, a2, &v58);
        if (v58 == __PAIR128__(a1 + 200, 0))
        {
          if ((*(*v8[6] + 40))(v8[6], 1))
          {
            sub_29AD1D618(&v58, v7);
            v17 = sub_29AD16164(a1 + 184, a2);
            v18 = *(v17 + 8);
            *v17 = v58;
            *(&v58 + 1) = 0;
            if (v18)
            {
              sub_29B290F6C(v18, &v58 + 1, &v58);
            }
          }
        }
      }

      v19 = v8[6];
      v20 = v8[7];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v48;
      v47 = v19;
      v48 = v20;
      if (!v21)
      {
        goto LABEL_30;
      }

      sub_29A014BEC(v21);
    }

    else
    {
      Instance = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::GetInstance(v11);
      v14 = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::ConstructProcedural(Instance, &v53, a2);
      sub_29AD1611C(&v47, v14);
      if (!v47)
      {
        v45 = 0u;
        v46 = 0u;
LABEL_36:
        v27 = 0;
        atomic_compare_exchange_strong(v8 + 32, &v27, 1u);
        if (!v27)
        {
          v28 = v47;
          if (v8[6] != v47)
          {
            v29 = v48;
            if (v48)
            {
              atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v30 = v8[7];
            v8[6] = v28;
            v8[7] = v29;
            if (v30)
            {
              sub_29A014BEC(v30);
            }
          }

          sub_29A166F2C(v8 + 5, &v53);
          v58 = 0u;
          v59 = 0u;
          v60 = 1065353216;
          v31 = v8[12];
          v32 = v8[13];
          if (v31 == v32)
          {
            v34 = 1;
          }

          else
          {
            do
            {
              v33 = sub_29AD13AF4(&v45, v31);
              if (*(&v45 + 1) == v33)
              {
                sub_29A43A86C(&v58, v31, v31);
              }

              v31 += 116;
            }

            while (v31 != v32);
            v34 = *(&v59 + 1) == 0;
          }

          if (v45 != *(&v45 + 1) || !v34)
          {
            std::mutex::lock((a1 + 1344));
            v36 = *(&v45 + 1);
            for (i = v45; i != v36; i += 29)
            {
              if (v8[13] == sub_29AD13AF4(v8 + 12, i))
              {
                v57 = i;
                v37 = sub_29AD1D770(a1 + 744, i, &unk_29B4D6118, &v57);
                sub_29A43A86C((v37 + 3), a2, a2);
              }
            }

            for (j = v59; j; j = *j)
            {
              v39 = sub_29A2F4F50((a1 + 744), j + 4);
              v40 = v39;
              if (v39)
              {
                sub_29A43AB80(v39 + 3, a2);
                if (!v40[6])
                {
                  sub_29AD1B83C((a1 + 744), v40);
                }
              }
            }

            std::mutex::unlock((a1 + 1344));
          }

          sub_29AD18BF8(v8 + 12);
          *(v8 + 6) = v45;
          v41 = *(&v46 + 1);
          v8[14] = v46;
          v46 = 0uLL;
          v45 = 0uLL;
          sub_29A1DE554(v8 + 15, v41);
          atomic_store(2u, v8 + 32);
          sub_29A43A24C(&v58);
        }

        v42 = *(&v46 + 1);
        *(&v46 + 1) = 0;
        if (v42)
        {
          v43 = sub_29A1DE590(v42);
          operator delete(v43);
        }

        *&v58 = &v45;
        sub_29AD18D3C(&v58);
        if (v48)
        {
          sub_29A014BEC(v48);
        }

        if (v50)
        {
          sub_29A014BEC(v50);
        }

        if (v52)
        {
          sub_29A014BEC(v52);
        }

        if ((v53 & 7) != 0)
        {
          atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_71;
      }

      if (*(a1 + 1480) & (*(*v47 + 40))(v47, *(a1 + 1480)))
      {
        sub_29AD1D618(&v58, v7);
        v15 = sub_29AD16164(a1 + 184, a2);
        v16 = *(v15 + 8);
        *v15 = v58;
        *(&v58 + 1) = 0;
        if (v16)
        {
          sub_29B290F6C(v16, &v58 + 1, &v58);
        }
      }
    }

    v19 = v47;
LABEL_30:
    v45 = 0u;
    v46 = 0u;
    if (v19)
    {
      (*(*v19 + 16))(&v58);
      sub_29AD18BF8(&v45);
      v45 = v58;
      v22 = v59;
      v59 = 0uLL;
      v58 = 0uLL;
      v23 = *(&v46 + 1);
      v46 = v22;
      if (v23)
      {
        v24 = sub_29A1DE590(v23);
        operator delete(v24);
        v25 = *(&v59 + 1);
        *(&v59 + 1) = 0;
        if (v25)
        {
          v26 = sub_29A1DE590(v25);
          operator delete(v26);
        }
      }

      v57 = &v58;
      sub_29AD18D3C(&v57);
    }

    goto LABEL_36;
  }

LABEL_71:
  if (v56)
  {
    sub_29A014BEC(v56);
  }

  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v7;
}

void sub_29AD15FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, char a25, atomic_uint *a26)
{
  if (a26 && atomic_fetch_add_explicit(a26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a26 + 8))(a26);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a22)
  {
    sub_29A014BEC(a22);
  }

  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD1611C(void *a1, uint64_t a2)
{
  sub_29AD1D05C(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

uint64_t sub_29AD16164(uint64_t a1, unsigned int *a2)
{
  sub_29AD1D68C(a1, a2, &v14);
  v4 = v14;
  if (v14)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v14 + 1) == a1 + 16;
  }

  if (v5)
  {
    sub_29A1E21F4(&v7, a2);
    sub_29A1E2240(&v8, a2 + 1);
    v9 = 0uLL;
    v10 = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v7);
    v11 = v8;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v8);
    v12 = v9;
    v9 = 0uLL;
    sub_29AD1D168(a1, &v10, 0, v13);
    sub_29B2C7ED8(&v10, v13, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    sub_29B2A0A84(&v10, &v9 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    sub_29A1DE3A4(&v7);
    v4 = v14;
  }

  return v4 + 16;
}

void sub_29AD16268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_29B2C7D34(&a12);
  sub_29B2C7DB4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD1628C(uint64_t a1)
{
  sub_29A1DE554((a1 + 24), 0);
  v3 = a1;
  sub_29AD18D3C(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProceduralResult(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t **a4, _DWORD *a5)
{
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  i = a2 + 5;
  if (a2[5] == a2[6])
  {
    v43 = a2 + 5;
    v20 = *a4;
    v21 = a4[1];
    if (*a4 != v21)
    {
      do
      {
        sub_29AC4CE80(a5, v20, v20 + 1);
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v20, a3))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetAncestorsRange(v20, &v46);
          sub_29A1E21F4(&v54, &v46);
          sub_29A1E2240(&v54 + 1, &v46 + 1);
          v49 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v49);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v49 + 1);
          while (v54 != v49 && v54 != *a3)
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v54, &v48);
            v23 = sub_29AD149F4(a2 + 13, &v48);
            sub_29A377A70(v23, &v54);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v48 + 1);
            sub_29A1DE3A4(&v48);
            sub_29A377A70(&v50, &v54);
            pxrInternal__aapl__pxrReserved__::SdfPathAncestorsRange::iterator::operator++(&v54);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v49 + 1);
          sub_29A1DE3A4(&v49);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v54 + 1);
          sub_29A1DE3A4(&v54);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v46 + 1);
          sub_29A1DE3A4(&v46);
        }

        v20 += 2;
      }

      while (v20 != v21);
    }

    v25 = a2[13];
    v24 = a2[14];
    for (i = v43; v25 != v24; v25 += 10)
    {
      sub_29A377A70(&v50, v25);
    }
  }

  else if ((sub_29AD1E088(a2 + 5, a4) & 1) == 0)
  {
    v46 = 0u;
    v47 = 0u;
    v11 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v11, a3))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetAncestorsRange(v11, &v54);
          sub_29A1E21F4(&v49, &v54);
          sub_29A1E2240(&v49 + 1, &v54 + 1);
          v48 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v48);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v48 + 1);
          while (v49 != v48 && v49 != *a3)
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v49, &v44);
            v14 = sub_29AD149F4(&v46, &v44);
            sub_29A377A70(v14, &v49);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v45);
            sub_29A1DE3A4(&v44);
            pxrInternal__aapl__pxrReserved__::SdfPathAncestorsRange::iterator::operator++(&v49);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v48 + 1);
          sub_29A1DE3A4(&v48);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v49 + 1);
          sub_29A1DE3A4(&v49);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v54 + 1);
          sub_29A1DE3A4(&v54);
        }

        v15 = sub_29AD16F3C(i, v11);
        if (a2[6] == v15 || (v15[1] ^ v11[1]) >= 8)
        {
          sub_29AC4CE80(a5, v11, v11 + 1);
          sub_29A377A70(&v50, v11);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    v17 = a2[5];
    v16 = a2[6];
    if (v17 == v16)
    {
      v19 = a2[5];
    }

    else
    {
      do
      {
        if (a4[1] == sub_29AD16F3C(a4, v17))
        {
          v18 = sub_29AD1341C(&v46, v17);
          if (*(&v46 + 1) == v18)
          {
            sub_29AC4DAF8(a5 + 66, v17);
            sub_29A377A70(&v52, v17);
          }
        }

        v17 += 4;
      }

      while (v17 != v16);
      v17 = a2[5];
      v19 = a2[6];
    }

    if (a4[1] - *a4 != v19 - v17 || (sub_29AD1E110(&v46, a2 + 13) & 1) == 0)
    {
      v26 = *(&v46 + 1);
      for (j = v46; j != v26; j += 10)
      {
        if (*j != *a3)
        {
          if (a2[14] == sub_29AD1341C(a2 + 13, j))
          {
            if (a4[1] == sub_29AD16F3C(a4, j) || a2[6] != sub_29AD16F3C(i, j))
            {
LABEL_46:
              sub_29A377A70(&v50, j);
              v54 = 0;
              sub_29AC4CE80(a5, j, &v54);
              if ((v54 & 7) != 0)
              {
                atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }
          }

          else if (a2[6] != sub_29AD16F3C(i, j) && a4[1] == sub_29AD16F3C(a4, j))
          {
            goto LABEL_46;
          }
        }
      }

      v29 = a2[13];
      v28 = a2[14];
      while (v29 != v28)
      {
        if (*v29 != *a3)
        {
          v30 = sub_29AD1341C(&v46, v29);
          if (*(&v46 + 1) == v30 && a4[1] == sub_29AD16F3C(a4, v29))
          {
            sub_29A377A70(&v52, v29);
            sub_29AC4DAF8(a5 + 66, v29);
          }
        }

        v29 += 10;
      }

      sub_29AD18EA4(a2 + 13);
      *(a2 + 13) = v46;
      v31 = *(&v47 + 1);
      a2[15] = v47;
      v47 = 0uLL;
      v46 = 0uLL;
      sub_29A1DE554(a2 + 16, v31);
    }

    v32 = *(&v47 + 1);
    *(&v47 + 1) = 0;
    if (v32)
    {
      v33 = sub_29A1DE590(v32);
      operator delete(v33);
    }

    v54 = &v46;
    sub_29AD181A8(&v54);
  }

  v34 = *(&v50 + 1);
  for (k = v50; k != v34; k += 2)
  {
    if (*k != *a3)
    {
      atomic_store(a2, sub_29AD16FB0(a1 + 784, k));
    }
  }

  v36 = *(&v52 + 1);
  for (m = v52; m != v36; m += 2)
  {
    sub_29AD19798(a1 + 784, m, &v46);
    if (v46)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(&v46 + 1) == a1 + 800;
    }

    if (!v38)
    {
      atomic_store(0, (v46 + 16));
    }
  }

  sub_29AD170D4(i, a4);
  v39 = *(&v51 + 1);
  *(&v51 + 1) = 0;
  if (v39)
  {
    v40 = sub_29A1DE590(v39);
    operator delete(v40);
  }

  *&v46 = &v50;
  sub_29A1E234C(&v46);
  v41 = *(&v53 + 1);
  *(&v53 + 1) = 0;
  if (v41)
  {
    v42 = sub_29A1DE590(v41);
    operator delete(v42);
  }

  *&v50 = &v52;
  sub_29A1E234C(&v50);
}

void sub_29AD168E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_29AD14D48(va);
  sub_29A377C38(va1);
  sub_29A377C38(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD16A0C(uint64_t a1)
{
  sub_29A1DE554((a1 + 24), 0);
  v3 = a1;
  sub_29AD18DC4(&v3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_GarbageCollect(uint64_t this)
{
  v1 = *(this + 816);
  if (v1)
  {
    v2 = this;
    while ((*(v1 + 24) & 1) == 0)
    {
      v1 = *v1;
      if (!v1)
      {
        return this;
      }
    }

    while (!atomic_load((v1 + 16)))
    {
      v4 = v1;
      do
      {
        v4 = *v4;
      }

      while (v4 && (*(v4 + 24) & 1) == 0);
      this = sub_29AD1DA9C(v2 + 784, v1, v2 + 800, &v5);
LABEL_15:
      v1 = v4;
      if (!v4)
      {
        return this;
      }
    }

    v4 = v1;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (*(v4 + 24))
      {
        goto LABEL_15;
      }
    }
  }

  return this;
}

void **pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_SystemMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v26 = *MEMORY[0x29EDCA608];
  v7 = *(v3 + 1480);
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens);
  if (v7)
  {
    if (!result)
    {
      result = sub_29AD1DBB4(&pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens);
    }

    if ((result[1] ^ *v5) <= 7)
    {
      v21 = 0x1000000000;
      v23 = 0x1000000000;
      v25 = 0x1000000000;
      v16 = 0u;
      v17 = 0u;
      v19 = 0x800000000;
      v9 = *(v6 + 216);
      if (v9)
      {
        while ((v9[4] & 1) == 0)
        {
          v9 = *v9;
          if (!v9)
          {
            goto LABEL_25;
          }
        }

LABEL_13:
        v10 = sub_29B2C7E34((v9 + 2));
        if (v11 & 1 | v10)
        {
          sub_29AD16E0C((v9 + 2));
        }

        sub_29AD1DCDC(v18, v9 + 2);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (v9[4])
          {
            goto LABEL_13;
          }
        }

        if (v19)
        {
          if (HIDWORD(v19) >= 9)
          {
            v12 = v18[0];
          }

          else
          {
            v12 = v18;
          }

          v13 = 8 * v19;
          do
          {
            sub_29AD16EC0(v6 + 184, v12);
            v12 += 2;
            v13 -= 8;
          }

          while (v13);
        }
      }

LABEL_25:
      if (v21)
      {
        pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v6, v20);
      }

      if (v23)
      {
        pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v6, v22);
      }

      if (v25)
      {
        pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v24);
      }

      sub_29AD1DC40(v18);
      v14 = *(&v17 + 1);
      *(&v17 + 1) = 0;
      if (v14)
      {
        v15 = sub_29A1DE590(v14);
        operator delete(v15);
      }

      v18[0] = &v16;
      sub_29AD18DC4(v18);
      sub_29ABD3844(v24);
      sub_29AC26348(v22);
      return sub_29AC263E4(v20);
    }
  }

  else
  {
    if (!result)
    {
      result = sub_29AD1DBB4(&pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens);
    }

    if ((*result ^ *v5) <= 7)
    {
      *(v6 + 1480) = 1;
    }
  }

  return result;
}

void sub_29AD16DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_29AD1DC40(&a14);
  sub_29AD16A0C(&a9);
  sub_29AD13EEC(&a23);
  _Unwind_Resume(a1);
}

void sub_29AD16E0C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2C7F34();
}

void sub_29AD16E5C(uint64_t *a1)
{
  v3 = *a1;
  for (i = a1[1]; i != v3; sub_29AD18E4C(a1, i))
  {
    i -= 16;
  }

  a1[1] = v3;

  sub_29A1DE554(a1 + 3, 0);
}

uint64_t sub_29AD16EC0(uint64_t a1, unsigned int *a2)
{
  sub_29AD1DE68(a1, a2, &v9);
  v3 = 0;
  if (v9 != v11 || v10 != v12)
  {
    v5 = v9;
    do
    {
      ++v3;
      do
      {
        v5 = *v5;
      }

      while (v5 && (*(v5 + 32) & 1) == 0);
    }

    while (v5 != v11 || v10 != v12);
  }

  sub_29AD1DDD8(a1, v9, v10, v11, v12, &v8);
  return v3;
}

void *sub_29AD16F3C(void *a1, unsigned int *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A2F4F50(v3, a2);
    if (v4)
    {
      return (*a1 + 16 * v4[3]);
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      while (*result != *a2)
      {
        result += 2;
        if (result == v6)
        {
          return a1[1];
        }
      }
    }
  }

  return result;
}

uint64_t sub_29AD16FB0(uint64_t a1, unsigned int *a2)
{
  sub_29AD19798(a1, a2, &v15);
  v4 = v15;
  if (v15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v15 + 1) == a1 + 16;
  }

  if (v5)
  {
    sub_29A1E21F4(&v8, a2);
    sub_29A1E2240(&v9, a2 + 1);
    atomic_store(0, &v10);
    v11 = v8;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v8);
    v12 = v9;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v9);
    v6 = atomic_load(&v10);
    atomic_store(v6, &v13);
    sub_29AD1E254(a1, &v11, 0, &v14);
    v15 = v14;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    sub_29A1DE3A4(&v8);
    v4 = v15;
  }

  return v4 + 16;
}

void sub_29AD170B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, int a11)
{
  sub_29AD172AC(&a11);
  sub_29AD1E214(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AD170D4(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_29AD18FD8(&v9, a2);
    v3 = v9;
    v4 = v10;
    v9 = *a1;
    v6 = a1[2];
    v5 = a1[3];
    *a1 = v3;
    *(a1 + 1) = v4;
    v10 = v6;
    if (v5)
    {
      v7 = sub_29A1DE590(v5);
      operator delete(v7);
    }

    v11 = &v9;
    sub_29AD18DC4(&v11);
  }

  return a1;
}

uint64_t sub_29AD17170(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AD171A4(a1 + 16);
  return a1;
}

uint64_t sub_29AD171A4(uint64_t a1)
{
  sub_29AD171E0(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AD17228(a1, v2);
  return a1;
}

uint64_t sub_29AD171E0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AD17228(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AD17228(uint64_t a1, tbb::internal *this)
{
  if (*(this + 24))
  {
    sub_29AD1726C(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

_DWORD *sub_29AD1726C(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));

  return sub_29A1DE3A4((a2 + 8));
}

_DWORD *sub_29AD172AC(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AD172EC(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AD17320(a1 + 16);
  return a1;
}

uint64_t sub_29AD17320(uint64_t a1)
{
  sub_29AD1735C(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AD173A4(a1, v2);
  return a1;
}

uint64_t sub_29AD1735C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AD173A4(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AD173A4(uint64_t a1, tbb::internal *this)
{
  if (*(this + 32))
  {
    sub_29B2C7CB4(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29AD173EC(uint64_t a1)
{
  *a1 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  bzero((a1 + 8), 0x1E90uLL);
  *(a1 + 268) = 16;
  *(a1 + 404) = 16;
  *(a1 + 7832) = 0x1000000000;
  return a1;
}

void sub_29AD17450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *v4 + 122880;
  if (*(v7 + 2564) >= 0x11u)
  {
    v6 = *v6;
  }

  v8 = *(v7 + 2560);
  v11 = v5;
  v13[0] = 0;
  v14 = 65539;
  v15 = 55;
  tbb::task_group_context::init(v13, a2, a3, a4);
  if (v8)
  {
    v12 = v13;
    v9 = tbb::internal::allocate_root_with_context_proxy::allocate(&v12, 0x38uLL);
    *(v9 - 11) = 1;
    *v9 = &unk_2A2085EE8;
    *(v9 + 8) = &v6[980 * v8];
    *(v9 + 16) = v6;
    *(v9 + 24) = 1;
    *(v9 + 32) = &v11;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v9);
    *(v9 + 48) = 0;
    *(v9 + 52) = 5;
    *(v9 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v9 - 40) + 16))(*(v9 - 40), v9, v9 - 8);
  }

  tbb::task_group_context::~task_group_context(v13);
}

void sub_29AD17594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a11, v15);
  tbb::task_group_context::~task_group_context(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD175E0(tbb::internal::allocate_continuation_proxy *this)
{
  v31 = *MEMORY[0x29EDCA608];
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

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = 0x1913DA62386CAB5DLL * ((*(this + 1) - *(this + 2)) >> 5);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A2085EE8;
        *(v9 + 8) = v10;
        v12 = v11 + 7840 * ((v10 - v11) / 15680);
        *(this + 1) = v12;
        v13 = *(this + 3);
        *(v9 + 16) = v12;
        *(v9 + 24) = v13;
        *(v9 + 32) = *(this + 4);
        v14 = *(this + 5) >> 1;
        *(this + 5) = v14;
        *(v9 + 40) = v14;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = 0x1913DA62386CAB5DLL * ((*(this + 1) - *(this + 2)) >> 5);
        if (v5 >= v6)
        {
          break;
        }

        v15 = *(this + 5);
        if (v15 <= 1)
        {
          if (!v15 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v28 = 0x10000;
    v29 = *v4;
    v30 = *(this + 3);
    while (1)
    {
      sub_29AD17AB8(v28, *(this + 52));
      v16 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v16)
      {
        v17 = *(this + 52) + 1;
        *(this + 52) = v17;
        v18 = v28[2];
        if (v28[2] >= 2u)
        {
          v19 = v28[1];
          v20 = v28[v28[1] + 3];
          v21 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v21 - 11) = 1;
          *v21 = &unk_2A204C520;
          __dmb(0xBu);
          v21[8] = 0;
          *(this - 4) = v21;
          *(v21 - 3) = 2;
          v22 = tbb::internal::allocate_child_proxy::allocate(v21, 0x38uLL);
          v23 = &v29 + 24 * v19;
          *(v22 - 11) = 1;
          *v22 = &unk_2A2085EE8;
          v24 = *v23;
          *(v22 + 24) = *(v23 + 2);
          *(v22 + 8) = v24;
          *(v22 + 32) = *(this + 4);
          v25 = *(this + 5) >> 1;
          *(this + 5) = v25;
          *(v22 + 40) = v25;
          *(v22 + 48) = 2;
          *(v22 + 52) = *(this + 52) - v20;
          (***(v22 - 40))();
          v18 = --v28[2];
          v28[1] = (v28[1] + 1) & 7;
          goto LABEL_25;
        }

        v26 = v28[0];
        if (v28[v28[0] + 3] < v17 && *(&v29 + 3 * v28[0] + 2) < (0x1913DA62386CAB5DLL * ((*(&v29 + 3 * v28[0]) - *(&v29 + 3 * v28[0] + 1)) >> 5)))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = v28[0];
      }

      sub_29AD17A58(this, &v29 + 3 * v26);
      v18 = --v28[2];
      v28[0] = (v28[0] - 1) & 7;
LABEL_25:
      if (!v18 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AD17A58(this, this + 1);
  return 0;
}

void *sub_29AD17A58(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v4 = result;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProcedural(*v4[4], v2, 1, (v2 + 8));
      v2 += 7840;
    }

    while (v2 != v3);
  }

  return result;
}

__n128 sub_29AD17AB8(unsigned __int8 *a1, unsigned int a2)
{
  v2 = a1[2];
  if (v2 <= 7)
  {
    v3 = a1 + 3;
    v4 = *a1;
    v5 = a1[v4 + 3];
    v6 = a1 + 16;
    do
    {
      if (a2 <= v5)
      {
        break;
      }

      v7 = &v6[24 * v4];
      if (v7[1].n128_u64[0] >= 0x1913DA62386CAB5DLL * ((v7->n128_u64[0] - v7->n128_u64[1]) >> 5))
      {
        break;
      }

      v8 = (v4 + 1) & 7;
      v9 = &v6[24 * v8];
      v10 = v7[1].n128_u64[0];
      result = *v7;
      *v9 = *v7;
      v12 = v9->n128_u64[0];
      v13 = v9->n128_i64[1];
      v14 = (v9->n128_u64[0] - v13) / 15680;
      *a1 = v8;
      v9[1].n128_u64[0] = v10;
      v15 = v13 + 7840 * v14;
      v7->n128_u64[0] = v12;
      v7->n128_u64[1] = v15;
      v9->n128_u64[0] = v15;
      v5 = v3[v4] + 1;
      v3[v4] = v5;
      v3[v8] = v5;
      v7[1].n128_u64[0] = v10;
      a1[2] = v2 + 1;
      LOBYTE(v4) = (v4 + 1) & 7;
    }

    while (v2++ < 7);
  }

  return result;
}

void sub_29AD17BA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *v4 + 122880;
  if (*(v7 + 2564) >= 0x11u)
  {
    v6 = *v6;
  }

  v8 = *(v7 + 2560);
  v11 = v5;
  v13[0] = 0;
  v14 = 65539;
  v15 = 55;
  tbb::task_group_context::init(v13, a2, a3, a4);
  if (v8)
  {
    v12 = v13;
    v9 = tbb::internal::allocate_root_with_context_proxy::allocate(&v12, 0x38uLL);
    *(v9 - 11) = 1;
    *v9 = &unk_2A2085F70;
    *(v9 + 8) = &v6[980 * v8];
    *(v9 + 16) = v6;
    *(v9 + 24) = 1;
    *(v9 + 32) = &v11;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v9);
    *(v9 + 48) = 0;
    *(v9 + 52) = 5;
    *(v9 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v9 - 40) + 16))(*(v9 - 40), v9, v9 - 8);
  }

  tbb::task_group_context::~task_group_context(v13);
}

void sub_29AD17CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a11, v15);
  tbb::task_group_context::~task_group_context(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD17D30(tbb::internal::allocate_continuation_proxy *this)
{
  v31 = *MEMORY[0x29EDCA608];
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

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = 0x1913DA62386CAB5DLL * ((*(this + 1) - *(this + 2)) >> 5);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A2085F70;
        *(v9 + 8) = v10;
        v12 = v11 + 7840 * ((v10 - v11) / 15680);
        *(this + 1) = v12;
        v13 = *(this + 3);
        *(v9 + 16) = v12;
        *(v9 + 24) = v13;
        *(v9 + 32) = *(this + 4);
        v14 = *(this + 5) >> 1;
        *(this + 5) = v14;
        *(v9 + 40) = v14;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = 0x1913DA62386CAB5DLL * ((*(this + 1) - *(this + 2)) >> 5);
        if (v5 >= v6)
        {
          break;
        }

        v15 = *(this + 5);
        if (v15 <= 1)
        {
          if (!v15 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v28 = 0x10000;
    v29 = *v4;
    v30 = *(this + 3);
    while (1)
    {
      sub_29AD17AB8(v28, *(this + 52));
      v16 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v16)
      {
        v17 = *(this + 52) + 1;
        *(this + 52) = v17;
        v18 = v28[2];
        if (v28[2] >= 2u)
        {
          v19 = v28[1];
          v20 = v28[v28[1] + 3];
          v21 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v21 - 11) = 1;
          *v21 = &unk_2A204C520;
          __dmb(0xBu);
          v21[8] = 0;
          *(this - 4) = v21;
          *(v21 - 3) = 2;
          v22 = tbb::internal::allocate_child_proxy::allocate(v21, 0x38uLL);
          v23 = &v29 + 24 * v19;
          *(v22 - 11) = 1;
          *v22 = &unk_2A2085F70;
          v24 = *v23;
          *(v22 + 24) = *(v23 + 2);
          *(v22 + 8) = v24;
          *(v22 + 32) = *(this + 4);
          v25 = *(this + 5) >> 1;
          *(this + 5) = v25;
          *(v22 + 40) = v25;
          *(v22 + 48) = 2;
          *(v22 + 52) = *(this + 52) - v20;
          (***(v22 - 40))();
          v18 = --v28[2];
          v28[1] = (v28[1] + 1) & 7;
          goto LABEL_25;
        }

        v26 = v28[0];
        if (v28[v28[0] + 3] < v17 && *(&v29 + 3 * v28[0] + 2) < (0x1913DA62386CAB5DLL * ((*(&v29 + 3 * v28[0]) - *(&v29 + 3 * v28[0] + 1)) >> 5)))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = v28[0];
      }

      sub_29AD17A58(this, &v29 + 3 * v26);
      v18 = --v28[2];
      v28[0] = (v28[0] - 1) & 7;
LABEL_25:
      if (!v18 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AD17A58(this, this + 1);
  return 0;
}

void sub_29AD181A8(void ***a1)
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
        v4 -= 40;
        sub_29AD18230(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AD18230(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  sub_29A1DE554((a2 + 32), 0);
  v5 = v3;
  sub_29A1E234C(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));
  return sub_29A1DE3A4(a2);
}

_DWORD *sub_29AD18288(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_29A1DE554((a1 + 32), 0);
  v4 = v2;
  sub_29A1E234C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29AD182E0(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_29A1DE554((a1 + 32), 0);
  v4 = v2;
  sub_29A1E234C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29AD1833C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *v4 + 122880;
  if (*(v7 + 2692) >= 0x11u)
  {
    v6 = *v6;
  }

  v8 = *(v7 + 2688);
  v11 = v5;
  v13[0] = 0;
  v14 = 65539;
  v15 = 55;
  tbb::task_group_context::init(v13, a2, a3, a4);
  if (v8)
  {
    v12 = v13;
    v9 = tbb::internal::allocate_root_with_context_proxy::allocate(&v12, 0x38uLL);
    *(v9 - 11) = 1;
    *v9 = &unk_2A2085FF8;
    *(v9 + 8) = &v6[981 * v8];
    *(v9 + 16) = v6;
    *(v9 + 24) = 1;
    *(v9 + 32) = &v11;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v9);
    *(v9 + 48) = 0;
    *(v9 + 52) = 5;
    *(v9 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v9 - 40) + 16))(*(v9 - 40), v9, v9 - 8);
  }

  tbb::task_group_context::~task_group_context(v13);
}

void sub_29AD18480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a11, v15);
  tbb::task_group_context::~task_group_context(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD184CC(tbb::internal::allocate_continuation_proxy *this)
{
  v42 = *MEMORY[0x29EDCA608];
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

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = 0xBD31D7CFFBD31D7DLL * ((*(this + 1) - *(this + 2)) >> 3);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A2085FF8;
        *(v9 + 8) = v10;
        v12 = v11 + 7848 * ((v10 - v11) / 15696);
        *(this + 1) = v12;
        v13 = *(this + 3);
        *(v9 + 16) = v12;
        *(v9 + 24) = v13;
        *(v9 + 32) = *(this + 4);
        v14 = *(this + 5) >> 1;
        *(this + 5) = v14;
        *(v9 + 40) = v14;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = 0xBD31D7CFFBD31D7DLL * ((*(this + 1) - *(this + 2)) >> 3);
        if (v5 >= v6)
        {
          break;
        }

        v15 = *(this + 5);
        if (v15 <= 1)
        {
          if (!v15 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6)
  {
    v16 = *(this + 52);
    if (v16)
    {
      *v39 = 0x10000;
      v40 = *v4;
      v41 = *(this + 3);
      v17 = 1;
      while (1)
      {
        if (v17 <= 7u)
        {
          LOBYTE(v18) = v39[0];
          for (i = v39[v39[0] + 3]; i < v16; i = v28)
          {
            v20 = v18;
            v21 = &v40 + 3 * v18;
            if (v21[2] >= 0xBD31D7CFFBD31D7DLL * ((*v21 - v21[1]) >> 3))
            {
              break;
            }

            v18 = (v18 + 1) & 7;
            v22 = &v40 + 24 * v18;
            v23 = v21[2];
            *v22 = *v21;
            v24 = *v22;
            v25 = *(v22 + 1);
            v26 = *v22 - v25;
            *(v22 + 2) = v23;
            v27 = v25 + 7848 * (v26 / 15696);
            *v21 = v24;
            v21[1] = v27;
            *v22 = v27;
            v21[2] = v23;
            v28 = v39[v20 + 3] + 1;
            v39[v20 + 3] = v28;
            v39[v18 + 3] = v28;
            v29 = v17++;
            if (v29 > 6)
            {
              break;
            }
          }

          v39[0] = v18;
          v39[2] = v17;
        }

        v30 = *(*(this - 4) + 8);
        __dmb(0xBu);
        if ((v30 & 1) == 0)
        {
          break;
        }

        v31 = *(this + 52) + 1;
        *(this + 52) = v31;
        v17 = v39[2];
        if (v39[2] < 2u)
        {
          v37 = v39[0];
          if (v39[v39[0] + 3] >= v31 || *(&v40 + 3 * v39[0] + 2) >= 0xBD31D7CFFBD31D7DLL * ((*(&v40 + 3 * v39[0]) - *(&v40 + 3 * v39[0] + 1)) >> 3))
          {
            goto LABEL_31;
          }
        }

        else
        {
          v32 = &v40 + 24 * v39[1];
          v33 = v39[v39[1] + 3];
          v34 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v34 - 11) = 1;
          *v34 = &unk_2A204C520;
          __dmb(0xBu);
          v34[8] = 0;
          *(this - 4) = v34;
          *(v34 - 3) = 2;
          v35 = tbb::internal::allocate_child_proxy::allocate(v34, 0x38uLL);
          *(v35 - 11) = 1;
          *v35 = &unk_2A2085FF8;
          *(v35 + 8) = *v32;
          *(v35 + 24) = *(v32 + 2);
          *(v35 + 32) = *(this + 4);
          v36 = *(this + 5) >> 1;
          *(this + 5) = v36;
          *(v35 + 40) = v36;
          *(v35 + 48) = 2;
          *(v35 + 52) = *(this + 52) - v33;
          (***(v35 - 40))();
          v17 = --v39[2];
          v39[1] = (v39[1] + 1) & 7;
        }

LABEL_32:
        if (!v17 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
        {
          return 0;
        }

        v16 = *(this + 52);
      }

      v37 = v39[0];
      v17 = v39[2];
LABEL_31:
      sub_29AD18A08(this, &v40 + 3 * v37);
      v39[2] = --v17;
      v39[0] = (v37 - 1) & 7;
      goto LABEL_32;
    }
  }

  sub_29AD18A08(this, this + 1);
  return 0;
}

void *sub_29AD18A08(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v4 = result;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::_UpdateProcedural(*v4[4], v2, 1, (v2 + 8));
      v2 += 7848;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_29AD18A68(void ***a1)
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
        v4 -= 40;
        sub_29AD18AF0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AD18AF0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  sub_29A1DE554((a2 + 32), 0);
  v5 = v3;
  sub_29AD18D3C(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));
  return sub_29A1DE3A4(a2);
}

_DWORD *sub_29AD18B48(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_29A1DE554((a1 + 32), 0);
  v4 = v2;
  sub_29AD18D3C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29AD18BA0(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_29A1DE554((a1 + 32), 0);
  v4 = v2;
  sub_29AD18D3C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29AD18BF8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      sub_29AD18C64();
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_29AD18D3C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29AD18C64();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29AD18DC4(void ***a1)
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
        v4 -= 16;
        sub_29AD18E4C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AD18E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29AD18EA4(void **a1)
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
        v3 -= 40;
        sub_29AD18230(a1, v3);
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

void sub_29AD18F10(std::mutex *a1)
{
  a1->__m_.__sig = &unk_2A2085E30;
  sig = a1[23].__m_.__sig;
  if ((sig & 7) != 0)
  {
    atomic_fetch_add_explicit((sig & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::mutex::~mutex(a1 + 22);
  std::mutex::~mutex(a1 + 21);
  sub_29AD17170(&a1[12].__m_.__opaque[8], v3);
  sub_29AD196D0(&a1[11].__m_.__opaque[32]);
  sub_29AD172EC(&a1[2].__m_.__opaque[48], v4);
  sub_29AD19558(&a1[2].__m_.__opaque[8]);
  a1->__m_.__sig = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(&a1[1].__m_.__opaque[48], v5);
  sub_29ABD4DDC();
}

void *sub_29AD18FD8(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29AD19090(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  v4 = a2[3];
  if (v4)
  {
    v5 = operator new(0x28uLL);
    sub_29AD19230(v5, v4);
    sub_29A1DE554(a1 + 3, v5);
  }

  return a1;
}

void sub_29AD1905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  sub_29A1DE554(v10, 0);
  sub_29AD18DC4(&a10);
  _Unwind_Resume(a1);
}

void *sub_29AD19090(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AD19118(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AD190F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AD18DC4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD19118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A58D118(v4, v6);
      v6 += 16;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29AD191A4(v8);
  return v4;
}

uint64_t sub_29AD191A4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD191DC(a1);
  }

  return a1;
}

uint64_t *sub_29AD191DC(uint64_t *result)
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
      v3 -= 16;
      result = sub_29AD18E4C(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29AD19230(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A2F49C0(a1, i + 4, (i + 4));
  }

  return a1;
}

uint64_t sub_29AD192A8(uint64_t a1, unint64_t a2, _WORD *a3)
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

uint64_t sub_29AD19400(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x20);
  v5[3] = 0;
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

uint64_t sub_29AD19558(uint64_t a1)
{
  sub_29AD19594(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AD19594(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AD195D8(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AD195D8(_DWORD *a1)
{
  sub_29AD19620((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t *sub_29AD19620(uint64_t a1)
{
  std::mutex::~mutex((a1 + 136));
  sub_29A1DE554((a1 + 128), 0);
  v6 = (a1 + 104);
  sub_29AD181A8(&v6);
  sub_29A1DE554((a1 + 96), 0);
  v6 = (a1 + 72);
  sub_29AD18D3C(&v6);
  sub_29A1DE554((a1 + 64), 0);
  v6 = (a1 + 40);
  sub_29AD18DC4(&v6);
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29A0F6078(a1, v2);
}

uint64_t sub_29AD196D0(uint64_t a1)
{
  sub_29AD1970C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AD1970C(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AD19750(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AD19750(_DWORD *a1)
{
  sub_29A43A24C((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AD19798(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AD1987C(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[3];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void sub_29AD1987C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AD19918(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AD19918(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AD19918(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AD199FC(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AD199FC@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x20);
  *(result + 3) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[3];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AD17228(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

uint64_t sub_29AD19AD0(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AD19B2C(a1, a2, a3);
  return a1;
}

void sub_29AD19B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_29A1DE554((v10 + 24), 0);
  a10 = v10;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void sub_29AD19B2C(uint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a2;
  if ((((a1[1] - *a1) >> 3) + ((a3 - a2) >> 3)) >= 0x80 && !a1[3])
  {
    v6 = operator new(0x28uLL);
    *v6 = 0u;
    v6[1] = 0u;
    *(v6 + 8) = 1065353216;
    sub_29A019AA0(v6, 0x80uLL);
    sub_29A1DE554(a1 + 3, v6);
    v7 = *a1;
    if (a1[1] != *a1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = a1[3];
        v11 = (v7 + v8);
        sub_29A377E5C(v10, (v7 + v8), &unk_29B4D6118, &v11)[3] = v9++;
        v7 = *a1;
        v8 += 8;
      }

      while (v9 < (a1[1] - *a1) >> 3);
    }
  }

  for (; v4 != a3; v4 += 2)
  {
    sub_29A377A70(a1, v4);
  }
}

void sub_29AD19C38(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD19C50(uint64_t a1)
{
  sub_29AD19C98(a1);
  if (*(a1 + 125444) >= 0x11u)
  {
    free(*a1);
  }

  return a1;
}

void **sub_29AD19C98(void **result)
{
  v1 = result;
  if (*(result + 31361) >= 0x11u)
  {
    v1 = *result;
  }

  v2 = *(result + 31360);
  if (v2)
  {
    v3 = 7840 * v2;
    do
    {
      sub_29ABD3844((v1 + 51));
      sub_29AC26348(v1 + 34);
      sub_29AC263E4(v1 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v1 + 1);
      result = sub_29A1DE3A4(v1);
      v1 += 980;
      v3 -= 7840;
    }

    while (v3);
  }

  return result;
}

uint64_t *sub_29AD19D20(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a1 + 15360;
    if (*(a1 + 31361) >= 0x11u)
    {
      a1 = *a1;
    }

    v5 = 0x1913DA62386CAB5DLL * ((a3 - a2) >> 5);
    v6 = &a1[980 * *(v4 + 640)];
    if (v6 != a3)
    {
      sub_29AD19E34();
    }

    v7 = 0;
    do
    {
      v8 = &v6[-980 * v5];
      sub_29ABD3844((v8 + 51));
      sub_29AC26348(v8 + 34);
      sub_29AC263E4(v8 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v8 + 1);
      sub_29A1DE3A4(v8);
      v7 -= 7840;
      v6 += 980;
    }

    while (-7840 * v5 != v7);
    *(v4 + 640) -= v5;
  }

  return a2;
}

_DWORD *sub_29AD19E98(_DWORD *result, _DWORD *a2)
{
  v2 = result;
  v3 = a2[65];
  if (result[65] > 0x10u)
  {
    if (v3 >= 0x11)
    {
      v21 = *result;
      *result = *a2;
      *a2 = v21;
      LODWORD(v21) = result[64];
      result[64] = a2[64];
      a2[64] = v21;
      LODWORD(v21) = result[65];
      result[65] = a2[65];
      a2[65] = v21;
      return result;
    }

    v9 = a2;
  }

  else
  {
    if (v3 <= 0x10)
    {
      v4 = result[64];
      v5 = a2[64];
      if (v4 >= v5)
      {
        v6 = a2;
      }

      else
      {
        v6 = result;
      }

      if (v4 >= v5)
      {
        v7 = result;
      }

      else
      {
        v7 = a2;
      }

      v8 = v6;
      if (v6[65] >= 0x11)
      {
        v8 = *v6;
      }

      if (v6[64])
      {
        sub_29AD1A148(v8);
      }

      v22 = 0;
      LODWORD(v23) = v7[64];
      if (v23)
      {
        v24 = 0;
        v25 = 2;
        do
        {
          v26 = v6;
          if (v6[65] >= 0x11)
          {
            v26 = *v6;
          }

          v27 = v7;
          if (v7[65] >= 0x11u)
          {
            v27 = *v7;
          }

          v28 = &v26[v25];
          v29 = &v27[v25];
          sub_29A1DDD84(&v26[v25 - 2], &v27[v25 - 2]);
          sub_29A1DDDC0(v28 - 1, v29 - 1);
          *v28 = *v29;
          *v29 = 0;
          v30 = v7;
          if (v7[65] >= 0x11u)
          {
            v30 = *v7;
          }

          v31 = &v30[v25];
          v32 = v31 - 1;
          if ((*v31 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v31 - 1);
          result = sub_29A1DE3A4(v32);
          ++v24;
          v23 = v7[64];
          v25 += 4;
        }

        while (v24 < v23);
        v22 = v6[64];
      }

      v6[64] = v23;
      v7[64] = v22;
      return result;
    }

    v9 = result;
    v2 = a2;
  }

  v10 = *v2;
  LODWORD(v11) = v9[64];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v9;
      if (v9[65] >= 0x11u)
      {
        v14 = *v9;
      }

      v15 = &v14[v12];
      sub_29A1DDD84(&v2[v12], &v14[v12]);
      sub_29A1DDDC0(&v2[v12 + 1], v15 + 1);
      *&v2[v12 + 2] = *(v15 + 1);
      *(v15 + 1) = 0;
      v16 = v9;
      if (v9[65] >= 0x11u)
      {
        v16 = *v9;
      }

      v17 = &v16[v12];
      v18 = *&v16[v12 + 2];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v17 + 1);
      result = sub_29A1DE3A4(v17);
      ++v13;
      v11 = v9[64];
      v12 += 4;
    }

    while (v13 < v11);
  }

  *v9 = v10;
  v19 = v2[64];
  v2[64] = v11;
  v9[64] = v19;
  v20 = v2[65];
  v2[65] = v9[65];
  v9[65] = v20;
  return result;
}

void sub_29AD1A148(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

_DWORD *sub_29AD1A278(_DWORD *result, _DWORD *a2)
{
  v2 = result;
  v3 = a2[33];
  if (result[33] > 0x10u)
  {
    if (v3 >= 0x11)
    {
      v31 = *result;
      *result = *a2;
      *a2 = v31;
      LODWORD(v31) = result[32];
      result[32] = a2[32];
      a2[32] = v31;
      LODWORD(v31) = result[33];
      result[33] = a2[33];
      a2[33] = v31;
      return result;
    }

    v19 = a2;
  }

  else
  {
    if (v3 <= 0x10)
    {
      v4 = result[32];
      v5 = a2[32];
      if (v4 >= v5)
      {
        v6 = a2;
      }

      else
      {
        v6 = result;
      }

      if (v4 >= v5)
      {
        v7 = result;
      }

      else
      {
        v7 = a2;
      }

      v8 = v6;
      if (v6[33] >= 0x11)
      {
        v8 = *v6;
      }

      v9 = v6[32];
      if (v9)
      {
        sub_29AD1A4D0(v8);
      }

      LODWORD(v10) = v7[32];
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = v6;
          if (v6[33] >= 0x11)
          {
            v13 = *v6;
          }

          v14 = v7;
          if (v7[33] >= 0x11u)
          {
            v14 = *v7;
          }

          v15 = &v14[v11];
          v16 = sub_29A1DDD84(&v13[v11], &v14[v11]);
          sub_29A1DDDC0(v16 + 1, v15 + 1);
          v17 = v7;
          if (v7[33] >= 0x11u)
          {
            v17 = *v7;
          }

          v18 = &v17[v11];
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17[v11 + 1]);
          result = sub_29A1DE3A4(v18);
          ++v12;
          v10 = v7[32];
          v11 += 2;
        }

        while (v12 < v10);
        v9 = v6[32];
      }

      v6[32] = v10;
      v7[32] = v9;
      return result;
    }

    v19 = result;
    v2 = a2;
  }

  v20 = *v2;
  LODWORD(v21) = v19[32];
  if (v21)
  {
    v22 = 0;
    v23 = 1;
    v24 = v2;
    do
    {
      v25 = v19;
      if (v19[33] >= 0x11u)
      {
        v25 = *v19;
      }

      v26 = &v25[v23];
      sub_29A1DDD84(v24, &v25[v23 - 1]);
      sub_29A1DDDC0(v24 + 1, v26);
      v27 = v19;
      if (v19[33] >= 0x11u)
      {
        v27 = *v19;
      }

      v28 = &v27[v23];
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27[v23]);
      result = sub_29A1DE3A4(v28 - 1);
      ++v22;
      v21 = v19[32];
      v24 += 2;
      v23 += 2;
    }

    while (v22 < v21);
  }

  *v19 = v20;
  v29 = v2[32];
  v2[32] = v21;
  v19[32] = v29;
  v30 = v2[33];
  v2[33] = v19[33];
  v19[33] = v30;
  return result;
}

void sub_29AD1A4D0(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

_DWORD *sub_29AD1A57C(_DWORD *result, _DWORD *a2)
{
  v2 = result;
  v3 = a2[1857];
  if (result[1857] > 0x10u)
  {
    if (v3 >= 0x11)
    {
      v15 = *result;
      *result = *a2;
      *a2 = v15;
      LODWORD(v15) = result[1856];
      result[1856] = a2[1856];
      a2[1856] = v15;
      LODWORD(v15) = result[1857];
      result[1857] = a2[1857];
      a2[1857] = v15;
      return result;
    }

    v11 = a2;
  }

  else
  {
    if (v3 <= 0x10)
    {
      v4 = result[1856];
      v5 = a2[1856];
      if (v4 >= v5)
      {
        v6 = a2;
      }

      else
      {
        v6 = result;
      }

      if (v4 >= v5)
      {
        v7 = result;
      }

      else
      {
        v7 = a2;
      }

      v8 = v6;
      if (v6[1857] >= 0x11)
      {
        v8 = *v6;
      }

      if (v6[1856])
      {
        sub_29AD1A820(v8);
      }

      if (v7[1856])
      {
        v9 = v6;
        if (v6[1857] >= 0x11)
        {
          v9 = *v6;
        }

        v10 = v7;
        if (v7[1857] >= 0x11u)
        {
          v10 = *v7;
        }

        sub_29AD1A7CC(v9, v10);
        sub_29ABD3178();
      }

      v6[1856] = 0;
      v7[1856] = 0;
      return result;
    }

    v11 = result;
    v2 = a2;
  }

  if (v11[1856])
  {
    v12 = v11;
    if (v11[1857] >= 0x11u)
    {
      v12 = *v11;
    }

    sub_29AD1A7CC(v2, v12);
    sub_29ABD3178();
  }

  *v11 = *v2;
  v13 = v2[1856];
  v2[1856] = 0;
  v11[1856] = v13;
  v14 = v2[1857];
  v2[1857] = v11[1857];
  v11[1857] = v14;
  return result;
}

uint64_t sub_29AD1A7CC(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, a2 + 1);
  return sub_29AC14EB8((a1 + 2), (a2 + 2));
}

void sub_29AD1A820(int *a1)
{
  v4[57] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  sub_29AC14EB8(v4, (a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AD1A934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD1A970(void **a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1 + 15360;
  v5 = malloc(7840 * a2);
  v6 = a1;
  if (*(v4 + 641) >= 0x11u)
  {
    v6 = *a1;
  }

  sub_29AD1A9FC(v6, &v6[1960 * *(v4 + 640)], v5);
  sub_29AD19C98(a1);
  if (*(v4 + 641) >= 0x11u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(v4 + 641) = v2;
}

_DWORD *sub_29AD1A9FC(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a1;
  v6 = 0;
  result = a3;
  do
  {
    v7 = sub_29AD1AAB4(result, v5);
    v5 += 1960;
    result = v7 + 1960;
    v6 -= 7840;
  }

  while (v5 != a2);
  return result;
}

void sub_29AD1AA70(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29AD1ACF8(v1);
      v1 += 7840;
      v3 -= 7840;
    }

    while (v3);
  }

  __cxa_rethrow();
}

_DWORD *sub_29AD1AAB4(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, a2 + 1);
  sub_29AD1AB44((a1 + 2), a2 + 2);
  sub_29AD1ABD4((a1 + 68), a2 + 68);
  sub_29AD1AC64((a1 + 102), (a2 + 102));
  return a1;
}

void sub_29AD1AB10(_Unwind_Exception *a1)
{
  sub_29AC26348((v1 + 272));
  sub_29AC263E4((v1 + 8));
  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD1AB44(uint64_t a1, _DWORD *a2)
{
  *(a1 + 256) = 0x1000000000;
  v4 = a2[64];
  if (v4 < 0x11)
  {
    if (a2[65] >= 0x11u)
    {
      v5 = *a2;
    }

    else
    {
      v5 = a2;
    }

    sub_29AC3D770(v5, v5 + 16 * v4, a1);
    sub_29AC26424(a2);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 260) = a2[65];
    a2[65] = 16;
  }

  v6 = *(a1 + 256);
  *(a1 + 256) = a2[64];
  a2[64] = v6;
  return a1;
}

uint64_t sub_29AD1ABD4(uint64_t a1, _DWORD *a2)
{
  *(a1 + 128) = 0x1000000000;
  v4 = a2[32];
  if (v4 < 0x11)
  {
    if (a2[33] >= 0x11u)
    {
      v5 = *a2;
    }

    else
    {
      v5 = a2;
    }

    sub_29A7D8DFC(v5, &v5[2 * v4], a1);
    sub_29AC26388(a2);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 132) = a2[33];
    a2[33] = 16;
  }

  v6 = *(a1 + 128);
  *(a1 + 128) = a2[32];
  a2[32] = v6;
  return a1;
}

uint64_t sub_29AD1AC64(uint64_t a1, uint64_t a2)
{
  *(a1 + 7424) = 0x1000000000;
  v4 = *(a2 + 7424);
  if (v4 < 0x11)
  {
    if (*(a2 + 7428) >= 0x11u)
    {
      v5 = *a2;
    }

    else
    {
      v5 = a2;
    }

    sub_29AC14DDC(v5, v5 + 464 * v4, a1);
    sub_29ABD3884(a2);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 7428) = *(a2 + 7428);
    *(a2 + 7428) = 16;
  }

  v6 = *(a1 + 7424);
  *(a1 + 7424) = *(a2 + 7424);
  *(a2 + 7424) = v6;
  return a1;
}

_DWORD *sub_29AD1ACF8(uint64_t a1)
{
  sub_29ABD3844(a1 + 408);
  sub_29AC26348((a1 + 272));
  sub_29AC263E4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29AD1AD50(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29AD12CB8(a1 + 2, (a2 + 2));
  sub_29AD1ADE0(a1 + 68, a2 + 68);
  sub_29AD1CB84(a1 + 102, (a2 + 102));
  return a1;
}

void sub_29AD1ADAC(_Unwind_Exception *a1)
{
  sub_29AC26348((v1 + 272));
  sub_29AC263E4((v1 + 8));
  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AD1ADE0(_DWORD *a1, _DWORD *a2)
{
  a1[33] = 16;
  v4 = a2[32];
  v5 = a1;
  if (v4 >= 0x11)
  {
    v5 = malloc(8 * v4);
    *a1 = v5;
    a1[33] = v4;
  }

  a1[32] = v4;
  if (a2[33] >= 0x11u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  sub_29A7D8ED8(v6, &v6[2 * a2[32]], v5);
  return a1;
}

void *sub_29AD1AE58(void *a1, _DWORD *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
    sub_29A1E21F4(&v13, a2);
    sub_29A1E2240(&v14, a2 + 1);
    v15 = v5;
    v10 = v13;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v13);
    v11 = v14;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v14);
    v12 = v15;
    v6 = sub_29A2F49C0(v4, &v10, &v10);
    LOBYTE(v5) = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    sub_29A1DE3A4(&v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if ((v5 & 1) == 0)
    {
      return (*a1 + 40 * v6[3]);
    }

LABEL_9:
    sub_29AD1B4C8(&v10, a2);
  }

  result = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    while (*result != *a2)
    {
      result += 5;
      if (result == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (result == v9)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_29AD1B028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD18288(va);
  _Unwind_Resume(a1);
}

void sub_29AD1B064(void *a1, _DWORD *a2)
{
  if (a1[1] < a1[2])
  {
    sub_29AD1B1E8(a1[1], a2);
  }

  sub_29AD1B0B8(a1, a2);
}

void sub_29AD1B0B8(void *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v5 = 0x666666666666666;
    }

    else
    {
      v5 = v3;
    }

    v11 = a1;
    if (v5)
    {
      v6 = sub_29A10E224(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = &v6[40 * v2];
    v9 = v8;
    v10 = &v6[40 * v5];
    sub_29AD1B1E8(v8, a2);
  }

  sub_29A00C9A4();
}

void sub_29AD1B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD1B44C(va);
  _Unwind_Resume(a1);
}

void sub_29AD1B1E8(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29AD1B240((a1 + 8));
}

void sub_29AD1B240(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29AD1B2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  sub_29A1DE554(v10, 0);
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD1B2F8(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    sub_29AD1B1E8(a4, a2);
  }

  v6 = 1;
  return sub_29AD1B3C0(v5);
}

uint64_t sub_29AD1B3C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD1B3F8(a1);
  }

  return a1;
}

uint64_t *sub_29AD1B3F8(uint64_t *result)
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
      v3 -= 40;
      result = sub_29AD18230(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AD1B44C(void **a1)
{
  sub_29AD1B480(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AD1B480(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 40;
      result = sub_29AD18230(v4, v1 - 40);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29AD1B4C8(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29AD1B240((a1 + 8));
}

void sub_29AD1B52C(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1DE554(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        v7 = *v1;
        v8 = (v4 + v6);
        sub_29A1E21F4(&v9, (v4 + v6 - 4));
        sub_29A1E2240(&v10, v8);
        v11 = v5;
        v12 = v9;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v9);
        v13 = v10;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v10);
        v14 = v11;
        sub_29A2F49C0(v7, &v12, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
        sub_29A1DE3A4(&v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
        sub_29A1DE3A4(&v9);
        ++v5;
        v4 = *a1;
        v6 += 40;
      }

      while (v5 < 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    }
  }
}

void sub_29AD1B678(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AD1B6B8(void *a1, unsigned int **a2)
{
  v4 = a1[3];
  if (v4)
  {
    sub_29AD1B770(v4, *a2);
  }

  v5 = a1[1];
  v6 = *a2;
  if (*a2 != (v5 - 8))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(*a2, (v5 - 8));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v6 + 1, (v5 - 4));
    v7 = a1[3];
    if (v7)
    {
      v8 = *a2;
      v9 = (*a2 - *a1) >> 3;
      v12 = v8;
      sub_29A377E5C(v7, v8, &unk_29B4D6118, &v12)[3] = v9;
    }
  }

  v10 = (a1[1] - 8);
  result = sub_29A1E230C(a1, v10);
  a1[1] = v10;
  return result;
}

uint64_t *sub_29AD1B770(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29AD1B7A8(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AD1B7A8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A1DE610(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_29AD1B804(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29AD1B83C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AD1B83C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AD19750(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29AD1B898(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AD19750(v2 + 4);
    }

    operator delete(v2);
  }
}

void *sub_29AD1B8F4(uint64_t *a1, _DWORD *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
    sub_29A1E21F4(&v17, a2);
    sub_29A1E2240(&v17 + 1, a2 + 1);
    v18 = v5;
    v13 = v17;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v17);
    v14 = HIDWORD(v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v17 + 1);
    v15 = v18;
    v6 = sub_29A2F49C0(v4, &v13, &v13);
    LOBYTE(v5) = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    if ((v5 & 1) == 0)
    {
      return (*a1 + 40 * v6[3]);
    }

    goto LABEL_9;
  }

  result = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    while (*result != *a2)
    {
      result += 5;
      if (result == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (result == v9)
  {
LABEL_9:
    sub_29AD1C224(&v13, a2, (a2 + 2));
    sub_29AD1BB00(a1, &v13);
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      v11 = sub_29A1DE590(v10);
      operator delete(v11);
    }

    v17 = &v15;
    sub_29AD18D3C(&v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    v12 = a1[1];
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - *a1) >> 3) >= 0x80)
    {
      sub_29AD1C288(a1);
      v12 = a1[1];
    }

    return (v12 - 40);
  }

  return result;
}

void sub_29AD1BAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD18B48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD1BB00(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AD1BB54(a1, a2);
  }

  else
  {
    sub_29AD1BC84(*(a1 + 8), a2);
    result = v3 + 40;
    *(a1 + 8) = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AD1BB54(uint64_t a1, _DWORD *a2)
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[40 * v2];
  *(&v16 + 1) = &v7[40 * v6];
  sub_29AD1BC84(v15, a2);
  *&v16 = v15 + 40;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29AD1C054(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AD1C1A8(&v14);
  return v13;
}

void sub_29AD1BC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD1C1A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD1BC84(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29AD1BCDC((a1 + 8), (a2 + 2));
  return a1;
}

void *sub_29AD1BCDC(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29AD1BDA8(a1, *a2, *(a2 + 8), 0x34F72C234F72C235 * ((*(a2 + 8) - *a2) >> 4));
  a1[3] = 0;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = operator new(0x28uLL);
    sub_29AD19230(v5, v4);
    sub_29A1DE554(a1 + 3, v5);
  }

  return a1;
}

void sub_29AD1BD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  sub_29A1DE554(v10, 0);
  sub_29AD18D3C(&a10);
  _Unwind_Resume(a1);
}

void *sub_29AD1BDA8(void *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29AD1BE30(result, a4);
    result = sub_29AD1BECC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AD1BE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AD18D3C(&a9);
  _Unwind_Resume(a1);
}

char *sub_29AD1BE30(void *a1, unint64_t a2)
{
  if (a2 >= 0x8D3DCB08D3DCB1)
  {
    sub_29A00C9A4();
  }

  result = sub_29AD1BE80(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[464 * v4];
  return result;
}

void *sub_29AD1BE80(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x8D3DCB08D3DCB1)
  {
    sub_29A00C8B8();
  }

  return operator new(464 * a2);
}

_DWORD *sub_29AD1BECC(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
      sub_29AD1BF70(v4, v6);
      v6 += 116;
      v4 = v11 + 116;
      v11 += 116;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29AD1BFC8(v8);
  return v4;
}

_DWORD *sub_29AD1BF70(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29ABD2F88(a1 + 2, (a2 + 2));
  return a1;
}

uint64_t sub_29AD1BFC8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD1C000(a1);
  }

  return a1;
}

uint64_t sub_29AD1C000(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    sub_29AD18C64();
  }

  return result;
}

uint64_t sub_29AD1C054(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
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
      sub_29AD1BC84(a4, v7);
      v7 += 10;
      a4 = v12 + 40;
      v12 += 40;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AD18AF0(a1, v5);
      v5 += 40;
    }
  }

  return sub_29AD1C11C(v9);
}

uint64_t sub_29AD1C11C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD1C154(a1);
  }

  return a1;
}

uint64_t *sub_29AD1C154(uint64_t *result)
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
      v3 -= 40;
      result = sub_29AD18AF0(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AD1C1A8(void **a1)
{
  sub_29AD1C1DC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AD1C1DC(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 40;
      result = sub_29AD18AF0(v4, v1 - 40);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AD1C224(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29AD1BCDC((a1 + 8), a3);
  return a1;
}

void sub_29AD1C288(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1DE554(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        v7 = *v1;
        v8 = (v4 + v6);
        sub_29A1E21F4(&v9, (v4 + v6 - 4));
        sub_29A1E2240(&v10, v8);
        v11 = v5;
        v12 = v9;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v9);
        v13 = v10;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v10);
        v14 = v11;
        sub_29A2F49C0(v7, &v12, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
        sub_29A1DE3A4(&v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
        sub_29A1DE3A4(&v9);
        ++v5;
        v4 = *a1;
        v6 += 40;
      }

      while (v5 < 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    }
  }
}

void sub_29AD1C3D4(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29AD1C414(void *a1, _DWORD *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  if (v4)
  {
    v5 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 4);
    sub_29A1E21F4(&v10, a2);
    sub_29A1E2240(&v11, a2 + 1);
    v12 = v5;
    v13 = v10;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v10);
    v14 = v11;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v11);
    v15 = v12;
    v6 = sub_29A2F49C0(v4, &v13, &v13);
    LOBYTE(v5) = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    sub_29A1DE3A4(&v10);
    if ((v5 & 1) == 0)
    {
      return (*a1 + 464 * v6[3]);
    }

LABEL_9:
    sub_29AD1C928(&v13, a2, (a2 + 2));
    sub_29AD1C648(a1, &v13);
    sub_29ABD3178();
  }

  result = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    while (*result != *a2)
    {
      result += 58;
      if (result == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (result == v9)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_29AD1C5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AD1C648(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AD1C69C(a1, a2);
  }

  else
  {
    sub_29AD1BF70(*(a1 + 8), a2);
    result = v3 + 464;
    *(a1 + 8) = v3 + 464;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AD1C69C(uint64_t a1, _DWORD *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x8D3DCB08D3DCB0)
  {
    sub_29A00C9A4();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 4)) >= 0x469EE58469EE58)
  {
    v6 = 0x8D3DCB08D3DCB0;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29AD1BE80(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[464 * v2];
  *(&v16 + 1) = &v7[464 * v6];
  sub_29AD1BF70(v15, a2);
  *&v16 = v15 + 464;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29AD1C7E4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AD1C8AC(&v14);
  return v13;
}

void sub_29AD1C7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD1C8AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD1C7E4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v6 = a2;
    do
    {
      sub_29AD1BF70(a4, v6);
      v6 += 116;
      a4 = v11 + 116;
      v11 += 116;
    }

    while (v6 != a3);
    v9 = 1;
    if (a2 != a3)
    {
      sub_29AD18C64();
    }
  }

  return sub_29AD1BFC8(v8);
}

void **sub_29AD1C8AC(void **a1)
{
  sub_29AD1C8E0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AD1C8E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != *(result + 8))
  {
    *(result + 16) = v1 - 464;
    sub_29AD18C64();
  }

  return result;
}

_DWORD *sub_29AD1C928(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29ABD2F88(a1 + 2, a3);
  return a1;
}

void sub_29AD1C98C(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1DE554(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        v7 = *v1;
        v8 = (v4 + v6);
        sub_29A1E21F4(&v9, (v4 + v6 - 4));
        sub_29A1E2240(&v10, v8);
        v11 = v5;
        v12 = v9;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v9);
        v13 = v10;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v10);
        v14 = v11;
        sub_29A2F49C0(v7, &v12, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
        sub_29A1DE3A4(&v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
        sub_29A1DE3A4(&v9);
        ++v5;
        v4 = *a1;
        v6 += 464;
      }

      while (v5 < 0x34F72C234F72C235 * ((a1[1] - *a1) >> 4));
    }
  }
}

void sub_29AD1CAE0(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AD1CB20(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29AC14EB8((a1 + 2), a3);
  return a1;
}

_DWORD *sub_29AD1CB84(_DWORD *a1, uint64_t a2)
{
  a1[1857] = 16;
  v4 = *(a2 + 7424);
  v5 = a1;
  if (v4 >= 0x11)
  {
    v5 = malloc(464 * v4);
    *a1 = v5;
    a1[1857] = v4;
  }

  a1[1856] = v4;
  if (*(a2 + 7428) >= 0x11u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  sub_29ABD3720(v6, v6 + 464 * *(a2 + 7424), v5);
  return a1;
}

void **sub_29AD1CC08(void **result)
{
  v1 = result;
  if (*(result + 31393) >= 0x11u)
  {
    v1 = *result;
  }

  v2 = *(result + 31392);
  if (v2)
  {
    v3 = 7848 * v2;
    do
    {
      sub_29ABD3844((v1 + 51));
      sub_29AC26348(v1 + 34);
      sub_29AC263E4(v1 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v1 + 1);
      result = sub_29A1DE3A4(v1);
      v1 += 981;
      v3 -= 7848;
    }

    while (v3);
  }

  return result;
}

void **sub_29AD1CC90(void **result, void **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      sub_29ABD3844((v3 + 51));
      sub_29AC26348(v3 + 34);
      sub_29AC263E4(v3 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v3 + 1);
      result = sub_29A1DE3A4(v3);
      v3 += 981;
    }

    while (v3 != a2);
  }

  return result;
}

void *sub_29AD1CD00(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29AD1CF48(a1, v6, a4, &v22);
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

void sub_29AD1CF30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD1D000(va, 0);
  _Unwind_Resume(a1);
}

double sub_29AD1CF48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xE0uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  sub_29A1E2240(v8 + 5, v9 + 1);
  *(v8 + 3) = 0;
  v8[32] = 0;
  result = 0.0;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 19) = 0;
  *(v8 + 20) = 850045863;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 27) = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29AD1D000(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AD195D8(v2 + 4);
    }

    operator delete(v2);
  }
}

void *sub_29AD1D05C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2086040;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AD1D0B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C7FA8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD1D0D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD1D0F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD1D128(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086090))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD1D168(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AD1D35C(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[4] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[4];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29AD173A4(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[4];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AD1D3F8(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void sub_29AD1D35C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AD1D460(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

uint64_t sub_29AD1D3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x28);
  sub_29A1E21F4((v5 + 8), a3);
  sub_29A1E2240((v5 + 12), (a3 + 4));
  *(v5 + 16) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(v5 + 32) = a2;
  *v5 = 0;
  return v5;
}

void sub_29AD1D460(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AD1D460(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AD1D544(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AD1D544@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x28);
  *(result + 4) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[4];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AD173A4(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

unint64_t **sub_29AD1D618(unint64_t **a1, unint64_t *a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4(a2, &v5);
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

void sub_29AD1D674(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD1D68C(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AD1D35C(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[4];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void *sub_29AD1D770(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29AD1D9B8(a1, v6, a4, &v22);
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

void sub_29AD1D9A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD1B898(va, 0);
  _Unwind_Resume(a1);
}

double sub_29AD1D9B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  sub_29A1E2240(v8 + 5, v9 + 1);
  result = 0.0;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 14) = 1065353216;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AD1DA40(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AD195D8(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29AD1DA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AD1987C(a1, bswap64(0x9E3779B97F4A7C55 * (*(a2 + 12) + ((*(a2 + 12) + *(a2 + 8) + (*(a2 + 12) + *(a2 + 8)) * (*(a2 + 12) + *(a2 + 8))) >> 1))), &v12);
  result = a1 + 16;
  v9 = v12;
  if (v12)
  {
    while (1)
    {
      v10 = *v9;
      if (*v9 == a2 && result == a3)
      {
        break;
      }

      v12 = *v9;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v13 = v9;
    return sub_29AD1DB50(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AD1DB50@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AD17228(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[3])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType *sub_29AD1DBB4(atomic_ullong *a1)
{
  result = sub_29AD1DBFC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType::~HdSystemMessageTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType *sub_29AD1DBFC()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType::HdSystemMessageTokens_StaticTokenType(v0);
  return v0;
}

void **sub_29AD1DC40(void **a1)
{
  sub_29AD1DC80(a1);
  if (*(a1 + 17) >= 9u)
  {
    free(*a1);
  }

  return a1;
}

_DWORD *sub_29AD1DC80(_DWORD *result)
{
  v1 = result;
  if (result[17] >= 9u)
  {
    v1 = *result;
  }

  v2 = result[16];
  if (v2)
  {
    v3 = 8 * v2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v1 + 1);
      result = sub_29A1DE3A4(v1);
      v1 += 2;
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

_DWORD *sub_29AD1DCDC(_DWORD *a1, _DWORD *a2)
{
  v5 = a1[16];
  v4 = a1[17];
  if (v5 == v4)
  {
    sub_29AD1DD58(a1, v5 + (v5 >> 1) + 1);
    v4 = a1[17];
  }

  v6 = a1;
  if (v4 >= 9)
  {
    v6 = *a1;
  }

  v7 = sub_29A1E21F4(&v6[2 * a1[16]], a2);
  result = sub_29A1E2240(v7 + 1, a2 + 1);
  ++a1[16];
  return result;
}

void sub_29AD1DD58(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(8 * a2);
  v5 = a1;
  if (a1[17] >= 9u)
  {
    v5 = *a1;
  }

  sub_29A7D8DFC(v5, &v5[2 * a1[16]], v4);
  sub_29AD1DC80(a1);
  if (a1[17] >= 9u)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[17] = v2;
}

uint64_t sub_29AD1DDD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  for (i = result; v9 != a4 || a3 != a5; result = sub_29AD1DF70(i, v12, a3, &v14))
  {
    v12 = v9;
    do
    {
      v9 = *v9;
    }

    while (v9 && (*(v9 + 32) & 1) == 0);
  }

  *a6 = v9;
  a6[1] = a3;
  return result;
}

void sub_29AD1DE68(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v15 = 0;
  v16 = v5;
  v6 = &v16;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v15 + i) = byte_29B734F74[v8];
  }

  v9 = v15;
  v10 = a1 + 16;
  sub_29AD1D35C(a1, v5, &v16);
  v11 = v16;
  if (v16)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[4];
      if (v13 > v12)
      {
        v11 = 0;
        v14 = 0;
        goto LABEL_11;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v14 = v11;
    do
    {
      v14 = *v14;
    }

    while (v14 && (v14[4] & 1) == 0);
LABEL_11:
    *a3 = v11;
    a3[1] = v10;
    a3[2] = v14;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = v10;
    a3[2] = 0;
  }

  a3[3] = v10;
}

uint64_t sub_29AD1DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AD1D35C(a1, bswap64(0x9E3779B97F4A7C55 * (*(a2 + 12) + ((*(a2 + 12) + *(a2 + 8) + (*(a2 + 12) + *(a2 + 8)) * (*(a2 + 12) + *(a2 + 8))) >> 1))), &v12);
  result = a1 + 16;
  v9 = v12;
  if (v12)
  {
    while (1)
    {
      v10 = *v9;
      if (*v9 == a2 && result == a3)
      {
        break;
      }

      v12 = *v9;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v13 = v9;
    return sub_29AD1E024(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AD1E024@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AD173A4(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[4])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

uint64_t sub_29AD1E088(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  if ((v3 - *a1) == (v4 - *a2))
  {
    if (v2 == v3)
    {
      return 1;
    }

    while (1)
    {
      v6 = sub_29AD16F3C(a2, v2);
      if (v4 == v6 || (v6[1] ^ *(v2 + 8)) >= 8)
      {
        break;
      }

      v2 += 16;
      if (v2 == v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_29AD1E110(unsigned int **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  if ((v3 - *a1) == (v4 - *a2))
  {
    if (v2 == v3)
    {
      return 1;
    }

    while (1)
    {
      v6 = sub_29AD1341C(a2, v2);
      if (v4 == v6)
      {
        break;
      }

      v7 = (v2 + 2);
      if (!sub_29AD1E198(v7, v6 + 1))
      {
        break;
      }

      v2 = (v7 + 4);
      if (v2 == v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_29AD1E198(unsigned int **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    v5 = sub_29A377CFC(a2, v2);
    v6 = a2[1];
    v8 = v6 == v5;
    result = v6 != v5;
    v2 += 2;
    v8 = v8 || v2 == v3;
  }

  while (!v8);
  return result;
}

_DWORD *sub_29AD1E214(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AD1E254(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AD1987C(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[3] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[3];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29AD17228(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[3];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AD1E448(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

uint64_t sub_29AD1E448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x20);
  sub_29A1E21F4((v5 + 8), a3);
  sub_29A1E2240((v5 + 12), (a3 + 4));
  v6 = atomic_load((a3 + 8));
  atomic_store(v6, (v5 + 16));
  *(v5 + 24) = a2;
  *v5 = 0;
  return v5;
}

void sub_29AD1E4B8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDGP_INCLUDE_DEFAULT_RESOLVER))
  {
    sub_29B2C7FCC();
  }
}

void sub_29AD1E4E8(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HDGP_INCLUDE_DEFAULT_RESOLVER);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v1 == 1)
  {
    Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Instance);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, "HdGpSceneIndexPlugin");
    v4 = 0;
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, EmptyString, &v6, &v4, 2, 0);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AD1E5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdGpSceneIndexPlugin::HdGpSceneIndexPlugin(void *this)
{
  *this = &unk_2A20860B8;
  return this;
}

{
  *this = &unk_2A20860B8;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdGpSceneIndexPlugin::_AppendSceneIndex(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::GetInstance(a1);
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AD1E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29ABD4DDC();
}

uint64_t sub_29AD1E7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x5D0uLL);
  result = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::HdGpGenerativeProceduralResolvingSceneIndex(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_29AD1E82C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x5D0uLL);
  result = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralResolvingSceneIndex::HdGpGenerativeProceduralResolvingSceneIndex(v4, a1);
  *a2 = v4;
  return result;
}

void sub_29AD1E888(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29AD1E8B0()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1672;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdGpSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AD1E98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdGpSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdGp", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdGpSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A20860B8;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

void *sub_29AD1EA44(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2086100;
  result[1] = v3;
  return result;
}

uint64_t sub_29AD1EA8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2086100;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AD1EAC0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086180))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29AD1EB3C()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "proceduralPrimTypeName", 0);
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
  atomic_compare_exchange_strong(qword_2A174C260, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(qword_2A174C260);
  }

  return v0;
}

void sub_29AD1EC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void pxrInternal__aapl__pxrReserved__::HdsiComputeSceneIndexDiffRoot(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v21[43] = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
    sub_29AC4DAF8(a3, v7);
  }

  if (*a2)
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v21);
    v20 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v8);
    bzero(v20, 0x2C0uLL);
    v20[16] = vdupq_n_s64(0x10uLL);
    v19 = &unk_2A207C740;
    v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v9);
    sub_29AD1EE90(v21, a2, v10, &v19);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(v21);
    v13 = a4;
    if (a4[65] >= 0x11u)
    {
      v13 = *a4;
    }

    v14 = a4[64];
    sub_29AC4FA4C(v18, &v19, v11, v12);
    v17[0] = 0;
    v17[1] = 0;
    sub_29AC4D29C(a4, &v13[4 * v14], v18, v17);
    tbb::internal::NFS_Free(v17[0], v15);
    v17[0] = 0;
    tbb::internal::NFS_Free(v18[0], v16);
    v18[0] = 0;
    sub_29AC4F618(&v19);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v21);
  }
}

void sub_29AD1EE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, tbb::internal *a10, uint64_t a11, tbb::internal *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD1EE90(void **a1, uint64_t *a2, _DWORD *a3, uint64_t *a4)
{
  v8 = sub_29AC1199C(a2);
  (*(*v8 + 16))(v11);
  sub_29AC4CF04(a4, a3, v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = sub_29AC1199C(a2);
  (*(*v9 + 24))(v13);
  if (v13[0] != v13[1])
  {
    v10 = *a2;
    v11[0] = a1;
    v11[1] = v10;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  v11[0] = v13;
  sub_29A1E234C(v11);
}

void sub_29AD1F0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdsiComputeSceneIndexDiffDelta(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v46[3] = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    v10 = *a2 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v46[0] = &unk_2A20862B0;
    v12 = tbb::internal::NFS_Allocate(1uLL, 704, 0, a4);
    v46[1] = v12;
    bzero(v12, 0x2C0uLL);
    v12[16] = xmmword_29B4B25E0;
    v46[0] = &unk_2A2086240;
    v45 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v13);
    bzero(v45, 0x2C0uLL);
    v45[16] = vdupq_n_s64(0x10uLL);
    v44 = &unk_2A207C740;
    v43 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v14);
    bzero(v43, 0x2C0uLL);
    *(v43 + 16) = xmmword_29B6EDF10;
    v42 = &unk_2A20862F0;
    v15 = pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v41);
    v16 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v15);
    sub_29AD1F564(v41, a1, a2, v16, v46, &v44, &v42);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(v41);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v41);
    v19 = a3;
    if (*(a3 + 33) >= 0x11u)
    {
      v19 = *a3;
    }

    v20 = *(a3 + 32);
    sub_29AD21678(v40, v46, v17, v18);
    v39[0] = 0;
    v39[1] = 0;
    sub_29AD1FA3C(a3, &v19[v20], v40, v39);
    tbb::internal::NFS_Free(v39[0], v21);
    v39[0] = 0;
    tbb::internal::NFS_Free(v40[0], v22);
    v40[0] = 0;
    v25 = a4;
    if (a4[65] >= 0x11)
    {
      v25 = *a4;
    }

    v26 = a4[64];
    sub_29AC4FA4C(v38, &v44, v23, v24);
    v37[0] = 0;
    v37[1] = 0;
    sub_29AC4D29C(a4, &v25[4 * v26], v38, v37);
    tbb::internal::NFS_Free(v37[0], v27);
    v37[0] = 0;
    tbb::internal::NFS_Free(v38[0], v28);
    v38[0] = 0;
    v31 = a6;
    if (*(a6 + 7428) >= 0x11u)
    {
      v31 = *a6;
    }

    v32 = *(a6 + 7424);
    sub_29AD21A58(v36, &v42, v29, v30);
    v35[0] = 0;
    v35[1] = 0;
    sub_29AD1FE34(a6, (v31 + 464 * v32), v36, v35);
    tbb::internal::NFS_Free(v35[0], v33);
    v35[0] = 0;
    tbb::internal::NFS_Free(v36[0], v34);
    v36[0] = 0;
    sub_29AD21218(&v42);
  }

  pxrInternal__aapl__pxrReserved__::HdsiComputeSceneIndexDiffRoot(a1, a2, a3, a4);
}

void sub_29AD1F478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, tbb::internal *a10, uint64_t a11, tbb::internal *a12, uint64_t a13, tbb::internal *a14, uint64_t a15, tbb::internal *a16, uint64_t a17, tbb::internal *a18, uint64_t a19, tbb::internal *a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD1F564(void **a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = sub_29AC1199C(a2);
  (*(*v13 + 16))(v40);
  v14 = sub_29AC1199C(a3);
  v15 = (*(*v14 + 16))(v38);
  if ((v38[0] ^ v40[0]) > 7uLL)
  {
    sub_29AD20540(a6, a4, v38);
  }

  else if (v40[1] != v38[1])
  {
    v16 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::UniversalSet(v15);
    sub_29AD20454(a7, a4, v16);
  }

  sub_29AD205F4(a2, a4, &v36);
  sub_29AD205F4(a3, a4, &v34);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if ((v35 - v34) >> 3 >= ((v37 - v36) >> 3))
  {
    v17 = (v37 - v36) >> 3;
  }

  else
  {
    v17 = (v35 - v34) >> 3;
  }

  sub_29A2FCAE8(&v31, v17);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_29AD20694(v36, v37, v34, v35, &v31, &v28, &v25);
  v19 = v28;
  v18 = v29;
  while (v19 != v18)
  {
    sub_29AD207A0(a5, v19);
    v19 += 2;
  }

  if (v31 != v32)
  {
    v20 = *a2;
    v24[0] = a1;
    v24[1] = v20;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  v21 = v25;
  v22 = v26;
  while (v21 != v22)
  {
    sub_29AD1EE90(a1, a3, v21, a6);
    v21 += 2;
  }

  v24[0] = &v25;
  sub_29A1E234C(v24);
  v24[0] = &v28;
  sub_29A1E234C(v24);
  v24[0] = &v31;
  sub_29A1E234C(v24);
  v24[0] = &v34;
  sub_29A1E234C(v24);
  v24[0] = &v36;
  sub_29A1E234C(v24);
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }

  if ((v40[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v40[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD1F91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  a11 = &a19;
  sub_29A1E234C(&a11);
  a11 = &a22;
  sub_29A1E234C(&a11);
  a11 = &a25;
  sub_29A1E234C(&a11);
  a11 = &a28;
  sub_29A1E234C(&a11);
  a11 = &a31;
  sub_29A1E234C(&a11);
  v33 = *(v31 - 136);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  v34 = *(v31 - 152);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(v31 - 112);
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  v36 = *(v31 - 128);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AD1FA3C(char *a1, int *a2, uint64_t *a3, void *a4)
{
  v8 = a1;
  if (*(a1 + 33) >= 0x11u)
  {
    v8 = *a1;
  }

  v9 = *(a1 + 32);
  v65[0] = 0;
  v65[1] = 0;
  sub_29AC4FD40(v65, a3, a3, a4);
  v64[0] = 0;
  v64[1] = 0;
  sub_29AC4FD40(v64, a4, v10, v11);
  v14 = sub_29AD217D8(v65, v64, v12, v13);
  tbb::internal::NFS_Free(v64[0], v15);
  v64[0] = 0;
  tbb::internal::NFS_Free(v65[0], v16);
  v19 = &v8[8 * v9];
  v65[0] = 0;
  v20 = *(a1 + 32);
  v21 = *(a1 + 33);
  v22 = v14 + v20;
  v23 = v21 + (v21 >> 1);
  if (v23 + 1 > v14 + v20)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v14 + v20;
  }

  if (v19 == a2)
  {
    if (v22 > v21)
    {
      sub_29AC3D990(a1, v24);
    }

    v63[0] = 0;
    v63[1] = 0;
    sub_29AC4FD40(v63, a3, v17, v18);
    v62[0] = 0;
    v62[1] = 0;
    sub_29AC4FD40(v62, a4, v28, v29);
    v31 = a1;
    if (*(a1 + 33) >= 0x11u)
    {
      v31 = *a1;
    }

    sub_29AD218A8(v63, v62, &v31[8 * *(a1 + 32)], v30);
    tbb::internal::NFS_Free(v62[0], v32);
    v62[0] = 0;
    tbb::internal::NFS_Free(v63[0], v33);
  }

  else if (v22 <= v21)
  {
    v34 = a1;
    if (v21 >= 0x11)
    {
      v34 = *a1;
    }

    v35 = &v34[8 * v20];
    v36 = (v35 - a2) >> 3;
    if (v36 >= v14)
    {
      v37 = v14;
    }

    else
    {
      v37 = (v35 - a2) >> 3;
    }

    v38 = &v35[8 * (v14 - v37)];
    v39 = &a2[2 * (v36 - v37)];
    sub_29A7D8DFC(v39, v35, v38);
    sub_29AC606B4(&v66, a2, v39, v38);
    if (v37 >= 1)
    {
      do
      {
        v42 = a3[1];
        sub_29A2258F0(a2, v42);
        sub_29A225948(a2 + 1, v42 + 1);
        sub_29AD21768(a3);
        a2 += 2;
        --v37;
      }

      while (v37);
    }

    v59[0] = 0;
    v59[1] = 0;
    sub_29AC4FD40(v59, a3, v40, v41);
    v58[0] = 0;
    v58[1] = 0;
    sub_29AC4FD40(v58, a4, v43, v44);
    v46 = a1;
    if (*(a1 + 33) >= 0x11u)
    {
      v46 = *a1;
    }

    sub_29AD218A8(v59, v58, &v46[8 * *(a1 + 32)], v45);
    tbb::internal::NFS_Free(v58[0], v47);
    v58[0] = 0;
    tbb::internal::NFS_Free(v59[0], v48);
  }

  else
  {
    if (v21 > 0x10)
    {
      v49 = a2 - *a1;
      v25 = malloc(8 * v24);
      v26 = &v49[v25];
      v27 = *a1;
    }

    else
    {
      v25 = malloc(8 * v24);
      v26 = v25 + a2 - a1;
      v27 = a1;
    }

    sub_29A7D8DFC(v27, a2, v25);
    v61[0] = 0;
    v61[1] = 0;
    sub_29AC4FD40(v61, a3, v50, v51);
    v60[0] = 0;
    v60[1] = 0;
    sub_29AC4FD40(v60, a4, v52, v53);
    sub_29AD218A8(v61, v60, v26, v54);
    tbb::internal::NFS_Free(v60[0], v55);
    v60[0] = 0;
    tbb::internal::NFS_Free(v61[0], v56);
    v61[0] = 0;
    v57 = a1;
    if (*(a1 + 33) >= 0x11u)
    {
      v57 = *a1;
    }

    sub_29A7D8DFC(a2, &v57[8 * *(a1 + 32)], (v26 + 8 * v14));
    sub_29AC26388(a1);
    if (*(a1 + 33) >= 0x11u)
    {
      free(*a1);
    }

    *a1 = v25;
    *(a1 + 33) = v24;
  }

  *(a1 + 32) += v14;
}

void sub_29AD1FD70(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, tbb::internal *a10, uint64_t a11, tbb::internal *a12, uint64_t a13, tbb::internal *a14, uint64_t a15, tbb::internal *a16, uint64_t a17, tbb::internal *a18, uint64_t a19, tbb::internal *a20, uint64_t a21, tbb::internal *a22)
{
  tbb::internal::NFS_Free(a14, a2);
  tbb::internal::NFS_Free(a16, v23);
  _Unwind_Resume(a1);
}

void sub_29AD1FE34(uint64_t a1, int *a2, uint64_t *a3, void *a4)
{
  v8 = a1;
  if (*(a1 + 7428) >= 0x11u)
  {
    v8 = *a1;
  }

  v9 = *(a1 + 7424);
  v65[0] = 0;
  v65[1] = 0;
  sub_29AC4FD40(v65, a3, a3, a4);
  v64[0] = 0;
  v64[1] = 0;
  sub_29AC4FD40(v64, a4, v10, v11);
  v14 = sub_29AD21BBC(v65, v64, v12, v13);
  tbb::internal::NFS_Free(v64[0], v15);
  v64[0] = 0;
  tbb::internal::NFS_Free(v65[0], v16);
  v19 = &v8[464 * v9];
  v65[0] = 0;
  v20 = *(a1 + 7424);
  v21 = v14 + v20;
  v22 = *(a1 + 7428);
  v23 = v22 + (v22 >> 1);
  if (v23 + 1 > v14 + v20)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v14 + v20;
  }

  if (v19 == a2)
  {
    if (v21 > v22)
    {
      sub_29AC14D54(a1, v24);
    }

    v63[0] = 0;
    v63[1] = 0;
    sub_29AC4FD40(v63, a3, v17, v18);
    v62[0] = 0;
    v62[1] = 0;
    sub_29AC4FD40(v62, a4, v36, v37);
    v39 = a1;
    if (*(a1 + 7428) >= 0x11u)
    {
      v39 = *a1;
    }

    sub_29AD21C8C(v63, v62, &v39[464 * *(a1 + 7424)], v38);
    tbb::internal::NFS_Free(v62[0], v40);
    v62[0] = 0;
    tbb::internal::NFS_Free(v63[0], v41);
  }

  else if (v21 <= v22)
  {
    v42 = a1;
    if (v22 >= 0x11)
    {
      v42 = *a1;
    }

    v43 = 0x34F72C234F72C235 * ((&v42[464 * v20] - a2) >> 4);
    if (v43 >= v14)
    {
      v44 = v14;
    }

    else
    {
      v44 = v43;
    }

    v45 = &a2[116 * (v43 - v44)];
    v46 = a1;
    if (v22 >= 0x11)
    {
      v46 = *a1;
    }

    v47 = &v46[464 * v20];
    v48 = v47 + 464 * (v14 - v44);
    sub_29AC14DDC(v45, v47, v48);
    sub_29AC14F4C(&v66, a2, v45, v48);
    if (v44 >= 1)
    {
      do
      {
        v51 = a3[1];
        sub_29A2258F0(a2, v51);
        sub_29A225948(a2 + 1, v51 + 1);
        if (a2 != v51)
        {
          sub_29AC0BC18();
        }

        sub_29AD21B4C(a3);
        a2 += 116;
        --v44;
      }

      while (v44);
    }

    v59[0] = 0;
    v59[1] = 0;
    sub_29AC4FD40(v59, a3, v49, v50);
    v58[0] = 0;
    v58[1] = 0;
    sub_29AC4FD40(v58, a4, v52, v53);
    v55 = a1;
    if (*(a1 + 7428) >= 0x11u)
    {
      v55 = *a1;
    }

    sub_29AD21C8C(v59, v58, &v55[464 * *(a1 + 7424)], v54);
    tbb::internal::NFS_Free(v58[0], v56);
    v58[0] = 0;
    tbb::internal::NFS_Free(v59[0], v57);
  }

  else
  {
    v25 = a1;
    if (v22 >= 0x11)
    {
      v25 = *a1;
    }

    v26 = malloc(464 * v24);
    v27 = a1;
    if (v22 >= 0x11)
    {
      v27 = *a1;
    }

    sub_29AC14DDC(v27, a2, v26);
    v61[0] = 0;
    v61[1] = 0;
    sub_29AC4FD40(v61, a3, v28, v29);
    v60[0] = 0;
    v60[1] = 0;
    sub_29AC4FD40(v60, a4, v30, v31);
    sub_29AD21C8C(v61, v60, v26 + a2 - v25, v32);
    tbb::internal::NFS_Free(v60[0], v33);
    v60[0] = 0;
    tbb::internal::NFS_Free(v61[0], v34);
    v61[0] = 0;
    v35 = a1;
    if (*(a1 + 7428) >= 0x11u)
    {
      v35 = *a1;
    }

    sub_29AC14DDC(a2, v35 + 464 * *(a1 + 7424), v26 + 464 * v14 + a2 - v25);
    sub_29ABD3884(a1);
    if (*(a1 + 7428) >= 0x11u)
    {
      free(*a1);
    }

    *a1 = v26;
    *(a1 + 7428) = v24;
  }

  *(a1 + 7424) += v14;
}

void sub_29AD201D8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, tbb::internal *a10, uint64_t a11, tbb::internal *a12, uint64_t a13, tbb::internal *a14, uint64_t a15, tbb::internal *a16, uint64_t a17, tbb::internal *a18, uint64_t a19, tbb::internal *a20, uint64_t a21, tbb::internal *a22)
{
  tbb::internal::NFS_Free(a10, a2);
  tbb::internal::NFS_Free(a12, v23);
  _Unwind_Resume(a1);
}

void sub_29AD202A4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29ABD4DDC();
}

void sub_29AD202E4(uint64_t a1)
{
  *a1 = &unk_2A20861B0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  sub_29ABD4DDC();
}

void sub_29AD2033C(uint64_t a1)
{
  *a1 = &unk_2A20861B0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  sub_29ABD4DDC();
}

uint64_t sub_29AD203A4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AD1EE90(*(a1 + 8), (a1 + 16), (a1 + 24), *(a1 + 32));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 40));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AD20440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29AD20454(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29ABD2F24(v6, a2, a3);
  v4 = a1[1];
  add = atomic_fetch_add((v4 + 128), 1uLL);
  sub_29AD208F0((v4 + 40 * ((3 * add) & 7) + 384), v6, add, a1, sub_29AD2089C);
  sub_29ABD3178();
}

void sub_29AD20514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AD20540(uint64_t *a1, _DWORD *a2, uint64_t *a3)
{
  sub_29AC3C228(&v7, a2, a3);
  v4 = a1[1];
  add = atomic_fetch_add((v4 + 128), 1uLL);
  sub_29A17282C((v4 + 40 * ((3 * add) & 7) + 384), &v7, add, a1, sub_29AC4EE90);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

int *sub_29AD205F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int **a3@<X8>)
{
  v5 = sub_29AC1199C(a1);
  (*(*v5 + 24))(v5, a2);
  v6 = a3[1];
  v7 = 126 - 2 * __clz((v6 - *a3) >> 3);
  if (v6 == *a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return sub_29A24ED30(*a3, v6, v10, v8, 1);
}

void sub_29AD2067C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29AD20694(unint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a3;
  v12 = result;
  if (result != a2 && a3 != a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  while (v12 != a2)
  {
    result = sub_29A1E28B4(a6, v12);
    v12 += 2;
  }

  while (v10 != a4)
  {
    result = sub_29A1E28B4(a7, v10);
    v10 += 2;
  }

  return result;
}

_DWORD *sub_29AD207A0(uint64_t *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v7, a2);
  sub_29A1E2240(&v8, a2 + 1);
  v4 = a1[1];
  add = atomic_fetch_add((v4 + 128), 1uLL);
  sub_29A5BDBC8((v4 + 40 * ((3 * add) & 7) + 384), &v7, add, a1, sub_29AD20AA4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29AD20840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC3C0E4(va);
  _Unwind_Resume(a1);
}

void sub_29AD20854(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  sub_29ABD4DDC();
}

uint64_t sub_29AD2089C(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, a2 + 1);
  return sub_29AC14EB8((a1 + 2), (a2 + 2));
}

uint64_t sub_29AD208F0(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, uint64_t))
{
  v9 = a3 & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(a4[1] + 256) - 1) & (a3 >> 3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*a4 + 16))(a4);
    *v11 = 0;
    v11[1] = 0;
  }

  v12 = a1[3];
  __dmb(0xBu);
  if (v12 != v9)
  {
    sub_29A172A58(a1, a1 + 3, v9, a4[1]);
  }

  if (v11)
  {
    sub_29A0EB5BC(&v16, (a1 + 4));
    v13 = a1[2];
    __dmb(0xBu);
    if (v13 < 2)
    {
      __dmb(0xBu);
      *a1 = v11;
    }

    else
    {
      *v13 = v11;
    }

    __dmb(0xBu);
    a1[2] = v11;
    v14 = v16;
    if (v16)
    {
      __dmb(0xBu);
      *v14 = 0;
    }
  }

  else
  {
    v11 = a1[2];
    __dmb(0xBu);
  }

  result = a5(&v11[58 * v10 + 2], a2);
  v11[1] |= 1 << v10;
  atomic_fetch_add(a1 + 3, 8uLL);
  return result;
}

void sub_29AD20A38(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_fetch_add((*(v1 + 8) + 272), 1uLL);
  sub_29A1729DC(v2, v3);
}

_DWORD *sub_29AD20AA4(_DWORD *a1, _DWORD *a2)
{
  v3 = sub_29A1DDD84(a1, a2) + 1;

  return sub_29A1DDDC0(v3, a2 + 1);
}

void sub_29AD20AE0(uint64_t a1)
{
  *a1 = &unk_2A20861F8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

void sub_29AD20B40(uint64_t a1)
{
  *a1 = &unk_2A20861F8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

uint64_t sub_29AD20BB0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AD1F564(*(a1 + 8), (a1 + 16), (a1 + 24), (a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 64));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AD20C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AD20C68(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AD20CA8(void *a1)
{
  v1 = sub_29AD20D78(a1);

  operator delete(v1);
}

uint64_t sub_29AD20D30(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

uint64_t sub_29AD20D78(void *a1)
{
  *a1 = &unk_2A2086240;
  sub_29AD20DD8(a1);
  sub_29A171EEC(a1);

  return sub_29AD20E8C(a1, v2);
}

_DWORD *sub_29AD20DD8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v9);
  while (1)
  {
    v2 = *(a1 + 8);
    v3 = v2[16];
    __dmb(0xBu);
    v4 = *v2;
    __dmb(0xBu);
    v5 = v2[16];
    __dmb(0xBu);
    if (v3 == v5)
    {
      v6 = v2[34];
      __dmb(0xBu);
      if (v3 == v6 + v4)
      {
        break;
      }
    }

    sub_29AD20ED8(a1, &v8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29AD20E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC3C0E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD20E8C(uint64_t a1, void *a2)
{
  *a1 = &unk_2A20862B0;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

BOOL sub_29AD20ED8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    v7 = v6 - v5;
    v8 = v7 > 0;
LABEL_3:
    if (v7 < 1)
    {
      return 0;
    }

    while (1)
    {
      v9 = v5;
      atomic_compare_exchange_strong(v4, &v9, v5 + 1);
      if (v9 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        v11 = v4[16];
        __dmb(0xBu);
        v7 = v11 - add_explicit;
        v5 = add_explicit;
        goto LABEL_3;
      }
    }

    if (sub_29AD20F98(&v4[5 * ((3 * v5) & 7) + 48], a2, v5, a1))
    {
      return v8;
    }
  }
}

uint64_t sub_29AD20F98(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFF8;
  v9 = a1[1];
  __dmb(0xBu);
  if (v9 != (a3 & 0xFFFFFFFFFFFFFFF8))
  {
    while (1)
    {
      v12 = a1[1];
      __dmb(0xBu);
      if (v12 == v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v10 = a1[3];
  __dmb(0xBu);
  if (v10 == v8)
  {
    while (1)
    {
      v11 = a1[3];
      __dmb(0xBu);
      if (v11 != v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v13 = *a1;
  __dmb(0xBu);
  v14 = *(a4 + 8);
  v15 = *(v14 + 256) - 1;
  v16 = v15 & (a3 >> 3);
  if (v16 == v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v19[0] = v8 + 8;
  v19[1] = a1;
  v19[2] = v17;
  v19[3] = a4;
  if ((*(v13 + 8) & (1 << v16)) != 0)
  {
    sub_29AD210B4(a1, a2, v13, v16);
  }

  atomic_fetch_add((v14 + 272), 0xFFFFFFFFFFFFFFFFLL);
  sub_29A172748(v19);
  return 0;
}

uint64_t sub_29AD21104(uint64_t a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((*a1 + 4));
  sub_29A1DE3A4(v2);
  return a1;
}

uint64_t sub_29AD211D0(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

void sub_29AD21278(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v8);
  v9 = 0x800000000;
  while (1)
  {
    v2 = *(a1 + 8);
    v3 = v2[16];
    __dmb(0xBu);
    v4 = *v2;
    __dmb(0xBu);
    v5 = v2[16];
    __dmb(0xBu);
    if (v3 == v5)
    {
      v6 = v2[34];
      __dmb(0xBu);
      if (v3 == v6 + v4)
      {
        sub_29ABD3178();
      }
    }

    sub_29AD213D0(a1, &v7);
  }
}

void sub_29AD21360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AD21384(uint64_t a1, void *a2)
{
  *a1 = &unk_2A2086360;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

BOOL sub_29AD213D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    v7 = v6 - v5;
    v8 = v7 > 0;
LABEL_3:
    if (v7 < 1)
    {
      return 0;
    }

    while (1)
    {
      v9 = v5;
      atomic_compare_exchange_strong(v4, &v9, v5 + 1);
      if (v9 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        v11 = v4[16];
        __dmb(0xBu);
        v7 = v11 - add_explicit;
        v5 = add_explicit;
        goto LABEL_3;
      }
    }

    if (sub_29AD21490(&v4[5 * ((3 * v5) & 7) + 48], a2, v5, a1))
    {
      return v8;
    }
  }
}

uint64_t sub_29AD21490(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a3 & 0xFFFFFFFFFFFFFFF8;
  v8 = a1[1];
  __dmb(0xBu);
  if (v8 != (a3 & 0xFFFFFFFFFFFFFFF8))
  {
    while (1)
    {
      v11 = a1[1];
      __dmb(0xBu);
      if (v11 == v7)
      {
        break;
      }

      sched_yield();
    }
  }

  v9 = a1[3];
  __dmb(0xBu);
  if (v9 == v7)
  {
    while (1)
    {
      v10 = a1[3];
      __dmb(0xBu);
      if (v10 != v7)
      {
        break;
      }

      sched_yield();
    }
  }

  v12 = *a1;
  __dmb(0xBu);
  v13 = *(a4 + 8);
  v14 = *(v13 + 256) - 1;
  v15 = v14 & (a3 >> 3);
  if (v15 == v14)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v18[0] = v7 + 8;
  v18[1] = a1;
  v18[2] = v16;
  v18[3] = a4;
  if ((*(v12 + 8) & (1 << v15)) != 0)
  {
    sub_29AD215AC();
  }

  atomic_fetch_add((v13 + 272), 0xFFFFFFFFFFFFFFFFLL);
  sub_29A172748(v18);
  return 0;
}