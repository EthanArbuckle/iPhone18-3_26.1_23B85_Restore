BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::HasKind(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance();
  }

  return sub_29A16039C((v3 + 16), this) != 0;
}

void pxrInternal__aapl__pxrReserved__::KindRegistry::GetBaseKind(pxrInternal__aapl__pxrReserved__::KindRegistry *this@<X0>, atomic_uint **a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::KindRegistry::_GetBaseKind(v4, this, a2);
}

void pxrInternal__aapl__pxrReserved__::KindRegistry::_GetBaseKind(pxrInternal__aapl__pxrReserved__::KindRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, atomic_uint **a3@<X8>)
{
  v5 = sub_29A16039C(this + 2, a2);
  if (!v5)
  {
    v10[0] = "kind/registry.cpp";
    v10[1] = "_GetBaseKind";
    v10[2] = 91;
    v10[3] = "TfToken pxrInternal__aapl__pxrReserved__::KindRegistry::_GetBaseKind(const TfToken &) const";
    v11 = 0;
    v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = (v8 + 16);
      if (*(v8 + 39) < 0)
      {
        v9 = *v9;
      }
    }

    else
    {
      v9 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Unknown kind: '%s'", v9);
    v7 = 0;
    goto LABEL_10;
  }

  v6 = v5[3];
  *a3 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
LABEL_10:
      *a3 = v7;
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::IsA(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance();
  }

  v6 = *this;
  do
  {
    v7 = *a2 ^ v6;
    if (v7 < 8)
    {
      break;
    }

    v8 = sub_29A16039C((v5 + 16), v4);
    if (!v8)
    {
      break;
    }

    v4 = (v8 + 3);
    v6 = v8[3];
  }

  while (v6);
  return v7 < 8;
}

BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::_IsA(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  do
  {
    v6 = *a3 ^ v5;
    if (v6 < 8)
    {
      break;
    }

    v7 = sub_29A16039C((a1 + 16), a2);
    if (!v7)
    {
      break;
    }

    a2 = v7 + 3;
    v5 = v7[3];
  }

  while (v5);
  return v6 < 8;
}

BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::IsModel(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v4)
  {
    v4 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  return pxrInternal__aapl__pxrReserved__::KindRegistry::IsA(this, v4, a3);
}

BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::IsAssembly(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v4)
  {
    v4 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  return pxrInternal__aapl__pxrReserved__::KindRegistry::IsA(this, (v4 + 24), a3);
}

BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::IsGroup(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v4)
  {
    v4 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  return pxrInternal__aapl__pxrReserved__::KindRegistry::IsA(this, (v4 + 16), a3);
}

BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::IsComponent(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v4)
  {
    v4 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  return pxrInternal__aapl__pxrReserved__::KindRegistry::IsA(this, (v4 + 8), a3);
}

BOOL pxrInternal__aapl__pxrReserved__::KindRegistry::IsSubComponent(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v4)
  {
    v4 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  return pxrInternal__aapl__pxrReserved__::KindRegistry::IsA(this, (v4 + 32), a3);
}

void *pxrInternal__aapl__pxrReserved__::KindRegistry::GetAllKinds@<X0>(void *a1@<X8>)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::KindRegistry::_GetAllKinds(v2, a1);
}

void *pxrInternal__aapl__pxrReserved__::KindRegistry::_GetAllKinds@<X0>(pxrInternal__aapl__pxrReserved__::KindRegistry *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(this + 5));
  for (i = (this + 32); ; result = sub_29A1D8028(a2, i + 2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return result;
}

void sub_29A1D7F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void *sub_29A1D7F98(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (a2 >> 61)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v5[4] = result;
    v5[0] = sub_29A00C9BC(result, a2);
    v5[1] = v5[0] + v3;
    v5[2] = v5[0] + v3;
    v5[3] = v5[0] + 8 * v4;
    sub_29A15412C(v2, v5);
    return sub_29A1541C0(v5);
  }

  return result;
}

void sub_29A1D8014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

void *sub_29A1D8028(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
  }

  v4 = *a2;
  *v3 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = v3 + 1;
  *(a1 + 8) = v3 + 1;
  return result;
}

uint64_t sub_29A1D8094(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

BOOL sub_29A1D8114(uint64_t a1, const void **a2, uint64_t **a3)
{
  v5 = sub_29A01BCCC(a1, a2);
  if (a1 + 8 == v5)
  {
    return 0;
  }

  v6 = v5;
  result = pxrInternal__aapl__pxrReserved__::JsValue::IsObject((v5 + 56));
  if (result)
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject((v6 + 56));
    if (JsObject != a3)
    {
      sub_29A1782A0(a3, *JsObject, (JsObject + 8));
    }

    return 1;
  }

  return result;
}

