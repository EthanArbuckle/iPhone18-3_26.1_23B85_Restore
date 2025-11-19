void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantSelection(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfVariableExpression::IsExpression())
  {
    *a2 = 0;
    a2[24] = 0;
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantIdentifier(a1, a2);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesSourcePath(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, uint64_t a2@<X8>)
{
  if (sub_29A3DA9E0(this))
  {
    sub_29A008E78(a2, "Relocate paths cannot contain variant selections");
    *(a2 + 24) = 1;
  }

  else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetString(this);
    std::operator+<char>();
    v5 = std::string::append(&__p, "> must be a prim path");
    v7 = v5->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
    v10[0] = v5->__r_.__value_.__r.__words[2];
    *(v10 + 3) = *(&v5->__r_.__value_.__r.__words[2] + 3);
    v8 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (v8 < 0)
    {
      sub_29A008D14(a2, v7, size);
      *(a2 + 24) = 1;
      operator delete(v7);
    }

    else
    {
      *a2 = v7;
      *(a2 + 8) = size;
      *(a2 + 16) = v10[0];
      *(a2 + 19) = *(v10 + 3);
      *(a2 + 23) = v8;
      *(a2 + 24) = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A3DA9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A3DA9E0(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  if ((atomic_load_explicit(&qword_2A1741C08, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v2 = __cxa_guard_acquire(&qword_2A1741C08);
    a1 = v4;
    if (v2)
    {
      v3 = atomic_load(pxrInternal__aapl__pxrReserved__::SDF_SCHEMA_PROHIBIT_INVALID_VARIANT_SELECTIONS);
      if (!v3)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
      }

      byte_2A1741C00 = *v3 != 0;
      __cxa_guard_release(&qword_2A1741C08);
      a1 = v4;
    }
  }

  if (byte_2A1741C00 != 1)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesTargetPath(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, _BYTE *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {

    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesSourcePath(this, a2);
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocate(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesSourcePath(a1, a2);
  if ((a2[24] & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelocatesTargetPath((a1 + 8), a2);
    if ((a2[24] & 1) == 0)
    {
      *a2 = 0;
      a2[24] = 0;
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidInheritPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, uint64_t a2@<X8>)
{
  if (sub_29A3DA9E0(this))
  {
    v5 = "Inherit paths cannot contain variant selections";
LABEL_7:
    result = sub_29A008E78(a2, v5);
    v7 = 1;
    goto LABEL_8;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this) || (result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this), (result & 1) == 0))
  {
    v5 = "Inherit paths must be absolute prim paths";
    goto LABEL_7;
  }

  v7 = 0;
  *a2 = 0;
LABEL_8:
  *(a2 + 24) = v7;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidSpecializesPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, uint64_t a2@<X8>)
{
  if (sub_29A3DA9E0(this))
  {
    v5 = "Specializes paths cannot contain variant selections";
LABEL_7:
    result = sub_29A008E78(a2, v5);
    v7 = 1;
    goto LABEL_8;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this) || (result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this), (result & 1) == 0))
  {
    v5 = "Specializes paths must be absolute prim paths";
    goto LABEL_7;
  }

  v7 = 0;
  *a2 = 0;
LABEL_8:
  *(a2 + 24) = v7;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidAttributeConnectionPath(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(this))
  {
    sub_29A008E78(a2, "Attribute connection paths cannot contain variant selections");
LABEL_9:
    *(a2 + 24) = 1;
    return;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this) && ((pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this) & 1) != 0 || pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this)))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    return;
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Connection paths must be absolute prim or property paths: <%s>", v6, v7, Text);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    *a2 = *__p;
    *(a2 + 16) = v9;
    goto LABEL_9;
  }

  sub_29A008D14(a2, __p[0], __p[1]);
  *(a2 + 24) = 1;
  operator delete(__p[0]);
}

void sub_29A3DAD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidRelationshipTargetPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(this))
  {
    v5 = "Relationship target paths cannot contain variant selections";
LABEL_9:
    result = sub_29A008E78(a2, v5);
    v7 = 1;
    goto LABEL_10;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this) || (result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this), (result & 1) == 0) && (result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this), (result & 1) == 0) && (result = pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(this), !result))
  {
    v5 = "Relationship target paths must be absolute prim, property or mapper paths";
    goto LABEL_9;
  }

  v7 = 0;
  *a2 = 0;
LABEL_10:
  *(a2 + 24) = v7;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidReference(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *this@<X0>, uint64_t a2@<X8>)
{
  if (sub_29A3DA9E0((this + 24)))
  {
    sub_29A008E78(a2, "Reference paths cannot contain variant selections");
    *(a2 + 24) = 1;
  }

  else if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 6) || pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((this + 24)) && pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((this + 24)))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 24));
    std::operator+<char>();
    v5 = std::string::append(&__p, "> must be either empty or an absolute prim path");
    v7 = v5->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
    v10[0] = v5->__r_.__value_.__r.__words[2];
    *(v10 + 3) = *(&v5->__r_.__value_.__r.__words[2] + 3);
    v8 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (v8 < 0)
    {
      sub_29A008D14(a2, v7, size);
      *(a2 + 24) = 1;
      operator delete(v7);
    }

    else
    {
      *a2 = v7;
      *(a2 + 8) = size;
      *(a2 + 16) = v10[0];
      *(a2 + 19) = *(v10 + 3);
      *(a2 + 23) = v8;
      *(a2 + 24) = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A3DAF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidPayload(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_29A3DA9E0((a1 + 24)))
  {
    sub_29A008E78(a2, "Payload paths cannot contain variant selections");
    *(a2 + 24) = 1;
  }

  else if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 24)) || pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((a1 + 24)) && pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((a1 + 24)))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 24));
    std::operator+<char>();
    v4 = std::string::append(&__p, "> must be either empty or an absolute prim path");
    v6 = v4->__r_.__value_.__r.__words[0];
    size = v4->__r_.__value_.__l.__size_;
    v9[0] = v4->__r_.__value_.__r.__words[2];
    *(v9 + 3) = *(&v4->__r_.__value_.__r.__words[2] + 3);
    v7 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v7 < 0)
    {
      sub_29A008D14(a2, v6, size);
      *(a2 + 24) = 1;
      operator delete(v6);
    }

    else
    {
      *a2 = v6;
      *(a2 + 8) = size;
      *(a2 + 16) = v9[0];
      *(a2 + 19) = *(v9 + 3);
      *(a2 + 23) = v7;
      *(a2 + 24) = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A3DB058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidSubLayer(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v23);
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v19);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v5 = v23;
    v6 = atomic_load((v4 + 144));
    if (v5 >= v6 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v23, v4))
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      v7 = sub_29A0FE7E0(&v23, 0);
      if (v7 != sub_29A11477C())
      {
        sub_29A070BA0(v18);
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
      }

      v9 = sub_29A0FE7E0(&v23, 0);
      v15.__r_.__value_.__s.__data_[0] = 0;
      v10 = sub_29A0ED084(v8 + 19, &v15);
      if (v10 != v9)
      {
        pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v8, v9, v10);
      }

      pxrInternal__aapl__pxrReserved__::TfStringJoin("; ", v18, &v15);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v15;
      }

      else
      {
        v13 = v15.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid sublayer path: %s", v11, v12, v13);
      if (SHIBYTE(v17) < 0)
      {
        sub_29A008D14(a2, __p[0], __p[1]);
        v14 = SHIBYTE(v17);
        *(a2 + 24) = 1;
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *a2 = *__p;
        *(a2 + 16) = v17;
        *(a2 + 24) = 1;
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      __p[0] = v18;
      sub_29A012C90(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v23);
  }

  else
  {
    sub_29A008E78(a2, "Sublayer paths must not be empty");
    *(a2 + 24) = 1;
  }
}

void sub_29A3DB2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  __p = &a23;
  sub_29A012C90(&__p);
  sub_29A0D2850(&a26);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark((v26 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_29A3DB328(uint64_t **a1, const void **a2, std::string *a3)
{
  v5 = sub_29A01BCCC(a1, a2);
  if (a1 + 1 == v5)
  {
    return 0;
  }

  v6 = v5;
  result = pxrInternal__aapl__pxrReserved__::JsValue::IsString((v5 + 56));
  if (result)
  {
    String = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v6 + 7));
    std::string::operator=(a3, String);
    sub_29A03AFE8(a1, v6);
    sub_29A099388((v6 + 4));
    operator delete(v6);
    return 1;
  }

  return result;
}

void *sub_29A3DB3B0(pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, void *a3, int a4)
{
  v9[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v9, a3);
  Field = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(a1, a2, v9, a4);
  sub_29A186B14(v9);
  return Field;
}

void sub_29A3DB444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3DB460()
{
  v1 = nullsub_269;
}

void pxrInternal__aapl__pxrReserved__::SdfSchema::~SdfSchema(pxrInternal__aapl__pxrReserved__::SdfSchema *this)
{
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::~SdfSchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *pxrInternal__aapl__pxrReserved__::Sdf_InitializeValueTypeNames(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1741BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741BF8))
  {
    sub_29A3DBE80();
  }

  v1 = operator new(0x378uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::Sdf_ValueTypeNamesType(v1);
  *v1 = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "BOOL");
  *(v1 + 1) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "uchar");
  *(v1 + 2) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int");
  *(v1 + 3) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "uint");
  *(v1 + 4) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int64");
  *(v1 + 5) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "uint64");
  *(v1 + 6) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half");
  *(v1 + 7) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float");
  *(v1 + 8) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double");
  *(v1 + 9) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "timecode");
  *(v1 + 10) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "string");
  *(v1 + 11) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "token");
  *(v1 + 12) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "asset");
  *(v1 + 53) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "opaque");
  *(v1 + 54) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "group");
  *(v1 + 55) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "pathExpression");
  *(v1 + 13) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int2");
  *(v1 + 14) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int3");
  *(v1 + 15) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int4");
  *(v1 + 16) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half2");
  *(v1 + 17) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half3");
  *(v1 + 18) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half4");
  *(v1 + 19) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float2");
  *(v1 + 20) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float3");
  *(v1 + 21) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float4");
  *(v1 + 22) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double2");
  *(v1 + 23) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double3");
  *(v1 + 24) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double4");
  *(v1 + 25) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "point3h");
  *(v1 + 26) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "point3f");
  *(v1 + 27) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "point3d");
  *(v1 + 28) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "vector3h");
  *(v1 + 29) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "vector3f");
  *(v1 + 30) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "vector3d");
  *(v1 + 31) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "normal3h");
  *(v1 + 32) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "normal3f");
  *(v1 + 33) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "normal3d");
  *(v1 + 34) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color3h");
  *(v1 + 35) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color3f");
  *(v1 + 36) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color3d");
  *(v1 + 37) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color4h");
  *(v1 + 38) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color4f");
  *(v1 + 39) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color4d");
  *(v1 + 40) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "quath");
  *(v1 + 41) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "quatf");
  *(v1 + 42) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "quatd");
  *(v1 + 43) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "matrix2d");
  *(v1 + 44) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "matrix3d");
  *(v1 + 45) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "matrix4d");
  *(v1 + 46) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "frame4d");
  *(v1 + 48) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord2f");
  *(v1 + 49) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord2d");
  *(v1 + 47) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord2h");
  *(v1 + 51) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord3f");
  *(v1 + 52) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord3d");
  *(v1 + 50) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord3h");
  *(v1 + 56) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "BOOL[]");
  *(v1 + 57) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "uchar[]");
  *(v1 + 58) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int[]");
  *(v1 + 60) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "uint[]");
  *(v1 + 59) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "ushort[]");
  *(v1 + 61) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int64[]");
  *(v1 + 62) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "uint64[]");
  *(v1 + 63) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half[]");
  *(v1 + 64) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float[]");
  *(v1 + 65) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double[]");
  *(v1 + 66) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "timecode[]");
  *(v1 + 67) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "string[]");
  *(v1 + 68) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "token[]");
  *(v1 + 69) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "asset[]");
  *(v1 + 110) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "pathExpression[]");
  *(v1 + 70) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int2[]");
  *(v1 + 71) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int3[]");
  *(v1 + 72) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "int4[]");
  *(v1 + 73) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half2[]");
  *(v1 + 74) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half3[]");
  *(v1 + 75) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "half4[]");
  *(v1 + 76) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float2[]");
  *(v1 + 77) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float3[]");
  *(v1 + 78) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "float4[]");
  *(v1 + 79) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double2[]");
  *(v1 + 80) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double3[]");
  *(v1 + 81) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "double4[]");
  *(v1 + 82) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "point3h[]");
  *(v1 + 83) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "point3f[]");
  *(v1 + 84) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "point3d[]");
  *(v1 + 85) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "vector3h[]");
  *(v1 + 86) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "vector3f[]");
  *(v1 + 87) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "vector3d[]");
  *(v1 + 88) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "normal3h[]");
  *(v1 + 89) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "normal3f[]");
  *(v1 + 90) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "normal3d[]");
  *(v1 + 91) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color3h[]");
  *(v1 + 92) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color3f[]");
  *(v1 + 93) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color3d[]");
  *(v1 + 94) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color4h[]");
  *(v1 + 95) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color4f[]");
  *(v1 + 96) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "color4d[]");
  *(v1 + 97) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "quath[]");
  *(v1 + 98) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "quatf[]");
  *(v1 + 99) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "quatd[]");
  *(v1 + 100) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "matrix2d[]");
  *(v1 + 101) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "matrix3d[]");
  *(v1 + 102) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "matrix4d[]");
  *(v1 + 103) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "frame4d[]");
  *(v1 + 105) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord2f[]");
  *(v1 + 106) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord2d[]");
  *(v1 + 104) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord2h[]");
  *(v1 + 108) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord3f[]");
  *(v1 + 109) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord3d[]");
  *(v1 + 107) = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(&qword_2A1741BF0, "texCoord3h[]");
  return v1;
}

