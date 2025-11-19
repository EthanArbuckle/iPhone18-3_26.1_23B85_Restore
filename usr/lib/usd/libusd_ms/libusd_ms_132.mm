uint64_t sub_29AC183DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AC15F40(a1, bswap64(0x9E3779B97F4A7C55 * (*(a2 + 12) + ((*(a2 + 12) + *(a2 + 8) + (*(a2 + 12) + *(a2 + 8)) * (*(a2 + 12) + *(a2 + 8))) >> 1))), &v12);
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
    return sub_29AC18490(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AC18490@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AC139B8(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[73])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

uint64_t sub_29AC184F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AC14324(a1, bswap64(0x9E3779B97F4A7C55 * (*(a2 + 12) + ((*(a2 + 12) + *(a2 + 8) + (*(a2 + 12) + *(a2 + 8)) * (*(a2 + 12) + *(a2 + 8))) >> 1))), &v12);
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
    return sub_29AC185A8(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AC185A8@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AC136A0(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[73])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType::~HdDependencySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType::HdDependencySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "dependedOnPrimPath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "dependedOnDataSourceLocator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "affectedDataSourceLocator", 0);
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

void sub_29AC187D8(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdDependencySchema::GetDependedOnPrimPath(pxrInternal__aapl__pxrReserved__::HdDependencySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC18E54(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdDependencySchema::GetDependedOnDataSourceLocator(pxrInternal__aapl__pxrReserved__::HdDependencySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC18E54(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
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

  sub_29AC189C0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC189C0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC18EE0(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdDependencySchema::GetAffectedDataSourceLocator(pxrInternal__aapl__pxrReserved__::HdDependencySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC18E54(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
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

  sub_29AC189C0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdDependencySchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
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
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
    if (!v10)
    {
      v10 = sub_29AC18E54(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
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
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
    if (!v15)
    {
      v15 = sub_29AC18E54(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
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
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
    if (!v19)
    {
      v19 = sub_29AC18E54(&pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens);
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

void sub_29AC18D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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

void *pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(uint64_t a1, uint64_t *a2)
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

pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType *sub_29AC18E54(atomic_ullong *a1)
{
  result = sub_29AC18E9C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType::~HdDependencySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType *sub_29AC18E9C()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdDependencySchemaTokens_StaticTokenType::HdDependencySchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC18EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207AF48, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::SprimDirtyBitsToLocatorSet(pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4)
{
  v28[7] = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return;
  }

  v5 = a2;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v7 + 19) ^ *this) <= 7)
  {
    if ((v5 & 0xC) == 0)
    {
      return;
    }

    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(v7);
    goto LABEL_15;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v9)
  {
    v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v9 + 20) ^ *this) > 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v11)
    {
      v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v11 + 17) ^ *this) <= 7)
    {
      sub_29B2C5C8C();
      return;
    }

    if (pxrInternal__aapl__pxrReserved__::HdPrimTypeIsLight(this, a2))
    {
      goto LABEL_30;
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v12)
    {
      v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v12 + 37) ^ *this) < 8)
    {
      goto LABEL_30;
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v13)
    {
      v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v13 + 7) ^ *this) <= 7)
    {
LABEL_30:
      sub_29B2C5960();
      return;
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v14)
    {
      v14 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v14 + 18) ^ *this) <= 7)
    {
      if ((atomic_load_explicit(&qword_2A17496F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17496F8))
      {
        v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v27)
        {
          v27 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749738, (v27 + 144));
        sub_29B2C5CE8();
      }

      if (v5)
      {
        v10 = &unk_2A1749738;
        goto LABEL_16;
      }

      return;
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v15)
    {
      v15 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v15 + 38) ^ *this) <= 7)
    {
      sub_29B2C5A50();
      return;
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v16)
    {
      v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v16 + 23) ^ *this) <= 7)
    {
      if ((v5 & 4) == 0)
      {
        return;
      }

      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetDefaultLocator(v16);
      goto LABEL_15;
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v17)
    {
      v17 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v17 + 24) ^ *this) <= 7)
    {
      sub_29B2C5BDC();
      return;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v18)
    {
      v18 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v18 + 25) ^ *this) <= 7)
    {
      sub_29B2C5C34();
      return;
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v19)
    {
      v19 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v19 + 26) ^ *this) <= 7)
    {
      sub_29B2C5AF8();
      return;
    }

    v20 = atomic_load(&qword_2A1749660);
    if (!v20)
    {
      v20 = sub_29AC1AD5C(&qword_2A1749660);
    }

    v21 = sub_29A160470(v20, this);
    v22 = v21;
    if (atomic_load(&qword_2A1749660))
    {
      if (v21)
      {
LABEL_63:

        sub_29AC19480((v22 + 3), v5, a3);
        return;
      }
    }

    else
    {
      sub_29AC1AD5C(&qword_2A1749660);
      if (v22)
      {
        goto LABEL_63;
      }
    }

    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v28);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::append(a3, v28);
      sub_29ABC3488(v28);
    }

    return;
  }

  if (v5)
  {
    if ((atomic_load_explicit(&qword_2A17496F0, memory_order_acquire) & 1) == 0)
    {
      v24 = __cxa_guard_acquire(&qword_2A17496F0);
      if (v24)
      {
        v25 = pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetDefaultLocator(v24);
        v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
        if (!v26)
        {
          v26 = sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v25, (v26 + 8), dword_2A1749700);
        sub_29B2C5B90();
      }
    }

    v9 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::append(a3, dword_2A1749700);
  }

  if ((v5 & 2) != 0)
  {
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v9);
LABEL_15:
    v10 = DefaultLocator;
LABEL_16:

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::append(a3, v10);
  }
}

uint64_t sub_29AC19480(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::RprimLocatorSetToDirtyBits(pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
  v4 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
  if (v6 != v4)
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v4);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
  }

  return 0;
}

uint64_t sub_29AC19B3C(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a1, uint64_t **a2, uint64_t **a3, char a4)
{
  v5 = *a3;
  if (*a3 == *a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(v5, a1))
      {
        v9 = 1;
        if ((a4 & 1) == 0)
        {
          return v9 & 1;
        }
      }

      else if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(a1, *a3))
      {
        return v9 & 1;
      }

      v5 = *a3 + 7;
      *a3 = v5;
    }

    while (v5 != *a2);
  }

  return v9 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::SprimLocatorSetToDirtyBits(pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3)
{
  v88 = *MEMORY[0x29EDCA608];
  v86 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
  if (v86 == pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2))
  {
    return 0;
  }

  v85 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
  v84 = 0;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v6 + 19) ^ *this) <= 7)
  {
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(v6);
    if (sub_29AC19B3C(DefaultLocator, &v85, &v86, 1))
    {
      return v84 | 0xC;
    }

    return v84;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v10)
  {
    v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v10 + 20) ^ *this) <= 7)
  {
    if ((atomic_load_explicit(&qword_2A17496A0, memory_order_acquire) & 1) == 0)
    {
      v80 = __cxa_guard_acquire(&qword_2A17496A0);
      if (v80)
      {
        v81 = pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetDefaultLocator(v80);
        v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
        if (!v82)
        {
          v82 = sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v81, (v82 + 8), dword_2A1749668);
        __cxa_atexit(sub_29ABC33B4, dword_2A1749668, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17496A0);
      }
    }

    v11 = sub_29AC19B3C(dword_2A1749668, &v85, &v86, 1);
    if (v11)
    {
      v84 |= 1u;
    }

    v12 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v11);
    if (!sub_29AC19B3C(v12, &v85, &v86, 1))
    {
      return v84;
    }

    return v84 | 2;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v13)
  {
    v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v13 + 17) ^ *this) <= 7)
  {
    v14 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v13);
    v15 = sub_29AC19B3C(v14, &v85, &v86, 1);
    if (v15)
    {
      v84 |= 0xEu;
    }

    goto LABEL_36;
  }

  IsLight = pxrInternal__aapl__pxrReserved__::HdPrimTypeIsLight(this, v5);
  if ((IsLight & 1) == 0)
  {
    IsLight = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!IsLight)
    {
      IsLight = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(IsLight + 37) ^ *this) > 7)
    {
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v27)
      {
        v27 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v27 + 18) ^ *this) <= 7)
      {
        if ((atomic_load_explicit(&qword_2A17496E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17496E0))
        {
          v83 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v83)
          {
            v83 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A17496A8, (v83 + 144));
          __cxa_atexit(sub_29ABC33B4, &unk_2A17496A8, &dword_299FE7000);
          __cxa_guard_release(&qword_2A17496E0);
        }

        if (!sub_29AC19B3C(&unk_2A17496A8, &v85, &v86, 1))
        {
          return v84;
        }

        return v84 | 0xFFFFFFFD;
      }

      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v28)
      {
        v28 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v28 + 38) ^ *this) <= 7)
      {
        v29 = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v28);
        v30 = sub_29AC19B3C(v29, &v85, &v86, 0);
        if (!v30)
        {
          return v84;
        }

        v31 = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v30);
        v32 = v86;
        HasPrefix = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v31, v86);
        v34 = v84;
        if (!HasPrefix)
        {
          v43 = v85;
          do
          {
            DispatchCountLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDispatchCountLocator(HasPrefix);
            v45 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v32, DispatchCountLocator);
            if (v45)
            {
              v34 |= 0x40u;
            }

            ElementCountLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetElementCountLocator(v45);
            v47 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v32, ElementCountLocator);
            if (v47)
            {
              v34 |= 4u;
            }

            GlslKernelLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetGlslKernelLocator(v47);
            v49 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v32, GlslKernelLocator);
            if (v49)
            {
              v34 |= 0x20u;
            }

            InputValuesLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValuesLocator(v49);
            v51 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v32, InputValuesLocator);
            if (v51 || (InputComputationsLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputationsLocator(v51), v51 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v32, InputComputationsLocator)))
            {
              v34 |= 9u;
            }

            OutputsLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputsLocator(v51);
            v54 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v32, OutputsLocator);
            if (v54)
            {
              v34 |= 2u;
            }

            v32 = (v32 + 56);
            if (v32 == v43)
            {
              break;
            }

            v55 = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v54);
            HasPrefix = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(v32, v55);
          }

          while (HasPrefix);
          return v34;
        }

        return v84 | 0x6F;
      }

      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v35)
      {
        v35 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v35 + 23) ^ *this) <= 7)
      {
        v36 = pxrInternal__aapl__pxrReserved__::HdIntegratorSchema::GetDefaultLocator(v35);
        if (!sub_29AC19B3C(v36, &v85, &v86, 1))
        {
          return v84;
        }

        return v84 | 4;
      }

      v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v37)
      {
        v37 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v37 + 24) ^ *this) <= 7)
      {
        v38 = pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetDefaultLocator(v37);
        v39 = sub_29AC19B3C(v38, &v85, &v86, 1);
        if (v39)
        {
          v84 |= 4u;
        }

LABEL_68:
        v42 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetDefaultLocator(v39);
        if (!sub_29AC19B3C(v42, &v85, &v86, 1))
        {
          return v84;
        }

        return v84 | 0x400;
      }

      v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v40)
      {
        v40 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v40 + 25) ^ *this) <= 7)
      {
        v41 = pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetDefaultLocator(v40);
        v39 = sub_29AC19B3C(v41, &v85, &v86, 1);
        if (v39)
        {
          v84 |= 4u;
        }

        goto LABEL_68;
      }

      v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v56)
      {
        v56 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v56 + 26) ^ *this) <= 7)
      {
        v57 = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v56);
        v58 = sub_29AC19B3C(v57, &v85, &v86, 0);
        if (!v58)
        {
          return v84;
        }

        v59 = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v58);
        v60 = v86;
        v61 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v59, v86);
        v62 = v84;
        if (!v61)
        {
          v67 = v85;
          do
          {
            EnabledLocator = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetEnabledLocator(v61);
            v69 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v60, EnabledLocator);
            v62 |= v69;
            PriorityLocator = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetPriorityLocator(v69);
            v71 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v60, PriorityLocator);
            if (v71)
            {
              v62 |= 2u;
            }

            FilePathLocator = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetFilePathLocator(v71);
            v73 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v60, FilePathLocator);
            if (v73)
            {
              v62 |= 4u;
            }

            ConstantsLocator = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetConstantsLocator(v73);
            v75 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v60, ConstantsLocator);
            if (v75)
            {
              v62 |= 8u;
            }

            MaterialNetworkLocator = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetMaterialNetworkLocator(v75);
            v77 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v60, MaterialNetworkLocator);
            if (v77)
            {
              v62 |= 0x10u;
            }

            v60 = (v60 + 56);
            if (v60 == v67)
            {
              break;
            }

            v78 = pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetDefaultLocator(v77);
            v61 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(v60, v78);
          }

          while (v61);
          return v62;
        }

        return v84 | 0x1F;
      }

      v63 = atomic_load(&qword_2A17496E8);
      if (!v63)
      {
        v63 = sub_29AC1AE54(&qword_2A17496E8);
      }

      v64 = sub_29A160470(v63, this);
      v65 = v64;
      if (atomic_load(&qword_2A17496E8))
      {
        if (v64)
        {
LABEL_95:
          sub_29AC1A460((v65 + 3), a2, &v84);
          return v84;
        }
      }

      else
      {
        sub_29AC1AE54(&qword_2A17496E8);
        if (v65)
        {
          goto LABEL_95;
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v87);
      v79 = sub_29AC19B3C(v87, &v85, &v86, 1);
      sub_29ABC3488(v87);
      if (!v79)
      {
        return v84;
      }

      return v84 | 0xFFFFFFFD;
    }
  }

  v17 = pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetDefaultLocator(IsLight);
  v18 = sub_29AC19B3C(v17, &v85, &v86, 1);
  if (v18)
  {
    v84 |= 0x10000u;
  }

  v19 = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetDefaultLocator(v18);
  v20 = sub_29AC19B3C(v19, &v85, &v86, 1);
  if (v20)
  {
    v84 |= 0x1Eu;
  }

  v21 = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(v20);
  v22 = sub_29AC19B3C(v21, &v85, &v86, 1);
  if (v22)
  {
    v84 |= 0x10u;
  }

  v23 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v22);
  v24 = sub_29AC19B3C(v23, &v85, &v86, 1);
  if (v24)
  {
    v84 |= 2u;
  }

  v25 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetDefaultLocator(v24);
  v15 = sub_29AC19B3C(v25, &v85, &v86, 1);
  if (v15)
  {
    v84 |= 2u;
  }