void *sub_29A1D818C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t sub_29A1D820C(uint64_t a1)
{
  sub_29A1D8248(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1D8248(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29A1D82AC(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
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

  sub_29A16078C(a1, v6, a4, &v22);
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

void sub_29A1D84D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A1D84F8(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D84F8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v2 = __p[3];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 = __p[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType *sub_29A1D8548(atomic_ullong *a1)
{
  result = sub_29A1D8590();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType::~KindTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType *sub_29A1D8590()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType::KindTokens_StaticTokenType(v0);
  return v0;
}

unint64_t sub_29A1D85D4()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "Kinds", 0);
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
  atomic_compare_exchange_strong(&qword_2A173F678, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A173F678);
  }

  return v0;
}

void sub_29A1D86F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_CanCreateNewLayerWithIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    if (a2)
    {
      v5 = "cannot use empty identifier.";
      goto LABEL_12;
    }

    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(a1))
  {
    if (a2)
    {
      v5 = "cannot use anonymous layer identifier.";
LABEL_12:
      MEMORY[0x29C2C1A60](a2, v5);
      return 0;
    }

    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_IdentifierContainsArguments(a1))
  {
    if (a2)
    {
      v5 = "cannot use arguments in the identifier.";
      goto LABEL_12;
    }

    return 0;
  }

  return 1;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(uint64_t a1)
{
  v2 = atomic_load(&qword_2A173F680);
  if (!v2)
  {
    v2 = sub_29A1DAAA4();
  }

  if ((*v2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v4 = EmptyString;
  }

  else
  {
    v4 = *EmptyString;
  }

  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = strlen(v4);
  if (v6 < v7)
  {
    return 0;
  }

  v9 = v7;
  if (v5 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  return strncmp(v10, v4, v9) == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_IdentifierContainsArguments(char **a1)
{
  v2 = atomic_load(&qword_2A173F680);
  if (!v2)
  {
    v2 = sub_29A1DAAA4();
  }

  if ((*(v2 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v2 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 < 0)
  {
    v4 = a1[1];
  }

  v6 = *(EmptyString + 23);
  if (v6 >= 0)
  {
    v7 = EmptyString;
  }

  else
  {
    v7 = *EmptyString;
  }

  if (v6 >= 0)
  {
    v8 = *(EmptyString + 23);
  }

  else
  {
    v8 = EmptyString[1];
  }

  if (!v8)
  {
    return 1;
  }

  v9 = &v4[v5];
  if (v4 >= v8)
  {
    v13 = *v7;
    v14 = v5;
    do
    {
      v15 = &v4[-v8];
      if (v15 == -1)
      {
        break;
      }

      v16 = memchr(v14, v13, (v15 + 1));
      if (!v16)
      {
        break;
      }

      v10 = v16;
      if (!memcmp(v16, v7, v8))
      {
        return v10 != v9 && v10 - v5 != -1;
      }

      v14 = v10 + 1;
      v4 = (v9 - (v10 + 1));
    }

    while (v4 >= v8);
  }

  v10 = v9;
  return v10 != v9 && v10 - v5 != -1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ResolvePath(std::string *a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v1 = pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a1, v5, __p);
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v1);
  pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(Resolver);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_29A1D8AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(std::string *__str, uint64_t a2, uint64_t a3)
{
  v6 = atomic_load(&qword_2A173F680);
  if (!v6)
  {
    v6 = sub_29A1DAAA4();
  }

  if ((*(v6 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v6 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  v8 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v8 >= 0)
  {
    v9 = __str;
  }

  else
  {
    v9 = __str->__r_.__value_.__r.__words[0];
  }

  if (v8 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v11 = *(EmptyString + 23);
  if (v11 >= 0)
  {
    v12 = EmptyString;
  }

  else
  {
    v12 = *EmptyString;
  }

  if (v11 >= 0)
  {
    v13 = *(EmptyString + 23);
  }

  else
  {
    v13 = EmptyString[1];
  }

  if (v13)
  {
    if (size >= v13)
    {
      v16 = v9 + size;
      v17 = *v12;
      v18 = size;
      v19 = v9;
      do
      {
        v20 = v18 - v13;
        if (v20 == -1)
        {
          break;
        }

        v21 = memchr(v19, v17, v20 + 1);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        if (!memcmp(v21, v12, v13))
        {
          if (v22 != v16)
          {
            v14 = v22 - v9;
            if (v22 - v9 != -1)
            {
              goto LABEL_22;
            }
          }

          break;
        }

        v19 = (v22 + 1);
        v18 = v16 - (v22 + 1);
      }

      while (v18 >= v13);
    }

    v14 = size;
  }

  else
  {
    v14 = 0;
  }

LABEL_22:
  std::string::basic_string(&v24, __str, 0, v14, &v23);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v24;
  std::string::basic_string(&v24, __str, v14, 0xFFFFFFFFFFFFFFFFLL, &v23);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v24;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_CanWriteLayerToPath(pxrInternal__aapl__pxrReserved__ *a1)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);

  return pxrInternal__aapl__pxrReserved__::ArResolver::CanWriteAssetToPath(Resolver);
}

double pxrInternal__aapl__pxrReserved__::Sdf_ComputeFilePath@<D0>(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_ResolvePath(a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v3);
    pxrInternal__aapl__pxrReserved__::ArResolver::ResolveForNewAsset(Resolver);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v7;
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  return result;
}

void sub_29A1D8D3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ComputeLayerModificationTimestamp(pxrInternal__aapl__pxrReserved__ *this@<X0>, void *a2@<X8>)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(this);
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(Identifier, v11, __p);
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v6);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetResolvedPath(this);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetModificationTimestamp(Resolver);
  a2[1] = &off_2A2046B18 + 1;
  *a2 = v8;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_29A1D8E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1D8F78(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *a1 = *a2;
  a1[1] = &off_2A2046B18 + 1;
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A1D9008(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

std::string *pxrInternal__aapl__pxrReserved__::Sdf_ComputeAssetInfoFromIdentifier(uint64_t a1, void **a2, __int128 *a3, uint64_t *a4)
{
  v37[2] = *MEMORY[0x29EDCA608];
  v8 = operator new(0xA0uLL);
  v8[6].__r_.__value_.__l.__size_ = 0;
  *&v8->__r_.__value_.__l.__data_ = 0u;
  *&v8->__r_.__value_.__r.__words[2] = 0u;
  *&v8[1].__r_.__value_.__r.__words[1] = 0u;
  *&v8[2].__r_.__value_.__l.__data_ = 0u;
  *&v8[2].__r_.__value_.__r.__words[2] = 0u;
  *&v8[3].__r_.__value_.__r.__words[1] = 0u;
  *&v8[4].__r_.__value_.__l.__data_ = 0u;
  *&v8[4].__r_.__value_.__r.__words[2] = 0u;
  *&v8[5].__r_.__value_.__r.__words[1] = 0u;
  sub_29A1DA784(&__str, a3);
  if (sub_29A1D9440(0))
  {
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (*(a4 + 23) >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_ComputeAssetInfoFromIdentifier('%s', '%s', '%s')\n", v9, v10, v11, v12, v13);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(a1))
  {
    v14 = std::string::operator=(v8, a1);
    goto LABEL_38;
  }

  std::string::operator=(v8, a1);
  memset(&v29, 0, sizeof(v29));
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v15 = pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(v8, &v29, v27);
  if (*(a2 + 23) < 0)
  {
    v16 = a2[1];
    if (v16)
    {
      v15 = sub_29A008D14(&__dst, *a2, v16);
      goto LABEL_20;
    }

LABEL_19:
    pxrInternal__aapl__pxrReserved__::Sdf_ComputeFilePath(&v29, &__dst);
    goto LABEL_20;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_19;
  }

  __dst = *a2;
LABEL_20:
  if (SHIBYTE(v8[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[1].__r_.__value_.__l.__data_);
  }

  v8[1] = __dst;
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v15);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetAssetInfo(Resolver);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __dst;
  *(&__dst.__r_.__value_.__s + 23) = 0;
  __dst.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v35 = v31;
  *(&v31.__r_.__value_.__s + 23) = 0;
  v31.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v36 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  sub_29A18606C(v37, v33);
  v14 = sub_29A186B14(v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_38:
  v18 = pxrInternal__aapl__pxrReserved__::ArGetResolver(v14);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetCurrentContext(&__dst, v18);
  sub_29A03AF64(&v8[2]);
  v8[2] = __dst;
  memset(&__dst, 0, sizeof(__dst));
  v29.__r_.__value_.__r.__words[0] = &__dst;
  sub_29A0176E4(&v29);
  std::string::operator=(v8 + 3, &__str);
  std::string::operator=(v8 + 4, &v35);
  std::string::operator=(v8 + 5, &v36);
  sub_29A1854E8(v8[6].__r_.__value_.__r.__words, v37);
  if (sub_29A1D9440(0))
  {
    v21 = v8;
    if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = v8->__r_.__value_.__r.__words[0];
    }

    v22 = &v8[1];
    if (SHIBYTE(v8[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = v22->__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v36;
    }

    else
    {
      v23 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v35;
    }

    else
    {
      v24 = v35.__r_.__value_.__r.__words[0];
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_ComputeAssetInfoFromIdentifier:\n  assetInfo->identifier = '%s'\n  assetInfo->resolvedPath = '%s'\n  assetInfo->repoPath = '%s'\n  assetInfo->assetName = '%s'\n  assetInfo->version = '%s'\n", v19, v20, v21, v22, v23, v24, p_str);
  }

  sub_29A186B14(v37);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_29A1D93E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_29A1D18FC(v26 - 144);
  _Unwind_Resume(a1);
}

BOOL sub_29A1D9440(int a1)
{
  v2 = sub_29A1DAA24();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A1DAA24();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F2954C8[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ComputeAnonLayerIdentifier(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    sub_29B2938E4(&v41);
  }

  v6 = a1[23];
  v7 = *a1;
  v8 = *(a1 + 1);
  if (v6 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v6 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v10 >= 2)
  {
    v11 = &v9[v10];
    v12 = v9;
    do
    {
      v13 = memchr(v12, 37, v10 - 1);
      if (!v13)
      {
        break;
      }

      if (*v13 == 28197)
      {
        if (v13 != v11 && v13 - v9 != -1)
        {
          v41 = "sdf/assetPathResolver.cpp";
          v42 = "Sdf_ComputeAnonLayerIdentifier";
          v43 = 215;
          v44 = "string pxrInternal__aapl__pxrReserved__::Sdf_ComputeAnonLayerIdentifier(const string &, const SdfLayer *)";
          v45 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 3, "Anon layer contains invalid character sequence '%%n': %s", v9);
          if (a1[23] < 0)
          {
            sub_29A008D14(a3, *a1, *(a1 + 1));
          }

          else
          {
            *a3 = *a1;
            *(a3 + 16) = *(a1 + 2);
          }

          return;
        }

        break;
      }

      v12 = v13 + 1;
      v10 = v11 - v12;
    }

    while (v11 - v12 >= 2);
  }

  if ((v6 & 0x80000000) != 0)
  {
    sub_29A008D14(&__dst, v7, v8);
  }

  else
  {
    __dst = *a1;
  }

  sub_29A008E78(__p, "anon:%p");
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if ((v39 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v18 = v39;
  }

  else
  {
    v18 = __p[1];
  }

  if (v18)
  {
    if (size >= v18)
    {
      v25 = p_dst + size;
      v26 = *v17;
      v27 = size;
      v28 = p_dst;
      do
      {
        v29 = v27 - v18;
        if (v29 == -1)
        {
          break;
        }

        v30 = memchr(v28, v26, v29 + 1);
        if (!v30)
        {
          break;
        }

        v31 = v30;
        if (!memcmp(v30, v17, v18))
        {
          if (v31 != v25)
          {
            v19 = v31 - p_dst;
            if (v31 - p_dst != -1)
            {
              goto LABEL_37;
            }
          }

          break;
        }

        v28 = (v31 + 1);
        v27 = v25 - (v31 + 1);
      }

      while (v27 >= v18);
    }

    v41 = "sdf/assetPathResolver.cpp";
    v42 = "Sdf_ComputeAnonLayerIdentifier";
    v43 = 226;
    v44 = "string pxrInternal__aapl__pxrReserved__::Sdf_ComputeAnonLayerIdentifier(const string &, const SdfLayer *)";
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 3, "Could not find expected prefix:anon:%%p in anonymous layer identifier.");
    if (a1[23] < 0)
    {
      sub_29A008D14(a3, *a1, *(a1 + 1));
    }

    else
    {
      *a3 = *a1;
      *(a3 + 16) = *(a1 + 2);
    }
  }

  else
  {
    v19 = 0;
LABEL_37:
    v20 = v18 + v19 - 1;
    v21 = size - v20;
    if (size >= v20 && v21 >= 1)
    {
      v22 = p_dst + size;
      v23 = p_dst + v20;
      do
      {
        v24 = memchr(v23, 37, v21);
        if (!v24)
        {
          break;
        }

        if (*v24 == 37)
        {
          if (v24 != v22)
          {
            v32 = v24 - p_dst;
            if (v24 - p_dst != -1)
            {
LABEL_56:
              std::string::insert(&__dst, v32, "%");
              v33 = v32 + 2;
              v34 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v34 = __dst.__r_.__value_.__l.__size_;
              }

              v21 = v34 - v33;
              if (v34 >= v33 && v21 >= 1)
              {
                v35 = p_dst + v34;
                v36 = p_dst + v33;
                while (1)
                {
                  v37 = memchr(v36, 37, v21);
                  if (!v37)
                  {
                    break;
                  }

                  if (*v37 == 37)
                  {
                    if (v37 != v35)
                    {
                      v32 = v37 - p_dst;
                      if (v37 - p_dst != -1)
                      {
                        goto LABEL_56;
                      }
                    }

                    goto LABEL_70;
                  }

                  v36 = v37 + 1;
                  v21 = v35 - v36;
                  if (v35 - v36 < 1)
                  {
                    goto LABEL_70;
                  }
                }
              }
            }
          }

          break;
        }

        v23 = v24 + 1;
        v21 = v22 - v23;
      }

      while (v22 - v23 >= 1);
    }

LABEL_70:
    pxrInternal__aapl__pxrReserved__::TfStringPrintf(p_dst, v14, v21, a2);
  }

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29A1D9850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

std::string *pxrInternal__aapl__pxrReserved__::Sdf_GetAnonLayerDisplayName@<X0>(std::string *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v5 = a1->__r_.__value_.__r.__words[0];
  size = a1->__r_.__value_.__l.__size_;
  if ((v4 & 0x80000000) == 0)
  {
    v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    a1 = a1->__r_.__value_.__r.__words[0];
    v7 = size;
  }

  v8 = (a1 + v7);
  result = memchr(a1, 58, v7);
  if (result)
  {
    v10 = result;
  }

  else
  {
    v10 = v8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    v11 = (v5 + size);
    v12 = v5;
    v13 = size;
  }

  else
  {
    v11 = (v2 + v4);
    v12 = v2;
    v13 = v4;
  }

  if (v10 != v11)
  {
    v14 = (v12 + v13);
    result = memchr(&v10->__r_.__value_.__l.__data_ + 1, 58, v12 + v13 - (&v10->__r_.__value_.__l.__data_ + 1));
    v15 = result ? result : v14;
    if ((v4 & 0x80000000) != 0)
    {
      v16 = (v5 + size);
    }

    else
    {
      v16 = (v2 + v4);
      v5 = v2;
    }

    if (v15 != v16)
    {
      return std::string::basic_string(a2, v2, v15 - v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v17);
    }
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_GetAnonLayerIdentifierTemplate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      __dst = *a1;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 8))
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", a1, &__dst);
    goto LABEL_6;
  }

  sub_29A008D14(&__dst, *a1, 0);
LABEL_6:
  sub_29A008E78(&v13, "%");
  sub_29A008E78(__p, "%%");
  pxrInternal__aapl__pxrReserved__::TfStringReplace(&__dst, &v13, __p, &v14);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = v14;
  *(&v14.__r_.__value_.__s + 23) = 0;
  v14.__r_.__value_.__s.__data_[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v3 = atomic_load(&qword_2A173F680);
  if (!v3)
  {
    v3 = sub_29A1DAAA4();
  }

  if ((*v3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v5 = *(EmptyString + 23);
  }

  else
  {
    v5 = EmptyString[1];
  }

  v6 = &v14;
  sub_29A022DE0(&v14, v5 + 2);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v14.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(EmptyString + 23) >= 0)
    {
      v7 = EmptyString;
    }

    else
    {
      v7 = *EmptyString;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, "%p");
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      v13 = __dst;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (__dst.__r_.__value_.__l.__size_)
  {
LABEL_31:
    std::operator+<char>();
    goto LABEL_32;
  }

  sub_29A008D14(&v13, __dst.__r_.__value_.__l.__data_, 0);
LABEL_32:
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v13;
  }

  else
  {
    v8 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, v8, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29A1D9BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(uint64_t a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v6 = atomic_load(&qword_2A173F680);
  if (!v6)
  {
    v6 = sub_29A1DAAA4();
  }

  v7 = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
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

  memset(&v25, 0, sizeof(v25));
  v11 = *a2;
  v9 = a2 + 1;
  v10 = v11;
  if (v11 != v9)
  {
    do
    {
      std::string::append(&v25, v8);
      v12 = *(v10 + 55);
      if (v12 >= 0)
      {
        v13 = (v10 + 4);
      }

      else
      {
        v13 = v10[4];
      }

      if (v12 >= 0)
      {
        v14 = *(v10 + 55);
      }

      else
      {
        v14 = v10[5];
      }

      std::string::append(&v25, v13, v14);
      std::string::push_back(&v25, 61);
      v15 = *(v10 + 79);
      if (v15 >= 0)
      {
        v16 = (v10 + 7);
      }

      else
      {
        v16 = v10[7];
      }

      if (v15 >= 0)
      {
        v17 = *(v10 + 79);
      }

      else
      {
        v17 = v10[8];
      }

      std::string::append(&v25, v16, v17);
      v18 = v10[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v10[2];
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v8 = "&";
      v10 = v19;
    }

    while (v19 != v9);
  }

  v21 = *(a1 + 23);
  if (v21 >= 0)
  {
    v22 = a1;
  }

  else
  {
    v22 = *a1;
  }

  if (v21 >= 0)
  {
    v23 = *(a1 + 23);
  }

  else
  {
    v23 = *(a1 + 8);
  }

  v24 = std::string::insert(&v25, 0, v22, v23);
  *a3 = *v24;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_29A1D9DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_StripIdentifierArgumentsIfPresent(std::string *__str, uint64_t a2)
{
  v4 = atomic_load(&qword_2A173F680);
  if (!v4)
  {
    v4 = sub_29A1DAAA4();
  }

  if ((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v8 = *(EmptyString + 23);
  if (v8 >= 0)
  {
    v9 = EmptyString;
  }

  else
  {
    v9 = *EmptyString;
  }

  if (v8 >= 0)
  {
    v10 = *(EmptyString + 23);
  }

  else
  {
    v10 = EmptyString[1];
  }

  if (v10)
  {
    if (size >= v10)
    {
      v13 = v7 + size;
      v14 = *v9;
      v15 = v7;
      do
      {
        v16 = size - v10;
        if (v16 == -1)
        {
          break;
        }

        result = memchr(v15, v14, v16 + 1);
        if (!result)
        {
          return result;
        }

        v17 = result;
        result = memcmp(result, v9, v10);
        if (!result)
        {
          if (v17 != v13)
          {
            v12 = v17 - v7;
            if (v17 - v7 != -1)
            {
              goto LABEL_21;
            }
          }

          return result;
        }

        v15 = (v17 + 1);
        size = &v13[-v17 - 1];
      }

      while (size >= v10);
    }

    return 0;
  }

  else
  {
    v12 = 0;
LABEL_21:
    std::string::basic_string(&v19, __str, 0, v12, &v18);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v19;
    return 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(std::string *a1, __int128 *a2, uint64_t a3)
{
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a1, v31, &__p);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_12;
    }
  }

  else if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_12;
  }

  v6 = atomic_load(&qword_2A173F680);
  if (!v6)
  {
    v6 = sub_29A1DAAA4();
  }

  v7 = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v7)
  {
    v8 = *(v7 + 39);
    if (v8 < 0)
    {
      v8 = *(v7 + 24);
    }
  }

  else
  {
    v8 = 0;
  }

  if (size == v8)
  {
LABEL_12:
    sub_29A01752C(a3, *(a3 + 8));
    *a3 = a3 + 8;
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
LABEL_13:
    v9 = *(a2 + 2);
    v10 = *a2;
    *a2 = *v31;
    *(a2 + 2) = v32;
    *v31 = v10;
    v32 = v9;
    v11 = 1;
    goto LABEL_14;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  v14 = atomic_load(&qword_2A173F680);
  if (!v14)
  {
    v14 = sub_29A1DAAA4();
  }

  v15 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v15)
  {
    v16 = *(v15 + 39);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v16 = *(v15 + 24);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v13 > v16 || (v36.__r_.__value_.__r.__words[0] = "sdf/assetPathResolver.cpp", v36.__r_.__value_.__l.__size_ = "Sdf_DecodeArguments", v36.__r_.__value_.__r.__words[2] = 320, v37 = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_DecodeArguments(const string &, SdfLayer::FileFormatArguments *)", v38 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v36, "argStringLength > _Tokens->ArgsDelimiter.size()", 0) & 1) != 0))
  {
    v35[0] = 0;
    v35[1] = 0;
    v34 = v35;
    v17 = atomic_load(&qword_2A173F680);
    if (!v17)
    {
      v17 = sub_29A1DAAA4();
    }

    v18 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v18)
    {
      v19 = *(v18 + 39);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v19 = *(v18 + 24);
      }
    }

    else
    {
      v19 = 0;
    }

    while (1)
    {
      if (v19 >= v13)
      {
LABEL_48:
        sub_29A13F534(a3, &v34);
        sub_29A01752C(&v34, v35[0]);
        goto LABEL_13;
      }

      v20 = std::string::find(&__p, 61, v19);
      if (v20 == -1)
      {
        break;
      }

      v21 = v20;
      std::string::basic_string(&v36, &__p, v19, v20 - v19, &v33);
      v19 = v21 + 1;
      v22 = std::string::find(&__p, 38, v21 + 1);
      if (v22 == -1)
      {
        std::string::basic_string(&v33, &__p, v21 + 1, 0xFFFFFFFFFFFFFFFFLL, v39);
        v39[0] = &v36;
        v27 = sub_29A00B038(&v34, &v36.__r_.__value_.__l.__data_, &unk_29B4D6118, v39);
        v28 = v27;
        if (*(v27 + 79) < 0)
        {
          operator delete(v27[7]);
        }

        *(v28 + 7) = v33;
        v26 = 3;
      }

      else
      {
        v23 = v22;
        std::string::basic_string(&v33, &__p, v19, v22 - v19, v39);
        v39[0] = &v36;
        v24 = sub_29A00B038(&v34, &v36.__r_.__value_.__l.__data_, &unk_29B4D6118, v39);
        v25 = v24;
        if (*(v24 + 79) < 0)
        {
          operator delete(v24[7]);
        }

        v26 = 0;
        *(v25 + 7) = v33;
        v19 = v23 + 1;
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
        if (v26)
        {
          goto LABEL_48;
        }
      }

      else if (v26)
      {
        goto LABEL_48;
      }
    }

    v36.__r_.__value_.__r.__words[0] = "sdf/assetPathResolver.cpp";
    v36.__r_.__value_.__l.__size_ = "Sdf_DecodeArguments";
    v36.__r_.__value_.__r.__words[2] = 331;
    v37 = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_DecodeArguments(const string &, SdfLayer::FileFormatArguments *)";
    v38 = 0;
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 1, "Invalid file format arguments: %s", p_p);
    sub_29A01752C(&v34, v35[0]);
  }

  v11 = 0;
LABEL_14:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  return v11;
}

void sub_29A1DA310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, void *a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_29A01752C(&a28, a29);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_GetLayerDisplayName(std::string *a1@<X0>, std::string *a2@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a1, &v9, v7);
  if (pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(&v9))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_GetAnonLayerDisplayName(&v9, a2);
  }

  else if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(&v9))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(&v9, &__p);
    pxrInternal__aapl__pxrReserved__::TfGetBaseName(&__p, &v3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v3;
    pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(&__p, a2);
    if (v6 < 0)
    {
      operator delete(v5);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfGetBaseName(&v9, a2);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29A1DA490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0D2850(va);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  if (*(v5 - 17) < 0)
  {
    operator delete(*(v5 - 40));
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_GetExtension(std::string *a1)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v2 = v11;
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_StripIdentifierArgumentsIfPresent(a1, v11);
  if (!v3)
  {
    v2 = a1;
  }

  IsAnonLayerIdentifier = pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(v2);
  if (IsAnonLayerIdentifier)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_GetAnonLayerDisplayName(v2, &__p);
    pxrInternal__aapl__pxrReserved__::Sdf_GetExtension(&__p);
    goto LABEL_17;
  }

  v5 = v11;
  if (v3)
  {
    p_data = v11;
  }

  else
  {
    p_data = &a1->__r_.__value_.__l.__data_;
  }

  v7 = *(p_data + 23);
  if (v7 < 0)
  {
    if (!v3)
    {
      v5 = &a1->__r_.__value_.__l.__data_;
    }

    if (!v5[1])
    {
      goto LABEL_19;
    }

    v8 = v2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v8 = v2;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (v8->__r_.__value_.__s.__data_[0] != 46)
  {
LABEL_19:
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(IsAnonLayerIdentifier);
    pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension(Resolver);
    goto LABEL_20;
  }

  std::operator+<char>();
  pxrInternal__aapl__pxrReserved__::Sdf_GetExtension(&__p);
LABEL_17:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_29A1DA5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_IsPackageOrPackagedLayer(uint64_t a1)
{
  sub_29A1DA6E4(a1);
}

{
  sub_29A1DA734(a1);
}

void sub_29A1DA6E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B293930();
}

void sub_29A1DA734(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B29397C();
}

char *sub_29A1DA784(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_29A008D14(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  sub_29A186EF4(__dst + 9, a2 + 9);
  return __dst;
}

void sub_29A1DA830(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A1DA8A0(double *a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * *&v1);
}

void *sub_29A1DAA0C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2046B18 + 1;
  return result;
}

uint64_t sub_29A1DAA24()
{
  if ((atomic_load_explicit(&qword_2A14F69C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F69C8))
  {
    v1 = operator new(0x18uLL);
    *v1 = 0;
    v1[1] = 0;
    v1[2] = 0;
    qword_2A14F69C0 = v1;
    __cxa_guard_release(&qword_2A14F69C8);
  }

  return qword_2A14F69C0;
}

unint64_t sub_29A1DAAA4()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "anon:", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, ":SDF_FORMAT_ARGS:", 0);
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
  atomic_compare_exchange_strong(&qword_2A173F680, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A173F680);
  }

  return v0;
}

void sub_29A1DABE8(_Unwind_Exception *a1)
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

uint64_t sub_29A1DAC64(uint64_t a1)
{
  v4 = (a1 + 16);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B483BA8 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x60uLL);
      pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::Sdf_ChangeManager(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A1DAEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::~Sdf_ChangeManager(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

double pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data::_Data(pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void sub_29A1DB254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidReloadContent::~LayerDidReloadContent(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1DB2A8(pxrInternal__aapl__pxrReserved__::TfNotice *a1, uint64_t a2)
{
  v4 = sub_29B293A0C(a2);
  if (v5 & 1 | v4)
  {
    sub_29A1DA6E4(a2);
  }

  v6 = MEMORY[0x29EDC9500];

  return pxrInternal__aapl__pxrReserved__::TfNotice::_Send(a1, 0, 0, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_OpenChangeBlock(atomic_ullong *a1, uint64_t a2)
{
  v4 = 0;
  result = sub_29A0ED084(a1, &v4);
  if (*(result + 24))
  {
    return 0;
  }

  *(result + 24) = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_CloseChangeBlock(pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager *this, const pxrInternal__aapl__pxrReserved__::SdfChangeBlock *a2, char *a3)
{
  if (*(a3 + 3) != a2)
  {
    this = sub_29B293AF8(v5, a2, a3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_ProcessRemoveIfInert(this, a3, a3);
  *(a3 + 3) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_SendNotices(v4, a3);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_ProcessRemoveIfInert(pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager *this, pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data *a2, char *a3)
{
  v3 = *(a2 + 2);
  if (*(a2 + 4) != *(a2 + 5))
  {
    v11 = *(a2 + 2);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v12 = *(a2 + 6);
    *(a2 + 6) = 0;
    v6 = v3;
    if (v3 != *(&v3 + 1))
    {
      v5 = sub_29A1DB904(&v6, a2, a3);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(*v5, v10);
      sub_29A1DA6E4(v10);
    }

    if (*(a2 + 4) != *(a2 + 5))
    {
      *&v6 = "sdf/changeManager.cpp";
      *(&v6 + 1) = "_ProcessRemoveIfInert";
      v7 = 130;
      v8 = "void pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_ProcessRemoveIfInert(_Data *)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v6, "data->removeIfInert.empty()", 0);
    }

    if (!*(a2 + 3))
    {
      *&v6 = "sdf/changeManager.cpp";
      *(&v6 + 1) = "_ProcessRemoveIfInert";
      v7 = 133;
      v8 = "void pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_ProcessRemoveIfInert(_Data *)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v6, "data->outermostBlock", 0);
    }

    *&v6 = &v11;
    sub_29A1DEC08(&v6);
  }
}

void sub_29A1DB528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a9 = &a17;
  sub_29A1DEC08(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_SendNotices(pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager *this, pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data *a2)
{
  v12 = *a2;
  v2 = v12;
  v3 = *(a2 + 8);
  v13 = v3;
  v4 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (v2 != v3)
  {
    while (1)
    {
      v5 = sub_29B293A0C(v2);
      if (!(v6 & 1 | v5))
      {
        break;
      }

      v2 += 232;
      if (v2 == v4)
      {
        v2 = v4;
        goto LABEL_11;
      }
    }

    if (v2 != v4)
    {
      for (i = v2 + 232; i != v4; i += 232)
      {
        v8 = sub_29B293A0C(i);
        if (v9 & 1 | v8)
        {
          sub_29B29119C(v2, i);
          sub_29A1DBB54(v2 + 16, i + 16);
          v2 += 232;
        }
      }
    }
  }

LABEL_11:
  v10 = sub_29A1DBBA0(&v12, v2, v13);
  if (v12 != v13)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_SendNoticesForChangeList(v10, v12);
  }

  __p = &v12;
  sub_29A1DEB80(&__p);
}

void sub_29A1DB830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  pxrInternal__aapl__pxrReserved__::SdfNotice::LayersDidChange::~LayersDidChange(&__p);
  __p = &a17;
  sub_29A1DEB80(&__p);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::RemoveSpecIfInert(atomic_ullong *this, atomic_uint **a2)
{
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v6);
  v7 = 0;
  v4 = sub_29A0ED084(this, &v7);
  sub_29A1DF0A4((v4 + 32), a2);
  return sub_29A1DD644(v6);
}

void *sub_29A1DB904(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B293BF8(result, a2, a3);
  }

  return result;
}

uint64_t sub_29A1DB93C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfSpec>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfSpec>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1DB9BC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfSpec>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfSpec>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::ExtractLocalChanges@<X0>(atomic_ullong *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  result = sub_29A0ED084(a1, &v4);
  *(a2 + 208) = 0;
  *(a2 + 200) = 0x100000000;
  if (*result != result[1])
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return result;
}

uint64_t sub_29A1DBB54(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29A1DD67C(a1, a2);
  }

  v4 = *(a2 + 208);
  *(a2 + 208) = 0;
  sub_29A1DE554((a1 + 208), v4);
  return a1;
}

uint64_t sub_29A1DBBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_29A1DF2C4(&v8, a3, *(a1 + 8), a2);
    v6 = *(a1 + 8);
    if (v6 != v5)
    {
      sub_29B293A6C(a1, v6 - 232);
    }

    *(a1 + 8) = v5;
  }

  return a2;
}

uint64_t sub_29A1DBC24(uint64_t *a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A1DBE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_GetListFor(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  v8 = a3;
  if (v4 >= a2[2])
  {
    v6 = sub_29A1DFA14(a2, &unk_29B4D6118, &v8);
  }

  else
  {
    v5 = a3[1];
    *v4 = *a3;
    *(v4 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 220) = 1;
    v6 = v4 + 232;
    *(v4 + 224) = 0;
  }

  a2[1] = v6;
  return v6 - 216;
}

void sub_29A1DC9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v29 = *v27;
  if (*v27)
  {
    *(v27 + 8) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A1DCB58(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (*(a1 + 1))
  {
    v2 = *(a2 + 1) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v4 = sub_29A1DE690(a1);
  v5 = sub_29A1DE690(a2);
  v6 = v4[1];
  if (v6 - *v4 != v5[1] - *v5)
  {
    return 0;
  }

  v7 = v5;
  sub_29A1DE840(&v18, *v4, v6);
  sub_29A1DE840(v17, *v7, v7[1]);
  if (v19[1] == v17[2])
  {
    v8 = v18;
    if (v18 == v19)
    {
      v11 = 1;
    }

    else
    {
      v9 = v17[0];
      do
      {
        v10 = v9[4] ^ v8[4];
        v11 = v10 < 8;
        if (v10 > 7)
        {
          break;
        }

        v12 = v8[1];
        v13 = v8;
        if (v12)
        {
          do
          {
            v8 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v8 = v13[2];
            v2 = *v8 == v13;
            v13 = v8;
          }

          while (!v2);
        }

        v14 = v9[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v9[2];
            v2 = *v15 == v9;
            v9 = v15;
          }

          while (!v2);
        }

        v9 = v15;
      }

      while (v8 != v19);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_29A1602D4(v17, v17[1]);
  sub_29A1602D4(&v18, v19[0]);
  return v11;
}

void sub_29A1DCCD4(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  if (sub_29A1DF4B8(a1))
  {
    v4 = *(a1 + 1);
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;

  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

uint64_t sub_29A1DCD64(uint64_t a1, uint64_t a2, const void **a3, const void **a4, uint64_t a5)
{
  v11 = a2;
  v12 = a1;
  v9 = a4;
  v10 = a3;
  v8 = a5;
  sub_29A1DF5C8(&v12, &v11, &v10, &v9, &v8, &v7);
  return v5;
}

void sub_29A1DCDAC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  if (sub_29A1DF804(a1))
  {
    v4 = *(a1 + 1);
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
}

unint64_t sub_29A1DCE30(uint64_t a1)
{
  if (!sub_29A1DF890(a1))
  {
    return 0;
  }

  result = *a1;
  if (*a1)
  {
    v3 = (*(*result + 112))(result, *(a1 + 16));
    return 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3);
  }

  return result;
}

_DWORD *sub_29A1DCEA8(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

char *pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeAttributeTimeSamples(atomic_ullong *a1, void *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v8 = 0;
  v5 = sub_29A0ED084(a1, &v8);
  ListFor = pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_GetListFor(v5, v5, a2);
  return pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeAttributeTimeSamples(ListFor, a3);
}

void sub_29A1DD1E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A1DD3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1DD600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *sub_29A1DD644(pxrInternal__aapl__pxrReserved__::SdfChangeBlock *a1)
{
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::_CloseChangeBlock(a1, *a1);
  }

  return a1;
}

uint64_t sub_29A1DD67C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 204);
  if (*(result + 204) > 1u)
  {
    if (v3 >= 2)
    {
      v18 = *result;
      *result = *a2;
      *a2 = v18;
      LODWORD(v18) = *(result + 200);
      *(result + 200) = *(a2 + 200);
      *(a2 + 200) = v18;
      LODWORD(v18) = *(result + 204);
      *(result + 204) = *(a2 + 204);
      *(a2 + 204) = v18;
      return result;
    }

    v13 = a2;
  }

  else
  {
    if (v3 <= 1)
    {
      v4 = *(result + 200);
      v5 = *(a2 + 200);
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
      if (v6[51] >= 2)
      {
        v8 = *v6;
      }

      v9 = v7;
      if (v7[51] >= 2)
      {
        v9 = *v7;
      }

      if (v6[50])
      {
        sub_29A1DD93C(v8, v9);
      }

      if (v7[50])
      {
        v10 = v6;
        if (v6[51] >= 2)
        {
          v10 = *v6;
        }

        v11 = v7;
        if (v7[51] >= 2)
        {
          v11 = *v7;
        }

        sub_29A1DE49C(v10, v11);
        v12 = v7;
        if (v7[51] >= 2)
        {
          v12 = *v7;
        }

        if (*(v12 + 191) < 0)
        {
          operator delete(*(v12 + 21));
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 41);
        sub_29A1DE3A4(v12 + 40);
        v19 = (v12 + 34);
        sub_29A10C99C(&v19);
        sub_29A1DE45C();
      }

      v6[50] = 0;
      v7[50] = 0;
      return result;
    }

    v13 = result;
    v2 = a2;
  }

  if (*(v13 + 200))
  {
    v14 = v13;
    if (*(v13 + 204) >= 2u)
    {
      v14 = *v13;
    }

    sub_29A1DE49C(v2, v14);
    v15 = v13;
    if (*(v13 + 204) >= 2u)
    {
      v15 = *v13;
    }

    if (*(v15 + 191) < 0)
    {
      operator delete(*(v15 + 168));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v15 + 164));
    sub_29A1DE3A4((v15 + 160));
    v19 = (v15 + 136);
    sub_29A10C99C(&v19);
    sub_29A1DE45C();
  }

  *v13 = *v2;
  v16 = *(v2 + 200);
  *(v2 + 200) = 0;
  *(v13 + 200) = v16;
  v17 = *(v2 + 204);
  *(v2 + 204) = *(v13 + 204);
  *(v13 + 204) = v17;
  return result;
}

void sub_29A1DD93C(int *a1, int *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);

  sub_29A1DD988((a1 + 2), (a2 + 2));
}

void sub_29A1DD988(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  sub_29A1DDC64(v4, a1);
  v5 = *(a1 + 128);
  v6 = *(a1 + 144);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v7 = *(a1 + 152);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 152));
  v8 = *(a1 + 156);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 156));
  v9 = *(a1 + 160);
  v10 = *(a1 + 176);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  v11 = *(a1 + 184);
  v12 = *(a1 + 186);
  if (a1 != a2)
  {
    sub_29A1DDDFC(a1, a2);
  }

  sub_29A1DE364(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A1DDBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1DDC00(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 156));
  sub_29A1DE3A4((a1 + 152));
  v2 = (a1 + 128);
  sub_29A10C99C(&v2);
  sub_29A1DE45C();
}

uint64_t sub_29A1DDC64(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 120) = 0x300000000;
  v3 = *(a2 + 120);
  if (v3 < 4)
  {
    if (*(a2 + 124) >= 4u)
    {
      v4 = *a2;
    }

    else
    {
      v4 = a2;
    }

    sub_29A1DDCF8(v4, &v4[5 * v3], v2);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_Destruct();
  }

  *result = *a2;
  *(result + 124) = *(a2 + 124);
  *(a2 + 124) = 3;
  v5 = *(result + 120);
  *(result + 120) = *(a2 + 120);
  *(a2 + 120) = v5;
  return result;
}

void *sub_29A1DDCF8(void *a1, void *a2, void *a3)
{
  v3 = a3;
  if (a1 == a2)
  {
    return a3;
  }

  v6 = a1;
  v4 = a3;
  v7 = a1;
  do
  {
    v8 = v6 + 3;
    *v4 = *v6;
    v4 += 5;
    *v7 = 0;
    v7 += 5;
    sub_29A186A3C(v3 + 1, v6 + 1);
    sub_29A186A3C(v3 + 3, v8);
    v3 = v4;
    v6 = v7;
  }

  while (v7 != a2);
  return v4;
}

_DWORD *sub_29A1DDD84(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a2);
  return a1;
}

_DWORD *sub_29A1DDDC0(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a2);
  return a1;
}

uint64_t sub_29A1DDDFC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 124);
  if (*(result + 124) > 3u)
  {
    if (v3 >= 4)
    {
      v33 = *result;
      *result = *a2;
      *a2 = v33;
      LODWORD(v33) = *(result + 120);
      *(result + 120) = *(a2 + 120);
      *(a2 + 120) = v33;
      LODWORD(v33) = *(result + 124);
      *(result + 124) = *(a2 + 124);
      *(a2 + 124) = v33;
      return result;
    }

    v21 = a2;
  }

  else
  {
    if (v3 <= 3)
    {
      v4 = *(result + 120);
      v5 = *(a2 + 120);
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
      if (*(v6 + 124) >= 4u)
      {
        v8 = *v6;
      }

      v9 = v7;
      if (*(v7 + 124) >= 4u)
      {
        v9 = *v7;
      }

      result = sub_29A1DE088(v8, &v8[5 * *(v6 + 120)], v9);
      v10 = *(v6 + 120);
      LODWORD(v11) = *(v7 + 120);
      if (v10 < v11)
      {
        v12 = 40 * v10 + 24;
        do
        {
          v13 = v6;
          if (*(v6 + 124) >= 4u)
          {
            v13 = *v6;
          }

          v14 = v7;
          if (*(v7 + 124) >= 4u)
          {
            v14 = *v7;
          }

          v15 = (v14 + v12);
          v16 = (v13 + v12);
          *(v13 + v12 - 24) = *(v14 + v12 - 24);
          *(v14 + v12 - 24) = 0;
          sub_29A186A3C((v13 + v12 - 16), (v14 + v12 - 16));
          sub_29A186A3C(v16, v15);
          v17 = v7;
          if (*(v7 + 124) >= 4u)
          {
            v17 = *v7;
          }

          v18 = v17 + v12;
          v19 = v17 + v12 - 16;
          sub_29A186B14(v17 + v12);
          result = sub_29A186B14(v19);
          v20 = *(v18 - 24);
          if ((v20 & 7) != 0)
          {
            atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          ++v10;
          v11 = *(v7 + 120);
          v12 += 40;
        }

        while (v10 < v11);
        LODWORD(v10) = *(v6 + 120);
      }

      *(v6 + 120) = v11;
      *(v7 + 120) = v10;
      return result;
    }

    v21 = result;
    v2 = a2;
  }

  v22 = *v2;
  LODWORD(v23) = *(v21 + 120);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = (v2 + 24);
    do
    {
      v27 = v21;
      if (*(v21 + 124) >= 4u)
      {
        v27 = *v21;
      }

      v28 = v27 + v24;
      *(v26 - 3) = *(v27 + v24);
      *(v27 + v24) = 0;
      sub_29A186A3C(v26 - 2, (v27 + v24 + 8));
      sub_29A186A3C(v26, (v28 + 24));
      v29 = v21;
      if (*(v21 + 124) >= 4u)
      {
        v29 = *v21;
      }

      v30 = (v29 + v24);
      sub_29A186B14(v29 + v24 + 24);
      result = sub_29A186B14((v30 + 1));
      if ((*v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v25;
      v23 = *(v21 + 120);
      v26 += 5;
      v24 += 40;
    }

    while (v25 < v23);
  }

  *v21 = v22;
  v31 = *(v2 + 120);
  *(v2 + 120) = v23;
  *(v21 + 120) = v31;
  v32 = *(v2 + 124);
  *(v2 + 124) = *(v21 + 124);
  *(v21 + 124) = v32;
  return result;
}

void *sub_29A1DE088(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  v4 = a1;
  v5 = a3;
  do
  {
    v7 = *v4;
    v4 += 5;
    v6 = v7;
    v8 = *v5;
    v5 += 5;
    *a1 = v8;
    v9 = a1 + 3;
    *a3 = v6;
    v10 = a3 + 3;
    sub_29A1DE11C(a1 + 1, a3 + 1);
    sub_29A1DE11C(v9, v10);
    a3 = v5;
    a1 = v4;
  }

  while (v4 != v3);
  return v3;
}

void *sub_29A1DE11C(void *a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a1[1])
  {
    v14 = 0;
    sub_29A186978(v15, &v13);
    v4 = a1[1];
    v5 = ~*(a1 + 2);
    v14 = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a1, &v13);
    }

    else
    {
      v13 = *a1;
    }

    a1[1] = 0;
    if (v16)
    {
      (*(v16 + 32))(v15);
    }

    v6 = a2 + 1;
    if (!a2[1])
    {
      v9 = a1[1];
      if (v9 && (a1[1] & 3) != 3)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v6 = a2 + 1;
    if (!a2[1])
    {
      return a1;
    }

    v14 = 0;
  }

  sub_29A186978(v15, a1);
  v7 = *v6;
  v8 = ~*v6;
  a1[1] = *v6;
  if ((v8 & 3) != 0)
  {
    (*((v7 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
  }

  else
  {
    *a1 = *a2;
  }

  *v6 = 0;
  if (v16)
  {
    (*(v16 + 32))(v15);
  }

LABEL_19:
  if (v14)
  {
    sub_29A186978(v15, a2);
    v10 = v14;
    v11 = ~v14;
    *v6 = v14;
    if ((v11 & 3) != 0)
    {
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&v13, a2);
    }

    else
    {
      *a2 = v13;
    }

    v14 = 0;
    if (v16)
    {
      (*(v16 + 32))(v15);
    }
  }

  else
  {
    if (*v6 && (*v6 & 3) != 3)
    {
      (*((*v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    *v6 = 0;
  }

  sub_29A186B14(&v13);
  return a1;
}

void sub_29A1DE31C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29A1DE364(uint64_t a1)
{
  if (*a1)
  {
    sub_29A102A5C(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

_DWORD *sub_29A1DE3A4(_DWORD *a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1))
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
    if ((atomic_fetch_add(Ptr + 2, 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Destroy(Ptr);
    }
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::Sdf_PathNode *sub_29A1DE3FC(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((*(this + 2) & 0x80000000) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(this);
  }

  v2 = *this;
  if (*this && (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Destroy(v2);
  }

  return this;
}

uint64_t sub_29A1DE49C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  sub_29A1DDC64(a1 + 8, a2 + 8);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  sub_29A1DDD84((a1 + 160), (a2 + 160));
  sub_29A1DDDC0((a1 + 164), (a2 + 164));
  v5 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v5;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v6 = *(a2 + 192);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 192) = v6;
  return a1;
}

void sub_29A1DE554(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A1DE590(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A1DE590(uint64_t a1)
{
  sub_29A1DE5CC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1DE5CC(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A1DE610(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A1DE610(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void **sub_29A1DE690(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1DE724(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1DE7B0, &stru_2A2040490);
  }
}

uint64_t sub_29A1DE724(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4856D0 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040490);
}

void *sub_29A1DE7B0@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *a1 = result;
  a1[1] = sub_29A1DE7FC;
  a1[2] = &stru_2A2040490;
  return result;
}

void sub_29A1DE7FC(void **a1)
{
  if (a1)
  {
    v2 = a1;
    sub_29A124AB0(&v2);
    operator delete(a1);
  }
}

uint64_t sub_29A1DE840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A1DE8C4(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t *sub_29A1DE8C4(uint64_t **a1, void *a2, void *a3, uint64_t *a4)
{
  v6 = sub_29A1DE948(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29A1DEB0C(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A1DE948(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5 & 0xFFFFFFFFFFFFFFF8, v7 = a2[4] & 0xFFFFFFFFFFFFFFF8, v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5 & 0xFFFFFFFFFFFFFFF8;
    if ((v10[4] & 0xFFFFFFFFFFFFFFF8) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4] & 0xFFFFFFFFFFFFFFF8;
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= (a4[4] & 0xFFFFFFFFFFFFFFF8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4] & 0xFFFFFFFFFFFFFFF8;
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_29A1DEB0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x28uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  result[4] = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a3 + 16) = 1;
  return result;
}

void sub_29A1DEB80(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      sub_29B293A6C(v1, v3 - 232);
    }

    v1[1] = v2;

    operator delete(v4);
  }
}

void sub_29A1DEC08(void ***a1)
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
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager *pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::Sdf_ChangeManager(pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager *this)
{
  *this = &unk_2A203F6D8;
  __dmb(0xBu);
  *(this + 1) = 0;
  __dmb(0xBu);
  *(this + 2) = 0;
  *this = &unk_2A2046BF0;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A2046C50;
  *(this + 3) = v2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 8) = this + 72;
  *(this + 5) = sub_29A1DEEF0;
  return this;
}

uint64_t sub_29A1DED58(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 56) = 1;
  return v5;
}

void sub_29A1DEE1C(pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::~Sdf_ChangeManager(a1);

  operator delete(v1);
}

void *sub_29A1DEE44()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A2046C50;
  return result;
}

uint64_t sub_29A1DEE7C(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

double sub_29A1DEEDC(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::~Sdf_ChangeManager(pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager *this)
{
  *this = &unk_2A2046BF0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(this);
  sub_29A1DEFAC(this + 4);
  *this = &unk_2A203F6D8;
}

unint64_t *sub_29A1DEFAC(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

uint64_t tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_Data>,128ul>>>::destroy_array(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    result = result + (a2 << 7) - 128;
    do
    {
      result = sub_29A1DF04C(result) - 128;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_29A1DF04C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3 = (a1 + 32);
    sub_29A1DEC08(&v3);
    v3 = a1;
    sub_29A1DEB80(&v3);
    *(a1 + 56) = 0;
  }

  return a1;
}

void *sub_29A1DF0A4(void *a1, atomic_uint **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v19 = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v8];
    v16[0] = v12;
    v16[1] = v13;
    v17 = v13;
    v18 = &v12[8 * v11];
    v14 = *a2;
    *v13 = *a2;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
      v13 = v17;
    }

    v17 = v13 + 1;
    sub_29A1DF1BC(a1, v16);
    v7 = a1[1];
    sub_29A1DF274(v16);
  }

  else
  {
    v6 = *a2;
    *v4 = *a2;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

void sub_29A1DF1A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DF274(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfSpec *sub_29A1DF1BC(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *v8;
      *v9 = *v8;
      if (v10)
      {
        atomic_fetch_add(v10, 1u);
      }

      ++v8;
      ++v9;
    }

    while (v8 != v5);
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(result);
      result = (v11 + 8);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v12 = *a1;
  *a1 = v7;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29A1DF274(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A1DF2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29B29119C(a4, v5);
    sub_29A1DBB54(a4 + 16, v5 + 16);
    a4 += 232;
    v5 += 232;
  }

  while (v5 != v6);
  return v6;
}

void sub_29A1DF334(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      sub_29B293A6C(a1, v3 - 232);
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType *sub_29A1DF3A0(atomic_ullong *a1)
{
  result = sub_29A1DF3E8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType::~SdfFieldKeys_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType *sub_29A1DF3E8()
{
  v0 = operator new(0x218uLL);
  pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType::SdfFieldKeys_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A1DF42C(atomic_ullong *a1)
{
  result = sub_29A1DF474();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType::~SdfChildrenKeys_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType *sub_29A1DF474()
{
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::SdfChildrenKeys_StaticTokenType::SdfChildrenKeys_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29A1DF4B8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B43C313 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20405B0);
}

uint64_t sub_29A1DF544(uint64_t a1, const void **a2, const void **a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A09ADD4(a1, v4, v6, v6);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_29A1DF5C8(uint64_t *a1, uint64_t *a2, const void ***a3, const void ***a4, uint64_t *a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *a2;
  if (*a1 == *a2)
  {
LABEL_25:
    v10 = v9;
    return sub_29A1DF77C(&v25, v9, v10, *a5);
  }

  v12 = *a3;
  if (*a3 != *a4)
  {
    while (1)
    {
      if (sub_29A00AFCC(a6, (v9 + 32), v12 + 4))
      {
        sub_29A070BA0(*a5);
      }

      if (sub_29A00AFCC(a6, *a3 + 4, (*a1 + 32)))
      {
        v15 = *a3;
        v16 = (*a3)[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v15[2];
            v18 = *v17 == v15;
            v15 = v17;
          }

          while (!v18);
        }
      }

      else
      {
        v19 = *a1;
        v20 = *(*a1 + 8);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v19[2];
            v18 = *v21 == v19;
            v19 = v21;
          }

          while (!v18);
        }

        *a1 = v21;
        v22 = *a3;
        v23 = (*a3)[1];
        if (v23)
        {
          do
          {
            v17 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v17 = v22[2];
            v18 = *v17 == v22;
            v22 = v17;
          }

          while (!v18);
        }
      }

      *a3 = v17;
      v9 = *a1;
      v10 = *a2;
      if (*a1 == *a2)
      {
        break;
      }

      v12 = *a3;
      if (*a3 == *a4)
      {
        return sub_29A1DF77C(&v25, v9, v10, *a5);
      }
    }

    goto LABEL_25;
  }

  return sub_29A1DF77C(&v25, v9, v10, *a5);
}

uint64_t sub_29A1DF77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    sub_29A070BA0(a4);
  }

  return a2;
}

uint64_t sub_29A1DF804(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B483DF0 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2046CD8);
}

uint64_t sub_29A1DF890(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 691;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

void *sub_29A1DF914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_29A1DF890(a1);
  if (result)
  {
    v7 = *a1;

    return sub_29A1DF984(v7, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_29A1DF984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(*a1 + 112))(a1);
  v6 = *result + 24 * a2;
  if (*(v6 + 23) < 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);

    return sub_29A008D14(a3, v8, v9);
  }

  else
  {
    v7 = *v6;
    *(a3 + 16) = *(v6 + 16);
    *a3 = v7;
  }

  return result;
}

uint64_t sub_29A1DFA14(uint64_t *a1, uint64_t a2, void **a3)
{
  v3 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x11A7B9611A7B961)
  {
    sub_29A00C9A4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v7 = 0x11A7B9611A7B961;
  }

  else
  {
    v7 = v4;
  }

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A1DFB94(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[232 * v3];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[232 * v7];
  v10 = (*a3)[1];
  *v9 = **a3;
  *(v9 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  *(v9 + 12) = 0u;
  *(v9 + 13) = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 55) = 1;
  *(v9 + 28) = 0;
  *&v19 = v9 + 232;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29A1DFBE0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A1DFD94(&v17);
  return v16;
}

void sub_29A1DFB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DFD94(va);
  _Unwind_Resume(a1);
}

void *sub_29A1DFB94(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11A7B9611A7B962)
  {
    sub_29A00C8B8();
  }

  return operator new(232 * a2);
}

uint64_t sub_29A1DFBE0(uint64_t a1, uint64_t a2, void *a3, void *a4)
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
    v7 = a2;
    do
    {
      sub_29A1DFCA8(a4, v7);
      v7 += 29;
      a4 = v12 + 29;
      v12 += 29;
    }

    while (v7 != a3);
    v10 = 1;
    if (a2 != a3)
    {
      sub_29B293A6C(a1, a2);
    }
  }

  return sub_29A1DFD08(v9);
}

void *sub_29A1DFCA8(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeList::SdfChangeList((a1 + 2), (a2 + 2));
  return a1;
}

void sub_29A1DFCF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B293C54(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1DFD08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A1DFD40(a1);
  }

  return a1;
}

uint64_t sub_29A1DFD40(uint64_t result)
{
  v1 = *(result + 16);
  if (*v1 != **(result + 8))
  {
    sub_29B293A6C(*result, *v1 - 232);
  }

  return result;
}

void **sub_29A1DFD94(void **a1)
{
  sub_29A1DFDC8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A1DFDC8(void *result)
{
  v1 = result[2];
  if (v1 != result[1])
  {
    v2 = result;
    v3 = result[4];
    v2[2] = v1 - 232;
    sub_29B293A6C(v3, v1 - 232);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B483E49 & 0x7FFFFFFFFFFFFFFFLL), &v14);
  v2 = std::string::insert(&v14, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v18 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v15, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v14);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x20uLL);
      *&v12 = pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::Sdf_CleanupTracker(v8, v9, v10).n128_u64[0];
      v13 = atomic_load(a1);
      if (v13)
      {
        if (v8 != v13)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v18 = 86;
          v19 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker]";
          v20 = 0;
          v21 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v11, v12);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v18 = 90;
        v19 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker]";
        v20 = 0;
        v21 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v11, v12, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v14);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }

  return v6;
}

void sub_29A1DFFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_instance, &v1, 0);
    if (v1 == i)
    {
      v4 = (i + 8);
      sub_29A1DEC08(&v4);
      v3 = sub_29A0F6078(i, v2);
      operator delete(v3);
      return;
    }

    sched_yield();
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::~Sdf_CleanupTracker(pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker *this)
{
  v3 = (this + 8);
  sub_29A1DEC08(&v3);
  sub_29A0F6078(this, v2);
}

{
  v3 = (this + 8);
  sub_29A1DEC08(&v3);
  sub_29A0F6078(this, v2);
}

unint64_t pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::GetInstance(pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_CreateInstance();
  }

  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::Sdf_CleanupTracker(pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker *this, uint64_t a2, char *a3)
{
  result = 0uLL;
  *this = 0u;
  *(this + 1) = 0u;
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::_instance, this))
  {
    v4[0] = "tf/instantiateSingleton.h";
    v4[1] = "SetInstanceConstructed";
    v4[2] = 54;
    v4[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker]";
    v5 = 0;
    v6 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v4, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void sub_29A1E0254(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 1;
  sub_29A1DEC08((v2 - 24));
  sub_29A0F6078(v1, v4);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::AddSpecIfTracking(pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler *a1, atomic_uint **a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler::IsCleanupEnabled(a1);
  if (result)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 1) == v5 || (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((v5 - 8)) & 1) != 0 || (result = pxrInternal__aapl__pxrReserved__::SdfSpec::operator==((*(a1 + 2) - 8), a2), (result & 1) == 0))
    {

      return sub_29A1E0538(a1 + 1, a2);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker::CleanupSpecs(pxrInternal__aapl__pxrReserved__::Sdf_CleanupTracker *this)
{
  for (i = *(this + 2); *(this + 1) != i; i = *(this + 2))
  {
    v3 = *(i - 8);
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add(v3, 1u);
      i = *(this + 2);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((i - 8));
    *(this + 2) = v4;
    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v7) & 1) == 0)
    {
      v5 = sub_29A1E045C(&v7);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v5, v6);
      sub_29A1DA6E4(v6);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v7);
  }
}

void sub_29A1E03FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **sub_29A1E045C(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B484034 & 0x7FFFFFFFFFFFFFFFLL), v5);
    if (v6 >= 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v3, v4);
  }

  return a1;
}

void sub_29A1E0504(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A1E047CLL);
}

void sub_29A1E051C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1E0538(void *a1, atomic_uint **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v19 = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v8];
    v16[0] = v12;
    v16[1] = v13;
    v17 = v13;
    v18 = &v12[8 * v11];
    v14 = *a2;
    *v13 = *a2;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
      v13 = v17;
    }

    v17 = v13 + 1;
    sub_29A1DF1BC(a1, v16);
    v7 = a1[1];
    sub_29A1DF274(v16);
  }

  else
  {
    v6 = *a2;
    *v4 = *a2;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

void sub_29A1E063C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DF274(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor::Sdf_AttributeConnectionListEditor(void *a1, atomic_uint **a2, atomic_uint **a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v6)
  {
    v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A1E1A7C(a1, a2, v6 + 7, a3);
}

void pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor::~Sdf_AttributeConnectionListEditor(pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor::~Sdf_AttributeConnectionListEditor(this);

  operator delete(v1);
}

{
  *this = &unk_2A2046E90;
  v2 = (this + 40);
  v3 = (this + 160);
  sub_29A1E234C(&v3);
  v3 = (this + 136);
  sub_29A1E234C(&v3);
  v3 = (this + 112);
  sub_29A1E234C(&v3);
  v3 = (this + 88);
  sub_29A1E234C(&v3);
  v3 = (this + 64);
  sub_29A1E234C(&v3);
  v3 = v2;
  sub_29A1E234C(&v3);
  sub_29A1E1EC4(this);
}

_DWORD *sub_29A1E0714(_DWORD *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v7 = result;
    sub_29A1E24EC(result, &v33);
    sub_29A1E2570(v7, &v31);
    v30[0] = 0;
    v30[1] = 0;
    v28[1] = 0;
    v29 = v30;
    v27 = v28;
    v28[0] = 0;
    v8 = *a4;
    v9 = *(a4 + 8);
    v10 = *a5;
    v11 = *(a5 + 8);
    if (v8 != v9 && v10 != v11)
    {
      do
      {
        if (*v8 != *v10)
        {
          break;
        }

        ++v8;
        ++v10;
        if (v8 == v9)
        {
          break;
        }
      }

      while (v10 != v11);
    }

    if (v8 != v9)
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    if (v10 != v11)
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v20 = v29;
    v19[0] = v30;
    v37 = v28;
    v38 = v27;
    v36 = &v24;
    sub_29A1E270C(&v20, v19, &v38, &v37, &v36);
    v20 = v24;
    v21 = v25;
    if (v24 != v25)
    {
      sub_29A1E25CC(&v20, v13, v14);
      pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::RemoveChild();
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v19[0] = v27;
    v37 = v29;
    v38 = v28;
    v35 = &v20;
    v36 = v30;
    sub_29A1E270C(v19, &v38, &v37, &v36, &v35);
    v19[0] = v20;
    v19[1] = v21;
    if (v20 != v21)
    {
      v17 = sub_29A1E25CC(v19, v15, v16);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(&v33, v17, &v38);
      sub_29A1DA6E4(&v31);
    }

    v23 = &v20;
    sub_29A1E234C(&v23);
    v23 = &v24;
    sub_29A1E234C(&v23);
    sub_29A1E2AEC(&v27, v28[0]);
    sub_29A1E2AEC(&v29, v30[0]);
    v18 = v32;
    if (v32)
    {
      if (atomic_fetch_add_explicit((v32 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v18 + 8))(v18);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34);
    return sub_29A1DE3A4(&v33);
  }

  return result;
}

void sub_29A1E0AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, char a26, void *a27)
{
  a15 = &a12;
  sub_29A1E234C(&a15);
  a15 = &a20;
  sub_29A1E234C(&a15);
  sub_29A1E2AEC(&a23, a24);
  sub_29A1E2AEC(&a26, a27);
  v29 = *(v27 - 136);
  if (v29)
  {
    if (atomic_fetch_add_explicit(v29 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v29 + 8))(v29);
    }
  }

  sub_29A1DCEA8((v27 - 124));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetListEditor::Sdf_RelationshipTargetListEditor(void *a1, atomic_uint **a2, atomic_uint **a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v6)
  {
    v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A1E1A7C(a1, a2, v6 + 55, a3);
}

void pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetListEditor::~Sdf_RelationshipTargetListEditor(pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetListEditor *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor::~Sdf_AttributeConnectionListEditor(this);

  operator delete(v1);
}

_DWORD *sub_29A1E0C54(_DWORD *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v7 = result;
    sub_29A1E24EC(result, &v33);
    sub_29A1E2570(v7, &v31);
    v30[0] = 0;
    v30[1] = 0;
    v28[1] = 0;
    v29 = v30;
    v27 = v28;
    v28[0] = 0;
    v8 = *a4;
    v9 = *(a4 + 8);
    v10 = *a5;
    v11 = *(a5 + 8);
    if (v8 != v9 && v10 != v11)
    {
      do
      {
        if (*v8 != *v10)
        {
          break;
        }

        ++v8;
        ++v10;
        if (v8 == v9)
        {
          break;
        }
      }

      while (v10 != v11);
    }

    if (v8 != v9)
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    if (v10 != v11)
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v20 = v29;
    v19[0] = v30;
    v37 = v28;
    v38 = v27;
    v36 = &v24;
    sub_29A1E270C(&v20, v19, &v38, &v37, &v36);
    v20 = v24;
    v21 = v25;
    if (v24 != v25)
    {
      sub_29A1E25CC(&v20, v13, v14);
      pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::RemoveChild();
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v19[0] = v27;
    v37 = v29;
    v38 = v28;
    v35 = &v20;
    v36 = v30;
    sub_29A1E270C(v19, &v38, &v37, &v36, &v35);
    v19[0] = v20;
    v19[1] = v21;
    if (v20 != v21)
    {
      v17 = sub_29A1E25CC(v19, v15, v16);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(&v33, v17, &v38);
      sub_29A1DA6E4(&v31);
    }

    v23 = &v20;
    sub_29A1E234C(&v23);
    v23 = &v24;
    sub_29A1E234C(&v23);
    sub_29A1E2AEC(&v27, v28[0]);
    sub_29A1E2AEC(&v29, v30[0]);
    v18 = v32;
    if (v32)
    {
      if (atomic_fetch_add_explicit((v32 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v18 + 8))(v18);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34);
    return sub_29A1DE3A4(&v33);
  }

  return result;
}

void sub_29A1E0FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, char a26, void *a27)
{
  a15 = &a12;
  sub_29A1E234C(&a15);
  a15 = &a20;
  sub_29A1E234C(&a15);
  sub_29A1E2AEC(&a23, a24);
  sub_29A1E2AEC(&a26, a27);
  v29 = *(v27 - 136);
  if (v29)
  {
    if (atomic_fetch_add_explicit(v29 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v29 + 8))(v29);
    }
  }

  sub_29A1DCEA8((v27 - 124));
  _Unwind_Resume(a1);
}

uint64_t sub_29A1E10D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v4 = "List editor is expired";
  }

  else
  {
    v5 = sub_29A1E045C((a1 + 8));
    result = pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v5);
    if (result)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return result;
    }

    v4 = "Permission denied";
  }

  result = sub_29A008E78(a2, v4);
  *(a2 + 24) = 1;
  return result;
}