uint64_t sub_29A3DBED4(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 8) = *a3;
  v4 = *(a3 + 8);
  *(result + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29A3DBF38(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        sub_29A166F2C(v8 + 2, v4 + 2);
        *(v8 + 12) = *(v4 + 12);
        sub_29A166F2C(v8 + 4, v4 + 4);
        v10 = *v8;
        sub_29A166EC8(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_29A2845E4(a1, v10);
  }

  while (v4 != a3)
  {
    sub_29A3DC044(a1, v4 + 2);
    v4 = *v4;
  }
}

void sub_29A3DC018(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29A2845E4(v1, v2);
  __cxa_rethrow();
}

void *sub_29A3DC044(void *a1, uint64_t *a2)
{
  v4 = operator new(0x28uLL);
  *v4 = 0;
  v4[1] = 0;
  sub_29A3DC0E8((v4 + 2), a2);
  v4[1] = bswap64(0x9E3779B97F4A7C55 * (v4[2] & 0xFFFFFFFFFFFFFFF8));
  return sub_29A166EC8(a1, v4);
}

uint64_t sub_29A3DC0E8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 8) = *(a2 + 4);
  v3 = a2[2];
  *(result + 16) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29A3DC14C(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = *a2;
  *a1 = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::TfType::TfType((a1 + 8));
  sub_29A186EF4((a1 + 16), a3);
  sub_29A186EF4((a1 + 32), a4);
  *(a1 + 80) = 0u;
  v8 = MEMORY[0x29EDC94D0];
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = v8;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_29A3DC1F0(_Unwind_Exception *a1)
{
  sub_29A186B14((v1 + 2));
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

double sub_29A3DC224(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = *a3;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v5 = MEMORY[0x29EDC94D0];
  *(a1 + 88) = 0;
  *(a1 + 96) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_29A3DC288(uint64_t a1)
{
  sub_29A3DC2C4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A3DC2C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A3DC308((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A3DC308(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A3E01A4(&v4);
  result = sub_29A186B14(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A3DC378(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &unk_2A20443C3;
  LOBYTE(v8[0]) = *a3;
  v7[1] = &off_2A20474B8;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29A3DC47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3DC4DC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_29A186B14(a1 + 32);
  sub_29A186B14(a1 + 16);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A3DC560(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &unk_2A2044533;
  LOBYTE(v8[0]) = *a3;
  v7[1] = &off_2A2043DD0;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29A3DC664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DC6C4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &unk_2A204475B;
  LODWORD(v8[0]) = *a3;
  v7[1] = &off_2A2043D18;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29A3DC7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DC828(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &unk_2A2044813;
  LODWORD(v8[0]) = *a3;
  v7[1] = &off_2A2043C60;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29A3DC92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DC98C(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[0] = *a3;
  v8[1] = &unk_2A2044A3B;
  v7[1] = &off_2A2047630;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

void sub_29A3DCA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DCAEC(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[0] = *a3;
  v8[1] = &unk_2A2044AF3;
  v7[1] = &off_2A2047718;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

void sub_29A3DCBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DCC4C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &off_2A2044BA8 + 3;
  LOWORD(v8[0]) = *a3;
  v7[1] = &off_2A2043028;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29A3DCD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DCDB0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &unk_2A2044C63;
  LODWORD(v8[0]) = *a3;
  v7[1] = &off_2A2042F70;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29A3DCEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DCF14(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &unk_2A2044D1B;
  v8[0] = *a3;
  v7[1] = &off_2A20430E0;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29A3DD018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3DD078(uint64_t a1, uint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9, a2, 0);
  v11[0] = *a3;
  v11[1] = &off_2A2047830 + 1;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v10[1] = &off_2A20478F8;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v10[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v9, v11, v10);
  sub_29A186B14(v10);
  sub_29A213190(v7);
  sub_29A186B14(v11);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A3DD178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DD1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &off_2A2044DD0;
  sub_29A1B01B8(v8, a3);
  v7[1] = off_2A20479C8;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29A3DD2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DD344(uint64_t a1, uint64_t a2, void *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[0] = *a3;
  v9[1] = &off_2A2044E88 + 1;
  if ((v9[0] & 7) != 0)
  {
    v5 = v9[0] & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9[0] = v5;
    }
  }

  v8[1] = off_2A2047A80;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

void sub_29A3DD460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3DD4C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9, a2, 0);
  v11[1] = &off_2A2047B38;
  sub_29A215A28(v11, a3);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v10[1] = off_2A2047BF0;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v10[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v9, v11, v10);
  sub_29A186B14(v10);
  sub_29A216064(v7);
  sub_29A186B14(v11);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A3DD5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3DD62C(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A204D438 + 3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v8[1] = &off_2A2047CA8;
  v3 = operator new(0x30uLL);
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  atomic_store(0, v3 + 10);
  v8[0] = v3;
  atomic_fetch_add_explicit(v3 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  sub_29A213190(v5);
  sub_29A186B14(v9);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A3DD724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DD784(uint64_t a1, uint64_t a2)
{
  v2[5] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2, a2, 0);
  v2[4] = &off_2A2047D78;
  sub_29A218D70();
}

void sub_29A3DD888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DD8F0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A20426D0 + 2;
  v5 = operator new(0x18uLL);
  *v5 = *a3;
  atomic_store(0, v5 + 4);
  v9[0] = v5;
  atomic_fetch_add_explicit(v5 + 4, 1u, memory_order_relaxed);
  v8[1] = &off_2A2043308;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29A3DDA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DDA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A20428F8 + 2;
  v5 = operator new(0x20uLL);
  *v5 = *a3;
  *(v5 + 2) = *(a3 + 16);
  atomic_store(0, v5 + 6);
  v9[0] = v5;
  atomic_fetch_add_explicit(v5 + 6, 1u, memory_order_relaxed);
  v8[1] = &off_2A2043530;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29A3DDB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DDC00(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v10[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, a2, 0);
  v10[1] = &off_2A2042B20 + 2;
  v5 = operator new(0x28uLL);
  v6 = a3[1];
  *v5 = *a3;
  *(v5 + 1) = v6;
  atomic_store(0, v5 + 8);
  v10[0] = v5;
  atomic_fetch_add_explicit(v5 + 8, 1u, memory_order_relaxed);
  v9[1] = &off_2A2043758;
  v7 = operator new(0x30uLL);
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  atomic_store(0, v7 + 10);
  v9[0] = v7;
  atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v8, v10, v9);
  sub_29A186B14(v9);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29A3DDD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DDD84(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[0] = *a3;
  v8[1] = &off_2A2042618 + 3;
  v7[1] = &off_2A2043198;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29A3DDE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DDEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A2042840 + 2;
  v5 = operator new(0x10uLL);
  *v5 = *a3;
  v5[2] = *(a3 + 8);
  atomic_store(0, v5 + 3);
  v9[0] = v5;
  atomic_fetch_add_explicit(v5 + 3, 1u, memory_order_relaxed);
  v8[1] = &off_2A20433C0;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29A3DE008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DE070(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A2042A68 + 2;
  v5 = operator new(0x14uLL);
  *v5 = *a3;
  atomic_store(0, v5 + 4);
  v9[0] = v5;
  atomic_fetch_add_explicit(v5 + 4, 1u, memory_order_relaxed);
  v8[1] = &off_2A20435E8;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29A3DE18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DE1F4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &off_2A2042560 + 3;
  LODWORD(v8[0]) = *a3;
  v7[1] = &off_2A2043250;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29A3DE2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DE358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[1] = &off_2A2042788 + 3;
  LODWORD(v8[0]) = *a3;
  WORD2(v8[0]) = *(a3 + 4);
  v7[1] = &off_2A2043478;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29A3DE464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DE4C4(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[0] = *a3;
  v8[1] = &off_2A20429B0 + 3;
  v7[1] = &off_2A20436A0;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29A3DE5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DE624(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[0] = *a3;
  v8[1] = &off_2A2047EE8 + 3;
  v7[1] = &off_2A2047FA0;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29A3DE724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DE784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A2048058 + 2;
  v5 = operator new(0x10uLL);
  *v5 = *a3;
  v5[2] = *(a3 + 8);
  atomic_store(0, v5 + 3);
  v9[0] = v5;
  atomic_fetch_add_explicit(v5 + 3, 1u, memory_order_relaxed);
  v8[1] = &off_2A2048110;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29A3DE8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DE910(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A20481C8 + 2;
  v5 = operator new(0x14uLL);
  *v5 = *a3;
  atomic_store(0, v5 + 4);
  v9[0] = v5;
  atomic_fetch_add_explicit(v5 + 4, 1u, memory_order_relaxed);
  v8[1] = &off_2A2048280;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29A3DEA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DEA94(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2, 0);
  v8[0] = *a3;
  v8[1] = &off_2A2042E00 + 1;
  v7[1] = &off_2A2043A38;
  v5 = operator new(0x30uLL);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  atomic_store(0, v5 + 10);
  v7[0] = v5;
  atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v6, v8, v7);
  sub_29A186B14(v7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

void sub_29A3DEB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DEBF4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7, a2, 0);
  v9[1] = &off_2A2042D48;
  v5 = operator new(0x14uLL);
  *v5 = *a3;
  atomic_store(0, v5 + 4);
  v9[0] = v5;
  atomic_fetch_add_explicit(v5 + 4, 1u, memory_order_relaxed);
  v8[1] = &off_2A2043980;
  v6 = operator new(0x30uLL);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  atomic_store(0, v6 + 10);
  v8[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v7, v9, v8);
  sub_29A186B14(v8);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

void sub_29A3DED0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DED74(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v10[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, a2, 0);
  v10[1] = &off_2A2042EB8;
  v5 = operator new(0x28uLL);
  v6 = a3[1];
  *v5 = *a3;
  *(v5 + 1) = v6;
  atomic_store(0, v5 + 8);
  v10[0] = v5;
  atomic_fetch_add_explicit(v5 + 8, 1u, memory_order_relaxed);
  v9[1] = &off_2A2043AF0;
  v7 = operator new(0x30uLL);
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  atomic_store(0, v7 + 10);
  v9[0] = v7;
  atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v8, v10, v9);
  sub_29A186B14(v9);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

void sub_29A3DEE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DEEF4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v10[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, a2, 0);
  v10[1] = &off_2A2048338 + 2;
  v5 = operator new(0x28uLL);
  v6 = a3[1];
  *v5 = *a3;
  *(v5 + 1) = v6;
  atomic_store(0, v5 + 8);
  v10[0] = v5;
  atomic_fetch_add_explicit(v5 + 8, 1u, memory_order_relaxed);
  v9[1] = &off_2A20483F0;
  v7 = operator new(0x30uLL);
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  atomic_store(0, v7 + 10);
  v9[0] = v7;
  atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v8, v10, v9);
  sub_29A186B14(v9);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

void sub_29A3DF010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DF078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9, a2, 0);
  v11[1] = &off_2A20484A8 + 2;
  v5 = operator new(0x50uLL);
  v6 = *(a3 + 48);
  *(v5 + 2) = *(a3 + 32);
  *(v5 + 3) = v6;
  *(v5 + 8) = *(a3 + 64);
  v7 = *(a3 + 16);
  *v5 = *a3;
  *(v5 + 1) = v7;
  atomic_store(0, v5 + 18);
  v11[0] = v5;
  atomic_fetch_add_explicit(v5 + 18, 1u, memory_order_relaxed);
  v10[1] = &off_2A2048560;
  v8 = operator new(0x30uLL);
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  atomic_store(0, v8 + 10);
  v10[0] = v8;
  atomic_fetch_add_explicit(v8 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v9, v11, v10);
  sub_29A186B14(v10);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29A3DF1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3DF20C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v13[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11, a2, 0);
  v13[1] = &off_2A2042BD8 + 2;
  v5 = operator new(0x88uLL);
  v6 = a3[5];
  *(v5 + 4) = a3[4];
  *(v5 + 5) = v6;
  v7 = a3[7];
  *(v5 + 6) = a3[6];
  *(v5 + 7) = v7;
  v8 = a3[1];
  *v5 = *a3;
  *(v5 + 1) = v8;
  v9 = a3[3];
  *(v5 + 2) = a3[2];
  *(v5 + 3) = v9;
  atomic_store(0, v5 + 32);
  v13[0] = v5;
  atomic_fetch_add_explicit(v5 + 32, 1u, memory_order_relaxed);
  v12[1] = &off_2A2043810;
  v10 = operator new(0x30uLL);
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  atomic_store(0, v10 + 10);
  v12[0] = v10;
  atomic_fetch_add_explicit(v10 + 10, 1u, memory_order_relaxed);
  sub_29A3DC14C(a1, &v11, v13, v12);
  sub_29A186B14(v12);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29A3DF340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType *sub_29A3DF3A8(atomic_ullong *a1)
{
  result = sub_29A3DF3F0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType::~SdfValueRoleNames_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType *sub_29A3DF3F0()
{
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType::SdfValueRoleNames_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29A3DF540(uint64_t a1, int a2, char *__s)
{
  sub_29A008E78(__p, __s);
  if (a2)
  {
    v5 = 0;
    *a1 = 0;
  }

  else
  {
    if (SHIBYTE(v8) < 0)
    {
      sub_29A008D14(a1, __p[0], __p[1]);
    }

    else
    {
      *a1 = *__p;
      *(a1 + 16) = v8;
    }

    v5 = 1;
  }

  *(a1 + 24) = v5;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29A3DF5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3DF5E8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48CC82 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A204C558);
}

void **sub_29A3DF674(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3DF5E8(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3DF708, &stru_2A204C558);
  }
}

uint64_t sub_29A3DF70C@<X0>(void *a1@<X8>)
{
  sub_29A3DF760(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  v4[0] = 0;
  a1[2] = &stru_2A204C558;
  return v2(0);
}

void sub_29A3DF760(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v4 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v3, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(v2, __p, &v4, v3);
  *a1 = v2;
  a1[1] = sub_29A3DF848;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  sub_29A1DE3A4(&v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3DF81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_29A1DCEA8(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_29A3DF848(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
    sub_29A1DE3A4((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    operator delete(a1);
  }
}

void sub_29A3DF8B0(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t sub_29A3DF954(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48C7EBLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A204CD38);
}

void **sub_29A3DF9E0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3DF954(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3DFA74, &stru_2A204CD38);
  }
}

uint64_t sub_29A3DFA78@<X0>(void *a1@<X8>)
{
  sub_29A3DFACC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  v4[0] = 0;
  a1[2] = &stru_2A204CD38;
  return v2(0);
}

void sub_29A3DFACC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v5 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v4, 0.0, 1.0);
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(v2, __p, &v5, v4, &v3);
  *a1 = v2;
  a1[1] = sub_29A3DFBDC;
  sub_29A184A10(&v3, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  sub_29A1DE3A4(&v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3DFB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, int a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A184A10(&a10, 0);
  sub_29A1DCEA8(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

void sub_29A3DFBDC(uint64_t a1)
{
  if (a1)
  {
    sub_29A184A10((a1 + 48), 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
    sub_29A1DE3A4((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    operator delete(a1);
  }
}

uint64_t sub_29A3DFC50(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48D657 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A204D4F0);
}

void **sub_29A3DFCDC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3DFC50(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3DFD70, &stru_2A204D4F0);
  }
}

_DWORD *sub_29A3DFD70@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x10uLL);
  result = sub_29A3DFDB8(v2);
  *a1 = result;
  a1[1] = sub_29A3DFE14;
  a1[2] = &stru_2A204D4F0;
  return result;
}

_DWORD *sub_29A3DFDB8(_DWORD *a1)
{
  *a1 = 0;
  v2 = a1 + 3;
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v3 + 1);
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2);
  return a1;
}

void sub_29A3DFE14(_DWORD *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
    sub_29A1DE3A4(a1 + 2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);
    v2 = sub_29A1DE3A4(a1);

    operator delete(v2);
  }
}

uint64_t sub_29A3DFE7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = *a3;
  v6 = *(a3 + 8);
  *(a1 + 16) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 24), (a3 + 16));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_29A3DFF98((a1 + 40), *(a3 + 32), *(a3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 40) - *(a3 + 32)) >> 3));
  v7 = *(a3 + 56);
  v8 = *(a3 + 72);
  *(a1 + 96) = *(a3 + 88);
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  return a1;
}

void sub_29A3DFF4C(_Unwind_Exception *a1)
{
  sub_29A186B14((v1 + 3));
  v3 = v1[2];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29A3DFF98(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29A3E0020(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A3E0000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A3E01A4(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3E0020(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
      sub_29A3E00AC(v4, v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A3E00F4(v8);
  return v4;
}

uint64_t *sub_29A3E00AC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A3E00F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A3E0140(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29A3E0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 8);
      if (v7)
      {
        sub_29A014BEC(v7);
      }

      v9 = *(v6 - 24);
      v6 -= 24;
      v8 = v9;
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v6 != a5);
  }
}

void sub_29A3E01A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A3E01F8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A3E01F8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {
    v5 = *(i - 8);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    v7 = *(i - 24);
    v6 = v7;
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_29A3E0260(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  sub_29A186A3C((a1 + 24), (a2 + 24));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  return a1;
}

uint64_t sub_29A3E02E4(void *a1)
{
  if ((sub_29A2279EC(a1) & 1) == 0)
  {
    sub_29A3E0360(a1);
  }

  if (a1[4] != a1[8])
  {
    sub_29A3E048C(a1);
  }

  return 1;
}

void sub_29A3E0354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A3E0360(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CA0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::VariantName");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A3E042C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_29A3E048C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48D5B0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::eof");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A3E0550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_29A3E05B0(int64x2_t *a1, uint64_t a2, char *a3)
{
  v5 = *(a2 + 232);
  if (v5)
  {
    v6 = a3;
    if (v5 <= a3)
    {
      if (a1[2].i64[1])
      {
        pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue(a2, *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x49uLL)) + 56 * (a1[2].i64[0] % 0x49uLL));

        sub_29A3E0988(a1);
      }
    }

    else
    {
      v7 = a2 + 216;
      pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::BeginTuple(a2, a2, a3);
      if (*(v7 + 8 * v6))
      {
        v10 = 0;
        do
        {
          sub_29A3E05B0(a1, a2, (v6 + 1));
          ++v10;
        }

        while (v10 < *(v7 + 8 * v6));
      }

      pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::EndTuple(a2, v8, v9);
    }
  }

  else
  {
    while (a1[2].i64[1])
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue(a2, *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x49uLL)) + 56 * (a1[2].i64[0] % 0x49uLL));
      sub_29A3E0988(a1);
    }
  }
}

uint64_t sub_29A3E071C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = 73 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == *(a1 + 40) + *(a1 + 32))
  {
    sub_29A3E07D4(a1);
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = *(a1 + 40) + *(a1 + 32);
    v8 = *(v4 + 8 * (v7 / 0x49)) + 56 * (v7 % 0x49);
  }

  result = sub_29A22501C(v8, a2);
  ++*(a1 + 40);
  return result;
}

void sub_29A3E07D4(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x49;
  v4 = v2 - 73;
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
      *&v20 = operator new(0xFF8uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0xFF8uLL);
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
  v19 = operator new(0xFF8uLL);
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

void sub_29A3E093C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A3E0988(int64x2_t *a1)
{
  sub_29A224BA0(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x49uLL)) + 56 * (a1[2].i64[0] % 0x49uLL));
  a1[2] = vaddq_s64(a1[2], xmmword_29B487130);

  return sub_29A3E0A0C(a1, 1);
}

uint64_t sub_29A3E0A0C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x49)
  {
    a2 = 1;
  }

  if (v2 < 0x92)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 73;
  }

  return v4 ^ 1u;
}

uint64_t sub_29A3E0A6C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x49];
    v7 = *v6 + 56 * (v5 % 0x49);
    v8 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (v7 != v8)
    {
      do
      {
        sub_29A224BA0(v7);
        v7 += 56;
        if (v7 - *v6 == 4088)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 36;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 73;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_29A0D6E48(a1);
}

uint64_t sub_29A3E0BC8(uint64_t a1, uint64_t a2)
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
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v17 = v8 + 24;
  v9 = *(a1 + 8);
  v10 = &v8[*a1 - v9];
  sub_29A3E0D00(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A3E0E04(&v15);
  return v14;
}

void sub_29A3E0CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3E0E04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E0D00(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = *(v4 + 1);
      v4[1] = 0;
      v4[2] = 0;
      v4 += 3;
      a4 += 24;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7 = 1;
  sub_29A3E0D9C(a1, a2, a3);
  return sub_29A3E00F4(v6);
}

void sub_29A3E0D9C(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = v4[2];
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      if ((*v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 3;
    }

    while (v4 != a3);
  }
}

uint64_t sub_29A3E0E04(uint64_t a1)
{
  sub_29A3E0E3C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A3E0E3C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 24);
    *(a1 + 16) = i - 24;
    v6 = *(i - 8);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    if ((*v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void *sub_29A3E0EB0(uint64_t a1, void *a2, uint64_t *a3)
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

  i = operator new(0x28uLL);
  *i = 0;
  i[1] = v6;
  sub_29A3DC0E8((i + 2), a3);
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

void sub_29A3E1108(uint64_t a1, char *a2)
{
  if (a2)
  {
    v3 = *(a2 + 14);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    sub_29A186B14((a2 + 32));
    sub_29A186B14((a2 + 16));
    if ((*a2 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_29A3E11A4(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry **a1, pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::~Sdf_ValueTypeRegistry(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A3E11E0(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v5 = &unk_2A20443C3;
  v4[0] = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, v4, 0);
  return sub_29A186B14(v4);
}

void sub_29A3E125C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3E1270(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[1] = off_2A2047A80;
  v4 = operator new(0x30uLL);
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  atomic_store(0, v4 + 10);
  v5[0] = v4;
  atomic_fetch_add_explicit(v4 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v5, 0);
  sub_29A186B14(v5);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

void sub_29A3E132C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29A3E1368(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = 0;
  v5[1] = &off_2A2042030;
  sub_29A187864(v5, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v5, 0);
  sub_29A186B14(v5);
  sub_29A184A10(&v4, 0);
}

void sub_29A3E1404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  sub_29A186B14(&a10);
  sub_29A184A10(&a9, 0);
  _Unwind_Resume(a1);
}

void sub_29A3E142C(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v4);
  v8[1] = &off_2A2047B38;
  sub_29A215A28(v8, v4);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v8, 0);
  sub_29A186B14(v8);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_29A3E14E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 - 40);
  sub_29A0D2850(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E150C(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4[0] = 0;
  v4[1] = &off_2A2044E88 + 1;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, v4, 0);
  return sub_29A186B14(v4);
}

void sub_29A3E1584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3E1598(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v6[1] = &off_2A2044DD0;
  sub_29A1B01B8(v6, __p);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v6, 0);
  sub_29A186B14(v6);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3E163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_29A186B14(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A3E1760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 - 40);
  sub_29A1E1E38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E178C(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, v4, 0);
  return sub_29A186B14(v4);
}

void sub_29A3E17F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3E180C(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[1] = off_2A20479C8;
  v4 = operator new(0x30uLL);
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  atomic_store(0, v4 + 10);
  v5[0] = v4;
  atomic_fetch_add_explicit(v4 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v5, 0);
  sub_29A186B14(v5);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29A3E18C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t sub_29A3E1904(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v6[1] = &off_2A2048D70;
  v4 = operator new(0x18uLL);
  *v4 = MEMORY[0x29EDC94D0];
  v4[2] = 0;
  atomic_store(0, v4 + 4);
  v6[0] = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v6, 0);
  return sub_29A186B14(v6);
}

void sub_29A3E19B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E19C4(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4[0] = 0;
  v4[1] = &unk_2A2044D1B;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, v4, 0);
  return sub_29A186B14(v4);
}

void sub_29A3E1A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E1A50(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v5 = &unk_2A204475B;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, &v4, 0);
  return sub_29A186B14(&v4);
}

void sub_29A3E1ACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3E1AE0()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = &off_2A2049080;
  sub_29A23FC78();
}

void sub_29A3E1B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  sub_29A186B14(va2);
  va_copy(v7, va);
  sub_29A23F9D4(va1);
  _Unwind_Resume(a1);
}

void sub_29A3E1BB0()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = &off_2A2049148;
  sub_29A242610();
}

void sub_29A3E1C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  sub_29A186B14(va2);
  va_copy(v7, va);
  sub_29A124AB0(va1);
  _Unwind_Resume(a1);
}

void sub_29A3E1D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 - 40);
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E1DA4(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v5 = &off_2A2048CA8 + 3;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, &v4, 0);
  return sub_29A186B14(&v4);
}

