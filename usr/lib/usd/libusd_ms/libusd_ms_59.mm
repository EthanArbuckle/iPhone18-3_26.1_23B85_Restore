void sub_29A348AA0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v2);
  if (SHIBYTE(v3) < 0)
  {
    sub_29A008D14(&__dst, v2[0], v2[1]);
  }

  else
  {
    __dst = *v2;
    v7 = v3;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __dst;
  *(a1 + 16) = v7;
  HIBYTE(v7) = 0;
  LOBYTE(__dst) = 0;
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void *sub_29A348B54(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  *(__dst + 48) = 1;
  return __dst;
}

uint64_t sub_29A348BCC(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 393;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t sub_29A348C50(uint64_t a1)
{
  *a1 = &unk_2A204B638;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A348CB0(void **__p)
{
  *__p = &unk_2A204B638;
  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void *sub_29A348D20(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2A204B638;
  *(v2 + 1) = v3;
  sub_29A3485E8(v2 + 16, (a1 + 16));
  return v2;
}

char *sub_29A348D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2A204B638;
  *(a2 + 8) = v2;
  return sub_29A3485E8((a2 + 16), (a1 + 16));
}

void sub_29A348DC4(void *a1)
{
  sub_29A348890(a1 + 8);

  operator delete(a1);
}

uint64_t sub_29A348E18(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B6A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_29A348E64(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 8);
  if (v3 == *(a1 + 24))
  {
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, true>::operator*() [T = std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = true]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  v4 = *v3;
  if (*v3)
  {
    do
    {
      v5 = v4;
      v4 = v4[1];
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (v6);
  }

  return v5 + 28;
}

uint64_t sub_29A348F14(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, true>::operator++() [T = std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = true]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = *v2;
    if (*v2)
    {
      do
      {
        v4 = v3;
        v3 = v3[1];
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (v5);
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

void sub_29A348FC0(uint64_t a1)
{
  *a1 = &unk_2A204B6E0;
  sub_29A1E2AEC(a1 + 16, *(a1 + 24));
  sub_29A32BD28((a1 + 8));

  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);
}

uint64_t sub_29A349024(void *a1, uint64_t a2, char *a3)
{
  if (*a1 == a1[1])
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator*() [T = std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 28;
}

void *sub_29A3490A8(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator++() [T = std::set<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void sub_29A349150(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B728;
  sub_29A1E2AEC(a1 + 16, *(a1 + 3));

  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);
}

void sub_29A3491AC(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B770;
  sub_29A349AC0(a1 + 64, *(a1 + 9));

  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);
}

void sub_29A349208(uint64_t a1)
{
  *a1 = &unk_2A204B6E0;
  sub_29A1E2AEC(a1 + 16, *(a1 + 24));
  sub_29A32BD28((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);

  operator delete(v2);
}

uint64_t sub_29A349270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29A2EDBE4((a1 + 8));
  if (!(*(*v6 + 72))(v6, a3) || (v7 = sub_29A2EDBE4((a1 + 8)), v8 = (*(*v7 + 96))(v7, a3), v8 != (*(*a2 + 96))(a2, a3)))
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return 1;
}

void sub_29A349354(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B728;
  sub_29A1E2AEC(a1 + 16, *(a1 + 3));
  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);

  operator delete(v2);
}

uint64_t sub_29A3493B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(**(a1 + 8) + 72))(*(a1 + 8), a3) & 1) == 0)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return 1;
}

void sub_29A349420(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B770;
  sub_29A349AC0(a1 + 64, *(a1 + 9));
  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);

  operator delete(v2);
}

uint64_t sub_29A349480(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a2, pxrInternal__aapl__pxrReserved__::SdfAbstractData *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 32) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(*(*(a1 + 8) + 80), *(*(a1 + 8) + 112), a3, v16);
    pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(*(a1 + 24), a2, a3, &v14);
    v7 = *(a1 + 8);
    if (*(v7 + 80) == *(a1 + 24) || (v8 = sub_29A2EDBE4((v7 + 112)), ((*(*v8 + 72))(v8, a3) & 1) != 0))
    {
      for (i = v16[0]; i != v16[1]; ++i)
      {
        v10 = v14;
        if (v14 != v15)
        {
          while ((*v10 ^ *i) >= 8)
          {
            if (++v10 == v15)
            {
              goto LABEL_15;
            }
          }
        }

        if (v10 == v15)
        {
LABEL_15:
          v19 = 0;
          pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetField<pxrInternal__aapl__pxrReserved__::VtValue>();
        }
      }

      v11 = v14;
      if (v14 != v15)
      {
        v12 = *(a1 + 24);
        v19 = 0;
        sub_29A34984C(v12, a2, a3, v14, &v18);
        pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(*(a1 + 8), a3, v11, v17);
        pxrInternal__aapl__pxrReserved__::VtValue::operator==();
      }
    }

    v18 = &v14;
    sub_29A124AB0(&v18);
    v14 = v16;
    sub_29A124AB0(&v14);
  }

  else if ((*(*a2 + 72))(a2, a3))
  {
    v6 = sub_29A2EDBE4((*(a1 + 8) + 112));
    if ((*(*v6 + 72))(v6, a3))
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimDeleteSpec(**(a1 + 40), a3, 0, 1);
    }
  }

  return 1;
}

void sub_29A3497E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A34984C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v15 = 0;
  if ((*(*a2 + 128))(a2, a3, a4, a5, &v15))
  {
    return 1;
  }

  if (v15)
  {
    v9 = *(a1 + 928);
    v10 = *(a1 + 936);
    if (v9 != v10)
    {
      while ((*v9 ^ *a4) > 7)
      {
        if (++v9 == v10)
        {
          return 0;
        }
      }

      if (v15 > 0xB)
      {
        v12 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(a1, v15);
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        v11 = a1 + 72 * v15;
        if ((*(v11 + 120) & 1) == 0)
        {
          return 0;
        }

        v12 = (v11 + 56);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField(v12, a4))
      {
        FieldDefinition = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(a1, a4);
        if (a5 && FieldDefinition)
        {
          FallbackValue = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::GetFallbackValue(FieldDefinition);
          sub_29A1854E8(a5, FallbackValue);
          return 1;
        }

        if (FieldDefinition)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t *sub_29A349970(uint64_t **a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = sub_29A153CF4(a1, &v11, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    v8 = operator new(0x30uLL);
    sub_29A349A08((v8 + 4), a3, a4);
    sub_29A00B204(a1, v11, v9, v8);
  }

  return v8;
}

uint64_t sub_29A349A08(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 8), a3);
  sub_29A1E2240((a1 + 12), a3 + 1);
  return a1;
}

_DWORD *sub_29A349A74(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  result = sub_29A1DE3A4((a1 + 8));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A349AC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A349AC0(a1, *a2);
    sub_29A349AC0(a1, a2[1]);
    sub_29A349A74((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A349B1C(uint64_t a1)
{
  *a1 = &unk_2A204B7B8;
  sub_29A1E2AEC(a1 + 16, *(a1 + 24));
  sub_29A32BD28((a1 + 8));

  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);
}

void sub_29A349B80(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B800;
  sub_29A1E2AEC(a1 + 16, *(a1 + 3));

  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);
}

void sub_29A349BDC(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B848;
  sub_29A349AC0(a1 + 64, *(a1 + 9));

  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);
}

void sub_29A349C38(uint64_t a1)
{
  *a1 = &unk_2A204B7B8;
  sub_29A1E2AEC(a1 + 16, *(a1 + 24));
  sub_29A32BD28((a1 + 8));
  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);

  operator delete(v2);
}

uint64_t sub_29A349CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29A2EDBE4((a1 + 8));
  if (!(*(*v6 + 72))(v6, a3) || (v7 = sub_29A2EDBE4((a1 + 8)), v8 = (*(*v7 + 96))(v7, a3), v8 != (*(*a2 + 96))(a2, a3)))
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return 1;
}

void sub_29A349D84(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B800;
  sub_29A1E2AEC(a1 + 16, *(a1 + 3));
  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);

  operator delete(v2);
}

uint64_t sub_29A349DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(**(a1 + 8) + 72))(*(a1 + 8), a3) & 1) == 0)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return 1;
}

void sub_29A349E50(pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a1)
{
  *a1 = &unk_2A204B848;
  sub_29A349AC0(a1 + 64, *(a1 + 9));
  pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor::~SdfAbstractDataSpecVisitor(a1);

  operator delete(v2);
}

uint64_t sub_29A349EB0(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a2, pxrInternal__aapl__pxrReserved__::SdfAbstractData *a3)
{
  v25[2] = *MEMORY[0x29EDCA608];
  if ((*(a1 + 32) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(*(*(a1 + 8) + 80), *(*(a1 + 8) + 112), a3, &v20);
    pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(*(a1 + 24), a2, a3, &v18);
    v8 = *(a1 + 8);
    if (*(v8 + 80) == *(a1 + 24) || (v9 = sub_29A2EDBE4((v8 + 112)), ((*(*v9 + 72))(v9, a3) & 1) != 0))
    {
      for (i = v20; i != v21; i = (i + 8))
      {
        v11 = v18;
        if (v18 != v19)
        {
          while ((*v11 ^ *i) >= 8)
          {
            if (++v11 == v19)
            {
              goto LABEL_16;
            }
          }
        }

        if (v11 == v19)
        {
LABEL_16:
          v12 = *(a1 + 56);
          v24 = 0;
          v13 = *v12;
          pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(*v12, a3, i, v25);
          v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
          if (!v14)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeField(v14, v13 + 24);
        }
      }

      v15 = v18;
      if (v18 != v19)
      {
        v16 = *(a1 + 24);
        v24 = 0;
        sub_29A34984C(v16, a2, a3, v18, &v23);
        pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(*(a1 + 8), a3, v15, v22);
        pxrInternal__aapl__pxrReserved__::VtValue::operator==();
      }
    }

    v25[0] = &v18;
    sub_29A124AB0(v25);
    v18 = &v20;
    sub_29A124AB0(&v18);
  }

  else if ((*(*a2 + 72))(a2, a3))
  {
    v6 = sub_29A2EDBE4((*(a1 + 8) + 112));
    if ((*(*v6 + 72))(v6, a3))
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
      if (!v7)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
      }

      pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidRemoveSpec(v7, **(a1 + 40) + 24);
    }
  }

  return 1;
}

void sub_29A34A2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  _Unwind_Resume(a1);
}

void *sub_29A34A330(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = a1[1];
    v7 = &v6[a2];
    v8 = 8 * a2;
    do
    {
      v9 = *a3;
      *v6 = *a3;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v6 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++v6;
      v8 -= 8;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

void sub_29A34A3E4(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29A186978(v2, a1);
  *(a1 + 8) = &off_2A2049148;
  sub_29A242610();
}

void sub_29A34A478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A34A4B4(void *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B29BAC4(v2, a1);
  }

  return sub_29A242530(a1);
}

void *sub_29A34A4F0(void *a1, unint64_t a2, _DWORD *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = a1[1];
    v7 = &v6[2 * a2];
    v8 = 8 * a2;
    do
    {
      sub_29A1E21F4(v6, a3);
      sub_29A1E2240(v6 + 1, a3 + 1);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

uint64_t sub_29A34A598(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x30uLL);
  v5 = *a2;
  *v4 = &unk_2A204B890;
  v4[1] = v5;
  sub_29A34A834((v4 + 2), (a2 + 1));
  *(a1 + 24) = v4;
  return a1;
}

uint64_t sub_29A34A618(uint64_t a1)
{
  *a1 = &unk_2A204B890;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29A32BD28((a1 + 16));
  return a1;
}

void sub_29A34A684(void *a1)
{
  *a1 = &unk_2A204B890;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 11);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29A1DE3A4(a1 + 8);
  sub_29A32BD28(a1 + 2);

  operator delete(a1);
}

void *sub_29A34A700(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2A204B890;
  v2[1] = v3;
  sub_29B29AA10((v2 + 2), a1 + 16);
  return v2;
}

uint64_t sub_29A34A76C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2A204B890;
  a2[1] = v2;
  return sub_29B29AA10((a2 + 2), a1 + 16);
}

void sub_29A34A7A4(void *a1)
{
  sub_29A34A8A0(a1 + 8);

  operator delete(a1);
}

uint64_t sub_29A34A7E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B910))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A34A834(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = *(a2 + 8);
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  sub_29A1DDD84((a1 + 24), (a2 + 24));
  sub_29A1DDDC0((a1 + 28), (a2 + 28));
  return a1;
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A34A8A0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));

  return sub_29A32BD28((a1 + 8));
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A34A8FC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  sub_29B293C98(&v6);
  v4(&v6, *(a1 + 16), a2, a1 + 24, a1 + 32);
  return sub_29A32BD28(&v6);
}

void sub_29A34A960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A32BD28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A34A974(uint64_t a1)
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