LABEL_36:
  v26 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v15);
  if (sub_29AC19B3C(v26, &v85, &v86, 1))
  {
    return v84 | 1;
  }

  return v84;
}

uint64_t sub_29AC1A460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::InstancerLocatorSetToDirtyBits(pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
  v4 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
  if (v6 != v4)
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v4);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::TaskLocatorSetToDirtyBits(pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(this);
  v3 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(this);
  v5 = v3;
  if (v6 != v3)
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v3);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::BprimLocatorSetToDirtyBits(pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3)
{
  v28 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
  if (v28 == pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2))
  {
    return 0;
  }

  v27 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v6 + 39) ^ *this) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v9)
    {
      v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v9 + 40) ^ *this) > 7)
    {
      result = pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeIsVolumeField(this, v5);
      if (result)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetDefaultLocator(result);
        if (sub_29AC19B3C(DefaultLocator, &v27, &v28, 1))
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      ActiveLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetActiveLocator(v9);
      v11 = sub_29AC19B3C(ActiveLocator, &v27, &v28, 1);
      if (v11)
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      FrameLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetFrameLocator(v11);
      v14 = sub_29AC19B3C(FrameLocator, &v27, &v28, 1);
      if (v14)
      {
        v12 |= 0x100u;
      }

      NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetNamespacedSettingsLocator(v14);
      v16 = sub_29AC19B3C(NamespacedSettingsLocator, &v27, &v28, 1);
      if (v16)
      {
        v12 |= 4u;
      }

      RenderProductsLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v16);
      v18 = sub_29AC19B3C(RenderProductsLocator, &v27, &v28, 1);
      if (v18)
      {
        v12 |= 8u;
      }

      IncludedPurposesLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetIncludedPurposesLocator(v18);
      v20 = sub_29AC19B3C(IncludedPurposesLocator, &v27, &v28, 1);
      if (v20)
      {
        v12 |= 0x10u;
      }

      MaterialBindingPurposesLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetMaterialBindingPurposesLocator(v20);
      v22 = sub_29AC19B3C(MaterialBindingPurposesLocator, &v27, &v28, 1);
      if (v22)
      {
        v12 |= 0x20u;
      }

      RenderingColorSpaceLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderingColorSpaceLocator(v22);
      v24 = sub_29AC19B3C(RenderingColorSpaceLocator, &v27, &v28, 1);
      if (v24)
      {
        v12 |= 0x40u;
      }

      ShutterIntervalLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetShutterIntervalLocator(v24);
      if (sub_29AC19B3C(ShutterIntervalLocator, &v27, &v28, 1))
      {
        return v12 | 0x80;
      }

      else
      {
        return v12;
      }
    }
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDefaultLocator(v6);
    return sub_29AC19B3C(v7, &v27, &v28, 1);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::RegisterTranslatorsForCustomSprimType(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&qword_2A17496E8);
  if (!v6)
  {
    v6 = sub_29AC1AE54(&qword_2A17496E8);
  }

  sub_29AC1AA3C(&v9, a1, a2);
  sub_29AC1AF4C(v6, &v9, &v9);
  sub_29AC1AB4C(v10);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = atomic_load(&qword_2A1749660);
  if (!v7)
  {
    v7 = sub_29AC1AD5C(&qword_2A1749660);
  }

  sub_29AC1ABCC(&v9, a1, a3);
  sub_29AC1B2F4(v7, &v9, &v9);
  result = sub_29AC1ACDC(v10);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AC1A9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29AC1ACDC(v9 + 8);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29AC1AA3C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC1AAB4((a1 + 1), a3);
  return a1;
}

uint64_t sub_29AC1AAB4(uint64_t a1, uint64_t a2)
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

uint64_t sub_29AC1AB4C(uint64_t a1)
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

uint64_t *sub_29AC1ABCC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC1AC44((a1 + 1), a3);
  return a1;
}

uint64_t sub_29AC1AC44(uint64_t a1, uint64_t a2)
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

uint64_t sub_29AC1ACDC(uint64_t a1)
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

_OWORD *sub_29AC1AD5C(atomic_ullong *a1)
{
  result = operator new(0x28uLL);
  v3 = 0;
  *result = 0u;
  result[1] = 0u;
  *(result + 8) = 1065353216;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    v4 = sub_29AC1ADB4(result);
    operator delete(v4);
    return atomic_load(a1);
  }

  return result;
}