void sub_29A3E1E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3E1F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 - 40);
  sub_29A246038(va);
  _Unwind_Resume(a1);
}

void sub_29A3E1F58(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  v6[1] = &off_2A20495E8;
  sub_29A2575EC(v6, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v6, 0);
  sub_29A186B14(v6);
  sub_29A1F9B0C(&v4, v5[0]);
}

void sub_29A3E2000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  sub_29A186B14(&a12);
  sub_29A1F9B0C(&a9, a10);
  _Unwind_Resume(a1);
}

void sub_29A3E2028(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  v6[1] = &off_2A2048FB8;
  sub_29A23F794(v6, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v6, 0);
  sub_29A186B14(v6);
  sub_29A1EF938(&v4, v5[0]);
}

void sub_29A3E20D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  sub_29A186B14(&a12);
  sub_29A1EF938(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E20F8(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v5 = &off_2A2049888 + 3;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, &v4, 0);
  return sub_29A186B14(&v4);
}

void sub_29A3E2174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3E2188(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v4);
  v6[1] = &off_2A20496D0;
  sub_29A25B92C(v6, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v6, 0);
  sub_29A186B14(v6);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29A3E2228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  _Unwind_Resume(a1);
}

void sub_29A3E2258()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = &off_2A2048B60;
  sub_29A22C0F0();
}

void sub_29A3E22FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  sub_29A186B14(va2);
  va_copy(v7, va);
  sub_29A012C90(va1);
  _Unwind_Resume(a1);
}

void sub_29A3E23CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_29A186B14(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A3E24F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 - 40);
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

void sub_29A3E251C(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  v6[1] = &off_2A2049438;
  sub_29A24D9BC(v6, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v3, a2, v6, 0);
  sub_29A186B14(v6);
  sub_29A01752C(&v4, v5[0]);
}

void sub_29A3E25C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  sub_29A186B14(&a12);
  sub_29A01752C(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E25EC(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v5 = &off_2A20494F0 + 3;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_CreateField(v2, a2, &v4, 0);
  return sub_29A186B14(&v4);
}

void sub_29A3E2668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3E267C()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = &off_2A2048F00;
  sub_29A23E64C();
}

void sub_29A3E2720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  sub_29A186B14(va2);
  va_copy(v7, va);
  sub_29A1E234C(va1);
  _Unwind_Resume(a1);
}

void sub_29A3E274C(uint64_t a1, char *a2)
{
  sub_29A008E78(__p, a2);
  *(a1 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3E27A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType *sub_29A3E27C0(atomic_ullong *a1)
{
  result = sub_29A3E2808();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType::~SdfMetadataDisplayGroupTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType *sub_29A3E2808()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType::SdfMetadataDisplayGroupTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29A3E284C(uint64_t a1)
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

void *sub_29A3E28CC(void *a1, uint64_t a2)
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

void sub_29A3E2928(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A3E2940(void *a1, uint64_t a2, uint64_t a3)
{
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v4 = operator new(0x68uLL);
  v7[0] = &unk_2A203F7A8;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v6);
  sub_29B29D9EC(v4, a1, &v8, v7);
  (*v7[0])(v7);
  return v4;
}

void sub_29A3E29F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void))
{
  (*a11)(&a11);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E2A2C(uint64_t a1, const std::type_info *a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v12);
  if (v12[0] == v2)
  {
    v12[0] = "tf/notice.h";
    v12[1] = "GetNoticeType";
    v12[2] = 614;
    v12[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfSchemaBase>, pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr, void (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::*)(const pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins &), pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfSchemaBase>, pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr, void (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::*)(const pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins &), pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins>]";
    v13 = 0;
    v14 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((off_2A2041D60 & 0x7FFFFFFFFFFFFFFFLL), &v8);
    v3 = std::string::insert(&v8, 0, "notice type ");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v9, " undefined in the TfType system");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v12, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  return v2;
}

void sub_29A3E2B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3E2B98(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = (*(*a1 + 24))(a1);
  result = pxrInternal__aapl__pxrReserved__::TfType::IsA(a2, v6);
  if (result)
  {
    IsInvalid = pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::IsInvalid((a1 + 56));
    result = 0;
    if (a3)
    {
      if ((IsInvalid & 1) == 0)
      {
        return pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::GetWeakBase((a1 + 56)) == a3;
      }
    }
  }

  return result;
}

uint64_t sub_29A3E2C24(uint64_t a1)
{
  if (!pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::operator BOOL(a1 + 56))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::GetWeakBase((a1 + 56));
}

void *sub_29A3E2C74(uint64_t a1)
{
  v2 = operator new(0x68uLL);
  (*(*a1 + 24))(a1);
  sub_29B29D9EC(v2, (a1 + 40), (a1 + 88), a1 + 56);
  return v2;
}

void sub_29A3E2D04(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B29DF58();
}

void *sub_29A3E2D54(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
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

  sub_29A3E2F94(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A3E2F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3E311C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E2F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x78uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A3E3004((v8 + 2), a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A3E3004(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = a2[1];
  v5 = a2[2];
  *(a1 + 16) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 24), a2 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_29A3DFF98((a1 + 40), a2[5], a2[6], 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 3));
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  *(a1 + 96) = a2[12];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  return a1;
}

void sub_29A3E30D0(_Unwind_Exception *a1)
{
  sub_29A186B14((v1 + 3));
  v3 = v1[2];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A3E311C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A3DC308(v2 + 16);
    }

    operator delete(v2);
  }
}