__n128 sub_29A34A9FC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204B938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A34AA48(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204B938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A34AA8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A34AAE0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204B9B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A34AB2C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204B9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A34AB64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204BA40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A34ABB8(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1DE724(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    if (*(a1 + 8) != v5)
    {
      sub_29A34AC54(*(a1 + 8), *v5, v5[1], v5[1] - *v5);
    }

    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

void *sub_29A34AC54(void *result, void *a2, void *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (result[2] - *result) >> 3)
  {
    sub_29A2F7B20(result);
    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A00C968(v7, v11);
    goto LABEL_22;
  }

  v12 = result[1];
  if (a4 > (v12 - v8) >> 3)
  {
    if (v12 != v8)
    {
      v13 = v12 - v8;
      v14 = a2;
      do
      {
        sub_29A166F2C(v8, v14++);
        v8 += 8;
        v13 -= 8;
      }

      while (v13);
    }

LABEL_22:

    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A166F2C(v8, v6++);
      v8 += 8;
    }

    while (v6 != a3);
    v12 = v7[1];
  }

  while (v12 != v8)
  {
    v16 = *(v12 - 1);
    v12 -= 8;
    v15 = v16;
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v7[1] = v8;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens_StaticTokenType *sub_29A34ADDC(atomic_ullong *a1)
{
  result = sub_29A34AE24();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens_StaticTokenType::~UsdUsdFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens_StaticTokenType *sub_29A34AE24()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens_StaticTokenType::UsdUsdFileFormatTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens_StaticTokenType *sub_29A34AE68(atomic_ullong *a1)
{
  result = sub_29A34AEB0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens_StaticTokenType::~UsdUsdaFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens_StaticTokenType *sub_29A34AEB0()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens_StaticTokenType::UsdUsdaFileFormatTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens_StaticTokenType *sub_29A34AEF4(atomic_ullong *a1)
{
  result = sub_29A34AF3C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens_StaticTokenType::~UsdUsdcFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens_StaticTokenType *sub_29A34AF3C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens_StaticTokenType::UsdUsdcFileFormatTokens_StaticTokenType(v0);
  return v0;
}

__n128 sub_29A34AFC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  a1->n128_u64[1] = 0;
  return result;
}

uint64_t sub_29A34B008(uint64_t a1)
{

  return sub_29B293A0C(a1);
}

uint64_t *sub_29A34B028()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204BA90, 0, 0, 0, 16, 0, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2046CD8, 0, 0, 0, 24, 0, 0);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity(pxrInternal__aapl__pxrReserved__::SdfLayerOffset *this)
{
  if ((atomic_load_explicit(qword_2A173F950, memory_order_acquire) & 1) == 0)
  {
    v3 = this;
    sub_29B29BB44();
    this = v3;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(this, &xmmword_2A173F960);
}

double *pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(double *this, double a2, double a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(double *a1, double *a2)
{
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (a1[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v2 = *a2;
  }

  else
  {
    v2 = *a2;
    if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  return vabdd_f64(*a1, v2) < 0.000001 && vabdd_f64(a1[1], a2[1]) < 0.000001;
}

double pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetInverse(pxrInternal__aapl__pxrReserved__::SdfLayerOffset *this)
{
  if (pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity(this))
  {
    return *this;
  }

  v3 = *(this + 1);
  v4 = 1.0 / v3;
  v5 = v3 == 0.0;
  v6 = INFINITY;
  if (!v5)
  {
    v6 = v4;
  }

  return -(*this * v6);
}

double pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*(double *a1, double *a2)
{
  return a1[1] * *a2 + *a1;
}

{
  return *a2 * a1[1] + *a1;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator<(double *a1, double *a2)
{
  v2 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = a1[1];
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = *a2;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v6 = a2[1];
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (vabdd_f64(v3, v6) >= 0.000001)
  {
    return v3 < v6;
  }

  else
  {
    if (vabdd_f64(v2, v5) < 0.000001)
    {
      return 0;
    }

    return v2 < v5;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash(pxrInternal__aapl__pxrReserved__::SdfLayerOffset *this)
{
  v2 = 0;
  v3 = 0;
  sub_29A189C3C(&v2, this, this + 1);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SdfLayerStateDelegateBase(uint64_t this)
{
  *(this + 8) = 1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *this = &unk_2A204BAB0;
  *(this + 32) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetField(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4, pxrInternal__aapl__pxrReserved__::VtValue *a5)
{
  v5 = this + 24;
  (*(*this + 48))(this);
  sub_29A1DA6E4(v5);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetField(uint64_t a1)
{
  v1 = a1 + 24;
  (*(*a1 + 56))(a1);
  sub_29A1DA6E4(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetFieldDictValueByKey(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::VtValue *a5, pxrInternal__aapl__pxrReserved__::VtValue *a6)
{
  v6 = this + 24;
  (*(*this + 64))(this);
  sub_29A1DA6E4(v6);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetFieldDictValueByKey(uint64_t a1)
{
  v1 = a1 + 24;
  (*(*a1 + 72))(a1);
  sub_29A1DA6E4(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetTimeSample(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4 = this + 24;
  (*(*this + 80))(this);
  sub_29A1DA6E4(v4);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetTimeSample(uint64_t a1)
{
  v1 = a1 + 24;
  (*(*a1 + 88))(a1);
  sub_29A1DA6E4(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::CreateSpec(uint64_t a1)
{
  v1 = a1 + 24;
  (*(*a1 + 96))(a1);
  sub_29A1DA6E4(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::DeleteSpec(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = this + 24;
  (*(*this + 104))(this);
  sub_29A1DA6E4(v2);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::MoveSpec(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = this + 24;
  (*(*this + 112))(this);
  sub_29A1DA6E4(v3);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::PushChild(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v4 = this + 24;
  (*(*this + 120))(this);
  sub_29A1DA6E4(v4);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::PushChild(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v4 = this + 24;
  (*(*this + 128))(this);
  sub_29A1DA6E4(v4);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::PopChild(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v4 = this + 24;
  (*(*this + 136))(this);
  sub_29A1DA6E4(v4);
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::PopChild(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v4 = this + 24;
  (*(*this + 144))(this);
  sub_29A1DA6E4(v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::_SetLayer(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *a2;
  v3 = a1 + 24;
  sub_29B28FD1C((a1 + 32), (a2 + 8));
  v4 = *(*a1 + 40);

  return v4(a1, v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::_GetLayerData@<X0>(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this@<X0>, void *a2@<X8>)
{
  result = sub_29B293A0C(this + 24);
  if (v5 & 1 | result)
  {
    sub_29A1DA6E4(this + 24);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate::New@<X0>(void *a1@<X8>)
{
  result = operator new(0x30uLL);
  result[2] = 1;
  *(result + 3) = 0;
  *(result + 4) = 0;
  *(result + 2) = 0;
  *result = &unk_2A204BB58;
  *(result + 40) = 0;
  *a1 = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate::SdfSimpleLayerStateDelegate(uint64_t this)
{
  *(this + 8) = 1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *this = &unk_2A204BB58;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *this = &unk_2A204BB58;
  *(this + 40) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate::_OnSetField(uint64_t result)
{
  *(result + 40) = 1;
  return result;
}

{
  *(result + 40) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate::_OnSetFieldDictValueByKey(uint64_t result)
{
  *(result + 40) = 1;
  return result;
}

{
  *(result + 40) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate::_OnSetTimeSample(uint64_t result)
{
  *(result + 40) = 1;
  return result;
}

{
  *(result + 40) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate::_OnPushChild(uint64_t result)
{
  *(result + 40) = 1;
  return result;
}

{
  *(result + 40) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSimpleLayerStateDelegate::_OnPopChild(uint64_t result)
{
  *(result + 40) = 1;
  return result;
}

{
  *(result + 40) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayerTree::New@<X0>(void *a1@<X0>, uint64_t **a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  result = pxrInternal__aapl__pxrReserved__::SdfLayerTree::SdfLayerTree(v8, a1, a2, a3);
  *a4 = v8;
  return result;
}

uint64_t *sub_29A34BD9C(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29A34BE24(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A34BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A34BEDC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A34BE24(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      *a4 = *v6;
      sub_29B293C98(a4);
      ++v6;
      ++a4;
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29A34BE88(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = sub_29A34BEAC(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A34BEDC(void ***a1)
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
        v4 = sub_29A34BEAC(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29B293A0C(a1);
  if (!(v7 & 1 | v6))
  {
    v10.__r_.__value_.__r.__words[0] = "sdf/layerUtils.cpp";
    v10.__r_.__value_.__l.__size_ = "SdfComputeAssetPathRelativeToLayer";
    v10.__r_.__value_.__r.__words[2] = 70;
    v11 = "string pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(const SdfLayerHandle &, const string &)";
    LOBYTE(v12) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v10, 1, "Invalid anchor layer");
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v10.__r_.__value_.__r.__words[0] = "sdf/layerUtils.cpp";
    v10.__r_.__value_.__l.__size_ = "SdfComputeAssetPathRelativeToLayer";
    v10.__r_.__value_.__r.__words[2] = 75;
    v11 = "string pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(const SdfLayerHandle &, const string &)";
    LOBYTE(v12) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v10, 1, "Layer path is empty");
    goto LABEL_9;
  }

  pxrInternal__aapl__pxrReserved__::ArGetResolver(v6);
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = *&a2->__r_.__value_.__l.__data_;
    v16 = a2->__r_.__value_.__r.__words[2];
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a2, &__dst, v13))
  {
    v9 = HIBYTE(v16);
    if (v16 < 0)
    {
      v9 = *(&__dst + 1);
    }

    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IsPackageOrPackagedLayer(a1);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29A34C624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a10 && atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a10 + 8))(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_29A0D2850(&a32);
  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A34C774@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A34CA60(a2, a1);
  do
  {
    v4 = *(a2 + 47);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 32);
    }

    if (!v4)
    {
      break;
    }

    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(a2 + 24, __p, &v9);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = sub_29B299524(&v9);
    if (v6 & 1 | v5)
    {
      sub_29A1DA734(&v9);
    }

    result = sub_29B29BEF0(&v9, 0, &v10);
  }

  while ((result & 1) != 0);
  return result;
}

void sub_29A34C8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v20 = *(v18 - 24);
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v20 + 8))(v20);
    }
  }

  sub_29A0D2850(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_29A34C934(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

void sub_29A34C9AC(std::string *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfGetPathName(a1, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    pxrInternal__aapl__pxrReserved__::TfStringCatPaths(&__p.__r_.__value_.__l.__data_, a2, a3);
  }

  else if (*(a2 + 23) < 0)
  {
    sub_29A008D14(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
    a3[2] = *(a2 + 16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A34CA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A34CA60(char *__dst, __int128 *a2)
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

  return __dst;
}

void sub_29A34CAD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::CreateExplicit(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SdfListOp(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetExplicitItems(uint64_t a1, char **a2)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 8) != a2)
  {
    sub_29A36CF34((a1 + 8), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::Create(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetPrependedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 56) != a2)
  {
    sub_29A36CF34((a1 + 56), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetAppendedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 80) != a2)
  {
    sub_29A36CF34((a1 + 80), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetDeletedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 104) != a2)
  {
    sub_29A36CF34((a1 + 104), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_MakeUnique();
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<int>::Swap(char *result, char *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = *(result + 1);
  *(result + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(result + 13);
  *(result + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  v16 = *(result + 14);
  *(result + 14) = *(a2 + 14);
  *(a2 + 14) = v16;
  v17 = *(result + 15);
  *(result + 15) = *(a2 + 15);
  *(a2 + 15) = v17;
  v18 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v18;
  v19 = *(result + 17);
  *(result + 17) = *(a2 + 17);
  *(a2 + 17) = v19;
  v20 = *(result + 18);
  *(result + 18) = *(a2 + 18);
  *(a2 + 18) = v20;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::HasItem(uint64_t a1, _DWORD *a2)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v2 != v3)
    {
      while (*v2 != *a2)
      {
        if (++v2 == v3)
        {
          goto LABEL_5;
        }
      }
    }

    return v2 != v3;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    while (*v5 != *a2)
    {
      if (++v5 == v6)
      {
        goto LABEL_12;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_12:
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (v7 != v8)
    {
      while (*v7 != *a2)
      {
        if (++v7 == v8)
        {
          goto LABEL_17;
        }
      }
    }

    if (v7 == v8)
    {
LABEL_17:
      v9 = *(a1 + 80);
      v10 = *(a1 + 88);
      if (v9 != v10)
      {
        while (*v9 != *a2)
        {
          if (++v9 == v10)
          {
            goto LABEL_22;
          }
        }
      }

      if (v9 == v10)
      {
LABEL_22:
        v11 = *(a1 + 104);
        v12 = *(a1 + 112);
        if (v11 != v12)
        {
          while (*v11 != *a2)
          {
            if (++v11 == v12)
            {
              goto LABEL_28;
            }
          }
        }

        if (v11 == v12)
        {
LABEL_28:
          v2 = *(a1 + 128);
          v3 = *(a1 + 136);
          if (v2 != v3)
          {
            while (*v2 != *a2)
            {
              if (++v2 == v3)
              {
LABEL_5:
                v2 = v3;
                return v2 != v3;
              }
            }
          }

          return v2 != v3;
        }
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<int>::GetItems(SdfListOpType) const [T = int]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Got out-of-range type value: %d", a2);
    v3 = 8;
  }

  else
  {
    v3 = qword_29B48A438[a2];
  }

  return a1 + v3;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ApplyOperations();
}

void sub_29A34D308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B9EC(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ApplyOperations(void *result, int **a2, uint64_t a3)
{
  if (a2)
  {
    v7 = &v7;
    v8 = &v7;
    v9 = 0;
    if (*result == 1)
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_AddKeys();
    }

    if (*(a3 + 24) || ((result[8] - result[7]) >> 2) + ((result[11] - result[10]) >> 2) + ((result[5] - result[4]) >> 2) + ((result[14] - result[13]) >> 2) + ((result[17] - result[16]) >> 2))
    {
      sub_29A36BA6C(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = v8; i != &v7; i = i[1])
      {
        v10 = i + 2;
        sub_29A36BB6C(&v4, i + 4, &unk_29B4D6118, &v10)[5] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_DeleteKeys();
    }

    return sub_29A0EB800(&v7);
  }

  return result;
}

void sub_29A34D538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0EB800(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_SetExplicit(unsigned __int8 *result, int a2)
{
  if (*result != a2)
  {
    *result = a2;
    *(result + 2) = *(result + 1);
    *(result + 5) = *(result + 4);
    *(result + 8) = *(result + 7);
    *(result + 11) = *(result + 10);
    *(result + 14) = *(result + 13);
    *(result + 17) = *(result + 16);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_MakeUnique(uint64_t a1, int **a2, int a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v10 = (v8 - v7) >> 2;
  if (v10 >= 2)
  {
    if (v10 > 0xA)
    {
      goto LABEL_12;
    }

    if (v7 != (v8 - 4))
    {
      v13 = 1;
      v14 = v7;
      do
      {
        v15 = v14 + 1;
        if (v8 != v14 + 1)
        {
          v16 = *v14;
          v17 = v15;
          do
          {
            v18 = *v17++;
            v13 &= v16 != v18;
          }

          while (v17 != v8);
        }

        v14 = v15;
      }

      while (v15 != (v8 - 4));
      if ((v13 & 1) == 0)
      {
LABEL_12:
        if (v7 != v8)
        {
          v19 = v7 + 1;
          while (v19 != v8)
          {
            v20 = *(v19 - 1);
            v21 = *v19++;
            if (v20 >= v21)
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              sub_29A0BE2C8(&v43, v7, v8, v10);
              std::__sort<std::__less<int,int> &,int *>();
              v22 = v43;
              if (v43 != v44)
              {
                v23 = v43 + 1;
                while (v23 != v44)
                {
                  v24 = *(v23 - 1);
                  v25 = *v23++;
                  if (v24 == v25)
                  {
                    sub_29A36C79C(&v41, 0, 0.0, 0.5);
                    v38 = 0;
                    v39 = 0;
                    v40 = 0;
                    sub_29A0A6994(&v38, a2[1] - *a2);
                    if (a3)
                    {
                      v26 = a2[1];
                      while (v26 != *a2)
                      {
                        --v26;
                        sub_29A36C9B8(&v41, v26, v26);
                        if (v27)
                        {
                          sub_29A00D250(&v38, v26);
                        }
                      }

                      v30 = v39 - 4;
                      if (v38 != v39 && v30 > v38)
                      {
                        v32 = v38 + 4;
                        do
                        {
                          v33 = *(v32 - 1);
                          *(v32 - 1) = *v30;
                          *v30 = v33;
                          v30 -= 4;
                          v34 = v32 >= v30;
                          v32 += 4;
                        }

                        while (!v34);
                      }
                    }

                    else
                    {
                      for (i = *a2; i != a2[1]; ++i)
                      {
                        sub_29A36C9B8(&v41, i, i);
                        if (v29)
                        {
                          sub_29A00D250(&v38, i);
                        }
                      }
                    }

                    if (&v38 != a2)
                    {
                      sub_29A36CF34(a2, v38, v39, (v39 - v38) >> 2);
                    }

                    if (a4)
                    {
                      MEMORY[0x29C2C1A60](a4, "Duplicate item found in SdfListOp: %s.", __p);
                      sub_29A1F8E20(v23 - 2);
                      if (v37 < 0)
                      {
                        operator delete(__pa);
                      }
                    }

                    if (v38)
                    {
                      v39 = v38;
                      operator delete(v38);
                    }

                    v38 = &v42;
                    sub_29A36AEC0(&v38);
                    v11 = 0;
                    v22 = v43;
                    if (!v43)
                    {
                      return v11;
                    }

                    goto LABEL_48;
                  }
                }
              }

              v11 = 1;
              if (v43)
              {
LABEL_48:
                v44 = v22;
                operator delete(v22);
              }

              return v11;
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_29A34D844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 - 64);
  if (v17)
  {
    *(v15 - 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetDeletedItems();
    }
  }

  return 1;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetAddedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 32);
  if (result != a2)
  {
    return sub_29A36CF34(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetOrderedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 128);
  if (result != a2)
  {
    return sub_29A36CF34(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::Clear(uint64_t result)
{
  *result = 0;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ClearAndMakeExplicit(uint64_t result)
{
  *result = 1;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::GetItems();
}

{
    ;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v19 = result[13];
  v20 = v4;
  if (v19 != v4)
  {
    v8 = a4 + 1;
    do
    {
      v9 = *(a2 + 24);
      v10 = sub_29A1FB914(&v19, a2, a3);
      if (v9)
      {
        v21 = 2;
        v11 = sub_29A36C698(a2);
        if ((v11 & 0x100000000) == 0)
        {
          goto LABEL_21;
        }

        v12 = *v8;
        if (!*v8)
        {
          goto LABEL_21;
        }

        v13 = v8;
        do
        {
          if (*(v12 + 32) >= v11)
          {
            v13 = v12;
          }

          v12 = *(v12 + 8 * (*(v12 + 32) < v11));
        }

        while (v12);
        if (v13 == v8 || *(v13 + 8) > v11)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = *v8;
        if (!*v8)
        {
          goto LABEL_21;
        }

        v15 = *v10;
        v13 = v8;
        do
        {
          if (*(v14 + 32) >= v15)
          {
            v13 = v14;
          }

          v14 = *(v14 + 8 * (*(v14 + 32) < v15));
        }

        while (v14);
        if (v13 == v8 || v15 < *(v13 + 8))
        {
          goto LABEL_21;
        }
      }

      v16 = v13[5];
      v18 = *v16;
      v17 = v16[1];
      *(v18 + 8) = v17;
      *v17 = v18;
      --*(a3 + 16);
      operator delete(v16);
      sub_29A03AFE8(a4, v13);
      operator delete(v13);
LABEL_21:
      result = sub_29A1FB994(&v19);
    }

    while (v19 != v20);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_PrependKeys(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = *(result + 56);
  v6 = *(result + 64);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        --v6;
        LODWORD(v38) = 4;
        result = sub_29A36C698(a2);
        v10 = result;
        v36 = result;
        v37 = BYTE4(result);
        if ((result & 0x100000000) != 0)
        {
          v11 = *(a3 + 8);
          v12 = *v9;
          if (!*v9)
          {
            goto LABEL_12;
          }

          v13 = a4 + 1;
          do
          {
            if (*(v12 + 8) >= result)
            {
              v13 = v12;
            }

            v12 = v12[*(v12 + 8) < result];
          }

          while (v12);
          if (v13 != v9 && *(v13 + 8) <= result)
          {
            v16 = v13[5];
            if (v16 != v11)
            {
              v17 = v16[1];
              if (v16 != v17)
              {
                v18 = *v17;
                v19 = *(v18 + 8);
                v20 = *v16;
                *(v20 + 8) = v19;
                *v19 = v20;
                v21 = *v11;
                *(v21 + 8) = v16;
                *v16 = v21;
                *v11 = v18;
                *(v18 + 8) = v11;
              }
            }
          }

          else
          {
LABEL_12:
            v14 = operator new(0x18uLL);
            v14[4] = v10;
            v15 = *v11;
            *(v15 + 8) = v14;
            *v14 = v15;
            *v11 = v14;
            *(v14 + 1) = v11;
            ++*(a3 + 16);
            v38 = &v36;
            result = sub_29A36BB6C(a4, &v36, &unk_29B4D6118, &v38);
            *(result + 40) = v14;
          }
        }
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v22 = a4 + 1;
    do
    {
      v24 = *--v6;
      v23 = v24;
      v25 = *(a3 + 8);
      v26 = *v22;
      if (!*v22)
      {
        goto LABEL_27;
      }

      v27 = a4 + 1;
      do
      {
        if (*(v26 + 8) >= v23)
        {
          v27 = v26;
        }

        v26 = v26[*(v26 + 8) < v23];
      }

      while (v26);
      if (v27 != v22 && v23 >= *(v27 + 8))
      {
        v30 = v27[5];
        if (v30 != v25)
        {
          v31 = v30[1];
          if (v30 != v31)
          {
            v32 = *v31;
            v33 = *(v32 + 8);
            v34 = *v30;
            *(v34 + 8) = v33;
            *v33 = v34;
            v35 = *v25;
            *(v35 + 8) = v30;
            *v30 = v35;
            *v25 = v32;
            *(v32 + 8) = v25;
          }
        }
      }

      else
      {
LABEL_27:
        v28 = operator new(0x18uLL);
        v28[4] = v23;
        v29 = *v25;
        *(v29 + 8) = v28;
        *v28 = v29;
        *v25 = v28;
        *(v28 + 1) = v25;
        ++*(a3 + 16);
        v38 = v6;
        result = sub_29A36BB6C(a4, v6, &unk_29B4D6118, &v38);
        *(result + 40) = v28;
      }
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_AppendKeys(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v6 = *(result + 80);
  v7 = *(result + 88);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        LODWORD(v35) = 5;
        result = sub_29A36C698(a2);
        v10 = result;
        v33 = result;
        v34 = BYTE4(result);
        if ((result & 0x100000000) != 0)
        {
          v11 = *v9;
          if (!*v9)
          {
            goto LABEL_12;
          }

          v12 = a4 + 1;
          do
          {
            if (*(v11 + 8) >= result)
            {
              v12 = v11;
            }

            v11 = v11[*(v11 + 8) < result];
          }

          while (v11);
          if (v12 != v9 && *(v12 + 8) <= result)
          {
            v15 = v12[5];
            if (v15 != a3)
            {
              v16 = v15[1];
              if (v15 != v16)
              {
                v17 = *v16;
                v18 = *(v17 + 8);
                v19 = *v15;
                *(v19 + 8) = v18;
                *v18 = v19;
                v20 = *a3;
                *(v20 + 8) = v15;
                *v15 = v20;
                *a3 = v17;
                *(v17 + 8) = a3;
              }
            }
          }

          else
          {
LABEL_12:
            v13 = operator new(0x18uLL);
            v13[4] = v10;
            v14 = *a3;
            *(v14 + 8) = v13;
            *a3 = v13;
            *v13 = v14;
            *(v13 + 1) = a3;
            ++a3[2];
            v35 = &v33;
            result = sub_29A36BB6C(a4, &v33, &unk_29B4D6118, &v35);
            *(result + 40) = v13;
          }
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v21 = a4 + 1;
    do
    {
      v22 = *v21;
      v23 = *v6;
      if (!*v21)
      {
        goto LABEL_27;
      }

      v24 = a4 + 1;
      do
      {
        if (*(v22 + 8) >= v23)
        {
          v24 = v22;
        }

        v22 = v22[*(v22 + 8) < v23];
      }

      while (v22);
      if (v24 != v21 && v23 >= *(v24 + 8))
      {
        v27 = v24[5];
        if (v27 != a3)
        {
          v28 = v27[1];
          if (v27 != v28)
          {
            v29 = *v28;
            v30 = *(v29 + 8);
            v31 = *v27;
            *(v31 + 8) = v30;
            *v30 = v31;
            v32 = *a3;
            *(v32 + 8) = v27;
            *v27 = v32;
            *a3 = v29;
            *(v29 + 8) = a3;
          }
        }
      }

      else
      {
LABEL_27:
        v25 = operator new(0x18uLL);
        v25[4] = v23;
        v26 = *a3;
        *(v26 + 8) = v25;
        *a3 = v25;
        *v25 = v26;
        *(v25 + 1) = a3;
        ++a3[2];
        v35 = v6;
        result = sub_29A36BB6C(a4, v6, &unk_29B4D6118, &v35);
        *(result + 40) = v25;
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_ReorderKeys(uint64_t a1)
{
  memset(__p, 0, sizeof(__p));
  sub_29A0BE2C8(__p, *(a1 + 128), *(a1 + 136), (*(a1 + 136) - *(a1 + 128)) >> 2);
  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_ReorderKeysHelper();
}

void sub_29A34E2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result;
  v41 = *MEMORY[0x29EDCA608];
  if (*result == 1)
  {
    result = sub_29A27D630(a3, result);
    a3[152] = 1;
  }

  else
  {
    if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
    {
      if (*a2 == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A0BE2C8(&v28, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
        v33[0] = 0;
        pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ApplyOperations();
      }

      if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A0BE2C8(&v28, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
        __dst = 0;
        v26 = 0;
        v27 = 0;
        sub_29A0BE2C8(&__dst, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_29A0BE2C8(&v22, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
        v6 = v3[13];
        v7 = v3[14];
        while (1)
        {
          if (v6 == v7)
          {
            v11 = v3[7];
            v12 = v3[8];
            if (v11 != v12)
            {
              do
              {
                v13 = sub_29A34E954(v28, v29, v11);
                if (v13 != v29)
                {
                  v29 = v13;
                }

                v14 = sub_29A34E954(__dst, v26, v11);
                if (v14 != v26)
                {
                  v26 = v14;
                }

                v15 = sub_29A34E954(v22, v23, v11);
                if (v15 != v23)
                {
                  v23 = v15;
                }

                v11 += 4;
              }

              while (v11 != v12);
              v11 = v3[7];
              v12 = v3[8];
            }

            sub_29A36BEB4(&__dst, __dst, v11, v12, (v12 - v11) >> 2);
            v16 = v3[10];
            v17 = v3[11];
            if (v16 == v17)
            {
              v21 = v23;
            }

            else
            {
              do
              {
                v18 = sub_29A34E954(v28, v29, v16);
                if (v18 != v29)
                {
                  v29 = v18;
                }

                v19 = sub_29A34E954(__dst, v26, v16);
                if (v19 != v26)
                {
                  v26 = v19;
                }

                v20 = sub_29A34E954(v22, v23, v16);
                v21 = v23;
                if (v20 != v23)
                {
                  v21 = v20;
                  v23 = v20;
                }

                v16 += 4;
              }

              while (v16 != v17);
              v16 = v3[10];
              v17 = v3[11];
            }

            sub_29A36BEB4(&v22, v21, v16, v17, (v17 - v16) >> 2);
            v31 = 0;
            *v32 = 0u;
            *v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetDeletedItems();
          }

          v8 = sub_29A34E954(__dst, v26, v6);
          if (v8 != v26)
          {
            v26 = v8;
          }

          v9 = sub_29A34E954(v22, v23, v6);
          if (v9 != v23)
          {
            v23 = v9;
          }

          v10 = v28;
          if (v28 != v29)
          {
            while (*v10 != *v6)
            {
              if (++v10 == v29)
              {
                goto LABEL_21;
              }
            }
          }

          if (v10 == v29)
          {
LABEL_21:
            sub_29A00D250(&v28, v6);
          }

          ++v6;
        }
      }
    }

    *a3 = 0;
    a3[152] = 0;
  }

  return result;
}

void sub_29A34E898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A34E954(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != *a3)
    {
      if (++result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 1; i != a2; ++i)
      {
        if (*i != *a3)
        {
          *result++ = *i;
        }
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ModifyOperations(int **a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A34EA64(a2, a1 + 1);
  v5 = v4 | sub_29A34EA64(a2, a1 + 4);
  v6 = sub_29A34EA64(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A34EA64(a2, a1 + 10);
  v8 = sub_29A34EA64(a2, a1 + 13);
  return v7 | v8 | sub_29A34EA64(a2, a1 + 16);
}

uint64_t sub_29A34EA64(uint64_t a1, int **a2)
{
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  sub_29A0A6994(v19, a2[1] - *a2);
  *__p = 0u;
  v18 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_16;
  }

  v6 = 0;
  do
  {
    v7 = sub_29A36C1A4(a1);
    v15 = v7;
    v16 = BYTE4(v7);
    if ((v7 & 0x100000000) != 0)
    {
      sub_29A36C0B4(__p, &v15);
      if ((v8 & 1) == 0 && (v16 & 1) != 0 || (v16 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_12;
    }

    if (v15 == *v4)
    {
      sub_29A00D250(v19, v4);
      goto LABEL_13;
    }

    sub_29A00D250(v19, &v15);
LABEL_12:
    v6 = 1;
LABEL_13:
    ++v4;
  }

  while (v4 != v5);
  if (v6)
  {
    v9 = *a2;
    *a2 = *v19;
    *v19 = v9;
    v10 = a2[2];
    a2[2] = v20;
    v20 = v10;
    v11 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v11 = 0;
LABEL_17:
  v12 = *(&v18 + 1);
  *(&v18 + 1) = 0;
  if (v12)
  {
    v13 = sub_29A0EB570(v12);
    operator delete(v13);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  return v11;
}

void sub_29A34EBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<int>::GetItems();
  }

  return 0;
}

void sub_29A34EDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<int>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::SetExplicitItems();
}

void sub_29A34F0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_29A36B9EC(&__p);
  sub_29A082B84(&a9, a10);
  sub_29A0EB800(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<int>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1 + 1;
  v4 = a1[1];
  v6 = v5[1] - v4;
  v8 = a2 + 1;
  v7 = a2[1];
  if (v6 != v8[1] - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a1[5] - v9;
  v11 = a2[4];
  if (v10 != a2[5] - v11)
  {
    return 0;
  }

  if (memcmp(v9, v11, v10))
  {
    return 0;
  }

  v12 = a1[7];
  v13 = a1[8] - v12;
  v14 = a2[7];
  if (v13 != a2[8] - v14)
  {
    return 0;
  }

  if (memcmp(v12, v14, v13))
  {
    return 0;
  }

  v15 = a1[10];
  v16 = a1[11] - v15;
  v17 = a2[10];
  if (v16 != a2[11] - v17)
  {
    return 0;
  }

  if (memcmp(v15, v17, v16))
  {
    return 0;
  }

  v18 = a1[13];
  v19 = a1[14] - v18;
  v20 = a2[13];
  if (v19 != a2[14] - v20 || memcmp(v18, v20, v19))
  {
    return 0;
  }

  return sub_29A34F204((a1 + 16), (a2 + 16));
}

BOOL sub_29A34F204(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<int>::_ReorderKeysHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v39 = 0;
  v40 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v7 = a1[1];
  *&v34 = *a1;
  *(&v34 + 1) = v7;
  while (v34 != *(&v34 + 1))
  {
    if (*(a2 + 24))
    {
      sub_29A34F514(&v34, a2, a3);
      v41 = 3;
      v8 = sub_29A36C698(a2);
      LODWORD(v32) = v8;
      BYTE4(v32) = BYTE4(v8);
      if ((v8 & 0x100000000) != 0)
      {
        sub_29A36C6E0(&v36, &v32, &v32);
        if (v9)
        {
          sub_29A00D250(&__p, &v32);
        }
      }
    }

    else
    {
      v10 = sub_29A34F514(&v34, a2, a3);
      sub_29A36C6E0(&v36, v10, v10);
      if (v11)
      {
        v13 = sub_29A34F514(&v34, v11, v12);
        sub_29A00D250(&__p, v13);
      }
    }

    sub_29A34F594(&v34);
  }

  if (__p != v39)
  {
    *&v34 = &v34;
    *(&v34 + 1) = &v34;
    v35 = 0;
    sub_29A1180F8(&v34, a3);
    v32 = __p;
    v33 = v39;
    v16 = (a4 + 8);
    while (v32 != v33)
    {
      v17 = sub_29A34F514(&v32, v14, v15);
      v18 = *v16;
      if (*v16)
      {
        v19 = *v17;
        v20 = v16;
        do
        {
          if (*(v18 + 32) >= v19)
          {
            v20 = v18;
          }

          v18 = *(v18 + 8 * (*(v18 + 32) < v19));
        }

        while (v18);
        if (v20 != v16 && v19 >= *(v20 + 8))
        {
          v21 = v20[5];
          v22 = &v34;
          if (v21[1] != &v34)
          {
            v22 = v21[1];
            do
            {
              if (v37[0])
              {
                v23 = *(v22 + 4);
                v24 = v37[0];
                do
                {
                  v25 = *(v24 + 7);
                  if (v23 >= v25)
                  {
                    if (v25 >= v23)
                    {
                      goto LABEL_30;
                    }

                    ++v24;
                  }

                  v24 = *v24;
                }

                while (v24);
              }

              v22 = *(v22 + 1);
            }

            while (v22 != &v34);
            v22 = &v34;
          }

LABEL_30:
          if (!v35)
          {
            goto LABEL_35;
          }

          sub_29A117E88(a3, a3, &v34, v21, v22);
        }
      }

      sub_29A34F594(&v32);
    }

    v26 = v35;
    if (v35)
    {
      v27 = *(a3 + 8);
      v28 = v34;
      v29 = *(v34 + 8);
      v30 = **(&v34 + 1);
      *(v30 + 8) = v29;
      *v29 = v30;
      v31 = *v27;
      *(v31 + 8) = *(&v28 + 1);
      **(&v28 + 1) = v31;
      *v27 = v28;
      *(v28 + 8) = v27;
      *(a3 + 16) += v26;
      v35 = 0;
    }

LABEL_35:
    sub_29A0EB800(&v34);
  }

  sub_29A082B84(&v36, v37[0]);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }
}

void sub_29A34F4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_29A0EB800(&a11);
  sub_29A082B84(&a14, a15);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A34F514(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<int>>::operator*() [T = std::vector<int>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A34F594(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<int>>::operator++() [T = std::vector<int>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<int>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20472C8, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = int]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!listOpAliases.empty()", 0);
    v7 = v18[0];
  }

  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  v11 = sub_29A00911C(a1, v9, v10);
  sub_29A00911C(v11, "(", 1);
  v13 = 1;
  if (*a2 == 1)
  {
    sub_29A008E78(__p, "Explicit");
    sub_29A36CD8C(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A36CD8C(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A36CD8C(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A36CD8C(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A36CD8C(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A36CD8C(a1, __p, (a2 + 128), &v13, 0);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A00911C(a1, ")", 1);
  __p[0] = v18;
  sub_29A012C90(__p);
  return a1;
}

void sub_29A34F86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::CreateExplicit(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SdfListOp(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetExplicitItems(uint64_t a1, char **a2)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 8) != a2)
  {
    sub_29A36CF34((a1 + 8), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::Create(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetPrependedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 56) != a2)
  {
    sub_29A36CF34((a1 + 56), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetAppendedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 80) != a2)
  {
    sub_29A36CF34((a1 + 80), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetDeletedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 104) != a2)
  {
    sub_29A36CF34((a1 + 104), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_MakeUnique();
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::Swap(char *result, char *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = *(result + 1);
  *(result + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(result + 13);
  *(result + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  v16 = *(result + 14);
  *(result + 14) = *(a2 + 14);
  *(a2 + 14) = v16;
  v17 = *(result + 15);
  *(result + 15) = *(a2 + 15);
  *(a2 + 15) = v17;
  v18 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v18;
  v19 = *(result + 17);
  *(result + 17) = *(a2 + 17);
  *(a2 + 17) = v19;
  v20 = *(result + 18);
  *(result + 18) = *(a2 + 18);
  *(a2 + 18) = v20;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::HasItem(uint64_t a1, _DWORD *a2)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v2 != v3)
    {
      while (*v2 != *a2)
      {
        if (++v2 == v3)
        {
          goto LABEL_5;
        }
      }
    }

    return v2 != v3;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    while (*v5 != *a2)
    {
      if (++v5 == v6)
      {
        goto LABEL_12;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_12:
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (v7 != v8)
    {
      while (*v7 != *a2)
      {
        if (++v7 == v8)
        {
          goto LABEL_17;
        }
      }
    }

    if (v7 == v8)
    {
LABEL_17:
      v9 = *(a1 + 80);
      v10 = *(a1 + 88);
      if (v9 != v10)
      {
        while (*v9 != *a2)
        {
          if (++v9 == v10)
          {
            goto LABEL_22;
          }
        }
      }

      if (v9 == v10)
      {
LABEL_22:
        v11 = *(a1 + 104);
        v12 = *(a1 + 112);
        if (v11 != v12)
        {
          while (*v11 != *a2)
          {
            if (++v11 == v12)
            {
              goto LABEL_28;
            }
          }
        }

        if (v11 == v12)
        {
LABEL_28:
          v2 = *(a1 + 128);
          v3 = *(a1 + 136);
          if (v2 != v3)
          {
            while (*v2 != *a2)
            {
              if (++v2 == v3)
              {
LABEL_5:
                v2 = v3;
                return v2 != v3;
              }
            }
          }

          return v2 != v3;
        }
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::GetItems(SdfListOpType) const [T = unsigned int]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Got out-of-range type value: %d", a2);
    v3 = 8;
  }

  else
  {
    v3 = qword_29B48A438[a2];
  }

  return a1 + v3;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::ApplyOperations();
}

void sub_29A3500E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36CEB4(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::ApplyOperations(void *result, int **a2, uint64_t a3)
{
  if (a2)
  {
    v7 = &v7;
    v8 = &v7;
    v9 = 0;
    if (*result == 1)
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_AddKeys();
    }

    if (*(a3 + 24) || ((result[8] - result[7]) >> 2) + ((result[11] - result[10]) >> 2) + ((result[5] - result[4]) >> 2) + ((result[14] - result[13]) >> 2) + ((result[17] - result[16]) >> 2))
    {
      sub_29A36BA6C(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = v8; i != &v7; i = i[1])
      {
        v10 = i + 2;
        sub_29A36D060(&v4, i + 4, &unk_29B4D6118, &v10)[5] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_DeleteKeys();
    }

    return sub_29A0EB800(&v7);
  }

  return result;
}

void sub_29A350318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0EB800(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_SetExplicit(unsigned __int8 *result, int a2)
{
  if (*result != a2)
  {
    *result = a2;
    *(result + 2) = *(result + 1);
    *(result + 5) = *(result + 4);
    *(result + 8) = *(result + 7);
    *(result + 11) = *(result + 10);
    *(result + 14) = *(result + 13);
    *(result + 17) = *(result + 16);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_MakeUnique(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = v3 - v2;
  if (v5 >= 2)
  {
    if (v5 > 0xA)
    {
      goto LABEL_11;
    }

    if (v2 != v3 - 1)
    {
      v7 = 1;
      v8 = v2;
      do
      {
        v9 = v8 + 1;
        if (v3 != (v8 + 1))
        {
          v10 = *v8;
          v11 = v9;
          do
          {
            v12 = *v11++;
            v7 &= v10 != v12;
          }

          while (v11 != v3);
        }

        v8 = v9;
      }

      while (v9 != (v3 - 1));
      if ((v7 & 1) == 0)
      {
LABEL_11:
        if (v2 != v3)
        {
          for (i = v2 + 1; i != v3; ++i)
          {
            v14 = *(i - 1);
            v15 = *i;
            if (v14 >= v15)
            {
              std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>();
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_29A350624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 - 64);
  if (v17)
  {
    *(v15 - 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetDeletedItems();
    }
  }

  return 1;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetAddedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 32);
  if (result != a2)
  {
    return sub_29A36CF34(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetOrderedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 128);
  if (result != a2)
  {
    return sub_29A36CF34(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::Clear(uint64_t result)
{
  *result = 0;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::ClearAndMakeExplicit(uint64_t result)
{
  *result = 1;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::GetItems();
}

{
    ;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v24 = result[13];
  v25 = v4;
  if (v24 != v4)
  {
    v8 = a4 + 1;
    do
    {
      v9 = *(a2 + 24);
      v10 = sub_29A1FC25C(&v24, a2, a3);
      if (v9)
      {
        v26 = 2;
        v11 = sub_29A36D930(a2);
        if ((v11 & 0x100000000) == 0)
        {
          goto LABEL_23;
        }

        v12 = *v8;
        if (!*v8)
        {
          goto LABEL_23;
        }

        v13 = v8;
        do
        {
          v14 = *(v12 + 32);
          v15 = v14 >= v11;
          v16 = v14 < v11;
          if (v15)
          {
            v13 = v12;
          }

          v12 = *(v12 + 8 * v16);
        }

        while (v12);
        if (v13 == v8 || *(v13 + 8) > v11)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v17 = *v8;
        if (!*v8)
        {
          goto LABEL_23;
        }

        v18 = *v10;
        v13 = v8;
        do
        {
          v19 = *(v17 + 32);
          v15 = v19 >= v18;
          v20 = v19 < v18;
          if (v15)
          {
            v13 = v17;
          }

          v17 = *(v17 + 8 * v20);
        }

        while (v17);
        if (v13 == v8 || v18 < *(v13 + 8))
        {
          goto LABEL_23;
        }
      }

      v21 = v13[5];
      v23 = *v21;
      v22 = v21[1];
      *(v23 + 8) = v22;
      *v22 = v23;
      --*(a3 + 16);
      operator delete(v21);
      sub_29A03AFE8(a4, v13);
      operator delete(v13);
LABEL_23:
      result = sub_29A1FC2DC(&v24);
    }

    while (v24 != v25);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_PrependKeys(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = *(result + 56);
  v6 = *(result + 64);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        --v6;
        LODWORD(v43) = 4;
        result = sub_29A36D930(a2);
        v10 = result;
        v41 = result;
        v42 = BYTE4(result);
        if ((result & 0x100000000) != 0)
        {
          v11 = *(a3 + 8);
          v12 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v13 = a4 + 1;
          do
          {
            v14 = *(v12 + 8);
            v15 = v14 >= result;
            v16 = v14 < result;
            if (v15)
            {
              v13 = v12;
            }

            v12 = v12[v16];
          }

          while (v12);
          if (v13 != v9 && *(v13 + 8) <= result)
          {
            v19 = v13[5];
            if (v19 != v11)
            {
              v20 = v19[1];
              if (v19 != v20)
              {
                v21 = *v20;
                v22 = *(v21 + 8);
                v23 = *v19;
                *(v23 + 8) = v22;
                *v22 = v23;
                v24 = *v11;
                *(v24 + 8) = v19;
                *v19 = v24;
                *v11 = v21;
                *(v21 + 8) = v11;
              }
            }
          }

          else
          {
LABEL_13:
            v17 = operator new(0x18uLL);
            v17[4] = v10;
            v18 = *v11;
            *(v18 + 8) = v17;
            *v17 = v18;
            *v11 = v17;
            *(v17 + 1) = v11;
            ++*(a3 + 16);
            v43 = &v41;
            result = sub_29A36D060(a4, &v41, &unk_29B4D6118, &v43);
            *(result + 40) = v17;
          }
        }
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v25 = a4 + 1;
    do
    {
      v27 = *--v6;
      v26 = v27;
      v28 = *(a3 + 8);
      v29 = *v25;
      if (!*v25)
      {
        goto LABEL_29;
      }

      v30 = a4 + 1;
      do
      {
        v31 = *(v29 + 8);
        v15 = v31 >= v26;
        v32 = v31 < v26;
        if (v15)
        {
          v30 = v29;
        }

        v29 = v29[v32];
      }

      while (v29);
      if (v30 != v25 && v26 >= *(v30 + 8))
      {
        v35 = v30[5];
        if (v35 != v28)
        {
          v36 = v35[1];
          if (v35 != v36)
          {
            v37 = *v36;
            v38 = *(v37 + 8);
            v39 = *v35;
            *(v39 + 8) = v38;
            *v38 = v39;
            v40 = *v28;
            *(v40 + 8) = v35;
            *v35 = v40;
            *v28 = v37;
            *(v37 + 8) = v28;
          }
        }
      }

      else
      {
LABEL_29:
        v33 = operator new(0x18uLL);
        v33[4] = v26;
        v34 = *v28;
        *(v34 + 8) = v33;
        *v33 = v34;
        *v28 = v33;
        *(v33 + 1) = v28;
        ++*(a3 + 16);
        v43 = v6;
        result = sub_29A36D060(a4, v6, &unk_29B4D6118, &v43);
        *(result + 40) = v33;
      }
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_AppendKeys(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v6 = *(result + 80);
  v7 = *(result + 88);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        LODWORD(v40) = 5;
        result = sub_29A36D930(a2);
        v10 = result;
        v38 = result;
        v39 = BYTE4(result);
        if ((result & 0x100000000) != 0)
        {
          v11 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v12 = a4 + 1;
          do
          {
            v13 = *(v11 + 8);
            v14 = v13 >= result;
            v15 = v13 < result;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 != v9 && *(v12 + 8) <= result)
          {
            v18 = v12[5];
            if (v18 != a3)
            {
              v19 = v18[1];
              if (v18 != v19)
              {
                v20 = *v19;
                v21 = *(v20 + 8);
                v22 = *v18;
                *(v22 + 8) = v21;
                *v21 = v22;
                v23 = *a3;
                *(v23 + 8) = v18;
                *v18 = v23;
                *a3 = v20;
                *(v20 + 8) = a3;
              }
            }
          }

          else
          {
LABEL_13:
            v16 = operator new(0x18uLL);
            v16[4] = v10;
            v17 = *a3;
            *(v17 + 8) = v16;
            *a3 = v16;
            *v16 = v17;
            *(v16 + 1) = a3;
            ++a3[2];
            v40 = &v38;
            result = sub_29A36D060(a4, &v38, &unk_29B4D6118, &v40);
            *(result + 40) = v16;
          }
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v24 = a4 + 1;
    do
    {
      v25 = *v24;
      v26 = *v6;
      if (!*v24)
      {
        goto LABEL_29;
      }

      v27 = a4 + 1;
      do
      {
        v28 = *(v25 + 8);
        v14 = v28 >= v26;
        v29 = v28 < v26;
        if (v14)
        {
          v27 = v25;
        }

        v25 = v25[v29];
      }

      while (v25);
      if (v27 != v24 && v26 >= *(v27 + 8))
      {
        v32 = v27[5];
        if (v32 != a3)
        {
          v33 = v32[1];
          if (v32 != v33)
          {
            v34 = *v33;
            v35 = *(v34 + 8);
            v36 = *v32;
            *(v36 + 8) = v35;
            *v35 = v36;
            v37 = *a3;
            *(v37 + 8) = v32;
            *v32 = v37;
            *a3 = v34;
            *(v34 + 8) = a3;
          }
        }
      }

      else
      {
LABEL_29:
        v30 = operator new(0x18uLL);
        v30[4] = v26;
        v31 = *a3;
        *(v31 + 8) = v30;
        *a3 = v30;
        *v30 = v31;
        *(v30 + 1) = a3;
        ++a3[2];
        v40 = v6;
        result = sub_29A36D060(a4, v6, &unk_29B4D6118, &v40);
        *(result + 40) = v30;
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_ReorderKeys()
{
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>();
}

{
    ;
  }
}

void sub_29A3510D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*result == 1)
  {
    sub_29A27F35C(a3, result);
  }

  if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
  {
    if (*a2 == 1)
    {
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>();
    }

    if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
    {
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>();
    }
  }

  *a3 = 0;
  a3[152] = 0;
  return result;
}

void sub_29A351678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::ModifyOperations(int **a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A3517DC(a2, a1 + 1);
  v5 = v4 | sub_29A3517DC(a2, a1 + 4);
  v6 = sub_29A3517DC(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A3517DC(a2, a1 + 10);
  v8 = sub_29A3517DC(a2, a1 + 13);
  return v7 | v8 | sub_29A3517DC(a2, a1 + 16);
}

uint64_t sub_29A3517DC(uint64_t a1, int **a2)
{
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  sub_29A0A6994(v19, a2[1] - *a2);
  *__p = 0u;
  v18 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_16;
  }

  v6 = 0;
  do
  {
    v7 = sub_29A36D1D4(a1);
    v15 = v7;
    v16 = BYTE4(v7);
    if ((v7 & 0x100000000) != 0)
    {
      sub_29A36D124(__p, &v15);
      if ((v8 & 1) == 0 && (v16 & 1) != 0 || (v16 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_12;
    }

    if (v15 == *v4)
    {
      sub_29A00D250(v19, v4);
      goto LABEL_13;
    }

    sub_29A00D250(v19, &v15);
LABEL_12:
    v6 = 1;
LABEL_13:
    ++v4;
  }

  while (v4 != v5);
  if (v6)
  {
    v9 = *a2;
    *a2 = *v19;
    *v19 = v9;
    v10 = a2[2];
    a2[2] = v20;
    v20 = v10;
    v11 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v11 = 0;
LABEL_17:
  v12 = *(&v18 + 1);
  *(&v18 + 1) = 0;
  if (v12)
  {
    v13 = sub_29A0EB570(v12);
    operator delete(v13);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  return v11;
}

void sub_29A351934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::GetItems();
  }

  return 0;
}

void sub_29A351B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::SetExplicitItems();
}

void sub_29A351E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_29A36CEB4(&__p);
  sub_29A082B84(&a9, a10);
  sub_29A0EB800(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1 + 1;
  v4 = a1[1];
  v6 = v5[1] - v4;
  v8 = a2 + 1;
  v7 = a2[1];
  if (v6 != v8[1] - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a1[5] - v9;
  v11 = a2[4];
  if (v10 != a2[5] - v11)
  {
    return 0;
  }

  if (memcmp(v9, v11, v10))
  {
    return 0;
  }

  v12 = a1[7];
  v13 = a1[8] - v12;
  v14 = a2[7];
  if (v13 != a2[8] - v14)
  {
    return 0;
  }

  if (memcmp(v12, v14, v13))
  {
    return 0;
  }

  v15 = a1[10];
  v16 = a1[11] - v15;
  v17 = a2[10];
  if (v16 != a2[11] - v17)
  {
    return 0;
  }

  if (memcmp(v15, v17, v16))
  {
    return 0;
  }

  v18 = a1[13];
  v19 = a1[14] - v18;
  v20 = a2[13];
  if (v19 != a2[14] - v20 || memcmp(v18, v20, v19))
  {
    return 0;
  }

  return sub_29A34F204((a1 + 16), (a2 + 16));
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>::_ReorderKeysHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v42 = 0;
  v43 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v7 = a1[1];
  *&v37 = *a1;
  *(&v37 + 1) = v7;
  while (v37 != *(&v37 + 1))
  {
    if (*(a2 + 24))
    {
      sub_29A352248(&v37, a2, a3);
      v44 = 3;
      v8 = sub_29A36D930(a2);
      LODWORD(v35) = v8;
      BYTE4(v35) = BYTE4(v8);
      if ((v8 & 0x100000000) != 0)
      {
        sub_29A089628(&v39, &v35, &v35);
        if (v9)
        {
          sub_29A00D250(&__p, &v35);
        }
      }
    }

    else
    {
      v10 = sub_29A352248(&v37, a2, a3);
      sub_29A089628(&v39, v10, v10);
      if (v11)
      {
        v13 = sub_29A352248(&v37, v11, v12);
        sub_29A00D250(&__p, v13);
      }
    }

    sub_29A3522C8(&v37);
  }

  if (__p != v42)
  {
    *&v37 = &v37;
    *(&v37 + 1) = &v37;
    v38 = 0;
    sub_29A1180F8(&v37, a3);
    v35 = __p;
    v36 = v42;
    v16 = (a4 + 8);
    while (v35 != v36)
    {
      v17 = sub_29A352248(&v35, v14, v15);
      v18 = *v16;
      if (*v16)
      {
        v19 = *v17;
        v20 = v16;
        do
        {
          v21 = *(v18 + 32);
          v22 = v21 >= v19;
          v23 = v21 < v19;
          if (v22)
          {
            v20 = v18;
          }

          v18 = *(v18 + 8 * v23);
        }

        while (v18);
        if (v20 != v16 && v19 >= *(v20 + 8))
        {
          v24 = v20[5];
          v25 = &v37;
          if (v24[1] != &v37)
          {
            v25 = v24[1];
            do
            {
              if (v40[0])
              {
                v26 = *(v25 + 4);
                v27 = v40[0];
                do
                {
                  v28 = *(v27 + 7);
                  if (v26 >= v28)
                  {
                    if (v28 >= v26)
                    {
                      goto LABEL_31;
                    }

                    ++v27;
                  }

                  v27 = *v27;
                }

                while (v27);
              }

              v25 = *(v25 + 1);
            }

            while (v25 != &v37);
            v25 = &v37;
          }

LABEL_31:
          if (!v38)
          {
            goto LABEL_36;
          }

          sub_29A117E88(a3, a3, &v37, v24, v25);
        }
      }

      sub_29A3522C8(&v35);
    }

    v29 = v38;
    if (v38)
    {
      v30 = *(a3 + 8);
      v31 = v37;
      v32 = *(v37 + 8);
      v33 = **(&v37 + 1);
      *(v33 + 8) = v32;
      *v32 = v33;
      v34 = *v30;
      *(v34 + 8) = *(&v31 + 1);
      **(&v31 + 1) = v34;
      *v30 = v31;
      *(v31 + 8) = v30;
      *(a3 + 16) += v29;
      v38 = 0;
    }

LABEL_36:
    sub_29A0EB800(&v37);
  }

  sub_29A082B84(&v39, v40[0]);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_29A3521FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_29A0EB800(&a11);
  sub_29A082B84(&a14, a15);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A352248(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<unsigned int>>::operator*() [T = std::vector<unsigned int>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A3522C8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<unsigned int>>::operator++() [T = std::vector<unsigned int>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<unsigned int>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20472E8, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = unsigned int]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!listOpAliases.empty()", 0);
    v7 = v18[0];
  }

  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  v11 = sub_29A00911C(a1, v9, v10);
  sub_29A00911C(v11, "(", 1);
  v13 = 1;
  if (*a2 == 1)
  {
    sub_29A008E78(__p, "Explicit");
    sub_29A36DEC0(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A36DEC0(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A36DEC0(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A36DEC0(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A36DEC0(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A36DEC0(a1, __p, (a2 + 128), &v13, 0);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A00911C(a1, ")", 1);
  __p[0] = v18;
  sub_29A012C90(__p);
  return a1;
}

void sub_29A3525A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::CreateExplicit(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SdfListOp(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetExplicitItems(uint64_t a1, char **a2)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 8) != a2)
  {
    sub_29A00CB24((a1 + 8), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::Create(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetPrependedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 56) != a2)
  {
    sub_29A00CB24((a1 + 56), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetAppendedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 80) != a2)
  {
    sub_29A00CB24((a1 + 80), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetDeletedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 104) != a2)
  {
    sub_29A00CB24((a1 + 104), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_MakeUnique();
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::Swap(char *result, char *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = *(result + 1);
  *(result + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(result + 13);
  *(result + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  v16 = *(result + 14);
  *(result + 14) = *(a2 + 14);
  *(a2 + 14) = v16;
  v17 = *(result + 15);
  *(result + 15) = *(a2 + 15);
  *(a2 + 15) = v17;
  v18 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v18;
  v19 = *(result + 17);
  *(result + 17) = *(a2 + 17);
  *(a2 + 17) = v19;
  v20 = *(result + 18);
  *(result + 18) = *(a2 + 18);
  *(a2 + 18) = v20;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::HasItem(uint64_t a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v2 != v3)
    {
      while (*v2 != *a2)
      {
        if (++v2 == v3)
        {
          goto LABEL_5;
        }
      }
    }

    return v2 != v3;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    while (*v5 != *a2)
    {
      if (++v5 == v6)
      {
        goto LABEL_12;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_12:
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (v7 != v8)
    {
      while (*v7 != *a2)
      {
        if (++v7 == v8)
        {
          goto LABEL_17;
        }
      }
    }

    if (v7 == v8)
    {
LABEL_17:
      v9 = *(a1 + 80);
      v10 = *(a1 + 88);
      if (v9 != v10)
      {
        while (*v9 != *a2)
        {
          if (++v9 == v10)
          {
            goto LABEL_22;
          }
        }
      }

      if (v9 == v10)
      {
LABEL_22:
        v11 = *(a1 + 104);
        v12 = *(a1 + 112);
        if (v11 != v12)
        {
          while (*v11 != *a2)
          {
            if (++v11 == v12)
            {
              goto LABEL_28;
            }
          }
        }

        if (v11 == v12)
        {
LABEL_28:
          v2 = *(a1 + 128);
          v3 = *(a1 + 136);
          if (v2 != v3)
          {
            while (*v2 != *a2)
            {
              if (++v2 == v3)
              {
LABEL_5:
                v2 = v3;
                return v2 != v3;
              }
            }
          }

          return v2 != v3;
        }
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::GetItems(SdfListOpType) const [T = long long]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Got out-of-range type value: %d", a2);
    v3 = 8;
  }

  else
  {
    v3 = qword_29B48A438[a2];
  }

  return a1 + v3;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ApplyOperations();
}

void sub_29A352E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36DFE8(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ApplyOperations(void *result, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    v7 = &v7;
    v8 = &v7;
    v9 = 0;
    if (*result == 1)
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_AddKeys();
    }

    if (*(a3 + 24) || ((result[8] - result[7]) >> 3) + ((result[11] - result[10]) >> 3) + ((result[5] - result[4]) >> 3) + ((result[14] - result[13]) >> 3) + ((result[17] - result[16]) >> 3))
    {
      sub_29A36E068(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = v8; i != &v7; i = i[1])
      {
        v10 = i + 2;
        sub_29A36E168(&v4, i + 2, &unk_29B4D6118, &v10)[5] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_DeleteKeys();
    }

    return sub_29A0EB800(&v7);
  }

  return result;
}

void sub_29A35304C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0EB800(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_SetExplicit(unsigned __int8 *result, int a2)
{
  if (*result != a2)
  {
    *result = a2;
    *(result + 2) = *(result + 1);
    *(result + 5) = *(result + 4);
    *(result + 8) = *(result + 7);
    *(result + 11) = *(result + 10);
    *(result + 14) = *(result + 13);
    *(result + 17) = *(result + 16);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_MakeUnique(uint64_t a1, void **a2, int a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v10 = (v8 - v7) >> 3;
  if (v10 >= 2)
  {
    if (v10 > 0xA)
    {
      goto LABEL_12;
    }

    if (v7 != (v8 - 8))
    {
      v13 = 1;
      v14 = v7;
      do
      {
        v15 = v14 + 1;
        if (v8 != v14 + 1)
        {
          v16 = *v14;
          v17 = v15;
          do
          {
            v18 = *v17++;
            v13 &= v16 != v18;
          }

          while (v17 != v8);
        }

        v14 = v15;
      }

      while (v15 != (v8 - 8));
      if ((v13 & 1) == 0)
      {
LABEL_12:
        if (v7 != v8)
        {
          v19 = v7 + 1;
          while (v19 != v8)
          {
            v20 = *(v19 - 1);
            v21 = *v19++;
            if (v20 >= v21)
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              sub_29A27E600(&v43, v7, v8, v10);
              std::__sort<std::__less<long long,long long> &,long long *>();
              v22 = v43;
              if (v43 != v44)
              {
                v23 = v43 + 1;
                while (v23 != v44)
                {
                  v24 = *(v23 - 1);
                  v25 = *v23++;
                  if (v24 == v25)
                  {
                    sub_29A36EF80(&v41, 0, 0.0, 0.5);
                    v38 = 0;
                    v39 = 0;
                    v40 = 0;
                    sub_29A08AF9C(&v38, (a2[1] - *a2) >> 3);
                    if (a3)
                    {
                      v26 = a2[1];
                      while (v26 != *a2)
                      {
                        --v26;
                        sub_29A36F1A0(&v41, v26, v26);
                        if (v27)
                        {
                          sub_29A018094(&v38, v26);
                        }
                      }

                      v30 = v39 - 8;
                      if (v38 != v39 && v30 > v38)
                      {
                        v32 = v38 + 8;
                        do
                        {
                          v33 = *(v32 - 1);
                          *(v32 - 1) = *v30;
                          *v30 = v33;
                          v30 -= 8;
                          v34 = v32 >= v30;
                          v32 += 8;
                        }

                        while (!v34);
                      }
                    }

                    else
                    {
                      for (i = *a2; i != a2[1]; ++i)
                      {
                        sub_29A36F1A0(&v41, i, i);
                        if (v29)
                        {
                          sub_29A018094(&v38, i);
                        }
                      }
                    }

                    if (&v38 != a2)
                    {
                      sub_29A00CB24(a2, v38, v39, (v39 - v38) >> 3);
                    }

                    if (a4)
                    {
                      MEMORY[0x29C2C1A60](a4, "Duplicate item found in SdfListOp: %s.", __p);
                      sub_29A1FBDA8(v23 - 2);
                      if (v37 < 0)
                      {
                        operator delete(__pa);
                      }
                    }

                    if (v38)
                    {
                      v39 = v38;
                      operator delete(v38);
                    }

                    v38 = &v42;
                    sub_29A10A834(&v38);
                    v11 = 0;
                    v22 = v43;
                    if (!v43)
                    {
                      return v11;
                    }

                    goto LABEL_48;
                  }
                }
              }

              v11 = 1;
              if (v43)
              {
LABEL_48:
                v44 = v22;
                operator delete(v22);
              }

              return v11;
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_29A353358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 - 64);
  if (v17)
  {
    *(v15 - 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetDeletedItems();
    }
  }

  return 1;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetAddedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 32);
  if (result != a2)
  {
    return sub_29A00CB24(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetOrderedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 128);
  if (result != a2)
  {
    return sub_29A00CB24(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::Clear(uint64_t result)
{
  *result = 0;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ClearAndMakeExplicit(uint64_t result)
{
  *result = 1;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::GetItems();
}

{
    ;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v20 = result[13];
  v21 = v4;
  if (v20 != v4)
  {
    v8 = (a4 + 1);
    do
    {
      v9 = *(a2 + 24);
      v10 = sub_29A1FBCA8(&v20, a2, a3);
      if (v9)
      {
        v22 = 2;
        v11 = sub_29A36EE7C(a2);
        if ((v12 & 1) == 0)
        {
          goto LABEL_21;
        }

        v13 = *v8;
        if (!*v8)
        {
          goto LABEL_21;
        }

        v14 = v8;
        do
        {
          if (v13[4] >= v11)
          {
            v14 = v13;
          }

          v13 = v13[v13[4] < v11];
        }

        while (v13);
        if (v14 == v8 || v11 < v14[4])
        {
          goto LABEL_21;
        }
      }

      else
      {
        v15 = *v8;
        if (!*v8)
        {
          goto LABEL_21;
        }

        v16 = *v10;
        v14 = v8;
        do
        {
          if (v15[4] >= v16)
          {
            v14 = v15;
          }

          v15 = v15[v15[4] < v16];
        }

        while (v15);
        if (v14 == v8 || v16 < v14[4])
        {
          goto LABEL_21;
        }
      }

      v17 = v14[5];
      v19 = *v17;
      v18 = v17[1];
      *(v19 + 8) = v18;
      *v18 = v19;
      --*(a3 + 16);
      operator delete(v17);
      sub_29A03AFE8(a4, v14);
      operator delete(v14);
LABEL_21:
      result = sub_29A1FBD28(&v20);
    }

    while (v20 != v21);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_PrependKeys(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = result[7];
  v6 = result[8];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        --v6;
        LODWORD(v37) = 4;
        result = sub_29A36EE7C(a2);
        v37 = result;
        v38 = v10;
        if (v10)
        {
          v11 = result;
          v12 = *(a3 + 8);
          v13 = *v9;
          if (!*v9)
          {
            goto LABEL_12;
          }

          v14 = a4 + 1;
          do
          {
            if (v13[4] >= result)
            {
              v14 = v13;
            }

            v13 = v13[v13[4] < result];
          }

          while (v13);
          if (v14 != v9 && result >= v14[4])
          {
            v17 = v14[5];
            if (v17 != v12)
            {
              v18 = v17[1];
              if (v17 != v18)
              {
                v19 = *v18;
                v20 = *(v19 + 8);
                v21 = *v17;
                *(v21 + 8) = v20;
                *v20 = v21;
                v22 = *v12;
                *(v22 + 8) = v17;
                *v17 = v22;
                *v12 = v19;
                *(v19 + 8) = v12;
              }
            }
          }

          else
          {
LABEL_12:
            v15 = operator new(0x18uLL);
            v15[2] = v11;
            v16 = *v12;
            *(v16 + 8) = v15;
            *v15 = v16;
            *v12 = v15;
            v15[1] = v12;
            ++*(a3 + 16);
            v39 = &v37;
            result = sub_29A36E168(a4, &v37, &unk_29B4D6118, &v39);
            result[5] = v15;
          }
        }
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v23 = a4 + 1;
    do
    {
      v25 = *--v6;
      v24 = v25;
      v26 = *(a3 + 8);
      v27 = *v23;
      if (!*v23)
      {
        goto LABEL_27;
      }

      v28 = a4 + 1;
      do
      {
        if (v27[4] >= v24)
        {
          v28 = v27;
        }

        v27 = v27[v27[4] < v24];
      }

      while (v27);
      if (v28 != v23 && v24 >= v28[4])
      {
        v31 = v28[5];
        if (v31 != v26)
        {
          v32 = v31[1];
          if (v31 != v32)
          {
            v33 = *v32;
            v34 = *(v33 + 8);
            v35 = *v31;
            *(v35 + 8) = v34;
            *v34 = v35;
            v36 = *v26;
            *(v36 + 8) = v31;
            *v31 = v36;
            *v26 = v33;
            *(v33 + 8) = v26;
          }
        }
      }

      else
      {
LABEL_27:
        v29 = operator new(0x18uLL);
        v29[2] = v24;
        v30 = *v26;
        *(v30 + 8) = v29;
        *v29 = v30;
        *v26 = v29;
        v29[1] = v26;
        ++*(a3 + 16);
        v37 = v6;
        result = sub_29A36E168(a4, v6, &unk_29B4D6118, &v37);
        result[5] = v29;
      }
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_AppendKeys(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v6 = result[10];
  v7 = result[11];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        LODWORD(v34) = 5;
        result = sub_29A36EE7C(a2);
        v34 = result;
        v35 = v10;
        if (v10)
        {
          v11 = result;
          v12 = *v9;
          if (!*v9)
          {
            goto LABEL_12;
          }

          v13 = a4 + 1;
          do
          {
            if (v12[4] >= result)
            {
              v13 = v12;
            }

            v12 = v12[v12[4] < result];
          }

          while (v12);
          if (v13 != v9 && result >= v13[4])
          {
            v16 = v13[5];
            if (v16 != a3)
            {
              v17 = v16[1];
              if (v16 != v17)
              {
                v18 = *v17;
                v19 = *(v18 + 8);
                v20 = *v16;
                *(v20 + 8) = v19;
                *v19 = v20;
                v21 = *a3;
                *(v21 + 8) = v16;
                *v16 = v21;
                *a3 = v18;
                *(v18 + 8) = a3;
              }
            }
          }

          else
          {
LABEL_12:
            v14 = operator new(0x18uLL);
            v14[2] = v11;
            v15 = *a3;
            *(v15 + 8) = v14;
            *a3 = v14;
            *v14 = v15;
            v14[1] = a3;
            ++a3[2];
            v36 = &v34;
            result = sub_29A36E168(a4, &v34, &unk_29B4D6118, &v36);
            result[5] = v14;
          }
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v22 = a4 + 1;
    do
    {
      v23 = *v22;
      v24 = *v6;
      if (!*v22)
      {
        goto LABEL_27;
      }

      v25 = a4 + 1;
      do
      {
        if (v23[4] >= v24)
        {
          v25 = v23;
        }

        v23 = v23[v23[4] < v24];
      }

      while (v23);
      if (v25 != v22 && v24 >= v25[4])
      {
        v28 = v25[5];
        if (v28 != a3)
        {
          v29 = v28[1];
          if (v28 != v29)
          {
            v30 = *v29;
            v31 = *(v30 + 8);
            v32 = *v28;
            *(v32 + 8) = v31;
            *v31 = v32;
            v33 = *a3;
            *(v33 + 8) = v28;
            *v28 = v33;
            *a3 = v30;
            *(v30 + 8) = a3;
          }
        }
      }

      else
      {
LABEL_27:
        v26 = operator new(0x18uLL);
        v26[2] = v24;
        v27 = *a3;
        *(v27 + 8) = v26;
        *a3 = v26;
        *v26 = v27;
        v26[1] = a3;
        ++a3[2];
        v34 = v6;
        result = sub_29A36E168(a4, v6, &unk_29B4D6118, &v34);
        result[5] = v26;
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_ReorderKeys(uint64_t a1)
{
  memset(__p, 0, sizeof(__p));
  sub_29A27E600(__p, *(a1 + 128), *(a1 + 136), (*(a1 + 136) - *(a1 + 128)) >> 3);
  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_ReorderKeysHelper();
}

void sub_29A353E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result;
  v41 = *MEMORY[0x29EDCA608];
  if (*result == 1)
  {
    result = sub_29A27E67C(a3, result);
    a3[152] = 1;
  }

  else
  {
    if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
    {
      if (*a2 == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A27E600(&v28, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
        v33[0] = 0;
        pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ApplyOperations();
      }

      if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A27E600(&v28, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
        __dst = 0;
        v26 = 0;
        v27 = 0;
        sub_29A27E600(&__dst, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_29A27E600(&v22, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
        v6 = v3[13];
        v7 = v3[14];
        while (1)
        {
          if (v6 == v7)
          {
            v11 = v3[7];
            v12 = v3[8];
            if (v11 != v12)
            {
              do
              {
                v13 = sub_29A35445C(v28, v29, v11);
                if (v13 != v29)
                {
                  v29 = v13;
                }

                v14 = sub_29A35445C(__dst, v26, v11);
                if (v14 != v26)
                {
                  v26 = v14;
                }

                v15 = sub_29A35445C(v22, v23, v11);
                if (v15 != v23)
                {
                  v23 = v15;
                }

                v11 += 8;
              }

              while (v11 != v12);
              v11 = v3[7];
              v12 = v3[8];
            }

            sub_29A36E4AC(&__dst, __dst, v11, v12, (v12 - v11) >> 3);
            v16 = v3[10];
            v17 = v3[11];
            if (v16 == v17)
            {
              v21 = v23;
            }

            else
            {
              do
              {
                v18 = sub_29A35445C(v28, v29, v16);
                if (v18 != v29)
                {
                  v29 = v18;
                }

                v19 = sub_29A35445C(__dst, v26, v16);
                if (v19 != v26)
                {
                  v26 = v19;
                }

                v20 = sub_29A35445C(v22, v23, v16);
                v21 = v23;
                if (v20 != v23)
                {
                  v21 = v20;
                  v23 = v20;
                }

                v16 += 8;
              }

              while (v16 != v17);
              v16 = v3[10];
              v17 = v3[11];
            }

            sub_29A36E4AC(&v22, v21, v16, v17, (v17 - v16) >> 3);
            v31 = 0;
            *v32 = 0u;
            *v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetDeletedItems();
          }

          v8 = sub_29A35445C(__dst, v26, v6);
          if (v8 != v26)
          {
            v26 = v8;
          }

          v9 = sub_29A35445C(v22, v23, v6);
          if (v9 != v23)
          {
            v23 = v9;
          }

          v10 = v28;
          if (v28 != v29)
          {
            while (*v10 != *v6)
            {
              if (++v10 == v29)
              {
                goto LABEL_21;
              }
            }
          }

          if (v10 == v29)
          {
LABEL_21:
            sub_29A018094(&v28, v6);
          }

          ++v6;
        }
      }
    }

    *a3 = 0;
    a3[152] = 0;
  }

  return result;
}

void sub_29A3543A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A35445C(void *a1, void *a2, void *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != *a3)
    {
      if (++result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 1; i != a2; ++i)
      {
        if (*i != *a3)
        {
          *result++ = *i;
        }
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ModifyOperations(uint64_t **a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A35456C(a2, a1 + 1);
  v5 = v4 | sub_29A35456C(a2, a1 + 4);
  v6 = sub_29A35456C(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A35456C(a2, a1 + 10);
  v8 = sub_29A35456C(a2, a1 + 13);
  return v7 | v8 | sub_29A35456C(a2, a1 + 16);
}

uint64_t sub_29A35456C(uint64_t a1, uint64_t **a2)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  sub_29A08AF9C(v20, a2[1] - *a2);
  *__p = 0u;
  v19 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  do
  {
    v16 = sub_29A36E758(a1);
    v17 = v7;
    if (v7 & 1) == 0 || (sub_29A36E6AC(__p, &v16), v9 = v8, v7 = v17, (v9) || (v17 & 1) == 0)
    {
      if (v7)
      {
        if (v16 == *v4)
        {
          sub_29A018094(v20, v4);
          goto LABEL_11;
        }

        sub_29A018094(v20, &v16);
      }
    }

    v6 = 1;
LABEL_11:
    ++v4;
  }

  while (v4 != v5);
  if (v6)
  {
    v10 = *a2;
    *a2 = *v20;
    *v20 = v10;
    v11 = a2[2];
    a2[2] = v21;
    v21 = v11;
    v12 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v12 = 0;
LABEL_15:
  v13 = *(&v19 + 1);
  *(&v19 + 1) = 0;
  if (v13)
  {
    v14 = sub_29A0EB570(v13);
    operator delete(v14);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  return v12;
}

void sub_29A3546B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::GetItems();
  }

  return 0;
}

void sub_29A3548E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::SetExplicitItems();
}

void sub_29A354B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_29A36DFE8(&__p);
  sub_29A082B84(&a9, a10);
  sub_29A0EB800(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1 + 1;
  v4 = a1[1];
  v6 = v5[1] - v4;
  v8 = a2 + 1;
  v7 = a2[1];
  if (v6 != v8[1] - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a1[5] - v9;
  v11 = a2[4];
  if (v10 != a2[5] - v11)
  {
    return 0;
  }

  if (memcmp(v9, v11, v10))
  {
    return 0;
  }

  v12 = a1[7];
  v13 = a1[8] - v12;
  v14 = a2[7];
  if (v13 != a2[8] - v14)
  {
    return 0;
  }

  if (memcmp(v12, v14, v13))
  {
    return 0;
  }

  v15 = a1[10];
  v16 = a1[11] - v15;
  v17 = a2[10];
  if (v16 != a2[11] - v17)
  {
    return 0;
  }

  if (memcmp(v15, v17, v16))
  {
    return 0;
  }

  v18 = a1[13];
  v19 = a1[14] - v18;
  v20 = a2[13];
  if (v19 != a2[14] - v20 || memcmp(v18, v20, v19))
  {
    return 0;
  }

  return sub_29A34F204((a1 + 16), (a2 + 16));
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<long long>::_ReorderKeysHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v39 = 0;
  v40 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v7 = a1[1];
  *&v32 = *a1;
  *(&v32 + 1) = v7;
  while (v32 != *(&v32 + 1))
  {
    if (*(a2 + 24))
    {
      sub_29A354FC8(&v32, a2, a3);
      v41 = 3;
      v34 = sub_29A36EE7C(a2);
      LOBYTE(v35) = v8;
      if (v8)
      {
        sub_29A36EEC4(&v36, &v34, &v34);
        if (v9)
        {
          sub_29A018094(&__p, &v34);
        }
      }
    }

    else
    {
      v10 = sub_29A354FC8(&v32, a2, a3);
      sub_29A36EEC4(&v36, v10, v10);
      if (v11)
      {
        v13 = sub_29A354FC8(&v32, v11, v12);
        sub_29A018094(&__p, v13);
      }
    }

    sub_29A355048(&v32);
  }

  if (__p != v39)
  {
    *&v32 = &v32;
    *(&v32 + 1) = &v32;
    v33 = 0;
    sub_29A1180F8(&v32, a3);
    v34 = __p;
    v35 = v39;
    v16 = (a4 + 8);
    while (v34 != v35)
    {
      v17 = sub_29A354FC8(&v34, v14, v15);
      v18 = *v16;
      if (*v16)
      {
        v19 = *v17;
        v20 = v16;
        do
        {
          if (v18[4] >= v19)
          {
            v20 = v18;
          }

          v18 = v18[v18[4] < v19];
        }

        while (v18);
        if (v20 != v16 && v19 >= v20[4])
        {
          v21 = v20[5];
          v22 = &v32;
          if (v21[1] != &v32)
          {
            v22 = v21[1];
            do
            {
              if (v37[0])
              {
                v23 = *(v22 + 2);
                v24 = v37[0];
                do
                {
                  v25 = v24[4];
                  if (v23 >= v25)
                  {
                    if (v25 >= v23)
                    {
                      goto LABEL_30;
                    }

                    ++v24;
                  }

                  v24 = *v24;
                }

                while (v24);
              }

              v22 = *(v22 + 1);
            }

            while (v22 != &v32);
            v22 = &v32;
          }

LABEL_30:
          if (!v33)
          {
            goto LABEL_35;
          }

          sub_29A117E88(a3, a3, &v32, v21, v22);
        }
      }

      sub_29A355048(&v34);
    }

    v26 = v33;
    if (v33)
    {
      v27 = *(a3 + 8);
      v28 = v32;
      v29 = *(v32 + 8);
      v30 = **(&v32 + 1);
      *(v30 + 8) = v29;
      *v29 = v30;
      v31 = *v27;
      *(v31 + 8) = *(&v28 + 1);
      **(&v28 + 1) = v31;
      *v27 = v28;
      *(v28 + 8) = v27;
      *(a3 + 16) += v26;
      v33 = 0;
    }

LABEL_35:
    sub_29A0EB800(&v32);
  }

  sub_29A082B84(&v36, v37[0]);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }
}

void sub_29A354F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_29A0EB800(&a9);
  sub_29A082B84(&a14, a15);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A354FC8(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<long long>>::operator*() [T = std::vector<long long>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A355048(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<long long>>::operator++() [T = std::vector<long long>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<long long>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20472D8, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = long long]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!listOpAliases.empty()", 0);
    v7 = v18[0];
  }

  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  v11 = sub_29A00911C(a1, v9, v10);
  sub_29A00911C(v11, "(", 1);
  v13 = 1;
  if (*a2 == 1)
  {
    sub_29A008E78(__p, "Explicit");
    sub_29A36F5C0(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A36F5C0(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A36F5C0(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A36F5C0(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A36F5C0(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A36F5C0(a1, __p, (a2 + 128), &v13, 0);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A00911C(a1, ")", 1);
  __p[0] = v18;
  sub_29A012C90(__p);
  return a1;
}

void sub_29A355320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::CreateExplicit(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SdfListOp(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetExplicitItems(uint64_t a1, char **a2)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 8) != a2)
  {
    sub_29A00CB24((a1 + 8), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::Create(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetPrependedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 56) != a2)
  {
    sub_29A00CB24((a1 + 56), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetAppendedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 80) != a2)
  {
    sub_29A00CB24((a1 + 80), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_MakeUnique();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetDeletedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  if ((a1 + 104) != a2)
  {
    sub_29A00CB24((a1 + 104), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_MakeUnique();
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::Swap(char *result, char *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = *(result + 1);
  *(result + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(result + 13);
  *(result + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  v16 = *(result + 14);
  *(result + 14) = *(a2 + 14);
  *(a2 + 14) = v16;
  v17 = *(result + 15);
  *(result + 15) = *(a2 + 15);
  *(a2 + 15) = v17;
  v18 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v18;
  v19 = *(result + 17);
  *(result + 17) = *(a2 + 17);
  *(a2 + 17) = v19;
  v20 = *(result + 18);
  *(result + 18) = *(a2 + 18);
  *(a2 + 18) = v20;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::HasItem(uint64_t a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v2 != v3)
    {
      while (*v2 != *a2)
      {
        if (++v2 == v3)
        {
          goto LABEL_5;
        }
      }
    }

    return v2 != v3;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    while (*v5 != *a2)
    {
      if (++v5 == v6)
      {
        goto LABEL_12;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_12:
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (v7 != v8)
    {
      while (*v7 != *a2)
      {
        if (++v7 == v8)
        {
          goto LABEL_17;
        }
      }
    }

    if (v7 == v8)
    {
LABEL_17:
      v9 = *(a1 + 80);
      v10 = *(a1 + 88);
      if (v9 != v10)
      {
        while (*v9 != *a2)
        {
          if (++v9 == v10)
          {
            goto LABEL_22;
          }
        }
      }

      if (v9 == v10)
      {
LABEL_22:
        v11 = *(a1 + 104);
        v12 = *(a1 + 112);
        if (v11 != v12)
        {
          while (*v11 != *a2)
          {
            if (++v11 == v12)
            {
              goto LABEL_28;
            }
          }
        }

        if (v11 == v12)
        {
LABEL_28:
          v2 = *(a1 + 128);
          v3 = *(a1 + 136);
          if (v2 != v3)
          {
            while (*v2 != *a2)
            {
              if (++v2 == v3)
              {
LABEL_5:
                v2 = v3;
                return v2 != v3;
              }
            }
          }

          return v2 != v3;
        }
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::GetItems(SdfListOpType) const [T = unsigned long long]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Got out-of-range type value: %d", a2);
    v3 = 8;
  }

  else
  {
    v3 = qword_29B48A438[a2];
  }

  return a1 + v3;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ApplyOperations();
}

void sub_29A355B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36F6E8(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ApplyOperations(void *result, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    v7 = &v7;
    v8 = &v7;
    v9 = 0;
    if (*result == 1)
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_AddKeys();
    }

    if (*(a3 + 24) || ((result[8] - result[7]) >> 3) + ((result[11] - result[10]) >> 3) + ((result[5] - result[4]) >> 3) + ((result[14] - result[13]) >> 3) + ((result[17] - result[16]) >> 3))
    {
      sub_29A36E068(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = v8; i != &v7; i = i[1])
      {
        v10 = i + 2;
        sub_29A36F768(&v4, i + 2, &unk_29B4D6118, &v10)[5] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_DeleteKeys();
    }

    return sub_29A0EB800(&v7);
  }

  return result;
}

void sub_29A355DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0EB800(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_SetExplicit(unsigned __int8 *result, int a2)
{
  if (*result != a2)
  {
    *result = a2;
    *(result + 2) = *(result + 1);
    *(result + 5) = *(result + 4);
    *(result + 8) = *(result + 7);
    *(result + 11) = *(result + 10);
    *(result + 14) = *(result + 13);
    *(result + 17) = *(result + 16);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_MakeUnique(uint64_t a1, void **a2, int a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v10 = (v8 - v7) >> 3;
  if (v10 >= 2)
  {
    if (v10 > 0xA)
    {
      goto LABEL_12;
    }

    if (v7 != (v8 - 8))
    {
      v13 = 1;
      v14 = v7;
      do
      {
        v15 = v14 + 1;
        if (v8 != v14 + 1)
        {
          v16 = *v14;
          v17 = v15;
          do
          {
            v18 = *v17++;
            v13 &= v16 != v18;
          }

          while (v17 != v8);
        }

        v14 = v15;
      }

      while (v15 != (v8 - 8));
      if ((v13 & 1) == 0)
      {
LABEL_12:
        if (v7 != v8)
        {
          v19 = v7 + 1;
          while (v19 != v8)
          {
            v20 = *(v19 - 1);
            v21 = *v19++;
            if (v20 >= v21)
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              sub_29A00E7E0(&v43, v7, v8, v10);
              std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
              v22 = v43;
              if (v43 != v44)
              {
                v23 = v43 + 1;
                while (v23 != v44)
                {
                  v24 = *(v23 - 1);
                  v25 = *v23++;
                  if (v24 == v25)
                  {
                    sub_29A36FAC4(&v41, 0, 0.0, 0.5);
                    v38 = 0;
                    v39 = 0;
                    v40 = 0;
                    sub_29A08AF9C(&v38, (a2[1] - *a2) >> 3);
                    if (a3)
                    {
                      v26 = a2[1];
                      while (v26 != *a2)
                      {
                        --v26;
                        sub_29A36FCE4(&v41, v26, v26);
                        if (v27)
                        {
                          sub_29A018094(&v38, v26);
                        }
                      }

                      v30 = v39 - 8;
                      if (v38 != v39 && v30 > v38)
                      {
                        v32 = v38 + 8;
                        do
                        {
                          v33 = *(v32 - 1);
                          *(v32 - 1) = *v30;
                          *v30 = v33;
                          v30 -= 8;
                          v34 = v32 >= v30;
                          v32 += 8;
                        }

                        while (!v34);
                      }
                    }

                    else
                    {
                      for (i = *a2; i != a2[1]; ++i)
                      {
                        sub_29A36FCE4(&v41, i, i);
                        if (v29)
                        {
                          sub_29A018094(&v38, i);
                        }
                      }
                    }

                    if (&v38 != a2)
                    {
                      sub_29A00CB24(a2, v38, v39, (v39 - v38) >> 3);
                    }

                    if (a4)
                    {
                      MEMORY[0x29C2C1A60](a4, "Duplicate item found in SdfListOp: %s.", __p);
                      sub_29A1FC6F0(v23 - 2);
                      if (v37 < 0)
                      {
                        operator delete(__pa);
                      }
                    }

                    if (v38)
                    {
                      v39 = v38;
                      operator delete(v38);
                    }

                    v38 = &v42;
                    sub_29A10A834(&v38);
                    v11 = 0;
                    v22 = v43;
                    if (!v43)
                    {
                      return v11;
                    }

                    goto LABEL_48;
                  }
                }
              }

              v11 = 1;
              if (v43)
              {
LABEL_48:
                v44 = v22;
                operator delete(v22);
              }

              return v11;
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_29A3560D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 - 64);
  if (v17)
  {
    *(v15 - 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetDeletedItems();
    }
  }

  return 1;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetAddedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 32);
  if (result != a2)
  {
    return sub_29A00CB24(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

char **pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetOrderedItems(uint64_t a1, char **a2)
{
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 88) = *(a1 + 80);
    *(a1 + 112) = *(a1 + 104);
    *(a1 + 136) = *(a1 + 128);
  }

  result = (a1 + 128);
  if (result != a2)
  {
    return sub_29A00CB24(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::Clear(uint64_t result)
{
  *result = 0;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ClearAndMakeExplicit(uint64_t result)
{
  *result = 1;
  *(result + 16) = *(result + 8);
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  *(result + 88) = *(result + 80);
  *(result + 112) = *(result + 104);
  *(result + 136) = *(result + 128);
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::GetItems();
}

{
    ;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v25 = result[13];
  v26 = v4;
  if (v25 != v4)
  {
    v8 = (a4 + 1);
    do
    {
      v9 = *(a2 + 24);
      v10 = sub_29A1FC5F0(&v25, a2, a3);
      if (v9)
      {
        v27 = 2;
        v11 = sub_29A36FA7C(a2);
        if ((v12 & 1) == 0)
        {
          goto LABEL_23;
        }

        v13 = *v8;
        if (!*v8)
        {
          goto LABEL_23;
        }

        v14 = v8;
        do
        {
          v15 = v13[4];
          v16 = v15 >= v11;
          v17 = v15 < v11;
          if (v16)
          {
            v14 = v13;
          }

          v13 = v13[v17];
        }

        while (v13);
        if (v14 == v8 || v11 < v14[4])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v18 = *v8;
        if (!*v8)
        {
          goto LABEL_23;
        }

        v19 = *v10;
        v14 = v8;
        do
        {
          v20 = v18[4];
          v16 = v20 >= v19;
          v21 = v20 < v19;
          if (v16)
          {
            v14 = v18;
          }

          v18 = v18[v21];
        }

        while (v18);
        if (v14 == v8 || v19 < v14[4])
        {
          goto LABEL_23;
        }
      }

      v22 = v14[5];
      v24 = *v22;
      v23 = v22[1];
      *(v24 + 8) = v23;
      *v23 = v24;
      --*(a3 + 16);
      operator delete(v22);
      sub_29A03AFE8(a4, v14);
      operator delete(v14);
LABEL_23:
      result = sub_29A1FC670(&v25);
    }

    while (v25 != v26);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_PrependKeys(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = result[7];
  v6 = result[8];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        --v6;
        LODWORD(v42) = 4;
        result = sub_29A36FA7C(a2);
        v42 = result;
        v43 = v10;
        if (v10)
        {
          v11 = result;
          v12 = *(a3 + 8);
          v13 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v14 = a4 + 1;
          do
          {
            v15 = v13[4];
            v16 = v15 >= result;
            v17 = v15 < result;
            if (v16)
            {
              v14 = v13;
            }

            v13 = v13[v17];
          }

          while (v13);
          if (v14 != v9 && result >= v14[4])
          {
            v20 = v14[5];
            if (v20 != v12)
            {
              v21 = v20[1];
              if (v20 != v21)
              {
                v22 = *v21;
                v23 = *(v22 + 8);
                v24 = *v20;
                *(v24 + 8) = v23;
                *v23 = v24;
                v25 = *v12;
                *(v25 + 8) = v20;
                *v20 = v25;
                *v12 = v22;
                *(v22 + 8) = v12;
              }
            }
          }

          else
          {
LABEL_13:
            v18 = operator new(0x18uLL);
            v18[2] = v11;
            v19 = *v12;
            *(v19 + 8) = v18;
            *v18 = v19;
            *v12 = v18;
            v18[1] = v12;
            ++*(a3 + 16);
            v44 = &v42;
            result = sub_29A36F768(a4, &v42, &unk_29B4D6118, &v44);
            result[5] = v18;
          }
        }
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v26 = a4 + 1;
    do
    {
      v28 = *--v6;
      v27 = v28;
      v29 = *(a3 + 8);
      v30 = *v26;
      if (!*v26)
      {
        goto LABEL_29;
      }

      v31 = a4 + 1;
      do
      {
        v32 = v30[4];
        v16 = v32 >= v27;
        v33 = v32 < v27;
        if (v16)
        {
          v31 = v30;
        }

        v30 = v30[v33];
      }

      while (v30);
      if (v31 != v26 && v27 >= v31[4])
      {
        v36 = v31[5];
        if (v36 != v29)
        {
          v37 = v36[1];
          if (v36 != v37)
          {
            v38 = *v37;
            v39 = *(v38 + 8);
            v40 = *v36;
            *(v40 + 8) = v39;
            *v39 = v40;
            v41 = *v29;
            *(v41 + 8) = v36;
            *v36 = v41;
            *v29 = v38;
            *(v38 + 8) = v29;
          }
        }
      }

      else
      {
LABEL_29:
        v34 = operator new(0x18uLL);
        v34[2] = v27;
        v35 = *v29;
        *(v35 + 8) = v34;
        *v34 = v35;
        *v29 = v34;
        v34[1] = v29;
        ++*(a3 + 16);
        v42 = v6;
        result = sub_29A36F768(a4, v6, &unk_29B4D6118, &v42);
        result[5] = v34;
      }
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_AppendKeys(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v6 = result[10];
  v7 = result[11];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        LODWORD(v39) = 5;
        result = sub_29A36FA7C(a2);
        v39 = result;
        v40 = v10;
        if (v10)
        {
          v11 = result;
          v12 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v13 = a4 + 1;
          do
          {
            v14 = v12[4];
            v15 = v14 >= result;
            v16 = v14 < result;
            if (v15)
            {
              v13 = v12;
            }

            v12 = v12[v16];
          }

          while (v12);
          if (v13 != v9 && result >= v13[4])
          {
            v19 = v13[5];
            if (v19 != a3)
            {
              v20 = v19[1];
              if (v19 != v20)
              {
                v21 = *v20;
                v22 = *(v21 + 8);
                v23 = *v19;
                *(v23 + 8) = v22;
                *v22 = v23;
                v24 = *a3;
                *(v24 + 8) = v19;
                *v19 = v24;
                *a3 = v21;
                *(v21 + 8) = a3;
              }
            }
          }

          else
          {
LABEL_13:
            v17 = operator new(0x18uLL);
            v17[2] = v11;
            v18 = *a3;
            *(v18 + 8) = v17;
            *a3 = v17;
            *v17 = v18;
            v17[1] = a3;
            ++a3[2];
            v41 = &v39;
            result = sub_29A36F768(a4, &v39, &unk_29B4D6118, &v41);
            result[5] = v17;
          }
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v25 = a4 + 1;
    do
    {
      v26 = *v25;
      v27 = *v6;
      if (!*v25)
      {
        goto LABEL_29;
      }

      v28 = a4 + 1;
      do
      {
        v29 = v26[4];
        v15 = v29 >= v27;
        v30 = v29 < v27;
        if (v15)
        {
          v28 = v26;
        }

        v26 = v26[v30];
      }

      while (v26);
      if (v28 != v25 && v27 >= v28[4])
      {
        v33 = v28[5];
        if (v33 != a3)
        {
          v34 = v33[1];
          if (v33 != v34)
          {
            v35 = *v34;
            v36 = *(v35 + 8);
            v37 = *v33;
            *(v37 + 8) = v36;
            *v36 = v37;
            v38 = *a3;
            *(v38 + 8) = v33;
            *v33 = v38;
            *a3 = v35;
            *(v35 + 8) = a3;
          }
        }
      }

      else
      {
LABEL_29:
        v31 = operator new(0x18uLL);
        v31[2] = v27;
        v32 = *a3;
        *(v32 + 8) = v31;
        *a3 = v31;
        *v31 = v32;
        v31[1] = a3;
        ++a3[2];
        v39 = v6;
        result = sub_29A36F768(a4, v6, &unk_29B4D6118, &v39);
        result[5] = v31;
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_ReorderKeys(uint64_t a1)
{
  memset(__p, 0, sizeof(__p));
  sub_29A00E7E0(__p, *(a1 + 128), *(a1 + 136), (*(a1 + 136) - *(a1 + 128)) >> 3);
  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_ReorderKeysHelper();
}

void sub_29A356B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result;
  v41 = *MEMORY[0x29EDCA608];
  if (*result == 1)
  {
    result = sub_29A280074(a3, result);
    a3[152] = 1;
  }

  else
  {
    if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
    {
      if (*a2 == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A00E7E0(&v28, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
        v33[0] = 0;
        pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ApplyOperations();
      }

      if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A00E7E0(&v28, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
        __dst = 0;
        v26 = 0;
        v27 = 0;
        sub_29A00E7E0(&__dst, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_29A00E7E0(&v22, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
        v6 = v3[13];
        v7 = v3[14];
        while (1)
        {
          if (v6 == v7)
          {
            v11 = v3[7];
            v12 = v3[8];
            if (v11 != v12)
            {
              do
              {
                v13 = sub_29A35445C(v28, v29, v11);
                if (v13 != v29)
                {
                  v29 = v13;
                }

                v14 = sub_29A35445C(__dst, v26, v11);
                if (v14 != v26)
                {
                  v26 = v14;
                }

                v15 = sub_29A35445C(v22, v23, v11);
                if (v15 != v23)
                {
                  v23 = v15;
                }

                v11 += 8;
              }

              while (v11 != v12);
              v11 = v3[7];
              v12 = v3[8];
            }

            sub_29A36E4AC(&__dst, __dst, v11, v12, (v12 - v11) >> 3);
            v16 = v3[10];
            v17 = v3[11];
            if (v16 == v17)
            {
              v21 = v23;
            }

            else
            {
              do
              {
                v18 = sub_29A35445C(v28, v29, v16);
                if (v18 != v29)
                {
                  v29 = v18;
                }

                v19 = sub_29A35445C(__dst, v26, v16);
                if (v19 != v26)
                {
                  v26 = v19;
                }

                v20 = sub_29A35445C(v22, v23, v16);
                v21 = v23;
                if (v20 != v23)
                {
                  v21 = v20;
                  v23 = v20;
                }

                v16 += 8;
              }

              while (v16 != v17);
              v16 = v3[10];
              v17 = v3[11];
            }

            sub_29A36E4AC(&v22, v21, v16, v17, (v17 - v16) >> 3);
            v31 = 0;
            *v32 = 0u;
            *v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetDeletedItems();
          }

          v8 = sub_29A35445C(__dst, v26, v6);
          if (v8 != v26)
          {
            v26 = v8;
          }

          v9 = sub_29A35445C(v22, v23, v6);
          if (v9 != v23)
          {
            v23 = v9;
          }

          v10 = v28;
          if (v28 != v29)
          {
            while (*v10 != *v6)
            {
              if (++v10 == v29)
              {
                goto LABEL_21;
              }
            }
          }

          if (v10 == v29)
          {
LABEL_21:
            sub_29A018094(&v28, v6);
          }

          ++v6;
        }
      }
    }

    *a3 = 0;
    a3[152] = 0;
  }

  return result;
}

void sub_29A357120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ModifyOperations(uint64_t **a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A357284(a2, a1 + 1);
  v5 = v4 | sub_29A357284(a2, a1 + 4);
  v6 = sub_29A357284(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A357284(a2, a1 + 10);
  v8 = sub_29A357284(a2, a1 + 13);
  return v7 | v8 | sub_29A357284(a2, a1 + 16);
}

uint64_t sub_29A357284(uint64_t a1, uint64_t **a2)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  sub_29A08AF9C(v20, a2[1] - *a2);
  *__p = 0u;
  v19 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  do
  {
    v16 = sub_29A36F8D4(a1);
    v17 = v7;
    if (v7 & 1) == 0 || (sub_29A36F828(__p, &v16), v9 = v8, v7 = v17, (v9) || (v17 & 1) == 0)
    {
      if (v7)
      {
        if (v16 == *v4)
        {
          sub_29A018094(v20, v4);
          goto LABEL_11;
        }

        sub_29A018094(v20, &v16);
      }
    }

    v6 = 1;
LABEL_11:
    ++v4;
  }

  while (v4 != v5);
  if (v6)
  {
    v10 = *a2;
    *a2 = *v20;
    *v20 = v10;
    v11 = a2[2];
    a2[2] = v21;
    v21 = v11;
    v12 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v12 = 0;
LABEL_15:
  v13 = *(&v19 + 1);
  *(&v19 + 1) = 0;
  if (v13)
  {
    v14 = sub_29A0EB570(v13);
    operator delete(v14);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  return v12;
}

void sub_29A3573D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::GetItems();
  }

  return 0;
}

void sub_29A3575F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::SetExplicitItems();
}

void sub_29A3578B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_29A36F6E8(&__p);
  sub_29A082B84(&a9, a10);
  sub_29A0EB800(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1 + 1;
  v4 = a1[1];
  v6 = v5[1] - v4;
  v8 = a2 + 1;
  v7 = a2[1];
  if (v6 != v8[1] - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a1[5] - v9;
  v11 = a2[4];
  if (v10 != a2[5] - v11)
  {
    return 0;
  }

  if (memcmp(v9, v11, v10))
  {
    return 0;
  }

  v12 = a1[7];
  v13 = a1[8] - v12;
  v14 = a2[7];
  if (v13 != a2[8] - v14)
  {
    return 0;
  }

  if (memcmp(v12, v14, v13))
  {
    return 0;
  }

  v15 = a1[10];
  v16 = a1[11] - v15;
  v17 = a2[10];
  if (v16 != a2[11] - v17)
  {
    return 0;
  }

  if (memcmp(v15, v17, v16))
  {
    return 0;
  }

  v18 = a1[13];
  v19 = a1[14] - v18;
  v20 = a2[13];
  if (v19 != a2[14] - v20 || memcmp(v18, v20, v19))
  {
    return 0;
  }

  return sub_29A34F204((a1 + 16), (a2 + 16));
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>::_ReorderKeysHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v42 = 0;
  v43 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v7 = a1[1];
  *&v35 = *a1;
  *(&v35 + 1) = v7;
  while (v35 != *(&v35 + 1))
  {
    if (*(a2 + 24))
    {
      sub_29A357CE0(&v35, a2, a3);
      v44 = 3;
      v37 = sub_29A36FA7C(a2);
      LOBYTE(v38) = v8;
      if (v8)
      {
        sub_29A0F2BE4(&v39, &v37, &v37);
        if (v9)
        {
          sub_29A018094(&__p, &v37);
        }
      }
    }

    else
    {
      v10 = sub_29A357CE0(&v35, a2, a3);
      sub_29A0F2BE4(&v39, v10, v10);
      if (v11)
      {
        v13 = sub_29A357CE0(&v35, v11, v12);
        sub_29A018094(&__p, v13);
      }
    }

    sub_29A357D60(&v35);
  }

  if (__p != v42)
  {
    *&v35 = &v35;
    *(&v35 + 1) = &v35;
    v36 = 0;
    sub_29A1180F8(&v35, a3);
    v37 = __p;
    v38 = v42;
    v16 = (a4 + 8);
    while (v37 != v38)
    {
      v17 = sub_29A357CE0(&v37, v14, v15);
      v18 = *v16;
      if (*v16)
      {
        v19 = *v17;
        v20 = v16;
        do
        {
          v21 = v18[4];
          v22 = v21 >= v19;
          v23 = v21 < v19;
          if (v22)
          {
            v20 = v18;
          }

          v18 = v18[v23];
        }

        while (v18);
        if (v20 != v16 && v19 >= v20[4])
        {
          v24 = v20[5];
          v25 = &v35;
          if (v24[1] != &v35)
          {
            v25 = v24[1];
            do
            {
              if (v40[0])
              {
                v26 = *(v25 + 2);
                v27 = v40[0];
                do
                {
                  v28 = v27[4];
                  if (v26 >= v28)
                  {
                    if (v28 >= v26)
                    {
                      goto LABEL_31;
                    }

                    ++v27;
                  }

                  v27 = *v27;
                }

                while (v27);
              }

              v25 = *(v25 + 1);
            }

            while (v25 != &v35);
            v25 = &v35;
          }

LABEL_31:
          if (!v36)
          {
            goto LABEL_36;
          }

          sub_29A117E88(a3, a3, &v35, v24, v25);
        }
      }

      sub_29A357D60(&v37);
    }

    v29 = v36;
    if (v36)
    {
      v30 = *(a3 + 8);
      v31 = v35;
      v32 = *(v35 + 8);
      v33 = **(&v35 + 1);
      *(v33 + 8) = v32;
      *v32 = v33;
      v34 = *v30;
      *(v34 + 8) = *(&v31 + 1);
      **(&v31 + 1) = v34;
      *v30 = v31;
      *(v31 + 8) = v30;
      *(a3 + 16) += v29;
      v36 = 0;
    }

LABEL_36:
    sub_29A0EB800(&v35);
  }

  sub_29A082B84(&v39, v40[0]);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_29A357C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_29A0EB800(&a9);
  sub_29A082B84(&a14, a15);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A357CE0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<unsigned long long>>::operator*() [T = std::vector<unsigned long long>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A357D60(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<unsigned long long>>::operator++() [T = std::vector<unsigned long long>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<unsigned long long>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20472F8, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = unsigned long long]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!listOpAliases.empty()", 0);
    v7 = v18[0];
  }

  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  v11 = sub_29A00911C(a1, v9, v10);
  sub_29A00911C(v11, "(", 1);
  v13 = 1;
  if (*a2 == 1)
  {
    sub_29A008E78(__p, "Explicit");
    sub_29A37003C(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A37003C(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A37003C(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A37003C(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A37003C(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A37003C(a1, __p, (a2 + 128), &v13, 0);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A00911C(a1, ")", 1);
  __p[0] = v18;
  sub_29A012C90(__p);
  return a1;
}

void sub_29A358038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::CreateExplicit(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetExplicitItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::Create(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetPrependedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetAppendedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetDeletedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_SetExplicit();
}

{
    ;
  }
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::Swap(char *result, char *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = *(result + 1);
  *(result + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = *(result + 13);
  *(result + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  v16 = *(result + 14);
  *(result + 14) = *(a2 + 14);
  *(a2 + 14) = v16;
  v17 = *(result + 15);
  *(result + 15) = *(a2 + 15);
  *(a2 + 15) = v17;
  v18 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v18;
  v19 = *(result + 17);
  *(result + 17) = *(a2 + 17);
  *(a2 + 17) = v19;
  v20 = *(result + 18);
  *(result + 18) = *(a2 + 18);
  *(a2 + 18) = v20;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::HasItem(uint64_t a1, const void **a2)
{
  if (*a1 == 1)
  {
    v5 = (a1 + 16);
    v4 = *(a1 + 16);
    v6 = *(a1 + 8);
    return sub_29A22B430(v6, v4, a2) != *v5;
  }

  if (sub_29A22B430(*(a1 + 32), *(a1 + 40), a2) == *(a1 + 40) && sub_29A22B430(*(a1 + 56), *(a1 + 64), a2) == *(a1 + 64) && sub_29A22B430(*(a1 + 80), *(a1 + 88), a2) == *(a1 + 88) && sub_29A22B430(*(a1 + 104), *(a1 + 112), a2) == *(a1 + 112))
  {
    v8 = *(a1 + 136);
    v5 = (a1 + 136);
    v4 = v8;
    v6 = *(v5 - 1);
    return sub_29A22B430(v6, v4, a2) != *v5;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::GetItems(SdfListOpType) const [T = std::string]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Got out-of-range type value: %d", a2);
    v3 = 8;
  }

  else
  {
    v3 = qword_29B48A438[a2];
  }

  return a1 + v3;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::ApplyOperations();
}

void sub_29A3587A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A370164(va);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::ApplyOperations(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    v7 = &v7;
    *v8 = &v7;
    v9 = 0;
    if (*a1 == 1)
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_AddKeys();
    }

    if (*(a3 + 24) || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 3) - 0x5555555555555555 * ((*(a1 + 64) - *(a1 + 56)) >> 3) - 0x5555555555555555 * ((*(a1 + 40) - *(a1 + 32)) >> 3) - 0x5555555555555555 * ((*(a1 + 112) - *(a1 + 104)) >> 3) != 0x5555555555555555 * ((*(a1 + 136) - *(a1 + 128)) >> 3))
    {
      sub_29A3701E4(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = *v8; i != &v7; i = *(i + 8))
      {
        v10 = (i + 16);
        sub_29A0DD058(&v4, (i + 16), &unk_29B4D6118, &v10)[7] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_DeleteKeys();
    }

    sub_29A116F64(&v7);
  }
}

void sub_29A3589FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A116F64(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_SetExplicit(unsigned __int8 *a1, int a2)
{
  if (*a1 != a2)
  {
    *a1 = a2;
    v4 = (a1 + 128);
    sub_29A012CE4(a1 + 1);
    sub_29A012CE4(a1 + 4);
    sub_29A012CE4(a1 + 7);
    sub_29A012CE4(a1 + 10);
    sub_29A012CE4(a1 + 13);

    sub_29A012CE4(v4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_MakeUnique(uint64_t a1, const void ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 - *a2);
  if (v4 >= 2)
  {
    if (v4 > 0xA)
    {
      goto LABEL_24;
    }

    if (v2 != v3 - 3)
    {
      v7 = 1;
      v8 = *a2;
      do
      {
        v9 = v8 + 3;
        if (v3 != v8 + 3)
        {
          v10 = *(v8 + 23);
          if (v10 >= 0)
          {
            v11 = *(v8 + 23);
          }

          else
          {
            v11 = v8[1];
          }

          v12 = v8 + 3;
          do
          {
            v13 = *(v12 + 23);
            v14 = v13;
            if (v13 < 0)
            {
              v13 = v12[1];
            }

            if (v11 == v13)
            {
              if (v10 >= 0)
              {
                v15 = v8;
              }

              else
              {
                v15 = *v8;
              }

              if (v14 >= 0)
              {
                v16 = v12;
              }

              else
              {
                v16 = *v12;
              }

              v7 &= memcmp(v15, v16, v11) != 0;
            }

            v12 += 3;
          }

          while (v12 != v3);
        }

        v8 += 3;
      }

      while (v9 != v3 - 3);
      if ((v7 & 1) == 0)
      {
LABEL_24:
        LOBYTE(v19[0]) = 0;
        if (v2 != v3)
        {
          while (1)
          {
            v17 = v2 + 3;
            if (v2 + 3 == v3)
            {
              break;
            }

            v18 = sub_29A00AFCC(v19, v2, v2 + 3);
            v2 += 3;
            if (!v18)
            {
              v3 = v17 - 3;
              break;
            }
          }

          if (v3 != a2[1])
          {
            memset(&v19[10], 0, 24);
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
          }
        }
      }
    }
  }

  return 1;
}

void sub_29A358E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  a17 = &a27;
  sub_29A012C90(&a17);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetDeletedItems();
    }
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetAddedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetOrderedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::GetItems();
}

{
    ;
  }
}

void sub_29A359224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v23 = result[13];
  v24 = v4;
  if (v23 != v4)
  {
    v8 = a4 + 1;
    do
    {
      if (*(a2 + 24))
      {
        sub_29A17EFC8(&v23, a2, a3);
        sub_29A35A990(a2, 2);
        if (v22 == 1)
        {
          v9 = sub_29A01BCCC(a4, &__p);
          v10 = v9;
          if (v8 != v9)
          {
            v11 = *(v9 + 56);
            v13 = *v11;
            v12 = *(v11 + 8);
            v13[1] = v12;
            *v12 = v13;
            --*(a3 + 16);
            sub_29A116FC4(a3, v11);
            sub_29A03AFA4(a4, v10);
          }
        }

        if (v22 == 1 && v21 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v14 = sub_29A17EFC8(&v23, a2, a3);
        v15 = sub_29A01BCCC(a4, v14);
        if (v8 != v15)
        {
          v16 = v15;
          v17 = *(v15 + 56);
          v19 = *v17;
          v18 = *(v17 + 8);
          v19[1] = v18;
          *v18 = v19;
          --*(a3 + 16);
          sub_29A116FC4(a3, v17);
          sub_29A03AFA4(a4, v16);
        }
      }

      result = sub_29A17F188(&v23);
    }

    while (v23 != v24);
  }

  return result;
}

void sub_29A35939C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_PrependKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        v6 -= 3;
        sub_29A35A990(a2, 4);
        if (v33 == 1)
        {
          v10 = *(a3 + 8);
          v11 = sub_29A01BCCC(a4, __p);
          if (v9 == v11)
          {
            v18 = sub_29A1179F4(a3, 0, 0, __p);
            v19 = *v10;
            *(v19 + 8) = v18;
            *v18 = v19;
            *v10 = v18;
            v18[1] = v10;
            ++*(a3 + 16);
            v34 = __p;
            sub_29A0DD058(a4, __p, &unk_29B4D6118, &v34)[7] = v18;
          }

          else
          {
            v12 = *(v11 + 56);
            if (v12 != v10)
            {
              v13 = v12[1];
              if (v12 != v13)
              {
                v14 = *v13;
                v15 = *(v14 + 8);
                v16 = *v12;
                *(v16 + 8) = v15;
                *v15 = v16;
                v17 = *v10;
                *(v17 + 8) = v12;
                *v12 = v17;
                *v10 = v14;
                *(v14 + 8) = v10;
              }
            }
          }
        }

        if (v33 == 1 && v32 < 0)
        {
          operator delete(__p[0]);
        }
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v20 = a4 + 1;
    do
    {
      v6 -= 3;
      v21 = *(a3 + 8);
      v22 = sub_29A01BCCC(a4, v6);
      if (v20 == v22)
      {
        v29 = sub_29A1179F4(a3, 0, 0, v6);
        v30 = *v21;
        *(v30 + 8) = v29;
        *v29 = v30;
        *v21 = v29;
        v29[1] = v21;
        ++*(a3 + 16);
        __p[0] = v6;
        sub_29A0DD058(a4, v6, &unk_29B4D6118, __p)[7] = v29;
      }

      else
      {
        v23 = *(v22 + 56);
        if (v23 != v21)
        {
          v24 = v23[1];
          if (v23 != v24)
          {
            v25 = *v24;
            v26 = *(v25 + 8);
            v27 = *v23;
            *(v27 + 8) = v26;
            *v26 = v27;
            v28 = *v21;
            *(v28 + 8) = v23;
            *v23 = v28;
            *v21 = v25;
            *(v25 + 8) = v21;
          }
        }
      }
    }

    while (v6 != v7);
  }
}