uint64_t sub_29AC1ADB4(uint64_t a1)
{
  sub_29AC1ADF0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC1ADF0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC1ACDC((v2 + 3));
      v4 = v2[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_OWORD *sub_29AC1AE54(atomic_ullong *a1)
{
  result = operator new(0x28uLL);
  v3 = 0;
  *result = 0u;
  result[1] = 0u;
  *(result + 8) = 1065353216;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    v4 = sub_29AC1AEAC(result);
    operator delete(v4);
    return atomic_load(a1);
  }

  return result;
}

uint64_t sub_29AC1AEAC(uint64_t a1)
{
  sub_29AC1AEE8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC1AEE8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC1AB4C((v2 + 3));
      v4 = v2[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_29AC1AF4C(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = v6;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if ((i[2] ^ *a2) < 8)
          {
            return i;
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

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x38uLL);
  *i = 0;
  i[1] = v6;
  sub_29AC1B1A4(i + 2, a3);
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
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *i = *v19;
LABEL_38:
    *v19 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v18 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v20 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t *sub_29AC1B1A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC1B200((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_29AC1B200(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_29AC1B280(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29AC1AB4C((a2 + 3));
    v3 = a2[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *sub_29AC1B2F4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = v6;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if ((i[2] ^ *a2) < 8)
          {
            return i;
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

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x38uLL);
  *i = 0;
  i[1] = v6;
  sub_29AC1B54C(i + 2, a3);
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
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *i = *v19;
LABEL_38:
    *v19 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v18 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v20 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t *sub_29AC1B54C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC1B5A8((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_29AC1B5A8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_29AC1B628(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29AC1ACDC((a2 + 3));
    v3 = a2[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDirtyList::HdDirtyList(uint64_t a1, _DWORD *a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2[917] - 1;
  *(a1 + 84) = a2[913] - 1;
  *(a1 + 88) = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRenderTagVersion((a2 + 110)) - 1;
  *(a1 + 92) = *(*a1 + 3648) - 1;
  *(a1 + 96) = 0;
  return a1;
}

void sub_29AC1B74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = (v10 + 56);
  sub_29A1E234C(&a10);
  a10 = (v10 + 32);
  sub_29AC1C990(&a10);
  a10 = v12;
  sub_29A124AB0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdDirtyList::GetDirtyRprims(pxrInternal__aapl__pxrReserved__::HdDirtyList *this)
{
  sub_29A0ECEEC(&v7, "hd", "const SdfPathVector &pxrInternal__aapl__pxrReserved__::HdDirtyList::GetDirtyRprims()");
  v2 = *(*this + 3668);
  if (*(this + 20) != v2 || (*(this + 97) & 1) != 0 || (*(this + 96) & 1) != 0)
  {
    *(this + 20) = v2;
    pxrInternal__aapl__pxrReserved__::HdDirtyList::_UpdateDirtyIdsIfNeeded(this);
    v3 = (this + 56);
  }

  else
  {
    if (sub_29ABCF8C0(8))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("DirtyList: Scene (%d) state version and filters unchanged.\n", v5, v6, *(this + 20));
    }

    if (atomic_load_explicit(&qword_2A1749790, memory_order_acquire))
    {
      v3 = &qword_2A17497A0;
    }

    else
    {
      sub_29B2C5D34(&v9);
      v3 = v9;
    }
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return v3;
}

void sub_29AC1B868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDirtyList::_UpdateDirtyIdsIfNeeded(pxrInternal__aapl__pxrReserved__::HdDirtyList *this)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = *(*this + 3652);
  RenderTagVersion = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRenderTagVersion((*this + 440));
  v4 = RenderTagVersion;
  v5 = (*(this + 96) & 1) != 0 || *(this + 21) != v2 || *(this + 22) != RenderTagVersion;
  v6 = *(*this + 3648);
  if (*(this + 97))
  {
    v7 = 1;
LABEL_8:
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    if (!v9)
    {
      v9 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, (v9 + 72));
    if (v5)
    {
      if (sub_29ABCF8C0(8))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("DirtyList: Filter Changed:\n  (Rprim Index Version %d -> %d)\n  (Render Tag Version %d -> %d)\n  (Tracked Render Tags or Reprs changed %d)\n", v11, v12, *(this + 21), v2, *(this + 22), v4, *(this + 96));
      }

      v13 = 0;
      *(this + 21) = v2;
      *(this + 22) = v4;
      *(this + 23) = v6;
      *(this + 48) = 256;
    }

    else if (v7)
    {
      if (sub_29ABCF8C0(8))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("DirtyList: varying state version (%d -> %d)\n", v14, v15, *(this + 23), v6);
      }

      *(this + 23) = v6;
      *(this + 97) = 0;
      v13 = 2;
    }

    else
    {
      v45 = "hd/dirtyList.cpp";
      v46[0] = "_UpdateDirtyIdsIfNeeded";
      v46[1] = 274;
      v46[2] = "void pxrInternal__aapl__pxrReserved__::HdDirtyList::_UpdateDirtyIdsIfNeeded()";
      v47 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v45, "Unhandled scenario in dirty list update logic.\n", v10);
      v13 = 0x7FFFFF;
    }

    if ((atomic_load_explicit(&qword_2A1749788, memory_order_acquire) & 1) == 0)
    {
      v39 = __cxa_guard_acquire(&qword_2A1749788);
      if (v39)
      {
        v40 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v39);
        sub_29A1E21F4(&v45, v40);
        sub_29A1E2240(&v45 + 1, v40 + 1);
        qword_2A1749770 = 0;
        *algn_2A1749778 = 0;
        qword_2A1749780 = 0;
        sub_29A65B758(&qword_2A1749770, &v45, v46, 1uLL);
        sub_29A1DCEA8(&v45);
        __cxa_atexit(sub_29A419524, &qword_2A1749770, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1749788);
      }
    }

    if ((atomic_load_explicit(&qword_2A1749798, memory_order_acquire) & 1) == 0)
    {
      sub_29B2C5D94();
    }

    Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((*this + 88));
    v41 = *this;
    v42 = this + 8;
    v43 = v13;
    v19 = *(this + 7);
    for (i = *(this + 8); i != v19; sub_29A1E230C(this + 56, i))
    {
      i -= 2;
    }

    *(this + 8) = v19;
    sub_29AC1C43C(&v45);
    pxrInternal__aapl__pxrReserved__::HdPrimGather::PredicatedFilter(&v45, Ids, &qword_2A1749770, &qword_2A17497B8, sub_29AC1C358, &v41, this + 56);
    if (sub_29ABCF8C0(8))
    {
      sub_29A00911C(MEMORY[0x29EDC93C8], "Dirty list filter predicate:\n", 29);
      sub_29A00911C(MEMORY[0x29EDC93C8], "  Render tags [", 15);
      v21 = *v42;
      v22 = *(v42 + 1);
      if (*v42 != v22)
      {
        v23 = MEMORY[0x29EDC93C8];
        do
        {
          v24 = pxrInternal__aapl__pxrReserved__::operator<<(v23, v21);
          sub_29A00911C(v24, ", ", 2);
          ++v21;
        }

        while (v21 != v22);
      }

      v25 = sub_29A00911C(MEMORY[0x29EDC93C8], "]", 1);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v44, MEMORY[0x29EDC93D0]);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
      v27 = sub_29A00911C(MEMORY[0x29EDC93C8], "  Mask : ", 9);
      v28 = MEMORY[0x29C2C1EE0](v27, v43);
      std::ios_base::getloc((v28 + *(*v28 - 24)));
      v29 = std::locale::use_facet(&v44, MEMORY[0x29EDC93D0]);
      (v29->__vftable[2].~facet_0)(v29, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v5)
    {
      v30 = *(this + 7);
      v31 = *(this + 8);
      while (v30 != v31)
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((*this + 440), v30, 1);
        v30 = (v30 + 8);
      }
    }

    if (sub_29ABCF8C0(8))
    {
      if (sub_29ABCF8C0(8))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  dirtyRprimIds:\n", v32, v33);
      }

      v34 = *(this + 7);
      for (j = *(this + 8); v34 != j; v34 = (v34 + 8))
      {
        if (sub_29ABCF8C0(8))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v34);
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    %s\n", v37, v38, Text);
        }
      }
    }

    sub_29AC1C940(&v45);
    return;
  }

  v7 = *(this + 23) != v6;
  if (v5 || v7)
  {
    goto LABEL_8;
  }

  if (sub_29ABCF8C0(8))
  {

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("DirtyList: reusing cached dirtyIds\n", v16, v17);
  }
}

void sub_29AC1BE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, int a18)
{
  sub_29A1DCEA8(&a18);
  __cxa_guard_abort(&qword_2A1749788);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDirtyList::UpdateRenderTagsAndReprSelectors(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v34 = 0uLL;
  v35 = 0;
  sub_29AC1CA64(*(a1 + 8), *(a1 + 16), *a2, a2[1], &v34, v36, v28);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v34.i64[1];
  if (v5 - v6 != v34.i64[1] - v34.i64[0])
  {
LABEL_7:
    *(a1 + 8) = v34.i64[0];
    *(a1 + 16) = v7;
    v34.i64[0] = v6;
    v34.i64[1] = v5;
    v11 = *(a1 + 24);
    *(a1 + 24) = v35;
    v35 = v11;
    v10 = 1;
    goto LABEL_8;
  }

  if (v6 != v5)
  {
    v8 = v34.i64[0];
    v9 = *(a1 + 8);
    while ((*v8 ^ *v9) <= 7)
    {
      ++v9;
      ++v8;
      if (v9 == v5)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_7;
  }

LABEL_6:
  v10 = 0;
LABEL_8:
  v28[0] = &v34;
  sub_29A124AB0(v28);
  v12 = *(*a1 + 3652);
  RenderTagVersion = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRenderTagVersion((*a1 + 440));
  if ((v10 & 1) == 0 && *(a1 + 84) == v12 && *(a1 + 88) == RenderTagVersion)
  {
    v34 = 0uLL;
    v35 = 0;
    sub_29AC1CF6C(*(a1 + 32), *(a1 + 40), *a3, a3[1], &v34, v28);
    v14 = *(a1 + 32);
    v15 = v34;
    v16 = vsubq_s64(vzip2q_s64(v14, v34), vzip1q_s64(v14, v34));
    if (vmovn_s64(vceqq_s64(v16, vdupq_laneq_s64(v16, 1))).u8[0])
    {
      v18 = *(a1 + 40);
      v17 = *(a1 + 32);
      if (v14.i64[0] == v14.i64[1])
      {
        goto LABEL_19;
      }

      v19 = v34.i64[0];
      do
      {
        v20 = pxrInternal__aapl__pxrReserved__::HdReprSelector::operator==(v17, v19);
        v17 += 3;
        v19 += 3;
      }

      while (v17 != v18 && v20);
      if (v20)
      {
LABEL_19:
        v28[0] = &v34;
        sub_29AC1C990(v28);
        return;
      }

      v14 = *(a1 + 32);
      v15 = v34;
    }

    *(a1 + 32) = v15;
    v34 = v14;
    v27 = *(a1 + 48);
    *(a1 + 48) = v35;
    v35 = v27;
    v28[0] = &v34;
    sub_29AC1C990(v28);
  }

  else
  {
    if (sub_29ABCF8C0(8))
    {
      sub_29A008864(v28);
      v22 = sub_29A00911C(&v29, "Resetting tracked reprs in dirty list from ", 43);
      v23 = sub_29AC1C2CC(v22, a1 + 32);
      v24 = sub_29A00911C(v23, " to ", 4);
      v25 = sub_29AC1C2CC(v24, a3);
      sub_29A00911C(v25, "\n", 1);
      std::stringbuf::str();
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(&v34);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34.i64[0]);
      }

      v28[0] = *MEMORY[0x29EDC9528];
      v26 = *(MEMORY[0x29EDC9528] + 72);
      *(v28 + *(v28[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
      v29 = v26;
      v30 = MEMORY[0x29EDC9570] + 16;
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v31);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](&v33);
    }

    if ((a1 + 32) != a3)
    {
      sub_29AC1CB6C(a1 + 32, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
    }
  }

  *(a1 + 96) = 1;
}

void sub_29AC1C26C(_Unwind_Exception *a1)
{
  *(v1 - 72) = v1 - 112;
  sub_29AC1C990((v1 - 72));
  _Unwind_Resume(a1);
}

void *sub_29AC1C2CC(void *a1, uint64_t a2)
{
  sub_29A00911C(a1, "[", 1);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      v6 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v4);
      sub_29A00911C(v6, ", ", 2);
      v4 += 3;
    }

    while (v4 != v5);
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

uint64_t sub_29AC1C358(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  RprimDirtyBits = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRprimDirtyBits((*a2 + 440), a1);
  if (v5)
  {
    v7 = (RprimDirtyBits & v5) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::UpdateRenderTag(v4, a1, RprimDirtyBits, &v14);
  v8 = *(a2 + 8);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (v10 == v9)
  {
    v12 = v14;
  }

  else
  {
    v11 = v9 - v10;
    v12 = v14;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while ((v14 ^ *v10) > 7)
    {
      ++v10;
      if (!--v11)
      {
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        return 0;
      }
    }
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

uint64_t sub_29AC1C43C(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_29AC1C4A0((a1 + 48));
  return a1;
}

void sub_29AC1C478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 24);
  if (v12)
  {
    *(v10 + 32) = v12;
    operator delete(v12);
  }

  a10 = v10;
  sub_29AC1C878(&a10);
  _Unwind_Resume(a1);
}

void *sub_29AC1C4A0(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A207AF70;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A207AFD0;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29AC1C700;
  return a1;
}

uint64_t sub_29AC1C56C(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 24) = 1;
  return v5;
}

void sub_29AC1C634(void *a1)
{
  v1 = sub_29AC1C720(a1);

  operator delete(v1);
}

void *sub_29AC1C65C()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A207AFD0;
  return result;
}

uint64_t sub_29AC1C694(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29AC1C6F4(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29AC1C720(void *a1)
{
  *a1 = &unk_2A207AF70;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29AC1C7BC(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29AC1C7BC(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdPrimGather::_Range>>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + (a2 << 7) - 128;
    do
    {
      if (*(v3 + 24) == 1)
      {
        v4 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v4;
          operator delete(v4);
        }

        *(v3 + 24) = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

void sub_29AC1C878(void ***a1)
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
        sub_29AC1C900(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC1C900(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AC1C940(uint64_t a1)
{
  sub_29AC1C720((a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_29AC1C878(&v4);
  return a1;
}

void sub_29AC1C990(void ***a1)
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
        sub_29AC1CA18(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AC1CA18(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a2[1];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t *sub_29AC1CA64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  v10 = result;
  if (result == a2)
  {
LABEL_13:
    while (a3 != a4)
    {
      result = sub_29A1D8028(a5, a3++);
    }

    v13 = v10;
  }

  else
  {
    v13 = a2;
    while (a3 != a4)
    {
      if (sub_29A153D90(a6, a3, v10))
      {
        result = sub_29A1D8028(a5, a3++);
      }

      else
      {
        if (sub_29A153D90(a6, v10, a3))
        {
          v14 = 0;
        }

        else
        {
          v14 = 8;
        }

        a3 = (a3 + v14);
        result = sub_29A1D8028(a5, v10++);
      }

      if (v10 == v13)
      {
        v10 = v13;
        goto LABEL_13;
      }
    }

    while (v10 != v13)
    {
      result = sub_29A1D8028(a5, v10++);
    }
  }

  *a7 = v13;
  a7[1] = a4;
  a7[2] = a5;
  return result;
}

void sub_29AC1CB6C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29AC1CCDC(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(a1, v10);
    v11 = sub_29AC1CD48(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) < a4)
  {
    sub_29AC1CEF0(&v16, a2, (a2 + v12), v8);
    v11 = sub_29AC1CD48(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29AC1CEF0(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 3;
      sub_29AC1CA18(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29AC1CCDC(void *a1)
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
        v3 -= 3;
        sub_29AC1CA18(a1, v3);
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

uint64_t *sub_29AC1CD48(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
      sub_29AC1CDDC(a1, v4, v6);
      v6 += 3;
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AC1CE64(v9);
  return v4;
}

void sub_29AC1CDDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  a2[1] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a3[2];
  a2[2] = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[2] &= 0xFFFFFFFFFFFFFFF8;
  }
}

uint64_t sub_29AC1CE64(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC1CE9C(a1);
  }

  return a1;
}

void sub_29AC1CE9C(uint64_t *a1)
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
      v3 -= 3;
      sub_29AC1CA18(v5, v3);
    }

    while (v3 != v4);
  }
}

void *sub_29AC1CEF0(uint64_t a1, void *a2, void *a3, void *a4)
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
    sub_29A166F2C(a4 + 1, v5 + 1);
    sub_29A166F2C(a4 + 2, v5 + 2);
    a4 += 3;
    v5 += 3;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_29AC1CF6C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v9 = result;
  if (result == a2)
  {
LABEL_13:
    while (a3 != a4)
    {
      result = sub_29AC1D068(a5, a3);
      a3 += 3;
    }

    v11 = v9;
  }

  else
  {
    v11 = a2;
    while (a3 != a4)
    {
      if (pxrInternal__aapl__pxrReserved__::HdReprSelector::operator<(a3, v9))
      {
        result = sub_29AC1D068(a5, a3);
        a3 += 3;
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::HdReprSelector::operator<(v9, a3))
        {
          v12 = 0;
        }

        else
        {
          v12 = 24;
        }

        a3 = (a3 + v12);
        result = sub_29AC1D068(a5, v9);
        v9 += 3;
      }

      if (v9 == v11)
      {
        v9 = v11;
        goto LABEL_13;
      }
    }

    while (v9 != v11)
    {
      result = sub_29AC1D068(a5, v9);
      v9 += 3;
    }
  }

  *a6 = v11;
  a6[1] = a4;
  a6[2] = a5;
  return result;
}

uint64_t sub_29AC1D068(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AC1D0B4(a1, a2);
  }

  else
  {
    sub_29AC1CDDC(a1, *(a1 + 8), a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AC1D0B4(uint64_t a1, uint64_t *a2)
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
  v15 = &v7[24 * v2];
  *(&v16 + 1) = &v7[24 * v6];
  sub_29AC1CDDC(a1, v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29AC1D1E4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AC1D2A8(&v14);
  return v13;
}

void sub_29AC1D1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC1D2A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC1D1E4(uint64_t a1, void *a2, void *a3, void *a4)
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
      *a4 = *v7;
      *v7 = 0;
      a4[1] = v7[1];
      v7[1] = 0;
      a4[2] = v7[2];
      v7[2] = 0;
      v7 += 3;
      a4 += 3;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AC1CA18(a1, v5);
      v5 += 3;
    }
  }

  return sub_29AC1CE64(v9);
}

void **sub_29AC1D2A8(void **a1)
{
  sub_29AC1D2DC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AC1D2DC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 24;
    sub_29AC1CA18(v4, (i - 24));
  }
}

uint64_t sub_29AC1D324(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_29A419524, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType::~HdDisplayFilterSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType::HdDisplayFilterSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "displayFilter", 0);
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

void sub_29AC1D4C0(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetResource(pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
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

void sub_29AC1D71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
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

void *pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::Builder::SetResource(void *a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens))
    {
      sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
  if (!result)
  {
    return sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749808))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A17497D0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A17497D0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749808);
  }

  return &unk_2A17497D0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetResourceLocator(pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749848, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749848);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17497D0, (v3 + 8), dword_2A1749810);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749810, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749848);
    }
  }

  return dword_2A1749810;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDrawItem::HdDrawItem(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A207B068;
  *(a1 + 8) = -65534;
  *(a1 + 12) = 67305728;
  *(a1 + 16) = 1541;
  *(a1 + 18) = 7;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  sub_29A0ECEEC(&v4, "hd", "pxrInternal__aapl__pxrReserved__::HdDrawItem::HdDrawItem(const HdRprimSharedData *)");
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdDrawItem::~HdDrawItem(pxrInternal__aapl__pxrReserved__::HdDrawItem *this)
{
  *this = &unk_2A207B068;
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  *this = &unk_2A207B068;
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdDrawItem::~HdDrawItem(void *this)
{
  *this = &unk_2A207B068;
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  free(this);
}

double pxrInternal__aapl__pxrReserved__::HdEngine::HdEngine(pxrInternal__aapl__pxrReserved__::HdEngine *this)
{
  *this = &unk_2A207B098;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  return result;
}

{
  *this = &unk_2A207B098;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdEngine::~HdEngine(pxrInternal__aapl__pxrReserved__::HdEngine *this)
{
  *this = &unk_2A207B098;
  sub_29AC1E22C(this + 8);
}

{
  *this = &unk_2A207B098;
  sub_29AC1E22C(this + 8);
}

{
  *this = &unk_2A207B098;
  sub_29AC1E22C(this + 8);

  operator delete(this);
}

void *pxrInternal__aapl__pxrReserved__::HdEngine::SetTaskContextData(pxrInternal__aapl__pxrReserved__::HdEngine *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  result = sub_29AC1E2CC(this + 8, a2, a2, a3);
  if ((v5 & 1) == 0)
  {
    v6 = result + 3;

    return sub_29A1854E8(v6, a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdEngine::GetTaskContextData(pxrInternal__aapl__pxrReserved__::HdEngine *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  if (!a3 && (sub_29B2C5DE4(v7) & 1) == 0)
  {
    return 0;
  }

  result = sub_29A16039C(this + 1, a2);
  if (result)
  {
    sub_29A1854E8(a3, (result + 24));
    return 1;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdEngine::Execute(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (this && a3)
  {
    Drivers = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetDrivers(this);
    v12 = &off_2A207B0B8;
    sub_29AC1ED5C(&v11, Drivers);
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v6)
    {
      v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v10 = (v6 + 224);
    v7 = sub_29AC1E77C(a1 + 8, v6 + 28, &unk_29B4D6118, &v10);
    sub_29A18606C(v7 + 3, &v11);
    sub_29A186B14(&v11);
    if (sub_29ABCF8C0(11))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("\n==============================================================\n      HdEngine [Data Discovery Phase](RenderIndex::SyncAll)   \n--------------------------------------------------------------\n", v8, v9);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::SyncAll(this);
  }

  v11 = "hd/engine.cpp";
  v12 = "Execute";
  v13 = 82;
  v14 = "void pxrInternal__aapl__pxrReserved__::HdEngine::Execute(HdRenderIndex *, HdTaskSharedPtrVector *)";
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Passed nullptr to HdEngine::Execute()");
}

void sub_29AC1E060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdEngine::Execute(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath **a3)
{
  memset(v19, 0, sizeof(v19));
  sub_29A039314(v19, (a3[1] - *a3) >> 3);
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v6))
      {
        Task = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(a2, v6);
        v9 = *Task;
        v10 = Task[1];
        v12 = *Task;
        v13 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          sub_29A01729C(v19, &v12);
        }

        else
        {
          v14 = "hd/engine.cpp";
          v15 = "Execute";
          v16 = 191;
          v17 = "void pxrInternal__aapl__pxrReserved__::HdEngine::Execute(HdRenderIndex *const, const SdfPathVector &)";
          v18 = 0;
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v6);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 1, "No task at %s in render index in HdEngine::Execute()", Text);
        }

        if (v13)
        {
          sub_29A014BEC(v13);
        }
      }

      else
      {
        v14 = "hd/engine.cpp";
        v15 = "Execute";
        v16 = 184;
        v17 = "void pxrInternal__aapl__pxrReserved__::HdEngine::Execute(HdRenderIndex *const, const SdfPathVector &)";
        v18 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 1, "Empty task path given to HdEngine::Execute()");
      }

      v6 = (v6 + 8);
    }

    while (v6 != v7);
  }

  pxrInternal__aapl__pxrReserved__::HdEngine::Execute(a1, a2, v19);
  v14 = v19;
  sub_29A0176E4(&v14);
}

void sub_29AC1E1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a13 = &a18;
  sub_29A0176E4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC1E22C(uint64_t a1)
{
  sub_29AC1E268(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC1E268(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A186B14((v2 + 3));
      v4 = v2[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29AC1E2CC(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
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
            if ((result[2] ^ *a2) < 8)
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

  sub_29AC1E518(a1, v6, a3, a4, &v16);
  if (!v7 || (*(a1 + 32) * v7) < (*(a1 + 24) + 1))
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__rehash<true>();
  }

  v12 = *a1;
  v13 = *(*a1 + 8 * v4);
  if (v13)
  {
    result = v16;
    *v16 = *v13;
    *v13 = result;
  }

  else
  {
    v14 = v16;
    *v16 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v12 + 8 * v4) = a1 + 16;
    result = v16;
    if (*v16)
    {
      v15 = *(*v16 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v15 >= v7)
        {
          v15 %= v7;
        }
      }

      else
      {
        v15 &= v7 - 1;
      }

      *(*a1 + 8 * v15) = v16;
      result = v16;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AC1E4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a10)
  {
    sub_29AC1E628(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AC1E518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x28uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29AC1E5B0(v10 + 2, a3, a4);
  *(a5 + 16) = 1;
  return result;
}

void sub_29AC1E594(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AC1E628(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AC1E5B0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a3);
  return a1;
}

void sub_29AC1E628(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A186B14((a2 + 3));
    v3 = a2[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *sub_29AC1E69C(void *a1, void *a2)
{
  result = sub_29A160470(a1, a2);
  if (result)
  {
    sub_29AC1E6D4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AC1E6D4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_29AC1E628(&v6, v3);
  }

  return v2;
}

void sub_29AC1E720(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AC1E268(a1, *(a1 + 16));
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

void *sub_29AC1E77C(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
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
            if ((result[2] ^ *a2) < 8)
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

  sub_29AC1E9C8(a1, v6, a4, &v16);
  if (!v7 || (*(a1 + 32) * v7) < (*(a1 + 24) + 1))
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__rehash<true>();
  }

  v12 = *a1;
  v13 = *(*a1 + 8 * v4);
  if (v13)
  {
    result = v16;
    *v16 = *v13;
    *v13 = result;
  }

  else
  {
    v14 = v16;
    *v16 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v12 + 8 * v4) = a1 + 16;
    result = v16;
    if (*v16)
    {
      v15 = *(*v16 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v15 >= v7)
        {
          v15 %= v7;
        }
      }

      else
      {
        v15 &= v7 - 1;
      }

      *(*a1 + 8 * v15) = v16;
      result = v16;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AC1E9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a10)
  {
    sub_29AC1E628(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC1E9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x28uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = **a3;
  result[2] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[4] = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t *sub_29AC1EA4C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AC1EA6C(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A22B614(a1);
}

void *sub_29AC1EB88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A207B0B8;
  return sub_29AC1ED5C(a2, v2);
}

unint64_t sub_29AC1EBA0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    do
    {
      v8 = *v2++;
      v7 = v8;
      if (v5)
      {
        v7 += (v4 + v7 + (v4 + v7) * (v4 + v7)) >> 1;
      }

      v5 = 1;
      v4 = v7;
      --v6;
    }

    while (v6);
    v9 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v9 = 0;
  }

  return bswap64(v9);
}

uint64_t sub_29AC1EC00(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29AC1EC68(*a1, &v4);
    sub_29A22B614(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A22B614(&v4);
  }

  return *a1;
}

void *sub_29AC1EC68@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29AC1ECE0(v4, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  atomic_store(0, v4 + 6);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29AC1ECE0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AC1ED40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC1ED5C(unsigned int **a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29AC1ECE0(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void sub_29AC1EDD4()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207B180, 0, "HdInterpolationConstant", "constant");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207B180, 1, "HdInterpolationUniform", "uniform");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207B180, 2, "HdInterpolationVarying", "varying");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207B180, 3, "HdInterpolationVertex", "vertex");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207B180, 4, "HdInterpolationFaceVarying", "faceVarying");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207B180, 5, "HdInterpolationInstance", "instance");
}

uint64_t pxrInternal__aapl__pxrReserved__::HdInvertCullStyle(uint64_t result)
{
  if (result <= 5)
  {
    return dword_29B6D6920[result];
  }

  return result;
}

void sub_29AC1EEC4()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_SHARED_EXT_COMPUTATION_DATA))
  {
    sub_29B2C5E30();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputation::_IsEnabledSharedExtComputationData(pxrInternal__aapl__pxrReserved__::HdExtComputation *this)
{
  if ((atomic_load_explicit(&qword_2A1749858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749858))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_SHARED_EXT_COMPUTATION_DATA);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1749850 = *v2 == 1;
    __cxa_guard_release(&qword_2A1749858);
  }

  return byte_2A1749850;
}

double pxrInternal__aapl__pxrReserved__::HdExtComputation::HdExtComputation(pxrInternal__aapl__pxrReserved__::HdExtComputation *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(this, a2);
  *v2 = &unk_2A207B1A0;
  result = 0.0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  return result;
}

{
  v2 = pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(this, a2);
  *v2 = &unk_2A207B1A0;
  result = 0.0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputation::~HdExtComputation(void **this)
{
  *this = &unk_2A207B1A0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this + 10;
  sub_29ABC6FA0(&v2);
  v2 = this + 7;
  sub_29AC03488(&v2);
  v2 = this + 4;
  sub_29A124AB0(&v2);
  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdExtComputation::~HdExtComputation(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdExtComputation::_Sync(void **this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v27 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v20, "hd", "void pxrInternal__aapl__pxrReserved__::HdExtComputation::_Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)");
  if (a2 || (*&v23 = "hd/extComputation.cpp", *(&v23 + 1) = "_Sync", v24 = 55, v25 = "void pxrInternal__aapl__pxrReserved__::HdExtComputation::_Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)", v26 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v23, "sceneDelegate != nullptr", 0) & 1) != 0))
  {
    if (sub_29ABCF8C0(14))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 1));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdExtComputation::Sync for %s (dirty bits = 0x%x)\n", v8, v9, Text, *a4);
    }

    v10 = *a4;
    if (*a4)
    {
      if (sub_29ABCF8C0(14))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    dirty inputs\n", v11, v12);
      }

      (*(*a2 + 344))(&v23, a2, this + 8);
      sub_29A2F7B20(this + 4);
      *(this + 2) = v23;
      this[6] = v24;
      v24 = 0;
      v22 = &v23;
      v23 = 0uLL;
      sub_29A124AB0(&v22);
      (*(*a2 + 352))(&v23, a2, this + 8);
      sub_29AC1F6A0(this + 7);
      *(this + 7) = v23;
      this[9] = v24;
      v24 = 0;
      v22 = &v23;
      v23 = 0uLL;
      sub_29AC03488(&v22);
    }

    if ((v10 & 2) != 0)
    {
      (*(*a2 + 360))(&v23, a2, this + 8);
      sub_29AC1F70C(this + 10);
      *(this + 5) = v23;
      this[12] = v24;
      v24 = 0;
      v22 = &v23;
      v23 = 0uLL;
      sub_29ABC6FA0(&v22);
    }

    if ((v10 & 0x40) != 0)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v13)
      {
        v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      (*(*a2 + 376))(&v23, a2, this + 8, v13 + 144);
      v14 = *(&v23 + 1);
      if (*(&v23 + 1))
      {
        v14 = *sub_29AC1F544(&v23);
      }

      this[2] = v14;
      sub_29A186B14(&v23);
    }

    if ((v10 & 4) != 0)
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v15)
      {
        v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      (*(*a2 + 376))(&v23, a2, this + 8, v15 + 240);
      v16 = *(&v23 + 1);
      if (*(&v23 + 1))
      {
        v16 = *sub_29AC1F544(&v23);
      }

      this[3] = v16;
      sub_29A186B14(&v23);
    }

    if ((v10 & 0x20) != 0)
    {
      (*(*a2 + 400))(&v23, a2, this + 8);
      v17 = this + 13;
      if (*(this + 127) < 0)
      {
        operator delete(*v17);
      }

      *v17 = v23;
      this[15] = v24;
      if (sub_29ABCF8C0(14))
      {
        if (*(this + 127) < 0)
        {
          v17 = *v17;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    GpuKernelSource = '%s'\n", v18, v19, v17);
      }
    }

    *a4 &= 0xFFFFFF88;
  }

  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }
}

