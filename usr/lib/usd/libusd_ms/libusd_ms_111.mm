void pxrInternal__aapl__pxrReserved__::UsdGeomValidatorKeywordTokens_StaticTokenType::~UsdGeomValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdGeomValidatorKeywordTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdGeomValidatorKeywordTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdGeomValidatorKeywordTokens_StaticTokenType::UsdGeomValidatorKeywordTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "UsdGeomSubset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "UsdGeomValidators", 0);
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

void sub_29AAF1B7C(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType::~UsdGeomValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType::UsdGeomValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdGeomValidationErrorNameTokens_StaticTokenType *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "MissingMetersPerUnitMetadata", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "MissingUpAxisMetadata", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "InvalidSubsetFamily", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "NotImageableSubsetParent", 0);
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

void sub_29AAF1DFC(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::_MaterialBindingCheckCollection(pxrInternal__aapl__pxrReserved__::UsdObject *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v6[27] = *MEMORY[0x29EDCA608];
  memset(&v6[12], 0, 24);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets(a2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens))
  {
    sub_29AAF9878(&pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a1, v4, v6);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
}

void sub_29AAF28C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_29AAF2D20(v34 - 112);
  *(v34 - 112) = &a31;
  sub_29A1E234C((v34 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_29AAF2CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    v7 = sub_29AAE43FC(a1, a2, a3, a4, a5);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdValidationError::UsdValidationError(a1[1], a2, a3, a4, a5);
    v7 = v6 + 72;
    a1[1] = v6 + 72;
  }

  a1[1] = v7;
  return v7 - 72;
}

_DWORD *sub_29AAF2D20(uint64_t a1)
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
  v5 = *(a1 + 16);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AAF2DB0()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v1)
  {
    v1 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF3188;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v1 + 8, &v10);
  sub_29AAEE328(&v10);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v2)
  {
    v2 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF368C;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v2 + 16, &v10);
  sub_29AAEE328(&v10);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v3)
  {
    v3 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF3AAC;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v3 + 24, &v10);
  sub_29AAEE328(&v10);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v4)
  {
    v4 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF3C64;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v4 + 32, &v10);
  sub_29AAEE328(&v10);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v5)
  {
    v5 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF5424;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v5 + 40, &v10);
  sub_29AAEE328(&v10);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v6)
  {
    v6 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF70BC;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v6 + 48, &v10);
  sub_29AAEE328(&v10);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v7)
  {
    v7 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF7600;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v7 + 56, &v10);
  sub_29AAEE328(&v10);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  if (!v8)
  {
    v8 = sub_29AAF8234(&pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens);
  }

  v10 = &unk_2A2071380;
  v11 = sub_29AAF7BCC;
  v12 = &v10;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v8, &v10);
  return sub_29AAEE328(&v10);
}

void sub_29AAF3188(pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI *a1@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_HasAPI(a1, SchemaInfo) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(a1, &v24);
    if ((atomic_load_explicit(&qword_2A1748228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748228))
    {
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      if (!v18)
      {
        v18 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      }

      if ((*(v18 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v18 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      if (*(EmptyString + 23) < 0)
      {
        sub_29A008D14(&xmmword_2A1748210, *EmptyString, EmptyString[1]);
      }

      else
      {
        v20 = *EmptyString;
        unk_2A1748220 = EmptyString[2];
        xmmword_2A1748210 = v20;
      }

      __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1748210, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748228);
    }

    v6 = v24;
    for (i = v25; v6 != i; v6 += 8)
    {
      v8 = sub_29A5A6058(v6);
      if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v9 = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      if (byte_2A1748227 >= 0)
      {
        v10 = &xmmword_2A1748210;
      }

      else
      {
        v10 = xmmword_2A1748210;
      }

      v11 = *(v9 + 23);
      if (v11 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = v9[1];
      }

      v13 = strlen(v10);
      if (v12 >= v13)
      {
        v14 = v13;
        v15 = v11 >= 0 ? v9 : *v9;
        if (!strncmp(v15, v10, v14))
        {
          v22 = &v24;
          sub_29A5BBBBC(&v22);
          if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens))
          {
            sub_29AAF9878(&pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens);
          }

          v23 = 1;
          pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a1, v16, &v21);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
        }
      }
    }

    v22 = &v24;
    sub_29A5BBBBC(&v22);
  }
}

void sub_29AAF3530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_guard_abort(&qword_2A1748228);
  a22 = &a26;
  sub_29A5BBBBC(&a22);
  sub_29AAE45F0(&a22);
  _Unwind_Resume(a1);
}

void sub_29AAF395C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __p = &a19;
  sub_29AAE4374(&__p);
  sub_29AAE45F0(&__p);
  __p = &a22;
  sub_29A58C74C(&__p);
  _Unwind_Resume(a1);
}

void sub_29AAF3C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A58C6CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAF3C64@<X0>(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1@<X0>, void *a2@<X8>)
{
  v10[22] = *MEMORY[0x29EDCA608];
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v5);
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v10, a1);
    v9 = 0;
    v10[0] = &unk_2A2061448;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, "UsdPreviewSurface");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetShaderId(v10, &v9);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_29AAF4DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a27 & 7) != 0)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v59 - 224) = v58;
  sub_29AAE45F0((v59 - 224));
  if ((a28 & 7) != 0)
  {
    atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0D2850(v59 - 184);
  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a35 & 7) != 0)
  {
    atomic_fetch_add_explicit((a35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&a46);
  sub_29A57F434(&a49);
  sub_29A7D1904((v59 - 112));
  sub_29A7CCF50(&a53);
  if ((a57 & 7) != 0)
  {
    atomic_fetch_add_explicit((a57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a58 & 7) != 0)
  {
    atomic_fetch_add_explicit((a58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(v59 - 256);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((v59 - 248));
  _Unwind_Resume(a1);
}

void sub_29AAF6808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  *(v54 + 192) = &__p;
  sub_29AAE4374((v55 - 176));
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A155EF4(&a38);
  *(v54 + 192) = &a47;
  sub_29AAE45F0((v55 - 176));
  *(v54 + 192) = &a50;
  sub_29A012C90((v55 - 176));
  v57 = *(v54 + 96);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v54 + 192) = &a54;
  sub_29A124AB0((v55 - 176));
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((v55 - 240));
  _Unwind_Resume(a1);
}

void sub_29AAF7490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v30 - 128) = &a22;
  sub_29AAE4374((v30 - 128));
  *(v30 - 128) = &a27;
  sub_29A58C74C((v30 - 128));
  pxrInternal__aapl__pxrReserved__::UsdGeomSubset::~UsdGeomSubset(&a30);
  _Unwind_Resume(a1);
}

void sub_29AAF7A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AAE45F0(&a26);
  a26 = &a30;
  sub_29A7AC488(&a26);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable((v30 - 136));
  _Unwind_Resume(a1);
}

void sub_29AAF7BCC(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v6, a1);
  v8 = 0;
  v6 = off_2A2060F50;
  if (v7 && (*(v7 + 57) & 8) == 0 && (off_2A2060F70(v4) & 1) != 0)
  {
    sub_29A5B9D18(a1, v5);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v5);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(&v6);
}

void sub_29AAF80A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a17);
  __p = &a13;
  sub_29AAE4374(&__p);
  sub_29AAE3EEC(v31 - 96);
  v33 = a25;
  if (a25 && atomic_fetch_add_explicit((a25 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v33 + 8))(v33);
  }

  sub_29A1DCEA8(&a26);
  v34 = a28;
  if (a28)
  {
    if (atomic_fetch_add_explicit((a28 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v34 + 8))(v34);
    }
  }

  *(v31 - 96) = v30;
  sub_29AAE45F0((v31 - 96));
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(&a30);
  sub_29A57F434(v31 - 160);
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI((v31 - 128));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType *sub_29AAF8234(atomic_ullong *a1)
{
  result = sub_29AAF827C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType::~UsdShadeValidatorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType *sub_29AAF827C()
{
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType::UsdShadeValidatorNameTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AAF82C8()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2071430;
  return result;
}

uint64_t sub_29AAF8330(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2071490))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29AAF8384()
{
  result = operator new(0x10uLL);
  *result = &unk_2A20714B0;
  return result;
}

uint64_t sub_29AAF83EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2071510))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29AAF8560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  sub_29A7D1904(&a13);
  sub_29A7CCF50(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_29AAF85A0(pxrInternal__aapl__pxrReserved__ *a1)
{
  v11[3] = *MEMORY[0x29EDCA608];
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension(Resolver);
  pxrInternal__aapl__pxrReserved__::TfStringToLower(&__p, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v6;
  if ((atomic_load_explicit(&qword_2A1748258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748258))
  {
    sub_29A008E78(&v6, "bmp");
    sub_29A008E78(v7, "tga");
    sub_29A008E78(v8, "png");
    sub_29A008E78(v9, "jpg");
    sub_29A008E78(v10, "jpeg");
    sub_29A008E78(v11, "tif");
    sub_29AAF8AD4(qword_2A1748230, &v6.__r_.__value_.__l.__data_, 6);
    for (i = 0; i != -18; i -= 3)
    {
      if (SHIBYTE(v11[i + 2]) < 0)
      {
        operator delete(v11[i]);
      }
    }

    __cxa_atexit(sub_29A4195D8, qword_2A1748230, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748258);
  }

  v2 = sub_29A8877BC(qword_2A1748230, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2 != 0;
}

void sub_29AAF8774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  v17 = (v15 + 143);
  v18 = -144;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 24;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 24;
    if (!v18)
    {
      __cxa_guard_abort(&qword_2A1748258);
      if (a14 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AAF892C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  sub_29A7D1904(&a13);
  sub_29A7CCF50(&a9);
  _Unwind_Resume(a1);
}

void sub_29AAF8A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  sub_29A7D1904(&a13);
  sub_29A7CCF50(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAF8AD4(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_29A2D1AC8(a1, a2, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

BOOL sub_29AAF8B50(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, int a2)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v5);
  if (SchemaInfo)
  {
    v8 = *(SchemaInfo + 6);

    return pxrInternal__aapl__pxrReserved__::UsdPrim::IsInFamily(a1, (SchemaInfo + 2), v8, a2);
  }

  else
  {
    v13[0] = "usd/prim.h";
    v13[1] = "IsInFamily";
    v13[2] = 633;
    v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::IsInFamily(UsdSchemaRegistry::VersionPolicy) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdShadeShader]";
    v14 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v10);
    if (*(TypeName + 23) >= 0)
    {
      v12 = TypeName;
    }

    else
    {
      v12 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v12);
    return 0;
  }
}

uint64_t sub_29AAF8C1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A10E224(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[40 * v3];
  *(&v18 + 1) = &v9[40 * v8];
  sub_29AAF8D58(a1, v17, a2, a3);
  *&v18 = v17 + 40;
  v10 = a1[1];
  v11 = &v17[*a1 - v10];
  sub_29AAF8DB8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29AAF8ECC(&v16);
  return v15;
}

void sub_29AAF8D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AAF8ECC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAF8D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdValidationErrorSite::UsdValidationErrorSite(a2, a3, a4, v5);
  return sub_29B293818(v5);
}

void sub_29AAF8DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28FFF4(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAF8DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AAF8E6C(a1, a4, v7);
      v7 += 40;
      a4 = v12 + 40;
      v12 += 40;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AAE4340(a1, v5);
      v5 += 40;
    }
  }

  return sub_29AAE42B4(v9);
}

_DWORD *sub_29AAF8E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  sub_29A1DDD84((a2 + 32), (a3 + 32));

  return sub_29A1DDDC0((a2 + 36), (a3 + 36));
}

void **sub_29AAF8ECC(void **a1)
{
  sub_29AAF8F00(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AAF8F00(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 40;
      result = sub_29AAE4340(v4, v1 - 40);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AAF8F48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v12 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v12 = v6;
  }

  v23 = a1;
  if (v12)
  {
    v13 = sub_29A09C03C(a1, v12);
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v21 = &v13[72 * v5];
  *(&v22 + 1) = &v13[72 * v12];
  pxrInternal__aapl__pxrReserved__::UsdValidationError::UsdValidationError(v21, a2, a3, a4, a5);
  *&v22 = v21 + 72;
  v14 = a1[1];
  v15 = &v21[*a1 - v14];
  sub_29AAE3F24(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29AAE4104(&v20);
  return v19;
}

void sub_29AAF909C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AAE4104(va);
  _Unwind_Resume(a1);
}

void *sub_29AAF90B8()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2071530;
  return result;
}

uint64_t sub_29AAF9120(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2071590))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29AAF9174(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A20715B0;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_29AAF91C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20715B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_29AAF964C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a15);
  sub_29A1DCEA8(&a17);
  __p = &a29;
  sub_29AAE4374(&__p);
  sub_29AAE3EEC(v33 - 128);
  v35 = a25;
  if (a25 && atomic_fetch_add_explicit((a25 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v35 + 8))(v35);
  }

  sub_29A1DCEA8(&a26);
  v36 = a28;
  if (a28)
  {
    if (atomic_fetch_add_explicit((a28 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v36 + 8))(v36);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAF97AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2071620))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AAF97F8(uint64_t a1)
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

pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType *sub_29AAF9878(atomic_ullong *a1)
{
  result = sub_29AAF98C0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType::~UsdShadeValidationErrorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType *sub_29AAF98C0()
{
  v0 = operator new(0xC0uLL);
  pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType::UsdShadeValidationErrorNameTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType::~UsdShadeValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType::UsdShadeValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdShadeValidatorNameTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "usdShadeValidators:EncapsulationRulesValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "usdShadeValidators:MaterialBindingApiAppliedValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "usdShadeValidators:MaterialBindingRelationships", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "usdShadeValidators:MaterialBindingCollectionValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "usdShadeValidators:NormalMapTextureValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "usdShadeValidators:ShaderSdrCompliance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "usdShadeValidators:SubsetMaterialBindFamilyName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "usdShadeValidators:SubsetsMaterialBindFamily", 0);
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

void sub_29AAF9C60(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdShadeValidatorKeywordTokens_StaticTokenType::~UsdShadeValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdShadeValidatorKeywordTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdShadeValidatorKeywordTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdShadeValidatorKeywordTokens_StaticTokenType::UsdShadeValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdShadeValidatorKeywordTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "UsdShadeValidators", 0);
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

void pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType::~UsdShadeValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType *this)
{
  v22 = (this + 168);
  sub_29A124AB0(&v22);
  v2 = *(this + 20);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 19);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 18);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 17);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 16);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 15);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 14);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 13);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 12);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 10);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 9);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 8);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 7);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 6);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 5);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 4);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 3);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 2);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 1);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType::UsdShadeValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdShadeValidationErrorNameTokens_StaticTokenType *this)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "ConnectableInNonContainer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "InvalidConnectableHierarchy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "MissingMaterialBindingAPI", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "MaterialBindingPropNotARel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "InvalidMaterialCollection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "InvalidResourcePath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "InvalidImplementationSrc", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "MissingSourceType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "MissingShaderIdInRegistry", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "MissingSourceTypeInRegistry", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "IncompatShaderPropertyWarning", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "MismatchedPropertyType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "MissingFamilyNameOnGeomSubset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "NonShaderConnection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "InvalidFile", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "InvalidShaderPrim", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "InvalidSourceColorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "NonCompliantBiasAndScale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "NonCompliantScaleValues", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "NonCompliantBiasValues", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "InvalidFamilyType", 0);
  v3 = (this + 168);
  v4 = *this;
  v28 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v29 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v30 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v31 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v32 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v33 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v34 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v35 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v36 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v37 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v38 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v39 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v40 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v41 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v42 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v43 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v44 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v45 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v46 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v47 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v48 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  sub_29A12EF7C(v3, &v28, &v49, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
    v26 = *(&v28 + i);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AAFA720(_Unwind_Exception *a1)
{
  v3 = 160;
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
      v5 = v1[20];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[19];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[18];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[17];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[16];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[15];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[14];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[13];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[12];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[11];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[9];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[8];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[7];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[6];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[5];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[4];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[3];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[2];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAFA998()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens);
  if (!v1)
  {
    v1 = sub_29AAFB4F8(&pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens);
  }

  v4 = &unk_2A2071380;
  v5 = sub_29AAFAB00;
  v6 = &v4;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v1, &v4);
  sub_29AAEE328(&v4);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens);
  if (!v2)
  {
    v2 = sub_29AAFB4F8(&pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens);
  }

  v4 = &unk_2A2071380;
  v5 = sub_29AAFAF64;
  v6 = &v4;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0, v2 + 8, &v4);
  return sub_29AAEE328(&v4);
}

void sub_29AAFAB00(pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a1@<X0>, void *a2@<X8>)
{
  v14[5] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_HasAPI(a1, SchemaInfo) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_2A1748288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748288))
    {
      sub_29AAFB584();
    }

    v14[3] = 0;
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertyNames(a1, v14, &v12);
    sub_29A58C6CC(v14);
    v6 = v12;
    for (i = v13; v6 != i; ++v6)
    {
      if (sub_29A16039C(qword_2A1748260, v6))
      {
        if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens))
        {
          sub_29AAFB794(&pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens);
        }

        v11 = 1;
        pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a1, v8, &v10);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
      }
    }

    v14[0] = &v12;
    sub_29A124AB0(v14);
  }
}

void sub_29AAFADF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_guard_abort(&qword_2A1748288);
  *(v28 - 96) = v27;
  sub_29AAE45F0((v28 - 96));
  _Unwind_Resume(a1);
}

void sub_29AAFAF64(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
  if (!v2)
  {
    v2 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::HasAPIInFamily(this, (v2 + 208));
}

void sub_29AAFB39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31)
{
  sub_29A57F434(&a26);
  *(v31 - 128) = &a30;
  sub_29AAE45F0((v31 - 128));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType *sub_29AAFB4F8(atomic_ullong *a1)
{
  result = sub_29AAFB540();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType::~UsdSkelValidatorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType *sub_29AAFB540()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType::UsdSkelValidatorNameTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AAFB584()
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
  }

  v7 = 0;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
  if (!v1)
  {
    v1 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
  }

  v2 = *(v1 + 26);
  v10 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v3;
    }
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_29A12EF7C(&v4, &v10, &v11, 1uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::BuildComposedPrimDefinition(v0, &v7, &v4, &v8);
  v9 = &v4;
  sub_29A124AB0(&v9);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = 0;
  v6 = 0;
  v4 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AAFB704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType *sub_29AAFB794(atomic_ullong *a1)
{
  result = sub_29AAFB7DC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType::~UsdSkelValidationErrorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType *sub_29AAFB7DC()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType::UsdSkelValidationErrorNameTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType::~UsdSkelValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdSkelValidatorNameTokens_StaticTokenType::UsdSkelValidatorNameTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "usdSkelValidators:SkelBindingApiAppliedValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "usdSkelValidators:SkelBindingApiValidator", 0);
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

void sub_29AAFB99C(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdSkelValidatorKeywordTokens_StaticTokenType::~UsdSkelValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdSkelValidatorKeywordTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdSkelValidatorKeywordTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdSkelValidatorKeywordTokens_StaticTokenType::UsdSkelValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdSkelValidatorKeywordTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "UsdSkelValidators", 0);
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

void pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType::~UsdSkelValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdSkelValidationErrorNameTokens_StaticTokenType::UsdSkelValidationErrorNameTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "MissingSkelBindingAPI", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "InvalidSkelBindingAPIApply", 0);
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

void sub_29AAFBD1C(_Unwind_Exception *a1)
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

uint64_t sub_29AAFBD80()
{
  v10 = *MEMORY[0x29EDCA608];
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdValidationRegistry>::_CreateInstance();
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens))
  {
    sub_29AAFD964(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens);
  }

  v7 = &unk_2A2070F88;
  v8 = sub_29AAFC020;
  v9 = &v7;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  sub_29AAE4750(&v7);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens))
  {
    sub_29AAFD964(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens);
  }

  v7 = &unk_2A2070F88;
  v8 = sub_29AAFCAC0;
  v9 = &v7;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  sub_29AAE4750(&v7);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens))
  {
    sub_29AAFD964(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens);
  }

  v7 = &unk_2A2070F88;
  v8 = sub_29AAFD0F8;
  v9 = &v7;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  sub_29AAE4750(&v7);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens))
  {
    sub_29AAFD964(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens);
  }

  v7 = &unk_2A2070F88;
  v8 = sub_29AAFD510;
  v9 = &v7;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  sub_29AAE4750(&v7);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens))
  {
    sub_29AAFD964(&pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens);
  }

  v7 = &unk_2A2070F88;
  v8 = sub_29AAFD5B4;
  v9 = &v7;
  pxrInternal__aapl__pxrReserved__::UsdValidationRegistry::RegisterPluginValidator(v0);
  return sub_29AAE4750(&v7);
}

void sub_29AAFC020(void *a1@<X8>)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
}

void sub_29AAFC82C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_29A0D2850(&a34);
  *(v43 - 144) = &a40;
  sub_29A012C90((v43 - 144));
  *(v43 - 144) = &a43;
  sub_29A012C90((v43 - 144));
  *(v43 - 144) = v43 - 176;
  sub_29A474D88((v43 - 144));
  sub_29A321930();
}

void sub_29AAFCAC0()
{
  v16[1] = *MEMORY[0x29EDCA608];
  v3 = 0uLL;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v5, "usda");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, "usdc");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, "usd");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, "usdz");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9, "png");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10, "jpg");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11, "jpeg");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v12, "exr");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v13, "avif");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v14, "m4a");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v15, "mp3");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v16, "wav");
  sub_29AAFDC74(&v2, &v5, 12);
  v0 = 88;
  while (1)
  {
    v1 = *(&v5 + v0);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v0 -= 8;
    if (v0 == -8)
    {
      pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
    }
  }
}

void sub_29AAFCF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, void *a48, uint64_t a49, char a50)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  *(v50 - 152) = &a38;
  sub_29A012C90((v50 - 152));
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&a43);
  v52 = a46;
  if (a46)
  {
    if (atomic_fetch_add_explicit((a46 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v52 + 8))(v52);
    }
  }

  sub_29A1602D4(&a47, a48);
  *(v50 - 152) = &a50;
  sub_29AAE45F0((v50 - 152));
  _Unwind_Resume(a1);
}

void sub_29AAFD3D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v34 - 136) = v33;
  sub_29AAE45F0((v34 - 136));
  sub_29A0D2850(&a24);
  *(v34 - 136) = &a30;
  sub_29A012C90((v34 - 136));
  *(v34 - 136) = &a33;
  sub_29A474D88((v34 - 136));
  sub_29A321930();
}

void sub_29AAFD4F4(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AAFD4ECLL);
}

void sub_29AAFD59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAFD5B4()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
}

void sub_29AAFD838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_29A0D2850(v26 - 120);
  sub_29A0D2850(&a18);
  v28 = a25;
  if (a25)
  {
    if (atomic_fetch_add_explicit((a25 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v28 + 8))(v28);
    }
  }

  *(v26 - 120) = &a26;
  sub_29A474D88((v26 - 120));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType *sub_29AAFD964(atomic_ullong *a1)
{
  result = sub_29AAFD9AC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType::~UsdUtilsValidatorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType *sub_29AAFD9AC()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType::UsdUtilsValidatorNameTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AAFD9F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v12 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v12 = v6;
  }

  v23 = a1;
  if (v12)
  {
    v13 = sub_29A09C03C(a1, v12);
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v21 = &v13[72 * v5];
  *(&v22 + 1) = &v13[72 * v12];
  sub_29AAFDB5C(a1, v21, a2, a3, a4, a5);
  *&v22 = v21 + 72;
  v14 = a1[1];
  v15 = &v21[*a1 - v14];
  sub_29AAE3F24(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29AAE4104(&v20);
  return v19;
}

void sub_29AAFDB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AAE4104(va);
  _Unwind_Resume(a1);
}

void sub_29AAFDB5C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s)
{
  sub_29A008E78(__p, __s);
  pxrInternal__aapl__pxrReserved__::UsdValidationError::UsdValidationError(a2, a3, a4, a5, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AAFDBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType *sub_29AAFDBE8(atomic_ullong *a1)
{
  result = sub_29AAFDC30();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType::~UsdUtilsValidationErrorNameTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType *sub_29AAFDC30()
{
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType::UsdUtilsValidationErrorNameTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AAFDC74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_29A2EF300(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_29AAFDCF4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator *a2, const pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v11, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v10, a3);
  v6 = sub_29AAFDDE8(&v11, &v10);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v10);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v11);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v9, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v8, a3);
  sub_29AAFDE94(a1, &v9, &v8, v6);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v8);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v9);
  return a1;
}

void sub_29AAFDDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAFDDE8(pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator *a1, const pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v6, a1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v5, a2);
  for (i = 0; pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(&v6, &v5); ++i)
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(&v6);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v5);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v6);
  return i;
}

void sub_29AAFDE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a10);
  _Unwind_Resume(a1);
}

void sub_29AAFDE94(void *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8[1] = a1;
  v9 = 0;
  if (a4)
  {
    sub_29A012BFC(a1, a4);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(v8, a2);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v7, a3);
    sub_29AAFDF54(a1, v8, &v7);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v7);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(v8);
  }
}

void sub_29AAFDF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void **a11)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a10);
  sub_29A012C90(&a11);
  _Unwind_Resume(a1);
}

void sub_29AAFDF54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v8, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v7, a3);
  v6 = sub_29AAFDFFC(a1, &v8, &v7, v5);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v7);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v8);
  *(a1 + 8) = v6;
}

void sub_29AAFDFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a10);
  *(v10 + 8) = v11;
  _Unwind_Resume(a1);
}

uint64_t sub_29AAFDFFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v12, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v11, a3);
  sub_29AAFE11C(&v12, &v11, &v13);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v11);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v12);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v10, &v13);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v9, &v14);
  v7 = sub_29AAFE214(a1, &v10, &v9, a4);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v10);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v14);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v13);
  return v7;
}

void sub_29AAFE0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, void *a19, void *a20)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a10);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a20);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a19);
  _Unwind_Resume(a1);
}

void sub_29AAFE11C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v7, a1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v9, &v7);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v8, &v9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v5, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v9, &v5);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(&v6, &v9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v9);
  sub_29AAFE2D8(a3, &v8, &v6);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v6);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v5);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v8);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v7);
}

void sub_29AAFE1D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, void *);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(va1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(va);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(va3);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAFE214(uint64_t a1, void *a2, void **a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  while (pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(a2, a3))
  {
    v6 = v15;
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator*(a2, &v10);
    v7 = v10;
    *(v6 + 16) = v11;
    *v6 = v7;
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(a2);
    v15 += 24;
  }

  v13 = 1;
  v8 = v15;
  sub_29A095CB0(v12);
  return v8;
}

void sub_29AAFE2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A095CB0(va);
  _Unwind_Resume(a1);
}

void *sub_29AAFE2D8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(v5 + 1, a3);
  return a1;
}

void *sub_29AAFE324(void *a1, void *a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    while (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v3 + 4), a3))
    {
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
      if (v7 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void sub_29AAFE7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a35);
  *(v42 - 136) = v41;
  sub_29AAE45F0((v42 - 136));
  if (*(v42 - 153) < 0)
  {
    operator delete(*(v42 - 176));
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((v42 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_29AAFE91C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 3)) >= a5)
      {
        v20 = 9 * a5;
        sub_29AAE8B50(a1, a2, a1[1], a2 + 72 * a5);
        v19 = a3 + 8 * v20;
      }

      else
      {
        a1[1] = sub_29AAFEB7C(a1, v18 + a3, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29AAE8B50(a1, v5, v10, v5 + 72 * a5);
        v19 = v18 + a3;
      }

      sub_29AAFEC3C(&v22, a3, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 3);
    if (v12 > 0x38E38E38E38E38ELL)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0x8E38E38E38E38E39 * (v13 >> 3);
    v26 = a1;
    if (v15)
    {
      v17 = sub_29A09C03C(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v22 = v17;
    v23 = &v17[72 * v16];
    v24 = v23;
    v25 = &v17[72 * v15];
    sub_29AAFEAFC(&v22, a3, a5);
    v5 = sub_29AAE8C04(a1, &v22, v5);
    sub_29AAE4104(&v22);
  }

  return v5;
}

uint64_t sub_29AAFEAFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = v3 + 72 * a3;
    do
    {
      *v3 = *a2;
      *(v3 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(v3 + 16) = *(a2 + 16);
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 24) = 0;
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 40) = *(a2 + 40);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v5 = *(a2 + 48);
      *(v3 + 64) = *(a2 + 64);
      *(v3 + 48) = v5;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      v3 += 72;
      a2 += 72;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_29AAFEB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  while (a2 != a3)
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v4 + 16) = *(a2 + 16);
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = 0;
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v5 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 48) = v5;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    a2 += 72;
    v4 += 72;
    v10 = v4;
  }

  v8 = 1;
  sub_29AAE4078(v7);
  return v4;
}

uint64_t sub_29AAFEC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    *(a4 + v7) = *(a2 + v7);
    if (a2 != a4)
    {
      v10 = *(v8 + 8);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v8 + 8) = *(v9 + 8);
      *(v9 + 8) = 0;
    }

    *(v8 + 16) = *(v9 + 16);
    sub_29AAE9098((v8 + 24));
    *(v8 + 24) = *(v9 + 24);
    *(v8 + 40) = *(v9 + 40);
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    if (*(v8 + 71) < 0)
    {
      operator delete(*(v8 + 48));
    }

    v11 = *(v9 + 48);
    *(v8 + 64) = *(v9 + 64);
    *(v8 + 48) = v11;
    *(v9 + 71) = 0;
    *(v9 + 48) = 0;
    v7 += 72;
  }

  while (v9 + 72 != v6);
  return v6;
}

_DWORD *sub_29AAFED38(_DWORD *a1)
{

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType::~UsdUtilsValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType::UsdUtilsValidatorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorNameTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "usdUtilsValidators:PackageEncapsulationValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "usdUtilsValidators:FileExtensionValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "usdUtilsValidators:MissingReferenceValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "usdUtilsValidators:RootPackageValidator", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "usdUtilsValidators:UsdzPackageValidator", 0);
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

void sub_29AAFEFBC(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorKeywordTokens_StaticTokenType::~UsdUtilsValidatorKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorKeywordTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorKeywordTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdUtilsValidatorKeywordTokens_StaticTokenType::UsdUtilsValidatorKeywordTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "UsdUtilsValidators", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "UsdzValidators", 0);
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

void sub_29AAFF1F0(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType::~UsdUtilsValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType *this)
{
  v8 = (this + 56);
  sub_29A124AB0(&v8);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType::UsdUtilsValidationErrorNameTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdUtilsValidationErrorNameTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "LayerNotInPackage", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "AssetNotInPackage", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "InvalidLayerInPackage", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "UnsupportedFileExtensionInPackage", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "UnresolvableDependency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "CompressionDetected", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "ByteMisalignment", 0);
  v3 = (this + 56);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v5;
    }
  }

  v6 = *(this + 1);
  v22 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v7;
    }
  }

  v8 = *(this + 2);
  v23 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v9;
    }
  }

  v10 = *(this + 3);
  v24 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v11;
    }
  }

  v12 = *(this + 4);
  v25 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v13;
    }
  }

  v14 = *(this + 5);
  v26 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v15;
    }
  }

  v16 = *(this + 6);
  v27 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v17;
    }
  }

  *v3 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_29A12EF7C(v3, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AAFF560(_Unwind_Exception *a1)
{
  v3 = 48;
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
      v5 = v1[6];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::GarchNSGLContextState *pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GarchNSGLContextState(pxrInternal__aapl__pxrReserved__::GarchNSGLContextState *this)
{
  v2 = operator new(0x20uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A2071640;
  *(this + 1) = v2;
  v2[3] = 0;
  *this = v2 + 3;
  return this;
}

{
  v2 = operator new(0x20uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A2071640;
  *(this + 1) = v2;
  v2[3] = 0;
  *this = v2 + 3;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GarchNSGLContextState(void *a1)
{
  v2 = operator new(0x20uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A2071640;
  a1[1] = v2;
  v2[3] = 0;
  *a1 = v2 + 3;
  return a1;
}

{
  v2 = operator new(0x20uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A2071640;
  a1[1] = v2;
  v2[3] = 0;
  *a1 = v2 + 3;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::GarchGetNullGLPlatformContextState@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x20uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A2071640;
  a1[1] = v3;
  v3[3] = 0;
  result = v3 + 3;
  *a1 = result;
  return result;
}

void sub_29AAFF86C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2071640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

const char *pxrInternal__aapl__pxrReserved__::internal::GLApi::gluErrorString(pxrInternal__aapl__pxrReserved__::internal::GLApi *this)
{
  v1 = "out of memory";
  v2 = "invalid framebuffer operation";
  if (this != 1286)
  {
    v2 = 0;
  }

  if (this != 1285)
  {
    v1 = v2;
  }

  v3 = "stack underflow";
  if (this != 1284)
  {
    v3 = 0;
  }

  if (this == 1283)
  {
    v3 = "stack overflow";
  }

  if (this <= 1284)
  {
    v1 = v3;
  }

  v4 = "invalid value";
  v5 = "invalid operation";
  if (this != 1282)
  {
    v5 = 0;
  }

  if (this != 1281)
  {
    v4 = v5;
  }

  v6 = "invalid enum";
  if (this != 1280)
  {
    v6 = 0;
  }

  if (!this)
  {
    v6 = "no error";
  }

  if (this <= 1280)
  {
    v4 = v6;
  }

  if (this <= 1282)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(pxrInternal__aapl__pxrReserved__::internal::GLApi *this)
{
  result = 1;
  if ((byte_2A1748290 & 1) == 0)
  {
    byte_2A1748290 = 1;
    sub_29A008E78(__p, "/System/Library/Frameworks/OpenGL.framework/Versions/Current/OpenGL");
    v2 = pxrInternal__aapl__pxrReserved__::ArchLibraryOpen(__p, 5);
    qword_2A1748298 = v2;
    if (v6 < 0)
    {
      operator delete(__p[0]);
      v2 = qword_2A1748298;
    }

    if (v2 || (v2 = sub_29B2BEA44(__p), (v2 & 1) != 0))
    {
      sub_29AAFFA04(v2, v3, v4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_29AAFF9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAFFA04(uint64_t a1, uint64_t a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv = sub_29AB0F644("glGetIntegerv", a2, a3);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString = sub_29AB0F644("glGetString", v3, v4);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetStringi = sub_29AB0F644("glGetStringi", v5, v6);
  v5230 = 0;
  v5229 = 0;
  String = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7938);
  if (String)
  {
    v8 = *String;
    if (v8 == 50)
    {
      if (String[1] == 46)
      {
        v9 = 2;
        goto LABEL_8;
      }
    }

    else if (v8 == 49 && String[1] == 46)
    {
      v9 = 1;
LABEL_8:
      v5230 = v9;
      v5229 = String[2] - 48;
      v5226 = 0;
      v5227 = 0;
      v5228 = 0;
      __p = 0;
      v5224 = 0;
      v5225 = 0;
LABEL_15:
      v12 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7939);
      v13 = strlen(v12);
      sub_29AA369FC(&__p, v12, &v12[v13 + 1], v13 + 1);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(__p + v14);
          v17 = v16 != 32;
          if (v16 == 32)
          {
            *(__p + v14) = 0;
          }

          else if (!v15)
          {
            v5222 = __p + v14;
            sub_29A0A71C8(&v5226, &v5222);
          }

          ++v14;
          v15 = v17;
        }

        while (v13 != v14);
      }

      goto LABEL_22;
    }
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(33307, &v5230);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(33308, &v5229);
  v5226 = 0;
  v5227 = 0;
  v5228 = 0;
  __p = 0;
  v5224 = 0;
  v5225 = 0;
  if (v5230 < 3)
  {
    if (v5230 < 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  LODWORD(v5222) = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(33309, &v5222);
  sub_29A0BD724(&v5226, v5222);
  if (v5227 != v5226)
  {
    v10 = 0;
    do
    {
      Stringi = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetStringi(7939, v10);
      *(v5226 + v10++) = Stringi;
    }

    while (v10 < (v5227 - v5226) >> 3);
  }

LABEL_22:
  v18 = v5230 == 4;
  v19 = v5229 > 5 && v5230 == 4;
  if (v5230 > 4)
  {
    v19 = 1;
  }

  v20 = v5230 == 1;
  v21 = v5230 == 3;
  v22 = v5229 > 2 && v5230 == 3;
  v23 = v5229 > 4 && v5230 == 1;
  v24 = v5229 > 4 && v5230 == 4;
  if (v5230 > 4)
  {
    v24 = 1;
  }

  v25 = v5229 > 3 && v5230 == 1;
  v26 = v5229 > 3 && v5230 == 4;
  if (v5230 > 4)
  {
    v26 = 1;
  }

  v27 = v5229 > 2 && v5230 == 1;
  v28 = v5229 > 2 && v5230 == 4;
  if (v5230 > 4)
  {
    v28 = 1;
  }

  v29 = v5229 > 1 && v5230 == 3;
  v30 = v5229 > 1 && v5230 == 4;
  if (v5230 > 4)
  {
    v30 = 1;
  }

  if (v5230 > 3)
  {
    v29 = 1;
  }

  v31 = v5229 > 1 && v5230 == 1;
  v32 = v5230 == 2;
  v33 = v5229 >= 0 && v5230 == 1;
  if (v5229 > 0)
  {
    v34 = v5230 == 2;
  }

  else
  {
    v20 = 0;
    v34 = 0;
  }

  if (v5229 > 0)
  {
    v35 = v5230 == 3;
  }

  else
  {
    v32 = 0;
    v35 = 0;
  }

  if (v5229 > 0)
  {
    v36 = v5230 == 4;
  }

  else
  {
    v21 = 0;
    v36 = 0;
  }

  if (v5229 <= 0)
  {
    v18 = 0;
  }

  if (v5230 > 4)
  {
    v36 = 1;
    v18 = 1;
  }

  if (v5230 > 3)
  {
    v35 = 1;
    v21 = 1;
    v22 = 1;
  }

  if (v5230 > 2)
  {
    v34 = 1;
    v32 = 1;
  }

  v37 = v5230 > 1 || v33;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_1_0 = v37;
  v38 = v5230 > 1 || v20;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_1_1 = v38;
  v39 = v5230 > 1 || v31;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_1_2 = v39;
  v40 = v5230 > 1 || v27;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_1_3 = v40;
  v41 = v5230 > 1 || v25;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_1_4 = v41;
  if (v5230 > 1)
  {
    v23 = 1;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_1_5 = v23;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_2_0 = v34;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_2_1 = v32;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_3_0 = v35;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_3_1 = v21;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_3_2 = v29;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_3_3 = v22;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_4_0 = v36;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_4_1 = v18;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_4_2 = v30;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_4_3 = v28;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_4_4 = v26;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_4_5 = v24;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_VERSION_4_6 = v19;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_blend_minmax_factor = sub_29AB0F67C("GL_AMD_blend_minmax_factor", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_conservative_depth = sub_29AB0F67C("GL_AMD_conservative_depth", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_debug_output = sub_29AB0F67C("GL_AMD_debug_output", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_depth_clamp_separate = sub_29AB0F67C("GL_AMD_depth_clamp_separate", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_draw_buffers_blend = sub_29AB0F67C("GL_AMD_draw_buffers_blend", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_framebuffer_multisample_advanced = sub_29AB0F67C("GL_AMD_framebuffer_multisample_advanced", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_framebuffer_sample_positions = sub_29AB0F67C("GL_AMD_framebuffer_sample_positions", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_gcn_shader = sub_29AB0F67C("GL_AMD_gcn_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_gpu_shader_half_float = sub_29AB0F67C("GL_AMD_gpu_shader_half_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_gpu_shader_int16 = sub_29AB0F67C("GL_AMD_gpu_shader_int16", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_gpu_shader_int64 = sub_29AB0F67C("GL_AMD_gpu_shader_int64", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_interleaved_elements = sub_29AB0F67C("GL_AMD_interleaved_elements", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_multi_draw_indirect = sub_29AB0F67C("GL_AMD_multi_draw_indirect", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_name_gen_delete = sub_29AB0F67C("GL_AMD_name_gen_delete", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_occlusion_query_event = sub_29AB0F67C("GL_AMD_occlusion_query_event", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_performance_monitor = sub_29AB0F67C("GL_AMD_performance_monitor", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_pinned_memory = sub_29AB0F67C("GL_AMD_pinned_memory", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_query_buffer_object = sub_29AB0F67C("GL_AMD_query_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_sample_positions = sub_29AB0F67C("GL_AMD_sample_positions", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_seamless_cubemap_per_texture = sub_29AB0F67C("GL_AMD_seamless_cubemap_per_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_shader_atomic_counter_ops = sub_29AB0F67C("GL_AMD_shader_atomic_counter_ops", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_shader_ballot = sub_29AB0F67C("GL_AMD_shader_ballot", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_shader_gpu_shader_half_float_fetch = sub_29AB0F67C("GL_AMD_shader_gpu_shader_half_float_fetch", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_shader_image_load_store_lod = sub_29AB0F67C("GL_AMD_shader_image_load_store_lod", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_shader_stencil_export = sub_29AB0F67C("GL_AMD_shader_stencil_export", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_shader_trinary_minmax = sub_29AB0F67C("GL_AMD_shader_trinary_minmax", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_shader_explicit_vertex_parameter = sub_29AB0F67C("GL_AMD_shader_explicit_vertex_parameter", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_sparse_texture = sub_29AB0F67C("GL_AMD_sparse_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_stencil_operation_extended = sub_29AB0F67C("GL_AMD_stencil_operation_extended", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_texture_gather_bias_lod = sub_29AB0F67C("GL_AMD_texture_gather_bias_lod", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_texture_texture4 = sub_29AB0F67C("GL_AMD_texture_texture4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_transform_feedback3_lines_triangles = sub_29AB0F67C("GL_AMD_transform_feedback3_lines_triangles", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_transform_feedback4 = sub_29AB0F67C("GL_AMD_transform_feedback4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_vertex_shader_layer = sub_29AB0F67C("GL_AMD_vertex_shader_layer", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_vertex_shader_tessellator = sub_29AB0F67C("GL_AMD_vertex_shader_tessellator", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_AMD_vertex_shader_viewport_index = sub_29AB0F67C("GL_AMD_vertex_shader_viewport_index", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_aux_depth_stencil = sub_29AB0F67C("GL_APPLE_aux_depth_stencil", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_client_storage = sub_29AB0F67C("GL_APPLE_client_storage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_element_array = sub_29AB0F67C("GL_APPLE_element_array", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_fence = sub_29AB0F67C("GL_APPLE_fence", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_float_pixels = sub_29AB0F67C("GL_APPLE_float_pixels", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_flush_buffer_range = sub_29AB0F67C("GL_APPLE_flush_buffer_range", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_object_purgeable = sub_29AB0F67C("GL_APPLE_object_purgeable", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_rgb_422 = sub_29AB0F67C("GL_APPLE_rgb_422", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_row_bytes = sub_29AB0F67C("GL_APPLE_row_bytes", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_specular_vector = sub_29AB0F67C("GL_APPLE_specular_vector", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_texture_range = sub_29AB0F67C("GL_APPLE_texture_range", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_transform_hint = sub_29AB0F67C("GL_APPLE_transform_hint", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_vertex_array_object = sub_29AB0F67C("GL_APPLE_vertex_array_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_vertex_array_range = sub_29AB0F67C("GL_APPLE_vertex_array_range", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_vertex_program_evaluators = sub_29AB0F67C("GL_APPLE_vertex_program_evaluators", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_APPLE_ycbcr_422 = sub_29AB0F67C("GL_APPLE_ycbcr_422", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_ES2_compatibility = sub_29AB0F67C("GL_ARB_ES2_compatibility", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_ES3_1_compatibility = sub_29AB0F67C("GL_ARB_ES3_1_compatibility", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_ES3_2_compatibility = sub_29AB0F67C("GL_ARB_ES3_2_compatibility", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_ES3_compatibility = sub_29AB0F67C("GL_ARB_ES3_compatibility", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_arrays_of_arrays = sub_29AB0F67C("GL_ARB_arrays_of_arrays", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_base_instance = sub_29AB0F67C("GL_ARB_base_instance", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_bindless_texture = sub_29AB0F67C("GL_ARB_bindless_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_blend_func_extended = sub_29AB0F67C("GL_ARB_blend_func_extended", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_buffer_storage = sub_29AB0F67C("GL_ARB_buffer_storage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_cl_event = sub_29AB0F67C("GL_ARB_cl_event", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_clear_buffer_object = sub_29AB0F67C("GL_ARB_clear_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_clear_texture = sub_29AB0F67C("GL_ARB_clear_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_clip_control = sub_29AB0F67C("GL_ARB_clip_control", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_color_buffer_float = sub_29AB0F67C("GL_ARB_color_buffer_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_compatibility = sub_29AB0F67C("GL_ARB_compatibility", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_compressed_texture_pixel_storage = sub_29AB0F67C("GL_ARB_compressed_texture_pixel_storage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_compute_shader = sub_29AB0F67C("GL_ARB_compute_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_compute_variable_group_size = sub_29AB0F67C("GL_ARB_compute_variable_group_size", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_conditional_render_inverted = sub_29AB0F67C("GL_ARB_conditional_render_inverted", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_conservative_depth = sub_29AB0F67C("GL_ARB_conservative_depth", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_copy_buffer = sub_29AB0F67C("GL_ARB_copy_buffer", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_copy_image = sub_29AB0F67C("GL_ARB_copy_image", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_cull_distance = sub_29AB0F67C("GL_ARB_cull_distance", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_debug_output = sub_29AB0F67C("GL_ARB_debug_output", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_depth_buffer_float = sub_29AB0F67C("GL_ARB_depth_buffer_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_depth_clamp = sub_29AB0F67C("GL_ARB_depth_clamp", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_depth_texture = sub_29AB0F67C("GL_ARB_depth_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_derivative_control = sub_29AB0F67C("GL_ARB_derivative_control", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_direct_state_access = sub_29AB0F67C("GL_ARB_direct_state_access", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_draw_buffers = sub_29AB0F67C("GL_ARB_draw_buffers", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_draw_buffers_blend = sub_29AB0F67C("GL_ARB_draw_buffers_blend", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_draw_elements_base_vertex = sub_29AB0F67C("GL_ARB_draw_elements_base_vertex", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_draw_indirect = sub_29AB0F67C("GL_ARB_draw_indirect", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_draw_instanced = sub_29AB0F67C("GL_ARB_draw_instanced", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_enhanced_layouts = sub_29AB0F67C("GL_ARB_enhanced_layouts", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_explicit_attrib_location = sub_29AB0F67C("GL_ARB_explicit_attrib_location", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_explicit_uniform_location = sub_29AB0F67C("GL_ARB_explicit_uniform_location", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_fragment_coord_conventions = sub_29AB0F67C("GL_ARB_fragment_coord_conventions", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_fragment_layer_viewport = sub_29AB0F67C("GL_ARB_fragment_layer_viewport", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_fragment_program = sub_29AB0F67C("GL_ARB_fragment_program", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_fragment_program_shadow = sub_29AB0F67C("GL_ARB_fragment_program_shadow", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_fragment_shader = sub_29AB0F67C("GL_ARB_fragment_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_fragment_shader_interlock = sub_29AB0F67C("GL_ARB_fragment_shader_interlock", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_framebuffer_no_attachments = sub_29AB0F67C("GL_ARB_framebuffer_no_attachments", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_framebuffer_object = sub_29AB0F67C("GL_ARB_framebuffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_framebuffer_sRGB = sub_29AB0F67C("GL_ARB_framebuffer_sRGB", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_geometry_shader4 = sub_29AB0F67C("GL_ARB_geometry_shader4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_get_program_binary = sub_29AB0F67C("GL_ARB_get_program_binary", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_get_texture_sub_image = sub_29AB0F67C("GL_ARB_get_texture_sub_image", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_gl_spirv = sub_29AB0F67C("GL_ARB_gl_spirv", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_gpu_shader5 = sub_29AB0F67C("GL_ARB_gpu_shader5", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_gpu_shader_fp64 = sub_29AB0F67C("GL_ARB_gpu_shader_fp64", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_gpu_shader_int64 = sub_29AB0F67C("GL_ARB_gpu_shader_int64", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_half_float_pixel = sub_29AB0F67C("GL_ARB_half_float_pixel", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_half_float_vertex = sub_29AB0F67C("GL_ARB_half_float_vertex", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_imaging = sub_29AB0F67C("GL_ARB_imaging", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_indirect_parameters = sub_29AB0F67C("GL_ARB_indirect_parameters", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_instanced_arrays = sub_29AB0F67C("GL_ARB_instanced_arrays", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_internalformat_query = sub_29AB0F67C("GL_ARB_internalformat_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_internalformat_query2 = sub_29AB0F67C("GL_ARB_internalformat_query2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_invalidate_subdata = sub_29AB0F67C("GL_ARB_invalidate_subdata", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_map_buffer_alignment = sub_29AB0F67C("GL_ARB_map_buffer_alignment", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_map_buffer_range = sub_29AB0F67C("GL_ARB_map_buffer_range", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_matrix_palette = sub_29AB0F67C("GL_ARB_matrix_palette", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_multi_bind = sub_29AB0F67C("GL_ARB_multi_bind", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_multi_draw_indirect = sub_29AB0F67C("GL_ARB_multi_draw_indirect", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_multisample = sub_29AB0F67C("GL_ARB_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_multitexture = sub_29AB0F67C("GL_ARB_multitexture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_occlusion_query = sub_29AB0F67C("GL_ARB_occlusion_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_occlusion_query2 = sub_29AB0F67C("GL_ARB_occlusion_query2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_parallel_shader_compile = sub_29AB0F67C("GL_ARB_parallel_shader_compile", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_pipeline_statistics_query = sub_29AB0F67C("GL_ARB_pipeline_statistics_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_pixel_buffer_object = sub_29AB0F67C("GL_ARB_pixel_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_point_parameters = sub_29AB0F67C("GL_ARB_point_parameters", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_point_sprite = sub_29AB0F67C("GL_ARB_point_sprite", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_polygon_offset_clamp = sub_29AB0F67C("GL_ARB_polygon_offset_clamp", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_post_depth_coverage = sub_29AB0F67C("GL_ARB_post_depth_coverage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_program_interface_query = sub_29AB0F67C("GL_ARB_program_interface_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_provoking_vertex = sub_29AB0F67C("GL_ARB_provoking_vertex", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_query_buffer_object = sub_29AB0F67C("GL_ARB_query_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_robust_buffer_access_behavior = sub_29AB0F67C("GL_ARB_robust_buffer_access_behavior", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_robustness = sub_29AB0F67C("GL_ARB_robustness", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_robustness_isolation = sub_29AB0F67C("GL_ARB_robustness_isolation", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sample_locations = sub_29AB0F67C("GL_ARB_sample_locations", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sample_shading = sub_29AB0F67C("GL_ARB_sample_shading", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sampler_objects = sub_29AB0F67C("GL_ARB_sampler_objects", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_seamless_cube_map = sub_29AB0F67C("GL_ARB_seamless_cube_map", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_seamless_cubemap_per_texture = sub_29AB0F67C("GL_ARB_seamless_cubemap_per_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_separate_shader_objects = sub_29AB0F67C("GL_ARB_separate_shader_objects", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_atomic_counter_ops = sub_29AB0F67C("GL_ARB_shader_atomic_counter_ops", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_atomic_counters = sub_29AB0F67C("GL_ARB_shader_atomic_counters", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_ballot = sub_29AB0F67C("GL_ARB_shader_ballot", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_bit_encoding = sub_29AB0F67C("GL_ARB_shader_bit_encoding", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_clock = sub_29AB0F67C("GL_ARB_shader_clock", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_draw_parameters = sub_29AB0F67C("GL_ARB_shader_draw_parameters", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_group_vote = sub_29AB0F67C("GL_ARB_shader_group_vote", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_image_load_store = sub_29AB0F67C("GL_ARB_shader_image_load_store", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_image_size = sub_29AB0F67C("GL_ARB_shader_image_size", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_objects = sub_29AB0F67C("GL_ARB_shader_objects", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_precision = sub_29AB0F67C("GL_ARB_shader_precision", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_stencil_export = sub_29AB0F67C("GL_ARB_shader_stencil_export", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_storage_buffer_object = sub_29AB0F67C("GL_ARB_shader_storage_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_subroutine = sub_29AB0F67C("GL_ARB_shader_subroutine", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_texture_image_samples = sub_29AB0F67C("GL_ARB_shader_texture_image_samples", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_texture_lod = sub_29AB0F67C("GL_ARB_shader_texture_lod", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_viewport_layer_array = sub_29AB0F67C("GL_ARB_shader_viewport_layer_array", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shading_language_100 = sub_29AB0F67C("GL_ARB_shading_language_100", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shading_language_420pack = sub_29AB0F67C("GL_ARB_shading_language_420pack", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shading_language_include = sub_29AB0F67C("GL_ARB_shading_language_include", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shading_language_packing = sub_29AB0F67C("GL_ARB_shading_language_packing", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shadow = sub_29AB0F67C("GL_ARB_shadow", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shadow_ambient = sub_29AB0F67C("GL_ARB_shadow_ambient", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sparse_buffer = sub_29AB0F67C("GL_ARB_sparse_buffer", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sparse_texture = sub_29AB0F67C("GL_ARB_sparse_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sparse_texture2 = sub_29AB0F67C("GL_ARB_sparse_texture2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sparse_texture_clamp = sub_29AB0F67C("GL_ARB_sparse_texture_clamp", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_spirv_extensions = sub_29AB0F67C("GL_ARB_spirv_extensions", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_stencil_texturing = sub_29AB0F67C("GL_ARB_stencil_texturing", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_sync = sub_29AB0F67C("GL_ARB_sync", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_tessellation_shader = sub_29AB0F67C("GL_ARB_tessellation_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_barrier = sub_29AB0F67C("GL_ARB_texture_barrier", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_border_clamp = sub_29AB0F67C("GL_ARB_texture_border_clamp", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_buffer_object = sub_29AB0F67C("GL_ARB_texture_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_buffer_object_rgb32 = sub_29AB0F67C("GL_ARB_texture_buffer_object_rgb32", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_buffer_range = sub_29AB0F67C("GL_ARB_texture_buffer_range", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_compression = sub_29AB0F67C("GL_ARB_texture_compression", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_compression_bptc = sub_29AB0F67C("GL_ARB_texture_compression_bptc", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_compression_rgtc = sub_29AB0F67C("GL_ARB_texture_compression_rgtc", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_cube_map = sub_29AB0F67C("GL_ARB_texture_cube_map", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_cube_map_array = sub_29AB0F67C("GL_ARB_texture_cube_map_array", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_env_add = sub_29AB0F67C("GL_ARB_texture_env_add", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_env_combine = sub_29AB0F67C("GL_ARB_texture_env_combine", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_env_crossbar = sub_29AB0F67C("GL_ARB_texture_env_crossbar", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_env_dot3 = sub_29AB0F67C("GL_ARB_texture_env_dot3", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_filter_anisotropic = sub_29AB0F67C("GL_ARB_texture_filter_anisotropic", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_filter_minmax = sub_29AB0F67C("GL_ARB_texture_filter_minmax", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_float = sub_29AB0F67C("GL_ARB_texture_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_gather = sub_29AB0F67C("GL_ARB_texture_gather", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_mirror_clamp_to_edge = sub_29AB0F67C("GL_ARB_texture_mirror_clamp_to_edge", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_mirrored_repeat = sub_29AB0F67C("GL_ARB_texture_mirrored_repeat", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_multisample = sub_29AB0F67C("GL_ARB_texture_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_non_power_of_two = sub_29AB0F67C("GL_ARB_texture_non_power_of_two", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_query_levels = sub_29AB0F67C("GL_ARB_texture_query_levels", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_query_lod = sub_29AB0F67C("GL_ARB_texture_query_lod", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_rectangle = sub_29AB0F67C("GL_ARB_texture_rectangle", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_rg = sub_29AB0F67C("GL_ARB_texture_rg", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_rgb10_a2ui = sub_29AB0F67C("GL_ARB_texture_rgb10_a2ui", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_stencil8 = sub_29AB0F67C("GL_ARB_texture_stencil8", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_storage = sub_29AB0F67C("GL_ARB_texture_storage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_storage_multisample = sub_29AB0F67C("GL_ARB_texture_storage_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_swizzle = sub_29AB0F67C("GL_ARB_texture_swizzle", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_texture_view = sub_29AB0F67C("GL_ARB_texture_view", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_timer_query = sub_29AB0F67C("GL_ARB_timer_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_transform_feedback2 = sub_29AB0F67C("GL_ARB_transform_feedback2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_transform_feedback3 = sub_29AB0F67C("GL_ARB_transform_feedback3", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_transform_feedback_instanced = sub_29AB0F67C("GL_ARB_transform_feedback_instanced", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_transform_feedback_overflow_query = sub_29AB0F67C("GL_ARB_transform_feedback_overflow_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_transpose_matrix = sub_29AB0F67C("GL_ARB_transpose_matrix", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_uniform_buffer_object = sub_29AB0F67C("GL_ARB_uniform_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_array_bgra = sub_29AB0F67C("GL_ARB_vertex_array_bgra", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_array_object = sub_29AB0F67C("GL_ARB_vertex_array_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_attrib_64bit = sub_29AB0F67C("GL_ARB_vertex_attrib_64bit", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_attrib_binding = sub_29AB0F67C("GL_ARB_vertex_attrib_binding", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_blend = sub_29AB0F67C("GL_ARB_vertex_blend", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_buffer_object = sub_29AB0F67C("GL_ARB_vertex_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_program = sub_29AB0F67C("GL_ARB_vertex_program", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_shader = sub_29AB0F67C("GL_ARB_vertex_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_type_10f_11f_11f_rev = sub_29AB0F67C("GL_ARB_vertex_type_10f_11f_11f_rev", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_vertex_type_2_10_10_10_rev = sub_29AB0F67C("GL_ARB_vertex_type_2_10_10_10_rev", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_viewport_array = sub_29AB0F67C("GL_ARB_viewport_array", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_window_pos = sub_29AB0F67C("GL_ARB_window_pos", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_422_pixels = sub_29AB0F67C("GL_EXT_422_pixels", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_EGL_image_storage = sub_29AB0F67C("GL_EXT_EGL_image_storage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_EGL_sync = sub_29AB0F67C("GL_EXT_EGL_sync", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_abgr = sub_29AB0F67C("GL_EXT_abgr", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_bgra = sub_29AB0F67C("GL_EXT_bgra", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_bindable_uniform = sub_29AB0F67C("GL_EXT_bindable_uniform", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_blend_color = sub_29AB0F67C("GL_EXT_blend_color", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_blend_equation_separate = sub_29AB0F67C("GL_EXT_blend_equation_separate", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_blend_func_separate = sub_29AB0F67C("GL_EXT_blend_func_separate", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_blend_logic_op = sub_29AB0F67C("GL_EXT_blend_logic_op", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_blend_minmax = sub_29AB0F67C("GL_EXT_blend_minmax", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_blend_subtract = sub_29AB0F67C("GL_EXT_blend_subtract", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_clip_volume_hint = sub_29AB0F67C("GL_EXT_clip_volume_hint", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_cmyka = sub_29AB0F67C("GL_EXT_cmyka", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_color_subtable = sub_29AB0F67C("GL_EXT_color_subtable", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_compiled_vertex_array = sub_29AB0F67C("GL_EXT_compiled_vertex_array", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_convolution = sub_29AB0F67C("GL_EXT_convolution", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_coordinate_frame = sub_29AB0F67C("GL_EXT_coordinate_frame", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_copy_texture = sub_29AB0F67C("GL_EXT_copy_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_cull_vertex = sub_29AB0F67C("GL_EXT_cull_vertex", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_debug_label = sub_29AB0F67C("GL_EXT_debug_label", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_debug_marker = sub_29AB0F67C("GL_EXT_debug_marker", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_depth_bounds_test = sub_29AB0F67C("GL_EXT_depth_bounds_test", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_direct_state_access = sub_29AB0F67C("GL_EXT_direct_state_access", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_draw_buffers2 = sub_29AB0F67C("GL_EXT_draw_buffers2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_draw_instanced = sub_29AB0F67C("GL_EXT_draw_instanced", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_draw_range_elements = sub_29AB0F67C("GL_EXT_draw_range_elements", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_external_buffer = sub_29AB0F67C("GL_EXT_external_buffer", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_fog_coord = sub_29AB0F67C("GL_EXT_fog_coord", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_framebuffer_blit = sub_29AB0F67C("GL_EXT_framebuffer_blit", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_framebuffer_multisample = sub_29AB0F67C("GL_EXT_framebuffer_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_framebuffer_multisample_blit_scaled = sub_29AB0F67C("GL_EXT_framebuffer_multisample_blit_scaled", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_framebuffer_object = sub_29AB0F67C("GL_EXT_framebuffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_framebuffer_sRGB = sub_29AB0F67C("GL_EXT_framebuffer_sRGB", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_geometry_shader4 = sub_29AB0F67C("GL_EXT_geometry_shader4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_gpu_program_parameters = sub_29AB0F67C("GL_EXT_gpu_program_parameters", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_gpu_shader4 = sub_29AB0F67C("GL_EXT_gpu_shader4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_histogram = sub_29AB0F67C("GL_EXT_histogram", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_index_array_formats = sub_29AB0F67C("GL_EXT_index_array_formats", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_index_func = sub_29AB0F67C("GL_EXT_index_func", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_index_material = sub_29AB0F67C("GL_EXT_index_material", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_index_texture = sub_29AB0F67C("GL_EXT_index_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_light_texture = sub_29AB0F67C("GL_EXT_light_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_memory_object = sub_29AB0F67C("GL_EXT_memory_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_memory_object_fd = sub_29AB0F67C("GL_EXT_memory_object_fd", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_memory_object_win32 = sub_29AB0F67C("GL_EXT_memory_object_win32", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_misc_attribute = sub_29AB0F67C("GL_EXT_misc_attribute", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_multi_draw_arrays = sub_29AB0F67C("GL_EXT_multi_draw_arrays", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_multisample = sub_29AB0F67C("GL_EXT_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_multiview_tessellation_geometry_shader = sub_29AB0F67C("GL_EXT_multiview_tessellation_geometry_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_multiview_texture_multisample = sub_29AB0F67C("GL_EXT_multiview_texture_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_multiview_timer_query = sub_29AB0F67C("GL_EXT_multiview_timer_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_packed_depth_stencil = sub_29AB0F67C("GL_EXT_packed_depth_stencil", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_packed_float = sub_29AB0F67C("GL_EXT_packed_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_packed_pixels = sub_29AB0F67C("GL_EXT_packed_pixels", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_paletted_texture = sub_29AB0F67C("GL_EXT_paletted_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_pixel_buffer_object = sub_29AB0F67C("GL_EXT_pixel_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_pixel_transform = sub_29AB0F67C("GL_EXT_pixel_transform", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_pixel_transform_color_table = sub_29AB0F67C("GL_EXT_pixel_transform_color_table", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_point_parameters = sub_29AB0F67C("GL_EXT_point_parameters", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_polygon_offset = sub_29AB0F67C("GL_EXT_polygon_offset", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_polygon_offset_clamp = sub_29AB0F67C("GL_EXT_polygon_offset_clamp", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_post_depth_coverage = sub_29AB0F67C("GL_EXT_post_depth_coverage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_provoking_vertex = sub_29AB0F67C("GL_EXT_provoking_vertex", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_raster_multisample = sub_29AB0F67C("GL_EXT_raster_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_rescale_normal = sub_29AB0F67C("GL_EXT_rescale_normal", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_semaphore = sub_29AB0F67C("GL_EXT_semaphore", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_semaphore_fd = sub_29AB0F67C("GL_EXT_semaphore_fd", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_semaphore_win32 = sub_29AB0F67C("GL_EXT_semaphore_win32", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_secondary_color = sub_29AB0F67C("GL_EXT_secondary_color", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_separate_shader_objects = sub_29AB0F67C("GL_EXT_separate_shader_objects", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_separate_specular_color = sub_29AB0F67C("GL_EXT_separate_specular_color", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_shader_framebuffer_fetch = sub_29AB0F67C("GL_EXT_shader_framebuffer_fetch", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_shader_framebuffer_fetch_non_coherent = sub_29AB0F67C("GL_EXT_shader_framebuffer_fetch_non_coherent", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_shader_image_load_formatted = sub_29AB0F67C("GL_EXT_shader_image_load_formatted", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_shader_image_load_store = sub_29AB0F67C("GL_EXT_shader_image_load_store", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_shader_integer_mix = sub_29AB0F67C("GL_EXT_shader_integer_mix", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_shadow_funcs = sub_29AB0F67C("GL_EXT_shadow_funcs", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_shared_texture_palette = sub_29AB0F67C("GL_EXT_shared_texture_palette", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_sparse_texture2 = sub_29AB0F67C("GL_EXT_sparse_texture2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_stencil_clear_tag = sub_29AB0F67C("GL_EXT_stencil_clear_tag", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_stencil_two_side = sub_29AB0F67C("GL_EXT_stencil_two_side", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_stencil_wrap = sub_29AB0F67C("GL_EXT_stencil_wrap", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_subtexture = sub_29AB0F67C("GL_EXT_subtexture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture = sub_29AB0F67C("GL_EXT_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture3D = sub_29AB0F67C("GL_EXT_texture3D", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_array = sub_29AB0F67C("GL_EXT_texture_array", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_buffer_object = sub_29AB0F67C("GL_EXT_texture_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_compression_latc = sub_29AB0F67C("GL_EXT_texture_compression_latc", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_compression_rgtc = sub_29AB0F67C("GL_EXT_texture_compression_rgtc", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_compression_s3tc = sub_29AB0F67C("GL_EXT_texture_compression_s3tc", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_cube_map = sub_29AB0F67C("GL_EXT_texture_cube_map", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_env_add = sub_29AB0F67C("GL_EXT_texture_env_add", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_env_combine = sub_29AB0F67C("GL_EXT_texture_env_combine", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_env_dot3 = sub_29AB0F67C("GL_EXT_texture_env_dot3", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_filter_anisotropic = sub_29AB0F67C("GL_EXT_texture_filter_anisotropic", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_filter_minmax = sub_29AB0F67C("GL_EXT_texture_filter_minmax", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_integer = sub_29AB0F67C("GL_EXT_texture_integer", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_lod_bias = sub_29AB0F67C("GL_EXT_texture_lod_bias", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_mirror_clamp = sub_29AB0F67C("GL_EXT_texture_mirror_clamp", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_object = sub_29AB0F67C("GL_EXT_texture_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_perturb_normal = sub_29AB0F67C("GL_EXT_texture_perturb_normal", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_sRGB = sub_29AB0F67C("GL_EXT_texture_sRGB", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_sRGB_R8 = sub_29AB0F67C("GL_EXT_texture_sRGB_R8", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_sRGB_decode = sub_29AB0F67C("GL_EXT_texture_sRGB_decode", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_shared_exponent = sub_29AB0F67C("GL_EXT_texture_shared_exponent", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_snorm = sub_29AB0F67C("GL_EXT_texture_snorm", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_swizzle = sub_29AB0F67C("GL_EXT_texture_swizzle", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_timeline_semaphore = sub_29AB0F67C("GL_NV_timeline_semaphore", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_timer_query = sub_29AB0F67C("GL_EXT_timer_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_transform_feedback = sub_29AB0F67C("GL_EXT_transform_feedback", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_vertex_array = sub_29AB0F67C("GL_EXT_vertex_array", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_vertex_array_bgra = sub_29AB0F67C("GL_EXT_vertex_array_bgra", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_vertex_attrib_64bit = sub_29AB0F67C("GL_EXT_vertex_attrib_64bit", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_vertex_shader = sub_29AB0F67C("GL_EXT_vertex_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_vertex_weighting = sub_29AB0F67C("GL_EXT_vertex_weighting", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_win32_keyed_mutex = sub_29AB0F67C("GL_EXT_win32_keyed_mutex", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_window_rectangles = sub_29AB0F67C("GL_EXT_window_rectangles", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_x11_sync_object = sub_29AB0F67C("GL_EXT_x11_sync_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_INTEL_conservative_rasterization = sub_29AB0F67C("GL_INTEL_conservative_rasterization", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_INTEL_fragment_shader_ordering = sub_29AB0F67C("GL_INTEL_fragment_shader_ordering", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_INTEL_framebuffer_CMAA = sub_29AB0F67C("GL_INTEL_framebuffer_CMAA", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_INTEL_map_texture = sub_29AB0F67C("GL_INTEL_map_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_INTEL_blackhole_render = sub_29AB0F67C("GL_INTEL_blackhole_render", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_INTEL_parallel_arrays = sub_29AB0F67C("GL_INTEL_parallel_arrays", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_INTEL_performance_query = sub_29AB0F67C("GL_INTEL_performance_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_blend_equation_advanced = sub_29AB0F67C("GL_KHR_blend_equation_advanced", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_blend_equation_advanced_coherent = sub_29AB0F67C("GL_KHR_blend_equation_advanced_coherent", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_context_flush_control = sub_29AB0F67C("GL_KHR_context_flush_control", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug = sub_29AB0F67C("GL_KHR_debug", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_no_error = sub_29AB0F67C("GL_KHR_no_error", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_robust_buffer_access_behavior = sub_29AB0F67C("GL_KHR_robust_buffer_access_behavior", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_robustness = sub_29AB0F67C("GL_KHR_robustness", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_shader_subgroup = sub_29AB0F67C("GL_KHR_shader_subgroup", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_texture_compression_astc_hdr = sub_29AB0F67C("GL_KHR_texture_compression_astc_hdr", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_texture_compression_astc_ldr = sub_29AB0F67C("GL_KHR_texture_compression_astc_ldr", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_texture_compression_astc_sliced_3d = sub_29AB0F67C("GL_KHR_texture_compression_astc_sliced_3d", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_parallel_shader_compile = sub_29AB0F67C("GL_KHR_parallel_shader_compile", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NVX_blend_equation_advanced_multi_draw_buffers = sub_29AB0F67C("GL_NVX_blend_equation_advanced_multi_draw_buffers", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NVX_conditional_render = sub_29AB0F67C("GL_NVX_conditional_render", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NVX_gpu_memory_info = sub_29AB0F67C("GL_NVX_gpu_memory_info", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NVX_linked_gpu_multicast = sub_29AB0F67C("GL_NVX_linked_gpu_multicast", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_alpha_to_coverage_dither_control = sub_29AB0F67C("GL_NV_alpha_to_coverage_dither_control", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_bindless_multi_draw_indirect = sub_29AB0F67C("GL_NV_bindless_multi_draw_indirect", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_bindless_multi_draw_indirect_count = sub_29AB0F67C("GL_NV_bindless_multi_draw_indirect_count", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_bindless_texture = sub_29AB0F67C("GL_NV_bindless_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_blend_equation_advanced = sub_29AB0F67C("GL_NV_blend_equation_advanced", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_blend_equation_advanced_coherent = sub_29AB0F67C("GL_NV_blend_equation_advanced_coherent", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_blend_minmax_factor = sub_29AB0F67C("GL_NV_blend_minmax_factor", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_blend_square = sub_29AB0F67C("GL_NV_blend_square", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_clip_space_w_scaling = sub_29AB0F67C("GL_NV_clip_space_w_scaling", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_command_list = sub_29AB0F67C("GL_NV_command_list", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_compute_program5 = sub_29AB0F67C("GL_NV_compute_program5", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_compute_shader_derivatives = sub_29AB0F67C("GL_NV_compute_shader_derivatives", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conditional_render = sub_29AB0F67C("GL_NV_conditional_render", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster = sub_29AB0F67C("GL_NV_conservative_raster", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster_dilate = sub_29AB0F67C("GL_NV_conservative_raster_dilate", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster_pre_snap = sub_29AB0F67C("GL_NV_conservative_raster_pre_snap", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster_pre_snap_triangles = sub_29AB0F67C("GL_NV_conservative_raster_pre_snap_triangles", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster_underestimation = sub_29AB0F67C("GL_NV_conservative_raster_underestimation", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_copy_depth_to_color = sub_29AB0F67C("GL_NV_copy_depth_to_color", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_copy_image = sub_29AB0F67C("GL_NV_copy_image", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_deep_texture3D = sub_29AB0F67C("GL_NV_deep_texture3D", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_depth_buffer_float = sub_29AB0F67C("GL_NV_depth_buffer_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_depth_clamp = sub_29AB0F67C("GL_NV_depth_clamp", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_draw_texture = sub_29AB0F67C("GL_NV_draw_texture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_draw_vulkan_image = sub_29AB0F67C("GL_NV_draw_vulkan_image", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_evaluators = sub_29AB0F67C("GL_NV_evaluators", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_explicit_multisample = sub_29AB0F67C("GL_NV_explicit_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fence = sub_29AB0F67C("GL_NV_fence", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fill_rectangle = sub_29AB0F67C("GL_NV_fill_rectangle", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_float_buffer = sub_29AB0F67C("GL_NV_float_buffer", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fog_distance = sub_29AB0F67C("GL_NV_fog_distance", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_coverage_to_color = sub_29AB0F67C("GL_NV_fragment_coverage_to_color", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_program = sub_29AB0F67C("GL_NV_fragment_program", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_program2 = sub_29AB0F67C("GL_NV_fragment_program2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_program4 = sub_29AB0F67C("GL_NV_fragment_program4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_program_option = sub_29AB0F67C("GL_NV_fragment_program_option", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_shader_barycentric = sub_29AB0F67C("GL_NV_fragment_shader_barycentric", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_shader_interlock = sub_29AB0F67C("GL_NV_fragment_shader_interlock", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_framebuffer_mixed_samples = sub_29AB0F67C("GL_NV_framebuffer_mixed_samples", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_framebuffer_multisample_coverage = sub_29AB0F67C("GL_NV_framebuffer_multisample_coverage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_geometry_program4 = sub_29AB0F67C("GL_NV_geometry_program4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_geometry_shader4 = sub_29AB0F67C("GL_NV_geometry_shader4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_geometry_shader_passthrough = sub_29AB0F67C("GL_NV_geometry_shader_passthrough", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_gpu_program4 = sub_29AB0F67C("GL_NV_gpu_program4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_gpu_program5 = sub_29AB0F67C("GL_NV_gpu_program5", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_gpu_program5_mem_extended = sub_29AB0F67C("GL_NV_gpu_program5_mem_extended", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_gpu_shader5 = sub_29AB0F67C("GL_NV_gpu_shader5", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_half_float = sub_29AB0F67C("GL_NV_half_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_internalformat_sample_query = sub_29AB0F67C("GL_NV_internalformat_sample_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_light_max_exponent = sub_29AB0F67C("GL_NV_light_max_exponent", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_gpu_multicast = sub_29AB0F67C("GL_NV_gpu_multicast", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NVX_gpu_multicast2 = sub_29AB0F67C("GL_NVX_gpu_multicast2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NVX_progress_fence = sub_29AB0F67C("GL_NVX_progress_fence", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_memory_attachment = sub_29AB0F67C("GL_NV_memory_attachment", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_memory_object_sparse = sub_29AB0F67C("GL_NV_memory_object_sparse", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_mesh_shader = sub_29AB0F67C("GL_NV_mesh_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_multisample_coverage = sub_29AB0F67C("GL_NV_multisample_coverage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_multisample_filter_hint = sub_29AB0F67C("GL_NV_multisample_filter_hint", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_occlusion_query = sub_29AB0F67C("GL_NV_occlusion_query", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_packed_depth_stencil = sub_29AB0F67C("GL_NV_packed_depth_stencil", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_parameter_buffer_object = sub_29AB0F67C("GL_NV_parameter_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_parameter_buffer_object2 = sub_29AB0F67C("GL_NV_parameter_buffer_object2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_path_rendering = sub_29AB0F67C("GL_NV_path_rendering", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_path_rendering_shared_edge = sub_29AB0F67C("GL_NV_path_rendering_shared_edge", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_pixel_data_range = sub_29AB0F67C("GL_NV_pixel_data_range", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_point_sprite = sub_29AB0F67C("GL_NV_point_sprite", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_present_video = sub_29AB0F67C("GL_NV_present_video", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_primitive_restart = sub_29AB0F67C("GL_NV_primitive_restart", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_query_resource = sub_29AB0F67C("GL_NV_query_resource", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_query_resource_tag = sub_29AB0F67C("GL_NV_query_resource_tag", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_register_combiners = sub_29AB0F67C("GL_NV_register_combiners", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_register_combiners2 = sub_29AB0F67C("GL_NV_register_combiners2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_representative_fragment_test = sub_29AB0F67C("GL_NV_representative_fragment_test", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_robustness_video_memory_purge = sub_29AB0F67C("GL_NV_robustness_video_memory_purge", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_sample_locations = sub_29AB0F67C("GL_NV_sample_locations", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_sample_mask_override_coverage = sub_29AB0F67C("GL_NV_sample_mask_override_coverage", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_scissor_exclusive = sub_29AB0F67C("GL_NV_scissor_exclusive", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_atomic_counters = sub_29AB0F67C("GL_NV_shader_atomic_counters", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_atomic_float = sub_29AB0F67C("GL_NV_shader_atomic_float", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_atomic_float64 = sub_29AB0F67C("GL_NV_shader_atomic_float64", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_atomic_fp16_vector = sub_29AB0F67C("GL_NV_shader_atomic_fp16_vector", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_atomic_int64 = sub_29AB0F67C("GL_NV_shader_atomic_int64", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_buffer_load = sub_29AB0F67C("GL_NV_shader_buffer_load", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_buffer_store = sub_29AB0F67C("GL_NV_shader_buffer_store", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_storage_buffer_object = sub_29AB0F67C("GL_NV_shader_storage_buffer_object", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_subgroup_partitioned = sub_29AB0F67C("GL_NV_shader_subgroup_partitioned", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_texture_footprint = sub_29AB0F67C("GL_NV_shader_texture_footprint", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_thread_group = sub_29AB0F67C("GL_NV_shader_thread_group", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_thread_shuffle = sub_29AB0F67C("GL_NV_shader_thread_shuffle", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shading_rate_image = sub_29AB0F67C("GL_NV_shading_rate_image", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_stereo_view_rendering = sub_29AB0F67C("GL_NV_stereo_view_rendering", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_tessellation_program5 = sub_29AB0F67C("GL_NV_tessellation_program5", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texgen_emboss = sub_29AB0F67C("GL_NV_texgen_emboss", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texgen_reflection = sub_29AB0F67C("GL_NV_texgen_reflection", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_barrier = sub_29AB0F67C("GL_NV_texture_barrier", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_compression_vtc = sub_29AB0F67C("GL_NV_texture_compression_vtc", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_env_combine4 = sub_29AB0F67C("GL_NV_texture_env_combine4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_expand_normal = sub_29AB0F67C("GL_NV_texture_expand_normal", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_multisample = sub_29AB0F67C("GL_NV_texture_multisample", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_rectangle = sub_29AB0F67C("GL_NV_texture_rectangle", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_rectangle_compressed = sub_29AB0F67C("GL_NV_texture_rectangle_compressed", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_shader = sub_29AB0F67C("GL_NV_texture_shader", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_shader2 = sub_29AB0F67C("GL_NV_texture_shader2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_texture_shader3 = sub_29AB0F67C("GL_NV_texture_shader3", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_transform_feedback = sub_29AB0F67C("GL_NV_transform_feedback", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_transform_feedback2 = sub_29AB0F67C("GL_NV_transform_feedback2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_uniform_buffer_unified_memory = sub_29AB0F67C("GL_NV_uniform_buffer_unified_memory", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vdpau_interop = sub_29AB0F67C("GL_NV_vdpau_interop", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vdpau_interop2 = sub_29AB0F67C("GL_NV_vdpau_interop2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_array_range = sub_29AB0F67C("GL_NV_vertex_array_range", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_array_range2 = sub_29AB0F67C("GL_NV_vertex_array_range2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_attrib_integer_64bit = sub_29AB0F67C("GL_NV_vertex_attrib_integer_64bit", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_buffer_unified_memory = sub_29AB0F67C("GL_NV_vertex_buffer_unified_memory", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_program = sub_29AB0F67C("GL_NV_vertex_program", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_program1_1 = sub_29AB0F67C("GL_NV_vertex_program1_1", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_program2 = sub_29AB0F67C("GL_NV_vertex_program2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_program2_option = sub_29AB0F67C("GL_NV_vertex_program2_option", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_program3 = sub_29AB0F67C("GL_NV_vertex_program3", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_vertex_program4 = sub_29AB0F67C("GL_NV_vertex_program4", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_video_capture = sub_29AB0F67C("GL_NV_video_capture", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_viewport_array2 = sub_29AB0F67C("GL_NV_viewport_array2", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_viewport_swizzle = sub_29AB0F67C("GL_NV_viewport_swizzle", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_EXT_texture_shadow_lod = sub_29AB0F67C("GL_EXT_texture_shadow_lod", &v5226);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAccum = sub_29AB0F644("glAccum", v42, v43);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveProgramEXT = sub_29AB0F644("glActiveProgramEXT", v44, v45);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveShaderProgram = sub_29AB0F644("glActiveShaderProgram", v46, v47);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveShaderProgramEXT = sub_29AB0F644("glActiveShaderProgramEXT", v48, v49);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveStencilFaceEXT = sub_29AB0F644("glActiveStencilFaceEXT", v50, v51);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture = sub_29AB0F644("glActiveTexture", v52, v53);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTextureARB = sub_29AB0F644("glActiveTextureARB", v54, v55);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveVaryingNV = sub_29AB0F644("glActiveVaryingNV", v56, v57);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAlphaFunc = sub_29AB0F644("glAlphaFunc", v58, v59);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAlphaToCoverageDitherControlNV = sub_29AB0F644("glAlphaToCoverageDitherControlNV", v60, v61);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glApplyFramebufferAttachmentCMAAINTEL = sub_29AB0F644("glApplyFramebufferAttachmentCMAAINTEL", v62, v63);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glApplyTextureEXT = sub_29AB0F644("glApplyTextureEXT", v64, v65);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAcquireKeyedMutexWin32EXT = sub_29AB0F644("glAcquireKeyedMutexWin32EXT", v66, v67);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAreProgramsResidentNV = sub_29AB0F644("glAreProgramsResidentNV", v68, v69);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAreTexturesResident = sub_29AB0F644("glAreTexturesResident", v70, v71);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAreTexturesResidentEXT = sub_29AB0F644("glAreTexturesResidentEXT", v72, v73);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glArrayElement = sub_29AB0F644("glArrayElement", v74, v75);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glArrayElementEXT = sub_29AB0F644("glArrayElementEXT", v76, v77);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAsyncCopyBufferSubDataNVX = sub_29AB0F644("glAsyncCopyBufferSubDataNVX", v78, v79);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAsyncCopyImageSubDataNVX = sub_29AB0F644("glAsyncCopyImageSubDataNVX", v80, v81);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAttachObjectARB = sub_29AB0F644("glAttachObjectARB", v82, v83);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAttachShader = sub_29AB0F644("glAttachShader", v84, v85);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBegin = sub_29AB0F644("glBegin", v86, v87);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginConditionalRender = sub_29AB0F644("glBeginConditionalRender", v88, v89);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginConditionalRenderNV = sub_29AB0F644("glBeginConditionalRenderNV", v90, v91);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginConditionalRenderNVX = sub_29AB0F644("glBeginConditionalRenderNVX", v92, v93);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginOcclusionQueryNV = sub_29AB0F644("glBeginOcclusionQueryNV", v94, v95);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginPerfMonitorAMD = sub_29AB0F644("glBeginPerfMonitorAMD", v96, v97);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginPerfQueryINTEL = sub_29AB0F644("glBeginPerfQueryINTEL", v98, v99);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery = sub_29AB0F644("glBeginQuery", v100, v101);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQueryARB = sub_29AB0F644("glBeginQueryARB", v102, v103);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQueryIndexed = sub_29AB0F644("glBeginQueryIndexed", v104, v105);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginTransformFeedback = sub_29AB0F644("glBeginTransformFeedback", v106, v107);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginTransformFeedbackEXT = sub_29AB0F644("glBeginTransformFeedbackEXT", v108, v109);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginTransformFeedbackNV = sub_29AB0F644("glBeginTransformFeedbackNV", v110, v111);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginVertexShaderEXT = sub_29AB0F644("glBeginVertexShaderEXT", v112, v113);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginVideoCaptureNV = sub_29AB0F644("glBeginVideoCaptureNV", v114, v115);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindAttribLocation = sub_29AB0F644("glBindAttribLocation", v116, v117);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindAttribLocationARB = sub_29AB0F644("glBindAttribLocationARB", v118, v119);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer = sub_29AB0F644("glBindBuffer", v120, v121);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferARB = sub_29AB0F644("glBindBufferARB", v122, v123);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBase = sub_29AB0F644("glBindBufferBase", v124, v125);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBaseEXT = sub_29AB0F644("glBindBufferBaseEXT", v126, v127);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBaseNV = sub_29AB0F644("glBindBufferBaseNV", v128, v129);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferOffsetEXT = sub_29AB0F644("glBindBufferOffsetEXT", v130, v131);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferOffsetNV = sub_29AB0F644("glBindBufferOffsetNV", v132, v133);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferRange = sub_29AB0F644("glBindBufferRange", v134, v135);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferRangeEXT = sub_29AB0F644("glBindBufferRangeEXT", v136, v137);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferRangeNV = sub_29AB0F644("glBindBufferRangeNV", v138, v139);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffersBase = sub_29AB0F644("glBindBuffersBase", v140, v141);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffersRange = sub_29AB0F644("glBindBuffersRange", v142, v143);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFragDataLocation = sub_29AB0F644("glBindFragDataLocation", v144, v145);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFragDataLocationEXT = sub_29AB0F644("glBindFragDataLocationEXT", v146, v147);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFragDataLocationIndexed = sub_29AB0F644("glBindFragDataLocationIndexed", v148, v149);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer = sub_29AB0F644("glBindFramebuffer", v150, v151);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebufferEXT = sub_29AB0F644("glBindFramebufferEXT", v152, v153);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindImageTexture = sub_29AB0F644("glBindImageTexture", v154, v155);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindImageTextureEXT = sub_29AB0F644("glBindImageTextureEXT", v156, v157);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindImageTextures = sub_29AB0F644("glBindImageTextures", v158, v159);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindLightParameterEXT = sub_29AB0F644("glBindLightParameterEXT", v160, v161);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindMaterialParameterEXT = sub_29AB0F644("glBindMaterialParameterEXT", v162, v163);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindMultiTextureEXT = sub_29AB0F644("glBindMultiTextureEXT", v164, v165);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindParameterEXT = sub_29AB0F644("glBindParameterEXT", v166, v167);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindProgramARB = sub_29AB0F644("glBindProgramARB", v168, v169);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindProgramNV = sub_29AB0F644("glBindProgramNV", v170, v171);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindProgramPipeline = sub_29AB0F644("glBindProgramPipeline", v172, v173);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindProgramPipelineEXT = sub_29AB0F644("glBindProgramPipelineEXT", v174, v175);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindRenderbuffer = sub_29AB0F644("glBindRenderbuffer", v176, v177);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindRenderbufferEXT = sub_29AB0F644("glBindRenderbufferEXT", v178, v179);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindSampler = sub_29AB0F644("glBindSampler", v180, v181);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindSamplers = sub_29AB0F644("glBindSamplers", v182, v183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindShadingRateImageNV = sub_29AB0F644("glBindShadingRateImageNV", v184, v185);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexGenParameterEXT = sub_29AB0F644("glBindTexGenParameterEXT", v186, v187);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture = sub_29AB0F644("glBindTexture", v188, v189);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextureEXT = sub_29AB0F644("glBindTextureEXT", v190, v191);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextureUnit = sub_29AB0F644("glBindTextureUnit", v192, v193);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextureUnitParameterEXT = sub_29AB0F644("glBindTextureUnitParameterEXT", v194, v195);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextures = sub_29AB0F644("glBindTextures", v196, v197);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTransformFeedback = sub_29AB0F644("glBindTransformFeedback", v198, v199);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTransformFeedbackNV = sub_29AB0F644("glBindTransformFeedbackNV", v200, v201);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray = sub_29AB0F644("glBindVertexArray", v202, v203);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArrayAPPLE = sub_29AB0F644("glBindVertexArrayAPPLE", v204, v205);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexBuffer = sub_29AB0F644("glBindVertexBuffer", v206, v207);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexBuffers = sub_29AB0F644("glBindVertexBuffers", v208, v209);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexShaderEXT = sub_29AB0F644("glBindVertexShaderEXT", v210, v211);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVideoCaptureStreamBufferNV = sub_29AB0F644("glBindVideoCaptureStreamBufferNV", v212, v213);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVideoCaptureStreamTextureNV = sub_29AB0F644("glBindVideoCaptureStreamTextureNV", v214, v215);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3bEXT = sub_29AB0F644("glBinormal3bEXT", v216, v217);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3bvEXT = sub_29AB0F644("glBinormal3bvEXT", v218, v219);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3dEXT = sub_29AB0F644("glBinormal3dEXT", v220, v221);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3dvEXT = sub_29AB0F644("glBinormal3dvEXT", v222, v223);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3fEXT = sub_29AB0F644("glBinormal3fEXT", v224, v225);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3fvEXT = sub_29AB0F644("glBinormal3fvEXT", v226, v227);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3iEXT = sub_29AB0F644("glBinormal3iEXT", v228, v229);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3ivEXT = sub_29AB0F644("glBinormal3ivEXT", v230, v231);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3sEXT = sub_29AB0F644("glBinormal3sEXT", v232, v233);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormal3svEXT = sub_29AB0F644("glBinormal3svEXT", v234, v235);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBinormalPointerEXT = sub_29AB0F644("glBinormalPointerEXT", v236, v237);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBitmap = sub_29AB0F644("glBitmap", v238, v239);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendBarrierKHR = sub_29AB0F644("glBlendBarrierKHR", v240, v241);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendBarrierNV = sub_29AB0F644("glBlendBarrierNV", v242, v243);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendColor = sub_29AB0F644("glBlendColor", v244, v245);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendColorEXT = sub_29AB0F644("glBlendColorEXT", v246, v247);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquation = sub_29AB0F644("glBlendEquation", v248, v249);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationEXT = sub_29AB0F644("glBlendEquationEXT", v250, v251);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationIndexedAMD = sub_29AB0F644("glBlendEquationIndexedAMD", v252, v253);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate = sub_29AB0F644("glBlendEquationSeparate", v254, v255);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparateEXT = sub_29AB0F644("glBlendEquationSeparateEXT", v256, v257);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparateIndexedAMD = sub_29AB0F644("glBlendEquationSeparateIndexedAMD", v258, v259);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparatei = sub_29AB0F644("glBlendEquationSeparatei", v260, v261);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparateiARB = sub_29AB0F644("glBlendEquationSeparateiARB", v262, v263);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationi = sub_29AB0F644("glBlendEquationi", v264, v265);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationiARB = sub_29AB0F644("glBlendEquationiARB", v266, v267);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFunc = sub_29AB0F644("glBlendFunc", v268, v269);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncIndexedAMD = sub_29AB0F644("glBlendFuncIndexedAMD", v270, v271);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate = sub_29AB0F644("glBlendFuncSeparate", v272, v273);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparateEXT = sub_29AB0F644("glBlendFuncSeparateEXT", v274, v275);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparateIndexedAMD = sub_29AB0F644("glBlendFuncSeparateIndexedAMD", v276, v277);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparatei = sub_29AB0F644("glBlendFuncSeparatei", v278, v279);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparateiARB = sub_29AB0F644("glBlendFuncSeparateiARB", v280, v281);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFunci = sub_29AB0F644("glBlendFunci", v282, v283);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFunciARB = sub_29AB0F644("glBlendFunciARB", v284, v285);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendParameteriNV = sub_29AB0F644("glBlendParameteriNV", v286, v287);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlitFramebuffer = sub_29AB0F644("glBlitFramebuffer", v288, v289);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlitFramebufferEXT = sub_29AB0F644("glBlitFramebufferEXT", v290, v291);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlitNamedFramebuffer = sub_29AB0F644("glBlitNamedFramebuffer", v292, v293);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferAddressRangeNV = sub_29AB0F644("glBufferAddressRangeNV", v294, v295);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferAttachMemoryNV = sub_29AB0F644("glBufferAttachMemoryNV", v296, v297);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferData = sub_29AB0F644("glBufferData", v298, v299);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferDataARB = sub_29AB0F644("glBufferDataARB", v300, v301);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferPageCommitmentARB = sub_29AB0F644("glBufferPageCommitmentARB", v302, v303);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferPageCommitmentMemNV = sub_29AB0F644("glBufferPageCommitmentMemNV", v304, v305);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferParameteriAPPLE = sub_29AB0F644("glBufferParameteriAPPLE", v306, v307);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferStorage = sub_29AB0F644("glBufferStorage", v308, v309);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferStorageExternalEXT = sub_29AB0F644("glBufferStorageExternalEXT", v310, v311);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferStorageMemEXT = sub_29AB0F644("glBufferStorageMemEXT", v312, v313);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferSubData = sub_29AB0F644("glBufferSubData", v314, v315);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferSubDataARB = sub_29AB0F644("glBufferSubDataARB", v316, v317);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCallCommandListNV = sub_29AB0F644("glCallCommandListNV", v318, v319);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCallList = sub_29AB0F644("glCallList", v320, v321);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCallLists = sub_29AB0F644("glCallLists", v322, v323);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCheckFramebufferStatus = sub_29AB0F644("glCheckFramebufferStatus", v324, v325);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCheckFramebufferStatusEXT = sub_29AB0F644("glCheckFramebufferStatusEXT", v326, v327);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCheckNamedFramebufferStatus = sub_29AB0F644("glCheckNamedFramebufferStatus", v328, v329);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCheckNamedFramebufferStatusEXT = sub_29AB0F644("glCheckNamedFramebufferStatusEXT", v330, v331);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClampColor = sub_29AB0F644("glClampColor", v332, v333);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClampColorARB = sub_29AB0F644("glClampColorARB", v334, v335);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClear = sub_29AB0F644("glClear", v336, v337);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearAccum = sub_29AB0F644("glClearAccum", v338, v339);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearBufferData = sub_29AB0F644("glClearBufferData", v340, v341);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearBufferSubData = sub_29AB0F644("glClearBufferSubData", v342, v343);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearBufferfi = sub_29AB0F644("glClearBufferfi", v344, v345);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearBufferfv = sub_29AB0F644("glClearBufferfv", v346, v347);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearBufferiv = sub_29AB0F644("glClearBufferiv", v348, v349);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearBufferuiv = sub_29AB0F644("glClearBufferuiv", v350, v351);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearColor = sub_29AB0F644("glClearColor", v352, v353);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearColorIiEXT = sub_29AB0F644("glClearColorIiEXT", v354, v355);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearColorIuiEXT = sub_29AB0F644("glClearColorIuiEXT", v356, v357);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearDepth = sub_29AB0F644("glClearDepth", v358, v359);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearDepthdNV = sub_29AB0F644("glClearDepthdNV", v360, v361);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearDepthf = sub_29AB0F644("glClearDepthf", v362, v363);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearIndex = sub_29AB0F644("glClearIndex", v364, v365);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedBufferData = sub_29AB0F644("glClearNamedBufferData", v366, v367);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedBufferDataEXT = sub_29AB0F644("glClearNamedBufferDataEXT", v368, v369);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedBufferSubData = sub_29AB0F644("glClearNamedBufferSubData", v370, v371);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedBufferSubDataEXT = sub_29AB0F644("glClearNamedBufferSubDataEXT", v372, v373);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedFramebufferfi = sub_29AB0F644("glClearNamedFramebufferfi", v374, v375);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedFramebufferfv = sub_29AB0F644("glClearNamedFramebufferfv", v376, v377);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedFramebufferiv = sub_29AB0F644("glClearNamedFramebufferiv", v378, v379);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedFramebufferuiv = sub_29AB0F644("glClearNamedFramebufferuiv", v380, v381);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearStencil = sub_29AB0F644("glClearStencil", v382, v383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearTexImage = sub_29AB0F644("glClearTexImage", v384, v385);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearTexSubImage = sub_29AB0F644("glClearTexSubImage", v386, v387);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClientActiveTexture = sub_29AB0F644("glClientActiveTexture", v388, v389);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClientActiveTextureARB = sub_29AB0F644("glClientActiveTextureARB", v390, v391);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClientAttribDefaultEXT = sub_29AB0F644("glClientAttribDefaultEXT", v392, v393);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClientWaitSemaphoreui64NVX = sub_29AB0F644("glClientWaitSemaphoreui64NVX", v394, v395);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClientWaitSync = sub_29AB0F644("glClientWaitSync", v396, v397);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClipControl = sub_29AB0F644("glClipControl", v398, v399);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClipPlane = sub_29AB0F644("glClipPlane", v400, v401);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3b = sub_29AB0F644("glColor3b", v402, v403);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3bv = sub_29AB0F644("glColor3bv", v404, v405);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3d = sub_29AB0F644("glColor3d", v406, v407);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3dv = sub_29AB0F644("glColor3dv", v408, v409);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3f = sub_29AB0F644("glColor3f", v410, v411);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3fv = sub_29AB0F644("glColor3fv", v412, v413);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3hNV = sub_29AB0F644("glColor3hNV", v414, v415);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3hvNV = sub_29AB0F644("glColor3hvNV", v416, v417);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3i = sub_29AB0F644("glColor3i", v418, v419);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3iv = sub_29AB0F644("glColor3iv", v420, v421);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3s = sub_29AB0F644("glColor3s", v422, v423);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3sv = sub_29AB0F644("glColor3sv", v424, v425);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3ub = sub_29AB0F644("glColor3ub", v426, v427);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3ubv = sub_29AB0F644("glColor3ubv", v428, v429);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3ui = sub_29AB0F644("glColor3ui", v430, v431);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3uiv = sub_29AB0F644("glColor3uiv", v432, v433);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3us = sub_29AB0F644("glColor3us", v434, v435);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor3usv = sub_29AB0F644("glColor3usv", v436, v437);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4b = sub_29AB0F644("glColor4b", v438, v439);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4bv = sub_29AB0F644("glColor4bv", v440, v441);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4d = sub_29AB0F644("glColor4d", v442, v443);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4dv = sub_29AB0F644("glColor4dv", v444, v445);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4f = sub_29AB0F644("glColor4f", v446, v447);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4fv = sub_29AB0F644("glColor4fv", v448, v449);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4hNV = sub_29AB0F644("glColor4hNV", v450, v451);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4hvNV = sub_29AB0F644("glColor4hvNV", v452, v453);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4i = sub_29AB0F644("glColor4i", v454, v455);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4iv = sub_29AB0F644("glColor4iv", v456, v457);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4s = sub_29AB0F644("glColor4s", v458, v459);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4sv = sub_29AB0F644("glColor4sv", v460, v461);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4ub = sub_29AB0F644("glColor4ub", v462, v463);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4ubv = sub_29AB0F644("glColor4ubv", v464, v465);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4ui = sub_29AB0F644("glColor4ui", v466, v467);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4uiv = sub_29AB0F644("glColor4uiv", v468, v469);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4us = sub_29AB0F644("glColor4us", v470, v471);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColor4usv = sub_29AB0F644("glColor4usv", v472, v473);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorFormatNV = sub_29AB0F644("glColorFormatNV", v474, v475);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMask = sub_29AB0F644("glColorMask", v476, v477);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMaskIndexedEXT = sub_29AB0F644("glColorMaskIndexedEXT", v478, v479);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMaski = sub_29AB0F644("glColorMaski", v480, v481);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMaterial = sub_29AB0F644("glColorMaterial", v482, v483);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorP3ui = sub_29AB0F644("glColorP3ui", v484, v485);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorP3uiv = sub_29AB0F644("glColorP3uiv", v486, v487);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorP4ui = sub_29AB0F644("glColorP4ui", v488, v489);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorP4uiv = sub_29AB0F644("glColorP4uiv", v490, v491);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorPointer = sub_29AB0F644("glColorPointer", v492, v493);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorPointerEXT = sub_29AB0F644("glColorPointerEXT", v494, v495);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorPointervINTEL = sub_29AB0F644("glColorPointervINTEL", v496, v497);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorSubTable = sub_29AB0F644("glColorSubTable", v498, v499);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorSubTableEXT = sub_29AB0F644("glColorSubTableEXT", v500, v501);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorTable = sub_29AB0F644("glColorTable", v502, v503);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorTableEXT = sub_29AB0F644("glColorTableEXT", v504, v505);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorTableParameterfv = sub_29AB0F644("glColorTableParameterfv", v506, v507);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorTableParameteriv = sub_29AB0F644("glColorTableParameteriv", v508, v509);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCombinerInputNV = sub_29AB0F644("glCombinerInputNV", v510, v511);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCombinerOutputNV = sub_29AB0F644("glCombinerOutputNV", v512, v513);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCombinerParameterfNV = sub_29AB0F644("glCombinerParameterfNV", v514, v515);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCombinerParameterfvNV = sub_29AB0F644("glCombinerParameterfvNV", v516, v517);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCombinerParameteriNV = sub_29AB0F644("glCombinerParameteriNV", v518, v519);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCombinerParameterivNV = sub_29AB0F644("glCombinerParameterivNV", v520, v521);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCombinerStageParameterfvNV = sub_29AB0F644("glCombinerStageParameterfvNV", v522, v523);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCommandListSegmentsNV = sub_29AB0F644("glCommandListSegmentsNV", v524, v525);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompileCommandListNV = sub_29AB0F644("glCompileCommandListNV", v526, v527);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompileShader = sub_29AB0F644("glCompileShader", v528, v529);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompileShaderARB = sub_29AB0F644("glCompileShaderARB", v530, v531);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompileShaderIncludeARB = sub_29AB0F644("glCompileShaderIncludeARB", v532, v533);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedMultiTexImage1DEXT = sub_29AB0F644("glCompressedMultiTexImage1DEXT", v534, v535);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedMultiTexImage2DEXT = sub_29AB0F644("glCompressedMultiTexImage2DEXT", v536, v537);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedMultiTexImage3DEXT = sub_29AB0F644("glCompressedMultiTexImage3DEXT", v538, v539);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedMultiTexSubImage1DEXT = sub_29AB0F644("glCompressedMultiTexSubImage1DEXT", v540, v541);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedMultiTexSubImage2DEXT = sub_29AB0F644("glCompressedMultiTexSubImage2DEXT", v542, v543);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedMultiTexSubImage3DEXT = sub_29AB0F644("glCompressedMultiTexSubImage3DEXT", v544, v545);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexImage1D = sub_29AB0F644("glCompressedTexImage1D", v546, v547);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexImage1DARB = sub_29AB0F644("glCompressedTexImage1DARB", v548, v549);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexImage2D = sub_29AB0F644("glCompressedTexImage2D", v550, v551);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexImage2DARB = sub_29AB0F644("glCompressedTexImage2DARB", v552, v553);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexImage3D = sub_29AB0F644("glCompressedTexImage3D", v554, v555);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexImage3DARB = sub_29AB0F644("glCompressedTexImage3DARB", v556, v557);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexSubImage1D = sub_29AB0F644("glCompressedTexSubImage1D", v558, v559);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexSubImage1DARB = sub_29AB0F644("glCompressedTexSubImage1DARB", v560, v561);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexSubImage2D = sub_29AB0F644("glCompressedTexSubImage2D", v562, v563);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexSubImage2DARB = sub_29AB0F644("glCompressedTexSubImage2DARB", v564, v565);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexSubImage3D = sub_29AB0F644("glCompressedTexSubImage3D", v566, v567);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTexSubImage3DARB = sub_29AB0F644("glCompressedTexSubImage3DARB", v568, v569);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureImage1DEXT = sub_29AB0F644("glCompressedTextureImage1DEXT", v570, v571);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureImage2DEXT = sub_29AB0F644("glCompressedTextureImage2DEXT", v572, v573);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureImage3DEXT = sub_29AB0F644("glCompressedTextureImage3DEXT", v574, v575);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage1D = sub_29AB0F644("glCompressedTextureSubImage1D", v576, v577);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage1DEXT = sub_29AB0F644("glCompressedTextureSubImage1DEXT", v578, v579);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage2D = sub_29AB0F644("glCompressedTextureSubImage2D", v580, v581);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage2DEXT = sub_29AB0F644("glCompressedTextureSubImage2DEXT", v582, v583);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage3D = sub_29AB0F644("glCompressedTextureSubImage3D", v584, v585);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage3DEXT = sub_29AB0F644("glCompressedTextureSubImage3DEXT", v586, v587);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConservativeRasterParameterfNV = sub_29AB0F644("glConservativeRasterParameterfNV", v588, v589);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConservativeRasterParameteriNV = sub_29AB0F644("glConservativeRasterParameteriNV", v590, v591);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionFilter1D = sub_29AB0F644("glConvolutionFilter1D", v592, v593);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionFilter1DEXT = sub_29AB0F644("glConvolutionFilter1DEXT", v594, v595);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionFilter2D = sub_29AB0F644("glConvolutionFilter2D", v596, v597);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionFilter2DEXT = sub_29AB0F644("glConvolutionFilter2DEXT", v598, v599);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameterf = sub_29AB0F644("glConvolutionParameterf", v600, v601);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameterfEXT = sub_29AB0F644("glConvolutionParameterfEXT", v602, v603);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameterfv = sub_29AB0F644("glConvolutionParameterfv", v604, v605);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameterfvEXT = sub_29AB0F644("glConvolutionParameterfvEXT", v606, v607);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameteri = sub_29AB0F644("glConvolutionParameteri", v608, v609);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameteriEXT = sub_29AB0F644("glConvolutionParameteriEXT", v610, v611);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameteriv = sub_29AB0F644("glConvolutionParameteriv", v612, v613);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glConvolutionParameterivEXT = sub_29AB0F644("glConvolutionParameterivEXT", v614, v615);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyBufferSubData = sub_29AB0F644("glCopyBufferSubData", v616, v617);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyColorSubTable = sub_29AB0F644("glCopyColorSubTable", v618, v619);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyColorSubTableEXT = sub_29AB0F644("glCopyColorSubTableEXT", v620, v621);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyColorTable = sub_29AB0F644("glCopyColorTable", v622, v623);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyConvolutionFilter1D = sub_29AB0F644("glCopyConvolutionFilter1D", v624, v625);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyConvolutionFilter1DEXT = sub_29AB0F644("glCopyConvolutionFilter1DEXT", v626, v627);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyConvolutionFilter2D = sub_29AB0F644("glCopyConvolutionFilter2D", v628, v629);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyConvolutionFilter2DEXT = sub_29AB0F644("glCopyConvolutionFilter2DEXT", v630, v631);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyImageSubData = sub_29AB0F644("glCopyImageSubData", v632, v633);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyImageSubDataNV = sub_29AB0F644("glCopyImageSubDataNV", v634, v635);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyMultiTexImage1DEXT = sub_29AB0F644("glCopyMultiTexImage1DEXT", v636, v637);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyMultiTexImage2DEXT = sub_29AB0F644("glCopyMultiTexImage2DEXT", v638, v639);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyMultiTexSubImage1DEXT = sub_29AB0F644("glCopyMultiTexSubImage1DEXT", v640, v641);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyMultiTexSubImage2DEXT = sub_29AB0F644("glCopyMultiTexSubImage2DEXT", v642, v643);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyMultiTexSubImage3DEXT = sub_29AB0F644("glCopyMultiTexSubImage3DEXT", v644, v645);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyNamedBufferSubData = sub_29AB0F644("glCopyNamedBufferSubData", v646, v647);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyPathNV = sub_29AB0F644("glCopyPathNV", v648, v649);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyPixels = sub_29AB0F644("glCopyPixels", v650, v651);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexImage1D = sub_29AB0F644("glCopyTexImage1D", v652, v653);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexImage1DEXT = sub_29AB0F644("glCopyTexImage1DEXT", v654, v655);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexImage2D = sub_29AB0F644("glCopyTexImage2D", v656, v657);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexImage2DEXT = sub_29AB0F644("glCopyTexImage2DEXT", v658, v659);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexSubImage1D = sub_29AB0F644("glCopyTexSubImage1D", v660, v661);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexSubImage1DEXT = sub_29AB0F644("glCopyTexSubImage1DEXT", v662, v663);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexSubImage2D = sub_29AB0F644("glCopyTexSubImage2D", v664, v665);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexSubImage2DEXT = sub_29AB0F644("glCopyTexSubImage2DEXT", v666, v667);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexSubImage3D = sub_29AB0F644("glCopyTexSubImage3D", v668, v669);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTexSubImage3DEXT = sub_29AB0F644("glCopyTexSubImage3DEXT", v670, v671);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureImage1DEXT = sub_29AB0F644("glCopyTextureImage1DEXT", v672, v673);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureImage2DEXT = sub_29AB0F644("glCopyTextureImage2DEXT", v674, v675);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureSubImage1D = sub_29AB0F644("glCopyTextureSubImage1D", v676, v677);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureSubImage1DEXT = sub_29AB0F644("glCopyTextureSubImage1DEXT", v678, v679);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureSubImage2D = sub_29AB0F644("glCopyTextureSubImage2D", v680, v681);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureSubImage2DEXT = sub_29AB0F644("glCopyTextureSubImage2DEXT", v682, v683);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureSubImage3D = sub_29AB0F644("glCopyTextureSubImage3D", v684, v685);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyTextureSubImage3DEXT = sub_29AB0F644("glCopyTextureSubImage3DEXT", v686, v687);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCoverFillPathInstancedNV = sub_29AB0F644("glCoverFillPathInstancedNV", v688, v689);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCoverFillPathNV = sub_29AB0F644("glCoverFillPathNV", v690, v691);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCoverStrokePathInstancedNV = sub_29AB0F644("glCoverStrokePathInstancedNV", v692, v693);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCoverStrokePathNV = sub_29AB0F644("glCoverStrokePathNV", v694, v695);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCoverageModulationNV = sub_29AB0F644("glCoverageModulationNV", v696, v697);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCoverageModulationTableNV = sub_29AB0F644("glCoverageModulationTableNV", v698, v699);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateBuffers = sub_29AB0F644("glCreateBuffers", v700, v701);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateCommandListsNV = sub_29AB0F644("glCreateCommandListsNV", v702, v703);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateFramebuffers = sub_29AB0F644("glCreateFramebuffers", v704, v705);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateMemoryObjectsEXT = sub_29AB0F644("glCreateMemoryObjectsEXT", v706, v707);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreatePerfQueryINTEL = sub_29AB0F644("glCreatePerfQueryINTEL", v708, v709);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateProgram = sub_29AB0F644("glCreateProgram", v710, v711);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateProgramObjectARB = sub_29AB0F644("glCreateProgramObjectARB", v712, v713);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateProgramPipelines = sub_29AB0F644("glCreateProgramPipelines", v714, v715);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateProgressFenceNVX = sub_29AB0F644("glCreateProgressFenceNVX", v716, v717);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateQueries = sub_29AB0F644("glCreateQueries", v718, v719);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateRenderbuffers = sub_29AB0F644("glCreateRenderbuffers", v720, v721);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateSamplers = sub_29AB0F644("glCreateSamplers", v722, v723);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateSemaphoresNV = sub_29AB0F644("glCreateSemaphoresNV", v724, v725);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateShader = sub_29AB0F644("glCreateShader", v726, v727);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateShaderObjectARB = sub_29AB0F644("glCreateShaderObjectARB", v728, v729);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateShaderProgramEXT = sub_29AB0F644("glCreateShaderProgramEXT", v730, v731);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateShaderProgramv = sub_29AB0F644("glCreateShaderProgramv", v732, v733);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateShaderProgramvEXT = sub_29AB0F644("glCreateShaderProgramvEXT", v734, v735);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateStatesNV = sub_29AB0F644("glCreateStatesNV", v736, v737);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateSyncFromCLeventARB = sub_29AB0F644("glCreateSyncFromCLeventARB", v738, v739);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateTextures = sub_29AB0F644("glCreateTextures", v740, v741);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateTransformFeedbacks = sub_29AB0F644("glCreateTransformFeedbacks", v742, v743);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateVertexArrays = sub_29AB0F644("glCreateVertexArrays", v744, v745);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCullFace = sub_29AB0F644("glCullFace", v746, v747);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCullParameterdvEXT = sub_29AB0F644("glCullParameterdvEXT", v748, v749);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCullParameterfvEXT = sub_29AB0F644("glCullParameterfvEXT", v750, v751);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCurrentPaletteMatrixARB = sub_29AB0F644("glCurrentPaletteMatrixARB", v752, v753);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageCallback = sub_29AB0F644("glDebugMessageCallback", v754, v755);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageCallbackAMD = sub_29AB0F644("glDebugMessageCallbackAMD", v756, v757);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageCallbackARB = sub_29AB0F644("glDebugMessageCallbackARB", v758, v759);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageCallbackKHR = sub_29AB0F644("glDebugMessageCallbackKHR", v760, v761);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageControl = sub_29AB0F644("glDebugMessageControl", v762, v763);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageControlARB = sub_29AB0F644("glDebugMessageControlARB", v764, v765);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageControlKHR = sub_29AB0F644("glDebugMessageControlKHR", v766, v767);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageEnableAMD = sub_29AB0F644("glDebugMessageEnableAMD", v768, v769);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageInsert = sub_29AB0F644("glDebugMessageInsert", v770, v771);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageInsertAMD = sub_29AB0F644("glDebugMessageInsertAMD", v772, v773);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageInsertARB = sub_29AB0F644("glDebugMessageInsertARB", v774, v775);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageInsertKHR = sub_29AB0F644("glDebugMessageInsertKHR", v776, v777);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteBuffers = sub_29AB0F644("glDeleteBuffers", v778, v779);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteBuffersARB = sub_29AB0F644("glDeleteBuffersARB", v780, v781);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteCommandListsNV = sub_29AB0F644("glDeleteCommandListsNV", v782, v783);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFencesAPPLE = sub_29AB0F644("glDeleteFencesAPPLE", v784, v785);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFencesNV = sub_29AB0F644("glDeleteFencesNV", v786, v787);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFramebuffers = sub_29AB0F644("glDeleteFramebuffers", v788, v789);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFramebuffersEXT = sub_29AB0F644("glDeleteFramebuffersEXT", v790, v791);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteLists = sub_29AB0F644("glDeleteLists", v792, v793);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteMemoryObjectsEXT = sub_29AB0F644("glDeleteMemoryObjectsEXT", v794, v795);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteNamedStringARB = sub_29AB0F644("glDeleteNamedStringARB", v796, v797);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteNamesAMD = sub_29AB0F644("glDeleteNamesAMD", v798, v799);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteObjectARB = sub_29AB0F644("glDeleteObjectARB", v800, v801);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteOcclusionQueriesNV = sub_29AB0F644("glDeleteOcclusionQueriesNV", v802, v803);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeletePathsNV = sub_29AB0F644("glDeletePathsNV", v804, v805);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeletePerfMonitorsAMD = sub_29AB0F644("glDeletePerfMonitorsAMD", v806, v807);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeletePerfQueryINTEL = sub_29AB0F644("glDeletePerfQueryINTEL", v808, v809);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgram = sub_29AB0F644("glDeleteProgram", v810, v811);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgramPipelines = sub_29AB0F644("glDeleteProgramPipelines", v812, v813);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgramPipelinesEXT = sub_29AB0F644("glDeleteProgramPipelinesEXT", v814, v815);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgramsARB = sub_29AB0F644("glDeleteProgramsARB", v816, v817);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgramsNV = sub_29AB0F644("glDeleteProgramsNV", v818, v819);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteQueries = sub_29AB0F644("glDeleteQueries", v820, v821);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteQueriesARB = sub_29AB0F644("glDeleteQueriesARB", v822, v823);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteQueryResourceTagNV = sub_29AB0F644("glDeleteQueryResourceTagNV", v824, v825);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteRenderbuffers = sub_29AB0F644("glDeleteRenderbuffers", v826, v827);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteRenderbuffersEXT = sub_29AB0F644("glDeleteRenderbuffersEXT", v828, v829);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteSamplers = sub_29AB0F644("glDeleteSamplers", v830, v831);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteSemaphoresEXT = sub_29AB0F644("glDeleteSemaphoresEXT", v832, v833);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteShader = sub_29AB0F644("glDeleteShader", v834, v835);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteStatesNV = sub_29AB0F644("glDeleteStatesNV", v836, v837);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteSync = sub_29AB0F644("glDeleteSync", v838, v839);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTextures = sub_29AB0F644("glDeleteTextures", v840, v841);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTexturesEXT = sub_29AB0F644("glDeleteTexturesEXT", v842, v843);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTransformFeedbacks = sub_29AB0F644("glDeleteTransformFeedbacks", v844, v845);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTransformFeedbacksNV = sub_29AB0F644("glDeleteTransformFeedbacksNV", v846, v847);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteVertexArrays = sub_29AB0F644("glDeleteVertexArrays", v848, v849);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteVertexArraysAPPLE = sub_29AB0F644("glDeleteVertexArraysAPPLE", v850, v851);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteVertexShaderEXT = sub_29AB0F644("glDeleteVertexShaderEXT", v852, v853);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthBoundsEXT = sub_29AB0F644("glDepthBoundsEXT", v854, v855);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthBoundsdNV = sub_29AB0F644("glDepthBoundsdNV", v856, v857);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc = sub_29AB0F644("glDepthFunc", v858, v859);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask = sub_29AB0F644("glDepthMask", v860, v861);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRange = sub_29AB0F644("glDepthRange", v862, v863);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRangeArraydvNV = sub_29AB0F644("glDepthRangeArraydvNV", v864, v865);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRangeArrayv = sub_29AB0F644("glDepthRangeArrayv", v866, v867);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRangeIndexed = sub_29AB0F644("glDepthRangeIndexed", v868, v869);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRangeIndexeddNV = sub_29AB0F644("glDepthRangeIndexeddNV", v870, v871);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRangedNV = sub_29AB0F644("glDepthRangedNV", v872, v873);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRangef = sub_29AB0F644("glDepthRangef", v874, v875);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDetachObjectARB = sub_29AB0F644("glDetachObjectARB", v876, v877);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDetachShader = sub_29AB0F644("glDetachShader", v878, v879);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable = sub_29AB0F644("glDisable", v880, v881);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableClientState = sub_29AB0F644("glDisableClientState", v882, v883);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableClientStateIndexedEXT = sub_29AB0F644("glDisableClientStateIndexedEXT", v884, v885);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableClientStateiEXT = sub_29AB0F644("glDisableClientStateiEXT", v886, v887);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableIndexedEXT = sub_29AB0F644("glDisableIndexedEXT", v888, v889);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVariantClientStateEXT = sub_29AB0F644("glDisableVariantClientStateEXT", v890, v891);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexArrayAttrib = sub_29AB0F644("glDisableVertexArrayAttrib", v892, v893);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexArrayAttribEXT = sub_29AB0F644("glDisableVertexArrayAttribEXT", v894, v895);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexArrayEXT = sub_29AB0F644("glDisableVertexArrayEXT", v896, v897);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribAPPLE = sub_29AB0F644("glDisableVertexAttribAPPLE", v898, v899);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArray = sub_29AB0F644("glDisableVertexAttribArray", v900, v901);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArrayARB = sub_29AB0F644("glDisableVertexAttribArrayARB", v902, v903);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisablei = sub_29AB0F644("glDisablei", v904, v905);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDispatchCompute = sub_29AB0F644("glDispatchCompute", v906, v907);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDispatchComputeGroupSizeARB = sub_29AB0F644("glDispatchComputeGroupSizeARB", v908, v909);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDispatchComputeIndirect = sub_29AB0F644("glDispatchComputeIndirect", v910, v911);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArrays = sub_29AB0F644("glDrawArrays", v912, v913);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysEXT = sub_29AB0F644("glDrawArraysEXT", v914, v915);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysIndirect = sub_29AB0F644("glDrawArraysIndirect", v916, v917);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysInstanced = sub_29AB0F644("glDrawArraysInstanced", v918, v919);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysInstancedARB = sub_29AB0F644("glDrawArraysInstancedARB", v920, v921);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysInstancedBaseInstance = sub_29AB0F644("glDrawArraysInstancedBaseInstance", v922, v923);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysInstancedEXT = sub_29AB0F644("glDrawArraysInstancedEXT", v924, v925);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawBuffer = sub_29AB0F644("glDrawBuffer", v926, v927);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawBuffers = sub_29AB0F644("glDrawBuffers", v928, v929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawBuffersARB = sub_29AB0F644("glDrawBuffersARB", v930, v931);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawCommandsAddressNV = sub_29AB0F644("glDrawCommandsAddressNV", v932, v933);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawCommandsNV = sub_29AB0F644("glDrawCommandsNV", v934, v935);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawCommandsStatesAddressNV = sub_29AB0F644("glDrawCommandsStatesAddressNV", v936, v937);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawCommandsStatesNV = sub_29AB0F644("glDrawCommandsStatesNV", v938, v939);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementArrayAPPLE = sub_29AB0F644("glDrawElementArrayAPPLE", v940, v941);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElements = sub_29AB0F644("glDrawElements", v942, v943);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsBaseVertex = sub_29AB0F644("glDrawElementsBaseVertex", v944, v945);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsIndirect = sub_29AB0F644("glDrawElementsIndirect", v946, v947);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstanced = sub_29AB0F644("glDrawElementsInstanced", v948, v949);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstancedARB = sub_29AB0F644("glDrawElementsInstancedARB", v950, v951);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstancedBaseInstance = sub_29AB0F644("glDrawElementsInstancedBaseInstance", v952, v953);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstancedBaseVertex = sub_29AB0F644("glDrawElementsInstancedBaseVertex", v954, v955);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstancedBaseVertexBaseInstance = sub_29AB0F644("glDrawElementsInstancedBaseVertexBaseInstance", v956, v957);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstancedEXT = sub_29AB0F644("glDrawElementsInstancedEXT", v958, v959);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawMeshTasksNV = sub_29AB0F644("glDrawMeshTasksNV", v960, v961);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawMeshTasksIndirectNV = sub_29AB0F644("glDrawMeshTasksIndirectNV", v962, v963);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawPixels = sub_29AB0F644("glDrawPixels", v964, v965);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawRangeElementArrayAPPLE = sub_29AB0F644("glDrawRangeElementArrayAPPLE", v966, v967);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawRangeElements = sub_29AB0F644("glDrawRangeElements", v968, v969);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawRangeElementsBaseVertex = sub_29AB0F644("glDrawRangeElementsBaseVertex", v970, v971);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawRangeElementsEXT = sub_29AB0F644("glDrawRangeElementsEXT", v972, v973);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawTextureNV = sub_29AB0F644("glDrawTextureNV", v974, v975);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawTransformFeedback = sub_29AB0F644("glDrawTransformFeedback", v976, v977);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawTransformFeedbackInstanced = sub_29AB0F644("glDrawTransformFeedbackInstanced", v978, v979);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawTransformFeedbackNV = sub_29AB0F644("glDrawTransformFeedbackNV", v980, v981);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawTransformFeedbackStream = sub_29AB0F644("glDrawTransformFeedbackStream", v982, v983);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawTransformFeedbackStreamInstanced = sub_29AB0F644("glDrawTransformFeedbackStreamInstanced", v984, v985);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEGLImageTargetTexStorageEXT = sub_29AB0F644("glEGLImageTargetTexStorageEXT", v986, v987);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEGLImageTargetTextureStorageEXT = sub_29AB0F644("glEGLImageTargetTextureStorageEXT", v988, v989);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEdgeFlag = sub_29AB0F644("glEdgeFlag", v990, v991);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEdgeFlagFormatNV = sub_29AB0F644("glEdgeFlagFormatNV", v992, v993);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEdgeFlagPointer = sub_29AB0F644("glEdgeFlagPointer", v994, v995);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEdgeFlagPointerEXT = sub_29AB0F644("glEdgeFlagPointerEXT", v996, v997);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEdgeFlagv = sub_29AB0F644("glEdgeFlagv", v998, v999);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glElementPointerAPPLE = sub_29AB0F644("glElementPointerAPPLE", v1000, v1001);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable = sub_29AB0F644("glEnable", v1002, v1003);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableClientState = sub_29AB0F644("glEnableClientState", v1004, v1005);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableClientStateIndexedEXT = sub_29AB0F644("glEnableClientStateIndexedEXT", v1006, v1007);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableClientStateiEXT = sub_29AB0F644("glEnableClientStateiEXT", v1008, v1009);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableIndexedEXT = sub_29AB0F644("glEnableIndexedEXT", v1010, v1011);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVariantClientStateEXT = sub_29AB0F644("glEnableVariantClientStateEXT", v1012, v1013);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexArrayAttrib = sub_29AB0F644("glEnableVertexArrayAttrib", v1014, v1015);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexArrayAttribEXT = sub_29AB0F644("glEnableVertexArrayAttribEXT", v1016, v1017);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexArrayEXT = sub_29AB0F644("glEnableVertexArrayEXT", v1018, v1019);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribAPPLE = sub_29AB0F644("glEnableVertexAttribAPPLE", v1020, v1021);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray = sub_29AB0F644("glEnableVertexAttribArray", v1022, v1023);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArrayARB = sub_29AB0F644("glEnableVertexAttribArrayARB", v1024, v1025);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnablei = sub_29AB0F644("glEnablei", v1026, v1027);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnd = sub_29AB0F644("glEnd", v1028, v1029);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndConditionalRender = sub_29AB0F644("glEndConditionalRender", v1030, v1031);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndConditionalRenderNV = sub_29AB0F644("glEndConditionalRenderNV", v1032, v1033);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndConditionalRenderNVX = sub_29AB0F644("glEndConditionalRenderNVX", v1034, v1035);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndList = sub_29AB0F644("glEndList", v1036, v1037);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndOcclusionQueryNV = sub_29AB0F644("glEndOcclusionQueryNV", v1038, v1039);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndPerfMonitorAMD = sub_29AB0F644("glEndPerfMonitorAMD", v1040, v1041);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndPerfQueryINTEL = sub_29AB0F644("glEndPerfQueryINTEL", v1042, v1043);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndQuery = sub_29AB0F644("glEndQuery", v1044, v1045);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndQueryARB = sub_29AB0F644("glEndQueryARB", v1046, v1047);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndQueryIndexed = sub_29AB0F644("glEndQueryIndexed", v1048, v1049);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndTransformFeedback = sub_29AB0F644("glEndTransformFeedback", v1050, v1051);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndTransformFeedbackEXT = sub_29AB0F644("glEndTransformFeedbackEXT", v1052, v1053);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndTransformFeedbackNV = sub_29AB0F644("glEndTransformFeedbackNV", v1054, v1055);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndVertexShaderEXT = sub_29AB0F644("glEndVertexShaderEXT", v1056, v1057);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndVideoCaptureNV = sub_29AB0F644("glEndVideoCaptureNV", v1058, v1059);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord1d = sub_29AB0F644("glEvalCoord1d", v1060, v1061);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord1dv = sub_29AB0F644("glEvalCoord1dv", v1062, v1063);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord1f = sub_29AB0F644("glEvalCoord1f", v1064, v1065);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord1fv = sub_29AB0F644("glEvalCoord1fv", v1066, v1067);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord2d = sub_29AB0F644("glEvalCoord2d", v1068, v1069);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord2dv = sub_29AB0F644("glEvalCoord2dv", v1070, v1071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord2f = sub_29AB0F644("glEvalCoord2f", v1072, v1073);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalCoord2fv = sub_29AB0F644("glEvalCoord2fv", v1074, v1075);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalMapsNV = sub_29AB0F644("glEvalMapsNV", v1076, v1077);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalMesh1 = sub_29AB0F644("glEvalMesh1", v1078, v1079);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalMesh2 = sub_29AB0F644("glEvalMesh2", v1080, v1081);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalPoint1 = sub_29AB0F644("glEvalPoint1", v1082, v1083);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvalPoint2 = sub_29AB0F644("glEvalPoint2", v1084, v1085);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEvaluateDepthValuesARB = sub_29AB0F644("glEvaluateDepthValuesARB", v1086, v1087);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glExecuteProgramNV = sub_29AB0F644("glExecuteProgramNV", v1088, v1089);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glExtractComponentEXT = sub_29AB0F644("glExtractComponentEXT", v1090, v1091);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFeedbackBuffer = sub_29AB0F644("glFeedbackBuffer", v1092, v1093);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFenceSync = sub_29AB0F644("glFenceSync", v1094, v1095);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFinalCombinerInputNV = sub_29AB0F644("glFinalCombinerInputNV", v1096, v1097);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFinish = sub_29AB0F644("glFinish", v1098, v1099);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFinishFenceAPPLE = sub_29AB0F644("glFinishFenceAPPLE", v1100, v1101);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFinishFenceNV = sub_29AB0F644("glFinishFenceNV", v1102, v1103);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFinishObjectAPPLE = sub_29AB0F644("glFinishObjectAPPLE", v1104, v1105);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlush = sub_29AB0F644("glFlush", v1106, v1107);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlushMappedBufferRange = sub_29AB0F644("glFlushMappedBufferRange", v1108, v1109);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlushMappedBufferRangeAPPLE = sub_29AB0F644("glFlushMappedBufferRangeAPPLE", v1110, v1111);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlushMappedNamedBufferRange = sub_29AB0F644("glFlushMappedNamedBufferRange", v1112, v1113);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlushMappedNamedBufferRangeEXT = sub_29AB0F644("glFlushMappedNamedBufferRangeEXT", v1114, v1115);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlushPixelDataRangeNV = sub_29AB0F644("glFlushPixelDataRangeNV", v1116, v1117);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlushVertexArrayRangeAPPLE = sub_29AB0F644("glFlushVertexArrayRangeAPPLE", v1118, v1119);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlushVertexArrayRangeNV = sub_29AB0F644("glFlushVertexArrayRangeNV", v1120, v1121);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordFormatNV = sub_29AB0F644("glFogCoordFormatNV", v1122, v1123);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordPointer = sub_29AB0F644("glFogCoordPointer", v1124, v1125);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordPointerEXT = sub_29AB0F644("glFogCoordPointerEXT", v1126, v1127);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordd = sub_29AB0F644("glFogCoordd", v1128, v1129);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoorddEXT = sub_29AB0F644("glFogCoorddEXT", v1130, v1131);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoorddv = sub_29AB0F644("glFogCoorddv", v1132, v1133);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoorddvEXT = sub_29AB0F644("glFogCoorddvEXT", v1134, v1135);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordf = sub_29AB0F644("glFogCoordf", v1136, v1137);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordfEXT = sub_29AB0F644("glFogCoordfEXT", v1138, v1139);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordfv = sub_29AB0F644("glFogCoordfv", v1140, v1141);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordfvEXT = sub_29AB0F644("glFogCoordfvEXT", v1142, v1143);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordhNV = sub_29AB0F644("glFogCoordhNV", v1144, v1145);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogCoordhvNV = sub_29AB0F644("glFogCoordhvNV", v1146, v1147);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogf = sub_29AB0F644("glFogf", v1148, v1149);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogfv = sub_29AB0F644("glFogfv", v1150, v1151);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogi = sub_29AB0F644("glFogi", v1152, v1153);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFogiv = sub_29AB0F644("glFogiv", v1154, v1155);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFragmentCoverageColorNV = sub_29AB0F644("glFragmentCoverageColorNV", v1156, v1157);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferDrawBufferEXT = sub_29AB0F644("glFramebufferDrawBufferEXT", v1158, v1159);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferDrawBuffersEXT = sub_29AB0F644("glFramebufferDrawBuffersEXT", v1160, v1161);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferFetchBarrierEXT = sub_29AB0F644("glFramebufferFetchBarrierEXT", v1162, v1163);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferParameteri = sub_29AB0F644("glFramebufferParameteri", v1164, v1165);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferReadBufferEXT = sub_29AB0F644("glFramebufferReadBufferEXT", v1166, v1167);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferRenderbuffer = sub_29AB0F644("glFramebufferRenderbuffer", v1168, v1169);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferRenderbufferEXT = sub_29AB0F644("glFramebufferRenderbufferEXT", v1170, v1171);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferSampleLocationsfvARB = sub_29AB0F644("glFramebufferSampleLocationsfvARB", v1172, v1173);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferSampleLocationsfvNV = sub_29AB0F644("glFramebufferSampleLocationsfvNV", v1174, v1175);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferSamplePositionsfvAMD = sub_29AB0F644("glFramebufferSamplePositionsfvAMD", v1176, v1177);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture = sub_29AB0F644("glFramebufferTexture", v1178, v1179);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture1D = sub_29AB0F644("glFramebufferTexture1D", v1180, v1181);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture1DEXT = sub_29AB0F644("glFramebufferTexture1DEXT", v1182, v1183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture2D = sub_29AB0F644("glFramebufferTexture2D", v1184, v1185);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture2DEXT = sub_29AB0F644("glFramebufferTexture2DEXT", v1186, v1187);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture3D = sub_29AB0F644("glFramebufferTexture3D", v1188, v1189);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture3DEXT = sub_29AB0F644("glFramebufferTexture3DEXT", v1190, v1191);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTextureARB = sub_29AB0F644("glFramebufferTextureARB", v1192, v1193);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTextureEXT = sub_29AB0F644("glFramebufferTextureEXT", v1194, v1195);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTextureFaceARB = sub_29AB0F644("glFramebufferTextureFaceARB", v1196, v1197);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTextureFaceEXT = sub_29AB0F644("glFramebufferTextureFaceEXT", v1198, v1199);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTextureLayer = sub_29AB0F644("glFramebufferTextureLayer", v1200, v1201);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTextureLayerARB = sub_29AB0F644("glFramebufferTextureLayerARB", v1202, v1203);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTextureLayerEXT = sub_29AB0F644("glFramebufferTextureLayerEXT", v1204, v1205);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFrontFace = sub_29AB0F644("glFrontFace", v1206, v1207);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFrustum = sub_29AB0F644("glFrustum", v1208, v1209);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenBuffers = sub_29AB0F644("glGenBuffers", v1210, v1211);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenBuffersARB = sub_29AB0F644("glGenBuffersARB", v1212, v1213);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenFencesAPPLE = sub_29AB0F644("glGenFencesAPPLE", v1214, v1215);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenFencesNV = sub_29AB0F644("glGenFencesNV", v1216, v1217);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenFramebuffers = sub_29AB0F644("glGenFramebuffers", v1218, v1219);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenFramebuffersEXT = sub_29AB0F644("glGenFramebuffersEXT", v1220, v1221);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenLists = sub_29AB0F644("glGenLists", v1222, v1223);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenNamesAMD = sub_29AB0F644("glGenNamesAMD", v1224, v1225);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenOcclusionQueriesNV = sub_29AB0F644("glGenOcclusionQueriesNV", v1226, v1227);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenPathsNV = sub_29AB0F644("glGenPathsNV", v1228, v1229);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenPerfMonitorsAMD = sub_29AB0F644("glGenPerfMonitorsAMD", v1230, v1231);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenProgramPipelines = sub_29AB0F644("glGenProgramPipelines", v1232, v1233);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenProgramPipelinesEXT = sub_29AB0F644("glGenProgramPipelinesEXT", v1234, v1235);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenProgramsARB = sub_29AB0F644("glGenProgramsARB", v1236, v1237);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenProgramsNV = sub_29AB0F644("glGenProgramsNV", v1238, v1239);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenQueries = sub_29AB0F644("glGenQueries", v1240, v1241);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenQueriesARB = sub_29AB0F644("glGenQueriesARB", v1242, v1243);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenQueryResourceTagNV = sub_29AB0F644("glGenQueryResourceTagNV", v1244, v1245);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenRenderbuffers = sub_29AB0F644("glGenRenderbuffers", v1246, v1247);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenRenderbuffersEXT = sub_29AB0F644("glGenRenderbuffersEXT", v1248, v1249);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenSamplers = sub_29AB0F644("glGenSamplers", v1250, v1251);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenSemaphoresEXT = sub_29AB0F644("glGenSemaphoresEXT", v1252, v1253);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenSymbolsEXT = sub_29AB0F644("glGenSymbolsEXT", v1254, v1255);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTextures = sub_29AB0F644("glGenTextures", v1256, v1257);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTexturesEXT = sub_29AB0F644("glGenTexturesEXT", v1258, v1259);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTransformFeedbacks = sub_29AB0F644("glGenTransformFeedbacks", v1260, v1261);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTransformFeedbacksNV = sub_29AB0F644("glGenTransformFeedbacksNV", v1262, v1263);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenVertexArrays = sub_29AB0F644("glGenVertexArrays", v1264, v1265);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenVertexArraysAPPLE = sub_29AB0F644("glGenVertexArraysAPPLE", v1266, v1267);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenVertexShadersEXT = sub_29AB0F644("glGenVertexShadersEXT", v1268, v1269);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenerateMipmap = sub_29AB0F644("glGenerateMipmap", v1270, v1271);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenerateMipmapEXT = sub_29AB0F644("glGenerateMipmapEXT", v1272, v1273);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenerateMultiTexMipmapEXT = sub_29AB0F644("glGenerateMultiTexMipmapEXT", v1274, v1275);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenerateTextureMipmap = sub_29AB0F644("glGenerateTextureMipmap", v1276, v1277);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenerateTextureMipmapEXT = sub_29AB0F644("glGenerateTextureMipmapEXT", v1278, v1279);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveAtomicCounterBufferiv = sub_29AB0F644("glGetActiveAtomicCounterBufferiv", v1280, v1281);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveAttrib = sub_29AB0F644("glGetActiveAttrib", v1282, v1283);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveAttribARB = sub_29AB0F644("glGetActiveAttribARB", v1284, v1285);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveSubroutineName = sub_29AB0F644("glGetActiveSubroutineName", v1286, v1287);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveSubroutineUniformName = sub_29AB0F644("glGetActiveSubroutineUniformName", v1288, v1289);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveSubroutineUniformiv = sub_29AB0F644("glGetActiveSubroutineUniformiv", v1290, v1291);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniform = sub_29AB0F644("glGetActiveUniform", v1292, v1293);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniformARB = sub_29AB0F644("glGetActiveUniformARB", v1294, v1295);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniformBlockName = sub_29AB0F644("glGetActiveUniformBlockName", v1296, v1297);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniformBlockiv = sub_29AB0F644("glGetActiveUniformBlockiv", v1298, v1299);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniformName = sub_29AB0F644("glGetActiveUniformName", v1300, v1301);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniformsiv = sub_29AB0F644("glGetActiveUniformsiv", v1302, v1303);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveVaryingNV = sub_29AB0F644("glGetActiveVaryingNV", v1304, v1305);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttachedObjectsARB = sub_29AB0F644("glGetAttachedObjectsARB", v1306, v1307);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttachedShaders = sub_29AB0F644("glGetAttachedShaders", v1308, v1309);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttribLocation = sub_29AB0F644("glGetAttribLocation", v1310, v1311);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttribLocationARB = sub_29AB0F644("glGetAttribLocationARB", v1312, v1313);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanIndexedvEXT = sub_29AB0F644("glGetBooleanIndexedvEXT", v1314, v1315);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleani_v = sub_29AB0F644("glGetBooleani_v", v1316, v1317);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv = sub_29AB0F644("glGetBooleanv", v1318, v1319);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferParameteri64v = sub_29AB0F644("glGetBufferParameteri64v", v1320, v1321);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferParameteriv = sub_29AB0F644("glGetBufferParameteriv", v1322, v1323);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferParameterivARB = sub_29AB0F644("glGetBufferParameterivARB", v1324, v1325);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferParameterui64vNV = sub_29AB0F644("glGetBufferParameterui64vNV", v1326, v1327);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferPointerv = sub_29AB0F644("glGetBufferPointerv", v1328, v1329);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferPointervARB = sub_29AB0F644("glGetBufferPointervARB", v1330, v1331);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferSubData = sub_29AB0F644("glGetBufferSubData", v1332, v1333);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBufferSubDataARB = sub_29AB0F644("glGetBufferSubDataARB", v1334, v1335);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetClipPlane = sub_29AB0F644("glGetClipPlane", v1336, v1337);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetColorTable = sub_29AB0F644("glGetColorTable", v1338, v1339);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetColorTableEXT = sub_29AB0F644("glGetColorTableEXT", v1340, v1341);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetColorTableParameterfv = sub_29AB0F644("glGetColorTableParameterfv", v1342, v1343);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetColorTableParameterfvEXT = sub_29AB0F644("glGetColorTableParameterfvEXT", v1344, v1345);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetColorTableParameteriv = sub_29AB0F644("glGetColorTableParameteriv", v1346, v1347);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetColorTableParameterivEXT = sub_29AB0F644("glGetColorTableParameterivEXT", v1348, v1349);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCombinerInputParameterfvNV = sub_29AB0F644("glGetCombinerInputParameterfvNV", v1350, v1351);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCombinerInputParameterivNV = sub_29AB0F644("glGetCombinerInputParameterivNV", v1352, v1353);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCombinerOutputParameterfvNV = sub_29AB0F644("glGetCombinerOutputParameterfvNV", v1354, v1355);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCombinerOutputParameterivNV = sub_29AB0F644("glGetCombinerOutputParameterivNV", v1356, v1357);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCombinerStageParameterfvNV = sub_29AB0F644("glGetCombinerStageParameterfvNV", v1358, v1359);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCommandHeaderNV = sub_29AB0F644("glGetCommandHeaderNV", v1360, v1361);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCompressedMultiTexImageEXT = sub_29AB0F644("glGetCompressedMultiTexImageEXT", v1362, v1363);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCompressedTexImage = sub_29AB0F644("glGetCompressedTexImage", v1364, v1365);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCompressedTexImageARB = sub_29AB0F644("glGetCompressedTexImageARB", v1366, v1367);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCompressedTextureImage = sub_29AB0F644("glGetCompressedTextureImage", v1368, v1369);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCompressedTextureImageEXT = sub_29AB0F644("glGetCompressedTextureImageEXT", v1370, v1371);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCompressedTextureSubImage = sub_29AB0F644("glGetCompressedTextureSubImage", v1372, v1373);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetConvolutionFilter = sub_29AB0F644("glGetConvolutionFilter", v1374, v1375);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetConvolutionFilterEXT = sub_29AB0F644("glGetConvolutionFilterEXT", v1376, v1377);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetConvolutionParameterfv = sub_29AB0F644("glGetConvolutionParameterfv", v1378, v1379);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetConvolutionParameterfvEXT = sub_29AB0F644("glGetConvolutionParameterfvEXT", v1380, v1381);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetConvolutionParameteriv = sub_29AB0F644("glGetConvolutionParameteriv", v1382, v1383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetConvolutionParameterivEXT = sub_29AB0F644("glGetConvolutionParameterivEXT", v1384, v1385);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCoverageModulationTableNV = sub_29AB0F644("glGetCoverageModulationTableNV", v1386, v1387);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDebugMessageLog = sub_29AB0F644("glGetDebugMessageLog", v1388, v1389);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDebugMessageLogAMD = sub_29AB0F644("glGetDebugMessageLogAMD", v1390, v1391);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDebugMessageLogARB = sub_29AB0F644("glGetDebugMessageLogARB", v1392, v1393);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDebugMessageLogKHR = sub_29AB0F644("glGetDebugMessageLogKHR", v1394, v1395);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDoubleIndexedvEXT = sub_29AB0F644("glGetDoubleIndexedvEXT", v1396, v1397);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDoublei_v = sub_29AB0F644("glGetDoublei_v", v1398, v1399);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDoublei_vEXT = sub_29AB0F644("glGetDoublei_vEXT", v1400, v1401);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDoublev = sub_29AB0F644("glGetDoublev", v1402, v1403);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError = sub_29AB0F644("glGetError", v1404, v1405);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFenceivNV = sub_29AB0F644("glGetFenceivNV", v1406, v1407);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFinalCombinerInputParameterfvNV = sub_29AB0F644("glGetFinalCombinerInputParameterfvNV", v1408, v1409);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFinalCombinerInputParameterivNV = sub_29AB0F644("glGetFinalCombinerInputParameterivNV", v1410, v1411);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFirstPerfQueryIdINTEL = sub_29AB0F644("glGetFirstPerfQueryIdINTEL", v1412, v1413);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatIndexedvEXT = sub_29AB0F644("glGetFloatIndexedvEXT", v1414, v1415);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloati_v = sub_29AB0F644("glGetFloati_v", v1416, v1417);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloati_vEXT = sub_29AB0F644("glGetFloati_vEXT", v1418, v1419);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv = sub_29AB0F644("glGetFloatv", v1420, v1421);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFragDataIndex = sub_29AB0F644("glGetFragDataIndex", v1422, v1423);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFragDataLocation = sub_29AB0F644("glGetFragDataLocation", v1424, v1425);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFragDataLocationEXT = sub_29AB0F644("glGetFragDataLocationEXT", v1426, v1427);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFramebufferAttachmentParameteriv = sub_29AB0F644("glGetFramebufferAttachmentParameteriv", v1428, v1429);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFramebufferAttachmentParameterivEXT = sub_29AB0F644("glGetFramebufferAttachmentParameterivEXT", v1430, v1431);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFramebufferParameterfvAMD = sub_29AB0F644("glGetFramebufferParameterfvAMD", v1432, v1433);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFramebufferParameteriv = sub_29AB0F644("glGetFramebufferParameteriv", v1434, v1435);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFramebufferParameterivEXT = sub_29AB0F644("glGetFramebufferParameterivEXT", v1436, v1437);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetGraphicsResetStatus = sub_29AB0F644("glGetGraphicsResetStatus", v1438, v1439);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetGraphicsResetStatusARB = sub_29AB0F644("glGetGraphicsResetStatusARB", v1440, v1441);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetGraphicsResetStatusKHR = sub_29AB0F644("glGetGraphicsResetStatusKHR", v1442, v1443);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetHandleARB = sub_29AB0F644("glGetHandleARB", v1444, v1445);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetHistogram = sub_29AB0F644("glGetHistogram", v1446, v1447);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetHistogramEXT = sub_29AB0F644("glGetHistogramEXT", v1448, v1449);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetHistogramParameterfv = sub_29AB0F644("glGetHistogramParameterfv", v1450, v1451);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetHistogramParameterfvEXT = sub_29AB0F644("glGetHistogramParameterfvEXT", v1452, v1453);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetHistogramParameteriv = sub_29AB0F644("glGetHistogramParameteriv", v1454, v1455);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetHistogramParameterivEXT = sub_29AB0F644("glGetHistogramParameterivEXT", v1456, v1457);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetImageHandleARB = sub_29AB0F644("glGetImageHandleARB", v1458, v1459);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetImageHandleNV = sub_29AB0F644("glGetImageHandleNV", v1460, v1461);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInfoLogARB = sub_29AB0F644("glGetInfoLogARB", v1462, v1463);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInteger64i_v = sub_29AB0F644("glGetInteger64i_v", v1464, v1465);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInteger64v = sub_29AB0F644("glGetInteger64v", v1466, v1467);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerIndexedvEXT = sub_29AB0F644("glGetIntegerIndexedvEXT", v1468, v1469);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegeri_v = sub_29AB0F644("glGetIntegeri_v", v1470, v1471);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerui64i_vNV = sub_29AB0F644("glGetIntegerui64i_vNV", v1472, v1473);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerui64vNV = sub_29AB0F644("glGetIntegerui64vNV", v1474, v1475);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv = sub_29AB0F644("glGetIntegerv", v1476, v1477);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInternalformatSampleivNV = sub_29AB0F644("glGetInternalformatSampleivNV", v1478, v1479);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInternalformati64v = sub_29AB0F644("glGetInternalformati64v", v1480, v1481);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInternalformativ = sub_29AB0F644("glGetInternalformativ", v1482, v1483);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInvariantBooleanvEXT = sub_29AB0F644("glGetInvariantBooleanvEXT", v1484, v1485);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInvariantFloatvEXT = sub_29AB0F644("glGetInvariantFloatvEXT", v1486, v1487);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetInvariantIntegervEXT = sub_29AB0F644("glGetInvariantIntegervEXT", v1488, v1489);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv = sub_29AB0F644("glGetLightfv", v1490, v1491);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightiv = sub_29AB0F644("glGetLightiv", v1492, v1493);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLocalConstantBooleanvEXT = sub_29AB0F644("glGetLocalConstantBooleanvEXT", v1494, v1495);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLocalConstantFloatvEXT = sub_29AB0F644("glGetLocalConstantFloatvEXT", v1496, v1497);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLocalConstantIntegervEXT = sub_29AB0F644("glGetLocalConstantIntegervEXT", v1498, v1499);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapAttribParameterfvNV = sub_29AB0F644("glGetMapAttribParameterfvNV", v1500, v1501);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapAttribParameterivNV = sub_29AB0F644("glGetMapAttribParameterivNV", v1502, v1503);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapControlPointsNV = sub_29AB0F644("glGetMapControlPointsNV", v1504, v1505);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapParameterfvNV = sub_29AB0F644("glGetMapParameterfvNV", v1506, v1507);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapParameterivNV = sub_29AB0F644("glGetMapParameterivNV", v1508, v1509);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapdv = sub_29AB0F644("glGetMapdv", v1510, v1511);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapfv = sub_29AB0F644("glGetMapfv", v1512, v1513);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMapiv = sub_29AB0F644("glGetMapiv", v1514, v1515);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMaterialfv = sub_29AB0F644("glGetMaterialfv", v1516, v1517);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMaterialiv = sub_29AB0F644("glGetMaterialiv", v1518, v1519);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMemoryObjectDetachedResourcesuivNV = sub_29AB0F644("glGetMemoryObjectDetachedResourcesuivNV", v1520, v1521);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMemoryObjectParameterivEXT = sub_29AB0F644("glGetMemoryObjectParameterivEXT", v1522, v1523);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMinmax = sub_29AB0F644("glGetMinmax", v1524, v1525);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMinmaxEXT = sub_29AB0F644("glGetMinmaxEXT", v1526, v1527);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMinmaxParameterfv = sub_29AB0F644("glGetMinmaxParameterfv", v1528, v1529);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMinmaxParameterfvEXT = sub_29AB0F644("glGetMinmaxParameterfvEXT", v1530, v1531);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMinmaxParameteriv = sub_29AB0F644("glGetMinmaxParameteriv", v1532, v1533);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMinmaxParameterivEXT = sub_29AB0F644("glGetMinmaxParameterivEXT", v1534, v1535);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexEnvfvEXT = sub_29AB0F644("glGetMultiTexEnvfvEXT", v1536, v1537);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexEnvivEXT = sub_29AB0F644("glGetMultiTexEnvivEXT", v1538, v1539);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexGendvEXT = sub_29AB0F644("glGetMultiTexGendvEXT", v1540, v1541);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexGenfvEXT = sub_29AB0F644("glGetMultiTexGenfvEXT", v1542, v1543);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexGenivEXT = sub_29AB0F644("glGetMultiTexGenivEXT", v1544, v1545);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexImageEXT = sub_29AB0F644("glGetMultiTexImageEXT", v1546, v1547);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexLevelParameterfvEXT = sub_29AB0F644("glGetMultiTexLevelParameterfvEXT", v1548, v1549);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexLevelParameterivEXT = sub_29AB0F644("glGetMultiTexLevelParameterivEXT", v1550, v1551);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexParameterIivEXT = sub_29AB0F644("glGetMultiTexParameterIivEXT", v1552, v1553);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexParameterIuivEXT = sub_29AB0F644("glGetMultiTexParameterIuivEXT", v1554, v1555);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexParameterfvEXT = sub_29AB0F644("glGetMultiTexParameterfvEXT", v1556, v1557);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultiTexParameterivEXT = sub_29AB0F644("glGetMultiTexParameterivEXT", v1558, v1559);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultisamplefv = sub_29AB0F644("glGetMultisamplefv", v1560, v1561);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMultisamplefvNV = sub_29AB0F644("glGetMultisamplefvNV", v1562, v1563);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferParameteri64v = sub_29AB0F644("glGetNamedBufferParameteri64v", v1564, v1565);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferParameteriv = sub_29AB0F644("glGetNamedBufferParameteriv", v1566, v1567);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferParameterivEXT = sub_29AB0F644("glGetNamedBufferParameterivEXT", v1568, v1569);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferParameterui64vNV = sub_29AB0F644("glGetNamedBufferParameterui64vNV", v1570, v1571);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferPointerv = sub_29AB0F644("glGetNamedBufferPointerv", v1572, v1573);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferPointervEXT = sub_29AB0F644("glGetNamedBufferPointervEXT", v1574, v1575);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferSubData = sub_29AB0F644("glGetNamedBufferSubData", v1576, v1577);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferSubDataEXT = sub_29AB0F644("glGetNamedBufferSubDataEXT", v1578, v1579);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedFramebufferParameterfvAMD = sub_29AB0F644("glGetNamedFramebufferParameterfvAMD", v1580, v1581);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedFramebufferAttachmentParameteriv = sub_29AB0F644("glGetNamedFramebufferAttachmentParameteriv", v1582, v1583);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedFramebufferAttachmentParameterivEXT = sub_29AB0F644("glGetNamedFramebufferAttachmentParameterivEXT", v1584, v1585);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedFramebufferParameteriv = sub_29AB0F644("glGetNamedFramebufferParameteriv", v1586, v1587);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedFramebufferParameterivEXT = sub_29AB0F644("glGetNamedFramebufferParameterivEXT", v1588, v1589);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedProgramLocalParameterIivEXT = sub_29AB0F644("glGetNamedProgramLocalParameterIivEXT", v1590, v1591);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedProgramLocalParameterIuivEXT = sub_29AB0F644("glGetNamedProgramLocalParameterIuivEXT", v1592, v1593);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedProgramLocalParameterdvEXT = sub_29AB0F644("glGetNamedProgramLocalParameterdvEXT", v1594, v1595);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedProgramLocalParameterfvEXT = sub_29AB0F644("glGetNamedProgramLocalParameterfvEXT", v1596, v1597);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedProgramStringEXT = sub_29AB0F644("glGetNamedProgramStringEXT", v1598, v1599);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedProgramivEXT = sub_29AB0F644("glGetNamedProgramivEXT", v1600, v1601);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedRenderbufferParameteriv = sub_29AB0F644("glGetNamedRenderbufferParameteriv", v1602, v1603);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedRenderbufferParameterivEXT = sub_29AB0F644("glGetNamedRenderbufferParameterivEXT", v1604, v1605);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedStringARB = sub_29AB0F644("glGetNamedStringARB", v1606, v1607);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedStringivARB = sub_29AB0F644("glGetNamedStringivARB", v1608, v1609);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNextPerfQueryIdINTEL = sub_29AB0F644("glGetNextPerfQueryIdINTEL", v1610, v1611);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectLabel = sub_29AB0F644("glGetObjectLabel", v1612, v1613);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectLabelEXT = sub_29AB0F644("glGetObjectLabelEXT", v1614, v1615);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectLabelKHR = sub_29AB0F644("glGetObjectLabelKHR", v1616, v1617);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectParameterfvARB = sub_29AB0F644("glGetObjectParameterfvARB", v1618, v1619);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectParameterivAPPLE = sub_29AB0F644("glGetObjectParameterivAPPLE", v1620, v1621);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectParameterivARB = sub_29AB0F644("glGetObjectParameterivARB", v1622, v1623);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectPtrLabel = sub_29AB0F644("glGetObjectPtrLabel", v1624, v1625);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetObjectPtrLabelKHR = sub_29AB0F644("glGetObjectPtrLabelKHR", v1626, v1627);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetOcclusionQueryivNV = sub_29AB0F644("glGetOcclusionQueryivNV", v1628, v1629);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetOcclusionQueryuivNV = sub_29AB0F644("glGetOcclusionQueryuivNV", v1630, v1631);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathColorGenfvNV = sub_29AB0F644("glGetPathColorGenfvNV", v1632, v1633);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathColorGenivNV = sub_29AB0F644("glGetPathColorGenivNV", v1634, v1635);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathCommandsNV = sub_29AB0F644("glGetPathCommandsNV", v1636, v1637);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathCoordsNV = sub_29AB0F644("glGetPathCoordsNV", v1638, v1639);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathDashArrayNV = sub_29AB0F644("glGetPathDashArrayNV", v1640, v1641);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathLengthNV = sub_29AB0F644("glGetPathLengthNV", v1642, v1643);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathMetricRangeNV = sub_29AB0F644("glGetPathMetricRangeNV", v1644, v1645);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathMetricsNV = sub_29AB0F644("glGetPathMetricsNV", v1646, v1647);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathParameterfvNV = sub_29AB0F644("glGetPathParameterfvNV", v1648, v1649);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathParameterivNV = sub_29AB0F644("glGetPathParameterivNV", v1650, v1651);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathSpacingNV = sub_29AB0F644("glGetPathSpacingNV", v1652, v1653);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathTexGenfvNV = sub_29AB0F644("glGetPathTexGenfvNV", v1654, v1655);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPathTexGenivNV = sub_29AB0F644("glGetPathTexGenivNV", v1656, v1657);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfCounterInfoINTEL = sub_29AB0F644("glGetPerfCounterInfoINTEL", v1658, v1659);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfMonitorCounterDataAMD = sub_29AB0F644("glGetPerfMonitorCounterDataAMD", v1660, v1661);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfMonitorCounterInfoAMD = sub_29AB0F644("glGetPerfMonitorCounterInfoAMD", v1662, v1663);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfMonitorCounterStringAMD = sub_29AB0F644("glGetPerfMonitorCounterStringAMD", v1664, v1665);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfMonitorCountersAMD = sub_29AB0F644("glGetPerfMonitorCountersAMD", v1666, v1667);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfMonitorGroupStringAMD = sub_29AB0F644("glGetPerfMonitorGroupStringAMD", v1668, v1669);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfMonitorGroupsAMD = sub_29AB0F644("glGetPerfMonitorGroupsAMD", v1670, v1671);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfQueryDataINTEL = sub_29AB0F644("glGetPerfQueryDataINTEL", v1672, v1673);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfQueryIdByNameINTEL = sub_29AB0F644("glGetPerfQueryIdByNameINTEL", v1674, v1675);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPerfQueryInfoINTEL = sub_29AB0F644("glGetPerfQueryInfoINTEL", v1676, v1677);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPixelMapfv = sub_29AB0F644("glGetPixelMapfv", v1678, v1679);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPixelMapuiv = sub_29AB0F644("glGetPixelMapuiv", v1680, v1681);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPixelMapusv = sub_29AB0F644("glGetPixelMapusv", v1682, v1683);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPixelTransformParameterfvEXT = sub_29AB0F644("glGetPixelTransformParameterfvEXT", v1684, v1685);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPixelTransformParameterivEXT = sub_29AB0F644("glGetPixelTransformParameterivEXT", v1686, v1687);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPointerIndexedvEXT = sub_29AB0F644("glGetPointerIndexedvEXT", v1688, v1689);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPointeri_vEXT = sub_29AB0F644("glGetPointeri_vEXT", v1690, v1691);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPointerv = sub_29AB0F644("glGetPointerv", v1692, v1693);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPointervEXT = sub_29AB0F644("glGetPointervEXT", v1694, v1695);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPointervKHR = sub_29AB0F644("glGetPointervKHR", v1696, v1697);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetPolygonStipple = sub_29AB0F644("glGetPolygonStipple", v1698, v1699);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramBinary = sub_29AB0F644("glGetProgramBinary", v1700, v1701);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramEnvParameterIivNV = sub_29AB0F644("glGetProgramEnvParameterIivNV", v1702, v1703);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramEnvParameterIuivNV = sub_29AB0F644("glGetProgramEnvParameterIuivNV", v1704, v1705);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramEnvParameterdvARB = sub_29AB0F644("glGetProgramEnvParameterdvARB", v1706, v1707);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramEnvParameterfvARB = sub_29AB0F644("glGetProgramEnvParameterfvARB", v1708, v1709);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramInfoLog = sub_29AB0F644("glGetProgramInfoLog", v1710, v1711);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramInterfaceiv = sub_29AB0F644("glGetProgramInterfaceiv", v1712, v1713);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramLocalParameterIivNV = sub_29AB0F644("glGetProgramLocalParameterIivNV", v1714, v1715);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramLocalParameterIuivNV = sub_29AB0F644("glGetProgramLocalParameterIuivNV", v1716, v1717);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramLocalParameterdvARB = sub_29AB0F644("glGetProgramLocalParameterdvARB", v1718, v1719);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramLocalParameterfvARB = sub_29AB0F644("glGetProgramLocalParameterfvARB", v1720, v1721);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramNamedParameterdvNV = sub_29AB0F644("glGetProgramNamedParameterdvNV", v1722, v1723);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramNamedParameterfvNV = sub_29AB0F644("glGetProgramNamedParameterfvNV", v1724, v1725);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramParameterdvNV = sub_29AB0F644("glGetProgramParameterdvNV", v1726, v1727);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramParameterfvNV = sub_29AB0F644("glGetProgramParameterfvNV", v1728, v1729);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramPipelineInfoLog = sub_29AB0F644("glGetProgramPipelineInfoLog", v1730, v1731);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramPipelineInfoLogEXT = sub_29AB0F644("glGetProgramPipelineInfoLogEXT", v1732, v1733);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramPipelineiv = sub_29AB0F644("glGetProgramPipelineiv", v1734, v1735);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramPipelineivEXT = sub_29AB0F644("glGetProgramPipelineivEXT", v1736, v1737);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramResourceIndex = sub_29AB0F644("glGetProgramResourceIndex", v1738, v1739);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramResourceLocation = sub_29AB0F644("glGetProgramResourceLocation", v1740, v1741);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramResourceLocationIndex = sub_29AB0F644("glGetProgramResourceLocationIndex", v1742, v1743);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramResourceName = sub_29AB0F644("glGetProgramResourceName", v1744, v1745);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramResourcefvNV = sub_29AB0F644("glGetProgramResourcefvNV", v1746, v1747);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramResourceiv = sub_29AB0F644("glGetProgramResourceiv", v1748, v1749);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramStageiv = sub_29AB0F644("glGetProgramStageiv", v1750, v1751);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramStringARB = sub_29AB0F644("glGetProgramStringARB", v1752, v1753);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramStringNV = sub_29AB0F644("glGetProgramStringNV", v1754, v1755);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramSubroutineParameteruivNV = sub_29AB0F644("glGetProgramSubroutineParameteruivNV", v1756, v1757);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv = sub_29AB0F644("glGetProgramiv", v1758, v1759);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramivARB = sub_29AB0F644("glGetProgramivARB", v1760, v1761);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramivNV = sub_29AB0F644("glGetProgramivNV", v1762, v1763);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryBufferObjecti64v = sub_29AB0F644("glGetQueryBufferObjecti64v", v1764, v1765);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryBufferObjectiv = sub_29AB0F644("glGetQueryBufferObjectiv", v1766, v1767);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryBufferObjectui64v = sub_29AB0F644("glGetQueryBufferObjectui64v", v1768, v1769);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryBufferObjectuiv = sub_29AB0F644("glGetQueryBufferObjectuiv", v1770, v1771);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryIndexediv = sub_29AB0F644("glGetQueryIndexediv", v1772, v1773);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjecti64v = sub_29AB0F644("glGetQueryObjecti64v", v1774, v1775);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjecti64vEXT = sub_29AB0F644("glGetQueryObjecti64vEXT", v1776, v1777);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjectiv = sub_29AB0F644("glGetQueryObjectiv", v1778, v1779);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjectivARB = sub_29AB0F644("glGetQueryObjectivARB", v1780, v1781);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjectui64v = sub_29AB0F644("glGetQueryObjectui64v", v1782, v1783);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjectui64vEXT = sub_29AB0F644("glGetQueryObjectui64vEXT", v1784, v1785);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjectuiv = sub_29AB0F644("glGetQueryObjectuiv", v1786, v1787);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjectuivARB = sub_29AB0F644("glGetQueryObjectuivARB", v1788, v1789);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryiv = sub_29AB0F644("glGetQueryiv", v1790, v1791);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryivARB = sub_29AB0F644("glGetQueryivARB", v1792, v1793);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetRenderbufferParameteriv = sub_29AB0F644("glGetRenderbufferParameteriv", v1794, v1795);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetRenderbufferParameterivEXT = sub_29AB0F644("glGetRenderbufferParameterivEXT", v1796, v1797);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSamplerParameterIiv = sub_29AB0F644("glGetSamplerParameterIiv", v1798, v1799);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSamplerParameterIuiv = sub_29AB0F644("glGetSamplerParameterIuiv", v1800, v1801);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSamplerParameterfv = sub_29AB0F644("glGetSamplerParameterfv", v1802, v1803);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSamplerParameteriv = sub_29AB0F644("glGetSamplerParameteriv", v1804, v1805);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSemaphoreParameterivNV = sub_29AB0F644("glGetSemaphoreParameterivNV", v1806, v1807);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSemaphoreParameterui64vEXT = sub_29AB0F644("glGetSemaphoreParameterui64vEXT", v1808, v1809);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSeparableFilter = sub_29AB0F644("glGetSeparableFilter", v1810, v1811);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSeparableFilterEXT = sub_29AB0F644("glGetSeparableFilterEXT", v1812, v1813);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShaderInfoLog = sub_29AB0F644("glGetShaderInfoLog", v1814, v1815);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShaderPrecisionFormat = sub_29AB0F644("glGetShaderPrecisionFormat", v1816, v1817);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShaderSource = sub_29AB0F644("glGetShaderSource", v1818, v1819);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShaderSourceARB = sub_29AB0F644("glGetShaderSourceARB", v1820, v1821);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShaderiv = sub_29AB0F644("glGetShaderiv", v1822, v1823);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShadingRateImagePaletteNV = sub_29AB0F644("glGetShadingRateImagePaletteNV", v1824, v1825);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShadingRateSampleLocationivNV = sub_29AB0F644("glGetShadingRateSampleLocationivNV", v1826, v1827);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetStageIndexNV = sub_29AB0F644("glGetStageIndexNV", v1828, v1829);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString = sub_29AB0F644("glGetString", v1830, v1831);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetStringi = sub_29AB0F644("glGetStringi", v1832, v1833);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSubroutineIndex = sub_29AB0F644("glGetSubroutineIndex", v1834, v1835);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSubroutineUniformLocation = sub_29AB0F644("glGetSubroutineUniformLocation", v1836, v1837);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetSynciv = sub_29AB0F644("glGetSynciv", v1838, v1839);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexEnvfv = sub_29AB0F644("glGetTexEnvfv", v1840, v1841);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexEnviv = sub_29AB0F644("glGetTexEnviv", v1842, v1843);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexGendv = sub_29AB0F644("glGetTexGendv", v1844, v1845);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexGenfv = sub_29AB0F644("glGetTexGenfv", v1846, v1847);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexGeniv = sub_29AB0F644("glGetTexGeniv", v1848, v1849);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexImage = sub_29AB0F644("glGetTexImage", v1850, v1851);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexLevelParameterfv = sub_29AB0F644("glGetTexLevelParameterfv", v1852, v1853);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexLevelParameteriv = sub_29AB0F644("glGetTexLevelParameteriv", v1854, v1855);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexParameterIiv = sub_29AB0F644("glGetTexParameterIiv", v1856, v1857);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexParameterIivEXT = sub_29AB0F644("glGetTexParameterIivEXT", v1858, v1859);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexParameterIuiv = sub_29AB0F644("glGetTexParameterIuiv", v1860, v1861);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexParameterIuivEXT = sub_29AB0F644("glGetTexParameterIuivEXT", v1862, v1863);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexParameterPointervAPPLE = sub_29AB0F644("glGetTexParameterPointervAPPLE", v1864, v1865);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexParameterfv = sub_29AB0F644("glGetTexParameterfv", v1866, v1867);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexParameteriv = sub_29AB0F644("glGetTexParameteriv", v1868, v1869);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureHandleARB = sub_29AB0F644("glGetTextureHandleARB", v1870, v1871);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureHandleNV = sub_29AB0F644("glGetTextureHandleNV", v1872, v1873);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureImage = sub_29AB0F644("glGetTextureImage", v1874, v1875);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureImageEXT = sub_29AB0F644("glGetTextureImageEXT", v1876, v1877);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureLevelParameterfv = sub_29AB0F644("glGetTextureLevelParameterfv", v1878, v1879);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureLevelParameterfvEXT = sub_29AB0F644("glGetTextureLevelParameterfvEXT", v1880, v1881);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureLevelParameteriv = sub_29AB0F644("glGetTextureLevelParameteriv", v1882, v1883);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureLevelParameterivEXT = sub_29AB0F644("glGetTextureLevelParameterivEXT", v1884, v1885);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameterIiv = sub_29AB0F644("glGetTextureParameterIiv", v1886, v1887);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameterIivEXT = sub_29AB0F644("glGetTextureParameterIivEXT", v1888, v1889);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameterIuiv = sub_29AB0F644("glGetTextureParameterIuiv", v1890, v1891);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameterIuivEXT = sub_29AB0F644("glGetTextureParameterIuivEXT", v1892, v1893);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameterfv = sub_29AB0F644("glGetTextureParameterfv", v1894, v1895);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameterfvEXT = sub_29AB0F644("glGetTextureParameterfvEXT", v1896, v1897);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameteriv = sub_29AB0F644("glGetTextureParameteriv", v1898, v1899);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureParameterivEXT = sub_29AB0F644("glGetTextureParameterivEXT", v1900, v1901);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureSamplerHandleARB = sub_29AB0F644("glGetTextureSamplerHandleARB", v1902, v1903);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureSamplerHandleNV = sub_29AB0F644("glGetTextureSamplerHandleNV", v1904, v1905);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureSubImage = sub_29AB0F644("glGetTextureSubImage", v1906, v1907);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTrackMatrixivNV = sub_29AB0F644("glGetTrackMatrixivNV", v1908, v1909);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTransformFeedbackVarying = sub_29AB0F644("glGetTransformFeedbackVarying", v1910, v1911);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTransformFeedbackVaryingEXT = sub_29AB0F644("glGetTransformFeedbackVaryingEXT", v1912, v1913);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTransformFeedbackVaryingNV = sub_29AB0F644("glGetTransformFeedbackVaryingNV", v1914, v1915);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTransformFeedbacki64_v = sub_29AB0F644("glGetTransformFeedbacki64_v", v1916, v1917);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTransformFeedbacki_v = sub_29AB0F644("glGetTransformFeedbacki_v", v1918, v1919);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTransformFeedbackiv = sub_29AB0F644("glGetTransformFeedbackiv", v1920, v1921);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformBlockIndex = sub_29AB0F644("glGetUniformBlockIndex", v1922, v1923);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformBufferSizeEXT = sub_29AB0F644("glGetUniformBufferSizeEXT", v1924, v1925);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformIndices = sub_29AB0F644("glGetUniformIndices", v1926, v1927);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocation = sub_29AB0F644("glGetUniformLocation", v1928, v1929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocationARB = sub_29AB0F644("glGetUniformLocationARB", v1930, v1931);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformOffsetEXT = sub_29AB0F644("glGetUniformOffsetEXT", v1932, v1933);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformSubroutineuiv = sub_29AB0F644("glGetUniformSubroutineuiv", v1934, v1935);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformdv = sub_29AB0F644("glGetUniformdv", v1936, v1937);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformfv = sub_29AB0F644("glGetUniformfv", v1938, v1939);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformfvARB = sub_29AB0F644("glGetUniformfvARB", v1940, v1941);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformi64vARB = sub_29AB0F644("glGetUniformi64vARB", v1942, v1943);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformi64vNV = sub_29AB0F644("glGetUniformi64vNV", v1944, v1945);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformiv = sub_29AB0F644("glGetUniformiv", v1946, v1947);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformivARB = sub_29AB0F644("glGetUniformivARB", v1948, v1949);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformui64vARB = sub_29AB0F644("glGetUniformui64vARB", v1950, v1951);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformui64vNV = sub_29AB0F644("glGetUniformui64vNV", v1952, v1953);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformuiv = sub_29AB0F644("glGetUniformuiv", v1954, v1955);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformuivEXT = sub_29AB0F644("glGetUniformuivEXT", v1956, v1957);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUnsignedBytevEXT = sub_29AB0F644("glGetUnsignedBytevEXT", v1958, v1959);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUnsignedBytei_vEXT = sub_29AB0F644("glGetUnsignedBytei_vEXT", v1960, v1961);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVariantBooleanvEXT = sub_29AB0F644("glGetVariantBooleanvEXT", v1962, v1963);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVariantFloatvEXT = sub_29AB0F644("glGetVariantFloatvEXT", v1964, v1965);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVariantIntegervEXT = sub_29AB0F644("glGetVariantIntegervEXT", v1966, v1967);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVariantPointervEXT = sub_29AB0F644("glGetVariantPointervEXT", v1968, v1969);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVaryingLocationNV = sub_29AB0F644("glGetVaryingLocationNV", v1970, v1971);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexArrayIndexed64iv = sub_29AB0F644("glGetVertexArrayIndexed64iv", v1972, v1973);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexArrayIndexediv = sub_29AB0F644("glGetVertexArrayIndexediv", v1974, v1975);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexArrayIntegeri_vEXT = sub_29AB0F644("glGetVertexArrayIntegeri_vEXT", v1976, v1977);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexArrayIntegervEXT = sub_29AB0F644("glGetVertexArrayIntegervEXT", v1978, v1979);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexArrayPointeri_vEXT = sub_29AB0F644("glGetVertexArrayPointeri_vEXT", v1980, v1981);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexArrayPointervEXT = sub_29AB0F644("glGetVertexArrayPointervEXT", v1982, v1983);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexArrayiv = sub_29AB0F644("glGetVertexArrayiv", v1984, v1985);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribIiv = sub_29AB0F644("glGetVertexAttribIiv", v1986, v1987);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribIivEXT = sub_29AB0F644("glGetVertexAttribIivEXT", v1988, v1989);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribIuiv = sub_29AB0F644("glGetVertexAttribIuiv", v1990, v1991);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribIuivEXT = sub_29AB0F644("glGetVertexAttribIuivEXT", v1992, v1993);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribLdv = sub_29AB0F644("glGetVertexAttribLdv", v1994, v1995);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribLdvEXT = sub_29AB0F644("glGetVertexAttribLdvEXT", v1996, v1997);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribLi64vNV = sub_29AB0F644("glGetVertexAttribLi64vNV", v1998, v1999);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribLui64vARB = sub_29AB0F644("glGetVertexAttribLui64vARB", v2000, v2001);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribLui64vNV = sub_29AB0F644("glGetVertexAttribLui64vNV", v2002, v2003);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribPointerv = sub_29AB0F644("glGetVertexAttribPointerv", v2004, v2005);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribPointervARB = sub_29AB0F644("glGetVertexAttribPointervARB", v2006, v2007);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribPointervNV = sub_29AB0F644("glGetVertexAttribPointervNV", v2008, v2009);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribdv = sub_29AB0F644("glGetVertexAttribdv", v2010, v2011);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribdvARB = sub_29AB0F644("glGetVertexAttribdvARB", v2012, v2013);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribdvNV = sub_29AB0F644("glGetVertexAttribdvNV", v2014, v2015);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribfv = sub_29AB0F644("glGetVertexAttribfv", v2016, v2017);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribfvARB = sub_29AB0F644("glGetVertexAttribfvARB", v2018, v2019);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribfvNV = sub_29AB0F644("glGetVertexAttribfvNV", v2020, v2021);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribiv = sub_29AB0F644("glGetVertexAttribiv", v2022, v2023);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribivARB = sub_29AB0F644("glGetVertexAttribivARB", v2024, v2025);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribivNV = sub_29AB0F644("glGetVertexAttribivNV", v2026, v2027);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideoCaptureStreamdvNV = sub_29AB0F644("glGetVideoCaptureStreamdvNV", v2028, v2029);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideoCaptureStreamfvNV = sub_29AB0F644("glGetVideoCaptureStreamfvNV", v2030, v2031);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideoCaptureStreamivNV = sub_29AB0F644("glGetVideoCaptureStreamivNV", v2032, v2033);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideoCaptureivNV = sub_29AB0F644("glGetVideoCaptureivNV", v2034, v2035);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideoi64vNV = sub_29AB0F644("glGetVideoi64vNV", v2036, v2037);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideoivNV = sub_29AB0F644("glGetVideoivNV", v2038, v2039);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideoui64vNV = sub_29AB0F644("glGetVideoui64vNV", v2040, v2041);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVideouivNV = sub_29AB0F644("glGetVideouivNV", v2042, v2043);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnColorTable = sub_29AB0F644("glGetnColorTable", v2044, v2045);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnColorTableARB = sub_29AB0F644("glGetnColorTableARB", v2046, v2047);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnCompressedTexImage = sub_29AB0F644("glGetnCompressedTexImage", v2048, v2049);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnCompressedTexImageARB = sub_29AB0F644("glGetnCompressedTexImageARB", v2050, v2051);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnConvolutionFilter = sub_29AB0F644("glGetnConvolutionFilter", v2052, v2053);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnConvolutionFilterARB = sub_29AB0F644("glGetnConvolutionFilterARB", v2054, v2055);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnHistogram = sub_29AB0F644("glGetnHistogram", v2056, v2057);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnHistogramARB = sub_29AB0F644("glGetnHistogramARB", v2058, v2059);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMapdv = sub_29AB0F644("glGetnMapdv", v2060, v2061);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMapdvARB = sub_29AB0F644("glGetnMapdvARB", v2062, v2063);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMapfv = sub_29AB0F644("glGetnMapfv", v2064, v2065);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMapfvARB = sub_29AB0F644("glGetnMapfvARB", v2066, v2067);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMapiv = sub_29AB0F644("glGetnMapiv", v2068, v2069);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMapivARB = sub_29AB0F644("glGetnMapivARB", v2070, v2071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMinmax = sub_29AB0F644("glGetnMinmax", v2072, v2073);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnMinmaxARB = sub_29AB0F644("glGetnMinmaxARB", v2074, v2075);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPixelMapfv = sub_29AB0F644("glGetnPixelMapfv", v2076, v2077);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPixelMapfvARB = sub_29AB0F644("glGetnPixelMapfvARB", v2078, v2079);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPixelMapuiv = sub_29AB0F644("glGetnPixelMapuiv", v2080, v2081);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPixelMapuivARB = sub_29AB0F644("glGetnPixelMapuivARB", v2082, v2083);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPixelMapusv = sub_29AB0F644("glGetnPixelMapusv", v2084, v2085);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPixelMapusvARB = sub_29AB0F644("glGetnPixelMapusvARB", v2086, v2087);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPolygonStipple = sub_29AB0F644("glGetnPolygonStipple", v2088, v2089);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnPolygonStippleARB = sub_29AB0F644("glGetnPolygonStippleARB", v2090, v2091);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnSeparableFilter = sub_29AB0F644("glGetnSeparableFilter", v2092, v2093);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnSeparableFilterARB = sub_29AB0F644("glGetnSeparableFilterARB", v2094, v2095);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnTexImage = sub_29AB0F644("glGetnTexImage", v2096, v2097);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnTexImageARB = sub_29AB0F644("glGetnTexImageARB", v2098, v2099);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformdv = sub_29AB0F644("glGetnUniformdv", v2100, v2101);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformdvARB = sub_29AB0F644("glGetnUniformdvARB", v2102, v2103);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformfv = sub_29AB0F644("glGetnUniformfv", v2104, v2105);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformfvARB = sub_29AB0F644("glGetnUniformfvARB", v2106, v2107);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformfvKHR = sub_29AB0F644("glGetnUniformfvKHR", v2108, v2109);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformi64vARB = sub_29AB0F644("glGetnUniformi64vARB", v2110, v2111);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformiv = sub_29AB0F644("glGetnUniformiv", v2112, v2113);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformivARB = sub_29AB0F644("glGetnUniformivARB", v2114, v2115);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformivKHR = sub_29AB0F644("glGetnUniformivKHR", v2116, v2117);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformui64vARB = sub_29AB0F644("glGetnUniformui64vARB", v2118, v2119);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformuiv = sub_29AB0F644("glGetnUniformuiv", v2120, v2121);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformuivARB = sub_29AB0F644("glGetnUniformuivARB", v2122, v2123);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetnUniformuivKHR = sub_29AB0F644("glGetnUniformuivKHR", v2124, v2125);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glHint = sub_29AB0F644("glHint", v2126, v2127);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glHistogram = sub_29AB0F644("glHistogram", v2128, v2129);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glHistogramEXT = sub_29AB0F644("glHistogramEXT", v2130, v2131);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glImportMemoryFdEXT = sub_29AB0F644("glImportMemoryFdEXT", v2132, v2133);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glImportMemoryWin32HandleEXT = sub_29AB0F644("glImportMemoryWin32HandleEXT", v2134, v2135);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glImportMemoryWin32NameEXT = sub_29AB0F644("glImportMemoryWin32NameEXT", v2136, v2137);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glImportSemaphoreFdEXT = sub_29AB0F644("glImportSemaphoreFdEXT", v2138, v2139);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glImportSemaphoreWin32HandleEXT = sub_29AB0F644("glImportSemaphoreWin32HandleEXT", v2140, v2141);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glImportSemaphoreWin32NameEXT = sub_29AB0F644("glImportSemaphoreWin32NameEXT", v2142, v2143);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glImportSyncEXT = sub_29AB0F644("glImportSyncEXT", v2144, v2145);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexFormatNV = sub_29AB0F644("glIndexFormatNV", v2146, v2147);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexFuncEXT = sub_29AB0F644("glIndexFuncEXT", v2148, v2149);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexMask = sub_29AB0F644("glIndexMask", v2150, v2151);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexMaterialEXT = sub_29AB0F644("glIndexMaterialEXT", v2152, v2153);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexPointer = sub_29AB0F644("glIndexPointer", v2154, v2155);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexPointerEXT = sub_29AB0F644("glIndexPointerEXT", v2156, v2157);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexd = sub_29AB0F644("glIndexd", v2158, v2159);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexdv = sub_29AB0F644("glIndexdv", v2160, v2161);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexf = sub_29AB0F644("glIndexf", v2162, v2163);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexfv = sub_29AB0F644("glIndexfv", v2164, v2165);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexi = sub_29AB0F644("glIndexi", v2166, v2167);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexiv = sub_29AB0F644("glIndexiv", v2168, v2169);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexs = sub_29AB0F644("glIndexs", v2170, v2171);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexsv = sub_29AB0F644("glIndexsv", v2172, v2173);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexub = sub_29AB0F644("glIndexub", v2174, v2175);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIndexubv = sub_29AB0F644("glIndexubv", v2176, v2177);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInitNames = sub_29AB0F644("glInitNames", v2178, v2179);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInsertComponentEXT = sub_29AB0F644("glInsertComponentEXT", v2180, v2181);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInsertEventMarkerEXT = sub_29AB0F644("glInsertEventMarkerEXT", v2182, v2183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInterleavedArrays = sub_29AB0F644("glInterleavedArrays", v2184, v2185);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInterpolatePathsNV = sub_29AB0F644("glInterpolatePathsNV", v2186, v2187);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateBufferData = sub_29AB0F644("glInvalidateBufferData", v2188, v2189);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateBufferSubData = sub_29AB0F644("glInvalidateBufferSubData", v2190, v2191);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateFramebuffer = sub_29AB0F644("glInvalidateFramebuffer", v2192, v2193);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateNamedFramebufferData = sub_29AB0F644("glInvalidateNamedFramebufferData", v2194, v2195);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateNamedFramebufferSubData = sub_29AB0F644("glInvalidateNamedFramebufferSubData", v2196, v2197);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateSubFramebuffer = sub_29AB0F644("glInvalidateSubFramebuffer", v2198, v2199);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateTexImage = sub_29AB0F644("glInvalidateTexImage", v2200, v2201);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glInvalidateTexSubImage = sub_29AB0F644("glInvalidateTexSubImage", v2202, v2203);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsBuffer = sub_29AB0F644("glIsBuffer", v2204, v2205);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsBufferARB = sub_29AB0F644("glIsBufferARB", v2206, v2207);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsBufferResidentNV = sub_29AB0F644("glIsBufferResidentNV", v2208, v2209);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsCommandListNV = sub_29AB0F644("glIsCommandListNV", v2210, v2211);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsEnabled = sub_29AB0F644("glIsEnabled", v2212, v2213);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsEnabledIndexedEXT = sub_29AB0F644("glIsEnabledIndexedEXT", v2214, v2215);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsEnabledi = sub_29AB0F644("glIsEnabledi", v2216, v2217);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFenceAPPLE = sub_29AB0F644("glIsFenceAPPLE", v2218, v2219);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFenceNV = sub_29AB0F644("glIsFenceNV", v2220, v2221);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer = sub_29AB0F644("glIsFramebuffer", v2222, v2223);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebufferEXT = sub_29AB0F644("glIsFramebufferEXT", v2224, v2225);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsImageHandleResidentARB = sub_29AB0F644("glIsImageHandleResidentARB", v2226, v2227);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsImageHandleResidentNV = sub_29AB0F644("glIsImageHandleResidentNV", v2228, v2229);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsList = sub_29AB0F644("glIsList", v2230, v2231);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsMemoryObjectEXT = sub_29AB0F644("glIsMemoryObjectEXT", v2232, v2233);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsNameAMD = sub_29AB0F644("glIsNameAMD", v2234, v2235);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsNamedBufferResidentNV = sub_29AB0F644("glIsNamedBufferResidentNV", v2236, v2237);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsNamedStringARB = sub_29AB0F644("glIsNamedStringARB", v2238, v2239);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsOcclusionQueryNV = sub_29AB0F644("glIsOcclusionQueryNV", v2240, v2241);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsPathNV = sub_29AB0F644("glIsPathNV", v2242, v2243);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsPointInFillPathNV = sub_29AB0F644("glIsPointInFillPathNV", v2244, v2245);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsPointInStrokePathNV = sub_29AB0F644("glIsPointInStrokePathNV", v2246, v2247);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsProgram = sub_29AB0F644("glIsProgram", v2248, v2249);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsProgramARB = sub_29AB0F644("glIsProgramARB", v2250, v2251);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsProgramNV = sub_29AB0F644("glIsProgramNV", v2252, v2253);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsProgramPipeline = sub_29AB0F644("glIsProgramPipeline", v2254, v2255);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsProgramPipelineEXT = sub_29AB0F644("glIsProgramPipelineEXT", v2256, v2257);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsQuery = sub_29AB0F644("glIsQuery", v2258, v2259);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsQueryARB = sub_29AB0F644("glIsQueryARB", v2260, v2261);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsRenderbuffer = sub_29AB0F644("glIsRenderbuffer", v2262, v2263);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsRenderbufferEXT = sub_29AB0F644("glIsRenderbufferEXT", v2264, v2265);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsSemaphoreEXT = sub_29AB0F644("glIsSemaphoreEXT", v2266, v2267);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsSampler = sub_29AB0F644("glIsSampler", v2268, v2269);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsShader = sub_29AB0F644("glIsShader", v2270, v2271);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsStateNV = sub_29AB0F644("glIsStateNV", v2272, v2273);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsSync = sub_29AB0F644("glIsSync", v2274, v2275);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTexture = sub_29AB0F644("glIsTexture", v2276, v2277);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTextureEXT = sub_29AB0F644("glIsTextureEXT", v2278, v2279);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTextureHandleResidentARB = sub_29AB0F644("glIsTextureHandleResidentARB", v2280, v2281);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTextureHandleResidentNV = sub_29AB0F644("glIsTextureHandleResidentNV", v2282, v2283);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTransformFeedback = sub_29AB0F644("glIsTransformFeedback", v2284, v2285);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTransformFeedbackNV = sub_29AB0F644("glIsTransformFeedbackNV", v2286, v2287);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsVariantEnabledEXT = sub_29AB0F644("glIsVariantEnabledEXT", v2288, v2289);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsVertexArray = sub_29AB0F644("glIsVertexArray", v2290, v2291);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsVertexArrayAPPLE = sub_29AB0F644("glIsVertexArrayAPPLE", v2292, v2293);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsVertexAttribEnabledAPPLE = sub_29AB0F644("glIsVertexAttribEnabledAPPLE", v2294, v2295);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLGPUCopyImageSubDataNVX = sub_29AB0F644("glLGPUCopyImageSubDataNVX", v2296, v2297);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLGPUInterlockNVX = sub_29AB0F644("glLGPUInterlockNVX", v2298, v2299);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLGPUNamedBufferSubDataNVX = sub_29AB0F644("glLGPUNamedBufferSubDataNVX", v2300, v2301);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLabelObjectEXT = sub_29AB0F644("glLabelObjectEXT", v2302, v2303);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLightModelf = sub_29AB0F644("glLightModelf", v2304, v2305);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLightModelfv = sub_29AB0F644("glLightModelfv", v2306, v2307);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLightModeli = sub_29AB0F644("glLightModeli", v2308, v2309);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLightModeliv = sub_29AB0F644("glLightModeliv", v2310, v2311);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLightf = sub_29AB0F644("glLightf", v2312, v2313);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLightfv = sub_29AB0F644("glLightfv", v2314, v2315);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLighti = sub_29AB0F644("glLighti", v2316, v2317);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLightiv = sub_29AB0F644("glLightiv", v2318, v2319);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLineStipple = sub_29AB0F644("glLineStipple", v2320, v2321);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLineWidth = sub_29AB0F644("glLineWidth", v2322, v2323);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLinkProgram = sub_29AB0F644("glLinkProgram", v2324, v2325);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLinkProgramARB = sub_29AB0F644("glLinkProgramARB", v2326, v2327);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glListBase = sub_29AB0F644("glListBase", v2328, v2329);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glListDrawCommandsStatesClientNV = sub_29AB0F644("glListDrawCommandsStatesClientNV", v2330, v2331);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadIdentity = sub_29AB0F644("glLoadIdentity", v2332, v2333);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadMatrixd = sub_29AB0F644("glLoadMatrixd", v2334, v2335);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadMatrixf = sub_29AB0F644("glLoadMatrixf", v2336, v2337);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadName = sub_29AB0F644("glLoadName", v2338, v2339);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadProgramNV = sub_29AB0F644("glLoadProgramNV", v2340, v2341);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadTransposeMatrixd = sub_29AB0F644("glLoadTransposeMatrixd", v2342, v2343);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadTransposeMatrixdARB = sub_29AB0F644("glLoadTransposeMatrixdARB", v2344, v2345);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadTransposeMatrixf = sub_29AB0F644("glLoadTransposeMatrixf", v2346, v2347);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLoadTransposeMatrixfARB = sub_29AB0F644("glLoadTransposeMatrixfARB", v2348, v2349);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLockArraysEXT = sub_29AB0F644("glLockArraysEXT", v2350, v2351);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLogicOp = sub_29AB0F644("glLogicOp", v2352, v2353);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeBufferNonResidentNV = sub_29AB0F644("glMakeBufferNonResidentNV", v2354, v2355);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeBufferResidentNV = sub_29AB0F644("glMakeBufferResidentNV", v2356, v2357);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeImageHandleNonResidentARB = sub_29AB0F644("glMakeImageHandleNonResidentARB", v2358, v2359);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeImageHandleNonResidentNV = sub_29AB0F644("glMakeImageHandleNonResidentNV", v2360, v2361);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeImageHandleResidentARB = sub_29AB0F644("glMakeImageHandleResidentARB", v2362, v2363);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeImageHandleResidentNV = sub_29AB0F644("glMakeImageHandleResidentNV", v2364, v2365);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeNamedBufferNonResidentNV = sub_29AB0F644("glMakeNamedBufferNonResidentNV", v2366, v2367);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeNamedBufferResidentNV = sub_29AB0F644("glMakeNamedBufferResidentNV", v2368, v2369);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeTextureHandleNonResidentARB = sub_29AB0F644("glMakeTextureHandleNonResidentARB", v2370, v2371);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeTextureHandleNonResidentNV = sub_29AB0F644("glMakeTextureHandleNonResidentNV", v2372, v2373);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeTextureHandleResidentARB = sub_29AB0F644("glMakeTextureHandleResidentARB", v2374, v2375);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeTextureHandleResidentNV = sub_29AB0F644("glMakeTextureHandleResidentNV", v2376, v2377);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMap1d = sub_29AB0F644("glMap1d", v2378, v2379);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMap1f = sub_29AB0F644("glMap1f", v2380, v2381);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMap2d = sub_29AB0F644("glMap2d", v2382, v2383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMap2f = sub_29AB0F644("glMap2f", v2384, v2385);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapBuffer = sub_29AB0F644("glMapBuffer", v2386, v2387);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapBufferARB = sub_29AB0F644("glMapBufferARB", v2388, v2389);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapBufferRange = sub_29AB0F644("glMapBufferRange", v2390, v2391);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapControlPointsNV = sub_29AB0F644("glMapControlPointsNV", v2392, v2393);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapGrid1d = sub_29AB0F644("glMapGrid1d", v2394, v2395);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapGrid1f = sub_29AB0F644("glMapGrid1f", v2396, v2397);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapGrid2d = sub_29AB0F644("glMapGrid2d", v2398, v2399);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapGrid2f = sub_29AB0F644("glMapGrid2f", v2400, v2401);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapNamedBuffer = sub_29AB0F644("glMapNamedBuffer", v2402, v2403);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapNamedBufferEXT = sub_29AB0F644("glMapNamedBufferEXT", v2404, v2405);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapNamedBufferRange = sub_29AB0F644("glMapNamedBufferRange", v2406, v2407);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapNamedBufferRangeEXT = sub_29AB0F644("glMapNamedBufferRangeEXT", v2408, v2409);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapParameterfvNV = sub_29AB0F644("glMapParameterfvNV", v2410, v2411);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapParameterivNV = sub_29AB0F644("glMapParameterivNV", v2412, v2413);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapTexture2DINTEL = sub_29AB0F644("glMapTexture2DINTEL", v2414, v2415);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapVertexAttrib1dAPPLE = sub_29AB0F644("glMapVertexAttrib1dAPPLE", v2416, v2417);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapVertexAttrib1fAPPLE = sub_29AB0F644("glMapVertexAttrib1fAPPLE", v2418, v2419);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapVertexAttrib2dAPPLE = sub_29AB0F644("glMapVertexAttrib2dAPPLE", v2420, v2421);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMapVertexAttrib2fAPPLE = sub_29AB0F644("glMapVertexAttrib2fAPPLE", v2422, v2423);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMaterialf = sub_29AB0F644("glMaterialf", v2424, v2425);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMaterialfv = sub_29AB0F644("glMaterialfv", v2426, v2427);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMateriali = sub_29AB0F644("glMateriali", v2428, v2429);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMaterialiv = sub_29AB0F644("glMaterialiv", v2430, v2431);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixFrustumEXT = sub_29AB0F644("glMatrixFrustumEXT", v2432, v2433);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixIndexPointerARB = sub_29AB0F644("glMatrixIndexPointerARB", v2434, v2435);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixIndexubvARB = sub_29AB0F644("glMatrixIndexubvARB", v2436, v2437);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixIndexuivARB = sub_29AB0F644("glMatrixIndexuivARB", v2438, v2439);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixIndexusvARB = sub_29AB0F644("glMatrixIndexusvARB", v2440, v2441);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoad3x2fNV = sub_29AB0F644("glMatrixLoad3x2fNV", v2442, v2443);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoad3x3fNV = sub_29AB0F644("glMatrixLoad3x3fNV", v2444, v2445);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoadIdentityEXT = sub_29AB0F644("glMatrixLoadIdentityEXT", v2446, v2447);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoadTranspose3x3fNV = sub_29AB0F644("glMatrixLoadTranspose3x3fNV", v2448, v2449);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoadTransposedEXT = sub_29AB0F644("glMatrixLoadTransposedEXT", v2450, v2451);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoadTransposefEXT = sub_29AB0F644("glMatrixLoadTransposefEXT", v2452, v2453);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoaddEXT = sub_29AB0F644("glMatrixLoaddEXT", v2454, v2455);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixLoadfEXT = sub_29AB0F644("glMatrixLoadfEXT", v2456, v2457);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMode = sub_29AB0F644("glMatrixMode", v2458, v2459);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMult3x2fNV = sub_29AB0F644("glMatrixMult3x2fNV", v2460, v2461);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMult3x3fNV = sub_29AB0F644("glMatrixMult3x3fNV", v2462, v2463);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMultTranspose3x3fNV = sub_29AB0F644("glMatrixMultTranspose3x3fNV", v2464, v2465);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMultTransposedEXT = sub_29AB0F644("glMatrixMultTransposedEXT", v2466, v2467);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMultTransposefEXT = sub_29AB0F644("glMatrixMultTransposefEXT", v2468, v2469);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMultdEXT = sub_29AB0F644("glMatrixMultdEXT", v2470, v2471);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixMultfEXT = sub_29AB0F644("glMatrixMultfEXT", v2472, v2473);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixOrthoEXT = sub_29AB0F644("glMatrixOrthoEXT", v2474, v2475);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixPopEXT = sub_29AB0F644("glMatrixPopEXT", v2476, v2477);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixPushEXT = sub_29AB0F644("glMatrixPushEXT", v2478, v2479);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixRotatedEXT = sub_29AB0F644("glMatrixRotatedEXT", v2480, v2481);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixRotatefEXT = sub_29AB0F644("glMatrixRotatefEXT", v2482, v2483);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixScaledEXT = sub_29AB0F644("glMatrixScaledEXT", v2484, v2485);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixScalefEXT = sub_29AB0F644("glMatrixScalefEXT", v2486, v2487);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixTranslatedEXT = sub_29AB0F644("glMatrixTranslatedEXT", v2488, v2489);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMatrixTranslatefEXT = sub_29AB0F644("glMatrixTranslatefEXT", v2490, v2491);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMaxShaderCompilerThreadsKHR = sub_29AB0F644("glMaxShaderCompilerThreadsKHR", v2492, v2493);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMaxShaderCompilerThreadsARB = sub_29AB0F644("glMaxShaderCompilerThreadsARB", v2494, v2495);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMemoryBarrier = sub_29AB0F644("glMemoryBarrier", v2496, v2497);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMemoryBarrierByRegion = sub_29AB0F644("glMemoryBarrierByRegion", v2498, v2499);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMemoryBarrierEXT = sub_29AB0F644("glMemoryBarrierEXT", v2500, v2501);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMemoryObjectParameterivEXT = sub_29AB0F644("glMemoryObjectParameterivEXT", v2502, v2503);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMinSampleShading = sub_29AB0F644("glMinSampleShading", v2504, v2505);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMinSampleShadingARB = sub_29AB0F644("glMinSampleShadingARB", v2506, v2507);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMinmax = sub_29AB0F644("glMinmax", v2508, v2509);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMinmaxEXT = sub_29AB0F644("glMinmaxEXT", v2510, v2511);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultMatrixd = sub_29AB0F644("glMultMatrixd", v2512, v2513);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultMatrixf = sub_29AB0F644("glMultMatrixf", v2514, v2515);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultTransposeMatrixd = sub_29AB0F644("glMultTransposeMatrixd", v2516, v2517);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultTransposeMatrixdARB = sub_29AB0F644("glMultTransposeMatrixdARB", v2518, v2519);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultTransposeMatrixf = sub_29AB0F644("glMultTransposeMatrixf", v2520, v2521);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultTransposeMatrixfARB = sub_29AB0F644("glMultTransposeMatrixfARB", v2522, v2523);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArrays = sub_29AB0F644("glMultiDrawArrays", v2524, v2525);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysEXT = sub_29AB0F644("glMultiDrawArraysEXT", v2526, v2527);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirect = sub_29AB0F644("glMultiDrawArraysIndirect", v2528, v2529);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirectAMD = sub_29AB0F644("glMultiDrawArraysIndirectAMD", v2530, v2531);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirectBindlessCountNV = sub_29AB0F644("glMultiDrawArraysIndirectBindlessCountNV", v2532, v2533);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirectBindlessNV = sub_29AB0F644("glMultiDrawArraysIndirectBindlessNV", v2534, v2535);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirectCount = sub_29AB0F644("glMultiDrawArraysIndirectCount", v2536, v2537);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirectCountARB = sub_29AB0F644("glMultiDrawArraysIndirectCountARB", v2538, v2539);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementArrayAPPLE = sub_29AB0F644("glMultiDrawElementArrayAPPLE", v2540, v2541);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElements = sub_29AB0F644("glMultiDrawElements", v2542, v2543);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsBaseVertex = sub_29AB0F644("glMultiDrawElementsBaseVertex", v2544, v2545);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsEXT = sub_29AB0F644("glMultiDrawElementsEXT", v2546, v2547);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirect = sub_29AB0F644("glMultiDrawElementsIndirect", v2548, v2549);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirectAMD = sub_29AB0F644("glMultiDrawElementsIndirectAMD", v2550, v2551);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirectBindlessCountNV = sub_29AB0F644("glMultiDrawElementsIndirectBindlessCountNV", v2552, v2553);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirectBindlessNV = sub_29AB0F644("glMultiDrawElementsIndirectBindlessNV", v2554, v2555);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirectCount = sub_29AB0F644("glMultiDrawElementsIndirectCount", v2556, v2557);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirectCountARB = sub_29AB0F644("glMultiDrawElementsIndirectCountARB", v2558, v2559);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawMeshTasksIndirectNV = sub_29AB0F644("glMultiDrawMeshTasksIndirectNV", v2560, v2561);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawMeshTasksIndirectCountNV = sub_29AB0F644("glMultiDrawMeshTasksIndirectCountNV", v2562, v2563);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawRangeElementArrayAPPLE = sub_29AB0F644("glMultiDrawRangeElementArrayAPPLE", v2564, v2565);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexBufferEXT = sub_29AB0F644("glMultiTexBufferEXT", v2566, v2567);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1d = sub_29AB0F644("glMultiTexCoord1d", v2568, v2569);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1dARB = sub_29AB0F644("glMultiTexCoord1dARB", v2570, v2571);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1dv = sub_29AB0F644("glMultiTexCoord1dv", v2572, v2573);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1dvARB = sub_29AB0F644("glMultiTexCoord1dvARB", v2574, v2575);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1f = sub_29AB0F644("glMultiTexCoord1f", v2576, v2577);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1fARB = sub_29AB0F644("glMultiTexCoord1fARB", v2578, v2579);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1fv = sub_29AB0F644("glMultiTexCoord1fv", v2580, v2581);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1fvARB = sub_29AB0F644("glMultiTexCoord1fvARB", v2582, v2583);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1hNV = sub_29AB0F644("glMultiTexCoord1hNV", v2584, v2585);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1hvNV = sub_29AB0F644("glMultiTexCoord1hvNV", v2586, v2587);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1i = sub_29AB0F644("glMultiTexCoord1i", v2588, v2589);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1iARB = sub_29AB0F644("glMultiTexCoord1iARB", v2590, v2591);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1iv = sub_29AB0F644("glMultiTexCoord1iv", v2592, v2593);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1ivARB = sub_29AB0F644("glMultiTexCoord1ivARB", v2594, v2595);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1s = sub_29AB0F644("glMultiTexCoord1s", v2596, v2597);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1sARB = sub_29AB0F644("glMultiTexCoord1sARB", v2598, v2599);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1sv = sub_29AB0F644("glMultiTexCoord1sv", v2600, v2601);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord1svARB = sub_29AB0F644("glMultiTexCoord1svARB", v2602, v2603);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2d = sub_29AB0F644("glMultiTexCoord2d", v2604, v2605);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2dARB = sub_29AB0F644("glMultiTexCoord2dARB", v2606, v2607);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2dv = sub_29AB0F644("glMultiTexCoord2dv", v2608, v2609);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2dvARB = sub_29AB0F644("glMultiTexCoord2dvARB", v2610, v2611);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2f = sub_29AB0F644("glMultiTexCoord2f", v2612, v2613);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2fARB = sub_29AB0F644("glMultiTexCoord2fARB", v2614, v2615);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2fv = sub_29AB0F644("glMultiTexCoord2fv", v2616, v2617);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2fvARB = sub_29AB0F644("glMultiTexCoord2fvARB", v2618, v2619);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2hNV = sub_29AB0F644("glMultiTexCoord2hNV", v2620, v2621);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2hvNV = sub_29AB0F644("glMultiTexCoord2hvNV", v2622, v2623);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2i = sub_29AB0F644("glMultiTexCoord2i", v2624, v2625);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2iARB = sub_29AB0F644("glMultiTexCoord2iARB", v2626, v2627);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2iv = sub_29AB0F644("glMultiTexCoord2iv", v2628, v2629);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2ivARB = sub_29AB0F644("glMultiTexCoord2ivARB", v2630, v2631);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2s = sub_29AB0F644("glMultiTexCoord2s", v2632, v2633);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2sARB = sub_29AB0F644("glMultiTexCoord2sARB", v2634, v2635);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2sv = sub_29AB0F644("glMultiTexCoord2sv", v2636, v2637);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord2svARB = sub_29AB0F644("glMultiTexCoord2svARB", v2638, v2639);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3d = sub_29AB0F644("glMultiTexCoord3d", v2640, v2641);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3dARB = sub_29AB0F644("glMultiTexCoord3dARB", v2642, v2643);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3dv = sub_29AB0F644("glMultiTexCoord3dv", v2644, v2645);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3dvARB = sub_29AB0F644("glMultiTexCoord3dvARB", v2646, v2647);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3f = sub_29AB0F644("glMultiTexCoord3f", v2648, v2649);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3fARB = sub_29AB0F644("glMultiTexCoord3fARB", v2650, v2651);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3fv = sub_29AB0F644("glMultiTexCoord3fv", v2652, v2653);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3fvARB = sub_29AB0F644("glMultiTexCoord3fvARB", v2654, v2655);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3hNV = sub_29AB0F644("glMultiTexCoord3hNV", v2656, v2657);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3hvNV = sub_29AB0F644("glMultiTexCoord3hvNV", v2658, v2659);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3i = sub_29AB0F644("glMultiTexCoord3i", v2660, v2661);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3iARB = sub_29AB0F644("glMultiTexCoord3iARB", v2662, v2663);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3iv = sub_29AB0F644("glMultiTexCoord3iv", v2664, v2665);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3ivARB = sub_29AB0F644("glMultiTexCoord3ivARB", v2666, v2667);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3s = sub_29AB0F644("glMultiTexCoord3s", v2668, v2669);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3sARB = sub_29AB0F644("glMultiTexCoord3sARB", v2670, v2671);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3sv = sub_29AB0F644("glMultiTexCoord3sv", v2672, v2673);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord3svARB = sub_29AB0F644("glMultiTexCoord3svARB", v2674, v2675);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4d = sub_29AB0F644("glMultiTexCoord4d", v2676, v2677);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4dARB = sub_29AB0F644("glMultiTexCoord4dARB", v2678, v2679);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4dv = sub_29AB0F644("glMultiTexCoord4dv", v2680, v2681);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4dvARB = sub_29AB0F644("glMultiTexCoord4dvARB", v2682, v2683);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4f = sub_29AB0F644("glMultiTexCoord4f", v2684, v2685);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4fARB = sub_29AB0F644("glMultiTexCoord4fARB", v2686, v2687);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4fv = sub_29AB0F644("glMultiTexCoord4fv", v2688, v2689);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4fvARB = sub_29AB0F644("glMultiTexCoord4fvARB", v2690, v2691);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4hNV = sub_29AB0F644("glMultiTexCoord4hNV", v2692, v2693);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4hvNV = sub_29AB0F644("glMultiTexCoord4hvNV", v2694, v2695);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4i = sub_29AB0F644("glMultiTexCoord4i", v2696, v2697);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4iARB = sub_29AB0F644("glMultiTexCoord4iARB", v2698, v2699);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4iv = sub_29AB0F644("glMultiTexCoord4iv", v2700, v2701);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4ivARB = sub_29AB0F644("glMultiTexCoord4ivARB", v2702, v2703);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4s = sub_29AB0F644("glMultiTexCoord4s", v2704, v2705);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4sARB = sub_29AB0F644("glMultiTexCoord4sARB", v2706, v2707);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4sv = sub_29AB0F644("glMultiTexCoord4sv", v2708, v2709);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoord4svARB = sub_29AB0F644("glMultiTexCoord4svARB", v2710, v2711);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP1ui = sub_29AB0F644("glMultiTexCoordP1ui", v2712, v2713);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP1uiv = sub_29AB0F644("glMultiTexCoordP1uiv", v2714, v2715);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP2ui = sub_29AB0F644("glMultiTexCoordP2ui", v2716, v2717);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP2uiv = sub_29AB0F644("glMultiTexCoordP2uiv", v2718, v2719);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP3ui = sub_29AB0F644("glMultiTexCoordP3ui", v2720, v2721);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP3uiv = sub_29AB0F644("glMultiTexCoordP3uiv", v2722, v2723);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP4ui = sub_29AB0F644("glMultiTexCoordP4ui", v2724, v2725);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordP4uiv = sub_29AB0F644("glMultiTexCoordP4uiv", v2726, v2727);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexCoordPointerEXT = sub_29AB0F644("glMultiTexCoordPointerEXT", v2728, v2729);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexEnvfEXT = sub_29AB0F644("glMultiTexEnvfEXT", v2730, v2731);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexEnvfvEXT = sub_29AB0F644("glMultiTexEnvfvEXT", v2732, v2733);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexEnviEXT = sub_29AB0F644("glMultiTexEnviEXT", v2734, v2735);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexEnvivEXT = sub_29AB0F644("glMultiTexEnvivEXT", v2736, v2737);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexGendEXT = sub_29AB0F644("glMultiTexGendEXT", v2738, v2739);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexGendvEXT = sub_29AB0F644("glMultiTexGendvEXT", v2740, v2741);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexGenfEXT = sub_29AB0F644("glMultiTexGenfEXT", v2742, v2743);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexGenfvEXT = sub_29AB0F644("glMultiTexGenfvEXT", v2744, v2745);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexGeniEXT = sub_29AB0F644("glMultiTexGeniEXT", v2746, v2747);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexGenivEXT = sub_29AB0F644("glMultiTexGenivEXT", v2748, v2749);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexImage1DEXT = sub_29AB0F644("glMultiTexImage1DEXT", v2750, v2751);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexImage2DEXT = sub_29AB0F644("glMultiTexImage2DEXT", v2752, v2753);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexImage3DEXT = sub_29AB0F644("glMultiTexImage3DEXT", v2754, v2755);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexParameterIivEXT = sub_29AB0F644("glMultiTexParameterIivEXT", v2756, v2757);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexParameterIuivEXT = sub_29AB0F644("glMultiTexParameterIuivEXT", v2758, v2759);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexParameterfEXT = sub_29AB0F644("glMultiTexParameterfEXT", v2760, v2761);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexParameterfvEXT = sub_29AB0F644("glMultiTexParameterfvEXT", v2762, v2763);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexParameteriEXT = sub_29AB0F644("glMultiTexParameteriEXT", v2764, v2765);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexParameterivEXT = sub_29AB0F644("glMultiTexParameterivEXT", v2766, v2767);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexRenderbufferEXT = sub_29AB0F644("glMultiTexRenderbufferEXT", v2768, v2769);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexSubImage1DEXT = sub_29AB0F644("glMultiTexSubImage1DEXT", v2770, v2771);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexSubImage2DEXT = sub_29AB0F644("glMultiTexSubImage2DEXT", v2772, v2773);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiTexSubImage3DEXT = sub_29AB0F644("glMultiTexSubImage3DEXT", v2774, v2775);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastBarrierNV = sub_29AB0F644("glMulticastBarrierNV", v2776, v2777);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastBlitFramebufferNV = sub_29AB0F644("glMulticastBlitFramebufferNV", v2778, v2779);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastBufferSubDataNV = sub_29AB0F644("glMulticastBufferSubDataNV", v2780, v2781);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastCopyBufferSubDataNV = sub_29AB0F644("glMulticastCopyBufferSubDataNV", v2782, v2783);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastCopyImageSubDataNV = sub_29AB0F644("glMulticastCopyImageSubDataNV", v2784, v2785);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastFramebufferSampleLocationsfvNV = sub_29AB0F644("glMulticastFramebufferSampleLocationsfvNV", v2786, v2787);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastGetQueryObjecti64vNV = sub_29AB0F644("glMulticastGetQueryObjecti64vNV", v2788, v2789);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastGetQueryObjectivNV = sub_29AB0F644("glMulticastGetQueryObjectivNV", v2790, v2791);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastGetQueryObjectui64vNV = sub_29AB0F644("glMulticastGetQueryObjectui64vNV", v2792, v2793);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastGetQueryObjectuivNV = sub_29AB0F644("glMulticastGetQueryObjectuivNV", v2794, v2795);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastScissorArrayvNVX = sub_29AB0F644("glMulticastScissorArrayvNVX", v2796, v2797);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastViewportArrayvNVX = sub_29AB0F644("glMulticastViewportArrayvNVX", v2798, v2799);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastViewportPositionWScaleNVX = sub_29AB0F644("glMulticastViewportPositionWScaleNVX", v2800, v2801);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glMulticastWaitSyncNV = sub_29AB0F644("glMulticastWaitSyncNV", v2802, v2803);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferAttachMemoryNV = sub_29AB0F644("glNamedBufferAttachMemoryNV", v2804, v2805);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferData = sub_29AB0F644("glNamedBufferData", v2806, v2807);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferDataEXT = sub_29AB0F644("glNamedBufferDataEXT", v2808, v2809);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferPageCommitmentARB = sub_29AB0F644("glNamedBufferPageCommitmentARB", v2810, v2811);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferPageCommitmentEXT = sub_29AB0F644("glNamedBufferPageCommitmentEXT", v2812, v2813);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferPageCommitmentMemNV = sub_29AB0F644("glNamedBufferPageCommitmentMemNV", v2814, v2815);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferStorage = sub_29AB0F644("glNamedBufferStorage", v2816, v2817);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferStorageExternalEXT = sub_29AB0F644("glNamedBufferStorageExternalEXT", v2818, v2819);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferStorageEXT = sub_29AB0F644("glNamedBufferStorageEXT", v2820, v2821);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferStorageMemEXT = sub_29AB0F644("glNamedBufferStorageMemEXT", v2822, v2823);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferSubData = sub_29AB0F644("glNamedBufferSubData", v2824, v2825);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferSubDataEXT = sub_29AB0F644("glNamedBufferSubDataEXT", v2826, v2827);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedCopyBufferSubDataEXT = sub_29AB0F644("glNamedCopyBufferSubDataEXT", v2828, v2829);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferDrawBuffer = sub_29AB0F644("glNamedFramebufferDrawBuffer", v2830, v2831);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferDrawBuffers = sub_29AB0F644("glNamedFramebufferDrawBuffers", v2832, v2833);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferParameteri = sub_29AB0F644("glNamedFramebufferParameteri", v2834, v2835);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferParameteriEXT = sub_29AB0F644("glNamedFramebufferParameteriEXT", v2836, v2837);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferReadBuffer = sub_29AB0F644("glNamedFramebufferReadBuffer", v2838, v2839);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferRenderbuffer = sub_29AB0F644("glNamedFramebufferRenderbuffer", v2840, v2841);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferRenderbufferEXT = sub_29AB0F644("glNamedFramebufferRenderbufferEXT", v2842, v2843);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferSampleLocationsfvARB = sub_29AB0F644("glNamedFramebufferSampleLocationsfvARB", v2844, v2845);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferSampleLocationsfvNV = sub_29AB0F644("glNamedFramebufferSampleLocationsfvNV", v2846, v2847);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTexture = sub_29AB0F644("glNamedFramebufferTexture", v2848, v2849);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferSamplePositionsfvAMD = sub_29AB0F644("glNamedFramebufferSamplePositionsfvAMD", v2850, v2851);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTexture1DEXT = sub_29AB0F644("glNamedFramebufferTexture1DEXT", v2852, v2853);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTexture2DEXT = sub_29AB0F644("glNamedFramebufferTexture2DEXT", v2854, v2855);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTexture3DEXT = sub_29AB0F644("glNamedFramebufferTexture3DEXT", v2856, v2857);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTextureEXT = sub_29AB0F644("glNamedFramebufferTextureEXT", v2858, v2859);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTextureFaceEXT = sub_29AB0F644("glNamedFramebufferTextureFaceEXT", v2860, v2861);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTextureLayer = sub_29AB0F644("glNamedFramebufferTextureLayer", v2862, v2863);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedFramebufferTextureLayerEXT = sub_29AB0F644("glNamedFramebufferTextureLayerEXT", v2864, v2865);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameter4dEXT = sub_29AB0F644("glNamedProgramLocalParameter4dEXT", v2866, v2867);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameter4dvEXT = sub_29AB0F644("glNamedProgramLocalParameter4dvEXT", v2868, v2869);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameter4fEXT = sub_29AB0F644("glNamedProgramLocalParameter4fEXT", v2870, v2871);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameter4fvEXT = sub_29AB0F644("glNamedProgramLocalParameter4fvEXT", v2872, v2873);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameterI4iEXT = sub_29AB0F644("glNamedProgramLocalParameterI4iEXT", v2874, v2875);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameterI4ivEXT = sub_29AB0F644("glNamedProgramLocalParameterI4ivEXT", v2876, v2877);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameterI4uiEXT = sub_29AB0F644("glNamedProgramLocalParameterI4uiEXT", v2878, v2879);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameterI4uivEXT = sub_29AB0F644("glNamedProgramLocalParameterI4uivEXT", v2880, v2881);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParameters4fvEXT = sub_29AB0F644("glNamedProgramLocalParameters4fvEXT", v2882, v2883);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParametersI4ivEXT = sub_29AB0F644("glNamedProgramLocalParametersI4ivEXT", v2884, v2885);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramLocalParametersI4uivEXT = sub_29AB0F644("glNamedProgramLocalParametersI4uivEXT", v2886, v2887);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedProgramStringEXT = sub_29AB0F644("glNamedProgramStringEXT", v2888, v2889);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedRenderbufferStorage = sub_29AB0F644("glNamedRenderbufferStorage", v2890, v2891);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedRenderbufferStorageEXT = sub_29AB0F644("glNamedRenderbufferStorageEXT", v2892, v2893);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedRenderbufferStorageMultisample = sub_29AB0F644("glNamedRenderbufferStorageMultisample", v2894, v2895);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedRenderbufferStorageMultisampleAdvancedAMD = sub_29AB0F644("glNamedRenderbufferStorageMultisampleAdvancedAMD", v2896, v2897);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedRenderbufferStorageMultisampleCoverageEXT = sub_29AB0F644("glNamedRenderbufferStorageMultisampleCoverageEXT", v2898, v2899);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedRenderbufferStorageMultisampleEXT = sub_29AB0F644("glNamedRenderbufferStorageMultisampleEXT", v2900, v2901);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedStringARB = sub_29AB0F644("glNamedStringARB", v2902, v2903);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNewList = sub_29AB0F644("glNewList", v2904, v2905);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3b = sub_29AB0F644("glNormal3b", v2906, v2907);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3bv = sub_29AB0F644("glNormal3bv", v2908, v2909);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3d = sub_29AB0F644("glNormal3d", v2910, v2911);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3dv = sub_29AB0F644("glNormal3dv", v2912, v2913);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3f = sub_29AB0F644("glNormal3f", v2914, v2915);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3fv = sub_29AB0F644("glNormal3fv", v2916, v2917);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3hNV = sub_29AB0F644("glNormal3hNV", v2918, v2919);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3hvNV = sub_29AB0F644("glNormal3hvNV", v2920, v2921);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3i = sub_29AB0F644("glNormal3i", v2922, v2923);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3iv = sub_29AB0F644("glNormal3iv", v2924, v2925);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3s = sub_29AB0F644("glNormal3s", v2926, v2927);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormal3sv = sub_29AB0F644("glNormal3sv", v2928, v2929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormalFormatNV = sub_29AB0F644("glNormalFormatNV", v2930, v2931);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormalP3ui = sub_29AB0F644("glNormalP3ui", v2932, v2933);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormalP3uiv = sub_29AB0F644("glNormalP3uiv", v2934, v2935);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormalPointer = sub_29AB0F644("glNormalPointer", v2936, v2937);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormalPointerEXT = sub_29AB0F644("glNormalPointerEXT", v2938, v2939);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNormalPointervINTEL = sub_29AB0F644("glNormalPointervINTEL", v2940, v2941);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectLabel = sub_29AB0F644("glObjectLabel", v2942, v2943);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectLabelKHR = sub_29AB0F644("glObjectLabelKHR", v2944, v2945);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectPtrLabel = sub_29AB0F644("glObjectPtrLabel", v2946, v2947);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectPtrLabelKHR = sub_29AB0F644("glObjectPtrLabelKHR", v2948, v2949);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectPurgeableAPPLE = sub_29AB0F644("glObjectPurgeableAPPLE", v2950, v2951);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectUnpurgeableAPPLE = sub_29AB0F644("glObjectUnpurgeableAPPLE", v2952, v2953);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glOrtho = sub_29AB0F644("glOrtho", v2954, v2955);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPassThrough = sub_29AB0F644("glPassThrough", v2956, v2957);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPatchParameterfv = sub_29AB0F644("glPatchParameterfv", v2958, v2959);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPatchParameteri = sub_29AB0F644("glPatchParameteri", v2960, v2961);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathColorGenNV = sub_29AB0F644("glPathColorGenNV", v2962, v2963);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathCommandsNV = sub_29AB0F644("glPathCommandsNV", v2964, v2965);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathCoordsNV = sub_29AB0F644("glPathCoordsNV", v2966, v2967);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathCoverDepthFuncNV = sub_29AB0F644("glPathCoverDepthFuncNV", v2968, v2969);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathDashArrayNV = sub_29AB0F644("glPathDashArrayNV", v2970, v2971);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathFogGenNV = sub_29AB0F644("glPathFogGenNV", v2972, v2973);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathGlyphIndexArrayNV = sub_29AB0F644("glPathGlyphIndexArrayNV", v2974, v2975);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathGlyphIndexRangeNV = sub_29AB0F644("glPathGlyphIndexRangeNV", v2976, v2977);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathGlyphRangeNV = sub_29AB0F644("glPathGlyphRangeNV", v2978, v2979);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathGlyphsNV = sub_29AB0F644("glPathGlyphsNV", v2980, v2981);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathMemoryGlyphIndexArrayNV = sub_29AB0F644("glPathMemoryGlyphIndexArrayNV", v2982, v2983);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathParameterfNV = sub_29AB0F644("glPathParameterfNV", v2984, v2985);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathParameterfvNV = sub_29AB0F644("glPathParameterfvNV", v2986, v2987);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathParameteriNV = sub_29AB0F644("glPathParameteriNV", v2988, v2989);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathParameterivNV = sub_29AB0F644("glPathParameterivNV", v2990, v2991);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathStencilDepthOffsetNV = sub_29AB0F644("glPathStencilDepthOffsetNV", v2992, v2993);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathStencilFuncNV = sub_29AB0F644("glPathStencilFuncNV", v2994, v2995);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathStringNV = sub_29AB0F644("glPathStringNV", v2996, v2997);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathSubCommandsNV = sub_29AB0F644("glPathSubCommandsNV", v2998, v2999);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathSubCoordsNV = sub_29AB0F644("glPathSubCoordsNV", v3000, v3001);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPathTexGenNV = sub_29AB0F644("glPathTexGenNV", v3002, v3003);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPauseTransformFeedback = sub_29AB0F644("glPauseTransformFeedback", v3004, v3005);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPauseTransformFeedbackNV = sub_29AB0F644("glPauseTransformFeedbackNV", v3006, v3007);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelDataRangeNV = sub_29AB0F644("glPixelDataRangeNV", v3008, v3009);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelMapfv = sub_29AB0F644("glPixelMapfv", v3010, v3011);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelMapuiv = sub_29AB0F644("glPixelMapuiv", v3012, v3013);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelMapusv = sub_29AB0F644("glPixelMapusv", v3014, v3015);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStoref = sub_29AB0F644("glPixelStoref", v3016, v3017);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei = sub_29AB0F644("glPixelStorei", v3018, v3019);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelTransferf = sub_29AB0F644("glPixelTransferf", v3020, v3021);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelTransferi = sub_29AB0F644("glPixelTransferi", v3022, v3023);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelTransformParameterfEXT = sub_29AB0F644("glPixelTransformParameterfEXT", v3024, v3025);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelTransformParameterfvEXT = sub_29AB0F644("glPixelTransformParameterfvEXT", v3026, v3027);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelTransformParameteriEXT = sub_29AB0F644("glPixelTransformParameteriEXT", v3028, v3029);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelTransformParameterivEXT = sub_29AB0F644("glPixelTransformParameterivEXT", v3030, v3031);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelZoom = sub_29AB0F644("glPixelZoom", v3032, v3033);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointAlongPathNV = sub_29AB0F644("glPointAlongPathNV", v3034, v3035);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameterf = sub_29AB0F644("glPointParameterf", v3036, v3037);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameterfARB = sub_29AB0F644("glPointParameterfARB", v3038, v3039);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameterfEXT = sub_29AB0F644("glPointParameterfEXT", v3040, v3041);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameterfv = sub_29AB0F644("glPointParameterfv", v3042, v3043);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameterfvARB = sub_29AB0F644("glPointParameterfvARB", v3044, v3045);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameterfvEXT = sub_29AB0F644("glPointParameterfvEXT", v3046, v3047);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameteri = sub_29AB0F644("glPointParameteri", v3048, v3049);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameteriNV = sub_29AB0F644("glPointParameteriNV", v3050, v3051);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameteriv = sub_29AB0F644("glPointParameteriv", v3052, v3053);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointParameterivNV = sub_29AB0F644("glPointParameterivNV", v3054, v3055);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPointSize = sub_29AB0F644("glPointSize", v3056, v3057);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode = sub_29AB0F644("glPolygonMode", v3058, v3059);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffset = sub_29AB0F644("glPolygonOffset", v3060, v3061);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffsetClamp = sub_29AB0F644("glPolygonOffsetClamp", v3062, v3063);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffsetClampEXT = sub_29AB0F644("glPolygonOffsetClampEXT", v3064, v3065);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffsetEXT = sub_29AB0F644("glPolygonOffsetEXT", v3066, v3067);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonStipple = sub_29AB0F644("glPolygonStipple", v3068, v3069);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopAttrib = sub_29AB0F644("glPopAttrib", v3070, v3071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopClientAttrib = sub_29AB0F644("glPopClientAttrib", v3072, v3073);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroup = sub_29AB0F644("glPopDebugGroup", v3074, v3075);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroupKHR = sub_29AB0F644("glPopDebugGroupKHR", v3076, v3077);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopGroupMarkerEXT = sub_29AB0F644("glPopGroupMarkerEXT", v3078, v3079);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopMatrix = sub_29AB0F644("glPopMatrix", v3080, v3081);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopName = sub_29AB0F644("glPopName", v3082, v3083);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPresentFrameDualFillNV = sub_29AB0F644("glPresentFrameDualFillNV", v3084, v3085);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPresentFrameKeyedNV = sub_29AB0F644("glPresentFrameKeyedNV", v3086, v3087);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPrimitiveBoundingBoxARB = sub_29AB0F644("glPrimitiveBoundingBoxARB", v3088, v3089);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPrimitiveRestartIndex = sub_29AB0F644("glPrimitiveRestartIndex", v3090, v3091);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPrimitiveRestartIndexNV = sub_29AB0F644("glPrimitiveRestartIndexNV", v3092, v3093);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPrimitiveRestartNV = sub_29AB0F644("glPrimitiveRestartNV", v3094, v3095);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPrioritizeTextures = sub_29AB0F644("glPrioritizeTextures", v3096, v3097);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPrioritizeTexturesEXT = sub_29AB0F644("glPrioritizeTexturesEXT", v3098, v3099);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramBinary = sub_29AB0F644("glProgramBinary", v3100, v3101);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramBufferParametersIivNV = sub_29AB0F644("glProgramBufferParametersIivNV", v3102, v3103);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramBufferParametersIuivNV = sub_29AB0F644("glProgramBufferParametersIuivNV", v3104, v3105);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramBufferParametersfvNV = sub_29AB0F644("glProgramBufferParametersfvNV", v3106, v3107);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameter4dARB = sub_29AB0F644("glProgramEnvParameter4dARB", v3108, v3109);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameter4dvARB = sub_29AB0F644("glProgramEnvParameter4dvARB", v3110, v3111);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameter4fARB = sub_29AB0F644("glProgramEnvParameter4fARB", v3112, v3113);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameter4fvARB = sub_29AB0F644("glProgramEnvParameter4fvARB", v3114, v3115);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameterI4iNV = sub_29AB0F644("glProgramEnvParameterI4iNV", v3116, v3117);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameterI4ivNV = sub_29AB0F644("glProgramEnvParameterI4ivNV", v3118, v3119);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameterI4uiNV = sub_29AB0F644("glProgramEnvParameterI4uiNV", v3120, v3121);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameterI4uivNV = sub_29AB0F644("glProgramEnvParameterI4uivNV", v3122, v3123);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParameters4fvEXT = sub_29AB0F644("glProgramEnvParameters4fvEXT", v3124, v3125);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParametersI4ivNV = sub_29AB0F644("glProgramEnvParametersI4ivNV", v3126, v3127);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramEnvParametersI4uivNV = sub_29AB0F644("glProgramEnvParametersI4uivNV", v3128, v3129);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameter4dARB = sub_29AB0F644("glProgramLocalParameter4dARB", v3130, v3131);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameter4dvARB = sub_29AB0F644("glProgramLocalParameter4dvARB", v3132, v3133);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameter4fARB = sub_29AB0F644("glProgramLocalParameter4fARB", v3134, v3135);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameter4fvARB = sub_29AB0F644("glProgramLocalParameter4fvARB", v3136, v3137);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameterI4iNV = sub_29AB0F644("glProgramLocalParameterI4iNV", v3138, v3139);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameterI4ivNV = sub_29AB0F644("glProgramLocalParameterI4ivNV", v3140, v3141);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameterI4uiNV = sub_29AB0F644("glProgramLocalParameterI4uiNV", v3142, v3143);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameterI4uivNV = sub_29AB0F644("glProgramLocalParameterI4uivNV", v3144, v3145);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParameters4fvEXT = sub_29AB0F644("glProgramLocalParameters4fvEXT", v3146, v3147);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParametersI4ivNV = sub_29AB0F644("glProgramLocalParametersI4ivNV", v3148, v3149);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramLocalParametersI4uivNV = sub_29AB0F644("glProgramLocalParametersI4uivNV", v3150, v3151);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramNamedParameter4dNV = sub_29AB0F644("glProgramNamedParameter4dNV", v3152, v3153);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramNamedParameter4dvNV = sub_29AB0F644("glProgramNamedParameter4dvNV", v3154, v3155);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramNamedParameter4fNV = sub_29AB0F644("glProgramNamedParameter4fNV", v3156, v3157);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramNamedParameter4fvNV = sub_29AB0F644("glProgramNamedParameter4fvNV", v3158, v3159);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameter4dNV = sub_29AB0F644("glProgramParameter4dNV", v3160, v3161);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameter4dvNV = sub_29AB0F644("glProgramParameter4dvNV", v3162, v3163);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameter4fNV = sub_29AB0F644("glProgramParameter4fNV", v3164, v3165);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameter4fvNV = sub_29AB0F644("glProgramParameter4fvNV", v3166, v3167);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameteri = sub_29AB0F644("glProgramParameteri", v3168, v3169);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameteriARB = sub_29AB0F644("glProgramParameteriARB", v3170, v3171);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameteriEXT = sub_29AB0F644("glProgramParameteriEXT", v3172, v3173);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameters4dvNV = sub_29AB0F644("glProgramParameters4dvNV", v3174, v3175);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramParameters4fvNV = sub_29AB0F644("glProgramParameters4fvNV", v3176, v3177);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramPathFragmentInputGenNV = sub_29AB0F644("glProgramPathFragmentInputGenNV", v3178, v3179);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramStringARB = sub_29AB0F644("glProgramStringARB", v3180, v3181);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramSubroutineParametersuivNV = sub_29AB0F644("glProgramSubroutineParametersuivNV", v3182, v3183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1d = sub_29AB0F644("glProgramUniform1d", v3184, v3185);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1dEXT = sub_29AB0F644("glProgramUniform1dEXT", v3186, v3187);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1dv = sub_29AB0F644("glProgramUniform1dv", v3188, v3189);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1dvEXT = sub_29AB0F644("glProgramUniform1dvEXT", v3190, v3191);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1f = sub_29AB0F644("glProgramUniform1f", v3192, v3193);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1fEXT = sub_29AB0F644("glProgramUniform1fEXT", v3194, v3195);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1fv = sub_29AB0F644("glProgramUniform1fv", v3196, v3197);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1fvEXT = sub_29AB0F644("glProgramUniform1fvEXT", v3198, v3199);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1i = sub_29AB0F644("glProgramUniform1i", v3200, v3201);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1i64ARB = sub_29AB0F644("glProgramUniform1i64ARB", v3202, v3203);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1i64NV = sub_29AB0F644("glProgramUniform1i64NV", v3204, v3205);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1i64vARB = sub_29AB0F644("glProgramUniform1i64vARB", v3206, v3207);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1i64vNV = sub_29AB0F644("glProgramUniform1i64vNV", v3208, v3209);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1iEXT = sub_29AB0F644("glProgramUniform1iEXT", v3210, v3211);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1iv = sub_29AB0F644("glProgramUniform1iv", v3212, v3213);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1ivEXT = sub_29AB0F644("glProgramUniform1ivEXT", v3214, v3215);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1ui = sub_29AB0F644("glProgramUniform1ui", v3216, v3217);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1ui64ARB = sub_29AB0F644("glProgramUniform1ui64ARB", v3218, v3219);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1ui64NV = sub_29AB0F644("glProgramUniform1ui64NV", v3220, v3221);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1ui64vARB = sub_29AB0F644("glProgramUniform1ui64vARB", v3222, v3223);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1ui64vNV = sub_29AB0F644("glProgramUniform1ui64vNV", v3224, v3225);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1uiEXT = sub_29AB0F644("glProgramUniform1uiEXT", v3226, v3227);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1uiv = sub_29AB0F644("glProgramUniform1uiv", v3228, v3229);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1uivEXT = sub_29AB0F644("glProgramUniform1uivEXT", v3230, v3231);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2d = sub_29AB0F644("glProgramUniform2d", v3232, v3233);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2dEXT = sub_29AB0F644("glProgramUniform2dEXT", v3234, v3235);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2dv = sub_29AB0F644("glProgramUniform2dv", v3236, v3237);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2dvEXT = sub_29AB0F644("glProgramUniform2dvEXT", v3238, v3239);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2f = sub_29AB0F644("glProgramUniform2f", v3240, v3241);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2fEXT = sub_29AB0F644("glProgramUniform2fEXT", v3242, v3243);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2fv = sub_29AB0F644("glProgramUniform2fv", v3244, v3245);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2fvEXT = sub_29AB0F644("glProgramUniform2fvEXT", v3246, v3247);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2i = sub_29AB0F644("glProgramUniform2i", v3248, v3249);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2i64ARB = sub_29AB0F644("glProgramUniform2i64ARB", v3250, v3251);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2i64NV = sub_29AB0F644("glProgramUniform2i64NV", v3252, v3253);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2i64vARB = sub_29AB0F644("glProgramUniform2i64vARB", v3254, v3255);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2i64vNV = sub_29AB0F644("glProgramUniform2i64vNV", v3256, v3257);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2iEXT = sub_29AB0F644("glProgramUniform2iEXT", v3258, v3259);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2iv = sub_29AB0F644("glProgramUniform2iv", v3260, v3261);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2ivEXT = sub_29AB0F644("glProgramUniform2ivEXT", v3262, v3263);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2ui = sub_29AB0F644("glProgramUniform2ui", v3264, v3265);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2ui64ARB = sub_29AB0F644("glProgramUniform2ui64ARB", v3266, v3267);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2ui64NV = sub_29AB0F644("glProgramUniform2ui64NV", v3268, v3269);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2ui64vARB = sub_29AB0F644("glProgramUniform2ui64vARB", v3270, v3271);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2ui64vNV = sub_29AB0F644("glProgramUniform2ui64vNV", v3272, v3273);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2uiEXT = sub_29AB0F644("glProgramUniform2uiEXT", v3274, v3275);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2uiv = sub_29AB0F644("glProgramUniform2uiv", v3276, v3277);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform2uivEXT = sub_29AB0F644("glProgramUniform2uivEXT", v3278, v3279);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3d = sub_29AB0F644("glProgramUniform3d", v3280, v3281);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3dEXT = sub_29AB0F644("glProgramUniform3dEXT", v3282, v3283);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3dv = sub_29AB0F644("glProgramUniform3dv", v3284, v3285);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3dvEXT = sub_29AB0F644("glProgramUniform3dvEXT", v3286, v3287);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3f = sub_29AB0F644("glProgramUniform3f", v3288, v3289);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3fEXT = sub_29AB0F644("glProgramUniform3fEXT", v3290, v3291);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3fv = sub_29AB0F644("glProgramUniform3fv", v3292, v3293);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3fvEXT = sub_29AB0F644("glProgramUniform3fvEXT", v3294, v3295);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3i = sub_29AB0F644("glProgramUniform3i", v3296, v3297);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3i64ARB = sub_29AB0F644("glProgramUniform3i64ARB", v3298, v3299);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3i64NV = sub_29AB0F644("glProgramUniform3i64NV", v3300, v3301);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3i64vARB = sub_29AB0F644("glProgramUniform3i64vARB", v3302, v3303);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3i64vNV = sub_29AB0F644("glProgramUniform3i64vNV", v3304, v3305);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3iEXT = sub_29AB0F644("glProgramUniform3iEXT", v3306, v3307);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3iv = sub_29AB0F644("glProgramUniform3iv", v3308, v3309);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3ivEXT = sub_29AB0F644("glProgramUniform3ivEXT", v3310, v3311);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3ui = sub_29AB0F644("glProgramUniform3ui", v3312, v3313);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3ui64ARB = sub_29AB0F644("glProgramUniform3ui64ARB", v3314, v3315);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3ui64NV = sub_29AB0F644("glProgramUniform3ui64NV", v3316, v3317);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3ui64vARB = sub_29AB0F644("glProgramUniform3ui64vARB", v3318, v3319);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3ui64vNV = sub_29AB0F644("glProgramUniform3ui64vNV", v3320, v3321);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3uiEXT = sub_29AB0F644("glProgramUniform3uiEXT", v3322, v3323);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3uiv = sub_29AB0F644("glProgramUniform3uiv", v3324, v3325);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform3uivEXT = sub_29AB0F644("glProgramUniform3uivEXT", v3326, v3327);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4d = sub_29AB0F644("glProgramUniform4d", v3328, v3329);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4dEXT = sub_29AB0F644("glProgramUniform4dEXT", v3330, v3331);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4dv = sub_29AB0F644("glProgramUniform4dv", v3332, v3333);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4dvEXT = sub_29AB0F644("glProgramUniform4dvEXT", v3334, v3335);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4f = sub_29AB0F644("glProgramUniform4f", v3336, v3337);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4fEXT = sub_29AB0F644("glProgramUniform4fEXT", v3338, v3339);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4fv = sub_29AB0F644("glProgramUniform4fv", v3340, v3341);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4fvEXT = sub_29AB0F644("glProgramUniform4fvEXT", v3342, v3343);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4i = sub_29AB0F644("glProgramUniform4i", v3344, v3345);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4i64ARB = sub_29AB0F644("glProgramUniform4i64ARB", v3346, v3347);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4i64NV = sub_29AB0F644("glProgramUniform4i64NV", v3348, v3349);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4i64vARB = sub_29AB0F644("glProgramUniform4i64vARB", v3350, v3351);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4i64vNV = sub_29AB0F644("glProgramUniform4i64vNV", v3352, v3353);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4iEXT = sub_29AB0F644("glProgramUniform4iEXT", v3354, v3355);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4iv = sub_29AB0F644("glProgramUniform4iv", v3356, v3357);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4ivEXT = sub_29AB0F644("glProgramUniform4ivEXT", v3358, v3359);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4ui = sub_29AB0F644("glProgramUniform4ui", v3360, v3361);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4ui64ARB = sub_29AB0F644("glProgramUniform4ui64ARB", v3362, v3363);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4ui64NV = sub_29AB0F644("glProgramUniform4ui64NV", v3364, v3365);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4ui64vARB = sub_29AB0F644("glProgramUniform4ui64vARB", v3366, v3367);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4ui64vNV = sub_29AB0F644("glProgramUniform4ui64vNV", v3368, v3369);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4uiEXT = sub_29AB0F644("glProgramUniform4uiEXT", v3370, v3371);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4uiv = sub_29AB0F644("glProgramUniform4uiv", v3372, v3373);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform4uivEXT = sub_29AB0F644("glProgramUniform4uivEXT", v3374, v3375);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformHandleui64ARB = sub_29AB0F644("glProgramUniformHandleui64ARB", v3376, v3377);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformHandleui64NV = sub_29AB0F644("glProgramUniformHandleui64NV", v3378, v3379);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformHandleui64vARB = sub_29AB0F644("glProgramUniformHandleui64vARB", v3380, v3381);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformHandleui64vNV = sub_29AB0F644("glProgramUniformHandleui64vNV", v3382, v3383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2dv = sub_29AB0F644("glProgramUniformMatrix2dv", v3384, v3385);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2dvEXT = sub_29AB0F644("glProgramUniformMatrix2dvEXT", v3386, v3387);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2fv = sub_29AB0F644("glProgramUniformMatrix2fv", v3388, v3389);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2fvEXT = sub_29AB0F644("glProgramUniformMatrix2fvEXT", v3390, v3391);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x3dv = sub_29AB0F644("glProgramUniformMatrix2x3dv", v3392, v3393);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x3dvEXT = sub_29AB0F644("glProgramUniformMatrix2x3dvEXT", v3394, v3395);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x3fv = sub_29AB0F644("glProgramUniformMatrix2x3fv", v3396, v3397);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x3fvEXT = sub_29AB0F644("glProgramUniformMatrix2x3fvEXT", v3398, v3399);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x4dv = sub_29AB0F644("glProgramUniformMatrix2x4dv", v3400, v3401);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x4dvEXT = sub_29AB0F644("glProgramUniformMatrix2x4dvEXT", v3402, v3403);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x4fv = sub_29AB0F644("glProgramUniformMatrix2x4fv", v3404, v3405);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix2x4fvEXT = sub_29AB0F644("glProgramUniformMatrix2x4fvEXT", v3406, v3407);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3dv = sub_29AB0F644("glProgramUniformMatrix3dv", v3408, v3409);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3dvEXT = sub_29AB0F644("glProgramUniformMatrix3dvEXT", v3410, v3411);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3fv = sub_29AB0F644("glProgramUniformMatrix3fv", v3412, v3413);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3fvEXT = sub_29AB0F644("glProgramUniformMatrix3fvEXT", v3414, v3415);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x2dv = sub_29AB0F644("glProgramUniformMatrix3x2dv", v3416, v3417);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x2dvEXT = sub_29AB0F644("glProgramUniformMatrix3x2dvEXT", v3418, v3419);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x2fv = sub_29AB0F644("glProgramUniformMatrix3x2fv", v3420, v3421);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x2fvEXT = sub_29AB0F644("glProgramUniformMatrix3x2fvEXT", v3422, v3423);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x4dv = sub_29AB0F644("glProgramUniformMatrix3x4dv", v3424, v3425);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x4dvEXT = sub_29AB0F644("glProgramUniformMatrix3x4dvEXT", v3426, v3427);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x4fv = sub_29AB0F644("glProgramUniformMatrix3x4fv", v3428, v3429);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix3x4fvEXT = sub_29AB0F644("glProgramUniformMatrix3x4fvEXT", v3430, v3431);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4dv = sub_29AB0F644("glProgramUniformMatrix4dv", v3432, v3433);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4dvEXT = sub_29AB0F644("glProgramUniformMatrix4dvEXT", v3434, v3435);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4fv = sub_29AB0F644("glProgramUniformMatrix4fv", v3436, v3437);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4fvEXT = sub_29AB0F644("glProgramUniformMatrix4fvEXT", v3438, v3439);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x2dv = sub_29AB0F644("glProgramUniformMatrix4x2dv", v3440, v3441);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x2dvEXT = sub_29AB0F644("glProgramUniformMatrix4x2dvEXT", v3442, v3443);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x2fv = sub_29AB0F644("glProgramUniformMatrix4x2fv", v3444, v3445);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x2fvEXT = sub_29AB0F644("glProgramUniformMatrix4x2fvEXT", v3446, v3447);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x3dv = sub_29AB0F644("glProgramUniformMatrix4x3dv", v3448, v3449);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x3dvEXT = sub_29AB0F644("glProgramUniformMatrix4x3dvEXT", v3450, v3451);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x3fv = sub_29AB0F644("glProgramUniformMatrix4x3fv", v3452, v3453);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformMatrix4x3fvEXT = sub_29AB0F644("glProgramUniformMatrix4x3fvEXT", v3454, v3455);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformui64NV = sub_29AB0F644("glProgramUniformui64NV", v3456, v3457);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniformui64vNV = sub_29AB0F644("glProgramUniformui64vNV", v3458, v3459);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramVertexLimitNV = sub_29AB0F644("glProgramVertexLimitNV", v3460, v3461);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProvokingVertex = sub_29AB0F644("glProvokingVertex", v3462, v3463);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glProvokingVertexEXT = sub_29AB0F644("glProvokingVertexEXT", v3464, v3465);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushAttrib = sub_29AB0F644("glPushAttrib", v3466, v3467);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushClientAttrib = sub_29AB0F644("glPushClientAttrib", v3468, v3469);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushClientAttribDefaultEXT = sub_29AB0F644("glPushClientAttribDefaultEXT", v3470, v3471);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup = sub_29AB0F644("glPushDebugGroup", v3472, v3473);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroupKHR = sub_29AB0F644("glPushDebugGroupKHR", v3474, v3475);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushGroupMarkerEXT = sub_29AB0F644("glPushGroupMarkerEXT", v3476, v3477);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushMatrix = sub_29AB0F644("glPushMatrix", v3478, v3479);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushName = sub_29AB0F644("glPushName", v3480, v3481);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glQueryCounter = sub_29AB0F644("glQueryCounter", v3482, v3483);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glQueryObjectParameteruiAMD = sub_29AB0F644("glQueryObjectParameteruiAMD", v3484, v3485);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glQueryResourceNV = sub_29AB0F644("glQueryResourceNV", v3486, v3487);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glQueryResourceTagNV = sub_29AB0F644("glQueryResourceTagNV", v3488, v3489);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2d = sub_29AB0F644("glRasterPos2d", v3490, v3491);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2dv = sub_29AB0F644("glRasterPos2dv", v3492, v3493);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2f = sub_29AB0F644("glRasterPos2f", v3494, v3495);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2fv = sub_29AB0F644("glRasterPos2fv", v3496, v3497);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2i = sub_29AB0F644("glRasterPos2i", v3498, v3499);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2iv = sub_29AB0F644("glRasterPos2iv", v3500, v3501);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2s = sub_29AB0F644("glRasterPos2s", v3502, v3503);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos2sv = sub_29AB0F644("glRasterPos2sv", v3504, v3505);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3d = sub_29AB0F644("glRasterPos3d", v3506, v3507);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3dv = sub_29AB0F644("glRasterPos3dv", v3508, v3509);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3f = sub_29AB0F644("glRasterPos3f", v3510, v3511);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3fv = sub_29AB0F644("glRasterPos3fv", v3512, v3513);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3i = sub_29AB0F644("glRasterPos3i", v3514, v3515);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3iv = sub_29AB0F644("glRasterPos3iv", v3516, v3517);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3s = sub_29AB0F644("glRasterPos3s", v3518, v3519);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos3sv = sub_29AB0F644("glRasterPos3sv", v3520, v3521);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4d = sub_29AB0F644("glRasterPos4d", v3522, v3523);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4dv = sub_29AB0F644("glRasterPos4dv", v3524, v3525);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4f = sub_29AB0F644("glRasterPos4f", v3526, v3527);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4fv = sub_29AB0F644("glRasterPos4fv", v3528, v3529);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4i = sub_29AB0F644("glRasterPos4i", v3530, v3531);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4iv = sub_29AB0F644("glRasterPos4iv", v3532, v3533);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4s = sub_29AB0F644("glRasterPos4s", v3534, v3535);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterPos4sv = sub_29AB0F644("glRasterPos4sv", v3536, v3537);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRasterSamplesEXT = sub_29AB0F644("glRasterSamplesEXT", v3538, v3539);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glReadBuffer = sub_29AB0F644("glReadBuffer", v3540, v3541);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glReadPixels = sub_29AB0F644("glReadPixels", v3542, v3543);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glReadnPixels = sub_29AB0F644("glReadnPixels", v3544, v3545);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glReadnPixelsARB = sub_29AB0F644("glReadnPixelsARB", v3546, v3547);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glReadnPixelsKHR = sub_29AB0F644("glReadnPixelsKHR", v3548, v3549);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glReleaseKeyedMutexWin32EXT = sub_29AB0F644("glReleaseKeyedMutexWin32EXT", v3550, v3551);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRectd = sub_29AB0F644("glRectd", v3552, v3553);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRectdv = sub_29AB0F644("glRectdv", v3554, v3555);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRectf = sub_29AB0F644("glRectf", v3556, v3557);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRectfv = sub_29AB0F644("glRectfv", v3558, v3559);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRecti = sub_29AB0F644("glRecti", v3560, v3561);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRectiv = sub_29AB0F644("glRectiv", v3562, v3563);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRects = sub_29AB0F644("glRects", v3564, v3565);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRectsv = sub_29AB0F644("glRectsv", v3566, v3567);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glReleaseShaderCompiler = sub_29AB0F644("glReleaseShaderCompiler", v3568, v3569);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderGpuMaskNV = sub_29AB0F644("glRenderGpuMaskNV", v3570, v3571);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderMode = sub_29AB0F644("glRenderMode", v3572, v3573);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderbufferStorage = sub_29AB0F644("glRenderbufferStorage", v3574, v3575);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderbufferStorageEXT = sub_29AB0F644("glRenderbufferStorageEXT", v3576, v3577);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderbufferStorageMultisample = sub_29AB0F644("glRenderbufferStorageMultisample", v3578, v3579);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderbufferStorageMultisampleAdvancedAMD = sub_29AB0F644("glRenderbufferStorageMultisampleAdvancedAMD", v3580, v3581);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderbufferStorageMultisampleCoverageNV = sub_29AB0F644("glRenderbufferStorageMultisampleCoverageNV", v3582, v3583);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRenderbufferStorageMultisampleEXT = sub_29AB0F644("glRenderbufferStorageMultisampleEXT", v3584, v3585);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRequestResidentProgramsNV = sub_29AB0F644("glRequestResidentProgramsNV", v3586, v3587);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResetHistogram = sub_29AB0F644("glResetHistogram", v3588, v3589);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResetHistogramEXT = sub_29AB0F644("glResetHistogramEXT", v3590, v3591);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResetMemoryObjectParameterNV = sub_29AB0F644("glResetMemoryObjectParameterNV", v3592, v3593);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResetMinmax = sub_29AB0F644("glResetMinmax", v3594, v3595);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResetMinmaxEXT = sub_29AB0F644("glResetMinmaxEXT", v3596, v3597);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResolveDepthValuesNV = sub_29AB0F644("glResolveDepthValuesNV", v3598, v3599);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResumeTransformFeedback = sub_29AB0F644("glResumeTransformFeedback", v3600, v3601);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glResumeTransformFeedbackNV = sub_29AB0F644("glResumeTransformFeedbackNV", v3602, v3603);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRotated = sub_29AB0F644("glRotated", v3604, v3605);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glRotatef = sub_29AB0F644("glRotatef", v3606, v3607);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSampleCoverage = sub_29AB0F644("glSampleCoverage", v3608, v3609);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSampleCoverageARB = sub_29AB0F644("glSampleCoverageARB", v3610, v3611);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSampleMaskEXT = sub_29AB0F644("glSampleMaskEXT", v3612, v3613);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSampleMaskIndexedNV = sub_29AB0F644("glSampleMaskIndexedNV", v3614, v3615);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSampleMaski = sub_29AB0F644("glSampleMaski", v3616, v3617);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplePatternEXT = sub_29AB0F644("glSamplePatternEXT", v3618, v3619);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterIiv = sub_29AB0F644("glSamplerParameterIiv", v3620, v3621);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterIuiv = sub_29AB0F644("glSamplerParameterIuiv", v3622, v3623);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterf = sub_29AB0F644("glSamplerParameterf", v3624, v3625);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterfv = sub_29AB0F644("glSamplerParameterfv", v3626, v3627);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri = sub_29AB0F644("glSamplerParameteri", v3628, v3629);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteriv = sub_29AB0F644("glSamplerParameteriv", v3630, v3631);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScaled = sub_29AB0F644("glScaled", v3632, v3633);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScalef = sub_29AB0F644("glScalef", v3634, v3635);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScissor = sub_29AB0F644("glScissor", v3636, v3637);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScissorArrayv = sub_29AB0F644("glScissorArrayv", v3638, v3639);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScissorExclusiveArrayvNV = sub_29AB0F644("glScissorExclusiveArrayvNV", v3640, v3641);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScissorExclusiveNV = sub_29AB0F644("glScissorExclusiveNV", v3642, v3643);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScissorIndexed = sub_29AB0F644("glScissorIndexed", v3644, v3645);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glScissorIndexedv = sub_29AB0F644("glScissorIndexedv", v3646, v3647);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3b = sub_29AB0F644("glSecondaryColor3b", v3648, v3649);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3bEXT = sub_29AB0F644("glSecondaryColor3bEXT", v3650, v3651);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3bv = sub_29AB0F644("glSecondaryColor3bv", v3652, v3653);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3bvEXT = sub_29AB0F644("glSecondaryColor3bvEXT", v3654, v3655);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3d = sub_29AB0F644("glSecondaryColor3d", v3656, v3657);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3dEXT = sub_29AB0F644("glSecondaryColor3dEXT", v3658, v3659);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3dv = sub_29AB0F644("glSecondaryColor3dv", v3660, v3661);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3dvEXT = sub_29AB0F644("glSecondaryColor3dvEXT", v3662, v3663);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3f = sub_29AB0F644("glSecondaryColor3f", v3664, v3665);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3fEXT = sub_29AB0F644("glSecondaryColor3fEXT", v3666, v3667);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3fv = sub_29AB0F644("glSecondaryColor3fv", v3668, v3669);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3fvEXT = sub_29AB0F644("glSecondaryColor3fvEXT", v3670, v3671);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3hNV = sub_29AB0F644("glSecondaryColor3hNV", v3672, v3673);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3hvNV = sub_29AB0F644("glSecondaryColor3hvNV", v3674, v3675);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3i = sub_29AB0F644("glSecondaryColor3i", v3676, v3677);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3iEXT = sub_29AB0F644("glSecondaryColor3iEXT", v3678, v3679);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3iv = sub_29AB0F644("glSecondaryColor3iv", v3680, v3681);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3ivEXT = sub_29AB0F644("glSecondaryColor3ivEXT", v3682, v3683);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3s = sub_29AB0F644("glSecondaryColor3s", v3684, v3685);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3sEXT = sub_29AB0F644("glSecondaryColor3sEXT", v3686, v3687);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3sv = sub_29AB0F644("glSecondaryColor3sv", v3688, v3689);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3svEXT = sub_29AB0F644("glSecondaryColor3svEXT", v3690, v3691);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3ub = sub_29AB0F644("glSecondaryColor3ub", v3692, v3693);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3ubEXT = sub_29AB0F644("glSecondaryColor3ubEXT", v3694, v3695);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3ubv = sub_29AB0F644("glSecondaryColor3ubv", v3696, v3697);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3ubvEXT = sub_29AB0F644("glSecondaryColor3ubvEXT", v3698, v3699);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3ui = sub_29AB0F644("glSecondaryColor3ui", v3700, v3701);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3uiEXT = sub_29AB0F644("glSecondaryColor3uiEXT", v3702, v3703);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3uiv = sub_29AB0F644("glSecondaryColor3uiv", v3704, v3705);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3uivEXT = sub_29AB0F644("glSecondaryColor3uivEXT", v3706, v3707);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3us = sub_29AB0F644("glSecondaryColor3us", v3708, v3709);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3usEXT = sub_29AB0F644("glSecondaryColor3usEXT", v3710, v3711);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3usv = sub_29AB0F644("glSecondaryColor3usv", v3712, v3713);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColor3usvEXT = sub_29AB0F644("glSecondaryColor3usvEXT", v3714, v3715);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColorFormatNV = sub_29AB0F644("glSecondaryColorFormatNV", v3716, v3717);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColorP3ui = sub_29AB0F644("glSecondaryColorP3ui", v3718, v3719);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColorP3uiv = sub_29AB0F644("glSecondaryColorP3uiv", v3720, v3721);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColorPointer = sub_29AB0F644("glSecondaryColorPointer", v3722, v3723);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSecondaryColorPointerEXT = sub_29AB0F644("glSecondaryColorPointerEXT", v3724, v3725);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSelectBuffer = sub_29AB0F644("glSelectBuffer", v3726, v3727);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSelectPerfMonitorCountersAMD = sub_29AB0F644("glSelectPerfMonitorCountersAMD", v3728, v3729);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSemaphoreParameterivNV = sub_29AB0F644("glSemaphoreParameterivNV", v3730, v3731);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSemaphoreParameterui64vEXT = sub_29AB0F644("glSemaphoreParameterui64vEXT", v3732, v3733);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSeparableFilter2D = sub_29AB0F644("glSeparableFilter2D", v3734, v3735);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSeparableFilter2DEXT = sub_29AB0F644("glSeparableFilter2DEXT", v3736, v3737);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSetFenceAPPLE = sub_29AB0F644("glSetFenceAPPLE", v3738, v3739);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSetFenceNV = sub_29AB0F644("glSetFenceNV", v3740, v3741);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSetInvariantEXT = sub_29AB0F644("glSetInvariantEXT", v3742, v3743);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSetLocalConstantEXT = sub_29AB0F644("glSetLocalConstantEXT", v3744, v3745);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSetMultisamplefvAMD = sub_29AB0F644("glSetMultisamplefvAMD", v3746, v3747);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShadeModel = sub_29AB0F644("glShadeModel", v3748, v3749);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderBinary = sub_29AB0F644("glShaderBinary", v3750, v3751);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderOp1EXT = sub_29AB0F644("glShaderOp1EXT", v3752, v3753);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderOp2EXT = sub_29AB0F644("glShaderOp2EXT", v3754, v3755);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderOp3EXT = sub_29AB0F644("glShaderOp3EXT", v3756, v3757);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderSource = sub_29AB0F644("glShaderSource", v3758, v3759);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderSourceARB = sub_29AB0F644("glShaderSourceARB", v3760, v3761);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderStorageBlockBinding = sub_29AB0F644("glShaderStorageBlockBinding", v3762, v3763);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShadingRateImageBarrierNV = sub_29AB0F644("glShadingRateImageBarrierNV", v3764, v3765);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShadingRateImagePaletteNV = sub_29AB0F644("glShadingRateImagePaletteNV", v3766, v3767);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShadingRateSampleOrderNV = sub_29AB0F644("glShadingRateSampleOrderNV", v3768, v3769);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShadingRateSampleOrderCustomNV = sub_29AB0F644("glShadingRateSampleOrderCustomNV", v3770, v3771);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSignalSemaphoreEXT = sub_29AB0F644("glSignalSemaphoreEXT", v3772, v3773);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSignalSemaphoreui64NVX = sub_29AB0F644("glSignalSemaphoreui64NVX", v3774, v3775);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSpecializeShader = sub_29AB0F644("glSpecializeShader", v3776, v3777);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSpecializeShaderARB = sub_29AB0F644("glSpecializeShaderARB", v3778, v3779);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStateCaptureNV = sub_29AB0F644("glStateCaptureNV", v3780, v3781);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilClearTagEXT = sub_29AB0F644("glStencilClearTagEXT", v3782, v3783);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFillPathInstancedNV = sub_29AB0F644("glStencilFillPathInstancedNV", v3784, v3785);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFillPathNV = sub_29AB0F644("glStencilFillPathNV", v3786, v3787);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFunc = sub_29AB0F644("glStencilFunc", v3788, v3789);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFuncSeparate = sub_29AB0F644("glStencilFuncSeparate", v3790, v3791);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilMask = sub_29AB0F644("glStencilMask", v3792, v3793);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilMaskSeparate = sub_29AB0F644("glStencilMaskSeparate", v3794, v3795);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOp = sub_29AB0F644("glStencilOp", v3796, v3797);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOpSeparate = sub_29AB0F644("glStencilOpSeparate", v3798, v3799);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOpValueAMD = sub_29AB0F644("glStencilOpValueAMD", v3800, v3801);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilStrokePathInstancedNV = sub_29AB0F644("glStencilStrokePathInstancedNV", v3802, v3803);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilStrokePathNV = sub_29AB0F644("glStencilStrokePathNV", v3804, v3805);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilThenCoverFillPathInstancedNV = sub_29AB0F644("glStencilThenCoverFillPathInstancedNV", v3806, v3807);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilThenCoverFillPathNV = sub_29AB0F644("glStencilThenCoverFillPathNV", v3808, v3809);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilThenCoverStrokePathInstancedNV = sub_29AB0F644("glStencilThenCoverStrokePathInstancedNV", v3810, v3811);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilThenCoverStrokePathNV = sub_29AB0F644("glStencilThenCoverStrokePathNV", v3812, v3813);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSubpixelPrecisionBiasNV = sub_29AB0F644("glSubpixelPrecisionBiasNV", v3814, v3815);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSwizzleEXT = sub_29AB0F644("glSwizzleEXT", v3816, v3817);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSyncTextureINTEL = sub_29AB0F644("glSyncTextureINTEL", v3818, v3819);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3bEXT = sub_29AB0F644("glTangent3bEXT", v3820, v3821);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3bvEXT = sub_29AB0F644("glTangent3bvEXT", v3822, v3823);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3dEXT = sub_29AB0F644("glTangent3dEXT", v3824, v3825);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3dvEXT = sub_29AB0F644("glTangent3dvEXT", v3826, v3827);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3fEXT = sub_29AB0F644("glTangent3fEXT", v3828, v3829);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3fvEXT = sub_29AB0F644("glTangent3fvEXT", v3830, v3831);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3iEXT = sub_29AB0F644("glTangent3iEXT", v3832, v3833);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3ivEXT = sub_29AB0F644("glTangent3ivEXT", v3834, v3835);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3sEXT = sub_29AB0F644("glTangent3sEXT", v3836, v3837);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangent3svEXT = sub_29AB0F644("glTangent3svEXT", v3838, v3839);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTangentPointerEXT = sub_29AB0F644("glTangentPointerEXT", v3840, v3841);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTessellationFactorAMD = sub_29AB0F644("glTessellationFactorAMD", v3842, v3843);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTessellationModeAMD = sub_29AB0F644("glTessellationModeAMD", v3844, v3845);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTestFenceAPPLE = sub_29AB0F644("glTestFenceAPPLE", v3846, v3847);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTestFenceNV = sub_29AB0F644("glTestFenceNV", v3848, v3849);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTestObjectAPPLE = sub_29AB0F644("glTestObjectAPPLE", v3850, v3851);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexAttachMemoryNV = sub_29AB0F644("glTexAttachMemoryNV", v3852, v3853);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexBuffer = sub_29AB0F644("glTexBuffer", v3854, v3855);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexBufferARB = sub_29AB0F644("glTexBufferARB", v3856, v3857);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexBufferEXT = sub_29AB0F644("glTexBufferEXT", v3858, v3859);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexBufferRange = sub_29AB0F644("glTexBufferRange", v3860, v3861);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1d = sub_29AB0F644("glTexCoord1d", v3862, v3863);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1dv = sub_29AB0F644("glTexCoord1dv", v3864, v3865);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1f = sub_29AB0F644("glTexCoord1f", v3866, v3867);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1fv = sub_29AB0F644("glTexCoord1fv", v3868, v3869);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1hNV = sub_29AB0F644("glTexCoord1hNV", v3870, v3871);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1hvNV = sub_29AB0F644("glTexCoord1hvNV", v3872, v3873);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1i = sub_29AB0F644("glTexCoord1i", v3874, v3875);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1iv = sub_29AB0F644("glTexCoord1iv", v3876, v3877);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1s = sub_29AB0F644("glTexCoord1s", v3878, v3879);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord1sv = sub_29AB0F644("glTexCoord1sv", v3880, v3881);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2d = sub_29AB0F644("glTexCoord2d", v3882, v3883);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2dv = sub_29AB0F644("glTexCoord2dv", v3884, v3885);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2f = sub_29AB0F644("glTexCoord2f", v3886, v3887);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2fv = sub_29AB0F644("glTexCoord2fv", v3888, v3889);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2hNV = sub_29AB0F644("glTexCoord2hNV", v3890, v3891);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2hvNV = sub_29AB0F644("glTexCoord2hvNV", v3892, v3893);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2i = sub_29AB0F644("glTexCoord2i", v3894, v3895);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2iv = sub_29AB0F644("glTexCoord2iv", v3896, v3897);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2s = sub_29AB0F644("glTexCoord2s", v3898, v3899);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord2sv = sub_29AB0F644("glTexCoord2sv", v3900, v3901);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3d = sub_29AB0F644("glTexCoord3d", v3902, v3903);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3dv = sub_29AB0F644("glTexCoord3dv", v3904, v3905);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3f = sub_29AB0F644("glTexCoord3f", v3906, v3907);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3fv = sub_29AB0F644("glTexCoord3fv", v3908, v3909);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3hNV = sub_29AB0F644("glTexCoord3hNV", v3910, v3911);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3hvNV = sub_29AB0F644("glTexCoord3hvNV", v3912, v3913);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3i = sub_29AB0F644("glTexCoord3i", v3914, v3915);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3iv = sub_29AB0F644("glTexCoord3iv", v3916, v3917);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3s = sub_29AB0F644("glTexCoord3s", v3918, v3919);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord3sv = sub_29AB0F644("glTexCoord3sv", v3920, v3921);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4d = sub_29AB0F644("glTexCoord4d", v3922, v3923);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4dv = sub_29AB0F644("glTexCoord4dv", v3924, v3925);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4f = sub_29AB0F644("glTexCoord4f", v3926, v3927);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4fv = sub_29AB0F644("glTexCoord4fv", v3928, v3929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4hNV = sub_29AB0F644("glTexCoord4hNV", v3930, v3931);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4hvNV = sub_29AB0F644("glTexCoord4hvNV", v3932, v3933);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4i = sub_29AB0F644("glTexCoord4i", v3934, v3935);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4iv = sub_29AB0F644("glTexCoord4iv", v3936, v3937);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4s = sub_29AB0F644("glTexCoord4s", v3938, v3939);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoord4sv = sub_29AB0F644("glTexCoord4sv", v3940, v3941);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordFormatNV = sub_29AB0F644("glTexCoordFormatNV", v3942, v3943);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP1ui = sub_29AB0F644("glTexCoordP1ui", v3944, v3945);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP1uiv = sub_29AB0F644("glTexCoordP1uiv", v3946, v3947);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP2ui = sub_29AB0F644("glTexCoordP2ui", v3948, v3949);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP2uiv = sub_29AB0F644("glTexCoordP2uiv", v3950, v3951);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP3ui = sub_29AB0F644("glTexCoordP3ui", v3952, v3953);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP3uiv = sub_29AB0F644("glTexCoordP3uiv", v3954, v3955);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP4ui = sub_29AB0F644("glTexCoordP4ui", v3956, v3957);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordP4uiv = sub_29AB0F644("glTexCoordP4uiv", v3958, v3959);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordPointer = sub_29AB0F644("glTexCoordPointer", v3960, v3961);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordPointerEXT = sub_29AB0F644("glTexCoordPointerEXT", v3962, v3963);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexCoordPointervINTEL = sub_29AB0F644("glTexCoordPointervINTEL", v3964, v3965);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexEnvf = sub_29AB0F644("glTexEnvf", v3966, v3967);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexEnvfv = sub_29AB0F644("glTexEnvfv", v3968, v3969);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexEnvi = sub_29AB0F644("glTexEnvi", v3970, v3971);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexEnviv = sub_29AB0F644("glTexEnviv", v3972, v3973);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexGend = sub_29AB0F644("glTexGend", v3974, v3975);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexGendv = sub_29AB0F644("glTexGendv", v3976, v3977);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexGenf = sub_29AB0F644("glTexGenf", v3978, v3979);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexGenfv = sub_29AB0F644("glTexGenfv", v3980, v3981);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexGeni = sub_29AB0F644("glTexGeni", v3982, v3983);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexGeniv = sub_29AB0F644("glTexGeniv", v3984, v3985);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage1D = sub_29AB0F644("glTexImage1D", v3986, v3987);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage2D = sub_29AB0F644("glTexImage2D", v3988, v3989);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage2DMultisample = sub_29AB0F644("glTexImage2DMultisample", v3990, v3991);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage2DMultisampleCoverageNV = sub_29AB0F644("glTexImage2DMultisampleCoverageNV", v3992, v3993);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage3D = sub_29AB0F644("glTexImage3D", v3994, v3995);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage3DEXT = sub_29AB0F644("glTexImage3DEXT", v3996, v3997);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage3DMultisample = sub_29AB0F644("glTexImage3DMultisample", v3998, v3999);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage3DMultisampleCoverageNV = sub_29AB0F644("glTexImage3DMultisampleCoverageNV", v4000, v4001);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexPageCommitmentARB = sub_29AB0F644("glTexPageCommitmentARB", v4002, v4003);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexPageCommitmentMemNV = sub_29AB0F644("glTexPageCommitmentMemNV", v4004, v4005);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameterIiv = sub_29AB0F644("glTexParameterIiv", v4006, v4007);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameterIivEXT = sub_29AB0F644("glTexParameterIivEXT", v4008, v4009);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameterIuiv = sub_29AB0F644("glTexParameterIuiv", v4010, v4011);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameterIuivEXT = sub_29AB0F644("glTexParameterIuivEXT", v4012, v4013);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameterf = sub_29AB0F644("glTexParameterf", v4014, v4015);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameterfv = sub_29AB0F644("glTexParameterfv", v4016, v4017);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri = sub_29AB0F644("glTexParameteri", v4018, v4019);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteriv = sub_29AB0F644("glTexParameteriv", v4020, v4021);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexRenderbufferNV = sub_29AB0F644("glTexRenderbufferNV", v4022, v4023);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorage1D = sub_29AB0F644("glTexStorage1D", v4024, v4025);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorage2D = sub_29AB0F644("glTexStorage2D", v4026, v4027);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorage2DMultisample = sub_29AB0F644("glTexStorage2DMultisample", v4028, v4029);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorage3D = sub_29AB0F644("glTexStorage3D", v4030, v4031);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorage3DMultisample = sub_29AB0F644("glTexStorage3DMultisample", v4032, v4033);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorageMem1DEXT = sub_29AB0F644("glTexStorageMem1DEXT", v4034, v4035);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorageMem2DEXT = sub_29AB0F644("glTexStorageMem2DEXT", v4036, v4037);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorageMem2DMultisampleEXT = sub_29AB0F644("glTexStorageMem2DMultisampleEXT", v4038, v4039);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorageMem3DEXT = sub_29AB0F644("glTexStorageMem3DEXT", v4040, v4041);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorageMem3DMultisampleEXT = sub_29AB0F644("glTexStorageMem3DMultisampleEXT", v4042, v4043);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexStorageSparseAMD = sub_29AB0F644("glTexStorageSparseAMD", v4044, v4045);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexSubImage1D = sub_29AB0F644("glTexSubImage1D", v4046, v4047);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexSubImage1DEXT = sub_29AB0F644("glTexSubImage1DEXT", v4048, v4049);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexSubImage2D = sub_29AB0F644("glTexSubImage2D", v4050, v4051);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexSubImage2DEXT = sub_29AB0F644("glTexSubImage2DEXT", v4052, v4053);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexSubImage3D = sub_29AB0F644("glTexSubImage3D", v4054, v4055);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexSubImage3DEXT = sub_29AB0F644("glTexSubImage3DEXT", v4056, v4057);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureAttachMemoryNV = sub_29AB0F644("glTextureAttachMemoryNV", v4058, v4059);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureBarrier = sub_29AB0F644("glTextureBarrier", v4060, v4061);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureBarrierNV = sub_29AB0F644("glTextureBarrierNV", v4062, v4063);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureBuffer = sub_29AB0F644("glTextureBuffer", v4064, v4065);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureBufferEXT = sub_29AB0F644("glTextureBufferEXT", v4066, v4067);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureBufferRange = sub_29AB0F644("glTextureBufferRange", v4068, v4069);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureBufferRangeEXT = sub_29AB0F644("glTextureBufferRangeEXT", v4070, v4071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureImage1DEXT = sub_29AB0F644("glTextureImage1DEXT", v4072, v4073);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureImage2DEXT = sub_29AB0F644("glTextureImage2DEXT", v4074, v4075);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureImage2DMultisampleCoverageNV = sub_29AB0F644("glTextureImage2DMultisampleCoverageNV", v4076, v4077);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureImage2DMultisampleNV = sub_29AB0F644("glTextureImage2DMultisampleNV", v4078, v4079);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureImage3DEXT = sub_29AB0F644("glTextureImage3DEXT", v4080, v4081);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureImage3DMultisampleCoverageNV = sub_29AB0F644("glTextureImage3DMultisampleCoverageNV", v4082, v4083);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureImage3DMultisampleNV = sub_29AB0F644("glTextureImage3DMultisampleNV", v4084, v4085);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureLightEXT = sub_29AB0F644("glTextureLightEXT", v4086, v4087);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureMaterialEXT = sub_29AB0F644("glTextureMaterialEXT", v4088, v4089);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureNormalEXT = sub_29AB0F644("glTextureNormalEXT", v4090, v4091);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexturePageCommitmentEXT = sub_29AB0F644("glTexturePageCommitmentEXT", v4092, v4093);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexturePageCommitmentMemNV = sub_29AB0F644("glTexturePageCommitmentMemNV", v4094, v4095);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterIiv = sub_29AB0F644("glTextureParameterIiv", v4096, v4097);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterIivEXT = sub_29AB0F644("glTextureParameterIivEXT", v4098, v4099);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterIuiv = sub_29AB0F644("glTextureParameterIuiv", v4100, v4101);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterIuivEXT = sub_29AB0F644("glTextureParameterIuivEXT", v4102, v4103);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterf = sub_29AB0F644("glTextureParameterf", v4104, v4105);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterfEXT = sub_29AB0F644("glTextureParameterfEXT", v4106, v4107);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterfv = sub_29AB0F644("glTextureParameterfv", v4108, v4109);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterfvEXT = sub_29AB0F644("glTextureParameterfvEXT", v4110, v4111);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri = sub_29AB0F644("glTextureParameteri", v4112, v4113);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteriEXT = sub_29AB0F644("glTextureParameteriEXT", v4114, v4115);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteriv = sub_29AB0F644("glTextureParameteriv", v4116, v4117);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterivEXT = sub_29AB0F644("glTextureParameterivEXT", v4118, v4119);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureRangeAPPLE = sub_29AB0F644("glTextureRangeAPPLE", v4120, v4121);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureRenderbufferEXT = sub_29AB0F644("glTextureRenderbufferEXT", v4122, v4123);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage1D = sub_29AB0F644("glTextureStorage1D", v4124, v4125);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage1DEXT = sub_29AB0F644("glTextureStorage1DEXT", v4126, v4127);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage2D = sub_29AB0F644("glTextureStorage2D", v4128, v4129);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage2DEXT = sub_29AB0F644("glTextureStorage2DEXT", v4130, v4131);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage2DMultisample = sub_29AB0F644("glTextureStorage2DMultisample", v4132, v4133);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage2DMultisampleEXT = sub_29AB0F644("glTextureStorage2DMultisampleEXT", v4134, v4135);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage3D = sub_29AB0F644("glTextureStorage3D", v4136, v4137);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage3DEXT = sub_29AB0F644("glTextureStorage3DEXT", v4138, v4139);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage3DMultisample = sub_29AB0F644("glTextureStorage3DMultisample", v4140, v4141);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage3DMultisampleEXT = sub_29AB0F644("glTextureStorage3DMultisampleEXT", v4142, v4143);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorageMem1DEXT = sub_29AB0F644("glTextureStorageMem1DEXT", v4144, v4145);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorageMem2DEXT = sub_29AB0F644("glTextureStorageMem2DEXT", v4146, v4147);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorageMem2DMultisampleEXT = sub_29AB0F644("glTextureStorageMem2DMultisampleEXT", v4148, v4149);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorageMem3DEXT = sub_29AB0F644("glTextureStorageMem3DEXT", v4150, v4151);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorageMem3DMultisampleEXT = sub_29AB0F644("glTextureStorageMem3DMultisampleEXT", v4152, v4153);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorageSparseAMD = sub_29AB0F644("glTextureStorageSparseAMD", v4154, v4155);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage1D = sub_29AB0F644("glTextureSubImage1D", v4156, v4157);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage1DEXT = sub_29AB0F644("glTextureSubImage1DEXT", v4158, v4159);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage2D = sub_29AB0F644("glTextureSubImage2D", v4160, v4161);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage2DEXT = sub_29AB0F644("glTextureSubImage2DEXT", v4162, v4163);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage3D = sub_29AB0F644("glTextureSubImage3D", v4164, v4165);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage3DEXT = sub_29AB0F644("glTextureSubImage3DEXT", v4166, v4167);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureView = sub_29AB0F644("glTextureView", v4168, v4169);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTrackMatrixNV = sub_29AB0F644("glTrackMatrixNV", v4170, v4171);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformFeedbackAttribsNV = sub_29AB0F644("glTransformFeedbackAttribsNV", v4172, v4173);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformFeedbackBufferBase = sub_29AB0F644("glTransformFeedbackBufferBase", v4174, v4175);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformFeedbackBufferRange = sub_29AB0F644("glTransformFeedbackBufferRange", v4176, v4177);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformFeedbackStreamAttribsNV = sub_29AB0F644("glTransformFeedbackStreamAttribsNV", v4178, v4179);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformFeedbackVaryings = sub_29AB0F644("glTransformFeedbackVaryings", v4180, v4181);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformFeedbackVaryingsEXT = sub_29AB0F644("glTransformFeedbackVaryingsEXT", v4182, v4183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformFeedbackVaryingsNV = sub_29AB0F644("glTransformFeedbackVaryingsNV", v4184, v4185);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTransformPathNV = sub_29AB0F644("glTransformPathNV", v4186, v4187);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTranslated = sub_29AB0F644("glTranslated", v4188, v4189);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTranslatef = sub_29AB0F644("glTranslatef", v4190, v4191);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1d = sub_29AB0F644("glUniform1d", v4192, v4193);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1dv = sub_29AB0F644("glUniform1dv", v4194, v4195);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1f = sub_29AB0F644("glUniform1f", v4196, v4197);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1fARB = sub_29AB0F644("glUniform1fARB", v4198, v4199);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1fv = sub_29AB0F644("glUniform1fv", v4200, v4201);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1fvARB = sub_29AB0F644("glUniform1fvARB", v4202, v4203);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i = sub_29AB0F644("glUniform1i", v4204, v4205);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i64ARB = sub_29AB0F644("glUniform1i64ARB", v4206, v4207);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i64NV = sub_29AB0F644("glUniform1i64NV", v4208, v4209);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i64vARB = sub_29AB0F644("glUniform1i64vARB", v4210, v4211);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i64vNV = sub_29AB0F644("glUniform1i64vNV", v4212, v4213);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1iARB = sub_29AB0F644("glUniform1iARB", v4214, v4215);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1iv = sub_29AB0F644("glUniform1iv", v4216, v4217);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1ivARB = sub_29AB0F644("glUniform1ivARB", v4218, v4219);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1ui = sub_29AB0F644("glUniform1ui", v4220, v4221);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1ui64ARB = sub_29AB0F644("glUniform1ui64ARB", v4222, v4223);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1ui64NV = sub_29AB0F644("glUniform1ui64NV", v4224, v4225);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1ui64vARB = sub_29AB0F644("glUniform1ui64vARB", v4226, v4227);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1ui64vNV = sub_29AB0F644("glUniform1ui64vNV", v4228, v4229);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1uiEXT = sub_29AB0F644("glUniform1uiEXT", v4230, v4231);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1uiv = sub_29AB0F644("glUniform1uiv", v4232, v4233);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1uivEXT = sub_29AB0F644("glUniform1uivEXT", v4234, v4235);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2d = sub_29AB0F644("glUniform2d", v4236, v4237);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2dv = sub_29AB0F644("glUniform2dv", v4238, v4239);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2f = sub_29AB0F644("glUniform2f", v4240, v4241);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2fARB = sub_29AB0F644("glUniform2fARB", v4242, v4243);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2fv = sub_29AB0F644("glUniform2fv", v4244, v4245);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2fvARB = sub_29AB0F644("glUniform2fvARB", v4246, v4247);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2i = sub_29AB0F644("glUniform2i", v4248, v4249);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2i64ARB = sub_29AB0F644("glUniform2i64ARB", v4250, v4251);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2i64NV = sub_29AB0F644("glUniform2i64NV", v4252, v4253);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2i64vARB = sub_29AB0F644("glUniform2i64vARB", v4254, v4255);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2i64vNV = sub_29AB0F644("glUniform2i64vNV", v4256, v4257);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2iARB = sub_29AB0F644("glUniform2iARB", v4258, v4259);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2iv = sub_29AB0F644("glUniform2iv", v4260, v4261);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2ivARB = sub_29AB0F644("glUniform2ivARB", v4262, v4263);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2ui = sub_29AB0F644("glUniform2ui", v4264, v4265);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2ui64ARB = sub_29AB0F644("glUniform2ui64ARB", v4266, v4267);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2ui64NV = sub_29AB0F644("glUniform2ui64NV", v4268, v4269);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2ui64vARB = sub_29AB0F644("glUniform2ui64vARB", v4270, v4271);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2ui64vNV = sub_29AB0F644("glUniform2ui64vNV", v4272, v4273);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2uiEXT = sub_29AB0F644("glUniform2uiEXT", v4274, v4275);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2uiv = sub_29AB0F644("glUniform2uiv", v4276, v4277);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2uivEXT = sub_29AB0F644("glUniform2uivEXT", v4278, v4279);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3d = sub_29AB0F644("glUniform3d", v4280, v4281);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3dv = sub_29AB0F644("glUniform3dv", v4282, v4283);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3f = sub_29AB0F644("glUniform3f", v4284, v4285);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3fARB = sub_29AB0F644("glUniform3fARB", v4286, v4287);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3fv = sub_29AB0F644("glUniform3fv", v4288, v4289);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3fvARB = sub_29AB0F644("glUniform3fvARB", v4290, v4291);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3i = sub_29AB0F644("glUniform3i", v4292, v4293);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3i64ARB = sub_29AB0F644("glUniform3i64ARB", v4294, v4295);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3i64NV = sub_29AB0F644("glUniform3i64NV", v4296, v4297);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3i64vARB = sub_29AB0F644("glUniform3i64vARB", v4298, v4299);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3i64vNV = sub_29AB0F644("glUniform3i64vNV", v4300, v4301);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3iARB = sub_29AB0F644("glUniform3iARB", v4302, v4303);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3iv = sub_29AB0F644("glUniform3iv", v4304, v4305);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3ivARB = sub_29AB0F644("glUniform3ivARB", v4306, v4307);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3ui = sub_29AB0F644("glUniform3ui", v4308, v4309);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3ui64ARB = sub_29AB0F644("glUniform3ui64ARB", v4310, v4311);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3ui64NV = sub_29AB0F644("glUniform3ui64NV", v4312, v4313);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3ui64vARB = sub_29AB0F644("glUniform3ui64vARB", v4314, v4315);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3ui64vNV = sub_29AB0F644("glUniform3ui64vNV", v4316, v4317);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3uiEXT = sub_29AB0F644("glUniform3uiEXT", v4318, v4319);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3uiv = sub_29AB0F644("glUniform3uiv", v4320, v4321);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3uivEXT = sub_29AB0F644("glUniform3uivEXT", v4322, v4323);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4d = sub_29AB0F644("glUniform4d", v4324, v4325);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4dv = sub_29AB0F644("glUniform4dv", v4326, v4327);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4f = sub_29AB0F644("glUniform4f", v4328, v4329);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4fARB = sub_29AB0F644("glUniform4fARB", v4330, v4331);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4fv = sub_29AB0F644("glUniform4fv", v4332, v4333);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4fvARB = sub_29AB0F644("glUniform4fvARB", v4334, v4335);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4i = sub_29AB0F644("glUniform4i", v4336, v4337);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4i64ARB = sub_29AB0F644("glUniform4i64ARB", v4338, v4339);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4i64NV = sub_29AB0F644("glUniform4i64NV", v4340, v4341);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4i64vARB = sub_29AB0F644("glUniform4i64vARB", v4342, v4343);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4i64vNV = sub_29AB0F644("glUniform4i64vNV", v4344, v4345);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4iARB = sub_29AB0F644("glUniform4iARB", v4346, v4347);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4iv = sub_29AB0F644("glUniform4iv", v4348, v4349);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4ivARB = sub_29AB0F644("glUniform4ivARB", v4350, v4351);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4ui = sub_29AB0F644("glUniform4ui", v4352, v4353);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4ui64ARB = sub_29AB0F644("glUniform4ui64ARB", v4354, v4355);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4ui64NV = sub_29AB0F644("glUniform4ui64NV", v4356, v4357);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4ui64vARB = sub_29AB0F644("glUniform4ui64vARB", v4358, v4359);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4ui64vNV = sub_29AB0F644("glUniform4ui64vNV", v4360, v4361);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4uiEXT = sub_29AB0F644("glUniform4uiEXT", v4362, v4363);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4uiv = sub_29AB0F644("glUniform4uiv", v4364, v4365);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4uivEXT = sub_29AB0F644("glUniform4uivEXT", v4366, v4367);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformBlockBinding = sub_29AB0F644("glUniformBlockBinding", v4368, v4369);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformBufferEXT = sub_29AB0F644("glUniformBufferEXT", v4370, v4371);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformHandleui64ARB = sub_29AB0F644("glUniformHandleui64ARB", v4372, v4373);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformHandleui64NV = sub_29AB0F644("glUniformHandleui64NV", v4374, v4375);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformHandleui64vARB = sub_29AB0F644("glUniformHandleui64vARB", v4376, v4377);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformHandleui64vNV = sub_29AB0F644("glUniformHandleui64vNV", v4378, v4379);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix2dv = sub_29AB0F644("glUniformMatrix2dv", v4380, v4381);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix2fv = sub_29AB0F644("glUniformMatrix2fv", v4382, v4383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix2fvARB = sub_29AB0F644("glUniformMatrix2fvARB", v4384, v4385);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix2x3dv = sub_29AB0F644("glUniformMatrix2x3dv", v4386, v4387);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix2x3fv = sub_29AB0F644("glUniformMatrix2x3fv", v4388, v4389);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix2x4dv = sub_29AB0F644("glUniformMatrix2x4dv", v4390, v4391);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix2x4fv = sub_29AB0F644("glUniformMatrix2x4fv", v4392, v4393);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix3dv = sub_29AB0F644("glUniformMatrix3dv", v4394, v4395);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix3fv = sub_29AB0F644("glUniformMatrix3fv", v4396, v4397);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix3fvARB = sub_29AB0F644("glUniformMatrix3fvARB", v4398, v4399);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix3x2dv = sub_29AB0F644("glUniformMatrix3x2dv", v4400, v4401);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix3x2fv = sub_29AB0F644("glUniformMatrix3x2fv", v4402, v4403);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix3x4dv = sub_29AB0F644("glUniformMatrix3x4dv", v4404, v4405);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix3x4fv = sub_29AB0F644("glUniformMatrix3x4fv", v4406, v4407);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4dv = sub_29AB0F644("glUniformMatrix4dv", v4408, v4409);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4fv = sub_29AB0F644("glUniformMatrix4fv", v4410, v4411);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4fvARB = sub_29AB0F644("glUniformMatrix4fvARB", v4412, v4413);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4x2dv = sub_29AB0F644("glUniformMatrix4x2dv", v4414, v4415);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4x2fv = sub_29AB0F644("glUniformMatrix4x2fv", v4416, v4417);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4x3dv = sub_29AB0F644("glUniformMatrix4x3dv", v4418, v4419);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4x3fv = sub_29AB0F644("glUniformMatrix4x3fv", v4420, v4421);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformSubroutinesuiv = sub_29AB0F644("glUniformSubroutinesuiv", v4422, v4423);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformui64NV = sub_29AB0F644("glUniformui64NV", v4424, v4425);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformui64vNV = sub_29AB0F644("glUniformui64vNV", v4426, v4427);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUnlockArraysEXT = sub_29AB0F644("glUnlockArraysEXT", v4428, v4429);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUnmapBuffer = sub_29AB0F644("glUnmapBuffer", v4430, v4431);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUnmapBufferARB = sub_29AB0F644("glUnmapBufferARB", v4432, v4433);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUnmapNamedBuffer = sub_29AB0F644("glUnmapNamedBuffer", v4434, v4435);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUnmapNamedBufferEXT = sub_29AB0F644("glUnmapNamedBufferEXT", v4436, v4437);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUnmapTexture2DINTEL = sub_29AB0F644("glUnmapTexture2DINTEL", v4438, v4439);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUploadGpuMaskNVX = sub_29AB0F644("glUploadGpuMaskNVX", v4440, v4441);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram = sub_29AB0F644("glUseProgram", v4442, v4443);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgramObjectARB = sub_29AB0F644("glUseProgramObjectARB", v4444, v4445);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgramStages = sub_29AB0F644("glUseProgramStages", v4446, v4447);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgramStagesEXT = sub_29AB0F644("glUseProgramStagesEXT", v4448, v4449);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseShaderProgramEXT = sub_29AB0F644("glUseShaderProgramEXT", v4450, v4451);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUFiniNV = sub_29AB0F644("glVDPAUFiniNV", v4452, v4453);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUGetSurfaceivNV = sub_29AB0F644("glVDPAUGetSurfaceivNV", v4454, v4455);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUInitNV = sub_29AB0F644("glVDPAUInitNV", v4456, v4457);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUIsSurfaceNV = sub_29AB0F644("glVDPAUIsSurfaceNV", v4458, v4459);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUMapSurfacesNV = sub_29AB0F644("glVDPAUMapSurfacesNV", v4460, v4461);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAURegisterOutputSurfaceNV = sub_29AB0F644("glVDPAURegisterOutputSurfaceNV", v4462, v4463);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAURegisterVideoSurfaceNV = sub_29AB0F644("glVDPAURegisterVideoSurfaceNV", v4464, v4465);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAURegisterVideoSurfaceWithPictureStructureNV = sub_29AB0F644("glVDPAURegisterVideoSurfaceWithPictureStructureNV", v4466, v4467);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUSurfaceAccessNV = sub_29AB0F644("glVDPAUSurfaceAccessNV", v4468, v4469);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUUnmapSurfacesNV = sub_29AB0F644("glVDPAUUnmapSurfacesNV", v4470, v4471);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVDPAUUnregisterSurfaceNV = sub_29AB0F644("glVDPAUUnregisterSurfaceNV", v4472, v4473);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glValidateProgram = sub_29AB0F644("glValidateProgram", v4474, v4475);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glValidateProgramARB = sub_29AB0F644("glValidateProgramARB", v4476, v4477);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glValidateProgramPipeline = sub_29AB0F644("glValidateProgramPipeline", v4478, v4479);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glValidateProgramPipelineEXT = sub_29AB0F644("glValidateProgramPipelineEXT", v4480, v4481);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantPointerEXT = sub_29AB0F644("glVariantPointerEXT", v4482, v4483);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantbvEXT = sub_29AB0F644("glVariantbvEXT", v4484, v4485);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantdvEXT = sub_29AB0F644("glVariantdvEXT", v4486, v4487);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantfvEXT = sub_29AB0F644("glVariantfvEXT", v4488, v4489);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantivEXT = sub_29AB0F644("glVariantivEXT", v4490, v4491);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantsvEXT = sub_29AB0F644("glVariantsvEXT", v4492, v4493);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantubvEXT = sub_29AB0F644("glVariantubvEXT", v4494, v4495);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantuivEXT = sub_29AB0F644("glVariantuivEXT", v4496, v4497);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVariantusvEXT = sub_29AB0F644("glVariantusvEXT", v4498, v4499);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2d = sub_29AB0F644("glVertex2d", v4500, v4501);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2dv = sub_29AB0F644("glVertex2dv", v4502, v4503);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2f = sub_29AB0F644("glVertex2f", v4504, v4505);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2fv = sub_29AB0F644("glVertex2fv", v4506, v4507);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2hNV = sub_29AB0F644("glVertex2hNV", v4508, v4509);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2hvNV = sub_29AB0F644("glVertex2hvNV", v4510, v4511);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2i = sub_29AB0F644("glVertex2i", v4512, v4513);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2iv = sub_29AB0F644("glVertex2iv", v4514, v4515);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2s = sub_29AB0F644("glVertex2s", v4516, v4517);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex2sv = sub_29AB0F644("glVertex2sv", v4518, v4519);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3d = sub_29AB0F644("glVertex3d", v4520, v4521);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3dv = sub_29AB0F644("glVertex3dv", v4522, v4523);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3f = sub_29AB0F644("glVertex3f", v4524, v4525);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3fv = sub_29AB0F644("glVertex3fv", v4526, v4527);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3hNV = sub_29AB0F644("glVertex3hNV", v4528, v4529);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3hvNV = sub_29AB0F644("glVertex3hvNV", v4530, v4531);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3i = sub_29AB0F644("glVertex3i", v4532, v4533);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3iv = sub_29AB0F644("glVertex3iv", v4534, v4535);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3s = sub_29AB0F644("glVertex3s", v4536, v4537);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex3sv = sub_29AB0F644("glVertex3sv", v4538, v4539);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4d = sub_29AB0F644("glVertex4d", v4540, v4541);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4dv = sub_29AB0F644("glVertex4dv", v4542, v4543);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4f = sub_29AB0F644("glVertex4f", v4544, v4545);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4fv = sub_29AB0F644("glVertex4fv", v4546, v4547);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4hNV = sub_29AB0F644("glVertex4hNV", v4548, v4549);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4hvNV = sub_29AB0F644("glVertex4hvNV", v4550, v4551);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4i = sub_29AB0F644("glVertex4i", v4552, v4553);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4iv = sub_29AB0F644("glVertex4iv", v4554, v4555);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4s = sub_29AB0F644("glVertex4s", v4556, v4557);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertex4sv = sub_29AB0F644("glVertex4sv", v4558, v4559);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayAttribBinding = sub_29AB0F644("glVertexArrayAttribBinding", v4560, v4561);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayAttribFormat = sub_29AB0F644("glVertexArrayAttribFormat", v4562, v4563);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayAttribIFormat = sub_29AB0F644("glVertexArrayAttribIFormat", v4564, v4565);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayAttribLFormat = sub_29AB0F644("glVertexArrayAttribLFormat", v4566, v4567);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayBindVertexBufferEXT = sub_29AB0F644("glVertexArrayBindVertexBufferEXT", v4568, v4569);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayBindingDivisor = sub_29AB0F644("glVertexArrayBindingDivisor", v4570, v4571);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayColorOffsetEXT = sub_29AB0F644("glVertexArrayColorOffsetEXT", v4572, v4573);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayEdgeFlagOffsetEXT = sub_29AB0F644("glVertexArrayEdgeFlagOffsetEXT", v4574, v4575);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayElementBuffer = sub_29AB0F644("glVertexArrayElementBuffer", v4576, v4577);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayFogCoordOffsetEXT = sub_29AB0F644("glVertexArrayFogCoordOffsetEXT", v4578, v4579);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayIndexOffsetEXT = sub_29AB0F644("glVertexArrayIndexOffsetEXT", v4580, v4581);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayMultiTexCoordOffsetEXT = sub_29AB0F644("glVertexArrayMultiTexCoordOffsetEXT", v4582, v4583);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayNormalOffsetEXT = sub_29AB0F644("glVertexArrayNormalOffsetEXT", v4584, v4585);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayParameteriAPPLE = sub_29AB0F644("glVertexArrayParameteriAPPLE", v4586, v4587);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayRangeAPPLE = sub_29AB0F644("glVertexArrayRangeAPPLE", v4588, v4589);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayRangeNV = sub_29AB0F644("glVertexArrayRangeNV", v4590, v4591);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArraySecondaryColorOffsetEXT = sub_29AB0F644("glVertexArraySecondaryColorOffsetEXT", v4592, v4593);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayTexCoordOffsetEXT = sub_29AB0F644("glVertexArrayTexCoordOffsetEXT", v4594, v4595);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribBindingEXT = sub_29AB0F644("glVertexArrayVertexAttribBindingEXT", v4596, v4597);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribDivisorEXT = sub_29AB0F644("glVertexArrayVertexAttribDivisorEXT", v4598, v4599);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribFormatEXT = sub_29AB0F644("glVertexArrayVertexAttribFormatEXT", v4600, v4601);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribIFormatEXT = sub_29AB0F644("glVertexArrayVertexAttribIFormatEXT", v4602, v4603);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribIOffsetEXT = sub_29AB0F644("glVertexArrayVertexAttribIOffsetEXT", v4604, v4605);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribLFormatEXT = sub_29AB0F644("glVertexArrayVertexAttribLFormatEXT", v4606, v4607);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribLOffsetEXT = sub_29AB0F644("glVertexArrayVertexAttribLOffsetEXT", v4608, v4609);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexAttribOffsetEXT = sub_29AB0F644("glVertexArrayVertexAttribOffsetEXT", v4610, v4611);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexBindingDivisorEXT = sub_29AB0F644("glVertexArrayVertexBindingDivisorEXT", v4612, v4613);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexBuffer = sub_29AB0F644("glVertexArrayVertexBuffer", v4614, v4615);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexBuffers = sub_29AB0F644("glVertexArrayVertexBuffers", v4616, v4617);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayVertexOffsetEXT = sub_29AB0F644("glVertexArrayVertexOffsetEXT", v4618, v4619);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1d = sub_29AB0F644("glVertexAttrib1d", v4620, v4621);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1dARB = sub_29AB0F644("glVertexAttrib1dARB", v4622, v4623);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1dNV = sub_29AB0F644("glVertexAttrib1dNV", v4624, v4625);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1dv = sub_29AB0F644("glVertexAttrib1dv", v4626, v4627);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1dvARB = sub_29AB0F644("glVertexAttrib1dvARB", v4628, v4629);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1dvNV = sub_29AB0F644("glVertexAttrib1dvNV", v4630, v4631);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1f = sub_29AB0F644("glVertexAttrib1f", v4632, v4633);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1fARB = sub_29AB0F644("glVertexAttrib1fARB", v4634, v4635);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1fNV = sub_29AB0F644("glVertexAttrib1fNV", v4636, v4637);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1fv = sub_29AB0F644("glVertexAttrib1fv", v4638, v4639);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1fvARB = sub_29AB0F644("glVertexAttrib1fvARB", v4640, v4641);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1fvNV = sub_29AB0F644("glVertexAttrib1fvNV", v4642, v4643);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1hNV = sub_29AB0F644("glVertexAttrib1hNV", v4644, v4645);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1hvNV = sub_29AB0F644("glVertexAttrib1hvNV", v4646, v4647);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1s = sub_29AB0F644("glVertexAttrib1s", v4648, v4649);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1sARB = sub_29AB0F644("glVertexAttrib1sARB", v4650, v4651);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1sNV = sub_29AB0F644("glVertexAttrib1sNV", v4652, v4653);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1sv = sub_29AB0F644("glVertexAttrib1sv", v4654, v4655);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1svARB = sub_29AB0F644("glVertexAttrib1svARB", v4656, v4657);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib1svNV = sub_29AB0F644("glVertexAttrib1svNV", v4658, v4659);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2d = sub_29AB0F644("glVertexAttrib2d", v4660, v4661);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2dARB = sub_29AB0F644("glVertexAttrib2dARB", v4662, v4663);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2dNV = sub_29AB0F644("glVertexAttrib2dNV", v4664, v4665);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2dv = sub_29AB0F644("glVertexAttrib2dv", v4666, v4667);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2dvARB = sub_29AB0F644("glVertexAttrib2dvARB", v4668, v4669);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2dvNV = sub_29AB0F644("glVertexAttrib2dvNV", v4670, v4671);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2f = sub_29AB0F644("glVertexAttrib2f", v4672, v4673);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2fARB = sub_29AB0F644("glVertexAttrib2fARB", v4674, v4675);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2fNV = sub_29AB0F644("glVertexAttrib2fNV", v4676, v4677);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2fv = sub_29AB0F644("glVertexAttrib2fv", v4678, v4679);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2fvARB = sub_29AB0F644("glVertexAttrib2fvARB", v4680, v4681);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2fvNV = sub_29AB0F644("glVertexAttrib2fvNV", v4682, v4683);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2hNV = sub_29AB0F644("glVertexAttrib2hNV", v4684, v4685);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2hvNV = sub_29AB0F644("glVertexAttrib2hvNV", v4686, v4687);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2s = sub_29AB0F644("glVertexAttrib2s", v4688, v4689);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2sARB = sub_29AB0F644("glVertexAttrib2sARB", v4690, v4691);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2sNV = sub_29AB0F644("glVertexAttrib2sNV", v4692, v4693);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2sv = sub_29AB0F644("glVertexAttrib2sv", v4694, v4695);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2svARB = sub_29AB0F644("glVertexAttrib2svARB", v4696, v4697);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib2svNV = sub_29AB0F644("glVertexAttrib2svNV", v4698, v4699);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3d = sub_29AB0F644("glVertexAttrib3d", v4700, v4701);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3dARB = sub_29AB0F644("glVertexAttrib3dARB", v4702, v4703);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3dNV = sub_29AB0F644("glVertexAttrib3dNV", v4704, v4705);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3dv = sub_29AB0F644("glVertexAttrib3dv", v4706, v4707);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3dvARB = sub_29AB0F644("glVertexAttrib3dvARB", v4708, v4709);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3dvNV = sub_29AB0F644("glVertexAttrib3dvNV", v4710, v4711);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3f = sub_29AB0F644("glVertexAttrib3f", v4712, v4713);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3fARB = sub_29AB0F644("glVertexAttrib3fARB", v4714, v4715);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3fNV = sub_29AB0F644("glVertexAttrib3fNV", v4716, v4717);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3fv = sub_29AB0F644("glVertexAttrib3fv", v4718, v4719);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3fvARB = sub_29AB0F644("glVertexAttrib3fvARB", v4720, v4721);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3fvNV = sub_29AB0F644("glVertexAttrib3fvNV", v4722, v4723);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3hNV = sub_29AB0F644("glVertexAttrib3hNV", v4724, v4725);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3hvNV = sub_29AB0F644("glVertexAttrib3hvNV", v4726, v4727);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3s = sub_29AB0F644("glVertexAttrib3s", v4728, v4729);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3sARB = sub_29AB0F644("glVertexAttrib3sARB", v4730, v4731);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3sNV = sub_29AB0F644("glVertexAttrib3sNV", v4732, v4733);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3sv = sub_29AB0F644("glVertexAttrib3sv", v4734, v4735);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3svARB = sub_29AB0F644("glVertexAttrib3svARB", v4736, v4737);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib3svNV = sub_29AB0F644("glVertexAttrib3svNV", v4738, v4739);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4Nbv = sub_29AB0F644("glVertexAttrib4Nbv", v4740, v4741);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4NbvARB = sub_29AB0F644("glVertexAttrib4NbvARB", v4742, v4743);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4Niv = sub_29AB0F644("glVertexAttrib4Niv", v4744, v4745);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4NivARB = sub_29AB0F644("glVertexAttrib4NivARB", v4746, v4747);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4Nsv = sub_29AB0F644("glVertexAttrib4Nsv", v4748, v4749);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4NsvARB = sub_29AB0F644("glVertexAttrib4NsvARB", v4750, v4751);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4Nub = sub_29AB0F644("glVertexAttrib4Nub", v4752, v4753);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4NubARB = sub_29AB0F644("glVertexAttrib4NubARB", v4754, v4755);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4Nubv = sub_29AB0F644("glVertexAttrib4Nubv", v4756, v4757);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4NubvARB = sub_29AB0F644("glVertexAttrib4NubvARB", v4758, v4759);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4Nuiv = sub_29AB0F644("glVertexAttrib4Nuiv", v4760, v4761);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4NuivARB = sub_29AB0F644("glVertexAttrib4NuivARB", v4762, v4763);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4Nusv = sub_29AB0F644("glVertexAttrib4Nusv", v4764, v4765);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4NusvARB = sub_29AB0F644("glVertexAttrib4NusvARB", v4766, v4767);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4bv = sub_29AB0F644("glVertexAttrib4bv", v4768, v4769);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4bvARB = sub_29AB0F644("glVertexAttrib4bvARB", v4770, v4771);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4d = sub_29AB0F644("glVertexAttrib4d", v4772, v4773);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4dARB = sub_29AB0F644("glVertexAttrib4dARB", v4774, v4775);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4dNV = sub_29AB0F644("glVertexAttrib4dNV", v4776, v4777);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4dv = sub_29AB0F644("glVertexAttrib4dv", v4778, v4779);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4dvARB = sub_29AB0F644("glVertexAttrib4dvARB", v4780, v4781);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4dvNV = sub_29AB0F644("glVertexAttrib4dvNV", v4782, v4783);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4f = sub_29AB0F644("glVertexAttrib4f", v4784, v4785);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4fARB = sub_29AB0F644("glVertexAttrib4fARB", v4786, v4787);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4fNV = sub_29AB0F644("glVertexAttrib4fNV", v4788, v4789);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4fv = sub_29AB0F644("glVertexAttrib4fv", v4790, v4791);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4fvARB = sub_29AB0F644("glVertexAttrib4fvARB", v4792, v4793);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4fvNV = sub_29AB0F644("glVertexAttrib4fvNV", v4794, v4795);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4hNV = sub_29AB0F644("glVertexAttrib4hNV", v4796, v4797);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4hvNV = sub_29AB0F644("glVertexAttrib4hvNV", v4798, v4799);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4iv = sub_29AB0F644("glVertexAttrib4iv", v4800, v4801);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4ivARB = sub_29AB0F644("glVertexAttrib4ivARB", v4802, v4803);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4s = sub_29AB0F644("glVertexAttrib4s", v4804, v4805);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4sARB = sub_29AB0F644("glVertexAttrib4sARB", v4806, v4807);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4sNV = sub_29AB0F644("glVertexAttrib4sNV", v4808, v4809);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4sv = sub_29AB0F644("glVertexAttrib4sv", v4810, v4811);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4svARB = sub_29AB0F644("glVertexAttrib4svARB", v4812, v4813);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4svNV = sub_29AB0F644("glVertexAttrib4svNV", v4814, v4815);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4ubNV = sub_29AB0F644("glVertexAttrib4ubNV", v4816, v4817);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4ubv = sub_29AB0F644("glVertexAttrib4ubv", v4818, v4819);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4ubvARB = sub_29AB0F644("glVertexAttrib4ubvARB", v4820, v4821);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4ubvNV = sub_29AB0F644("glVertexAttrib4ubvNV", v4822, v4823);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4uiv = sub_29AB0F644("glVertexAttrib4uiv", v4824, v4825);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4uivARB = sub_29AB0F644("glVertexAttrib4uivARB", v4826, v4827);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4usv = sub_29AB0F644("glVertexAttrib4usv", v4828, v4829);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttrib4usvARB = sub_29AB0F644("glVertexAttrib4usvARB", v4830, v4831);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribBinding = sub_29AB0F644("glVertexAttribBinding", v4832, v4833);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribDivisor = sub_29AB0F644("glVertexAttribDivisor", v4834, v4835);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribDivisorARB = sub_29AB0F644("glVertexAttribDivisorARB", v4836, v4837);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribFormat = sub_29AB0F644("glVertexAttribFormat", v4838, v4839);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribFormatNV = sub_29AB0F644("glVertexAttribFormatNV", v4840, v4841);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1i = sub_29AB0F644("glVertexAttribI1i", v4842, v4843);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1iEXT = sub_29AB0F644("glVertexAttribI1iEXT", v4844, v4845);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1iv = sub_29AB0F644("glVertexAttribI1iv", v4846, v4847);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1ivEXT = sub_29AB0F644("glVertexAttribI1ivEXT", v4848, v4849);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1ui = sub_29AB0F644("glVertexAttribI1ui", v4850, v4851);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1uiEXT = sub_29AB0F644("glVertexAttribI1uiEXT", v4852, v4853);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1uiv = sub_29AB0F644("glVertexAttribI1uiv", v4854, v4855);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI1uivEXT = sub_29AB0F644("glVertexAttribI1uivEXT", v4856, v4857);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2i = sub_29AB0F644("glVertexAttribI2i", v4858, v4859);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2iEXT = sub_29AB0F644("glVertexAttribI2iEXT", v4860, v4861);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2iv = sub_29AB0F644("glVertexAttribI2iv", v4862, v4863);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2ivEXT = sub_29AB0F644("glVertexAttribI2ivEXT", v4864, v4865);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2ui = sub_29AB0F644("glVertexAttribI2ui", v4866, v4867);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2uiEXT = sub_29AB0F644("glVertexAttribI2uiEXT", v4868, v4869);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2uiv = sub_29AB0F644("glVertexAttribI2uiv", v4870, v4871);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI2uivEXT = sub_29AB0F644("glVertexAttribI2uivEXT", v4872, v4873);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3i = sub_29AB0F644("glVertexAttribI3i", v4874, v4875);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3iEXT = sub_29AB0F644("glVertexAttribI3iEXT", v4876, v4877);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3iv = sub_29AB0F644("glVertexAttribI3iv", v4878, v4879);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3ivEXT = sub_29AB0F644("glVertexAttribI3ivEXT", v4880, v4881);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3ui = sub_29AB0F644("glVertexAttribI3ui", v4882, v4883);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3uiEXT = sub_29AB0F644("glVertexAttribI3uiEXT", v4884, v4885);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3uiv = sub_29AB0F644("glVertexAttribI3uiv", v4886, v4887);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI3uivEXT = sub_29AB0F644("glVertexAttribI3uivEXT", v4888, v4889);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4bv = sub_29AB0F644("glVertexAttribI4bv", v4890, v4891);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4bvEXT = sub_29AB0F644("glVertexAttribI4bvEXT", v4892, v4893);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4i = sub_29AB0F644("glVertexAttribI4i", v4894, v4895);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4iEXT = sub_29AB0F644("glVertexAttribI4iEXT", v4896, v4897);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4iv = sub_29AB0F644("glVertexAttribI4iv", v4898, v4899);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4ivEXT = sub_29AB0F644("glVertexAttribI4ivEXT", v4900, v4901);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4sv = sub_29AB0F644("glVertexAttribI4sv", v4902, v4903);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4svEXT = sub_29AB0F644("glVertexAttribI4svEXT", v4904, v4905);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4ubv = sub_29AB0F644("glVertexAttribI4ubv", v4906, v4907);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4ubvEXT = sub_29AB0F644("glVertexAttribI4ubvEXT", v4908, v4909);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4ui = sub_29AB0F644("glVertexAttribI4ui", v4910, v4911);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4uiEXT = sub_29AB0F644("glVertexAttribI4uiEXT", v4912, v4913);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4uiv = sub_29AB0F644("glVertexAttribI4uiv", v4914, v4915);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4uivEXT = sub_29AB0F644("glVertexAttribI4uivEXT", v4916, v4917);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4usv = sub_29AB0F644("glVertexAttribI4usv", v4918, v4919);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribI4usvEXT = sub_29AB0F644("glVertexAttribI4usvEXT", v4920, v4921);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribIFormat = sub_29AB0F644("glVertexAttribIFormat", v4922, v4923);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribIFormatNV = sub_29AB0F644("glVertexAttribIFormatNV", v4924, v4925);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribIPointer = sub_29AB0F644("glVertexAttribIPointer", v4926, v4927);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribIPointerEXT = sub_29AB0F644("glVertexAttribIPointerEXT", v4928, v4929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1d = sub_29AB0F644("glVertexAttribL1d", v4930, v4931);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1dEXT = sub_29AB0F644("glVertexAttribL1dEXT", v4932, v4933);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1dv = sub_29AB0F644("glVertexAttribL1dv", v4934, v4935);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1dvEXT = sub_29AB0F644("glVertexAttribL1dvEXT", v4936, v4937);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1i64NV = sub_29AB0F644("glVertexAttribL1i64NV", v4938, v4939);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1i64vNV = sub_29AB0F644("glVertexAttribL1i64vNV", v4940, v4941);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1ui64ARB = sub_29AB0F644("glVertexAttribL1ui64ARB", v4942, v4943);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1ui64NV = sub_29AB0F644("glVertexAttribL1ui64NV", v4944, v4945);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1ui64vARB = sub_29AB0F644("glVertexAttribL1ui64vARB", v4946, v4947);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL1ui64vNV = sub_29AB0F644("glVertexAttribL1ui64vNV", v4948, v4949);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2d = sub_29AB0F644("glVertexAttribL2d", v4950, v4951);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2dEXT = sub_29AB0F644("glVertexAttribL2dEXT", v4952, v4953);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2dv = sub_29AB0F644("glVertexAttribL2dv", v4954, v4955);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2dvEXT = sub_29AB0F644("glVertexAttribL2dvEXT", v4956, v4957);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2i64NV = sub_29AB0F644("glVertexAttribL2i64NV", v4958, v4959);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2i64vNV = sub_29AB0F644("glVertexAttribL2i64vNV", v4960, v4961);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2ui64NV = sub_29AB0F644("glVertexAttribL2ui64NV", v4962, v4963);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL2ui64vNV = sub_29AB0F644("glVertexAttribL2ui64vNV", v4964, v4965);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3d = sub_29AB0F644("glVertexAttribL3d", v4966, v4967);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3dEXT = sub_29AB0F644("glVertexAttribL3dEXT", v4968, v4969);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3dv = sub_29AB0F644("glVertexAttribL3dv", v4970, v4971);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3dvEXT = sub_29AB0F644("glVertexAttribL3dvEXT", v4972, v4973);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3i64NV = sub_29AB0F644("glVertexAttribL3i64NV", v4974, v4975);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3i64vNV = sub_29AB0F644("glVertexAttribL3i64vNV", v4976, v4977);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3ui64NV = sub_29AB0F644("glVertexAttribL3ui64NV", v4978, v4979);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL3ui64vNV = sub_29AB0F644("glVertexAttribL3ui64vNV", v4980, v4981);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4d = sub_29AB0F644("glVertexAttribL4d", v4982, v4983);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4dEXT = sub_29AB0F644("glVertexAttribL4dEXT", v4984, v4985);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4dv = sub_29AB0F644("glVertexAttribL4dv", v4986, v4987);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4dvEXT = sub_29AB0F644("glVertexAttribL4dvEXT", v4988, v4989);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4i64NV = sub_29AB0F644("glVertexAttribL4i64NV", v4990, v4991);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4i64vNV = sub_29AB0F644("glVertexAttribL4i64vNV", v4992, v4993);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4ui64NV = sub_29AB0F644("glVertexAttribL4ui64NV", v4994, v4995);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribL4ui64vNV = sub_29AB0F644("glVertexAttribL4ui64vNV", v4996, v4997);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribLFormat = sub_29AB0F644("glVertexAttribLFormat", v4998, v4999);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribLFormatNV = sub_29AB0F644("glVertexAttribLFormatNV", v5000, v5001);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribLPointer = sub_29AB0F644("glVertexAttribLPointer", v5002, v5003);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribLPointerEXT = sub_29AB0F644("glVertexAttribLPointerEXT", v5004, v5005);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP1ui = sub_29AB0F644("glVertexAttribP1ui", v5006, v5007);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP1uiv = sub_29AB0F644("glVertexAttribP1uiv", v5008, v5009);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP2ui = sub_29AB0F644("glVertexAttribP2ui", v5010, v5011);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP2uiv = sub_29AB0F644("glVertexAttribP2uiv", v5012, v5013);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP3ui = sub_29AB0F644("glVertexAttribP3ui", v5014, v5015);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP3uiv = sub_29AB0F644("glVertexAttribP3uiv", v5016, v5017);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP4ui = sub_29AB0F644("glVertexAttribP4ui", v5018, v5019);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribP4uiv = sub_29AB0F644("glVertexAttribP4uiv", v5020, v5021);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribParameteriAMD = sub_29AB0F644("glVertexAttribParameteriAMD", v5022, v5023);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer = sub_29AB0F644("glVertexAttribPointer", v5024, v5025);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointerARB = sub_29AB0F644("glVertexAttribPointerARB", v5026, v5027);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointerNV = sub_29AB0F644("glVertexAttribPointerNV", v5028, v5029);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs1dvNV = sub_29AB0F644("glVertexAttribs1dvNV", v5030, v5031);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs1fvNV = sub_29AB0F644("glVertexAttribs1fvNV", v5032, v5033);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs1hvNV = sub_29AB0F644("glVertexAttribs1hvNV", v5034, v5035);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs1svNV = sub_29AB0F644("glVertexAttribs1svNV", v5036, v5037);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs2dvNV = sub_29AB0F644("glVertexAttribs2dvNV", v5038, v5039);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs2fvNV = sub_29AB0F644("glVertexAttribs2fvNV", v5040, v5041);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs2hvNV = sub_29AB0F644("glVertexAttribs2hvNV", v5042, v5043);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs2svNV = sub_29AB0F644("glVertexAttribs2svNV", v5044, v5045);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs3dvNV = sub_29AB0F644("glVertexAttribs3dvNV", v5046, v5047);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs3fvNV = sub_29AB0F644("glVertexAttribs3fvNV", v5048, v5049);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs3hvNV = sub_29AB0F644("glVertexAttribs3hvNV", v5050, v5051);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs3svNV = sub_29AB0F644("glVertexAttribs3svNV", v5052, v5053);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs4dvNV = sub_29AB0F644("glVertexAttribs4dvNV", v5054, v5055);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs4fvNV = sub_29AB0F644("glVertexAttribs4fvNV", v5056, v5057);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs4hvNV = sub_29AB0F644("glVertexAttribs4hvNV", v5058, v5059);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs4svNV = sub_29AB0F644("glVertexAttribs4svNV", v5060, v5061);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribs4ubvNV = sub_29AB0F644("glVertexAttribs4ubvNV", v5062, v5063);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexBindingDivisor = sub_29AB0F644("glVertexBindingDivisor", v5064, v5065);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexBlendARB = sub_29AB0F644("glVertexBlendARB", v5066, v5067);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexFormatNV = sub_29AB0F644("glVertexFormatNV", v5068, v5069);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexP2ui = sub_29AB0F644("glVertexP2ui", v5070, v5071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexP2uiv = sub_29AB0F644("glVertexP2uiv", v5072, v5073);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexP3ui = sub_29AB0F644("glVertexP3ui", v5074, v5075);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexP3uiv = sub_29AB0F644("glVertexP3uiv", v5076, v5077);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexP4ui = sub_29AB0F644("glVertexP4ui", v5078, v5079);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexP4uiv = sub_29AB0F644("glVertexP4uiv", v5080, v5081);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexPointer = sub_29AB0F644("glVertexPointer", v5082, v5083);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexPointerEXT = sub_29AB0F644("glVertexPointerEXT", v5084, v5085);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexPointervINTEL = sub_29AB0F644("glVertexPointervINTEL", v5086, v5087);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexWeightPointerEXT = sub_29AB0F644("glVertexWeightPointerEXT", v5088, v5089);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexWeightfEXT = sub_29AB0F644("glVertexWeightfEXT", v5090, v5091);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexWeightfvEXT = sub_29AB0F644("glVertexWeightfvEXT", v5092, v5093);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexWeighthNV = sub_29AB0F644("glVertexWeighthNV", v5094, v5095);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexWeighthvNV = sub_29AB0F644("glVertexWeighthvNV", v5096, v5097);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVideoCaptureNV = sub_29AB0F644("glVideoCaptureNV", v5098, v5099);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVideoCaptureStreamParameterdvNV = sub_29AB0F644("glVideoCaptureStreamParameterdvNV", v5100, v5101);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVideoCaptureStreamParameterfvNV = sub_29AB0F644("glVideoCaptureStreamParameterfvNV", v5102, v5103);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glVideoCaptureStreamParameterivNV = sub_29AB0F644("glVideoCaptureStreamParameterivNV", v5104, v5105);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport = sub_29AB0F644("glViewport", v5106, v5107);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewportArrayv = sub_29AB0F644("glViewportArrayv", v5108, v5109);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewportIndexedf = sub_29AB0F644("glViewportIndexedf", v5110, v5111);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewportIndexedfv = sub_29AB0F644("glViewportIndexedfv", v5112, v5113);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewportPositionWScaleNV = sub_29AB0F644("glViewportPositionWScaleNV", v5114, v5115);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewportSwizzleNV = sub_29AB0F644("glViewportSwizzleNV", v5116, v5117);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWaitSemaphoreEXT = sub_29AB0F644("glWaitSemaphoreEXT", v5118, v5119);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWaitSemaphoreui64NVX = sub_29AB0F644("glWaitSemaphoreui64NVX", v5120, v5121);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWaitSync = sub_29AB0F644("glWaitSync", v5122, v5123);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightPathsNV = sub_29AB0F644("glWeightPathsNV", v5124, v5125);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightPointerARB = sub_29AB0F644("glWeightPointerARB", v5126, v5127);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightbvARB = sub_29AB0F644("glWeightbvARB", v5128, v5129);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightdvARB = sub_29AB0F644("glWeightdvARB", v5130, v5131);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightfvARB = sub_29AB0F644("glWeightfvARB", v5132, v5133);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightivARB = sub_29AB0F644("glWeightivARB", v5134, v5135);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightsvARB = sub_29AB0F644("glWeightsvARB", v5136, v5137);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightubvARB = sub_29AB0F644("glWeightubvARB", v5138, v5139);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightuivARB = sub_29AB0F644("glWeightuivARB", v5140, v5141);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWeightusvARB = sub_29AB0F644("glWeightusvARB", v5142, v5143);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2d = sub_29AB0F644("glWindowPos2d", v5144, v5145);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2dARB = sub_29AB0F644("glWindowPos2dARB", v5146, v5147);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2dv = sub_29AB0F644("glWindowPos2dv", v5148, v5149);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2dvARB = sub_29AB0F644("glWindowPos2dvARB", v5150, v5151);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2f = sub_29AB0F644("glWindowPos2f", v5152, v5153);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2fARB = sub_29AB0F644("glWindowPos2fARB", v5154, v5155);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2fv = sub_29AB0F644("glWindowPos2fv", v5156, v5157);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2fvARB = sub_29AB0F644("glWindowPos2fvARB", v5158, v5159);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2i = sub_29AB0F644("glWindowPos2i", v5160, v5161);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2iARB = sub_29AB0F644("glWindowPos2iARB", v5162, v5163);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2iv = sub_29AB0F644("glWindowPos2iv", v5164, v5165);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2ivARB = sub_29AB0F644("glWindowPos2ivARB", v5166, v5167);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2s = sub_29AB0F644("glWindowPos2s", v5168, v5169);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2sARB = sub_29AB0F644("glWindowPos2sARB", v5170, v5171);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2sv = sub_29AB0F644("glWindowPos2sv", v5172, v5173);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos2svARB = sub_29AB0F644("glWindowPos2svARB", v5174, v5175);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3d = sub_29AB0F644("glWindowPos3d", v5176, v5177);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3dARB = sub_29AB0F644("glWindowPos3dARB", v5178, v5179);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3dv = sub_29AB0F644("glWindowPos3dv", v5180, v5181);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3dvARB = sub_29AB0F644("glWindowPos3dvARB", v5182, v5183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3f = sub_29AB0F644("glWindowPos3f", v5184, v5185);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3fARB = sub_29AB0F644("glWindowPos3fARB", v5186, v5187);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3fv = sub_29AB0F644("glWindowPos3fv", v5188, v5189);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3fvARB = sub_29AB0F644("glWindowPos3fvARB", v5190, v5191);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3i = sub_29AB0F644("glWindowPos3i", v5192, v5193);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3iARB = sub_29AB0F644("glWindowPos3iARB", v5194, v5195);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3iv = sub_29AB0F644("glWindowPos3iv", v5196, v5197);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3ivARB = sub_29AB0F644("glWindowPos3ivARB", v5198, v5199);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3s = sub_29AB0F644("glWindowPos3s", v5200, v5201);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3sARB = sub_29AB0F644("glWindowPos3sARB", v5202, v5203);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3sv = sub_29AB0F644("glWindowPos3sv", v5204, v5205);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowPos3svARB = sub_29AB0F644("glWindowPos3svARB", v5206, v5207);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWindowRectanglesEXT = sub_29AB0F644("glWindowRectanglesEXT", v5208, v5209);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWriteMaskEXT = sub_29AB0F644("glWriteMaskEXT", v5210, v5211);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawVkImageNV = sub_29AB0F644("glDrawVkImageNV", v5212, v5213);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVkProcAddrNV = sub_29AB0F644("glGetVkProcAddrNV", v5214, v5215);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glWaitVkSemaphoreNV = sub_29AB0F644("glWaitVkSemaphoreNV", v5216, v5217);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSignalVkSemaphoreNV = sub_29AB0F644("glSignalVkSemaphoreNV", v5218, v5219);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSignalVkFenceNV = sub_29AB0F644("glSignalVkFenceNV", v5220, v5221);
  if (__p)
  {
    v5224 = __p;
    operator delete(__p);
  }

  if (v5226)
  {
    v5227 = v5226;
    operator delete(v5226);
  }
}

void sub_29AB0F5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiUnload(pxrInternal__aapl__pxrReserved__::internal::GLApi *this)
{
  result = qword_2A1748298;
  if (qword_2A1748298)
  {
    result = pxrInternal__aapl__pxrReserved__::ArchLibraryClose(qword_2A1748298);
    qword_2A1748298 = 0;
  }

  return result;
}

void *sub_29AB0F644(char *__symbol, uint64_t a2, char *a3)
{
  v6 = qword_2A1748298;
  if (!qword_2A1748298)
  {
    v8[6] = v3;
    v8[7] = v4;
    sub_29B2BEA90(v8, __symbol, a3);
  }

  return pxrInternal__aapl__pxrReserved__::ArchLibraryGetSymbolAddress(v6, __symbol);
}

BOOL sub_29AB0F67C(const char *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (!v3)
  {
    return 0;
  }

  v5 = v3 >> 3;
  if ((v3 >> 3) <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 >> 3;
  }

  if (!strcmp(a1, *v2))
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    v9 = strcmp(a1, v2[v7]);
    v7 = v8 + 1;
  }

  while (v9);
  return v8 < v5;
}

pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::GarchGLDebugWindow(pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *this, char *a2, int a3, int a4)
{
  *this = &unk_2A2071690;
  sub_29A008E78(this + 2, a2);
  *(this + 10) = a3;
  *(this + 11) = a4;
  return this;
}

{
  *this = &unk_2A2071690;
  sub_29A008E78(this + 2, a2);
  *(this + 10) = a3;
  *(this + 11) = a4;
  return this;
}

void pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *this)
{
  *this = &unk_2A2071690;
  v2 = *(this + 1);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::OnResize(uint64_t this, int a2, int a3)
{
  *(this + 40) = a2;
  *(this + 44) = a3;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(uint64_t a1, void *a2, __int128 *a3, int a4)
{
  *a1 = *a2;
  v6 = a1 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(v6 + 16) = *(a3 + 2);
    *v6 = v7;
  }

  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(pxrInternal__aapl__pxrReserved__::Hf_PluginEntry *this)
{
  v2 = (this + 40);
  if (*(this + 5))
  {
    v4[0] = "hf/pluginEntry.cpp";
    v4[1] = "~Hf_PluginEntry";
    v4[2] = 31;
    v4[3] = "pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry()";
    v5 = 0;
    v3 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "_instance == nullptr", 0);
    sub_29B2BEAE8(v4, v3, v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

__n128 pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::GetId@<X0>(pxrInternal__aapl__pxrReserved__::Hf_PluginEntry *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(this);

  return pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
}

std::string *pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::GetDesc(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v5);
  if (&v5 == a2)
  {
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*a2 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a2 = v5;
  }

  result = std::string::operator=((a2 + 8), (a1 + 8));
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::IncRefCount(pxrInternal__aapl__pxrReserved__::Hf_PluginEntry *this)
{
  if (!*(this + 12))
  {
    v2 = sub_29AB0FC70(this);
    if (v2)
    {
      v3 = v2[4];
      if (!v3)
      {
        sub_29A0DDCB0();
      }

      *(this + 5) = (*(*v3 + 48))(v3);
    }

    else
    {
      v7[0] = "hf/pluginEntry.cpp";
      v7[1] = "IncRefCount";
      v7[2] = 82;
      v7[3] = "void pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::IncRefCount()";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(this);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6);
      v4 = v6 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v5 = (v4 + 16);
        if (*(v4 + 39) < 0)
        {
          v5 = *v5;
        }
      }

      else
      {
        v5 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Plugin %s is missing TfType registration", v5);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  ++*(this + 12);
}

void *sub_29AB0FC70(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::DecRefCount(_DWORD *this)
{
  v1 = this;
  v2 = this[12];
  if (v2 <= 0)
  {
    v4[0] = "hf/pluginEntry.cpp";
    v4[1] = "DecRefCount";
    v4[2] = 93;
    v4[3] = "void pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::DecRefCount()";
    v5 = 0;
    this = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "_refCount > 0", 0);
    if (!this)
    {
      v1[12] = 0;
      return this;
    }

    v2 = v1[12];
  }

  v3 = v2 - 1;
  v1[12] = v3;
  if (!v3)
  {
    this = *(v1 + 5);
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    *(v1 + 5) = 0;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 > v3)
  {
    return 0;
  }

  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
  v7 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
  v8 = *(v7 + 23);
  v9 = *(TypeName + 23);
  if (v9 >= 0)
  {
    v10 = *(TypeName + 23);
  }

  else
  {
    v10 = *(TypeName + 8);
  }

  if (v9 >= 0)
  {
    v11 = TypeName;
  }

  else
  {
    v11 = *TypeName;
  }

  if (v8 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  if (v8 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  if (v15)
  {
    return v15 < 0;
  }

  else
  {
    return v10 < v12;
  }
}

void pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::SetFactory(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(0x28uLL);
  sub_29AB0FF18(v4, a2);
  v6 = 0;
  v7 = v4;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_29AB10104(&v6, 0);
}

void sub_29AB0FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    sub_29B293128(v11);
  }

  sub_29AB10104(&a9, 0);
  _Unwind_Resume(a1);
}

void *sub_29AB0FF18(void *a1, uint64_t a2)
{
  *a1 = &unk_2A2071708;
  sub_29AB0FFEC((a1 + 1), a2);
  return a1;
}

void sub_29AB0FF70(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  sub_29AB10084(a1 + 8);

  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);
}

void sub_29AB0FFAC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  sub_29AB10084(a1 + 8);
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v2);
}

uint64_t sub_29AB0FFEC(uint64_t a1, uint64_t a2)
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

uint64_t sub_29AB10084(uint64_t a1)
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

void sub_29AB10104(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase **a1, pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29AB10084(v2 + 8);
    pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(v2);

    operator delete(v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HfPluginRegistry::HfPluginRegistry(uint64_t this, const pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v2 = *a2;
  *this = &unk_2A2071770;
  *(this + 8) = v2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 40) = this + 48;
  *(this + 64) = 0;
  return this;
}

{
  v2 = *a2;
  *this = &unk_2A2071770;
  *(this + 8) = v2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 40) = this + 48;
  *(this + 64) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this)
{
  *this = &unk_2A2071770;
  sub_29A1602D4(this + 40, *(this + 6));
  v2 = (this + 16);
  sub_29AB10D94(&v2);
}

{
  *this = &unk_2A2071770;
  sub_29A1602D4(this + 40, *(this + 6));
  v2 = (this + 16);
  sub_29AB10D94(&v2);
}

{
  *this = &unk_2A2071770;
  sub_29A1602D4(this + 40, *(this + 6));
  v2 = (this + 16);
  sub_29AB10D94(&v2);
  operator delete(this);
}

void pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_DiscoverPlugins(a1);
  }

  if (*a2 != a2[1])
  {
    sub_29B2BEB30(v8, a2);
  }

  sub_29AB107F8(a2, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 24) - *(a1 + 16)) >> 3));
  v4 = *(a1 + 16);
  if (*(a1 + 24) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::GetDesc(v4 + v6, *a2 + v5);
      ++v7;
      v4 = *(a1 + 16);
      v6 += 56;
      v5 += 40;
    }

    while (v7 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 24) - v4) >> 3));
  }
}

void pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_DiscoverPlugins(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this)
{
  v1 = this;
  v22 = (this + 16);
  if (*(this + 2) != *(this + 3))
  {
    this = sub_29B2BEB98(__p);
  }

  Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(this);
  v28 = 0;
  v29 = 0;
  v27 = &v28;
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*(v1 + 1), &v27);
  sub_29AB10C54(v22, v29);
  v3 = v27;
  if (v27 != &v28)
  {
    do
    {
      v4 = v3[4];
      sub_29A008E78(__p, "displayName");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetStringFromPluginMetaData(v4, v25);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = v3[4];
      sub_29A008E78(__p, "priority");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(v5, &v23);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      v6 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v6 = v25[1];
      }

      if (v6 && pxrInternal__aapl__pxrReserved__::JsValue::IsInt(&v23))
      {
        Int = pxrInternal__aapl__pxrReserved__::JsValue::GetInt(&v23);
        LODWORD(__p[0]) = Int;
        v8 = *(v1 + 3);
        if (v8 >= *(v1 + 4))
        {
          v9 = sub_29AB11384(v22, (v3 + 4), v25, __p);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(*(v1 + 3), v3 + 4, v25, Int);
          v9 = v8 + 56;
          *(v1 + 3) = v8 + 56;
        }

        *(v1 + 3) = v9;
      }

      else
      {
        __p[0] = "hf/pluginRegistry.cpp";
        __p[1] = "_DiscoverPlugins";
        v31 = 191;
        v32 = "void pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_DiscoverPlugins()";
        v33 = 0;
        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v3 + 4));
        if (*(TypeName + 23) >= 0)
        {
          v12 = TypeName;
        }

        else
        {
          v12 = *TypeName;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Plugin %s type information incomplete", v11, v12);
      }

      (*(*v1 + 16))(v1, Instance, v3 + 4);
      if (v24)
      {
        sub_29A014BEC(v24);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      v13 = v3[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != &v28);
  }

  v16 = *(v1 + 2);
  v17 = *(v1 + 3);
  v18 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v17 - v16) >> 3));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_29AB114E4(v16, v17, __p, v19, 1);
  __p[0] = 0;
  v20 = *(v1 + 2);
  if (*(v1 + 3) != v20)
  {
    v21 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::GetId((v20 + 56 * v21), v25);
      sub_29AB126E8(v1 + 5, v25, v25, __p);
      if ((v25[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v25[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = __p[0] + 1;
      __p[0] = v21;
      v20 = *(v1 + 2);
    }

    while (v21 < 0x6DB6DB6DB6DB6DB7 * ((*(v1 + 3) - v20) >> 3));
  }

  *(v1 + 64) = 1;
  sub_29A082B84(&v27, v28);
}

void sub_29AB107F8(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29AB10E84(a1, v4);
  }

  else if (!v3)
  {
    sub_29AB10E18(a1, *a1 + 40 * a2);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDesc(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this, uint64_t *a2, uint64_t a3)
{
  if ((*(this + 64) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_DiscoverPlugins(this);
  }

  v6 = sub_29A31B8F0(this + 40, a2);
  v7 = v6;
  if ((this + 48) != v6)
  {
    pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::GetDesc(*(this + 2) + 56 * *(v6 + 5), a3);
  }

  return (this + 48) != v7;
}

void pxrInternal__aapl__pxrReserved__::HfPluginRegistry::AddPluginReference(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this, const std::type_info *a2)
{
  EntryForPlugin = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_GetEntryForPlugin(this, a2);
  if (EntryForPlugin)
  {

    pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::IncRefCount(EntryForPlugin);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_GetEntryForPlugin(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this, const std::type_info *a2)
{
  v14 = a2;
  v3 = sub_29AB10D3C(&v14, a2);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v13);
  if (*v3 == v13[0] && (sub_29B2BEBE4(v13) & 1) == 0)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v3);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v12);
  v4 = sub_29A31B8F0(this + 40, &v12);
  if (this + 48) != v4 || (v7 = "hf/pluginRegistry.cpp", v8 = "_GetEntryForPlugin", v9 = 227, v10 = "Hf_PluginEntry *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_GetEntryForPlugin(HfPluginBase *)", v11 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v7, "it != _pluginIndex.end()", 0)))
  {
    v5 = *(this + 2) + 56 * v4[5];
    if (*(v5 + 40) != v14)
    {
      v7 = "hf/pluginRegistry.cpp";
      v8 = "_GetEntryForPlugin";
      v9 = 233;
      v10 = "Hf_PluginEntry *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_GetEntryForPlugin(HfPluginBase *)";
      v11 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v7, "entry.GetInstance() == plugin", 0))
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v5;
}

void sub_29AB10A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HfPluginRegistry *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::ReleasePlugin(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this, const std::type_info *a2)
{
  if (a2)
  {
    this = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_GetEntryForPlugin(this, a2);
    if (this)
    {

      return pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::DecRefCount(this);
    }
  }

  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::HfPluginRegistry::IsRegisteredPlugin(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((*(this + 64) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_DiscoverPlugins(this);
  }

  return (this + 48) != sub_29A31B8F0(this + 40, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPlugin(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((*(this + 64) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_DiscoverPlugins(this);
  }

  v4 = sub_29A31B8F0(this + 40, a2);
  if ((this + 48) != v4)
  {
    v5 = (*(this + 2) + 56 * *(v4 + 5));
    if (*(v5 + 5))
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::IncRefCount(v5);
      return *(v5 + 5);
    }

    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v4);
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(*v5, v12);
    v7 = sub_29B290C20(v12);
    if (v8 & 1 | v7 || (v10[0] = "hf/pluginRegistry.cpp", v10[1] = "GetPlugin", v10[2] = 130, v10[3] = "HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPlugin(const TfToken &)", v11 = 0, v9 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "plugin", 0), (sub_29B2BEC30(v10, v9, v12) & 1) != 0))
    {
      sub_29A17F138(v12);
    }
  }

  return 0;
}

void sub_29AB10BFC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AB10C54(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x492492492492493)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A040BCC(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = v4 + 56 * v6;
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29AB11290(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AB11334(&v12);
  }

  return result;
}

void sub_29AB10D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB11334(va);
  _Unwind_Resume(a1);
}

const void *sub_29AB10D3C(pxrInternal__aapl__pxrReserved__::TfType *a1, const std::type_info *a2)
{
  if (*a1)
  {
    return pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(*(**a1 - 8), a2);
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::TfType::GetUnknownType(a1);
  }
}

const pxrInternal__aapl__pxrReserved__::HfPluginBase **pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginId@<X0>(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::HfPluginBase *a2@<X1>, void *a3@<X8>)
{
  result = *(this + 2);
  v5 = *(this + 3);
  while (1)
  {
    if (result == v5)
    {
      *a3 = 0;
      return result;
    }

    if (result[5] == a2)
    {
      break;
    }

    result += 7;
  }

  return pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::GetId(result, a3);
}

void sub_29AB10D94(void ***a1)
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
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry((v4 - 56));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AB10E18(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }

    v6 = *(i - 40);
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = a2;
}

void sub_29AB10E84(uint64_t a1, unint64_t a2)
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
    sub_29AB11010(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    sub_29AB111E0(&v17);
  }
}

void sub_29AB10FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB111E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB11010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      v5 = *(v4 + 8);
      *(a4 + 24) = *(v4 + 24);
      *(a4 + 8) = v5;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      *(a4 + 32) = *(v4 + 32);
      v4 += 40;
      a4 += 40;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  sub_29AB110C0(a1, a2, a3);
  return sub_29AB1112C(v7);
}

void sub_29AB110C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      if (*(v4 + 31) < 0)
      {
        operator delete(*(v4 + 8));
      }

      if ((*v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 40;
    }

    while (v4 != a3);
  }
}

uint64_t sub_29AB1112C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB11178(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29AB11178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 9) < 0)
      {
        operator delete(*(v6 - 32));
      }

      v8 = *(v6 - 40);
      v6 -= 40;
      v7 = v8;
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v6 != a5);
  }
}

uint64_t sub_29AB111E0(uint64_t a1)
{
  sub_29AB11218(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB11218(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 40);
    *(a1 + 16) = i - 40;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }

    if ((*v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AB11290(uint64_t a1, pxrInternal__aapl__pxrReserved__::Hf_PluginEntry *a2, pxrInternal__aapl__pxrReserved__::Hf_PluginEntry *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(a4, v8);
      v8 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v6);
      v6 = (v6 + 56);
    }
  }
}

void sub_29AB11310(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 56);
    do
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v4);
      v4 = (v5 - 56);
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB11334(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AB11384(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v10 = 0x492492492492492;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    v11 = sub_29A040BCC(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  v19 = (v11 + 56 * v4);
  *&v20 = v19;
  *(&v20 + 1) = v11 + 56 * v10;
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v19, a2, a3, *a4);
  *&v20 = v19 + 56;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  sub_29AB11290(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29AB11334(&v18);
  return v17;
}

void sub_29AB114D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB11334(va);
  _Unwind_Resume(a1);
}

void sub_29AB114E4(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v21 = a2;
  v22 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v8) >> 3);
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      v21 = (v7 - 56);
      if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<((v7 - 56), v8))
      {
        v19 = &v22;
        v20 = &v21;
        goto LABEL_29;
      }

      return;
    }

LABEL_10:
    if (v10 <= 1343)
    {
      if (a5)
      {
        sub_29AB11A8C(v8, v7);
      }

      else
      {
        sub_29AB11B78(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        sub_29AB121DC(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = (v7 - 56);
    if (v10 < 0x1C01)
    {
      sub_29AB118A8((v8 + 56 * (v11 >> 1)), v8, v13);
      if (a5)
      {
LABEL_17:
        v7 = v21;
        goto LABEL_18;
      }
    }

    else
    {
      sub_29AB118A8(v8, (v8 + 56 * (v11 >> 1)), v13);
      v14 = 56 * v12 - 56;
      sub_29AB118A8((v22 + 56), (v22 + v14), (v21 - 112));
      sub_29AB118A8((v22 + 112), (v22 + 56 * v12 + 56), (v21 - 168));
      sub_29AB118A8((v22 + v14), (v22 + 56 * v12), (v22 + 56 * v12 + 56));
      v26 = (v22 + 56 * v12);
      sub_29AB11C38(&v22, &v26);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v7 = v21;
    if ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<((v22 - 56), v22) & 1) == 0)
    {
      v8 = sub_29AB11CA4(v22, v21);
LABEL_26:
      a5 = 0;
      v22 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v15 = sub_29AB11E20(v22, v7);
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    v17 = sub_29AB11F94(v22, v15);
    v8 = (v15 + 56);
    if (sub_29AB11F94(v15 + 56, v7))
    {
      if (v17)
      {
        return;
      }

      v21 = v15;
      v8 = v22;
      v7 = v15;
    }

    else
    {
      if (!v17)
      {
LABEL_25:
        sub_29AB114E4(v22, v15, a3, -i, a5 & 1);
        v8 = (v15 + 56);
        goto LABEL_26;
      }

      v22 = (v15 + 56);
    }
  }

  if (v11 == 3)
  {
    v21 = (v7 - 56);
    sub_29AB118A8(v8, (v8 + 56), (v7 - 56));
    return;
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      v21 = (v7 - 56);
      sub_29AB11960(v8, (v8 + 56), (v8 + 112), (v8 + 168), (v7 - 56));
      return;
    }

    goto LABEL_10;
  }

  v21 = (v7 - 56);
  v25 = (v8 + 56);
  v26 = v8;
  v23 = v7 - 56;
  v24 = (v8 + 112);
  sub_29AB118A8(v8, (v8 + 56), (v8 + 112));
  if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<((v7 - 56), (v8 + 112)))
  {
    sub_29AB1183C(&v24, &v23);
    if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v24, (v8 + 56)))
    {
      sub_29AB1183C(&v25, &v24);
      if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v25, v8))
      {
        v19 = &v26;
        v20 = &v25;
LABEL_29:
        sub_29AB1183C(v19, v20);
      }
    }
  }
}

void sub_29AB1183C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v4, *a1);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v2, v3);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v3, v4);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v4);
}

void sub_29AB11894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB118A8(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *a2, pxrInternal__aapl__pxrReserved__::TfType *a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(a2, a1);
  result = pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(a3, a2);
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    sub_29AB1183C(&v11, &v10);
    if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v9, v10))
    {
      v7 = &v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_29AB1183C(&v10, &v9);
    if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_29AB1183C(v7, v8);
    }
  }

  return 1;
}

void sub_29AB11960(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *a2, pxrInternal__aapl__pxrReserved__::TfType *a3, pxrInternal__aapl__pxrReserved__::TfType *a4, pxrInternal__aapl__pxrReserved__::TfType *a5)
{
  v13 = a2;
  v14 = a1;
  v11 = a4;
  v12 = a3;
  v10 = a5;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v15 = a4;
  sub_29AB118A8(a1, a2, a3);
  if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(a4, a3))
  {
    sub_29AB1183C(&v16, &v15);
    if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v16, a2))
    {
      sub_29AB1183C(&v17, &v16);
      if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v17, a1))
      {
        sub_29AB1183C(&v18, &v17);
      }
    }
  }

  if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(a5, a4))
  {
    sub_29AB1183C(&v11, &v10);
    if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, a3))
    {
      sub_29AB1183C(&v12, &v11);
      if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v12, a2))
      {
        sub_29AB1183C(&v13, &v12);
        if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v13, a1))
        {
          sub_29AB1183C(&v14, &v13);
        }
      }
    }
  }
}

void sub_29AB11A8C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 56);
    if (a1 + 56 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v4, v7))
        {
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v11, v6);
          v8 = v5;
          while (1)
          {
            pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(a1 + v8 + 56, a1 + v8);
            if (!v8)
            {
              break;
            }

            v9 = pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, (a1 + v8 - 56));
            v8 -= 56;
            if ((v9 & 1) == 0)
            {
              v10 = a1 + v8 + 56;
              goto LABEL_10;
            }
          }

          v10 = a1;
LABEL_10:
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v10, v11);
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v11);
        }

        v4 = (v6 + 56);
        v5 += 56;
      }

      while (v6 + 56 != a2);
    }
  }
}

void sub_29AB11B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

void sub_29AB11B78(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = (a1 + 56);
    while (v4 != a2)
    {
      v5 = v4;
      if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v4, v3))
      {
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v6, v5);
        do
        {
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v3 + 56, v3);
          v3 = (v3 - 56);
        }

        while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v6, v3) & 1) != 0);
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v3 + 56, v6);
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v6);
      }

      v4 = (v5 + 56);
      v3 = v5;
    }
  }
}

void sub_29AB11C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

void sub_29AB11C38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v4, *a1);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v2, v3);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v3, v4);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v4);
}

void sub_29AB11C90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *sub_29AB11CA4(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v12 = a2;
  v13 = a1;
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v11, a1);
  if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, (a2 - 56)))
  {
    v4 = a1;
    do
    {
      v4 = (v4 + 56);
      v13 = v4;
    }

    while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, v4) & 1) == 0);
  }

  else
  {
    v5 = (a1 + 56);
    do
    {
      v4 = v5;
      v13 = v5;
      if (v5 >= v12)
      {
        break;
      }

      v6 = pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, v5);
      v5 = (v4 + 56);
    }

    while (!v6);
  }

  v7 = v12;
  if (v4 < v12)
  {
    do
    {
      v7 = (v7 - 56);
      v12 = v7;
    }

    while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, v7) & 1) != 0);
    v4 = v13;
  }

  if (v4 < v7)
  {
    do
    {
      sub_29AB1183C(&v13, &v12);
      do
      {
        v13 = (v13 + 56);
      }

      while (!pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, v13));
      do
      {
        v12 = (v12 - 56);
      }

      while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, v12) & 1) != 0);
      v4 = v13;
    }

    while (v13 < v12);
  }

  v8 = v4 - 56;
  if (v8 != a1)
  {
    pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(a1, v8);
  }

  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v8, v11);
  v9 = v13;
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v11);
  return v9;
}

void sub_29AB11DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB11E20(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v12 = a2;
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v11, a1);
  v3 = 0;
  do
  {
    v13 = (a1 + v3 + 56);
    v3 += 56;
  }

  while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v13, v11) & 1) != 0);
  v4 = v12;
  if (v3 == 56)
  {
    v7 = (a1 + 56);
    do
    {
      if (v7 >= v4)
      {
        break;
      }

      v4 = (v4 - 56);
      v12 = v4;
    }

    while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v4, v11) & 1) == 0);
  }

  else
  {
    v5 = (v12 - 56);
    do
    {
      v12 = v5;
      v6 = pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v5, v11);
      v5 = (v5 - 56);
    }

    while (!v6);
    v7 = v13;
  }

  v8 = v7;
  if (v7 < v12)
  {
    do
    {
      sub_29AB1183C(&v13, &v12);
      do
      {
        v13 = (v13 + 56);
      }

      while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v13, v11) & 1) != 0);
      do
      {
        v12 = (v12 - 56);
      }

      while (!pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v12, v11));
      v8 = v13;
    }

    while (v13 < v12);
  }

  v9 = v8 - 56;
  if ((v8 - 56) != a1)
  {
    pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(a1, v8 - 56);
  }

  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v9, v11);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v11);
  return v9;
}

void sub_29AB11F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB11F94(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v15 = a2;
  v16 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29AB118A8(a1, (a1 + 56), (a2 - 56));
        return 1;
      case 4:
        v14[0] = a1;
        v11 = (a2 - 56);
        v18 = (a1 + 112);
        v19 = (a1 + 56);
        v17 = a2 - 56;
        sub_29AB118A8(a1, (a1 + 56), (a1 + 112));
        if (!pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v11, (a1 + 112)))
        {
          return 1;
        }

        sub_29AB1183C(&v18, &v17);
        if (!pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v18, (a1 + 56)))
        {
          return 1;
        }

        sub_29AB1183C(&v19, &v18);
        if (!pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v19, a1))
        {
          return 1;
        }

        v5 = v14;
        v6 = &v19;
        goto LABEL_6;
      case 5:
        sub_29AB11960(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56));
        return 1;
    }

LABEL_12:
    v7 = (a1 + 112);
    sub_29AB118A8(a1, (a1 + 56), (a1 + 112));
    v8 = (a1 + 168);
    if (v8 != a2)
    {
      v9 = 0;
      while (1)
      {
        if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v8, v7))
        {
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v14, v8);
          do
          {
            v10 = v7;
            pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v7 + 56, v7);
            if (v7 == v16)
            {
              break;
            }

            v7 = (v7 - 56);
          }

          while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v14, (v10 - 56)) & 1) != 0);
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v10, v14);
          if (++v9 == 8)
          {
            v12 = (v8 + 56) == v15;
            pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v14);
            return v12;
          }

          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v14);
        }

        v7 = v8;
        v8 = (v8 + 56);
        if (v8 == v15)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  v15 = (a2 - 56);
  if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<((a2 - 56), a1))
  {
    v5 = &v16;
    v6 = &v15;
LABEL_6:
    sub_29AB1183C(v5, v6);
  }

  return 1;
}

uint64_t sub_29AB121DC(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::TfType *a3, uint64_t a4)
{
  v15 = a1;
  if (a1 != a2)
  {
    v7 = a1;
    v8 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 56 * v9);
      do
      {
        sub_29AB122F8(v7, a4, v8, v11);
        v11 = (v11 - 56);
        --v10;
      }

      while (v10);
    }

    v14 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v12, v15))
        {
          sub_29AB1183C(&v14, &v15);
          sub_29AB122F8(v15, a4, v8, v15);
        }

        v12 = (v14 + 56);
        v14 = v12;
      }

      while (v12 != a3);
      v7 = v15;
    }

    sub_29AB1246C(v7, a2, a4);
    return v14;
  }

  return a3;
}

void sub_29AB122F8(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::TfType *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - a1) >> 3))
    {
      v9 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 56 * v9;
      v11 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3) + 2;
      if (v11 < a3 && pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<((a1 + 56 * v9), (v10 + 56)))
      {
        v10 += 56;
        v9 = v11;
      }

      if ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v10, v5) & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v14, v5);
        do
        {
          v12 = v10;
          pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v13 = (2 * v9) | 1;
          v10 = a1 + 56 * v13;
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v13;
          }

          else if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<((a1 + 56 * v13), (v10 + 56)))
          {
            v10 += 56;
          }

          else
          {
            v9 = v13;
          }

          v5 = v12;
        }

        while (!pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v10, v14));
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v12, v14);
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v14);
      }
    }
  }
}

void sub_29AB12454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

void sub_29AB1246C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 - a1 >= 57)
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    v6 = a2 - 56;
    do
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v12, a1);
      v7 = sub_29AB1256C(a1, a3, v5);
      v8 = v7;
      if (v6 == v7)
      {
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v7, v12);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v7, v6);
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v6, v12);
        sub_29AB12618(a1, v8 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v8 + 56 - a1) >> 3));
      }

      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v12);
      v6 -= 56;
      v11 = __OFSUB__(v5, 2);
      v9 = v5 == 2;
      v10 = v5 - 2 < 0;
      --v5;
    }

    while (!(v10 ^ v11 | v9));
  }
}

void sub_29AB12558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB1256C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 56 * v5;
    v8 = v7 + 56;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 112;
      if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<((v7 + 56), (v7 + 112)))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(a1, v8);
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

void sub_29AB12618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    v6 = (a1 + 56 * v5);
    v7 = a2 - 56;
    if (pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v6, (a2 - 56)))
    {
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::Hf_PluginEntry(v9, v7);
      do
      {
        v8 = v6;
        pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v7, v6);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 56 * v5);
        v7 = v8;
      }

      while ((pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator<(v6, v9) & 1) != 0);
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::operator=(v8, v9);
      pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(v9);
    }
  }
}

void sub_29AB126D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Hf_PluginEntry::~Hf_PluginEntry(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AB126E8(uint64_t **a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = sub_29A153CF4(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AB12770(a1, a3, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

void *sub_29AB12770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  v9 = *a2;
  result[4] = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[5] = *a3;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AB127F0()
{
  v1 = nullsub_1538;
  return sub_29AB15228(&var8);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetFormat(pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage *this)
{
  v1 = *(this + 16);
  if (v1 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(this + 17) - 1;
  v3 = v2 + *&asc_29B4E16C8[4 * v1];
  if (v2 >= 4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetBytesPerPixel(pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage *this)
{
  v1 = *(this + 17);
  Format = pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetFormat(this);
  return v1 * pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfType(Format);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::ReadCropped(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (!*(a1 + 8) || (a3 | a2 | a4 | a5) < 0)
  {
    return 0;
  }

  v12 = *(a1 + 64);
  v59 = *(a1 + 68);
  v60 = *(a1 + 72);
  v13 = *a6;
  v61 = *(a6 + 4);
  v62 = *(a1 + 76);
  ComponentCount = pxrInternal__aapl__pxrReserved__::HioGetComponentCount(*(a6 + 12));
  v64 = v12;
  v14 = v12 == 0;
  HioType = pxrInternal__aapl__pxrReserved__::HioGetHioType(*(a6 + 12));
  v16 = pxrInternal__aapl__pxrReserved__::HioGetHioType(*(a6 + 12));
  v17 = pxrInternal__aapl__pxrReserved__::HioGetHioType(*(a6 + 12));
  v18 = HioType;
  v58 = v16;
  v20 = HioType == 8 || v16 == 7;
  if (v17 == 5)
  {
    v20 = v14;
  }

  if (!v20)
  {
    return 0;
  }

  v21 = v17;
  if (v18 == 8 && (v64 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v24 = v18;
  v25 = ComponentCount * pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfType(*(a6 + 12));
  v26 = v62 - (a3 + a2);
  if (v26 < 1 || (v27 = v60 - (a5 + a4), v27 <= 0))
  {
    bzero(*(a6 + 24), v61 * v13 * v25);
    return 1;
  }

  v28 = v27 == v13 && v26 == v61;
  v29 = !v28;
  if (v21 == 5 && v29)
  {
    return 0;
  }

  v55 = v60 - (a5 + a4);
  v56 = v25;
  v54 = v62 - (a3 + a2);
  v57 = *(a6 + 16);
  if (v21 == 5)
  {
    exr = nanoexr_read_exr(*(a1 + 48), sub_29AB12F0C, a1, &v81, 0, ComponentCount, 0, *(a1 + 120));
    v22 = exr == 0;
    if (!exr)
    {
      sub_29AB13044(v81, v60, v62, v84, a2, a3, a4, a5);
      if (v57)
      {
        sub_29AB130F0(v81, v55, v54, v84);
      }

      memcpy(*(a6 + 24), v81, v61 * v13 * v56);
      nanoexr_release_image_data(&v81);
    }

    return v22;
  }

  if (v59 <= ComponentCount)
  {
    v31 = ComponentCount;
  }

  else
  {
    v31 = v59;
  }

  v78 = 0;
  v79 = 0;
  v80 = 0;
  v32 = v29;
  if (v64 == 1)
  {
    sub_29AB1316C(&v78, v62 * v60 * v31);
    v29 = v32;
  }

  __p = 0;
  v76 = 0;
  v77 = 0;
  if (v64 == 2 || v64 == 1 && (v29 || v24 == 8))
  {
    sub_29A0A171C(&__p, v62 * v60 * v31);
  }

  v33 = nanoexr_read_exr(*(a1 + 48), sub_29AB12F0C, a1, &v81, 0, ComponentCount, 0, *(a1 + 120));
  v22 = v33 == 0;
  if (v33)
  {
    goto LABEL_41;
  }

  if (v83 == 1)
  {
    v35 = v78;
  }

  else
  {
    v35 = __p;
  }

  memcpy(v35, v81, v82);
  nanoexr_release_image_data(&v81);
  if (v64 == 1)
  {
    sub_29AB1319C(v78, v60, v62, v84, a2, a3, a4, a5);
    if (v57)
    {
      sub_29AB13248(v78, v55, v54, v84);
    }
  }

  else
  {
    sub_29AB132C4(__p, v60, v62, v84, a2, a3, a4, a5);
    if (v57)
    {
      sub_29AB13370(__p, v55, v54, v84);
    }
  }

  if (v32)
  {
    v36 = __p;
    if (v64 == 1)
    {
      v37 = v78;
      if (v78)
      {
        if (__p)
        {
          v38 = (v62 * v60 * v59);
          if (v38 >= 1)
          {
            v39 = __p;
            do
            {
              v40 = *v37++;
              *v39++ = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v40];
              --v38;
            }

            while (v38);
          }
        }
      }
    }

    v72 = 0;
    v73 = 0;
    v74 = 0;
    v87 = 0;
    v81 = v36;
    v84 = v59;
    v82 = (v54 * v55 * pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetBytesPerPixel(a1));
    v83 = 2;
    v85 = v60 - (a5 + a4);
    v86 = v62 - (a3 + a2);
    v71 = 0;
    v41 = ComponentCount * v61 * v13;
    v66 = 4 * v41;
    v67 = 2;
    v68 = ComponentCount;
    v69 = v13;
    v70 = v61;
    if (v24 == 8)
    {
      v42 = (a6 + 24);
    }

    else
    {
      v42 = &v72;
      sub_29A0A171C(&v72, v41);
    }

    v65 = *v42;
    nanoexr_Gaussian_resample(&v81, &v65);
    if (v24 == 8)
    {
      v46 = *(a6 + 24);
      v47 = v65;
      v48 = v66;
    }

    else
    {
      sub_29AB133EC(v72, v65, v13, v61, ComponentCount);
      v49 = *(a6 + 24);
      v50 = v72;
      v48 = (pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetBytesPerPixel(a1) * v61 * v13);
      v46 = v49;
      v47 = v50;
    }

    memcpy(v46, v47, v48);
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    goto LABEL_41;
  }

  if (v64 == 1 && v58 == 7)
  {
    v43 = *(a6 + 24);
    v44 = v78;
LABEL_69:
    memcpy(v43, v44, (v56 * v61 * v13));
    goto LABEL_41;
  }

  v45 = *(a6 + 24);
  if (v64 == 2 && v24 == 8)
  {
    v44 = __p;
    v43 = v45;
    goto LABEL_69;
  }

  v51 = (ComponentCount * v61 * v13);
  if (v24 == 8)
  {
    if (v51)
    {
      v52 = v78;
      do
      {
        v53 = *v52++;
        *v45++ = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v53];
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    v34 = __p;
    if (!v51)
    {
      goto LABEL_42;
    }

    do
    {
      sub_29AAC9D3C(v45, *v34);
      v45 = (v45 + 2);
      ++v34;
      --v51;
    }

    while (v51);
  }

LABEL_41:
  v34 = __p;
LABEL_42:
  if (v34)
  {
    v76 = v34;
    operator delete(v34);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  return v22;
}