BOOL sub_29A1E1148(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_2A2046DF8, &unk_2A2046E08, 0);
  if (v3)
  {
    sub_29A1E2B48(a1);
  }

  else
  {
    v5[0] = "sdf/listOpListEditor.h";
    v5[1] = "CopyEdits";
    v5[2] = 204;
    v5[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Could not copy from list editor of different type");
  }

  return v3 != 0;
}

void sub_29A1E15EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

void sub_29A1E1618(uint64_t a1, int a2, void *lpsrc)
{
  v6 = a2;
  if (__dynamic_cast(lpsrc, &unk_2A2046DF8, &unk_2A2046E08, 0))
  {
    sub_29A1E1FE0(v4, (a1 + 32));
  }

  v4[0] = "sdf/listOpListEditor.h";
  v4[1] = "ApplyList";
  v4[2] = 279;
  v4[3] = "virtual void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::ApplyList(SdfListOpType, const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Cannot apply from list editor of different type");
}

void sub_29A1E1770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1E1784(uint64_t a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::SdfPath **a4)
{
  v5 = a3[1];
  v6 = *a4;
  v7 = a4[1];
  v8 = *a3 == v5 || v6 == v7;
  v9 = *a4;
  if (!v8)
  {
    v16 = *a3 + 8;
    v9 = *a4;
    do
    {
      if (*(v16 - 8) != *v9)
      {
        break;
      }

      v9 = (v9 + 8);
      if (v16 == v5)
      {
        break;
      }

      v16 += 8;
    }

    while (v9 != v7);
  }

  if (v9 == v7)
  {
LABEL_13:
    v12 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(v12);
  }

  v10 = v9;
  while (v6 == v10)
  {
LABEL_12:
    v10 = (v10 + 8);
    if (v10 == v7)
    {
      goto LABEL_13;
    }
  }

  v11 = *a4;
  while (*v10 != *v11)
  {
    v11 = (v11 + 8);
    if (v11 == v10)
    {
      goto LABEL_12;
    }
  }

  v23[0] = "sdf/listEditor.h";
  v23[1] = "_ValidateEdit";
  v23[2] = 245;
  v23[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListEditor<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_ValidateEdit(SdfListOpType, const value_vector_type &, const value_vector_type &) const [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
  v24 = 0;
  p_p = &__p;
  sub_29A1E3D18(v10);
  if (v20 < 0)
  {
    p_p = __p;
  }

  v14 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      v15 = *v15;
    }
  }

  else
  {
    v15 = "";
  }

  sub_29A1E24EC(a1, &v21);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v21);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v23, 1, "Duplicate item '%s' not allowed for field '%s' on <%s>", p_p, v15, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_29A1E1A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1E1CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E1E38(va);
  sub_29A1E1E38(v3);
  sub_29A1E1EC4(v2);
  _Unwind_Resume(a1);
}

