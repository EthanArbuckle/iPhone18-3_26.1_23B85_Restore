void sub_29B08FA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B08FB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B08FCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr *a2)
{
  sub_29A008864(v6);
  v3 = pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::operator BOOL(this);
  MEMORY[0x29C2C1EA0](&v7, v3);
  std::stringbuf::str();
  v6[0] = *MEMORY[0x29EDC9528];
  v4 = *(MEMORY[0x29EDC9528] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v7 = v4;
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29B08FE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B090038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B090150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B090284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void Overlay::__to_string(int *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v4 = "PXR_NS::TF_DIAGNOSTIC_FATAL_CODING_ERROR_TYPE";
        goto LABEL_22;
      }

      if (v3 == 3)
      {
        v4 = "PXR_NS::TF_DIAGNOSTIC_RUNTIME_ERROR_TYPE";
        goto LABEL_22;
      }
    }

    else
    {
      if (!v3)
      {
        v4 = "PXR_NS::TF_DIAGNOSTIC_INVALID_TYPE";
        goto LABEL_22;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::TF_DIAGNOSTIC_CODING_ERROR_TYPE";
        goto LABEL_22;
      }
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::TF_DIAGNOSTIC_FATAL_ERROR_TYPE";
      goto LABEL_22;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::TF_DIAGNOSTIC_NONFATAL_ERROR_TYPE";
      goto LABEL_22;
    }
  }

  else
  {
    switch(v3)
    {
      case 6:
        v4 = "PXR_NS::TF_DIAGNOSTIC_WARNING_TYPE";
        goto LABEL_22;
      case 7:
        v4 = "PXR_NS::TF_DIAGNOSTIC_STATUS_TYPE";
        goto LABEL_22;
      case 8:
        v4 = "PXR_NS::TF_APPLICATION_EXIT_TYPE";
LABEL_22:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::TfDiagnosticType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::PcpErrorInvalidConflictingRelocation::ConflictReason::TargetIsConflictSourceDescendant";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::PcpErrorInvalidConflictingRelocation::ConflictReason::SourceIsConflictSourceDescendant";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::PcpErrorInvalidConflictingRelocation::ConflictReason::TargetIsConflictSource";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::PcpErrorInvalidConflictingRelocation::ConflictReason::SourceIsConflictTarget";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpErrorInvalidConflictingRelocation::ConflictReason(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::UsdSchemaKind::Invalid";
        goto LABEL_22;
      case 1:
        v4 = "PXR_NS::UsdSchemaKind::AbstractBase";
        goto LABEL_22;
      case 2:
        v4 = "PXR_NS::UsdSchemaKind::AbstractTyped";
        goto LABEL_22;
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      v4 = "PXR_NS::UsdSchemaKind::SingleApplyAPI";
      goto LABEL_22;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::UsdSchemaKind::MultipleApplyAPI";
      goto LABEL_22;
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = "PXR_NS::UsdSchemaKind::ConcreteTyped";
      goto LABEL_22;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::UsdSchemaKind::NonAppliedAPI";
LABEL_22:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdSchemaKind(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 <= 4)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::All";
        goto LABEL_26;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::Reference";
        goto LABEL_26;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::Payload";
          goto LABEL_26;
        case 3:
          v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::Inherit";
          goto LABEL_26;
        case 4:
          v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::Specialize";
          goto LABEL_26;
      }
    }
  }

  else if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::NotReferenceOrPayload";
        goto LABEL_26;
      case 9:
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::NotInheritOrSpecialize";
        goto LABEL_26;
      case 10:
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::NotVariant";
        goto LABEL_26;
    }
  }

  else
  {
    switch(v3)
    {
      case 5:
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::Variant";
        goto LABEL_26;
      case 6:
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::ReferenceOrPayload";
        goto LABEL_26;
      case 7:
        v4 = "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter::InheritOrSpecialize";
LABEL_26:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdPrimCompositionQuery::ArcTypeFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::DependencyTypeFilter::Ancestral";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::DependencyTypeFilter::Direct";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::DependencyTypeFilter::All";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdPrimCompositionQuery::DependencyTypeFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::ArcIntroducedFilter::IntroducedInRootLayerPrimSpec";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::ArcIntroducedFilter::IntroducedInRootLayerStack";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::ArcIntroducedFilter::All";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdPrimCompositionQuery::ArcIntroducedFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::HasSpecsFilter::HasNoSpecs";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::HasSpecsFilter::HasSpecs";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdPrimCompositionQuery::HasSpecsFilter::All";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdPrimCompositionQuery::HasSpecsFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::UsdShadeAttributeType::Output";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdShadeAttributeType::Input";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdShadeAttributeType::Invalid";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdShadeAttributeType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::UsdShadeConnectionModification::Append";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdShadeConnectionModification::Prepend";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdShadeConnectionModification::Replace";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdShadeConnectionModification(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::UsdUtilsRegisteredVariantSet::SelectionExportPolicy::Always";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdUtilsRegisteredVariantSet::SelectionExportPolicy::IfAuthored";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdUtilsRegisteredVariantSet::SelectionExportPolicy::Never";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdUtilsRegisteredVariantSet::SelectionExportPolicy(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::UsdUtilsStitchValueStatus::UseSuppliedValue";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdUtilsStitchValueStatus::UseDefaultValue";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdUtilsStitchValueStatus::NoStitchedValue";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdUtilsStitchValueStatus(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3)
  {
    std::to_string(&v8, v3);
    v4 = std::string::insert(&v8, 0, "PXR_NS::GarchNSGLContextState::NullState(rawValue: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    sub_29A008E78(a2, "PXR_NS::GarchNSGLContextState::NullState::nullstate");
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case -1:
      v4 = "PXR_NS::HioFormatInvalid";
      goto LABEL_50;
    case 0:
      v4 = "PXR_NS::HioFormatUNorm8";
      goto LABEL_50;
    case 1:
      v4 = "PXR_NS::HioFormatUNorm8Vec2";
      goto LABEL_50;
    case 2:
      v4 = "PXR_NS::HioFormatUNorm8Vec3";
      goto LABEL_50;
    case 3:
      v4 = "PXR_NS::HioFormatUNorm8Vec4";
      goto LABEL_50;
    case 4:
      v4 = "PXR_NS::HioFormatSNorm8";
      goto LABEL_50;
    case 5:
      v4 = "PXR_NS::HioFormatSNorm8Vec2";
      goto LABEL_50;
    case 6:
      v4 = "PXR_NS::HioFormatSNorm8Vec3";
      goto LABEL_50;
    case 7:
      v4 = "PXR_NS::HioFormatSNorm8Vec4";
      goto LABEL_50;
    case 8:
      v4 = "PXR_NS::HioFormatFloat16";
      goto LABEL_50;
    case 9:
      v4 = "PXR_NS::HioFormatFloat16Vec2";
      goto LABEL_50;
    case 10:
      v4 = "PXR_NS::HioFormatFloat16Vec3";
      goto LABEL_50;
    case 11:
      v4 = "PXR_NS::HioFormatFloat16Vec4";
      goto LABEL_50;
    case 12:
      v4 = "PXR_NS::HioFormatFloat32";
      goto LABEL_50;
    case 13:
      v4 = "PXR_NS::HioFormatFloat32Vec2";
      goto LABEL_50;
    case 14:
      v4 = "PXR_NS::HioFormatFloat32Vec3";
      goto LABEL_50;
    case 15:
      v4 = "PXR_NS::HioFormatFloat32Vec4";
      goto LABEL_50;
    case 16:
      v4 = "PXR_NS::HioFormatDouble64";
      goto LABEL_50;
    case 17:
      v4 = "PXR_NS::HioFormatDouble64Vec2";
      goto LABEL_50;
    case 18:
      v4 = "PXR_NS::HioFormatDouble64Vec3";
      goto LABEL_50;
    case 19:
      v4 = "PXR_NS::HioFormatDouble64Vec4";
      goto LABEL_50;
    case 20:
      v4 = "PXR_NS::HioFormatUInt16";
      goto LABEL_50;
    case 21:
      v4 = "PXR_NS::HioFormatUInt16Vec2";
      goto LABEL_50;
    case 22:
      v4 = "PXR_NS::HioFormatUInt16Vec3";
      goto LABEL_50;
    case 23:
      v4 = "PXR_NS::HioFormatUInt16Vec4";
      goto LABEL_50;
    case 24:
      v4 = "PXR_NS::HioFormatInt16";
      goto LABEL_50;
    case 25:
      v4 = "PXR_NS::HioFormatInt16Vec2";
      goto LABEL_50;
    case 26:
      v4 = "PXR_NS::HioFormatInt16Vec3";
      goto LABEL_50;
    case 27:
      v4 = "PXR_NS::HioFormatInt16Vec4";
      goto LABEL_50;
    case 28:
      v4 = "PXR_NS::HioFormatUInt32";
      goto LABEL_50;
    case 29:
      v4 = "PXR_NS::HioFormatUInt32Vec2";
      goto LABEL_50;
    case 30:
      v4 = "PXR_NS::HioFormatUInt32Vec3";
      goto LABEL_50;
    case 31:
      v4 = "PXR_NS::HioFormatUInt32Vec4";
      goto LABEL_50;
    case 32:
      v4 = "PXR_NS::HioFormatInt32";
      goto LABEL_50;
    case 33:
      v4 = "PXR_NS::HioFormatInt32Vec2";
      goto LABEL_50;
    case 34:
      v4 = "PXR_NS::HioFormatInt32Vec3";
      goto LABEL_50;
    case 35:
      v4 = "PXR_NS::HioFormatInt32Vec4";
      goto LABEL_50;
    case 36:
      v4 = "PXR_NS::HioFormatUNorm8srgb";
      goto LABEL_50;
    case 37:
      v4 = "PXR_NS::HioFormatUNorm8Vec2srgb";
      goto LABEL_50;
    case 38:
      v4 = "PXR_NS::HioFormatUNorm8Vec3srgb";
      goto LABEL_50;
    case 39:
      v4 = "PXR_NS::HioFormatUNorm8Vec4srgb";
      goto LABEL_50;
    case 40:
      v4 = "PXR_NS::HioFormatBC6FloatVec3";
      goto LABEL_50;
    case 41:
      v4 = "PXR_NS::HioFormatBC6UFloatVec3";
      goto LABEL_50;
    case 42:
      v4 = "PXR_NS::HioFormatBC7UNorm8Vec4";
      goto LABEL_50;
    case 43:
      v4 = "PXR_NS::HioFormatBC7UNorm8Vec4srgb";
      goto LABEL_50;
    case 44:
      v4 = "PXR_NS::HioFormatBC1UNorm8Vec4";
      goto LABEL_50;
    case 45:
      v4 = "PXR_NS::HioFormatBC3UNorm8Vec4";
      goto LABEL_50;
    case 46:
      v4 = "PXR_NS::HioFormatCount";
LABEL_50:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::HioFormat(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::HioGlslfxResourceLayout::InOut::STAGE_OUT";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HioGlslfxResourceLayout::InOut::STAGE_IN";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HioGlslfxResourceLayout::InOut::NONE";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioGlslfxResourceLayout::InOut(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::BLOCK";
        goto LABEL_22;
      }

      if (v3 == 3)
      {
        v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::QUALIFIER";
        goto LABEL_22;
      }
    }

    else
    {
      if (!v3)
      {
        v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::NONE";
        goto LABEL_22;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::VALUE";
        goto LABEL_22;
      }
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::UNIFORM_VALUE";
      goto LABEL_22;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::UNIFORM_BLOCK";
      goto LABEL_22;
    }
  }

  else
  {
    switch(v3)
    {
      case 6:
        v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::UNIFORM_BLOCK_CONSTANT_PARAMS";
        goto LABEL_22;
      case 7:
        v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::BUFFER_READ_ONLY";
        goto LABEL_22;
      case 8:
        v4 = "PXR_NS::HioGlslfxResourceLayout::Kind::BUFFER_READ_WRITE";
LABEL_22:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioGlslfxResourceLayout::Kind(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::HioGlslfxResourceLayout::TextureType::ARRAY_TEXTURE";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HioGlslfxResourceLayout::TextureType::SHADOW_TEXTURE";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HioGlslfxResourceLayout::TextureType::TEXTURE";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioGlslfxResourceLayout::TextureType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  switch(*a1)
  {
    case 0:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidScheme";
      goto LABEL_25;
    case 1:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidOrientation";
      goto LABEL_25;
    case 2:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidTriangleSubdivision";
      goto LABEL_25;
    case 3:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidVertexInterpolationRule";
      goto LABEL_25;
    case 4:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidFaceVaryingInterpolationRule";
      goto LABEL_25;
    case 5:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidCreaseMethod";
      goto LABEL_25;
    case 6:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidCreaseLengthElement";
      goto LABEL_25;
    case 7:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidCreaseIndicesSize";
      goto LABEL_25;
    case 8:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidCreaseIndicesElement";
      goto LABEL_25;
    case 9:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidCreaseWeightsSize";
      goto LABEL_25;
    case 10:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::NegativeCreaseWeights";
      goto LABEL_25;
    case 11:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidCornerIndicesElement";
      goto LABEL_25;
    case 12:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::NegativeCornerWeights";
      goto LABEL_25;
    case 13:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidCornerWeightsSize";
      goto LABEL_25;
    case 14:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidHoleIndicesElement";
      goto LABEL_25;
    case 15:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidFaceVertexCountsElement";
      goto LABEL_25;
    case 16:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidFaceVertexIndicesElement";
      goto LABEL_25;
    case 17:
      v3 = "PXR_NS::PxOsdMeshTopologyValidation::Code::InvalidFaceVertexIndicesSize";
LABEL_25:

      sub_29A008E78(a2, v3);
      break;
    default:
      std::to_string(&v8, *a1);
      v4 = std::string::insert(&v8, 0, "PXR_NS::PxOsdMeshTopologyValidation::Code(rawValue: ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v9.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v9, ")");
      v7 = *&v6->__r_.__value_.__l.__data_;
      a2[2] = *(&v6->__r_.__value_.__l + 2);
      *a2 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case -1:
      v4 = "PXR_NS::HgiFormatInvalid";
      goto LABEL_39;
    case 0:
      v4 = "PXR_NS::HgiFormatUNorm8";
      goto LABEL_39;
    case 1:
      v4 = "PXR_NS::HgiFormatUNorm8Vec2";
      goto LABEL_39;
    case 2:
      v4 = "PXR_NS::HgiFormatUNorm8Vec4";
      goto LABEL_39;
    case 3:
      v4 = "PXR_NS::HgiFormatSNorm8";
      goto LABEL_39;
    case 4:
      v4 = "PXR_NS::HgiFormatSNorm8Vec2";
      goto LABEL_39;
    case 5:
      v4 = "PXR_NS::HgiFormatSNorm8Vec4";
      goto LABEL_39;
    case 6:
      v4 = "PXR_NS::HgiFormatFloat16";
      goto LABEL_39;
    case 7:
      v4 = "PXR_NS::HgiFormatFloat16Vec2";
      goto LABEL_39;
    case 8:
      v4 = "PXR_NS::HgiFormatFloat16Vec3";
      goto LABEL_39;
    case 9:
      v4 = "PXR_NS::HgiFormatFloat16Vec4";
      goto LABEL_39;
    case 10:
      v4 = "PXR_NS::HgiFormatFloat32";
      goto LABEL_39;
    case 11:
      v4 = "PXR_NS::HgiFormatFloat32Vec2";
      goto LABEL_39;
    case 12:
      v4 = "PXR_NS::HgiFormatFloat32Vec3";
      goto LABEL_39;
    case 13:
      v4 = "PXR_NS::HgiFormatFloat32Vec4";
      goto LABEL_39;
    case 14:
      v4 = "PXR_NS::HgiFormatInt16";
      goto LABEL_39;
    case 15:
      v4 = "PXR_NS::HgiFormatInt16Vec2";
      goto LABEL_39;
    case 16:
      v4 = "PXR_NS::HgiFormatInt16Vec3";
      goto LABEL_39;
    case 17:
      v4 = "PXR_NS::HgiFormatInt16Vec4";
      goto LABEL_39;
    case 18:
      v4 = "PXR_NS::HgiFormatUInt16";
      goto LABEL_39;
    case 19:
      v4 = "PXR_NS::HgiFormatUInt16Vec2";
      goto LABEL_39;
    case 20:
      v4 = "PXR_NS::HgiFormatUInt16Vec3";
      goto LABEL_39;
    case 21:
      v4 = "PXR_NS::HgiFormatUInt16Vec4";
      goto LABEL_39;
    case 22:
      v4 = "PXR_NS::HgiFormatInt32";
      goto LABEL_39;
    case 23:
      v4 = "PXR_NS::HgiFormatInt32Vec2";
      goto LABEL_39;
    case 24:
      v4 = "PXR_NS::HgiFormatInt32Vec3";
      goto LABEL_39;
    case 25:
      v4 = "PXR_NS::HgiFormatInt32Vec4";
      goto LABEL_39;
    case 26:
      v4 = "PXR_NS::HgiFormatUNorm8Vec4srgb";
      goto LABEL_39;
    case 27:
      v4 = "PXR_NS::HgiFormatBC6FloatVec3";
      goto LABEL_39;
    case 28:
      v4 = "PXR_NS::HgiFormatBC6UFloatVec3";
      goto LABEL_39;
    case 29:
      v4 = "PXR_NS::HgiFormatBC7UNorm8Vec4";
      goto LABEL_39;
    case 30:
      v4 = "PXR_NS::HgiFormatBC7UNorm8Vec4srgb";
      goto LABEL_39;
    case 31:
      v4 = "PXR_NS::HgiFormatBC1UNorm8Vec4";
      goto LABEL_39;
    case 32:
      v4 = "PXR_NS::HgiFormatBC3UNorm8Vec4";
      goto LABEL_39;
    case 33:
      v4 = "PXR_NS::HgiFormatFloat32UInt8";
      goto LABEL_39;
    case 34:
      v4 = "PXR_NS::HgiFormatPackedInt1010102";
      goto LABEL_39;
    case 35:
      v4 = "PXR_NS::HgiFormatCount";
LABEL_39:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::HgiFormat(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::PatchType::Isolines";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::PatchType::Quads";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::PatchType::Triangles";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderFunctionTessellationDesc::PatchType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::Spacing::FractionalOdd";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::Spacing::FractionalEven";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::Spacing::Equal";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderFunctionTessellationDesc::Spacing(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 1)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::Ordering::CCW";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiShaderFunctionTessellationDesc::Ordering::CW";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderFunctionTessellationDesc::Ordering(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::InPrimitiveType::Points";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::InPrimitiveType::Lines";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::InPrimitiveType::LinesAdjacency";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::InPrimitiveType::Triangles";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::InPrimitiveType::TrianglesAdjacency";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderFunctionGeometryDesc::InPrimitiveType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::OutPrimitiveType::TriangleStrip";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::OutPrimitiveType::LineStrip";
    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiShaderFunctionGeometryDesc::OutPrimitiveType::Points";
LABEL_7:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderFunctionGeometryDesc::OutPrimitiveType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case -1:
      v4 = "PXR_NS::HdTypeInvalid";
      goto LABEL_39;
    case 0:
      v4 = "PXR_NS::HdTypeBool";
      goto LABEL_39;
    case 1:
      v4 = "PXR_NS::HdTypeUInt8";
      goto LABEL_39;
    case 2:
      v4 = "PXR_NS::HdTypeUInt16";
      goto LABEL_39;
    case 3:
      v4 = "PXR_NS::HdTypeInt8";
      goto LABEL_39;
    case 4:
      v4 = "PXR_NS::HdTypeInt16";
      goto LABEL_39;
    case 5:
      v4 = "PXR_NS::HdTypeInt32";
      goto LABEL_39;
    case 6:
      v4 = "PXR_NS::HdTypeInt32Vec2";
      goto LABEL_39;
    case 7:
      v4 = "PXR_NS::HdTypeInt32Vec3";
      goto LABEL_39;
    case 8:
      v4 = "PXR_NS::HdTypeInt32Vec4";
      goto LABEL_39;
    case 9:
      v4 = "PXR_NS::HdTypeUInt32";
      goto LABEL_39;
    case 10:
      v4 = "PXR_NS::HdTypeUInt32Vec2";
      goto LABEL_39;
    case 11:
      v4 = "PXR_NS::HdTypeUInt32Vec3";
      goto LABEL_39;
    case 12:
      v4 = "PXR_NS::HdTypeUInt32Vec4";
      goto LABEL_39;
    case 13:
      v4 = "PXR_NS::HdTypeFloat";
      goto LABEL_39;
    case 14:
      v4 = "PXR_NS::HdTypeFloatVec2";
      goto LABEL_39;
    case 15:
      v4 = "PXR_NS::HdTypeFloatVec3";
      goto LABEL_39;
    case 16:
      v4 = "PXR_NS::HdTypeFloatVec4";
      goto LABEL_39;
    case 17:
      v4 = "PXR_NS::HdTypeFloatMat3";
      goto LABEL_39;
    case 18:
      v4 = "PXR_NS::HdTypeFloatMat4";
      goto LABEL_39;
    case 19:
      v4 = "PXR_NS::HdTypeDouble";
      goto LABEL_39;
    case 20:
      v4 = "PXR_NS::HdTypeDoubleVec2";
      goto LABEL_39;
    case 21:
      v4 = "PXR_NS::HdTypeDoubleVec3";
      goto LABEL_39;
    case 22:
      v4 = "PXR_NS::HdTypeDoubleVec4";
      goto LABEL_39;
    case 23:
      v4 = "PXR_NS::HdTypeDoubleMat3";
      goto LABEL_39;
    case 24:
      v4 = "PXR_NS::HdTypeDoubleMat4";
      goto LABEL_39;
    case 25:
      v4 = "PXR_NS::HdTypeHalfFloat";
      goto LABEL_39;
    case 26:
      v4 = "PXR_NS::HdTypeHalfFloatVec2";
      goto LABEL_39;
    case 27:
      v4 = "PXR_NS::HdTypeHalfFloatVec3";
      goto LABEL_39;
    case 28:
      v4 = "PXR_NS::HdTypeHalfFloatVec4";
      goto LABEL_39;
    case 29:
      v4 = "PXR_NS::HdTypeInt32_2_10_10_10_REV";
      goto LABEL_39;
    case 30:
      v4 = "PXR_NS::HdTypeCount";
LABEL_39:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::HdType(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case -1:
      v4 = "PXR_NS::HdFormatInvalid";
      goto LABEL_38;
    case 0:
      v4 = "PXR_NS::HdFormatUNorm8";
      goto LABEL_38;
    case 1:
      v4 = "PXR_NS::HdFormatUNorm8Vec2";
      goto LABEL_38;
    case 2:
      v4 = "PXR_NS::HdFormatUNorm8Vec3";
      goto LABEL_38;
    case 3:
      v4 = "PXR_NS::HdFormatUNorm8Vec4";
      goto LABEL_38;
    case 4:
      v4 = "PXR_NS::HdFormatSNorm8";
      goto LABEL_38;
    case 5:
      v4 = "PXR_NS::HdFormatSNorm8Vec2";
      goto LABEL_38;
    case 6:
      v4 = "PXR_NS::HdFormatSNorm8Vec3";
      goto LABEL_38;
    case 7:
      v4 = "PXR_NS::HdFormatSNorm8Vec4";
      goto LABEL_38;
    case 8:
      v4 = "PXR_NS::HdFormatFloat16";
      goto LABEL_38;
    case 9:
      v4 = "PXR_NS::HdFormatFloat16Vec2";
      goto LABEL_38;
    case 10:
      v4 = "PXR_NS::HdFormatFloat16Vec3";
      goto LABEL_38;
    case 11:
      v4 = "PXR_NS::HdFormatFloat16Vec4";
      goto LABEL_38;
    case 12:
      v4 = "PXR_NS::HdFormatFloat32";
      goto LABEL_38;
    case 13:
      v4 = "PXR_NS::HdFormatFloat32Vec2";
      goto LABEL_38;
    case 14:
      v4 = "PXR_NS::HdFormatFloat32Vec3";
      goto LABEL_38;
    case 15:
      v4 = "PXR_NS::HdFormatFloat32Vec4";
      goto LABEL_38;
    case 16:
      v4 = "PXR_NS::HdFormatInt16";
      goto LABEL_38;
    case 17:
      v4 = "PXR_NS::HdFormatInt16Vec2";
      goto LABEL_38;
    case 18:
      v4 = "PXR_NS::HdFormatInt16Vec3";
      goto LABEL_38;
    case 19:
      v4 = "PXR_NS::HdFormatInt16Vec4";
      goto LABEL_38;
    case 20:
      v4 = "PXR_NS::HdFormatUInt16";
      goto LABEL_38;
    case 21:
      v4 = "PXR_NS::HdFormatUInt16Vec2";
      goto LABEL_38;
    case 22:
      v4 = "PXR_NS::HdFormatUInt16Vec3";
      goto LABEL_38;
    case 23:
      v4 = "PXR_NS::HdFormatUInt16Vec4";
      goto LABEL_38;
    case 24:
      v4 = "PXR_NS::HdFormatInt32";
      goto LABEL_38;
    case 25:
      v4 = "PXR_NS::HdFormatInt32Vec2";
      goto LABEL_38;
    case 26:
      v4 = "PXR_NS::HdFormatInt32Vec3";
      goto LABEL_38;
    case 27:
      v4 = "PXR_NS::HdFormatInt32Vec4";
      goto LABEL_38;
    case 28:
      v4 = "PXR_NS::HdFormatFloat32UInt8";
      goto LABEL_38;
    case 29:
      v4 = "PXR_NS::HdFormatCount";
LABEL_38:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::HdFormat(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  if (*a1 == 1)
  {
    v4 = "PXR_NS::UsdImagingPropertyInvalidationType::Resync";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdImagingPropertyInvalidationType::Update";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdImagingPropertyInvalidationType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_GEOM_FLAT";
        goto LABEL_20;
      }

      if (v3 == 7)
      {
        v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_GEOM_SMOOTH";
        goto LABEL_20;
      }
    }

    else
    {
      if (v3 == 4)
      {
        v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_SHADED_SMOOTH";
        goto LABEL_20;
      }

      if (v3 == 5)
      {
        v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_GEOM_ONLY";
        goto LABEL_20;
      }
    }
  }

  else if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_WIREFRAME_ON_SURFACE";
      goto LABEL_20;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_SHADED_FLAT";
      goto LABEL_20;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_POINTS";
      goto LABEL_20;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdImagingGLDrawMode::DRAW_WIREFRAME";
LABEL_20:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdImagingGLDrawMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (*a1 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::UsdImagingGLCullStyle::CULL_STYLE_FRONT";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::UsdImagingGLCullStyle::CULL_STYLE_BACK_UNLESS_DOUBLE_SIDED";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::UsdImagingGLCullStyle::CULL_STYLE_COUNT";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::UsdImagingGLCullStyle::CULL_STYLE_NO_OPINION";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::UsdImagingGLCullStyle::CULL_STYLE_NOTHING";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::UsdImagingGLCullStyle::CULL_STYLE_BACK";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdImagingGLCullStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29B09044C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(void *a1)
{
  sub_29A008864(v14);
  sub_29A00911C(&v15, "< ", 2);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    do
    {
      v5 = sub_29A00911C(&v15, "<", 1);
      v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, v3 + 4);
      v7 = sub_29A00911C(v6, ": ", 2);
      v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, (v3 + 5));
      sub_29A00911C(v8, "> ", 2);
      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v2);
  }

  sub_29A00911C(&v15, ">", 1);
  std::stringbuf::str();
  v14[0] = *MEMORY[0x29EDC9528];
  v12 = *(MEMORY[0x29EDC9528] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v12;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v19);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v5);
  sub_29A3E3DC0(a1, &v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, &v4);
  sub_29A184A10(&v4, 0);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v2;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

{
  sub_29A008864(v5);
  sub_29B0999C8(a1, v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, v4);
  sub_29A1EF938(v4, v4[1]);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v2;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B0906C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09086C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(pxrInternal__aapl__pxrReserved__ **a1)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B090A0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(uint64_t a1)
{
  sub_29A008864(v5);
  v2 = sub_29A110918(a1);
  MEMORY[0x29C2C1EA0](&v6, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B090BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B090D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfBBox3d *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B090EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B091098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(double *a1)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B091238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(float *a1)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B0913D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string()
{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

{
  sub_29A008864(v2);
  pxrInternal__aapl__pxrReserved__::operator<<(&v3);
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v7);
}

void sub_29B091578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::pxr_half::half *a2)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(&v5);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B091718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(unsigned int *a1)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B0918B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B091A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B091BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B091D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B091F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange3d *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0920D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange3f *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B092278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B092378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B092498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange1f *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B092658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange1d *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0927F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfDualQuatd *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B092998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfQuatd *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B092B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(int8x16_t *this, const pxrInternal__aapl__pxrReserved__::GfDualQuatf *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B092CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(int8x16_t *this, const pxrInternal__aapl__pxrReserved__::GfQuatf *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B092E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfDualQuath *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B093018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfQuath *a2)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B0931B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfFrustum *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B093358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B093458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfPlane *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B093618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRay *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0937B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange2d *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B093958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B093AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B093C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B093E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B093FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange2f *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B094178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRotation *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B094318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfQuaternion *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0944B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B094658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0947F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B094998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix2d *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B094B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix2f *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B094CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3f *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B094E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3d *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B095018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0951B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMultiInterval *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B095358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRect2i *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0954F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B095698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B095838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfTransform *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0959D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B095AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B095C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B095E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B095FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B096180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B096320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void Overlay::__to_string(_DWORD *a1@<X0>, void *a2@<X8>)
{
  switch(*a1)
  {
    case 0:
      v3 = "PXR_NS::SdfSpecTypeUnknown";
      goto LABEL_20;
    case 1:
      v3 = "PXR_NS::SdfSpecTypeAttribute";
      goto LABEL_20;
    case 2:
      v3 = "PXR_NS::SdfSpecTypeConnection";
      goto LABEL_20;
    case 3:
      v3 = "PXR_NS::SdfSpecTypeExpression";
      goto LABEL_20;
    case 4:
      v3 = "PXR_NS::SdfSpecTypeMapper";
      goto LABEL_20;
    case 5:
      v3 = "PXR_NS::SdfSpecTypeMapperArg";
      goto LABEL_20;
    case 6:
      v3 = "PXR_NS::SdfSpecTypePrim";
      goto LABEL_20;
    case 7:
      v3 = "PXR_NS::SdfSpecTypePseudoRoot";
      goto LABEL_20;
    case 8:
      v3 = "PXR_NS::SdfSpecTypeRelationship";
      goto LABEL_20;
    case 9:
      v3 = "PXR_NS::SdfSpecTypeRelationshipTarget";
      goto LABEL_20;
    case 0xA:
      v3 = "PXR_NS::SdfSpecTypeVariant";
      goto LABEL_20;
    case 0xB:
      v3 = "PXR_NS::SdfSpecTypeVariantSet";
      goto LABEL_20;
    case 0xC:
      v3 = "PXR_NS::SdfNumSpecTypes";
LABEL_20:

      sub_29A008E78(a2, v3);
      break;
    default:
      std::to_string(&v8, *a1);
      v4 = std::string::insert(&v8, 0, "PXR_NS::SdfSpecType(rawValue: ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v9.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v9, ")");
      v7 = *&v6->__r_.__value_.__l.__data_;
      a2[2] = *(&v6->__r_.__value_.__l + 2);
      *a2 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  switch(*a1)
  {
    case 0:
      v3 = "PXR_NS::HgiBlendFactorZero";
      goto LABEL_27;
    case 1:
      v3 = "PXR_NS::HgiBlendFactorOne";
      goto LABEL_27;
    case 2:
      v3 = "PXR_NS::HgiBlendFactorSrcColor";
      goto LABEL_27;
    case 3:
      v3 = "PXR_NS::HgiBlendFactorOneMinusSrcColor";
      goto LABEL_27;
    case 4:
      v3 = "PXR_NS::HgiBlendFactorDstColor";
      goto LABEL_27;
    case 5:
      v3 = "PXR_NS::HgiBlendFactorOneMinusDstColor";
      goto LABEL_27;
    case 6:
      v3 = "PXR_NS::HgiBlendFactorSrcAlpha";
      goto LABEL_27;
    case 7:
      v3 = "PXR_NS::HgiBlendFactorOneMinusSrcAlpha";
      goto LABEL_27;
    case 8:
      v3 = "PXR_NS::HgiBlendFactorDstAlpha";
      goto LABEL_27;
    case 9:
      v3 = "PXR_NS::HgiBlendFactorOneMinusDstAlpha";
      goto LABEL_27;
    case 0xA:
      v3 = "PXR_NS::HgiBlendFactorConstantColor";
      goto LABEL_27;
    case 0xB:
      v3 = "PXR_NS::HgiBlendFactorOneMinusConstantColor";
      goto LABEL_27;
    case 0xC:
      v3 = "PXR_NS::HgiBlendFactorConstantAlpha";
      goto LABEL_27;
    case 0xD:
      v3 = "PXR_NS::HgiBlendFactorOneMinusConstantAlpha";
      goto LABEL_27;
    case 0xE:
      v3 = "PXR_NS::HgiBlendFactorSrcAlphaSaturate";
      goto LABEL_27;
    case 0xF:
      v3 = "PXR_NS::HgiBlendFactorSrc1Color";
      goto LABEL_27;
    case 0x10:
      v3 = "PXR_NS::HgiBlendFactorOneMinusSrc1Color";
      goto LABEL_27;
    case 0x11:
      v3 = "PXR_NS::HgiBlendFactorSrc1Alpha";
      goto LABEL_27;
    case 0x12:
      v3 = "PXR_NS::HgiBlendFactorOneMinusSrc1Alpha";
      goto LABEL_27;
    case 0x13:
      v3 = "PXR_NS::HgiBlendFactorCount";
LABEL_27:

      sub_29A008E78(a2, v3);
      break;
    default:
      std::to_string(&v8, *a1);
      v4 = std::string::insert(&v8, 0, "PXR_NS::HgiBlendFactor(rawValue: ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v9.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v9, ")");
      v7 = *&v6->__r_.__value_.__l.__data_;
      a2[2] = *(&v6->__r_.__value_.__l + 2);
      *a2 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  switch(*a1)
  {
    case 0:
      v3 = "PXR_NS::HdBlendFactorZero";
      goto LABEL_27;
    case 1:
      v3 = "PXR_NS::HdBlendFactorOne";
      goto LABEL_27;
    case 2:
      v3 = "PXR_NS::HdBlendFactorSrcColor";
      goto LABEL_27;
    case 3:
      v3 = "PXR_NS::HdBlendFactorOneMinusSrcColor";
      goto LABEL_27;
    case 4:
      v3 = "PXR_NS::HdBlendFactorDstColor";
      goto LABEL_27;
    case 5:
      v3 = "PXR_NS::HdBlendFactorOneMinusDstColor";
      goto LABEL_27;
    case 6:
      v3 = "PXR_NS::HdBlendFactorSrcAlpha";
      goto LABEL_27;
    case 7:
      v3 = "PXR_NS::HdBlendFactorOneMinusSrcAlpha";
      goto LABEL_27;
    case 8:
      v3 = "PXR_NS::HdBlendFactorDstAlpha";
      goto LABEL_27;
    case 9:
      v3 = "PXR_NS::HdBlendFactorOneMinusDstAlpha";
      goto LABEL_27;
    case 0xA:
      v3 = "PXR_NS::HdBlendFactorConstantColor";
      goto LABEL_27;
    case 0xB:
      v3 = "PXR_NS::HdBlendFactorOneMinusConstantColor";
      goto LABEL_27;
    case 0xC:
      v3 = "PXR_NS::HdBlendFactorConstantAlpha";
      goto LABEL_27;
    case 0xD:
      v3 = "PXR_NS::HdBlendFactorOneMinusConstantAlpha";
      goto LABEL_27;
    case 0xE:
      v3 = "PXR_NS::HdBlendFactorSrcAlphaSaturate";
      goto LABEL_27;
    case 0xF:
      v3 = "PXR_NS::HdBlendFactorSrc1Color";
      goto LABEL_27;
    case 0x10:
      v3 = "PXR_NS::HdBlendFactorOneMinusSrc1Color";
      goto LABEL_27;
    case 0x11:
      v3 = "PXR_NS::HdBlendFactorSrc1Alpha";
      goto LABEL_27;
    case 0x12:
      v3 = "PXR_NS::HdBlendFactorOneMinusSrc1Alpha";
      goto LABEL_27;
    case 0x13:
      v3 = "PXR_NS::HdBlendFactorLast";
LABEL_27:

      sub_29A008E78(a2, v3);
      break;
    default:
      std::to_string(&v8, *a1);
      v4 = std::string::insert(&v8, 0, "PXR_NS::HdBlendFactor(rawValue: ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v9.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v9, ")");
      v7 = *&v6->__r_.__value_.__l.__data_;
      a2[2] = *(&v6->__r_.__value_.__l + 2);
      *a2 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  switch(*a1)
  {
    case 0:
      v3 = "PXR_NS::HdStBinding::UNKNOWN";
      goto LABEL_38;
    case 1:
      v3 = "PXR_NS::HdStBinding::DISPATCH";
      goto LABEL_38;
    case 2:
      v3 = "PXR_NS::HdStBinding::DRAW_INDEX";
      goto LABEL_38;
    case 3:
      v3 = "PXR_NS::HdStBinding::DRAW_INDEX_INSTANCE";
      goto LABEL_38;
    case 4:
      v3 = "PXR_NS::HdStBinding::DRAW_INDEX_INSTANCE_ARRAY";
      goto LABEL_38;
    case 5:
      v3 = "PXR_NS::HdStBinding::VERTEX_ATTR";
      goto LABEL_38;
    case 6:
      v3 = "PXR_NS::HdStBinding::INDEX_ATTR";
      goto LABEL_38;
    case 7:
      v3 = "PXR_NS::HdStBinding::SSBO";
      goto LABEL_38;
    case 8:
      v3 = "PXR_NS::HdStBinding::BINDLESS_SSBO_RANGE";
      goto LABEL_38;
    case 9:
      v3 = "PXR_NS::HdStBinding::UBO";
      goto LABEL_38;
    case 0xA:
      v3 = "PXR_NS::HdStBinding::BINDLESS_UNIFORM";
      goto LABEL_38;
    case 0xB:
      v3 = "PXR_NS::HdStBinding::UNIFORM";
      goto LABEL_38;
    case 0xC:
      v3 = "PXR_NS::HdStBinding::UNIFORM_ARRAY";
      goto LABEL_38;
    case 0xD:
      v3 = "PXR_NS::HdStBinding::FALLBACK";
      goto LABEL_38;
    case 0xE:
      v3 = "PXR_NS::HdStBinding::TEXTURE_2D";
      goto LABEL_38;
    case 0xF:
      v3 = "PXR_NS::HdStBinding::ARRAY_OF_TEXTURE_2D";
      goto LABEL_38;
    case 0x10:
      v3 = "PXR_NS::HdStBinding::TEXTURE_FIELD";
      goto LABEL_38;
    case 0x11:
      v3 = "PXR_NS::HdStBinding::TEXTURE_UDIM_ARRAY";
      goto LABEL_38;
    case 0x12:
      v3 = "PXR_NS::HdStBinding::TEXTURE_UDIM_LAYOUT";
      goto LABEL_38;
    case 0x13:
      v3 = "PXR_NS::HdStBinding::TEXTURE_PTEX_TEXEL";
      goto LABEL_38;
    case 0x14:
      v3 = "PXR_NS::HdStBinding::TEXTURE_PTEX_LAYOUT";
      goto LABEL_38;
    case 0x15:
      v3 = "PXR_NS::HdStBinding::BINDLESS_TEXTURE_2D";
      goto LABEL_38;
    case 0x16:
      v3 = "PXR_NS::HdStBinding::BINDLESS_ARRAY_OF_TEXTURE_2D";
      goto LABEL_38;
    case 0x17:
      v3 = "PXR_NS::HdStBinding::BINDLESS_TEXTURE_FIELD";
      goto LABEL_38;
    case 0x18:
      v3 = "PXR_NS::HdStBinding::BINDLESS_TEXTURE_UDIM_ARRAY";
      goto LABEL_38;
    case 0x19:
      v3 = "PXR_NS::HdStBinding::BINDLESS_TEXTURE_UDIM_LAYOUT";
      goto LABEL_38;
    case 0x1A:
      v3 = "PXR_NS::HdStBinding::BINDLESS_TEXTURE_PTEX_TEXEL";
      goto LABEL_38;
    case 0x1B:
      v3 = "PXR_NS::HdStBinding::BINDLESS_TEXTURE_PTEX_LAYOUT";
      goto LABEL_38;
    case 0x1C:
      v3 = "PXR_NS::HdStBinding::PRIMVAR_REDIRECT";
      goto LABEL_38;
    case 0x1D:
      v3 = "PXR_NS::HdStBinding::FIELD_REDIRECT";
      goto LABEL_38;
    case 0x1E:
      v3 = "PXR_NS::HdStBinding::TRANSFORM_2D";
LABEL_38:

      sub_29A008E78(a2, v3);
      break;
    default:
      std::to_string(&v8, *a1);
      v4 = std::string::insert(&v8, 0, "PXR_NS::HdStBinding::Type(rawValue: ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v9.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v9, ")");
      v7 = *&v6->__r_.__value_.__l.__data_;
      a2[2] = *(&v6->__r_.__value_.__l + 2);
      *a2 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      break;
  }
}

void sub_29B0964C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B096648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09677C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0968B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0969D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B096B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B096D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfHumanReadableValue *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B096ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfAssetPath *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B097070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void Overlay::__to_string(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {

    sub_29A008E78(a2, "expired PXR_NS::SdfAttributeSpecHandle");
  }

  else
  {
    Overlay::__to_string(a1, &v8);
    v4 = std::string::insert(&v8, 0, "PXR_NS::SdfAttributeSpecHandle(");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {

    sub_29A008E78(a2, "expired PXR_NS::SdfPrimSpecHandle");
  }

  else
  {
    Overlay::__to_string(a1, &v8);
    v4 = std::string::insert(&v8, 0, "PXR_NS::SdfPrimSpecHandle(");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {

    sub_29A008E78(a2, "expired PXR_NS::SdfPropertySpecHandle");
  }

  else
  {
    Overlay::__to_string(a1, &v8);
    v4 = std::string::insert(&v8, 0, "PXR_NS::SdfPropertySpecHandle(");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {

    sub_29A008E78(a2, "expired PXR_NS::SdfRelationshipSpecHandle");
  }

  else
  {
    Overlay::__to_string(a1, &v8);
    v4 = std::string::insert(&v8, 0, "PXR_NS::SdfRelationshipSpecHandle(");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {

    sub_29A008E78(a2, "expired PXR_NS::SdfSpecHandle");
  }

  else
  {
    Overlay::__to_string(a1, &v8);
    v4 = std::string::insert(&v8, 0, "PXR_NS::SdfSpecHandle(");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {

    sub_29A008E78(a2, "expired PXR_NS::SdfVariantSetSpecHandle");
  }

  else
  {
    Overlay::__to_string(a1, &v8);
    v4 = std::string::insert(&v8, 0, "PXR_NS::SdfVariantSetSpecHandle(");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {

    sub_29A008E78(a2, "expired PXR_NS::SdfVariantSpecHandle");
  }

  else
  {
    Overlay::__to_string(a1, &v8);
    v4 = std::string::insert(&v8, 0, "PXR_NS::SdfVariantSpecHandle(");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29B097164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *Overlay::__to_string@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v6);
    sub_29A1DA6E4(&v6);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfAttributeSpec");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v6);
    sub_29A1DA6E4(&v6);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfPrimSpec");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v6);
    sub_29A1DA6E4(&v6);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfPropertySpec");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v6);
    sub_29A1DA6E4(&v6);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfRelationshipSpec");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v6);
    sub_29A1DA6E4(&v6);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfSpec");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v6);
    sub_29A1DA6E4(&v6);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfVariantSetSpec");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v6);
    sub_29A1DA6E4(&v6);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfVariantSpec");
}

void sub_29B097348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29B0974CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0976B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29B097834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B097A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29B097B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B097D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29B097F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0980E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29B09826C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B098450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29B0985D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0987B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29B0989A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B098B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfPathExpression *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B098D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B098E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfPredicateExpression *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B099034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B099148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0992AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29B099320(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  std::stringbuf::str();
  v57[0] = *MEMORY[0x29EDC9528];
  v55 = *(MEMORY[0x29EDC9528] + 72);
  *(v57 + *(v57[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v57[2] = v55;
  v58 = MEMORY[0x29EDC9570] + 16;
  if (v60 < 0)
  {
    operator delete(v59[7].__locale_);
  }

  v58 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v59);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v61);
}

void sub_29B09946C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfValueTypeName *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09960C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0997C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09999C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B0999C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29A1EF368(a1);
  if (result)
  {
    v5 = (*(**a1 + 48))();

    return sub_29A23F5D8(a2, v5);
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = (a2 + 1);
  }

  return result;
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B099BDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(_DWORD *a1)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B099D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B099F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09A030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09A150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09A310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void *Overlay::__to_string@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v5);
    sub_29A1DA6E4(&v5);
  }

  return sub_29A008E78(a2, "dormant PXR_NS::SdfPseudoRootSpec");
}

void sub_29B09A4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  sub_29A1DCEA8(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  v25 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v25 + 8))(v25);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfReference *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09A704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09A818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09A9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09ABA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::PcpSite *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09AD60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09AF00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09B0A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09B258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09B4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09B6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09B7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09B954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09BAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09BBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09BD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09BF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09C078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09C19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(pxrInternal__aapl__pxrReserved__::SdfPath **this, const pxrInternal__aapl__pxrReserved__::UsdStageLoadRules *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09C47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09C590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09C750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09C89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09C9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09CBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09CCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09CE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09CF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09D08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09D160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a9);
  _Unwind_Resume(a1);
}

void sub_29B09D328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09D4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09D5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09D6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09D864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09D9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09DB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09DC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09DD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09DE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09DF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09E174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09E2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09E3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09E5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09E6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09E808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09E914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09EC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09EE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09EFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09F1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09F2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09F418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09F5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09F718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B09F87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09FA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::PxOsdSubdivTags *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09FBDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B09FDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B09FFC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A0164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A03DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A0554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A06D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A0848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A097C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A0ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A0C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A0D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A0EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A101C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A17C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A18F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A1FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A21B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A24DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A28B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A2FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A32D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A34A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A35D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A36FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A3864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A399C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A3B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A3C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A3DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A3F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A40C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A4280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A43D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A4550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A4670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A47A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A4A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A4D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A4FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A516C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A52E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A54FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A56C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A57E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A5994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A5AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A5C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A5D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A5ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A6048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0A6208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0A63A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A6548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A6634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0A67F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0A6994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0A6B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A6C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A6DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A6EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A7030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A7180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A7340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A74E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A7680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A7814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B0A79D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A7AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A7C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A7EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A8050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A81B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0A8374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A8514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A86B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A8854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A89F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A8B94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A8D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(unsigned __int8 *a1)
{
  sub_29A008864(v4);
  pxrInternal__aapl__pxrReserved__::operator<<(&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B0A8ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A9074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdxPickHit *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0A9214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A93B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A9554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A96F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A9894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A9A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A9BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A9D74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0A9F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::__to_string(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTaskParams *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B0AA0B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29B0AA1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0AA2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0AA4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0AA61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0AA76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t Overlay::__to_string(uint64_t *a1)
{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A21E4C4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A21C3B0);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A21A424);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A196CD0);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19462C);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A191FA4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A196204);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A193B78);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A191558);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19786C);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A195274);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A192B64);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A1993F0);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC7F648);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC7F9EC);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A1988A0);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A2224DC);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A221414);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A1A3028);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A1A2454);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A1A167C);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A1A0BD4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19FF48);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19F624);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC80124);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC808C4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19AB98);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19A0BC);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19B710);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC80FA4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC817D4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC81FF4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC82828);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A20CF78);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC82E78);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19EA20);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29AC83444);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19C86C);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19E054);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A19D3E8);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A20FD94);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A210DF8);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A1905C8);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A18ECB4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A18FA44);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A213EF4);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