unint64_t sub_29A3E3178()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "default", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "displayGroup", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "type", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "appliesTo", 0);
  v1 = v0 + 4;
  v2 = *v0;
  v15 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v3;
    }
  }

  v4 = v0[1];
  v16 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v5;
    }
  }

  v6 = v0[2];
  v17 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v7;
    }
  }

  v8 = v0[3];
  v18 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v9;
    }
  }

  *v1 = 0;
  v0[5] = 0;
  v0[6] = 0;
  sub_29A12EF7C(v1, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v11 = *(&v15 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = 0;
  atomic_compare_exchange_strong(&qword_2A1741BE8, &v12, v0);
  if (v12)
  {
    v13 = sub_29A1CF24C(v0);
    operator delete(v13);
    return atomic_load(&qword_2A1741BE8);
  }

  return v0;
}

void sub_29A3E332C(_Unwind_Exception *a1)
{
  v4 = 24;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29A3E33E8(uint64_t **a1, const void **a2)
{
  v3 = sub_29A01BCCC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_29A03AFE8(a1, v3);
  sub_29A099388((v4 + 4));
  operator delete(v4);
  return 1;
}

atomic_uint **sub_29A3E34A8(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 2);
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v5, v4);
    }
  }

  *a1 = v3;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(pxrInternal__aapl__pxrReserved__::SdfSpec *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 16);
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v2, v1);
    }
  }
}

{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 16);
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v2, v1);
    }
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfSpec *this@<X0>, _DWORD *a2@<X8>)
{
  v2 = *this;
  if (*this)
  {
    v3 = sub_29A1E21F4(a2, (v2 + 4)) + 1;

    return sub_29A1E2240(v3, (v2 + 8));
  }

  else
  {
    *a2 = 0;
    v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2) + 1;

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  if (*this)
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(*this + 1))
    {
      Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(*this);
      v4 = sub_29B293A0C(Layer);
      if (v5 & 1 | v4)
      {
        sub_29A1DA6E4(Layer);
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v1 = *this;
  if (v1)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(v1);
    v4 = Layer[1];
    v5[0] = *Layer;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    sub_29A1DA6E4(v5);
  }

  return 0;
}

void sub_29A3E3718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **pxrInternal__aapl__pxrReserved__::SdfSpec::ListFields@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  if (*this)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(*this);
    v3 = Layer[1];
    v4[0] = *Layer;
    v4[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    }

    sub_29A1DA6E4(v4);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return this;
}

void sub_29A3E37B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfSpec::_HasField(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  result = *a1;
  if (result)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(result);
    sub_29A1DA6E4(Layer);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  result = *this;
  if (result)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(result);
    sub_29A1DA6E4(Layer);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **pxrInternal__aapl__pxrReserved__::SdfSpec::GetField@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  if (*this)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(*this);
    sub_29A1DA6E4(Layer);
  }

  *(a2 + 8) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  if (*this)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(*this);
    sub_29A1DA6E4(Layer);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (*this)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(*this);
    sub_29A1DA6E4(Layer);
  }

  return 0;
}

uint64_t sub_29A3E39C4(void *a1, unsigned int a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition *this)
{
  if (this)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::IsReadOnly(this))
    {
      v15 = "sdf/spec.cpp";
      v16 = "_CanEditInfoOnSpec";
      v17 = 212;
      v18 = "BOOL pxrInternal__aapl__pxrReserved__::_CanEditInfoOnSpec(const TfToken &, SdfSpecType, const SdfSchemaBase &, const SdfSchema::FieldDefinition *, const char *)";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Cannot %s value for read-only field '%s'");
    }

    else
    {
      Name = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::GetName(this);
      if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidFieldForSpec(a3, Name, a2))
      {
        return 1;
      }

      v15 = "sdf/spec.cpp";
      v16 = "_CanEditInfoOnSpec";
      v17 = 219;
      v18 = "BOOL pxrInternal__aapl__pxrReserved__::_CanEditInfoOnSpec(const TfToken &, SdfSpecType, const SdfSchemaBase &, const SdfSchema::FieldDefinition *, const char *)";
      v19 = 0;
      v10 = *a1 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a2, __p);
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Field '%s' is not valid for spec type %s", v11, v12);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v15 = "sdf/spec.cpp";
    v16 = "_CanEditInfoOnSpec";
    v17 = 206;
    v18 = "BOOL pxrInternal__aapl__pxrReserved__::_CanEditInfoOnSpec(const TfToken &, SdfSpecType, const SdfSchemaBase &, const SdfSchema::FieldDefinition *, const char *)";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Cannot %s value for unknown field '%s'");
  }

  return 0;
}

void sub_29A3E3BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfSpec::SetInfoDictionaryValue(pxrInternal__aapl__pxrReserved__::SdfSpec *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29A3E3D84(this, v4);
  sub_29A3BBFD8();
}

void sub_29A3E3D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  sub_29A186B14(va1);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A3E3D84(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1 && (v2 = *a1) != 0)
  {
    atomic_fetch_add(v2, 1u);
    *a2 = v2;
    atomic_fetch_add(v2, 1u);
    v3 = *(v2 + 16);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v3, v2);
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_29A3E3DC0@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  result = sub_29A3E4384(a1);
  if (result)
  {
    v5 = (*(**a1 + 48))();

    return pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a2, v5);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_29A3E3F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    sub_29B29E87C(a2);
  }

  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfSpec::GetFallbackForInfo(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((atomic_load_explicit(&qword_2A1741C28, memory_order_acquire) & 1) == 0)
  {
    sub_29B29E8B0();
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
}

void sub_29A3E415C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfSpec::IsInert(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v1 = *this;
  if (v1)
  {
    Layer = pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(v1);
    v4 = Layer[1];
    v5[0] = *Layer;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    sub_29A1DA6E4(v5);
  }

  return 0;
}

void sub_29A3E4204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3E4340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E4384(void *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 48))(v2) && (!*a1 || !(*(**a1 + 32))(*a1)))
  {
    return 1;
  }

  v4[0] = "sdf/mapEditProxy.h";
  v4[1] = "_Validate";
  v4[2] = 755;
  v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_Validate() const [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Accessing an invalid map proxy");
  return 0;
}

uint64_t sub_29A3E4454(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  atomic_fetch_add(a2, 0xFFFFFFFF);
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48D875 & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo*> &)::isInitializing, 1u))
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
      v8 = operator new(0x90uLL);
      sub_29A3E50A4(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A3E4650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_instance, &v1, 0);
    if (v1 == i)
    {
      v2 = *(i + 128);
      *(i + 128) = 0;
      if (v2)
      {
        operator delete[](v2);
      }

      sub_29A0FEDE8(i + 80);
      sub_29A0FEDE8(i + 40);
      v3 = sub_29A0EB570(i);

      operator delete(v3);
      return;
    }

    sched_yield();
  }
}

void pxrInternal__aapl__pxrReserved__::SdfSpecTypeRegistration::_RegisterSpecType(pxrInternal__aapl__pxrReserved__::TfType *a1, const std::type_info *a2, pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v4 = a2;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance();
  }

  v7 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(this, a2);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&i);
  if (*v7 == i)
  {
    *&i = "sdf/specType.cpp";
    *(&i + 1) = "_RegisterSpecType";
    v38 = 121;
    v39 = "static void pxrInternal__aapl__pxrReserved__::SdfSpecTypeRegistration::_RegisterSpecType(const std::type_info &, SdfSpecType, const std::type_info &)";
    v40 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(this + 1) & 0x7FFFFFFFFFFFFFFFLL), &__p);
    if (v36 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&i, 1, "Schema type %s must be registered with the TfType system.", p_p);
LABEL_24:
    if (v36 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v9 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(a1, v8);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&i);
  if (*v9 == i)
  {
    *&i = "sdf/specType.cpp";
    *(&i + 1) = "_RegisterSpecType";
    v38 = 129;
    v39 = "static void pxrInternal__aapl__pxrReserved__::SdfSpecTypeRegistration::_RegisterSpecType(const std::type_info &, SdfSpecType, const std::type_info &)";
    v40 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a1 + 1) & 0x7FFFFFFFFFFFFFFFLL), &__p);
    if (v36 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&i, 1, "Spec type %s must be registered with the TfType system.", v20);
    goto LABEL_24;
  }

  __p = (v6 + 128);
  v35 = -1;
  sub_29A10818C(&__p);
  i = *v9;
  v12 = sub_29A11319C(v6, &i, &i) + 3;
  for (i = *(v6 + 16); i != *(&i + 1); sub_29A3E4C00(&i))
  {
    if (v4 && (v13 = sub_29A3E4BC8(&i, v10, v11), pxrInternal__aapl__pxrReserved__::TfType::IsA(v9, *(*v13 + 16))))
    {
      v14 = (*sub_29A3E4BC8(&i, v10, v11) + 24);
      v15 = 1 << v4;
    }

    else
    {
      v16 = sub_29A3E4BC8(&i, v10, v11);
      if (!pxrInternal__aapl__pxrReserved__::TfType::IsA((*v16 + 16), *v9))
      {
        continue;
      }

      v15 = *(*sub_29A3E4BC8(&i, v17, v18) + 24);
      v14 = v12;
    }

    *v14 |= v15;
  }

  if (v4 == 6)
  {
    *v12 |= 0x400uLL;
    goto LABEL_27;
  }

  if (v4)
  {
LABEL_27:
    *&i = v7;
    v21 = sub_29A3E51D0(v6 + 40, v7, &unk_29B4D6118, &i);
    v22 = v21[3];
    v23 = v21 + 3;
    if (v22 == v21[4])
    {
      sub_29A3E4C80(v21 + 3, 0xCuLL);
      v22 = *v23;
    }

    *(v22 + 8 * v4) = *v9;
  }

  *&i = v9;
  v24 = sub_29A3E51D0(v6 + 80, v9, &unk_29B4D6118, &i);
  v26 = v24[3];
  v27 = v24[4];
  v25 = (v24 + 3);
  if (v26 != v27)
  {
    while (*v26 != *v7)
    {
      if (++v26 == v27)
      {
        goto LABEL_42;
      }
    }
  }

  if (v26 == v27)
  {
LABEL_42:
    sub_29A0A71C8(v25, v7);
  }

  else
  {
    *&i = "sdf/specType.cpp";
    *(&i + 1) = "_RegisterSpecType";
    v38 = 176;
    v39 = "static void pxrInternal__aapl__pxrReserved__::SdfSpecTypeRegistration::_RegisterSpecType(const std::type_info &, SdfSpecType, const std::type_info &)";
    v40 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v9);
    v29 = *(TypeName + 23);
    v30 = *TypeName;
    v31 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v7);
    if (v29 >= 0)
    {
      v32 = TypeName;
    }

    else
    {
      v32 = v30;
    }

    if (*(v31 + 23) >= 0)
    {
      v33 = v31;
    }

    else
    {
      v33 = *v31;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&i, 1, "Spec type %s already registered for schema type %s", v32, v33);
  }

  sub_29A104D64(&__p);
}

void sub_29A3E4B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A3E4BC8(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B29E924(result, a2, a3);
  }

  return result;
}

uint64_t sub_29A3E4C00(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfType, unsigned long, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::TfType, unsigned long, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void sub_29A3E4C80(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_29A3E5428(a1, a2 - v2);
  }
}

unint64_t sub_29A3E4DF0()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_CreateInstance();
  }

  while (1)
  {
    v1 = atomic_load((v0 + 120));
    if (v1)
    {
      break;
    }

    sched_yield();
  }

  return v0;
}