void sub_29AC1F4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void **sub_29AC1F544(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AC03EF0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDC94E8];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AC1F77C, v4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputation::GetDispatchCount(pxrInternal__aapl__pxrReserved__::HdExtComputation *this)
{
  result = *(this + 2);
  if (!result)
  {
    return *(this + 3);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdExtComputation::GetOutputNames@<X0>(pxrInternal__aapl__pxrReserved__::HdExtComputation *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3));
  v5 = *(this + 10);
  v6 = *(this + 11);
  while (v5 != v6)
  {
    result = sub_29A1D8028(a2, v5);
    v5 += 3;
  }

  return result;
}

void sub_29AC1F674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AC1F6A0(void **a1)
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
        v3 -= 24;
        sub_29AC03510(a1, v3);
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

void sub_29AC1F70C(void **a1)
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
        v6 = *(v3 - 3);
        v3 -= 24;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
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

void *sub_29AC1F77C@<X0>(void *a1@<X8>)
{
  result = operator new(8uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94E8];
  a1[1] = sub_29AC1F7C4;
  a1[2] = v3;
  return result;
}

void sub_29AC1F7C4(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HdExtComputationContextInternal(uint64_t this)
{
  *(this + 16) = 0;
  *this = &unk_2A207B240;
  *(this + 8) = this + 16;
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 32) = this + 40;
  *(this + 56) = 0;
  return this;
}