void *sub_29A1E1D00(void *result, atomic_uint **a2, uint64_t *a3, atomic_uint **a4)
{
  v4 = *a2;
  *result = &unk_2A2046F18;
  result[1] = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v5 = *a3;
  result[2] = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *a4;
  result[3] = *a4;
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  return result;
}

void sub_29A1E1D70(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v5);
  if (v6 && (sub_29A1E1F54(&v5) & 1) != 0)
  {
    if ((v6 & 4) != 0)
    {
      a2 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(&v5);
    }

    else
    {
      a2 = v5;
    }
  }

  sub_29A1E1FE0(a3, a2);
}

void **sub_29A1E1E38(void **a1)
{
  v3 = a1 + 16;
  sub_29A1E234C(&v3);
  v3 = a1 + 13;
  sub_29A1E234C(&v3);
  v3 = a1 + 10;
  sub_29A1E234C(&v3);
  v3 = a1 + 7;
  sub_29A1E234C(&v3);
  v3 = a1 + 4;
  sub_29A1E234C(&v3);
  v3 = a1 + 1;
  sub_29A1E234C(&v3);
  return a1;
}

void *sub_29A1E1EC4(void *a1)
{
  *a1 = &unk_2A2046F18;
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 3));
  v2 = a1[2];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 1));
  return a1;
}