BOOL sub_29A3E4E48(void *a1, char a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v10);
  if (*a3 == v10)
  {
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v9);
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v10);
    return v9 != v10;
  }

  else
  {
    v6 = sub_29A113AE0(a1, a3);
    if (v6)
    {
      v7 = v6[3];
    }

    else
    {
      v7 = 0;
    }

    return (v7 >> a2) & 1;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_SpecType::CanCast(char a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v4 = sub_29A3E4DF0();
  v10 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(a2, v5);
  v8 = v4 + 16;
  v9 = -1;
  sub_29A1081D8(&v8);
  v6 = sub_29A3E4E48(v4, a1, &v10);
  sub_29A104D64(&v8);
  return v6;
}

void sub_29A3E4F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A104D64(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_SpecType::CanCast(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::SdfSpec *a2, const std::type_info *a3)
{
  sub_29A3E4DF0();
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(this);
  pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(a2, v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
}

unint64_t sub_29A3E50A4(unint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_29A019AA0(a1, 0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0;
  v2 = pxrInternal__aapl__pxrReserved__::TfBigRWMutex::TfBigRWMutex((a1 + 128));
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::_instance, a1))
  {
    v6[0] = "tf/instantiateSingleton.h";
    v6[1] = "SetInstanceConstructed";
    v6[2] = 54;
    v6[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Sdf_SpecTypeInfo]";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v3);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v2);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A204D578);
  atomic_store(1u, (a1 + 120));
  return a1;
}

void sub_29A3E518C(_Unwind_Exception *a1)
{
  sub_29A0FEDE8(v3);
  sub_29A0FEDE8(v2);
  sub_29A0EB570(v1);
  _Unwind_Resume(a1);
}

void *sub_29A3E51D0(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (i[2] == *a2)
          {
            return i;
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

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v7;
  i[2] = **a4;
  i[3] = 0;
  i[4] = 0;
  i[5] = 0;
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
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    *i = *v20;
LABEL_38:
    *v20 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v19 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v21 = *(*i + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29A3E5428(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = (v5 + 8 * a2);
      do
      {
        pxrInternal__aapl__pxrReserved__::TfType::TfType(v5);
        v5 = (v5 + 8);
        v12 -= 8;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_29A00C9BC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v14 = &v11[8 * v8];
    v15 = &v11[8 * v10];
    v16 = 8 * a2;
    v17 = v14;
    v18 = v14 + 8 * a2;
    do
    {
      v17 = (pxrInternal__aapl__pxrReserved__::TfType::TfType(v17) + 8);
      v16 -= 8;
    }

    while (v16);
    v19 = *(a1 + 8) - *a1;
    v20 = v14 - v19;
    memcpy(v14 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    *(a1 + 16) = v15;
    if (v21)
    {

      operator delete(v21);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType::~SdfTextFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType::SdfTextFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "sdf", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "1.4.32", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "sdf", 0);
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

void sub_29A3E5754(_Unwind_Exception *a1)
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

void sub_29A3E57D4()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::SDF_TEXTFILE_SIZE_WARNING_MB))
  {
    sub_29B29E9F0();
  }
}

void pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::SdfTextFileFormat(pxrInternal__aapl__pxrReserved__::SdfTextFileFormat *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  if (!v2)
  {
    v2 = sub_29A3464EC(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  if (!v3)
  {
    v3 = sub_29A3464EC(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A3464EC(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29A3464EC(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(this, v2, v3 + 1, v4 + 2, EmptyString);
}

void pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::SdfTextFileFormat(pxrInternal__aapl__pxrReserved__::SdfTextFileFormat *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v5 = a3;
  v7 = this;
  if (!*a3)
  {
    this = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
    if (!this)
    {
      this = sub_29A3464EC(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
    }

    v5 = (this + 8);
  }

  if (!*a4)
  {
    this = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
    if (!this)
    {
      this = sub_29A3464EC(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
    }

    a4 = (this + 16);
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(v7, a2, v5, a4, EmptyString);
}

void pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::~SdfTextFileFormat(pxrInternal__aapl__pxrReserved__::SdfTextFileFormat *this)
{
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::CanRead(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    FileCookie = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileCookie(a1);
    v6 = sub_29A3E5AF4(&v10, FileCookie);
  }

  else
  {
    v6 = 0;
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return v6;
}

void sub_29A3E5AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A3E5AF4(void *a1, const char *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v18);
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v4 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v4;
  }

  if ((*(**a1 + 32))(*a1, __s, v5, 0) != v5)
  {
    goto LABEL_11;
  }

  __s[v5] = 0;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = sub_29A0FE7E0(&v18, 0);
  LOBYTE(__p[0]) = 0;
  v8 = sub_29A0ED084(v6 + 19, __p);
  if (v8 != v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v6, v7, v8);
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  sub_29A008E78(__p, __s);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v11 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = strlen(a2);
  if (v12 < v13)
  {
    v9 = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    operator delete(__p[0]);
    goto LABEL_12;
  }

  v14 = v13;
  if ((v17 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v9 = strncmp(v15, a2, v14) == 0;
  if (v11 < 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v18);
  return v9;
}

void sub_29A3E5CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::_CanReadFromAsset(pxrInternal__aapl__pxrReserved__::SdfFileFormat *a1, uint64_t a2, void *a3)
{
  FileCookie = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileCookie(a1);

  return sub_29A3E5AF4(a3, FileCookie);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::Read(pxrInternal__aapl__pxrReserved__ *a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, char a4)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    v9 = pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::_ReadFromAsset(a1, a2, a3, &v13, a4);
  }

  else
  {
    v9 = 0;
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return v9;
}

void sub_29A3E5DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::_ReadFromAsset(pxrInternal__aapl__pxrReserved__::SdfFileFormat *a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, void *a4, char a5)
{
  FileCookie = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileCookie(a1);
  if (sub_29A3E5AF4(a4, FileCookie))
  {
    v11 = atomic_load(pxrInternal__aapl__pxrReserved__::SDF_TEXTFILE_SIZE_WARNING_MB);
    if (!v11)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    v12 = *v11;
    if (v12 >= 1 && (*(**a4 + 16))() > (v12 << 20))
    {
      lpsrc = "sdf/textFileFormat.cpp";
      v30 = "_ReadFromAsset";
      v31 = 193;
      v32 = "BOOL pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::_ReadFromAsset(SdfLayer *, const string &, const std::shared_ptr<ArAsset> &, BOOL) const";
      v33 = 0;
      v13 = (*(**a4 + 16))();
      if (*(a3 + 23) >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&lpsrc, "Performance warning: reading %lu MB text-based layer <%s>.", v14, v13 >> 20, v15);
    }

    v28 = 1;
    FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
    (*(*a1 + 40))(&lpsrc, a1, FileFormatArguments);
    FormatId = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFormatId(a1);
    if ((*FormatId & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*FormatId & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(FormatId);
    }

    VersionString = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetVersionString(a1);
    if ((*VersionString & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = ((*VersionString & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(VersionString);
    }

    v25 = lpsrc;
    if (lpsrc)
    {
    }

    v27 = v25;
    sub_29B293C98(&v27);
    v22 = pxrInternal__aapl__pxrReserved__::Sdf_ParseLayer(a3, a4, EmptyString, v24, a5, &v27, &v28);
    sub_29A25FBBC(&v27);
    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::SdfFileFormat::_SetLayerData(a2, &lpsrc, v28);
    }

    sub_29A32BD28(&lpsrc);
  }

  else
  {
    lpsrc = "sdf/textFileFormat.cpp";
    v30 = "_ReadFromAsset";
    v31 = 183;
    v32 = "BOOL pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::_ReadFromAsset(SdfLayer *, const string &, const std::shared_ptr<ArAsset> &, BOOL) const";
    v33 = 0;
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    v20 = *pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFormatId(a1) & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&lpsrc, 3, "<%s> is not a valid %s layer", v19, v21);
    return 0;
  }

  return v22;
}

void sub_29A3E60F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *);
  v7 = va_arg(va1, void);
  sub_29A25FBBC(va);
  sub_29A32BD28(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::Read(pxrInternal__aapl__pxrReserved__ *a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, uint64_t a4, char a5)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v13 = *(a3 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v10 = pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::_ReadFromAsset(a1, a2, a3, &v14, a5);
  }

  else
  {
    v10 = 0;
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  return v10;
}

void sub_29A3E61E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::WriteToFile(pxrInternal__aapl__pxrReserved__ *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v19 = *(a3 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAssetForWrite(Resolver);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v22)
  {
    __p[0] = "sdf/textFileFormat.cpp";
    __p[1] = "WriteToFile";
    v19 = 357;
    v20 = "virtual BOOL pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::WriteToFile(const SdfLayer &, const std::string &, const std::string &, const FileFormatArguments &) const";
    v21 = 0;
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, "Unable to open %s for write", v12);
    v13 = 0;
    goto LABEL_23;
  }

  sub_29A1E9CFC(__p, &v22);
  FileCookie = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileCookie(a1);
  VersionString = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetVersionString(a1);
  if ((*VersionString & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*VersionString & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(VersionString);
  }

  if (!sub_29A3E6428(a2, __p, FileCookie, EmptyString, a4))
  {
    goto LABEL_21;
  }

  if ((sub_29A1F3A08(__p) & 1) == 0)
  {
    v16[0] = "sdf/textFileFormat.cpp";
    v16[1] = "WriteToFile";
    v16[2] = 367;
    v16[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::WriteToFile(const SdfLayer &, const std::string &, const std::string &, const FileFormatArguments &) const";
    v17 = 0;
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Could not close %s", v14);
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v13 = 1;
LABEL_22:
  sub_29A1F39B4(__p);
LABEL_23:
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return v13;
}

void sub_29A3E63E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_29A1F39B4(&__p);
  v22 = *(v20 - 56);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A3E6428(uint64_t **a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x29EDCA608];
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (*(a4 + 23) >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "%s %s\n", v8, v9);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(a1, v36);
  IsDormant = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v36);
  if ((IsDormant & 1) == 0)
  {
    sub_29A3ECFC0(v35);
    v11 = sub_29A2F6760(v36);
    pxrInternal__aapl__pxrReserved__::SdfSpec::ListFields(v11, v34);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
    if (!v12)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v13 = v12 + 560;
    if (!*(v12 + 624))
    {
      v13 = 0;
    }

    v37[0].__r_.__value_.__r.__words[0] = v13;
    v14 = sub_29A3E7B74(v34[0], v34[1], v37);
    if (*(a5 + 23) < 0)
    {
      v15 = *(a5 + 8);
      if (v15)
      {
        sub_29A008D14(&__dst, *a5, v15);
        goto LABEL_18;
      }
    }

    else if (*(a5 + 23))
    {
      __dst = *a5;
      goto LABEL_18;
    }

    pxrInternal__aapl__pxrReserved__::SdfLayer::GetComment(a1, &__dst);
LABEL_18:
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(v35, 1, &__dst);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(v35, 0, "\n");
    }

    v17 = 126 - 2 * __clz((v14 - v34[0]) >> 3);
    if (v14 == v34[0])
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    sub_29A2815F8(v34[0], v14, v37, v18, 1);
    v19 = v34[0];
    if (v34[0] == v14)
    {
LABEL_58:
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasRelocates(a1))
      {
        pxrInternal__aapl__pxrReserved__::SdfLayer::GetRelocates(a1, v37);
      }

      sub_29A1F3A08(v35);
      std::stringbuf::str();
      v26 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v26 = v31;
      }

      if (v26)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "(\n");
        p_p = &__p;
        if ((v32 & 0x80u) != 0)
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "%s", p_p);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, ")\n");
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::GetRootPrimOrder(a1, v37);
      sub_29A1F0334(v37, v29);
      if (v37[0].__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v37[0].__r_.__value_.__l.__size_);
      }

      if (v29[1] - v29[0] >= 9uLL)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "reorder rootPrims = ");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteNameVector(a2, 0, v29);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "\n");
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::GetRootPrims(a1);
    }

    while (1)
    {
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v20)
      {
        v20 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v20 + 17) ^ *v19) > 7)
      {
        v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v21)
        {
          v21 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        if ((*(v21 + 47) ^ *v19) > 7)
        {
          v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v24)
          {
            v24 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v24 + 23) ^ *v19) > 7)
          {
            sub_29A3E7460(v35, 1, v36, v19);
          }

          else if (pxrInternal__aapl__pxrReserved__::SdfLayer::GetHasOwnedSubLayers(a1))
          {
            pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(v35, 1, "hasOwnedSubLayers = true\n");
          }
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(v35, 1, "subLayers = [\n");
          pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(a1, v37);
          v22 = sub_29A1DCE30(v37);
          if (v37[0].__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(v37[0].__r_.__value_.__l.__size_);
          }

          if (v22)
          {
            pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(a1, &__p);
            if (sub_29A346D48(&__p))
            {
              v23 = &__p;
            }

            else
            {
              v23 = 0;
            }

            sub_29A1DF914(v23, 0, v37);
            pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteAssetPath(v35, 2, v37);
            if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37[0].__r_.__value_.__l.__data_);
            }

            if (v31)
            {
              sub_29A014BEC(v31);
            }

            pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerOffset(a1);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(v35, 1, "]\n");
        }

        goto LABEL_57;
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::GetDocumentation(a1, v37);
      if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
      {
        v25 = v37[0].__r_.__value_.__l.__size_;
        operator delete(v37[0].__r_.__value_.__l.__data_);
        if (v25)
        {
LABEL_53:
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(v35, 1, "doc = ");
          pxrInternal__aapl__pxrReserved__::SdfLayer::GetDocumentation(a1, v37);
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(v35, 0, v37);
          if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37[0].__r_.__value_.__l.__data_);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(v35, 0, "\n");
        }
      }

      else if (*(&v37[0].__r_.__value_.__s + 23))
      {
        goto LABEL_53;
      }

LABEL_57:
      v19 = (v19 + 8);
      if (v19 == v14)
      {
        goto LABEL_58;
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v36);
  return IsDormant ^ 1u;
}

void sub_29A3E6BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_29A23F9D4(&a19);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __p = &a32;
  sub_29A124AB0(&__p);
  sub_29A3E7120(&a35);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v35 - 192));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::ReadFromString(pxrInternal__aapl__pxrReserved__::SdfFileFormat *a1, pxrInternal__aapl__pxrReserved__::SdfLayer *this, const std::string *a3)
{
  v17 = 1;
  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(this);
  (*(*a1 + 40))(&lpsrc, a1, FileFormatArguments);
  pxrInternal__aapl__pxrReserved__::TfStringTrimLeft(" \n\t\r", a3, &__p);
  FormatId = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFormatId(a1);
  if ((*FormatId & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*FormatId & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(FormatId);
  }

  VersionString = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetVersionString(a1);
  if ((*VersionString & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v10 = ((*VersionString & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(VersionString);
  }

  v11 = lpsrc;
  if (lpsrc)
  {
  }

  v14 = v11;
  sub_29B293C98(&v14);
  v12 = pxrInternal__aapl__pxrReserved__::Sdf_ParseLayerFromString(&__p, EmptyString, v10, &v14);
  sub_29A25FBBC(&v14);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::SdfFileFormat::_SetLayerData(this, &lpsrc, v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A32BD28(&lpsrc);
  return v12;
}

void sub_29A3E6EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a16)
{
  sub_29A25FBBC(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A32BD28(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfTextFileFormat::WriteToString(pxrInternal__aapl__pxrReserved__::SdfFileFormat *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  sub_29A3ECFC0(v16);
  FileCookie = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileCookie(a1);
  VersionString = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetVersionString(a1);
  if ((*VersionString & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*VersionString & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(VersionString);
  }

  v11 = sub_29A3E6428(a2, v16, FileCookie, EmptyString, a4);
  if (v11)
  {
    sub_29A1F3A08(v16);
    std::stringbuf::str();
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v14;
    *(a3 + 16) = v15;
  }

  v17[0] = *MEMORY[0x29EDC9528];
  v12 = *(MEMORY[0x29EDC9528] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v17[2] = v12;
  v18 = MEMORY[0x29EDC9570] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v21);
  sub_29A1F39B4(v16);
  return v11;
}

void sub_29A3E7108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3E7120(va);
  _Unwind_Resume(a1);
}

void *sub_29A3E7120(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *(a1 + 48) = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 64) = v4;
  *(a1 + 72) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 72) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 80));
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](a1 + 176);

  return sub_29A1F39B4(a1);
}

uint64_t sub_29A3E72A0()
{
  v2 = nullsub_270;
  return sub_29A3E72FC(v0);
}

uint64_t sub_29A3E72FC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A204D670;
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

void sub_29A3E7388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3E73AC(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

uint64_t sub_29A3E7460(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, &v21);
  if (sub_29A1EFDA4(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<int>();
  }

  if (sub_29A1EFE30(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<long long>();
  }

  if (sub_29A1EFEBC(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<unsigned int>();
  }

  if (sub_29A1EFF48(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<unsigned long long>();
  }

  if (sub_29A1EFFD4(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<std::string>();
  }

  if (sub_29A1F0060(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  if (sub_29A1EFA64(&v21))
  {
    v8 = sub_29A1EFAF0(&v21);
    if (sub_29A1EFB84(v8))
    {
      v9 = v8[1];
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v8);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>();
    }

    v12 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v12)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s = ", v13);
    if (sub_29A185258(v8))
    {
      v17 = sub_29A187B1C(v8);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, a2, 1, v17, 0);
    }

    else if (sub_29A1EFC10(v8))
    {
      v18 = sub_29A1EFC48(v8);
      if (*(v18 + 23) >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = *v18;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s\n", v19);
    }
  }

  else
  {
    v10 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v10)
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      v11 = "";
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s = ", v11);
    if (sub_29A185258(&v21))
    {
      v14 = sub_29A187B1C(&v21);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, a2, 1, v14, 0);
    }

    else
    {
      if (sub_29A1EFCDC(&v21))
      {
        v15 = sub_29A1EFD10(&v21);
        pxrInternal__aapl__pxrReserved__::TfStringify(*v15, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::StringFromVtValue(&v21, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s\n", p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  return sub_29A186B14(&v21);
}

void sub_29A3E7884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3E78CC(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1);
  if ((result & 1) == 0)
  {
    Specifier = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecifier(a1);
    if (Specifier != 1)
    {
      goto LABEL_6;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v8)
    {
      v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(a1, (v8 + 464)))
    {
LABEL_6:
      pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetTypeName(a1, &__p);
      v9 = __p.__r_.__value_.__r.__words[0];
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTokens);
      if (!v10)
      {
        v10 = sub_29A1EB86C(&pxrInternal__aapl__pxrReserved__::SdfTokens);
      }

      if ((v9 ^ *v10) > 7)
      {
LABEL_12:
        v11 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(Specifier);
        v12 = " ";
        v13 = "";
        if (v9)
        {
          v14 = v9 & 0xFFFFFFFFFFFFFFF8;
          if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v13 = (v14 + 16);
            if (*(v14 + 39) < 0)
            {
              v13 = *v13;
            }
          }
        }

        else
        {
          v12 = "";
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, a3, "%s%s%s ", v11, v12, v13);
        Name = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetName(a1);
        if (*(Name + 23) >= 0)
        {
          v16 = Name;
        }

        else
        {
          v16 = *Name;
        }

        sub_29A008E78(&__p, v16);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_29A3E7C7C(a1, a2, a3);
        sub_29A008E78(&__p, "\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&__p, "{\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A3E9140(a1, a2, a3);
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v9 = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t *sub_29A3E7B74(uint64_t *a1, uint64_t *a2, void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (2)
    {
      while (sub_29A3E7C18(a3, v5))
      {
        if (++v5 == v3)
        {
          return v3;
        }
      }

      do
      {
        if (--v3 == v5)
        {
          return v5;
        }
      }

      while (!sub_29A3E7C18(a3, v3));
      v6 = *v5;
      *v5++ = *v3;
      *v3 = v6;
      if (v3 != v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

BOOL sub_29A3E7C18(void **a1, void *a2)
{
  if (sub_29A1EC328(a1, a2))
  {
    return 1;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return (*(v4 + 47) ^ *a2) < 8uLL;
}

void sub_29A3E7C7C(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, void *a2, uint64_t a3)
{
  v67[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::ListFields(a1, v63);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v7 = (v6 + 488);
  if (!*(v6 + 552))
  {
    v7 = 0;
  }

  v64.__vftable = v7;
  v8 = sub_29A1EC0D0(v63[0], v63[1], &v64);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetComment(a1, &v62);
  size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v62.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v10 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::OpenParensIfNeeded(a2, 0, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, a3 + 1, &v62);
    sub_29A008E78(&__p, "\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = 1;
    v12 = v63[0];
  }

  else
  {
    v10 = 0;
    v12 = v63[0];
    v11 = v63[0] != v8;
  }

  v13 = 126 - 2 * __clz(v8 - v12);
  if (v8 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  sub_29A1EC380(v12, v8, &v64, v14, 1);
  v15 = v63[0];
  if (v63[0] != v8)
  {
    v51 = a3 + 1;
    if (v11)
    {
      v16 = a3 + 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = "";
    if (v11)
    {
      v17 = "\n";
    }

    v50 = v17;
    while (1)
    {
      v10 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::OpenParensIfNeeded(a2, v10 & 1, v11);
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v18)
      {
        v18 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v18 + 17) ^ *v15) <= 7)
      {
        sub_29A008E78(&__p, "doc = ");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetDocumentation(a1, &__p);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&__p, "\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_130;
      }

      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v19)
      {
        v19 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v19 + 32) ^ *v15) <= 7)
      {
        Permission = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPermission(a1);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(Permission);
        if (v11)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v51, "permission = %s\n");
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "permission = %s");
        }

        goto LABEL_130;
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v21)
      {
        v21 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v21 + 54) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSymmetryFunction(a1, &__p);
        v22 = __p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8;
        if ((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
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

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v16, "symmetryFunction = %s%s", v23, v50);
        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_130;
      }

      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v24)
      {
        v24 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v24 + 31) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "payload");
        if (sub_29A1EF030(&v66))
        {
          if ((v67[0] & 4) != 0)
          {
            (*((v67[0] & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>();
        }

        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
        __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
        __p.__r_.__value_.__r.__words[2] = 384;
        v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
        LOBYTE(v55.__type_name) = 0;
        v26 = *v15 & 0xFFFFFFFFFFFFFFF8;
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

        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
        v35 = &v64;
        if (v65 < 0)
        {
          v35 = v64.__vftable;
        }

        goto LABEL_127;
      }

      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v28)
      {
        v28 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v28 + 36) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "references");
        if (sub_29A1EF0BC(&v66))
        {
          if ((v67[0] & 4) != 0)
          {
            (*((v67[0] & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfReference>();
        }

        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
        __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
        __p.__r_.__value_.__r.__words[2] = 393;
        v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
        LOBYTE(v55.__type_name) = 0;
        v30 = *v15 & 0xFFFFFFFFFFFFFFF8;
        if (v30)
        {
          v27 = (v30 + 16);
          if (*(v30 + 39) < 0)
          {
            v27 = *v27;
          }
        }

        else
        {
          v27 = "";
        }

        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
        v35 = &v64;
        if (v65 < 0)
        {
          v35 = v64.__vftable;
        }

        goto LABEL_127;
      }

      v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v31)
      {
        v31 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v31 + 61) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSetNameList(a1);
      }

      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v32)
      {
        v32 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v32 + 24) ^ *v15) <= 7)
      {
        break;
      }

      v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v36)
      {
        v36 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v36 + 39) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "specializes");
        v37 = sub_29A1EB994(a2, v51, &__p, &v66);
        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v37 & 1) == 0)
        {
          __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
          __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
          __p.__r_.__value_.__r.__words[2] = 453;
          v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
          LOBYTE(v55.__type_name) = 0;
          v38 = *v15 & 0xFFFFFFFFFFFFFFF8;
          if (v38)
          {
            v27 = (v38 + 16);
            if (*(v38 + 39) < 0)
            {
              v27 = *v27;
            }
          }

          else
          {
            v27 = "";
          }

          pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
          v35 = &v64;
          if (v65 < 0)
          {
            v35 = v64.__vftable;
          }

LABEL_127:
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "'%s' field holding unexpected type '%s'", v27, v35);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(v64.__vftable);
          }
        }

LABEL_129:
        sub_29A186B14(&v66);
        goto LABEL_130;
      }

      v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v39)
      {
        v39 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v39 + 37) ^ *v15) > 7)
      {
        v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v44)
        {
          v44 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        if ((*(v44 + 34) ^ *v15) > 7)
        {
          v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v45)
          {
            v45 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v45 + 50) ^ *v15) > 7)
          {
            v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v46)
            {
              v46 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            if ((*(v46 + 59) ^ *v15) > 7)
            {
              sub_29A3E7460(a2, v51, a1, v15);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSelections(a1, &v64);
              sub_29A1EBAFC(&v64, &__p);
              if (v64.__type_name)
              {
                sub_29A014BEC(v64.__type_name);
              }

              if (__p.__r_.__value_.__r.__words[2])
              {
                v59 = 0;
                v64.__vftable = __p.__r_.__value_.__r.__words[0];
                v64.__type_name = &__p.__r_.__value_.__l.__size_;
                while (v64.__vftable != v64.__type_name)
                {
                  v47 = *sub_29A1EBB84(&v64);
                  v67[0] = &off_2A2044DD0;
                  sub_29A1B01B8(&v66, v47 + 56);
                  v48 = sub_29A1EBB84(&v64);
                  v49 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](&v59, (*v48 + 32));
                  sub_29A18606C(v49, &v66);
                  sub_29A186B14(&v66);
                  sub_29A1EBBBC(&v64);
                }

                sub_29A008E78(&v64, "variants = ");
                pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &v64);
                if (SHIBYTE(v65) < 0)
                {
                  operator delete(v64.__vftable);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a2, v51, v11, &v59, 0);
                sub_29A184A10(&v59, 0);
              }

              sub_29A01752C(&__p, __p.__r_.__value_.__l.__size_);
            }

            goto LABEL_130;
          }

          pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSuffixSubstitutions(a1, &v64);
          sub_29A008E78(&__p, "suffixSubstitutions = ");
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPrefixSubstitutions(a1, &v64);
          sub_29A008E78(&__p, "prefixSubstitutions = ");
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a2, v51, v11, &v64, 1);
        sub_29A184A10(&v64, 0);
      }

      else
      {
        v67[0] = 0;
        v67[1] = 0;
        v66 = v67;
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v61);
        v60[0] = 0;
        v60[1] = 0;
        v59 = v60;
        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRelocates(a1, &v57);
        sub_29A1EF2C8(&v57, &__p);
        v55 = 0;
        v56 = 0;
        sub_29A1EF438(&v57, &v64);
        v55 = v64;
        v56 = v65;
        if (!sub_29A1EF4E8(&__p, &v55))
        {
          v40 = sub_29A1EBA18(&__p);
          v41 = sub_29A1EF5C0(*v40, *(v40 + 8), *(v40 + 16));
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath((v41 + 8), &v61, &v53);
          v42 = sub_29A1EBA18(&__p);
          v43 = sub_29A1EF5C0(*v42, *(v42 + 8), *(v42 + 16));
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(v43, &v61, &v52);
          v64.__vftable = &v52;
          sub_29A1EF770(&v59, &v52, &unk_29B4D6118, &v64);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteRelocates(a2, v51, v11, &v59);
        if (v58)
        {
          sub_29A014BEC(v58);
        }

        sub_29A1EF938(&v59, v60[0]);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v61 + 1);
        sub_29A1DE3A4(&v61);
        sub_29A1EF938(&v66, v67[0]);
      }