{
  sub_29A008864(v4);
  v10 = a1[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v5, a1, &v10, sub_29A214D38);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x29EDC9528];
  v2 = *(MEMORY[0x29EDC9528] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5 = v2;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29B0AFAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0AFBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B0AFCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL Overlay::__operatorEqualsEquals(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 == sub_29A0ECB5C(a2);
}

{
  return *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

{
  v2 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = v2;
  return pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(&v5, &v4);
}

{
  v2 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = v2;
  return pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::equal(&v5, &v4);
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (*(a2 + 24) ^ *(a1 + 24)) < 8uLL;
}

{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_29ABD4D84(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 32;
    v4 += 32;
  }

  while (v2 != v3);
  return result;
}

void Overlay::__operatorEqualsEquals()
{
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
}

{
  std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>>();
}

{
  std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>,std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>>();
}

{
  std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>>();
}

BOOL Overlay::__operatorEqualsEquals(void *a1, void *a2)
{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  v2 = a1[1];
  return v2 == a2[1] && (!v2 || *a1 == *a2);
}

{
  v2 = a1[1];
  return v2 == a2[1] && (!v2 || *a1 == *a2);
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

BOOL sub_29B0B04D8(uint64_t *a1, uint64_t *a2)
{
  sub_29A1F0334(a1, &v11);
  sub_29A1F0334(a2, v10);
  v3 = v10[0];
  if (v12 - v11 == v10[1] - v10[0])
  {
    if (v11 == v12)
    {
      v7 = 1;
    }

    else
    {
      v4 = v11 + 8;
      do
      {
        v5 = *v3++;
        v6 = v5 ^ *(v4 - 8);
        v7 = v6 < 8;
        v8 = v6 > 7 || v4 == v12;
        v4 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = v10;
  sub_29A124AB0(&v13);
  v10[0] = &v11;
  sub_29A124AB0(v10);
  return v7;
}