void sub_29A1E1F2C(pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionListEditor::~Sdf_AttributeConnectionListEditor(a1);

  operator delete(v1);
}

uint64_t sub_29A1E1F54(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4857D6 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2046F90);
}

void sub_29A1E1FE0(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A1E20F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  sub_29A1E234C(va);
  sub_29A1E234C(va);
  sub_29A1E234C(va);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A1E2158(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
      sub_29A1E21F4(v4, v6);
      sub_29A1E2240(v4 + 1, v6 + 1);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A1E2280(v8);
  return v4;
}

_DWORD *sub_29A1E21F4(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1))
  {
    atomic_fetch_add_explicit((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1) + 8), 1u, memory_order_relaxed);
  }

  return a1;
}

_DWORD *sub_29A1E2240(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a1);
  }

  return a1;
}

uint64_t sub_29A1E2280(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A1E22B8(a1);
  }

  return a1;
}

uint64_t *sub_29A1E22B8(uint64_t *result)
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
      v3 -= 2;
      result = sub_29A1E230C(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

_DWORD *sub_29A1E230C(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

void sub_29A1E234C(void ***a1)
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
        v4 -= 2;
        sub_29A1E230C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A1E23D4(void *a1)
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
        v3 -= 2;
        sub_29A1E230C(a1, v3);
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

_DWORD *sub_29A1E24EC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }

  else
  {
    v5 = sub_29A1E045C((a1 + 8));

    return pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v5, a2);
  }
}