LABEL_130:
      v15 = (v15 + 8);
      if (v15 == v8)
      {
        goto LABEL_146;
      }
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "inherits");
    v33 = sub_29A1EB994(a2, v51, &__p, &v66);
    if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v33 & 1) == 0)
    {
      __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
      __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
      __p.__r_.__value_.__r.__words[2] = 444;
      v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
      LOBYTE(v55.__type_name) = 0;
      v34 = *v15 & 0xFFFFFFFFFFFFFFF8;
      if (v34)
      {
        v27 = (v34 + 16);
        if (*(v34 + 39) < 0)
        {
          v27 = *v27;
        }
      }

      else
      {
        v27 = "";
      }

      pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
      v35 = &v64;
      if (v65 < 0)
      {
        v35 = v64.__vftable;
      }

      goto LABEL_127;
    }

    goto LABEL_129;
  }

LABEL_146:
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::CloseParensIfNeeded(a2, a3, v10, v11);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v63;
  sub_29A124AB0(&__p);
}

void sub_29A3E8DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *a23, void *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_29A184A10(&a34, 0);
  sub_29A01752C(&a23, a24);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  a23 = (v43 - 176);
  sub_29A124AB0(&a23);
  _Unwind_Resume(a1);
}

void sub_29A3E9140(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v12[14] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(a1, &__p);
  sub_29A1F0334(&__p, v12);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v12[1] - v12[0]) >= 9)
  {
    sub_29A008E78(&__p, "reorder properties = ");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, a3 + 1, &__p);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteNameVector(a2, a3 + 1, v12);
    sub_29A008E78(&__p, "\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(a1, &p_p);
  sub_29A1F0334(&p_p, &__p);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v10 - __p) >= 9)
  {
    sub_29A008E78(&p_p, "reorder nameChildren = ");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, a3 + 1, &p_p);
    if (v8 < 0)
    {
      operator delete(p_p);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteNameVector(a2, a3 + 1, &__p);
    sub_29A008E78(&p_p, "\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &p_p);
    if (v8 < 0)
    {
      operator delete(p_p);
    }
  }

  p_p = &__p;
  sub_29A124AB0(&p_p);
  __p = v12;
  sub_29A124AB0(&__p);
  sub_29A3E9888(a1);
}

void sub_29A3E96B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3EAF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a29)
  {
    sub_29A014BEC(a29);
  }

  sub_29A186B14(v41 - 136);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a19);
  *(v41 - 120) = &a21;
  sub_29A1F19E8((v41 - 120));
  _Unwind_Resume(a1);
}