{
  *(this + 16) = 0;
  *this = &unk_2A207B240;
  *(this + 8) = this + 16;
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 32) = this + 40;
  *(this + 56) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal(pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal *this)
{
  sub_29A5B0668(this + 32, *(this + 5));
  sub_29A5B0668(this + 8, *(this + 2));

  pxrInternal__aapl__pxrReserved__::HdExtComputationContext::~HdExtComputationContext(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetOutputValue(pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v6 = sub_29A31B8F0(this + 32, a2);
  v7 = v6;
  v8 = this + 40;
  if (v8 == v6)
  {
    v12[0] = "hd/extComputationContextInternal.cpp";
    v12[1] = "GetOutputValue";
    v12[2] = 38;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetOutputValue(const TfToken &, VtValue *) const";
    v13 = 0;
    v14 = 6;
    v9 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v9)
    {
      v10 = (v9 + 16);
      if (*(v9 + 39) < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueWarning(v12, "output not specified: %s", v10);
  }

  else
  {
    sub_29A1854E8(a3, (v6 + 40));
  }

  return v8 != v7;
}

char *pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetInputValue(pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = sub_29A31B8F0(this + 8, a2);
  if ((this + 16) != v4)
  {
    return v4 + 40;
  }

  v8[0] = "hd/extComputationContextInternal.cpp";
  v8[1] = "GetInputValue";
  v8[2] = 67;
  v8[3] = "virtual const VtValue &pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetInputValue(const TfToken &) const";
  v9 = 0;
  v10 = 1;
  v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v6)
  {
    v7 = (v6 + 16);
    if (*(v6 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  else
  {
    v7 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v8, "Asking for invalid input %s", v7);
  if (atomic_load_explicit(&qword_2A1749860, memory_order_acquire))
  {
    return &unk_2A1749868;
  }

  sub_29B2C5E64(v8);
  return v8[0];
}

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetOptionalInputValuePtr(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29A31B8F0(a1 + 8, a2);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return v3 + 40;
  }
}

uint64_t *sub_29AC1FB6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t **a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29AC1E5B0(v8 + 4, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29AC1FBDC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A94BD9C(v3, v2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens_StaticTokenType::~HdExtComputationInputComputationSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens_StaticTokenType::HdExtComputationInputComputationSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "sourceComputation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "sourceComputationOutputName", 0);
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

void sub_29AC1FD80(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputation(pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC201E8(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputationOutputName(pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC201E8(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
  }

  v5 = v4[1];
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
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
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AC201E8(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
    }

    v5 = &v23;
    v6 = v25;
    sub_29A166F2C(&v24, v8);
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
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
    if (!v13)
    {
      v13 = sub_29AC201E8(&pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens);
    }

    sub_29A166F2C(v6, v13 + 1);
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

void sub_29AC200F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
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

void *pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::Builder::SetSourceComputation(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::Builder::SetSourceComputationOutputName(uint64_t a1, uint64_t *a2)
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

atomic_uint **sub_29AC201E8(atomic_ullong *a1)
{
  result = sub_29AC20230();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens_StaticTokenType::~HdExtComputationInputComputationSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AC20230()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchemaTokens_StaticTokenType::HdExtComputationInputComputationSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens_StaticTokenType::~HdExtComputationOutputSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens_StaticTokenType::HdExtComputationOutputSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "valueType", 0);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchema::GetValueType(pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC206C0(&pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens);
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

  sub_29AC204C8(this, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC204C8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC20784(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens);
    if (!v4)
    {
      v4 = sub_29AC206C0(&pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens);
    }

    sub_29A166F2C(v11, v4);
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

void sub_29AC20640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
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

void *pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchema::Builder::SetValueType(void *a1, uint64_t *a2)
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

unint64_t sub_29AC206C0(atomic_ullong *a1)
{
  v2 = sub_29AC20740();
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

pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens_StaticTokenType *sub_29AC20740()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchemaTokens_StaticTokenType::HdExtComputationOutputSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC20784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20770F0, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType::~HdExtComputationPrimvarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType::HdExtComputationPrimvarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "interpolation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "role", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "sourceComputation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "sourceComputationOutputName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "valueType", 0);
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

void sub_29AC20A80(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetInterpolation(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetRole(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputation(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
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

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputationOutputName(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetValueType(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
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

  sub_29AC204C8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
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
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    if (!v14)
    {
      v14 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    }

    v11 = v47;
    v12 = v48 + 1;
    sub_29A166F2C(v48, v14);
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
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    if (!v19)
    {
      v19 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    }

    sub_29A166F2C(v12, v19 + 1);
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
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    if (!v23)
    {
      v23 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    }

    sub_29A166F2C(v48 + v18, v23 + 2);
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
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    if (!v29)
    {
      v29 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    }

    sub_29A166F2C(v48 + v24, v29 + 3);
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
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    if (!v35)
    {
      v35 = sub_29AC213A8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens);
    }

    sub_29A166F2C(v48 + v30, v35 + 4);
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

void sub_29AC211D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
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

void *pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetInterpolation(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetRole(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetSourceComputation(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetSourceComputationOutputName(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetValueType(uint64_t a1, uint64_t *a2)
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

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType *sub_29AC213A8(atomic_ullong *a1)
{
  result = sub_29AC213F0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType::~HdExtComputationPrimvarSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType *sub_29AC213F0()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchemaTokens_StaticTokenType::HdExtComputationPrimvarSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType::~HdExtComputationPrimvarsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType::HdExtComputationPrimvarsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "extComputationPrimvars", 0);
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetExtComputationPrimvarNames@<X0>(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetExtComputationPrimvar(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
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

double pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens))
    {
      sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  if (!result)
  {
    return sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17498B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17498B0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749878, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749878, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17498B0);
  }

  return &unk_2A1749878;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType::~HdExtComputationSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType::HdExtComputationSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "extComputation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "inputValues", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "inputComputations", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "outputs", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "glslKernel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "cpuCallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "dispatchCount", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "elementCount", 0);
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

void sub_29AC21C58(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValues(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

  sub_29ABC2F3C(this, &v8);
  sub_29ABCD3B8(a2, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC21E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputations(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

  sub_29ABC2F3C(this, &v8);
  sub_29ABCD3B8(a2, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputs(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

  sub_29ABC2F3C(this, &v8);
  sub_29ABCD3B8(a2, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetGlslKernel(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

void sub_29AC22098(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC0C148(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetCpuCallback(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

  sub_29AC221C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC221C4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC23228(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDispatchCount(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

  sub_29AC222F0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC222F0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC232B8(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetElementCount(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

  sub_29AC222F0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X8>)
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
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v22)
    {
      v22 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v26)
    {
      v26 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v32)
    {
      v32 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v38)
    {
      v38 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v44)
    {
      v44 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v50)
    {
      v50 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

void sub_29AC2281C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
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

void *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::Builder::SetInputValues(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::Builder::SetInputComputations(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::Builder::SetOutputs(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::Builder::SetGlslKernel(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::Builder::SetCpuCallback(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::Builder::SetDispatchCount(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::Builder::SetElementCount(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens))
    {
      sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!result)
  {
    return sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17498F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17498F0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A17498B8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A17498B8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17498F0);
  }

  return &unk_2A17498B8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValuesLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749930, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749930);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17498B8, (v3 + 8), dword_2A17498F8);
      __cxa_atexit(sub_29ABC33B4, dword_2A17498F8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749930);
    }
  }

  return dword_2A17498F8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputationsLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749970, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749970);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17498B8, (v3 + 16), dword_2A1749938);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749938, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749970);
    }
  }

  return dword_2A1749938;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputsLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17499B0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17499B0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17498B8, (v3 + 24), dword_2A1749978);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749978, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17499B0);
    }
  }

  return dword_2A1749978;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetGlslKernelLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17499F0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17499F0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17498B8, (v3 + 32), dword_2A17499B8);
      __cxa_atexit(sub_29ABC33B4, dword_2A17499B8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17499F0);
    }
  }

  return dword_2A17499B8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetCpuCallbackLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749A30, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749A30);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17498B8, (v3 + 40), dword_2A17499F8);
      __cxa_atexit(sub_29ABC33B4, dword_2A17499F8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749A30);
    }
  }

  return dword_2A17499F8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDispatchCountLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749A70, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749A70);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17498B8, (v3 + 48), dword_2A1749A38);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749A38, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749A70);
    }
  }

  return dword_2A1749A38;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetElementCountLocator(pxrInternal__aapl__pxrReserved__::HdExtComputationSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749AB0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749AB0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A17498B8, (v3 + 56), dword_2A1749A78);
      __cxa_atexit(sub_29ABC33B4, dword_2A1749A78, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749AB0);
    }
  }

  return dword_2A1749A78;
}

void *sub_29AC23228@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207A230, 0)) != 0)
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

void *sub_29AC232B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207A468, 0)) != 0)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::_GenerateDependencyMap@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  memset(v7, 0, sizeof(v7));
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v5)
    {
      v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v3, (v5 + 304), (v4 + 28));
  }

  *a3 = 0uLL;
  *(a3 + 16) = 0uLL;
  *(a3 + 32) = 1065353216;
  return sub_29A10C468(v7);
}

void sub_29AC235F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0FEDE8(v9);
  sub_29A10C468(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC23634(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v8 + v7;
  if (v6 == v8 + v7)
  {
    sub_29AC2450C(a1);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v5 = *(a1 + 8);
    v9 = v7 + v8;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  v10 = v7 + v8 + 1;
  v11 = *(a1 + 8);
  v12 = (v11 + 8 * (v10 >> 9));
  v13 = *v12 + 8 * (v10 & 0x1FF);
  if (*(a1 + 16) == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 8;
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::_LimitTimeSamples(unint64_t a1, double **a2)
{
  std::__sort<std::__less<double,double> &,double *>();
  v4 = sub_29A845E74(*a2, a2[1]);
  v5 = *a2;
  v6 = a2[1];
  if (v4 != v6)
  {
    v6 = v4;
    a2[1] = v4;
  }

  v7 = v6 - v5;
  if (v7 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  sub_29A00BF50(a2, v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::_InvokeComputation(uint64_t a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::VtValue *a5, uint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, uint64_t a8)
{
  pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HdExtComputationContextInternal(v31);
  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::SetInputValue(v31, *(a2 + 32), a3);
  }

  if (a6)
  {
    pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::SetInputValue(v31, *(a2 + 56), a5);
  }

  (*(*a1 + 408))(a1, a2 + 8, v31);
  if (pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HasComputationError(v31))
  {
    v26 = "hd/extComputationUtils.cpp";
    v27 = "_InvokeComputation";
    v28 = 129;
    v29 = "static BOOL pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::_InvokeComputation(HdSceneDelegate &, const HdExtComputation &, TfSpan<const VtValue>, TfSpan<const VtValue>, TfSpan<VtValue>)";
    v30 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a2 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v26, "Error invoking computation %s.\n", v17, Text);
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  if (a8)
  {
    v18 = 0;
    while (1)
    {
      v19 = *(a2 + 80);
      if (!pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetOutputValue(v31, (v19 + v18), a7))
      {
        break;
      }

      v18 += 24;
      a7 = (a7 + 16);
      if (!--a8)
      {
        goto LABEL_11;
      }
    }

    v26 = "hd/extComputationUtils.cpp";
    v27 = "_InvokeComputation";
    v28 = 139;
    v29 = "static BOOL pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::_InvokeComputation(HdSceneDelegate &, const HdExtComputation &, TfSpan<const VtValue>, TfSpan<const VtValue>, TfSpan<VtValue>)";
    v30 = 0;
    v21 = *(v19 + v18) & 0xFFFFFFFFFFFFFFF8;
    if (v21)
    {
      v22 = (v21 + 16);
      if (*(v21 + 39) < 0)
      {
        v22 = *v22;
      }
    }

    else
    {
      v22 = "";
    }

    v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a2 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v26, "Error getting out %s for computation %s.\n", v24, v22, v23);
    goto LABEL_17;
  }

LABEL_11:
  v20 = 1;
LABEL_18:
  pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal(v31);
  return v20;
}

void sub_29AC23994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::GetComputedPrimvarValues@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v55[8] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::_GenerateDependencyMap(a1, a2, v46);
  __p = 0;
  v44 = 0;
  v45 = 0;
  sub_29AC24A24(v42, v46);
  v7 = pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::DependencySort(v42, &__p, v6);
  sub_29A0FEDE8(v42);
  if (v7)
  {
    v38 = 0;
    v39 = 0;
    v37 = 0;
    sub_29AC24DA0(&v37, __p, v44, (v44 - __p) >> 3);
    memset(v40, 0, sizeof(v40));
    v41 = 1065353216;
    v8 = v37;
    v36 = v38;
    if (v37 != v38)
    {
      v35 = v4;
      do
      {
        v9 = *v8;
        v11 = *(*v8 + 4);
        v10 = *(*v8 + 5);
        if (v11 == v10)
        {
          v13 = *v8;
        }

        else
        {
          do
          {
            (*(*a2 + 376))(v55, a2, v9 + 8, v11);
            v48 = v11;
            v12 = sub_29AC1E77C(v40, v11, &unk_29B4D6118, &v48);
            sub_29A18606C(v12 + 3, v55);
            sub_29A186B14(v55);
            ++v11;
          }

          while (v11 != v10);
          v13 = *v8;
        }

        if (!pxrInternal__aapl__pxrReserved__::HdExtComputation::IsInputAggregation(v13))
        {
          pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HdExtComputationContextInternal(v55);
          v14 = *v8;
          v16 = *(*v8 + 4);
          v15 = *(*v8 + 5);
          if (v16 != v15)
          {
            do
            {
              v17 = sub_29A160470(v40, v16);
              if (v17)
              {
                pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::SetInputValue(v55, v16, (v17 + 3));
              }

              v16 = (v16 + 8);
            }

            while (v16 != v15);
            v14 = *v8;
          }

          v19 = *(v14 + 7);
          v18 = *(v14 + 8);
          while (v19 != v18)
          {
            v20 = sub_29A160470(v40, v19 + 2);
            if (v20)
            {
              pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::SetInputValue(v55, v19, (v20 + 3));
            }

            v19 = (v19 + 24);
          }

          (*(*a2 + 408))(a2, v9 + 8, v55);
          if (pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HasComputationError(v55))
          {
            v48 = "hd/extComputationUtils.cpp";
            v49 = "_ExecuteComputations";
            v50 = 198;
            v51 = "HdExtComputationUtils::ValueStore pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExecuteComputations(HdExtComputationConstPtrVector, HdSceneDelegate *)";
            v52 = 0;
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v9 + 8));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v48, "Error invoking computation %s.\n", v22, Text);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::HdExtComputation::GetOutputNames(*v8, v47);
            v24 = v47[0];
            v23 = v47[1];
            while (v24 != v23)
            {
              v54[1] = 0;
              if (pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetOutputValue(v55, v24, v54))
              {
                v53 = v24;
                v25 = sub_29AC1E77C(v40, v24, &unk_29B4D6118, &v53);
                sub_29A1854E8(v25 + 3, v54);
              }

              else
              {
                v48 = "hd/extComputationUtils.cpp";
                v49 = "_ExecuteComputations";
                v50 = 207;
                v51 = "HdExtComputationUtils::ValueStore pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExecuteComputations(HdExtComputationConstPtrVector, HdSceneDelegate *)";
                v52 = 0;
                v26 = *v24 & 0xFFFFFFFFFFFFFFF8;
                if (v26)
                {
                  v27 = (v26 + 16);
                  if (*(v26 + 39) < 0)
                  {
                    v27 = *v27;
                  }
                }

                else
                {
                  v27 = "";
                }

                v28 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v9 + 8));
                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v48, "Error getting out %s for computation %s.\n", v29, v27, v28);
              }

              sub_29A186B14(v54);
              ++v24;
            }

            v48 = v47;
            sub_29A124AB0(&v48);
          }

          pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal(v55);
        }

        ++v8;
      }

      while (v8 != v36);
      v8 = v37;
      v4 = v35;
    }

    if (v8)
    {
      v38 = v8;
      operator delete(v8);
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    v31 = *v4;
    for (i = v4[1]; v31 != i; v31 += 8)
    {
      v55[0] = v31 + 5;
      v32 = sub_29AC1E77C(v40, v31 + 5, &unk_29B4D6118, v55);
      v55[0] = v31;
      v33 = sub_29AC1E77C(a3, v31, &unk_29B4D6118, v55);
      sub_29A1854E8(v33 + 3, v32 + 3);
    }

    sub_29AC1E22C(v40);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  return sub_29A0FEDE8(v46);
}

void sub_29AC23E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A0FEDE8(&a30);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::DependencySort(void *a1, uint64_t a2, char *a3)
{
  if (a2)
  {
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v5 = a1[2];
    if (v5)
    {
      do
      {
        v6 = v5[3];
        v31[0] = v5[2];
        if (v6 == v5[4])
        {
          sub_29AC23634(&v33, v31);
          v5 = sub_29A1136B0(a1, v5);
        }

        else
        {
          v5 = *v5;
        }
      }

      while (v5);
      for (i = *(&v35 + 1); *(&v35 + 1); i = *(&v35 + 1))
      {
        v8 = *(*(*(&v33 + 1) + (((i + v35 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((i + v35 - 1) & 0x1FF));
        v10 = *(a2 + 8);
        v9 = *(a2 + 16);
        if (v10 >= v9)
        {
          v12 = (v10 - *a2) >> 3;
          if ((v12 + 1) >> 61)
          {
            sub_29A00C9A4();
          }

          v13 = v9 - *a2;
          v14 = v13 >> 2;
          if (v13 >> 2 <= (v12 + 1))
          {
            v14 = v12 + 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            v16 = sub_29A00C9BC(a2, v15);
          }

          else
          {
            v16 = 0;
          }

          v17 = &v16[8 * v15];
          v18 = &v16[8 * v12];
          *v18 = v8;
          v11 = v18 + 8;
          v19 = *(a2 + 8) - *a2;
          v20 = &v16[8 * v12 - v19];
          memcpy(v20, *a2, v19);
          v21 = *a2;
          *a2 = v20;
          *(a2 + 8) = v11;
          *(a2 + 16) = v17;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v10 = v8;
          v11 = v10 + 1;
        }

        *(a2 + 8) = v11;
        --*(&v35 + 1);
        sub_29A10FFEC(&v33, 1);
        v22 = a1[2];
        while (v22)
        {
          v23 = v22[3];
          v31[0] = v22[2];
          v24 = v22[4];
          v25 = v23;
          if (v23 != v24)
          {
            v26 = v23;
            while (*v26 != v8)
            {
              v26 += 8;
              v25 += 8;
              if (v26 == v24)
              {
                v25 = v22[4];
                break;
              }
            }
          }

          if (v24 != v25)
          {
            v27 = &v24[-v25 - 8];
            if (v24 != (v25 + 8))
            {
              memmove(v25, (v25 + 8), &v24[-v25 - 8]);
              v23 = v22[3];
            }

            v24 = &v27[v25];
            v22[4] = &v27[v25];
          }

          if (v23 == v24)
          {
            sub_29AC241F0(&v33, v31);
            v22 = sub_29A1136B0(a1, v22);
          }

          else
          {
            v22 = *v22;
          }
        }
      }
    }

    v28 = a1[3];
    v29 = v28 == 0;
    if (v28)
    {
      v31[0] = "hd/extComputationUtils.cpp";
      v31[1] = "DependencySort";
      v31[2] = 322;
      v31[3] = "static BOOL pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::DependencySort(HdExtComputationUtils::ComputationDependencyMap, HdExtComputationConstPtrVector *)";
      v32 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v31, "Cycle detected in ExtComputation dependency graph. Unresolved dependencies:\n", a3);
      if (sub_29ABCF8C0(15))
      {
        pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::PrintDependencyMap(a1);
      }

      *(a2 + 8) = *a2;
    }

    sub_29A10C468(&v33);
  }

  else
  {
    *&v33 = "hd/extComputationUtils.cpp";
    *(&v33 + 1) = "DependencySort";
    *&v34 = 262;
    *(&v34 + 1) = "static BOOL pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::DependencySort(HdExtComputationUtils::ComputationDependencyMap, HdExtComputationConstPtrVector *)";
    LOBYTE(v35) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Received nullptr for sortedComps.");
    return 0;
  }

  return v29;
}

void sub_29AC241C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A10C468(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC241F0(void *a1, void *a2)
{
  v4 = a1[4];
  if (!v4)
  {
    sub_29AC24E1C(a1);
    v4 = a1[4];
  }

  v5 = a1[1];
  v6 = (v5 + 8 * (v4 >> 9));
  if (a1[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 8) = *a2;
  v8 = v4 - 1;
  v9 = a1[5] + 1;
  a1[4] = v8;
  a1[5] = v9;
  return *(a1[1] + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdExtComputationUtils::PrintDependencyMap(uint64_t a1)
{
  v2 = MEMORY[0x29EDC93C8];
  v3 = sub_29A00911C(MEMORY[0x29EDC93C8], "Computations dep map", 20);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v17, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v17);
  std::ostream::put();
  std::ostream::flush();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = MEMORY[0x29EDC93C8];
    v7 = MEMORY[0x29EDC93D0];
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (v5[2] + 8));
      sub_29A00911C(v8, " -> [ ", 6);
      v9 = v5[3];
      v10 = v5[4];
      while (v9 != v10)
      {
        v11 = *v9++;
        v12 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (v11 + 8));
        sub_29A00911C(v12, ", ", 2);
      }

      v13 = sub_29A00911C(v6, " ]", 2);
      std::ios_base::getloc((v13 + *(*v13 - 24)));
      v14 = std::locale::use_facet(&v17, v7);
      (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(&v17);
      std::ostream::put();
      std::ostream::flush();
      v5 = *v5;
    }

    while (v5);
  }

  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v15 = std::locale::use_facet(&v17, MEMORY[0x29EDC93D0]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v17);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_29AC2450C(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29AC24674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_29AC246C0(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

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
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_29AC247AC(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  i[4] = 0;
  i[5] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t sub_29AC24A24(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AC24A9C(a1, i + 2, i + 2);
  }

  return a1;
}

void *sub_29AC24A9C(uint64_t a1, void *a2, void *a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      result = *v10;
      if (*v10)
      {
        do
        {
          v12 = result[1];
          if (v12 == v7)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v3)
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

  sub_29AC24D00(a1, v7, a3, &v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AC24CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0FF604(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC24D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = a3[1];
  v8[2] = *a3;
  v8[4] = 0;
  v8[5] = 0;
  v8[3] = 0;
  result = sub_29AC24DA0(v8 + 3, v9, a3[2], (a3[2] - v9) >> 3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29AC24D84(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0FF604(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29AC24DA0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AC24E00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC24E1C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v3 - v2) << 6) - 1;
  }

  v6 = a1[4];
  if ((v5 - (a1[5] + v6)) < 0x200)
  {
    v7 = a1[3];
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v4 >= v9)
    {
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >> 2;
      }

      v25 = a1;
      v22 = sub_29A00C9BC(a1, v10);
      v23 = v22;
      *&v24 = v22;
      *(&v24 + 1) = &v22[8 * v11];
      v21 = operator new(0x1000uLL);
      sub_29A0D6828(&v22, &v21);
      v13 = a1[1];
      v12 = a1[2];
      if (v13 != v12)
      {
        do
        {
          sub_29A0D6828(&v22, v13);
          v13 += 8;
          v12 = a1[2];
        }

        while (v13 != v12);
        v13 = a1[1];
      }

      v14 = *a1;
      v15 = v23;
      *a1 = v22;
      a1[1] = v15;
      v22 = v14;
      v23 = v13;
      v16 = a1[3];
      v17 = v24;
      *(a1 + 1) = v24;
      *&v24 = v12;
      *(&v24 + 1) = v16;
      if (v17 - v15 == 8)
      {
        v18 = 256;
      }

      else
      {
        v18 = a1[4] + 512;
      }

      a1[4] = v18;
      if (v12 != v13)
      {
        *&v24 = &v12[(v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      if (v2 == v8)
      {
        v22 = operator new(0x1000uLL);
        sub_29A0D6614(a1, &v22);
        v19 = a1[2];
        v22 = *(v19 - 8);
        a1[2] = v19 - 8;
      }

      else
      {
        v22 = operator new(0x1000uLL);
      }

      sub_29A0D671C(a1, &v22);
      if (a1[2] - a1[1] == 8)
      {
        v20 = 256;
      }

      else
      {
        v20 = a1[4] + 512;
      }

      a1[4] = v20;
    }
  }

  else
  {
    a1[4] = v6 + 512;
    v22 = *(v3 - 1);
    a1[2] = v3 - 8;
    sub_29A0D671C(a1, &v22);
  }
}

void sub_29AC24FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType::~HdExtentSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType::HdExtentSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "extent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "min", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "max", 0);
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

void sub_29AC25210(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMin(pxrInternal__aapl__pxrReserved__::HdExtentSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
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

  sub_29AC25344(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC25344(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC258FC(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMax(pxrInternal__aapl__pxrReserved__::HdExtentSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
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

  sub_29AC25344(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtentSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
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
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
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
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v13)
    {
      v13 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
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

void sub_29AC2561C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
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

void *pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMin(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMax(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens))
    {
      sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdExtentSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
  if (!result)
  {
    return sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdExtentSchema *this)
{
  if ((atomic_load_explicit(qword_2A1749AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1749AF0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749AB8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749AB8, &dword_299FE7000);
    __cxa_guard_release(qword_2A1749AF0);
  }

  return &unk_2A1749AB8;
}

void *sub_29AC258FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20779D0, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType::~HdFieldTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType::HdFieldTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "filePath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "fieldName", 0);
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

void sub_29AC25B08(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__::HdBprim *pxrInternal__aapl__pxrReserved__::HdField::HdField(pxrInternal__aapl__pxrReserved__::HdField *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdBprim::HdBprim(this, a2);
  *result = &unk_2A207B2D0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdEncapsulatingSceneIndexBase::Cast(void **a1)
{
  result = *a1;
  if (result)
  {
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v3 = &unk_2A207B330;
  v3[14] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AC25D28(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(v11, a2);
  sub_29ABD4DDC();
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29AC25DB8@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase **a1@<X8>)
{
  v2 = operator new(0x70uLL);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(v2);
  *v2 = &unk_2A207B418;
  *a1 = v2;
  v4 = 0;
  return sub_29AC26110(&v4);
}

void pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::GetInputScenes(pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase *this)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *(this + 14);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void **pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::_PrimsRenamed(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7[17] = *MEMORY[0x29EDCA608];
  v7[16] = 0x1000000000;
  v6[32] = 0x1000000000;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::ConvertPrimsRenamedToRemovedAndAdded(a2, a3, v7, v6);
  (*(*a1 + 56))(a1, a2, v7);
  (*(*a1 + 48))(a1, a2, v6);
  sub_29AC263E4(v6);
  return sub_29AC26348(v7);
}

void sub_29AC25FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC263E4(va);
  sub_29AC26348((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_29AC260A4(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29AC260D0(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);

  operator delete(v1);
}

void sub_29AC260F8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_29AC26104(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_29AC26140(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
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

void sub_29AC2619C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC261B4(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29AC2623C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AC2621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC262C4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AC2623C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  return a4;
}

void sub_29AC262A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29ABD4DDC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC262C4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29ABD4DDC();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void **sub_29AC26348(void **a1)
{
  sub_29AC26388(a1);
  if (*(a1 + 33) >= 0x11u)
  {
    free(*a1);
  }

  return a1;
}

_DWORD *sub_29AC26388(_DWORD *result)
{
  v1 = result;
  if (result[33] >= 0x11u)
  {
    v1 = *result;
  }

  v2 = result[32];
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

void **sub_29AC263E4(void **a1)
{
  sub_29AC26424(a1);
  if (*(a1 + 65) >= 0x11u)
  {
    free(*a1);
  }

  return a1;
}

_DWORD *sub_29AC26424(_DWORD *result)
{
  v1 = result;
  if (result[65] >= 0x11u)
  {
    v1 = *result;
  }

  v2 = result[64];
  if (v2)
  {
    v3 = 16 * v2;
    v4 = v1 + 1;
    do
    {
      v5 = *(v4 + 1);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v4);
      result = sub_29A1DE3A4(v4 - 1);
      v4 += 4;
      v3 -= 16;
    }

    while (v3);
  }

  return result;
}