void sub_29A1E2570(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v4 = sub_29A1E045C((a1 + 8));

    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, a2);
  }
}

uint64_t sub_29A1E25CC(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1E264C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

_DWORD *sub_29A1E26CC(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void *sub_29A1E270C(void **a1, void **a2, void *a3, void *a4, uint64_t *a5)
{
  v6 = *a2;
  if (*a1 == *a2)
  {
    v6 = *a1;
  }

  else if (*a3 != *a4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return sub_29A1E2A64(&v8, *a1, v6, *a5);
}

unint64_t sub_29A1E28B4(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  sub_29A1E21F4(*(a1 + 8), a2);
  sub_29A1E2240((v4 + 4), a2 + 1);
  result = v4 + 8;
  *(a1 + 8) = v4 + 8;
  return result;
}

uint64_t sub_29A1E291C(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1DDD84(v4, v8);
      sub_29A1DDDC0(v4 + 1, v8 + 1);
      v8 += 2;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      sub_29A1E230C(a1, v6);
      v6 += 2;
    }
  }

  return sub_29A1E2280(v10);
}

void **sub_29A1E29E8(void **a1)
{
  sub_29A1E2A1C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A1E2A1C(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 8;
      result = sub_29A1E230C(v4, (v1 - 8));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void *sub_29A1E2A64(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_29A1E28B4(a4, v5 + 7);
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_29A1E2AEC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A1E2AEC(a1, *a2);
    sub_29A1E2AEC(a1, a2[1]);
    sub_29A1E26CC(a2 + 7);

    operator delete(a2);
  }
}

void sub_29A1E2B48(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v2 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v2, v3);
    sub_29A1DA6E4(v3);
  }

  v3[0] = "sdf/listOpListEditor.h";
  v3[1] = "_UpdateListOp";
  v3[2] = 96;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_UpdateListOp(const ListOpType &, const SdfListOpType *) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Invalid owner.");
}

void sub_29A1E2EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_29A186B14(v28 - 144);
  sub_29A1E1E38(&a9);
  sub_29A1DD644(&a28);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A1E2FE4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A1E3004(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1E3114(a1);
}

void sub_29A1E30FC(_BYTE **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2046FA0;
  sub_29A1E3654(a2, v2);
}

void sub_29A1E3114(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 128);
      sub_29A1E234C(&v2);
      v2 = (v1 + 104);
      sub_29A1E234C(&v2);
      v2 = (v1 + 80);
      sub_29A1E234C(&v2);
      v2 = (v1 + 56);
      sub_29A1E234C(&v2);
      v2 = (v1 + 32);
      sub_29A1E234C(&v2);
      v2 = (v1 + 8);
      sub_29A1E234C(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A1E31C0(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A1E322C(&v2, a1, (a1 + 8), (a1 + 32), (a1 + 56), (a1 + 80), (a1 + 104), (a1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

uint64_t sub_29A1E322C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  return sub_29A1E3274(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29A1E3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a2;
  v15 = *(a2 + 8) - v14;
  if (v15)
  {
    v16 = v15 >> 3;
    do
    {
      --v16;
      v17 = v14 + 2;
      sub_29A1E33B4(a1, v14);
      v14 = v17;
    }

    while (v16);
  }

  return sub_29A1E3318(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29A1E3318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = *(a2 + 8) - v12;
  if (v13)
  {
    v14 = v13 >> 3;
    do
    {
      --v14;
      v15 = v12 + 2;
      sub_29A1E33B4(a1, v12);
      v12 = v15;
    }

    while (v14);
  }

  return sub_29A1E33F0(a1, a3, a4, a5, a6);
}

uint64_t sub_29A1E33B4(uint64_t result, unsigned int *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = v2 + ((v3 + v2 + (v3 + v2) * (v3 + v2)) >> 1);
  return result;
}

uint64_t sub_29A1E33F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *(a2 + 8) - v10;
  if (v11)
  {
    v12 = v11 >> 3;
    do
    {
      --v12;
      v13 = v10 + 2;
      sub_29A1E33B4(a1, v10);
      v10 = v13;
    }

    while (v12);
  }

  return sub_29A1E347C(a1, a3, a4, a5);
}

uint64_t sub_29A1E347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 8) - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    do
    {
      --v10;
      v11 = v8 + 2;
      sub_29A1E33B4(a1, v8);
      v8 = v11;
    }

    while (v10);
  }

  return sub_29A1E3500(a1, a3, a4);
}

uint64_t sub_29A1E3500(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *(a2 + 8) - v6;
  if (v7)
  {
    v8 = v7 >> 3;
    do
    {
      --v8;
      v9 = v6 + 2;
      result = sub_29A1E33B4(v5, v6);
      v6 = v9;
    }

    while (v8);
  }

  v10 = *a3;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 3;
    do
    {
      --v12;
      v13 = v10 + 2;
      result = sub_29A1E33B4(v5, v10);
      v10 = v13;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29A1E3584(_BYTE **a1)
{
  v1 = atomic_load(*a1 + 38);
  if (v1 != 1)
  {
    sub_29A1E35EC(*a1);
  }

  return *a1;
}

__n128 sub_29A1E36C4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2047068;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A1E3710(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2047068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A1E3750(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20470D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1E379C@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  (*(*v3 + 48))(&v9);
  if (v10 == 1)
  {
    sub_29A1E388C(a2, &v9, &v7);
    sub_29A1DDD84(a3, &v7);
    sub_29A1DDDC0((a3 + 4), &v8);
    *(a3 + 8) = 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    sub_29A1DE3A4(&v7);
  }

  else
  {
    sub_29A1E3A5C(a3, &v9);
  }

  return sub_29A1E3AEC(&v9);
}

_DWORD *sub_29A1E388C@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  sub_29A1E39A4(a1, &v6);
  sub_29A1E390C(a2, &v6, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A1E38F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A1E390C(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, int *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1))
  {

    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

_DWORD *sub_29A1E39A4@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, _DWORD *a2@<X8>)
{
  IsDormant = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1);
  if (IsDormant)
  {
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(IsDormant);
    sub_29A1E21F4(a2, v5);

    return sub_29A1E2240(a2 + 1, v5 + 1);
  }

  else
  {
    v7 = sub_29A1E045C(a1);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v7, &v8);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v8, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    return sub_29A1DE3A4(&v8);
  }
}

void sub_29A1E3A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1E3A5C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_29A1E3AA0(a1, a2);
  return a1;
}

_DWORD *sub_29A1E3AA0(_DWORD *result, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v3 = result;
    v4 = sub_29A1E21F4(result, a2);
    result = sub_29A1E2240(v4 + 1, (a2 + 4));
    *(v3 + 8) = 1;
  }

  return result;
}

uint64_t sub_29A1E3AEC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
    sub_29A1DE3A4(a1);
  }

  return a1;
}

uint64_t sub_29A1E3B30(uint64_t a1)
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

void sub_29A1E3BB0(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a2 != a2[1])
  {
    sub_29A1E39A4(a1, &v4);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A1E3CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1E3D18(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A1E3F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A1E3F38@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = result[9];
  if (v3)
  {
    v5 = *result;
    v8 = &off_2A20470E8 + 1;
    sub_29A1E21F4(&v6, a2);
    sub_29A1E2240(&v7, a2 + 1);
    v3(v5, &v6);
    return sub_29A186B14(&v6);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A1E3FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A1E400C(_DWORD *a1, _DWORD *a2)
{
  sub_29A1E21F4(a2, a1);

  return sub_29A1E2240(a2 + 1, a1 + 1);
}

_DWORD *sub_29A1E4054(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29A1E4094(_DWORD *a1, _DWORD *a2)
{
  sub_29A1DDD84(a2, a1);
  sub_29A1DDDC0(a2 + 1, a1 + 1);

  return sub_29A1E4054(a1);
}

_DWORD *sub_29A1E4200@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A20470E8 + 1;
  v3 = sub_29A1E21F4(a2, a1) + 1;

  return sub_29A1E2240(v3, a1 + 1);
}

void sub_29A1E4254()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20471B0, 0, "SDF_ASSET", 0);
  v0 = sub_29A1DAA24();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "SDF_ASSET", "Sdf asset resolution diagnostics");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20471B0, 1, "SDF_CHANGES", 0);
  v1 = sub_29A1DAA24();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "SDF_CHANGES", "Sdf layer change notifications");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20471B0, 2, "SDF_FILE_FORMAT", 0);
  v2 = sub_29A1DAA24();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "SDF_FILE_FORMAT", "Sdf file format registration");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20471B0, 3, "SDF_LAYER", 0);
  v3 = sub_29A1DAA24();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 12, "SDF_LAYER", "Sdf layer loading and lifetime");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20471B0, 4, "SDF_VARIABLE_EXPRESSION_PARSING", 0);
  v4 = sub_29A1DAA24() + 16;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4, "SDF_VARIABLE_EXPRESSION_PARSING", "Sdf variable expression parsing");
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info::GetFileFormat@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = atomic_load(this + 112);
  if (v4)
  {
    *a2 = *(this + 15);

    return sub_29B293C98(a2);
  }

  else
  {
    v6 = sub_29B290C20(this + 32);
    if (v7 & 1 | v6)
    {
      sub_29A17F138(this + 32);
    }

    v14 = 0;
    v8 = sub_29A1E4510((this + 8));
    if (v8)
    {
      (*(*v8 + 16))(&v13);
      v10 = v13;
      v9 = v14;
      v13 = 0;
      v14 = v10;
      sub_29B290B2C(&v14, v9);
      sub_29A1E68F8(&v13);
      if (v14)
      {
        std::mutex::lock((this + 48));
        v11 = atomic_load(this + 112);
        if ((v11 & 1) == 0)
        {
          v12 = *(this + 15);
          *(this + 15) = v14;
          sub_29B293C98(&v14);
          sub_29B290B2C(this + 120, v12);
          atomic_store(1u, this + 112);
        }

        std::mutex::unlock((this + 48));
      }
    }

    *a2 = *(this + 15);
    sub_29B293C98(a2);
    return sub_29A1E68F8(&v14);
  }
}

void sub_29A1E44D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 48));
  sub_29A1E68F8(va);
  _Unwind_Resume(a1);
}