void sub_29A3EB2B8(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v75 = a2;
  v76 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return;
    }

    if (v8 == 2)
    {
      v75 = v6 - 1;
      if (sub_29A1F12C0(v6 - 1, v7))
      {
        v37 = &v76;
        v38 = &v75;
LABEL_64:
        sub_29A1F1420(v37, v38);
        return;
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v39 = (v7 + 1);
      v41 = v7 == v6 || v39 == v6;
      if (a4)
      {
        if (!v41)
        {
          v42 = 0;
          v43 = v7;
          do
          {
            v44 = v43;
            v43 = v39;
            if (sub_29A1F12C0(v39, v44))
            {
              v45 = *v43;
              v80 = v45;
              if (v45)
              {
                atomic_fetch_add(v45, 1u);
              }

              v46 = v42;
              while (1)
              {
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=((v7 + v46 + 8), (v7 + v46));
                if (!v46)
                {
                  break;
                }

                v47 = sub_29A1F12C0(&v80, (v7 + v46 - 8));
                v46 -= 8;
                if ((v47 & 1) == 0)
                {
                  v48 = (v7 + v46 + 8);
                  goto LABEL_88;
                }
              }

              v48 = v7;
LABEL_88:
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v48, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }

            v39 = (v43 + 1);
            v42 += 8;
          }

          while (v43 + 1 != v6);
        }
      }

      else if (!v41)
      {
        do
        {
          v73 = v39;
          if (sub_29A1F12C0(v39, v7))
          {
            v74 = *v73;
            v80 = v74;
            if (v74)
            {
              atomic_fetch_add(v74, 1u);
            }

            do
            {
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
              --v7;
            }

            while ((sub_29A1F12C0(&v80, v7) & 1) != 0);
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, &v80);
            pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
          }

          v39 = (v73 + 1);
          v7 = v73;
        }

        while (v73 + 1 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v49 = v9 >> 1;
        v50 = v9 >> 1;
        do
        {
          v51 = v50;
          if (v49 >= v50)
          {
            v52 = (2 * v50) | 1;
            v53 = &v7[v52];
            if (2 * v50 + 2 < v8 && sub_29A1F12C0(&v7[v52], v53 + 1))
            {
              ++v53;
              v52 = 2 * v51 + 2;
            }

            v54 = &v7[v51];
            if ((sub_29A1F12C0(v53, v54) & 1) == 0)
            {
              v55 = *v54;
              v80 = v55;
              if (v55)
              {
                atomic_fetch_add(v55, 1u);
              }

              do
              {
                v56 = v53;
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v54, v53);
                if (v49 < v52)
                {
                  break;
                }

                v57 = (2 * v52) | 1;
                v53 = &v7[v57];
                v52 = 2 * v52 + 2;
                if (v52 >= v8)
                {
                  v52 = v57;
                }

                else if (sub_29A1F12C0(&v7[v57], v53 + 1))
                {
                  ++v53;
                }

                else
                {
                  v52 = v57;
                }

                v54 = v56;
              }

              while (!sub_29A1F12C0(v53, &v80));
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v56, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }
          }

          v50 = v51 - 1;
        }

        while (v51);
        do
        {
          v58 = *v7;
          v79 = v58;
          if (v58)
          {
            atomic_fetch_add(v58, 1u);
          }

          v59 = 0;
          v60 = v7;
          do
          {
            v61 = &v60[v59];
            v62 = v61 + 1;
            v63 = 2 * v59;
            v59 = (2 * v59) | 1;
            v64 = v63 + 2;
            if (v63 + 2 < v8)
            {
              v65 = v61 + 2;
              if (sub_29A1F12C0(v61 + 1, v61 + 2))
              {
                v62 = v65;
                v59 = v64;
              }
            }

            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v60, v62);
            v60 = v62;
          }

          while (v59 <= ((v8 - 2) >> 1));
          if (v62 == --v6)
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, &v79);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v6);
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v6, &v79);
            v66 = (v62 - v7 + 8) >> 3;
            v67 = v66 < 2;
            v68 = v66 - 2;
            if (!v67)
            {
              v69 = v68 >> 1;
              v70 = &v7[v68 >> 1];
              if (sub_29A1F12C0(v70, v62))
              {
                v71 = *v62;
                v80 = v71;
                if (v71)
                {
                  atomic_fetch_add(v71, 1u);
                }

                do
                {
                  v72 = v70;
                  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v70);
                  if (!v69)
                  {
                    break;
                  }

                  v69 = (v69 - 1) >> 1;
                  v70 = &v7[v69];
                  v62 = v72;
                }

                while ((sub_29A1F12C0(v70, &v80) & 1) != 0);
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v72, &v80);
                pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
              }
            }
          }

          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v79);
          v67 = v8-- <= 2;
        }

        while (!v67);
      }

      return;
    }

    v10 = v8 >> 1;
    v11 = v6 - 1;
    if (v8 < 0x81)
    {
      sub_29A1F1490(&v7[v8 >> 1], v7, v11);
    }

    else
    {
      sub_29A1F1490(v7, &v7[v8 >> 1], v11);
      v12 = 8 * v10 - 8;
      sub_29A1F1490(v76 + 1, (v76 + v12), v75 - 2);
      v13 = 8 * v10 + 8;
      sub_29A1F1490(v76 + 2, (v76 + v13), v75 - 3);
      sub_29A1F1490((v76 + v12), &v76[v10], (v76 + v13));
      v80 = &v76[v10];
      sub_29A1F166C(&v76, &v80);
    }

    --a3;
    if (a4)
    {
      v14 = v75;
    }

    else
    {
      v15 = sub_29A1F12C0(v76 - 1, v76);
      v14 = v75;
      if ((v15 & 1) == 0)
      {
        v27 = v76;
        v79 = v75;
        v80 = v76;
        v28 = *v76;
        v78 = v28;
        if (v28)
        {
          atomic_fetch_add(v28, 1u);
          v14 = v79;
        }

        v29 = sub_29A1F12C0(&v78, v14 - 1);
        v30 = v80 + 1;
        if (v29)
        {
          do
          {
            v80 = v30;
            v31 = sub_29A1F12C0(&v78, v30++);
          }

          while ((v31 & 1) == 0);
        }

        else
        {
          do
          {
            v80 = v30;
            if (v30 >= v79)
            {
              break;
            }

            v32 = sub_29A1F12C0(&v78, v30++);
          }

          while (!v32);
        }

        v34 = v79;
        v33 = v80;
        if (v80 < v79)
        {
          do
          {
            v79 = --v34;
          }

          while ((sub_29A1F12C0(&v78, v34) & 1) != 0);
          v33 = v80;
        }

        if (v33 < v34)
        {
          do
          {
            sub_29A1F1420(&v80, &v79);
            do
            {
              ++v80;
            }

            while (!sub_29A1F12C0(&v78, v80));
            do
            {
              --v79;
            }

            while ((sub_29A1F12C0(&v78, v79) & 1) != 0);
            v33 = v80;
          }

          while (v80 < v79);
        }

        v35 = v33 - 1;
        if (v33 - 1 != v27)
        {
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v27, v33 - 1);
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v35, &v78);
        v7 = v80;
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
        goto LABEL_57;
      }
    }

    v16 = v76;
    v79 = v14;
    v80 = v76;
    v17 = *v76;
    v78 = v17;
    v18 = v76;
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
      v18 = v80;
    }

    v19 = v18 + 1;
    do
    {
      v80 = v19;
      v20 = sub_29A1F12C0(v19++, &v78);
    }

    while ((v20 & 1) != 0);
    v21 = v79;
    v22 = v80;
    if (v80 - 1 == v16)
    {
      do
      {
        if (v22 >= v21)
        {
          break;
        }

        v79 = --v21;
      }

      while ((sub_29A1F12C0(v21, &v78) & 1) == 0);
    }

    else
    {
      v23 = v79 - 1;
      do
      {
        v79 = v23;
        v24 = sub_29A1F12C0(v23--, &v78);
      }

      while (!v24);
      v22 = v80;
    }

    v25 = v79;
    v7 = v22;
    if (v22 < v79)
    {
      do
      {
        sub_29A1F1420(&v80, &v79);
        do
        {
          ++v80;
        }

        while ((sub_29A1F12C0(v80, &v78) & 1) != 0);
        do
        {
          --v79;
        }

        while (!sub_29A1F12C0(v79, &v78));
        v7 = v80;
      }

      while (v80 < v79);
    }

    if (v7 - 1 != v16)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v16, v7 - 1);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 - 1, &v78);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
    if (v22 < v25)
    {
      goto LABEL_35;
    }

    v26 = sub_29A3EBB74(v76, v7 - 1);
    if (!sub_29A3EBB74(v7, v75))
    {
      if (v26)
      {
        goto LABEL_58;
      }

LABEL_35:
      sub_29A3EB2B8(v76, v7 - 1, a3, a4 & 1);
LABEL_57:
      a4 = 0;
LABEL_58:
      v76 = v7;
      goto LABEL_59;
    }

    if (v26)
    {
      return;
    }

    v75 = v7 - 1;
    v7 = v76;
LABEL_59:
    v6 = v75;
  }

  if (v8 == 3)
  {
    v75 = v6 - 1;
    sub_29A1F1490(v7, v7 + 1, v6 - 1);
    return;
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {
      v75 = v6 - 1;
      sub_29A1F1544(v7, v7 + 1, v7 + 2, v7 + 3, v6 - 1);
      return;
    }

    goto LABEL_9;
  }

  v75 = v6 - 1;
  v79 = v7 + 1;
  v80 = v7;
  v77 = v6 - 1;
  v78 = v7 + 2;
  sub_29A1F1490(v7, v7 + 1, v7 + 2);
  if (sub_29A1F12C0(v6 - 1, v7 + 2))
  {
    sub_29A1F1420(&v78, &v77);
    if (sub_29A1F12C0(v78, v7 + 1))
    {
      sub_29A1F1420(&v79, &v78);
      if (sub_29A1F12C0(v79, v7))
      {
        v37 = &v80;
        v38 = &v79;
        goto LABEL_64;
      }
    }
  }
}

void sub_29A3EBAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3EBB74(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v15 = a2;
  v16 = a1;
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29A1F1490(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        v19 = a1 + 1;
        v20 = a1;
        v13 = a2 - 1;
        v17 = (a2 - 1);
        v18 = a1 + 2;
        sub_29A1F1490(a1, a1 + 1, a1 + 2);
        if (!sub_29A1F12C0(v13, a1 + 2))
        {
          return 1;
        }

        sub_29A1F1420(&v18, &v17);
        if (!sub_29A1F12C0(v18, a1 + 1))
        {
          return 1;
        }

        sub_29A1F1420(&v19, &v18);
        if (!sub_29A1F12C0(v19, a1))
        {
          return 1;
        }

        v5 = &v20;
        v6 = &v19;
        goto LABEL_6;
      case 5:
        sub_29A1F1544(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v15 = a2 - 1;
      if (sub_29A1F12C0(a2 - 1, a1))
      {
        v5 = &v16;
        v6 = &v15;
LABEL_6:
        sub_29A1F1420(v5, v6);
      }

      return 1;
    }
  }

  v7 = a1 + 2;
  sub_29A1F1490(a1, a1 + 1, a1 + 2);
  v8 = (a1 + 3);
  v9 = 1;
  if (v8 != a2)
  {
    v10 = 0;
    while (1)
    {
      if (sub_29A1F12C0(v8, v7))
      {
        v11 = *v8;
        v20 = v11;
        if (v11)
        {
          atomic_fetch_add(v11, 1u);
        }

        do
        {
          v12 = v7;
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
          if (v7 == v16)
          {
            break;
          }

          --v7;
        }

        while ((sub_29A1F12C0(&v20, v12 - 1) & 1) != 0);
        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v12, &v20);
        if (++v10 == 8)
        {
          v9 = v8 + 1 == v15;
          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
          return v9;
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
      }

      v7 = v8++;
      if (v8 == v15)
      {
        return 1;
      }
    }
  }

  return v9;
}

void sub_29A3EBD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void sub_29A3EBDA4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[3] = *MEMORY[0x29EDCA608];
  if (*(a4 + 23) >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if (*(a5 + 23) >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (*(a6 + 23) >= 0)
  {
    v12 = a6;
  }

  else
  {
    v12 = *a6;
  }

  if (*(a7 + 23) >= 0)
  {
    v13 = a7;
  }

  else
  {
    v13 = *a7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s %s.connect = ", v10, v11, v12, v13);
  if (sub_29A1F22B0(a3))
  {
    if (sub_29A1F22B0(a3) == 1)
    {
      sub_29A1F2468(a3, 0, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSdfPath(a1, 0, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(__p + 1);
      sub_29A1DE3A4(__p);
      sub_29A008E78(__p, "\n");
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, __p);
    }

    else
    {
      sub_29A008E78(__p, "[\n");
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      v19[1] = 0;
      v19[2] = 0;
      if (sub_29A1F23E4(a3))
      {
        v14 = a3;
      }

      else
      {
        v14 = 0;
      }

      __p[1] = v14;
      v18 = 0;
      sub_29A1F2570(a3, v19);
      while (!sub_29A1F25F4(__p, v19))
      {
        sub_29A1F231C(__p, v15);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSdfPath(a1, a2 + 1, v15);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v15 + 1);
        sub_29A1DE3A4(v15);
        sub_29A008E78(v15, ",\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, v15);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        sub_29A1F2360(__p);
      }

      sub_29A008E78(__p, "]\n");
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, __p);
    }
  }

  else
  {
    sub_29A008E78(__p, "None\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, __p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3EC014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3EC088(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  if (sub_29A1F22B0(a1) < 2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, " = ");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, " = [\n");
    ++a3;
  }

  if (sub_29A1F22B0(a1))
  {
    v8 = 0;
    do
    {
      if (sub_29A1F22B0(a1) >= 2)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, a3, "");
      }

      sub_29A1F2468(a1, v8, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSdfPath(a2, 0, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
      sub_29A1DE3A4(&v9);
      if (sub_29A1F22B0(a1) >= 2)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, ",\n");
      }

      ++v8;
    }

    while (v8 < sub_29A1F22B0(a1));
  }

  if (sub_29A1F22B0(a1) > 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, a3 - 1, "]");
  }

  if ((a4 & 2) == 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "\n");
  }
}