void *sub_29A1E4510(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::Sdf_FileFormatRegistry(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0;
  *(this + 16) = 850045863;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0;
  *(this + 16) = 850045863;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindById(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*a2)
  {
    v7[0] = "sdf/fileFormatRegistry.cpp";
    v7[1] = "FindById";
    v7[2] = 98;
    v7[3] = "SdfFileFormatConstPtr pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindById(const TfToken &)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot find file format for empty id");
    goto LABEL_7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins(this);
  v6 = sub_29A160470(this, a2);
  if (!v6)
  {
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFileFormat(v6 + 3, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins(uint64_t this)
{
  v1 = atomic_load((this + 120));
  if (v1)
  {
    return this;
  }

  v2 = this;
  memset(v188, 0, sizeof(v188));
  v189 = 1065353216;
  memset(v186, 0, sizeof(v186));
  v187 = 1065353216;
  v183 = 0u;
  v184 = 0u;
  v185 = 1065353216;
  v3 = sub_29A1D9440(2);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_FileFormatRegistry::_RegisterFormatPlugins", v4, v5);
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v3);
  v159 = v2;
  __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
  __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
  __p.__r_.__value_.__r.__words[2] = 270;
  v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
  v181 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v182, "Registering file format plugins", &__p);
  v178[0] = 0;
  v178[1] = 0;
  v177 = v178;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(__dst);
  if (__dst[0] != v7 || (__p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp", __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins", __p.__r_.__value_.__r.__words[2] = 274, v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()", v181 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!formatBaseType.IsUnknown()", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(v7, &v177);
  }

  v8 = v177;
  if (v177 != v178)
  {
    do
    {
      v176 = v8[4];
      if (sub_29A1D9440(2))
      {
        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
        if (*(TypeName + 23) >= 0)
        {
          v12 = TypeName;
        }

        else
        {
          v12 = *TypeName;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins: Type '%s'\n", v10, v11, v12);
      }

      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(v176, &v174);
      v13 = sub_29B290C20(&v174);
      if (v14 & 1 | v13)
      {
        if (sub_29A1D9440(2))
        {
          sub_29A17F138(&v174);
        }

        v15 = v176;
        v16 = atomic_load(&qword_2A173F6A0);
        if (!v16)
        {
          v16 = sub_29A1E6928();
        }

        if ((*v16 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
        }

        pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(v15, v172);
        if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(v172))
        {
          if (sub_29A1D9440(2))
          {
            v17 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
            if (*(v17 + 23) >= 0)
            {
              v20 = v17;
            }

            else
            {
              v20 = *v17;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins: No format identifier for type '%s', skipping.", v18, v19, v20);
          }
        }

        else if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(v172))
        {
          String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v172);
          if (*(String + 23) < 0)
          {
            sub_29A008D14(__dst, *String, *(String + 8));
          }

          else
          {
            v22 = *String;
            v171 = *(String + 16);
            *__dst = v22;
          }

          v28 = HIBYTE(v171);
          if (v171 < 0)
          {
            v28 = __dst[1];
          }

          if (v28)
          {
            if (sub_29A1D9440(2))
            {
              v31 = __dst;
              if (v171 < 0)
              {
                v31 = __dst[0];
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins:   formatId '%s'\n", v29, v30, v31);
            }

            v32 = v176;
            v33 = atomic_load(&qword_2A173F6A0);
            if (!v33)
            {
              v33 = sub_29A1E6928();
            }

            if ((*(v33 + 1) & 0xFFFFFFFFFFFFFFF8) == 0)
            {
              pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
            }

            pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(v32, &v168);
            if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v168))
            {
              if (sub_29A1D9440(2))
              {
                v39 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
                if (*(v39 + 23) >= 0)
                {
                  v42 = v39;
                }

                else
                {
                  v42 = *v39;
                }

                pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins: No extensions registered for type '%s', skipping.", v40, v41, v42);
              }
            }

            else if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray(&v168))
            {
              JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v168);
              v45 = *JsArray;
              v44 = *(JsArray + 8);
              while (v45 != v44)
              {
                if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(v45))
                {
                  goto LABEL_70;
                }

                v45 = (v45 + 16);
              }

              v49 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(&v168);
              sub_29A012B58(&v166, (v49[1] - *v49) >> 4);
              v51 = *v49;
              v50 = v49[1];
              v52 = v166;
              if (v51 != v50)
              {
                do
                {
                  v53 = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v51);
                  if (*(v53 + 23) < 0)
                  {
                    sub_29A008D14(&__p, *v53, *(v53 + 8));
                  }

                  else
                  {
                    v54 = *v53;
                    __p.__r_.__value_.__r.__words[2] = *(v53 + 16);
                    *&__p.__r_.__value_.__l.__data_ = v54;
                  }

                  if (*(v52 + 23) < 0)
                  {
                    operator delete(*v52);
                  }

                  v55 = *&__p.__r_.__value_.__l.__data_;
                  *(v52 + 2) = *(&__p.__r_.__value_.__l + 2);
                  *v52 = v55;
                  v52 = (v52 + 24);
                  v51 = (v51 + 16);
                }

                while (v51 != v50);
                v52 = v166;
              }

              v56 = v167;
              if (v52 == v167)
              {
                __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
                __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
                __p.__r_.__value_.__r.__words[2] = 338;
                v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
                v181 = 0;
                v66 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
                if (*(v66 + 23) >= 0)
                {
                  v67 = v66;
                }

                else
                {
                  v67 = *v66;
                }

                v68 = atomic_load(&qword_2A173F6A0);
                if (!v68)
                {
                  v68 = sub_29A1E6928();
                }

                v69 = *(v68 + 8) & 0xFFFFFFFFFFFFFFF8;
                if (v69)
                {
                  v70 = (v69 + 16);
                  if (*(v69 + 39) < 0)
                  {
                    v70 = *v70;
                  }
                }

                else
                {
                  v70 = "";
                }

                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "File format '%s' plugin meta data '%s' is empty", v67, v70);
              }

              else
              {
                do
                {
                  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(v52, &__p);
                  if (*(v52 + 23) < 0)
                  {
                    operator delete(*v52);
                  }

                  v57 = *&__p.__r_.__value_.__l.__data_;
                  *(v52 + 2) = *(&__p.__r_.__value_.__l + 2);
                  *v52 = v57;
                  v52 = (v52 + 24);
                }

                while (v52 != v56);
                pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v165);
                memset(&__p, 0, sizeof(__p));
                pxrInternal__aapl__pxrReserved__::TfType::GetAllAncestorTypes(&v176, &__p);
                *v163 = *&__p.__r_.__value_.__l.__data_;
                while (v163[0] != v163[1])
                {
                  v60 = *sub_29A180948(v163, v58, v59);
                  v61 = atomic_load(&qword_2A173F6A0);
                  if (!v61)
                  {
                    v61 = sub_29A1E6928();
                  }

                  if ((*(v61 + 2) & 0xFFFFFFFFFFFFFFF8) == 0)
                  {
                    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v61);
                  }

                  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(v60, &__str);
                  v62 = *&__str.__r_.__value_.__l.__data_;
                  *&__str.__r_.__value_.__l.__data_ = 0uLL;
                  v63 = *(&v165 + 1);
                  v165 = v62;
                  if (v63)
                  {
                    sub_29A014BEC(v63);
                    if (__str.__r_.__value_.__l.__size_)
                    {
                      sub_29A014BEC(__str.__r_.__value_.__l.__size_);
                    }
                  }

                  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v165))
                  {
                    if (sub_29A1D9440(2))
                    {
                      v71 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
                      if (*(v71 + 23) >= 0)
                      {
                        v72 = v71;
                      }

                      else
                      {
                        v72 = *v71;
                      }

                      v73 = sub_29A127A24(v163);
                      v74 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(*v73);
                      if (*(v74 + 23) >= 0)
                      {
                        v77 = v74;
                      }

                      else
                      {
                        v77 = *v74;
                      }

                      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins:     Found target for type '%s' from type '%s'\n", v75, v76, v72, v77);
                    }

                    break;
                  }

                  sub_29A127A4C(v163);
                }

                if (__p.__r_.__value_.__r.__words[0])
                {
                  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v165))
                {
                  if (sub_29A1D9440(2))
                  {
                    v78 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
                    if (*(v78 + 23) >= 0)
                    {
                      v81 = v78;
                    }

                    else
                    {
                      v81 = *v78;
                    }

                    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins: No target for type '%s', skipping.\n", v79, v80, v81);
                  }
                }

                else if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v165))
                {
                  v82 = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v165);
                  if (*(v82 + 23) < 0)
                  {
                    sub_29A008D14(v163, *v82, *(v82 + 8));
                  }

                  else
                  {
                    v84 = *v82;
                    v164 = *(v82 + 16);
                    *v163 = v84;
                  }

                  v90 = HIBYTE(v164);
                  if (v164 < 0)
                  {
                    v90 = v163[1];
                  }

                  if (v90)
                  {
                    v162 = pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_ParseFormatCapabilities(&v176, v83);
                    if (sub_29A1D9440(2))
                    {
                      v93 = v163;
                      if (v164 < 0)
                      {
                        v93 = v163[0];
                      }

                      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins:   target '%s'\n", v91, v92, v93);
                    }

                    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v161, __dst, 0);
                    __p.__r_.__value_.__r.__words[0] = &v161;
                    v94 = sub_29A1E6D84(v188, &v161, &unk_29B4D6118, &__p);
                    v95 = (v94 + 3);
                    if (!v94[3])
                    {
                      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__str, v163, 0);
                      sub_29A1E70CC(&v161, &v176, &__str, &v174, &v162, &__p);
                      v102 = *&__p.__r_.__value_.__l.__data_;
                      *&__p.__r_.__value_.__l.__data_ = 0uLL;
                      v103 = v94[4];
                      *(v94 + 3) = v102;
                      if (v103)
                      {
                        sub_29A014BEC(v103);
                        if (__p.__r_.__value_.__l.__size_)
                        {
                          sub_29A014BEC(__p.__r_.__value_.__l.__size_);
                        }
                      }

                      if ((__str.__r_.__value_.__s.__data_[0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((__str.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      v104 = v166;
                      v105 = v167;
                      while (2)
                      {
                        if (v104 == v105)
                        {
                          goto LABEL_156;
                        }

                        if (*(v104 + 23) < 0)
                        {
                          sub_29A008D14(&__str, *v104, *(v104 + 1));
                        }

                        else
                        {
                          v106 = *v104;
                          __str.__r_.__value_.__r.__words[2] = *(v104 + 2);
                          *&__str.__r_.__value_.__l.__data_ = v106;
                        }

                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          if (__str.__r_.__value_.__l.__size_)
                          {
                            p_str = __str.__r_.__value_.__r.__words[0];
                            goto LABEL_182;
                          }

LABEL_203:
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        else if (*(&__str.__r_.__value_.__s + 23))
                        {
                          p_str = &__str;
LABEL_182:
                          if (p_str->__r_.__value_.__s.__data_[0] == 46)
                          {
                            std::string::basic_string(&__p, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v190);
                            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__str.__r_.__value_.__l.__data_);
                            }

                            __str = __p;
                          }

                          if (sub_29A1D9440(2))
                          {
                            v110 = &__str;
                            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v110 = __str.__r_.__value_.__r.__words[0];
                            }

                            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("_RegisterFormatPlugins:   extension '%s'\n", v108, v109, v110);
                          }

                          __p.__r_.__value_.__r.__words[0] = &__str;
                          v111 = sub_29A1E724C(&v183, &__str, &unk_29B4D6118, &__p);
                          v114 = v111[6];
                          v115 = (v111 + 5);
                          __p.__r_.__value_.__r.__words[0] = v111[5];
                          __p.__r_.__value_.__l.__size_ = v114;
                          while (1)
                          {
                            if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
                            {
                              sub_29A017F80(v115, v95);
                              goto LABEL_202;
                            }

                            v116 = sub_29A1E64E0(&__p, v112, v113);
                            v117 = *(*v95 + 16);
                            if ((v117 ^ *(*v116 + 16)) < 8)
                            {
                              break;
                            }

                            sub_29A1E6560(&__p);
                          }

                          __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
                          __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
                          __p.__r_.__value_.__r.__words[2] = 437;
                          v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
                          v181 = 0;
                          v118 = v117 & 0xFFFFFFFFFFFFFFF8;
                          if ((v117 & 0xFFFFFFFFFFFFFFF8) != 0)
                          {
                            v119 = (v118 + 16);
                            if (*(v118 + 39) < 0)
                            {
                              v119 = *v119;
                            }
                          }

                          else
                          {
                            v119 = "";
                          }

                          v120 = &__str;
                          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v120 = __str.__r_.__value_.__r.__words[0];
                          }

                          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Multiple file formats with target '%s' registered for extension '%s', skipping.", v119, v120);
LABEL_202:
                          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_203;
                          }
                        }

                        v104 = (v104 + 24);
                        continue;
                      }
                    }

                    __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
                    __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
                    __p.__r_.__value_.__r.__words[2] = 403;
                    v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
                    v181 = 0;
                    v96 = __dst;
                    if (v171 < 0)
                    {
                      v96 = __dst[0];
                    }

                    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Duplicate registration for file format '%s'", v96);
LABEL_156:
                    if ((v161 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }
                  }

                  else
                  {
                    __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
                    __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
                    __p.__r_.__value_.__r.__words[2] = 389;
                    v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
                    v181 = 0;
                    v97 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
                    if (*(v97 + 23) >= 0)
                    {
                      v98 = v97;
                    }

                    else
                    {
                      v98 = *v97;
                    }

                    v99 = atomic_load(&qword_2A173F6A0);
                    if (!v99)
                    {
                      v99 = sub_29A1E6928();
                    }

                    v100 = *(v99 + 16) & 0xFFFFFFFFFFFFFFF8;
                    if (v100)
                    {
                      v101 = (v100 + 16);
                      if (*(v100 + 39) < 0)
                      {
                        v101 = *v101;
                      }
                    }

                    else
                    {
                      v101 = "";
                    }

                    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "File format '%s' plugin meta data '%s' is empty", v98, v101);
                  }

                  if (SHIBYTE(v164) < 0)
                  {
                    operator delete(v163[0]);
                  }
                }

                else
                {
                  __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
                  __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
                  __p.__r_.__value_.__r.__words[2] = 381;
                  v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
                  v181 = 0;
                  v85 = atomic_load(&qword_2A173F6A0);
                  if (!v85)
                  {
                    v85 = sub_29A1E6928();
                  }

                  v86 = *(v85 + 16) & 0xFFFFFFFFFFFFFFF8;
                  if (v86)
                  {
                    v87 = (v86 + 16);
                    if (*(v86 + 39) < 0)
                    {
                      v87 = *v87;
                    }
                  }

                  else
                  {
                    v87 = "";
                  }

                  v88 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
                  if (*(v88 + 23) >= 0)
                  {
                    v89 = v88;
                  }

                  else
                  {
                    v89 = *v88;
                  }

                  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unexpected value type for key '%s' in plugin meta data for file format type '%s'", v87, v89);
                }

                if (*(&v165 + 1))
                {
                  sub_29A014BEC(*(&v165 + 1));
                }
              }

              __p.__r_.__value_.__r.__words[0] = &v166;
              sub_29A012C90(&__p);
            }

            else
            {
LABEL_70:
              __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
              __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
              __p.__r_.__value_.__r.__words[2] = 330;
              v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
              v181 = 0;
              v46 = atomic_load(&qword_2A173F6A0);
              if (!v46)
              {
                v46 = sub_29A1E6928();
              }

              v47 = *(v46 + 8) & 0xFFFFFFFFFFFFFFF8;
              if (v47)
              {
                v48 = (v47 + 16);
                if (*(v47 + 39) < 0)
                {
                  v48 = *v48;
                }
              }

              else
              {
                v48 = "";
              }

              v64 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
              if (*(v64 + 23) >= 0)
              {
                v65 = v64;
              }

              else
              {
                v65 = *v64;
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unexpected value type for key '%s' in plugin meta data for file format type '%s'", v48, v65);
            }

            if (v169)
            {
              sub_29A014BEC(v169);
            }
          }

          else
          {
            __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
            __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
            __p.__r_.__value_.__r.__words[2] = 310;
            v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
            v181 = 0;
            v34 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
            if (*(v34 + 23) >= 0)
            {
              v35 = v34;
            }

            else
            {
              v35 = *v34;
            }

            v36 = atomic_load(&qword_2A173F6A0);
            if (!v36)
            {
              v36 = sub_29A1E6928();
            }

            v37 = *v36 & 0xFFFFFFFFFFFFFFF8;
            if (v37)
            {
              v38 = (v37 + 16);
              if (*(v37 + 39) < 0)
              {
                v38 = *v38;
              }
            }

            else
            {
              v38 = "";
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "File format '%s' plugin meta data '%s' is empty", v35, v38);
          }

          if (SHIBYTE(v171) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        else
        {
          __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
          __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
          __p.__r_.__value_.__r.__words[2] = 302;
          v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
          v181 = 0;
          v23 = atomic_load(&qword_2A173F6A0);
          if (!v23)
          {
            v23 = sub_29A1E6928();
          }

          v24 = *v23 & 0xFFFFFFFFFFFFFFF8;
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

          v26 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v176);
          if (*(v26 + 23) >= 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = *v26;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unexpected value type for key '%s' in plugin meta data for file format type '%s'", v25, v27);
        }

        if (v173)
        {
          sub_29A014BEC(v173);
        }
      }

      v121 = v175;
      if (v175 && atomic_fetch_add_explicit((v175 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v121 + 8))(v121);
      }

      v122 = v8[1];
      if (v122)
      {
        do
        {
          v123 = v122;
          v122 = *v122;
        }

        while (v122);
      }

      else
      {
        do
        {
          v123 = v8[2];
          v124 = *v123 == v8;
          v8 = v123;
        }

        while (!v124);
      }

      v8 = v123;
    }

    while (v123 != v178);
  }

  __dst[1] = 0;
  v171 = 0;
  __dst[0] = &__dst[1];
  v166 = v184;
  v167 = 0;
  v125 = "";
  v126 = v159;
LABEL_228:
  if (v166 != v167)
  {
    v127 = *sub_29A1E65E0(&v166);
    v128 = sub_29A1E65E0(&v166);
    v131 = *v128;
    v132 = *(*v128 + 40);
    v133 = *(*v128 + 48);
    if (v132 == v133)
    {
      __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
      __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
      __p.__r_.__value_.__r.__words[2] = 453;
      v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
      v181 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!infos.empty()", 0);
      v132 = *(v131 + 40);
      v133 = *(v131 + 48);
    }

    v134 = (v127 + 16);
    if (v133 - v132 == 16)
    {
      v136 = *v132;
      v135 = v132[1];
      if (v135)
      {
        atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v136)
      {
LABEL_276:
        __p.__r_.__value_.__r.__words[0] = v127 + 16;
        v155 = sub_29A1E75F8(v186, (v127 + 16), &unk_29B4D6118, &__p);
        if (v135)
        {
          atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v156 = v155[6];
        v155[5] = v136;
        v155[6] = v135;
        if (v156)
        {
          sub_29A014BEC(v156);
        }
      }

      goto LABEL_280;
    }

    v136 = 0;
    v135 = 0;
    v163[0] = v132;
    v163[1] = v133;
    while (1)
    {
      if (v163[0] == v163[1])
      {
LABEL_275:
        if (v136)
        {
          goto LABEL_276;
        }

        sub_29A095658(__dst, (v127 + 16), v127 + 16);
        if (v157)
        {
          __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
          __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
          __p.__r_.__value_.__r.__words[2] = 499;
          v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
          v181 = 0;
          if (*(v127 + 39) < 0)
          {
            v134 = *v134;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "No primary file format specified for extension '%s', skipping.", v134);
        }

LABEL_280:
        if (v135)
        {
          sub_29A014BEC(v135);
        }

        sub_29A1E6618(&v166);
        v126 = v159;
        goto LABEL_228;
      }

      v137 = *(*sub_29A1E5F60(v163, v129, v130) + 8);
      v138 = atomic_load(&qword_2A173F6A0);
      if (!v138)
      {
        v138 = sub_29A1E6928();
      }

      if ((*(v138 + 3) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v138);
      }

      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(v137, &__str);
      if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&__str))
      {
        goto LABEL_264;
      }

      if (!pxrInternal__aapl__pxrReserved__::JsValue::IsBool(&__str))
      {
        break;
      }

      if (pxrInternal__aapl__pxrReserved__::JsValue::GetBool(&__str))
      {
        if (v136)
        {
          if (v135)
          {
            sub_29A014BEC(v135);
          }

          sub_29A095658(__dst, (v127 + 16), v127 + 16);
          if (v143)
          {
            __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
            __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
            __p.__r_.__value_.__r.__words[2] = 489;
            v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
            v181 = 0;
            v144 = (v127 + 16);
            if (*(v127 + 39) < 0)
            {
              v144 = *v134;
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Multiple primary file formats specified for extension '%s', skipping.", v144);
          }

          v136 = 0;
          v135 = 0;
          v145 = 15;
        }

        else
        {
          v152 = sub_29A1E5F60(v163, v141, v142);
          v153 = v125;
          v136 = *v152;
          v154 = v152[1];
          if (v154)
          {
            atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v135)
          {
            sub_29A014BEC(v135);
          }

          v145 = 0;
          v135 = v154;
          v125 = v153;
        }
      }

      else
      {
        v145 = 0;
      }

LABEL_265:
      if (__str.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__str.__r_.__value_.__l.__size_);
      }

      if (v145 != 17 && v145)
      {
        goto LABEL_275;
      }

      sub_29A1E5FE0(v163);
    }

    __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
    __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
    __p.__r_.__value_.__r.__words[2] = 471;
    v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
    v181 = 0;
    v146 = atomic_load(&qword_2A173F6A0);
    if (!v146)
    {
      v146 = sub_29A1E6928();
    }

    v147 = *(v146 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v147)
    {
      v148 = (v147 + 16);
      if (*(v147 + 39) < 0)
      {
        v148 = *v148;
      }
    }

    else
    {
      v148 = v125;
    }

    v149 = sub_29A1E5F60(v163, v139, v140);
    v150 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((*v149 + 8));
    if (*(v150 + 23) >= 0)
    {
      v151 = v150;
    }

    else
    {
      v151 = *v150;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unexpected value type for key '%s' in plugin meta data for file format type '%s'", v148, v151);
LABEL_264:
    v145 = 17;
    goto LABEL_265;
  }

  std::mutex::lock((v126 + 128));
  v158 = atomic_load((v126 + 120));
  if ((v158 & 1) == 0)
  {
    if (*(v126 + 24))
    {
      __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
      __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
      __p.__r_.__value_.__r.__words[2] = 513;
      v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
      v181 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "_formatInfo.empty()", 0);
    }

    if (*(v126 + 64))
    {
      __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
      __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
      __p.__r_.__value_.__r.__words[2] = 514;
      v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
      v181 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "_extensionIndex.empty()", 0);
    }

    if (*(v126 + 104))
    {
      __p.__r_.__value_.__r.__words[0] = "sdf/fileFormatRegistry.cpp";
      __p.__r_.__value_.__l.__size_ = "_RegisterFormatPlugins";
      __p.__r_.__value_.__r.__words[2] = 515;
      v180 = "void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins()";
      v181 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "_fullExtensionIndex.empty()", 0);
    }

    sub_29A1C04D0(v126, v188);
    sub_29A1C04D0(v126 + 40, v186);
    sub_29A1C04D0(v126 + 80, &v183);
    atomic_store(1u, (v126 + 120));
  }

  std::mutex::unlock((v126 + 128));
  sub_29A019EE8(__dst, __dst[1]);
  sub_29A082B84(&v177, v178[0]);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v182);
  sub_29A1E6830(&v183);
  sub_29A1E670C(v186);
  return sub_29A1E678C(v188);
}

void sub_29A1E59D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, char *a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  std::mutex::unlock(a12 + 2);
  sub_29A019EE8(&a37, a38);
  sub_29A082B84(&a49, a50);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a58);
  sub_29A1E6830(v58 - 240);
  sub_29A1E670C(v58 - 192);
  sub_29A1E678C(v58 - 144);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFileFormat@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info **a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    v6[0] = "sdf/fileFormatRegistry.cpp";
    v6[1] = "_GetFileFormat";
    v6[2] = 530;
    v6[3] = "SdfFileFormatConstPtr pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFileFormat(const _InfoSharedPtr &)";
    v7 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "info", 0);
    if (!result)
    {
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    v3 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info::GetFileFormat(v3, v6);
  sub_29A1E79A0(a2, v6);
  return sub_29A1E68F8(v6);
}

void sub_29A1E5D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E68F8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFormatInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileExtension(a2, &__p);
    pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(&__p, v23);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    v9 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v9 = v23[1];
    }

    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins(a1);
      v10 = *(a3 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a3 + 8);
      }

      if (v10)
      {
        v11 = sub_29A0FC520((a1 + 80), v23);
        if (v11)
        {
          v14 = v11[6];
          __p = v11[5];
          v26 = v14;
          while (__p != v26)
          {
            v15 = sub_29A1E5F60(&__p, v12, v13);
            if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((*v15 + 16), a3))
            {
              v22 = sub_29A1E5F60(&__p, v16, v17);
              v21 = *v22;
              v20 = v22[1];
              if (v20)
              {
                goto LABEL_24;
              }

              goto LABEL_25;
            }

            sub_29A1E5FE0(&__p);
          }
        }
      }

      else
      {
        v19 = sub_29A0FC520((a1 + 40), v23);
        if (v19)
        {
          v21 = v19[5];
          v20 = v19[6];
          if (v20)
          {
LABEL_24:
            atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
          }

LABEL_25:
          *a4 = v21;
          a4[1] = v20;
        }
      }
    }

    else
    {
      __p = "sdf/fileFormatRegistry.cpp";
      v26 = "_GetFormatInfo";
      v27 = 126;
      v28 = "Sdf_FileFormatRegistry::_InfoSharedPtr pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFormatInfo(const string &, const string &)";
      v29 = 0;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unable to determine extension for '%s'", v18);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  else
  {
    __p = "sdf/fileFormatRegistry.cpp";
    v26 = "_GetFormatInfo";
    v27 = 118;
    v28 = "Sdf_FileFormatRegistry::_InfoSharedPtr pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFormatInfo(const string &, const string &)";
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Cannot find file format for empty string");
  }
}

void sub_29A1E5F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1E5F60(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>>::operator*() [T = const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1E5FE0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>>::operator++() [T = const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindByExtension(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFormatInfo(a1, a2, a3, &v6);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFileFormat(&v6, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  v5 = v7;
  if (v7)
  {

    sub_29A014BEC(v5);
  }
}

void sub_29A1E60D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindAllFileFormatExtensions@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry *this@<X0>, uint64_t a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins(this);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  for (i = (this + 56); ; result = sub_29A095658(a2, i + 2, (i + 2)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindAllDerivedFileFormatExtensions(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfType *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins(this);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA(a2, *v7))
  {
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
    for (i = *(this + 12); i; i = *i)
    {
      v9 = i[5];
      v10 = i[6];
      while (v9 != v10)
      {
        if (pxrInternal__aapl__pxrReserved__::TfType::IsA((*v9 + 8), *a2))
        {
          sub_29A095658(a3, i + 2, (i + 2));
        }

        v9 += 16;
      }
    }
  }

  else
  {
    v13[0] = "sdf/fileFormatRegistry.cpp";
    v13[1] = "FindAllDerivedFileFormatExtensions";
    v13[2] = 187;
    v13[3] = "std::set<std::string> pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindAllDerivedFileFormatExtensions(const TfType &)";
    v14 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
    if (*(TypeName + 23) >= 0)
    {
      v12 = TypeName;
    }

    else
    {
      v12 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Type %s does not derive from SdfFileFormat", v12);
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::GetPrimaryFormatForExtension(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_RegisterFormatPlugins(a1);
  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(a2, __p);
  v6 = sub_29A0FC520((a1 + 40), __p);
  v7 = v6;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
LABEL_8:
    *a3 = v9;
    return;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = *v7[5];
  *a3 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_8;
    }
  }
}

void sub_29A1E6338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_ParseFormatCapabilities(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry *this, const pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(this);
  v4 = *this;
  v5 = atomic_load(&qword_2A173F6A0);
  if (!v5)
  {
    v5 = sub_29A1E6928();
  }

  if ((*(v5 + 4) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  v6 = sub_29A1E6468(Instance, v4);
  v7 = *this;
  v8 = atomic_load(&qword_2A173F6A0);
  if (!v8)
  {
    v8 = sub_29A1E6928();
  }

  if ((*(v8 + 5) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  v9 = sub_29A1E6468(Instance, v7);
  v10 = *this;
  v11 = atomic_load(&qword_2A173F6A0);
  if (!v11)
  {
    v11 = sub_29A1E6928();
  }

  if ((*(v11 + 6) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  if (v9)
  {
    v6 |= 2u;
  }

  if (sub_29A1E6468(Instance, v10))
  {
    return v6 | 4;
  }

  else
  {
    return v6;
  }
}

BOOL sub_29A1E6468(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDataFromPluginMetaData(a2, &v4);
  v2 = !pxrInternal__aapl__pxrReserved__::JsValue::IsBool(&v4) || (pxrInternal__aapl__pxrReserved__::JsValue::GetBool(&v4) & 1) != 0;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return v2;
}

void sub_29A1E64C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1E64E0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>>::operator*() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1E6560(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>>::operator++() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29A1E65E0(void *result)
{
  if (*result == result[1])
  {
    sub_29B293E28();
  }

  return result;
}

uint64_t sub_29A1E6618(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<std::string, std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<std::string, std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_Info>>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_FormatSupportsCapability(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::_GetFormatInfo(a1, a2, a3, &v7);
  if (v7)
  {
    v5 = (*(v7 + 24) & a4) != 0;
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return v5;
}

uint64_t sub_29A1E670C(uint64_t a1)
{
  sub_29A1E6748(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1E6748(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A099388((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A1E678C(uint64_t a1)
{
  sub_29A1E67C8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1E67C8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_29A014BEC(v4);
      }

      v5 = v2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A1E6830(uint64_t a1)
{
  sub_29A1E686C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1E686C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A1E68B0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A1E68B0(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_29A0176E4(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

unint64_t sub_29A1E6928()
{
  v28 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "formatId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "extensions", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "target", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "primary", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "supportsReading", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "supportsWriting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "supportsEditing", 0);
  v1 = v0 + 7;
  v2 = *v0;
  v21 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v3;
    }
  }

  v4 = v0[1];
  v22 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v5;
    }
  }

  v6 = v0[2];
  v23 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v7;
    }
  }

  v8 = v0[3];
  v24 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v9;
    }
  }

  v10 = v0[4];
  v25 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v11;
    }
  }

  v12 = v0[5];
  v26 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v13;
    }
  }

  v14 = v0[6];
  v27 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v15;
    }
  }

  *v1 = 0;
  v0[8] = 0;
  v0[9] = 0;
  sub_29A12EF7C(v1, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v17 = *(&v21 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v18 = 0;
  atomic_compare_exchange_strong(&qword_2A173F6A0, &v18, v0);
  if (v18)
  {
    v19 = sub_29A1E6CA0(v0);
    operator delete(v19);
    return atomic_load(&qword_2A173F6A0);
  }

  return v0;
}

void sub_29A1E6B84(_Unwind_Exception *a1)
{
  v4 = 48;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29A1E6CA0(uint64_t a1)
{
  v9 = (a1 + 56);
  sub_29A124AB0(&v9);
  v2 = *(a1 + 48);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 24);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 16);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *sub_29A1E6D84(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
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

  sub_29A1E6FD0(a1, v6, a4, &v22);
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

void sub_29A1E6FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A1E7054(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1E6FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
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

  result[3] = 0;
  result[4] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A1E7054(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    v4 = __p[2];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_29A1E70CC@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X4>, int *a5@<X5>, void *a6@<X8>)
{
  v12 = operator new(0x98uLL);
  result = sub_29A1E7158(v12, a1, a2, a3, a4, a5);
  *a6 = v12 + 3;
  a6[1] = v12;
  return result;
}

void *sub_29A1E7158(void *a1, uint64_t *a2, void *a3, uint64_t *a4, void *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20471D0;
  sub_29B293CE4((a1 + 3), a2, a3, a4, a5, *a6);
  return a1;
}

void sub_29A1E71D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20471D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

const void **sub_29A1E724C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A1E74F4(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}