void sub_29A3EC1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A3EC20C(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v75 = a2;
  v76 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return;
    }

    if (v8 == 2)
    {
      v75 = v6 - 1;
      if (sub_29A3ECAC8(v6 - 1, v7))
      {
        v37 = &v76;
        v38 = &v75;
LABEL_64:
        sub_29A1F33EC(v37, v38);
        return;
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v39 = (v7 + 1);
      v41 = v7 == v6 || v39 == v6;
      if (a4)
      {
        if (!v41)
        {
          v42 = 0;
          v43 = v7;
          do
          {
            v44 = v43;
            v43 = v39;
            if (sub_29A3ECAC8(v39, v44))
            {
              v45 = *v43;
              v80 = v45;
              if (v45)
              {
                atomic_fetch_add(v45, 1u);
              }

              v46 = v42;
              while (1)
              {
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=((v7 + v46 + 8), (v7 + v46));
                if (!v46)
                {
                  break;
                }

                v47 = sub_29A3ECAC8(&v80, (v7 + v46 - 8));
                v46 -= 8;
                if (!v47)
                {
                  v48 = (v7 + v46 + 8);
                  goto LABEL_88;
                }
              }

              v48 = v7;
LABEL_88:
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v48, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }

            v39 = (v43 + 1);
            v42 += 8;
          }

          while (v43 + 1 != v6);
        }
      }

      else if (!v41)
      {
        do
        {
          v73 = v39;
          if (sub_29A3ECAC8(v39, v7))
          {
            v74 = *v73;
            v80 = v74;
            if (v74)
            {
              atomic_fetch_add(v74, 1u);
            }

            do
            {
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
              --v7;
            }

            while (sub_29A3ECAC8(&v80, v7));
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, &v80);
            pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
          }

          v39 = (v73 + 1);
          v7 = v73;
        }

        while (v73 + 1 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v49 = v9 >> 1;
        v50 = v9 >> 1;
        do
        {
          v51 = v50;
          if (v49 >= v50)
          {
            v52 = (2 * v50) | 1;
            v53 = &v7[v52];
            if (2 * v50 + 2 < v8 && sub_29A3ECAC8(&v7[v52], v53 + 1))
            {
              ++v53;
              v52 = 2 * v51 + 2;
            }

            v54 = &v7[v51];
            if (!sub_29A3ECAC8(v53, v54))
            {
              v55 = *v54;
              v80 = v55;
              if (v55)
              {
                atomic_fetch_add(v55, 1u);
              }

              do
              {
                v56 = v53;
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v54, v53);
                if (v49 < v52)
                {
                  break;
                }

                v57 = (2 * v52) | 1;
                v53 = &v7[v57];
                v52 = 2 * v52 + 2;
                if (v52 >= v8)
                {
                  v52 = v57;
                }

                else if (sub_29A3ECAC8(&v7[v57], v53 + 1))
                {
                  ++v53;
                }

                else
                {
                  v52 = v57;
                }

                v54 = v56;
              }

              while (!sub_29A3ECAC8(v53, &v80));
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v56, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }
          }

          v50 = v51 - 1;
        }

        while (v51);
        do
        {
          v58 = *v7;
          v79 = v58;
          if (v58)
          {
            atomic_fetch_add(v58, 1u);
          }

          v59 = 0;
          v60 = v7;
          do
          {
            v61 = &v60[v59];
            v62 = v61 + 1;
            v63 = 2 * v59;
            v59 = (2 * v59) | 1;
            v64 = v63 + 2;
            if (v63 + 2 < v8)
            {
              v65 = v61 + 2;
              if (sub_29A3ECAC8(v61 + 1, v61 + 2))
              {
                v62 = v65;
                v59 = v64;
              }
            }

            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v60, v62);
            v60 = v62;
          }

          while (v59 <= ((v8 - 2) >> 1));
          if (v62 == --v6)
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, &v79);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v6);
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v6, &v79);
            v66 = (v62 - v7 + 8) >> 3;
            v67 = v66 < 2;
            v68 = v66 - 2;
            if (!v67)
            {
              v69 = v68 >> 1;
              v70 = &v7[v68 >> 1];
              if (sub_29A3ECAC8(v70, v62))
              {
                v71 = *v62;
                v80 = v71;
                if (v71)
                {
                  atomic_fetch_add(v71, 1u);
                }

                do
                {
                  v72 = v70;
                  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v70);
                  if (!v69)
                  {
                    break;
                  }

                  v69 = (v69 - 1) >> 1;
                  v70 = &v7[v69];
                  v62 = v72;
                }

                while (sub_29A3ECAC8(v70, &v80));
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v72, &v80);
                pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
              }
            }
          }

          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v79);
          v67 = v8-- <= 2;
        }

        while (!v67);
      }

      return;
    }

    v10 = v8 >> 1;
    v11 = v6 - 1;
    if (v8 < 0x81)
    {
      sub_29A3ECBB4(&v7[v8 >> 1], v7, v11);
    }

    else
    {
      sub_29A3ECBB4(v7, &v7[v8 >> 1], v11);
      v12 = 8 * v10 - 8;
      sub_29A3ECBB4(v76 + 1, (v76 + v12), v75 - 2);
      v13 = 8 * v10 + 8;
      sub_29A3ECBB4(v76 + 2, (v76 + v13), v75 - 3);
      sub_29A3ECBB4((v76 + v12), &v76[v10], (v76 + v13));
      v80 = &v76[v10];
      sub_29A1F3638(&v76, &v80);
    }

    --a3;
    if (a4)
    {
      v14 = v75;
    }

    else
    {
      v15 = sub_29A3ECAC8(v76 - 1, v76);
      v14 = v75;
      if (!v15)
      {
        v27 = v76;
        v79 = v75;
        v80 = v76;
        v28 = *v76;
        v78 = v28;
        if (v28)
        {
          atomic_fetch_add(v28, 1u);
          v14 = v79;
        }

        v29 = sub_29A3ECAC8(&v78, v14 - 1);
        v30 = v80 + 1;
        if (v29)
        {
          do
          {
            v80 = v30;
          }

          while (!sub_29A3ECAC8(&v78, v30++));
        }

        else
        {
          do
          {
            v80 = v30;
            if (v30 >= v79)
            {
              break;
            }
          }

          while (!sub_29A3ECAC8(&v78, v30++));
        }

        v34 = v79;
        v33 = v80;
        if (v80 < v79)
        {
          do
          {
            v79 = --v34;
          }

          while (sub_29A3ECAC8(&v78, v34));
          v33 = v80;
        }

        if (v33 < v34)
        {
          do
          {
            sub_29A1F33EC(&v80, &v79);
            do
            {
              ++v80;
            }

            while (!sub_29A3ECAC8(&v78, v80));
            do
            {
              --v79;
            }

            while (sub_29A3ECAC8(&v78, v79));
            v33 = v80;
          }

          while (v80 < v79);
        }

        v35 = v33 - 1;
        if (v33 - 1 != v27)
        {
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v27, v33 - 1);
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v35, &v78);
        v7 = v80;
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
        goto LABEL_57;
      }
    }

    v16 = v76;
    v79 = v14;
    v80 = v76;
    v17 = *v76;
    v78 = v17;
    v18 = v76;
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
      v18 = v80;
    }

    v19 = v18 + 1;
    do
    {
      v80 = v19;
    }

    while (sub_29A3ECAC8(v19++, &v78));
    v21 = v79;
    v22 = v80;
    if (v80 - 1 == v16)
    {
      do
      {
        if (v22 >= v21)
        {
          break;
        }

        v79 = --v21;
      }

      while (!sub_29A3ECAC8(v21, &v78));
    }

    else
    {
      v23 = v79 - 1;
      do
      {
        v79 = v23;
      }

      while (!sub_29A3ECAC8(v23--, &v78));
      v22 = v80;
    }

    v25 = v79;
    v7 = v22;
    if (v22 < v79)
    {
      do
      {
        sub_29A1F33EC(&v80, &v79);
        do
        {
          ++v80;
        }

        while (sub_29A3ECAC8(v80, &v78));
        do
        {
          --v79;
        }

        while (!sub_29A3ECAC8(v79, &v78));
        v7 = v80;
      }

      while (v80 < v79);
    }

    if (v7 - 1 != v16)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v16, v7 - 1);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 - 1, &v78);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
    if (v22 < v25)
    {
      goto LABEL_35;
    }

    v26 = sub_29A3ECD90(v76, v7 - 1);
    if (!sub_29A3ECD90(v7, v75))
    {
      if (v26)
      {
        goto LABEL_58;
      }

LABEL_35:
      sub_29A3EC20C(v76, v7 - 1, a3, a4 & 1);
LABEL_57:
      a4 = 0;
LABEL_58:
      v76 = v7;
      goto LABEL_59;
    }

    if (v26)
    {
      return;
    }

    v75 = v7 - 1;
    v7 = v76;
LABEL_59:
    v6 = v75;
  }

  if (v8 == 3)
  {
    v75 = v6 - 1;
    sub_29A3ECBB4(v7, v7 + 1, v6 - 1);
    return;
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {
      v75 = v6 - 1;
      sub_29A3ECC68(v7, v7 + 1, v7 + 2, v7 + 3, v6 - 1);
      return;
    }

    goto LABEL_9;
  }

  v75 = v6 - 1;
  v79 = v7 + 1;
  v80 = v7;
  v77 = v6 - 1;
  v78 = v7 + 2;
  sub_29A3ECBB4(v7, v7 + 1, v7 + 2);
  if (sub_29A3ECAC8(v6 - 1, v7 + 2))
  {
    sub_29A1F33EC(&v78, &v77);
    if (sub_29A3ECAC8(v78, v7 + 1))
    {
      sub_29A1F33EC(&v79, &v78);
      if (sub_29A3ECAC8(v79, v7))
      {
        v37 = &v80;
        v38 = &v79;
        goto LABEL_64;
      }
    }
  }
}

void sub_29A3ECA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A3ECAC8(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v3 = sub_29A1F38D8(a1);
  pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetName(v3, __p);
  v4 = sub_29A1F38D8(a2);
  pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetName(v4, v15);
  v5 = v16;
  v6 = v15[0];
  v7 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = __p[1];
  }

  if ((v18 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v16 >= 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = v15[1];
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v5 < 0)
  {
    operator delete(v6);
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__p[0]);
LABEL_18:
  if (v13)
  {
    return v13 < 0;
  }

  else
  {
    return v8 < v10;
  }
}

void sub_29A3ECB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3ECBB4(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = sub_29A3ECAC8(a2, a1);
  v6 = sub_29A3ECAC8(a3, a2);
  if (v5)
  {
    if (v6)
    {
      v7 = &v11;
    }

    else
    {
      sub_29A1F33EC(&v11, &v10);
      if (!sub_29A3ECAC8(v9, v10))
      {
        return;
      }

      v7 = &v10;
    }

    v8 = &v9;
    goto LABEL_10;
  }

  if (v6)
  {
    sub_29A1F33EC(&v10, &v9);
    if (sub_29A3ECAC8(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_29A1F33EC(v7, v8);
    }
  }
}

void sub_29A3ECC68(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
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
  sub_29A3ECBB4(a1, a2, a3);
  if (sub_29A3ECAC8(a4, a3))
  {
    sub_29A1F33EC(&v16, &v15);
    if (sub_29A3ECAC8(v16, a2))
    {
      sub_29A1F33EC(&v17, &v16);
      if (sub_29A3ECAC8(v17, a1))
      {
        sub_29A1F33EC(&v18, &v17);
      }
    }
  }

  if (sub_29A3ECAC8(a5, a4))
  {
    sub_29A1F33EC(&v11, &v10);
    if (sub_29A3ECAC8(v11, a3))
    {
      sub_29A1F33EC(&v12, &v11);
      if (sub_29A3ECAC8(v12, a2))
      {
        sub_29A1F33EC(&v13, &v12);
        if (sub_29A3ECAC8(v13, a1))
        {
          sub_29A1F33EC(&v14, &v13);
        }
      }
    }
  }
}

uint64_t sub_29A3ECD90(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v15 = a2;
  v16 = a1;
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29A3ECBB4(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        v19 = a1 + 1;
        v20 = a1;
        v13 = a2 - 1;
        v17 = (a2 - 1);
        v18 = a1 + 2;
        sub_29A3ECBB4(a1, a1 + 1, a1 + 2);
        if (!sub_29A3ECAC8(v13, a1 + 2))
        {
          return 1;
        }

        sub_29A1F33EC(&v18, &v17);
        if (!sub_29A3ECAC8(v18, a1 + 1))
        {
          return 1;
        }

        sub_29A1F33EC(&v19, &v18);
        if (!sub_29A3ECAC8(v19, a1))
        {
          return 1;
        }

        v5 = &v20;
        v6 = &v19;
        goto LABEL_6;
      case 5:
        sub_29A3ECC68(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v15 = a2 - 1;
      if (sub_29A3ECAC8(a2 - 1, a1))
      {
        v5 = &v16;
        v6 = &v15;
LABEL_6:
        sub_29A1F33EC(v5, v6);
      }

      return 1;
    }
  }

  v7 = a1 + 2;
  sub_29A3ECBB4(a1, a1 + 1, a1 + 2);
  v8 = (a1 + 3);
  v9 = 1;
  if (v8 != a2)
  {
    v10 = 0;
    while (1)
    {
      if (sub_29A3ECAC8(v8, v7))
      {
        v11 = *v8;
        v20 = v11;
        if (v11)
        {
          atomic_fetch_add(v11, 1u);
        }

        do
        {
          v12 = v7;
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
          if (v7 == v16)
          {
            break;
          }

          --v7;
        }

        while (sub_29A3ECAC8(&v20, v12 - 1));
        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v12, &v20);
        if (++v10 == 8)
        {
          v9 = v8 + 1 == v15;
          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
          return v9;
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
      }

      v7 = v8++;
      if (v8 == v15)
      {
        return 1;
      }
    }
  }

  return v9;
}

void sub_29A3ECFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ECFC0(uint64_t a1)
{
  v2 = sub_29A3ED008(a1, a1 + 64);
  sub_29A008864((v2 + 48));
  return a1;
}

uint64_t sub_29A3ED008(uint64_t a1, uint64_t a2)
{
  sub_29A1E9B98(a2, &v4);
  v5 = v4;
  v4 = 0uLL;
  sub_29A1E9CFC(a1, &v5);
  if (*(&v5 + 1))
  {
    sub_29A014BEC(*(&v5 + 1));
  }

  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  return a1;
}

void sub_29A3ED070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A3ED094()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20478E8, 0, 0, 0, 8, 0, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20479B0, 0, 0, 0, 40, 0, 0);
}

void sub_29A3ED0FC()
{
  v0 = MEMORY[0x29EDC94B8];
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(MEMORY[0x29EDC94B8], &unk_2A20478E8, sub_29A3ED174);

  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20478E8, v0, sub_29A3ED1C0);
}

void *sub_29A3ED174@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &off_2A2047830 + 1;
  return result;
}

double sub_29A3ED1C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType::~SdfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType::SdfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__AnyType__", 0);
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

void pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType::~SdfPathTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType *this)
{
  v13 = (this + 96);
  sub_29A124AB0(&v13);
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 9);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType::SdfPathTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "/", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, ".", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "/", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, ".", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "[", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "]", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "..", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "mapper", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "expression", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, ".", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, ":", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "", 0);
  v3 = (this + 96);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v21 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v23 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v24 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v26 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v27 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v28 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v29 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v30 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  sub_29A12EF7C(v3, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}