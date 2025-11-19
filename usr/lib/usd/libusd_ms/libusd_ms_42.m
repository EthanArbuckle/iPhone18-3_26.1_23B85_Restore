void *sub_29A21110C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(size_t) [T = unsigned long long]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A2111A0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B294388();
    }
  }

  return result;
}

uint64_t sub_29A2111E4@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_29A2114BC(&v5, a1, a2);
  *(a3 + 8) = &off_2A2044BA8 + 3;
  *a3 = v5;
  return result;
}

void sub_29A2112BC(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A18EE04(v15, v7);
    sub_29A18F540(v15);
    v8 = v16;
    sub_29A18F540(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 2 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A2118FC(&v13, v9, v10);
      sub_29A2114BC(v12, a2, a3);
      ++v11;
      sub_29A21197C(&v13);
    }

    a4[1] = &off_2A2043028;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043028;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29A211434(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A2113ACLL);
  }

  JUMPOUT(0x29A21141CLL);
}

uint64_t sub_29A2114BC(_WORD *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v9 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v9, 0x2F);
  }

  *a3 = v4;
  sub_29A211610(v5 + 56 * v3);
  if (v7 == 0.0)
  {
    result = HIWORD(LODWORD(v7));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23])
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23] + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
  }

  *a1 = result;
  return result;
}

uint64_t sub_29A211610(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A20477D0[v1])(&v4, a1);
}

float sub_29A211694(uint64_t a1, _DWORD *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1) != 3 || (**a2 == 28265 ? (v4 = *(*a2 + 2) == 102) : (v4 = 0), !v4))
    {
      if (*(a2 + 1) == 4 && **a2 == 1718511917)
      {
        return -INFINITY;
      }

      if (*(a2 + 1) != 3)
      {
LABEL_27:
        exception = __cxa_allocate_exception(8uLL);
        *exception = MEMORY[0x29EDC95F8] + 16;
        __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
      }

      a2 = *a2;
LABEL_19:
      if (*a2 == 24942 && *(a2 + 2) == 110)
      {
        return NAN;
      }

      goto LABEL_27;
    }

    return INFINITY;
  }

  v2 = *(a2 + 23);
  if (v2 == 3)
  {
    if (*a2 != 28265 || *(a2 + 2) != 102)
    {
      goto LABEL_19;
    }

    return INFINITY;
  }

  if (v2 != 4 || *a2 != 1718511917)
  {
    goto LABEL_27;
  }

  return -INFINITY;
}

float sub_29A2117C8(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return sub_29A211694(a1, EmptyString);
}

void sub_29A211818(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A2118C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2118FC(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21197C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 2;
  }

  return a1;
}

uint64_t sub_29A2119FC@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *a2 + 1;
  v6 = *a1;
  if (v5 > 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3))
  {
    v10[0] = "sdf/parserHelpers.cpp";
    v10[1] = "MakeScalarValueImpl";
    v10[2] = 77;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(float *, const vector<Value> &, size_t &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Not enough values to parse value of type %s", "float");
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a2 = v5;
  result = sub_29A211610(v6 + 56 * v4);
  *(a3 + 8) = &unk_2A2044C63;
  *a3 = v8;
  return result;
}

void sub_29A211B90(__int128 *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 1))
  {
    v23 = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(&v23, a2, a3) * v7);
      sub_29A1FC2DC(&v23);
    }

    while (v23 != *(&v23 + 1));
    sub_29A18E048(v21, v7);
    sub_29A18E624(v21);
    v8 = v22;
    sub_29A18E624(v21);
    v11 = 0;
    v19 = v8;
    v20 = v22 + 4 * v21[0];
    while (v19 != v20)
    {
      v12 = sub_29A211E64(&v19, v9, v10);
      v13 = *a3;
      v14 = *a3 + 1;
      v15 = *a2;
      if (v14 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
      {
        *&v23 = "sdf/parserHelpers.cpp";
        *(&v23 + 1) = "MakeScalarValueImpl";
        *&v24 = 77;
        *(&v24 + 1) = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(float *, const vector<Value> &, size_t &)";
        LOBYTE(v25) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Not enough values to parse value of type %s", "float");
        exception = __cxa_allocate_exception(8uLL);
        *exception = MEMORY[0x29EDC95F8] + 16;
        __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
      }

      v16 = v12;
      *a3 = v14;
      sub_29A211610(v15 + 56 * v13);
      *v16 = v17;
      ++v11;
      sub_29A211EE4(&v19);
    }

    a4[1] = &off_2A2042F70;
    sub_29A18ECC8(a4, v21);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  a4[1] = &off_2A2042F70;
  sub_29A18ECC8(a4, &v23);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29A211DE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v14, v15);
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    *v13 = a11;
    *(v13 + 16) = a12;
    *(v12 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A211CC8);
  }

  JUMPOUT(0x29A211DC8);
}

uint64_t sub_29A211E64(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<float>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<float>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A211EE4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<float>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<float>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

uint64_t sub_29A211F64@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = *a2 + 1;
  v6 = *a1;
  if (v5 > 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3))
  {
    v10[0] = "sdf/parserHelpers.cpp";
    v10[1] = "MakeScalarValueImpl";
    v10[2] = 71;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(double *, const vector<Value> &, size_t &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Not enough values to parse value of type %s", "double");
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a2 = v5;
  result = sub_29A2123CC(v6 + 56 * v4);
  a3[1] = &unk_2A2044D1B;
  *a3 = v8;
  return result;
}

void sub_29A2120F8(__int128 *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 1))
  {
    v23 = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(&v23, a2, a3) * v7);
      sub_29A1FC2DC(&v23);
    }

    while (v23 != *(&v23 + 1));
    sub_29A18FC40(v21, v7);
    sub_29A190088(v21);
    v8 = v22;
    sub_29A190088(v21);
    v11 = 0;
    v19 = v8;
    v20 = v22 + 8 * v21[0];
    while (v19 != v20)
    {
      v12 = sub_29A2126B4(&v19, v9, v10);
      v13 = *a3;
      v14 = *a3 + 1;
      v15 = *a2;
      if (v14 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
      {
        *&v23 = "sdf/parserHelpers.cpp";
        *(&v23 + 1) = "MakeScalarValueImpl";
        *&v24 = 71;
        *(&v24 + 1) = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(double *, const vector<Value> &, size_t &)";
        LOBYTE(v25) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Not enough values to parse value of type %s", "double");
        exception = __cxa_allocate_exception(8uLL);
        *exception = MEMORY[0x29EDC95F8] + 16;
        __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
      }

      v16 = v12;
      *a3 = v14;
      sub_29A2123CC(v15 + 56 * v13);
      *v16 = v17;
      ++v11;
      sub_29A212734(&v19);
    }

    a4[1] = &off_2A20430E0;
    sub_29A18ECC8(a4, v21);
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  a4[1] = &off_2A20430E0;
  sub_29A18ECC8(a4, &v23);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29A212348(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v14, v15);
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    *v13 = a11;
    *(v13 + 16) = a12;
    *(v12 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A212230);
  }

  JUMPOUT(0x29A212330);
}

uint64_t sub_29A2123CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A2047800[v1])(&v4, a1);
}

double sub_29A21244C(uint64_t a1, _DWORD *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1) != 3 || (**a2 == 28265 ? (v4 = *(*a2 + 2) == 102) : (v4 = 0), !v4))
    {
      if (*(a2 + 1) == 4 && **a2 == 1718511917)
      {
        return -INFINITY;
      }

      if (*(a2 + 1) != 3)
      {
LABEL_27:
        exception = __cxa_allocate_exception(8uLL);
        *exception = MEMORY[0x29EDC95F8] + 16;
        __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
      }

      a2 = *a2;
LABEL_19:
      if (*a2 == 24942 && *(a2 + 2) == 110)
      {
        return NAN;
      }

      goto LABEL_27;
    }

    return INFINITY;
  }

  v2 = *(a2 + 23);
  if (v2 == 3)
  {
    if (*a2 != 28265 || *(a2 + 2) != 102)
    {
      goto LABEL_19;
    }

    return INFINITY;
  }

  if (v2 != 4 || *a2 != 1718511917)
  {
    goto LABEL_27;
  }

  return -INFINITY;
}

double sub_29A212580(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return sub_29A21244C(a1, EmptyString);
}

void sub_29A2125D0(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A212680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2126B4(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<double>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<double>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A212734(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<double>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<double>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t sub_29A2127B4@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = *a2 + 1;
  v6 = *a1;
  if (v5 > 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3))
  {
    v10[0] = "sdf/parserHelpers.cpp";
    v10[1] = "MakeScalarValueImpl";
    v10[2] = 90;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(SdfTimeCode *, const vector<Value> &, size_t &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Not enough values to parse value of type %s", "timecode");
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a2 = v5;
  result = sub_29A2123CC(v6 + 56 * v4);
  a3[1] = &off_2A2047830 + 1;
  *a3 = v8;
  return result;
}

void sub_29A212948(__int128 *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 == *(a1 + 1))
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    a4[1] = &off_2A20478F8;
    sub_29A18ECC8(a4, &v23);
    sub_29A213190(&v23);
  }

  else
  {
    v23 = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(&v23, a2, a3) * v7);
      sub_29A1FC2DC(&v23);
    }

    while (v23 != *(&v23 + 1));
    sub_29A212D6C(v21, v7);
    sub_29A21358C(v21);
    v8 = v22;
    sub_29A21358C(v21);
    v11 = 0;
    v19 = v8;
    v20 = v22 + 8 * v21[0];
    while (v19 != v20)
    {
      v12 = sub_29A212DE0(&v19, v9, v10);
      v13 = *a3;
      v14 = *a3 + 1;
      v15 = *a2;
      if (v14 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
      {
        *&v23 = "sdf/parserHelpers.cpp";
        *(&v23 + 1) = "MakeScalarValueImpl";
        *&v24 = 90;
        *(&v24 + 1) = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(SdfTimeCode *, const vector<Value> &, size_t &)";
        LOBYTE(v25) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Not enough values to parse value of type %s", "timecode");
        exception = __cxa_allocate_exception(8uLL);
        *exception = MEMORY[0x29EDC95F8] + 16;
        __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
      }

      v16 = v12;
      *a3 = v14;
      sub_29A2123CC(v15 + 56 * v13);
      *v16 = v17;
      ++v11;
      sub_29A212E60(&v19);
    }

    a4[1] = &off_2A20478F8;
    sub_29A18ECC8(a4, v21);
    sub_29A213190(v21);
  }
}

void sub_29A212B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A213190(va);
  _Unwind_Resume(a1);
}

void sub_29A212B98(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v14, v15);
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    *v13 = a11;
    *(v13 + 16) = a12;
    *(v12 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A212A80);
  }

  JUMPOUT(0x29A212B80);
}

unint64_t sub_29A212C40(double *a1)
{
  v1 = 0x9E3779B97F4A7C55 * *a1;
  if (*a1 == 0.0)
  {
    v1 = 0;
  }

  return bswap64(v1);
}

void *sub_29A212D54@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2047830 + 1;
  return result;
}

uint64_t sub_29A212D6C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A2131FC(a1);
  v6 = &v5;
  sub_29A21324C(a1, a2, &v6);
  return a1;
}

uint64_t sub_29A212DE0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A212E60(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t *sub_29A212EE0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A212F00(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A213058(a1);
}

void *sub_29A212F44(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A213178);
  return a2;
}

void *sub_29A213040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20478F8;
  return sub_29A18ECC8(a2, v2);
}

void sub_29A213058(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 10, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A213190(v1);

    operator delete(v1);
  }
}

unint64_t sub_29A2130C0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v5 = v4;
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = *&v5 + ((*&v5 + v1 + (*&v5 + v1) * (*&v5 + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t sub_29A213110(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A213058(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A213058(&v4);
  }

  return *a1;
}

void sub_29A213190(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1 + 24;
    if (*(a1 + 24))
    {
      sub_29B2943EC(*(a1 + 24), v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete((*(a1 + 32) - 16));
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }
}

void sub_29A2131FC(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29A213190(a1);
    }

    *a1 = 0;
  }
}

void sub_29A21324C(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_29A2134F8(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = 0;
            v13 = **a3;
            v14 = (8 * a2 - 8 * v3 - 8) >> 3;
            v15 = (v14 + 2) & 0x3FFFFFFFFFFFFFFELL;
            v16 = vdupq_n_s64(v14);
            v17 = &v7[v3 + 1];
            do
            {
              v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_29B430070)));
              if (v18.i8[0])
              {
                *(v17 - 1) = v13;
              }

              if (v18.i8[4])
              {
                *v17 = v13;
              }

              v12 += 2;
              v17 += 2;
            }

            while (v15 != v12);
          }

          v19 = v7;
LABEL_43:
          if (v19 != a1[4])
          {
            sub_29A213190(a1);
            a1[4] = v19;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a1;
      }

      v27 = sub_29A2134F8(a1, a2);
      v19 = v27;
      if (v3)
      {
        v28 = 8 * v26;
        v29 = v27;
        do
        {
          v30 = *v7++;
          *v29++ = v30;
          v28 -= 8;
        }

        while (v28);
      }

      if (v3 < a2)
      {
        v31 = 0;
        v32 = **a3;
        v33 = (8 * a2 - 8 * v3 - 8) >> 3;
        v34 = (v33 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v35 = vdupq_n_s64(v33);
        v36 = &v27[v3 + 1];
        do
        {
          v37 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v31), xmmword_29B430070)));
          if (v37.i8[0])
          {
            *(v36 - 1) = v32;
          }

          if (v37.i8[4])
          {
            *v36 = v32;
          }

          v31 += 2;
          v36 += 2;
        }

        while (v34 != v31);
      }

      goto LABEL_43;
    }

    if (8 * a2 / a2 == 8)
    {
      v20 = sub_29A2134F8(a1, a2);
      v19 = v20;
      v21 = 0;
      v22 = **a3;
      v23 = (8 * a2 - 8) >> 3;
      v24 = vdupq_n_s64(v23);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v21), xmmword_29B430070)));
        if (v25.i8[0])
        {
          v20[v21] = v22;
        }

        if (v25.i8[4])
        {
          v20[v21 + 1] = v22;
        }

        v21 += 2;
      }

      while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v21);
      goto LABEL_43;
    }
  }

  sub_29A2131FC(a1);
}

void *sub_29A2134F8(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::SdfTimeCode]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

void sub_29A21358C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B294414();
    }
  }
}

void sub_29A2135D0(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  sub_29A2138E0(&__p, a1, a2);
  *(a3 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A21364C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2136DC(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A213A04(v15, v7);
    sub_29A214388(v15);
    v8 = v16;
    sub_29A214388(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 24 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A213A9C(&v13, v9, v10);
      sub_29A2138E0(v12, a2, a3);
      ++v11;
      sub_29A213B1C(&v13);
    }

    a4[1] = off_2A20479C8;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = off_2A20479C8;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29A213858(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A2137D0);
  }

  JUMPOUT(0x29A213840);
}

std::string *sub_29A2138E0(std::string *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v8 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v8, 0x2F);
  }

  *a3 = v4;
  v6 = v5 + 56 * v3;
  if (*(v6 + 48) != 3)
  {
    sub_29A151D68();
  }

  return std::string::operator=(a1, v6);
}

uint64_t sub_29A213A04(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_29A213F24(a1);
  v7 = __p;
  sub_29A213FB0(a1, a2, &v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29A213A74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

uint64_t sub_29A213A9C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<std::string>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A213B1C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<std::string>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

uint64_t *sub_29A213B9C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A213BBC(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A213D64(result);
}

unint64_t sub_29A213BD4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  sub_29A1C5CF0(&v4, v1[4], v2);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A213C50(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A213EF4);
  return a2;
}

void *sub_29A213D4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = off_2A20479C8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A213D64(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A213E8C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A213D64(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A213D64(&v4);
  }

  return *a1;
}

void *sub_29A213EF4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 24;
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v5, v6);
}

void sub_29A213F24(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
    }

    if (*a1)
    {
      v4 = a1[4];
      v5 = 24 * *a1;
      do
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        v4 += 24;
        v5 -= 24;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

void sub_29A213FB0(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = &v7[24 * a2];
            v14 = 24 * v3 - 24 * a2;
            do
            {
              if (v13[23] < 0)
              {
                operator delete(*v13);
              }

              v13 += 24;
              v14 -= 24;
            }

            while (v14);
            goto LABEL_25;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            v7 = sub_29A214158(a1, a2);
            sub_29A2142B4(v9, (v9 + 24 * v3), v7);
          }

LABEL_19:
          v10 = &v7[24 * v3];
          goto LABEL_20;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29A214158(a1, a2);
      sub_29A2142B4(v11, (v11 + 24 * v12), v7);
      if (v3 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = sub_29A214158(a1, a2);
      v10 = v7;
LABEL_20:
      sub_29A2141F0(a3, v10, &v7[24 * a2]);
LABEL_25:
      if (v7 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
      }

      *a1 = a2;
      return;
    }
  }

  sub_29A213F24(a1);
}

void *sub_29A214158(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(size_t) [T = std::string]");
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

__int128 **sub_29A2141F0(__int128 **result, char *__dst, char *a3)
{
  if (__dst != a3)
  {
    v4 = 0;
    v5 = *result;
    v6 = __dst;
    do
    {
      if (*(v5 + 23) < 0)
      {
        result = sub_29A008D14(v6, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        *(v6 + 2) = *(v5 + 2);
        *v6 = v7;
      }

      v6 += 24;
      v4 -= 24;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_29A214270(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

char *sub_29A2142B4(__int128 *a1, __int128 *a2, char *__dst)
{
  if (a1 == a2)
  {
    return __dst;
  }

  v4 = a1;
  v5 = 0;
  v6 = __dst;
  do
  {
    if (*(v4 + 23) < 0)
    {
      sub_29A008D14(v6, *v4, *(v4 + 1));
    }

    else
    {
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
    }

    v4 = (v4 + 24);
    v6 += 24;
    v5 -= 24;
  }

  while (v4 != a2);
  return v6;
}

void sub_29A214344(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_29A214388(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B294478();
    }
  }

  return result;
}

uint64_t sub_29A2143CC@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, atomic_uint **a3@<X8>)
{
  v7 = 0;
  result = sub_29A2146F8(&v7, a1, a2);
  v5 = v7;
  *a3 = v7;
  a3[1] = (&off_2A2044E88 + 1);
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v6;
    }
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A2144F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A214860(v15, v7);
    sub_29A215100(v15);
    v8 = v16;
    sub_29A215100(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 8 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A214904(&v13, v9, v10);
      sub_29A2146F8(v12, a2, a3);
      ++v11;
      sub_29A214984(&v13);
    }

    a4[1] = off_2A2047A80;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = off_2A2047A80;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

void sub_29A214670(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A2145E8);
  }

  JUMPOUT(0x29A214658);
}

uint64_t sub_29A2146F8(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v8 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v8, 0x2F);
  }

  *a3 = v4;
  if (*(v5 + 56 * v3 + 48) != 3)
  {
    sub_29A151D68();
  }

  result = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9);
  if (&v9 == a1)
  {
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = v9;
  }

  return result;
}

uint64_t sub_29A214860(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A214D50(a1);
  v6 = &v5;
  sub_29A214DD8(a1, a2, &v6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A2148D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

uint64_t sub_29A214904(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A214984(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t *sub_29A214A04(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A214A24(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A214BC0(result);
}

unint64_t sub_29A214A3C(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = (v4 & 0xFFFFFFFFFFFFFFF8) + (((v4 & 0xFFFFFFFFFFFFFFF8) + v1 + ((v4 & 0xFFFFFFFFFFFFFFF8) + v1) * ((v4 & 0xFFFFFFFFFFFFFFF8) + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

void *sub_29A214AAC(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A214D38);
  return a2;
}

void *sub_29A214BA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = off_2A2047A80;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A214BC0(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A214CD0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A214BC0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A214BC0(&v4);
  }

  return *a1;
}

void *sub_29A214D50(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    if (*result)
    {
      v3 = result[4];
      v4 = 8 * *result;
      do
      {
        if ((*v3 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v3;
        v4 -= 8;
      }

      while (v4);
    }

    *result = 0;
  }

  return result;
}

uint64_t *sub_29A214DD8(uint64_t *result, unint64_t a2, uint64_t **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v21 = a2;
            do
            {
              v22 = v7[v21];
              if ((v22 & 7) != 0)
              {
                atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              ++v21;
            }

            while (v3 != v21);
          }

          else
          {
            v9 = result[4];
            if (*(v9 - 1) < a2)
            {
              result = sub_29A21508C(result, v9, a2, *result);
              v7 = result;
            }

            v10 = *a3;
            v11 = v3;
            do
            {
              v12 = *v10;
              v7[v11] = *v10;
              if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v7[v11] &= 0xFFFFFFFFFFFFFFF8;
              }

              ++v11;
            }

            while (a2 != v11);
          }

LABEL_40:
          if (v7 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A21508C(result, v7, a2, v17);
      v7 = result;
      if (v3 < a2)
      {
        v18 = *a3;
        v19 = v3;
        do
        {
          v20 = *v18;
          result[v19] = *v18;
          if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            result[v19] &= 0xFFFFFFFFFFFFFFF8;
          }

          ++v19;
        }

        while (a2 != v19);
      }

      goto LABEL_40;
    }

    v13 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      result = sub_29A214FF8(result, a2);
      v7 = result;
      v14 = 0;
      v15 = *a3;
      do
      {
        v16 = *v15;
        result[v14 / 8] = *v15;
        if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          result[v14 / 8] &= 0xFFFFFFFFFFFFFFF8;
        }

        v14 += 8;
      }

      while (v13 != v14);
      goto LABEL_40;
    }
  }

  return sub_29A214D50(result);
}

void *sub_29A214FF8(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::TfToken]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t *sub_29A21508C(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  result = sub_29A214FF8(a1, a3);
  if (a4)
  {
    v7 = 8 * a4;
    v8 = result;
    do
    {
      v9 = *a2;
      *v8 = *a2;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++a2;
      ++v8;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_29A215100(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2944DC();
    }
  }

  return result;
}

void sub_29A215144(uint64_t *a1@<X1>, unint64_t *a2@<X2>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v6);
  sub_29A215468(v6, a1, a2);
  a3[1] = &off_2A2047B38;
  sub_29A215A28(a3, v6);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_29A2151DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0D2850(va);
  _Unwind_Resume(a1);
}

void sub_29A215264(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 == *(a1 + 8))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    a4[1] = off_2A2047BF0;
    sub_29A18ECC8(a4, v15);
    sub_29A216064(v15);
  }

  else
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A215A8C(v15, v7);
    sub_29A216634(v15);
    v8 = v16;
    sub_29A216634(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 48 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A215B38(&v13, v9, v10);
      sub_29A215468(v12, a2, a3);
      ++v11;
      sub_29A215BB8(&v13);
    }

    a4[1] = off_2A2047BF0;
    sub_29A18ECC8(a4, v15);
    sub_29A216064(v15);
  }
}

void sub_29A2153B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A216064(va);
  _Unwind_Resume(a1);
}

void sub_29A2153E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A215358);
  }

  JUMPOUT(0x29A2153C8);
}

void sub_29A215468(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v8 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v8, 0x2F);
  }

  *a3 = v4;
  sub_29A2155F0(v5 + 56 * v3, __p);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *__p;
  *(a1 + 16) = v10;
  HIBYTE(v10) = 0;
  LOBYTE(__p[0]) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    v7 = SHIBYTE(v10);
    *(a1 + 24) = v11;
    *(a1 + 40) = v12;
    HIBYTE(v12) = 0;
    LOBYTE(v11) = 0;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 24) = v11;
    *(a1 + 40) = v12;
  }
}

void sub_29A2155F0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4 == 5)
  {
    if (*(a1 + 23) < 0)
    {
      sub_29A008D14(a2, *a1, *(a1 + 8));
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
    }

    if (*(a1 + 47) < 0)
    {
      sub_29A008D14((a2 + 24), *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 40) = *(a1 + 40);
    }
  }

  else
  {
    if (v4 != 3)
    {
      sub_29A151D68();
    }

    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(a2);
  }
}

void sub_29A2156A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A2156BC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A2156DC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A21583C(a1);
}

unint64_t sub_29A2156F4(pxrInternal__aapl__pxrReserved__ **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A2158B8(&v3, v1, v1 + 24);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

char *sub_29A215824@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2047B38;
  return sub_29A215A28(a2, v2);
}

void sub_29A21583C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 48), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

unint64_t sub_29A2158B8(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2, v6);
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v8, v9);
}

__int128 *sub_29A215924(__int128 **a1)
{
  v2 = atomic_load(*a1 + 12);
  if (v2 != 1)
  {
    sub_29AA9FE18(*a1, &v4);
    sub_29A21583C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A21583C(&v4);
  }

  return *a1;
}

char *sub_29A21598C(char *__dst, __int128 *a2)
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

  atomic_store(0, __dst + 12);
  return __dst;
}

void sub_29A215A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A215A28(void *a1, __int128 *a2)
{
  v4 = operator new(0x38uLL);
  result = sub_29A21598C(v4, a2);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 12, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A215A8C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v5);
  sub_29A21611C(a1);
  v9 = v5;
  sub_29A2161BC(a1, a2, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return a1;
}

uint64_t sub_29A215B38(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A215BB8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 48;
  }

  return a1;
}

uint64_t *sub_29A215C38(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A215C58(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A215DD0(a1);
}

void *sub_29A215CBC(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A21604C);
  return a2;
}

void *sub_29A215DB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = off_2A2047BF0;
  return sub_29A18ECC8(a2, v2);
}

void sub_29A215DD0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A216064(v1);

    operator delete(v1);
  }
}

unint64_t sub_29A215E38(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = (v3 + 48);
      sub_29A215EB0(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

unint64_t sub_29A215EB0(uint64_t a1, pxrInternal__aapl__pxrReserved__ *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A2158B8(&v5, a2, a2 + 24);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

BOOL sub_29A215F30(void *a1, uint64_t a2)
{
  if (a1[4] != *(a2 + 32) || !sub_29A18EAFC(a1, a2) || a1[3] != *(a2 + 24))
  {
    result = sub_29A18EAFC(a1, a2);
    if (!result)
    {
      return result;
    }

    if (*a1)
    {
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==();
    }
  }

  return 1;
}

uint64_t sub_29A215FE4(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A215DD0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A215DD0(&v4);
  }

  return *a1;
}

void *sub_29A21604C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 48;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void sub_29A216064(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 48 * *a1;
        v7 = (v5 + 23);
        do
        {
          if (v7[24] < 0)
          {
            operator delete(*(v7 + 1));
          }

          if (*v7 < 0)
          {
            operator delete(*(v7 - 23));
          }

          v7 += 48;
          v6 -= 48;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A21611C(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29A216064(a1);
    }

    else if (*a1)
    {
      v4 = 48 * *a1;
      v5 = (a1[4] + 23);
      do
      {
        if (v5[24] < 0)
        {
          operator delete(*(v5 + 1));
        }

        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }

        v5 += 48;
        v4 -= 48;
      }

      while (v4);
    }

    *a1 = 0;
  }
}

void sub_29A2161BC(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = 48 * v3 - 48 * a2;
            v14 = &v7[6 * a2 + 2] + 7;
            do
            {
              if (v14[24] < 0)
              {
                operator delete(*(v14 + 1));
              }

              if (*v14 < 0)
              {
                operator delete(*(v14 - 23));
              }

              v14 += 48;
              v13 -= 48;
            }

            while (v13);
            goto LABEL_27;
          }

          v9 = a1[4];
          if (*(v9 - 8) < a2)
          {
            v7 = sub_29A216374(a1, a2);
            sub_29A21651C(v9, v9 + 48 * v3, v7);
          }

LABEL_19:
          v10 = &v7[6 * v3];
          goto LABEL_20;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29A216374(a1, a2);
      sub_29A21651C(v11, v11 + 48 * v12, v7);
      if (v3 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (a2 <= 0x555555555555555)
    {
      v10 = sub_29A216374(a1, a2);
      v7 = v10;
LABEL_20:
      sub_29A21640C(v10, &v7[6 * a2], *a3);
LABEL_27:
      if (v7 != a1[4])
      {
        sub_29A216064(a1);
        a1[4] = v7;
      }

      *a1 = a2;
      return;
    }
  }

  sub_29A21611C(a1);
}

void *sub_29A216374(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::SdfAssetPath]");
  if (a2 > 0x2AAAAAAAAAAAAAALL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 48 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

char *sub_29A21640C(char *__dst, char *a2, __int128 *a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v5 = 0;
  v6 = __dst;
  do
  {
    if (*(a3 + 23) < 0)
    {
      sub_29A008D14(v6, *a3, *(a3 + 1));
    }

    else
    {
      v7 = *a3;
      *(v6 + 2) = *(a3 + 2);
      *v6 = v7;
    }

    if (*(a3 + 47) < 0)
    {
      sub_29A008D14(v6 + 24, *(a3 + 3), *(a3 + 4));
    }

    else
    {
      v8 = *(a3 + 24);
      *(v6 + 5) = *(a3 + 5);
      *(v6 + 24) = v8;
    }

    v6 += 48;
    v5 -= 48;
  }

  while (v6 != a2);
  return v6;
}

void sub_29A2164C0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A00B454(v1);
      v1 += 48;
      v3 -= 48;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_29A21651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = a3 + v6;
    v8 = (a1 + v6);
    if (*(a1 + v6 + 23) < 0)
    {
      sub_29A008D14(v7, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      *(v7 + 16) = *(v8 + 2);
      *v7 = v9;
    }

    v10 = a3 + v6;
    v11 = a1 + v6;
    if (*(a1 + v6 + 47) < 0)
    {
      sub_29A008D14((v10 + 24), *(v11 + 24), *(v11 + 32));
    }

    else
    {
      v12 = *(v11 + 24);
      *(v10 + 40) = *(v11 + 40);
      *(v10 + 24) = v12;
    }

    v6 += 48;
  }

  while (a1 + v6 != v5);
  return v5;
}

void sub_29A2165D8(void *a1)
{
  __cxa_begin_catch(a1);
  for (; v2; v2 -= 48)
  {
    sub_29A00B454(v1);
    v1 += 48;
  }

  __cxa_rethrow();
}

void sub_29A216634(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B294534();
    }
  }
}

void sub_29A216678()
{
  v1[0] = "sdf/parserHelpers.cpp";
  v1[1] = "MakeScalarValueImpl";
  v1[2] = 292;
  v1[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(SdfOpaqueValue *, const vector<Value> &, size_t &)";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Found authored opinion for opaque attribute");
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A2167A4(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 == *(a1 + 1))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    a4[1] = &off_2A2047CA8;
    sub_29A18ECC8(a4, &v13);
    sub_29A213190(&v13);
  }

  else
  {
    v13 = *a1;
    LODWORD(v5) = 1;
    do
    {
      v5 = (*sub_29A1FC25C(&v13, a2, a3) * v5);
      sub_29A1FC2DC(&v13);
    }

    while (v13 != *(&v13 + 1));
    sub_29A2169E0(v11, v5);
    sub_29A216F40(v11);
    v6 = v12;
    sub_29A216F40(v11);
    v10[0] = v6;
    v10[1] = v12 + v11[0];
    if (v6 != v12 + v11[0])
    {
      sub_29A216A50(v10, v7, v8);
      *&v13 = "sdf/parserHelpers.cpp";
      *(&v13 + 1) = "MakeScalarValueImpl";
      *&v14 = 292;
      *(&v14 + 1) = "void pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(SdfOpaqueValue *, const vector<Value> &, size_t &)";
      LOBYTE(v15) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 1, "Found authored opinion for opaque attribute");
      exception = __cxa_allocate_exception(8uLL);
      *exception = MEMORY[0x29EDC95F8] + 16;
      __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
    }

    a4[1] = &off_2A2047CA8;
    sub_29A18ECC8(a4, v11);
    sub_29A213190(v11);
  }
}

void sub_29A21693C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A213190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2169E0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A2131FC(a1);
  v6 = &v5;
  sub_29A216DEC(a1, a2);
  return a1;
}

uint64_t sub_29A216A50(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

uint64_t *sub_29A216AD0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A216AF0(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A216C88(a1);
}

unint64_t sub_29A216B08(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = **a1;
    do
    {
      v1 = (((v1 + 10) * (v1 + 9)) >> 1) + 9;
      --v2;
    }

    while (v2);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

void *sub_29A216B74(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A216DD4);
  return a2;
}

void *sub_29A216C70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2047CA8;
  return sub_29A18ECC8(a2, v2);
}

void sub_29A216C88(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 10, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A213190(v1);

    operator delete(v1);
  }
}

BOOL sub_29A216CF0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && sub_29A18EAFC(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  return sub_29A18EAFC(a1, a2);
}

uint64_t sub_29A216D6C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A216C88(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A216C88(&v4);
  }

  return *a1;
}

void sub_29A216DEC(unint64_t *a1, unint64_t a2)
{
  if (*a1 != a2)
  {
    if (a2)
    {
      v4 = a1[4];
      if (!v4 || a1[3] || (v5 = atomic_load(v4 - 2), v5 != 1) || *a1 < a2 && *(a1[4] - 8) < a2)
      {
        v4 = sub_29A216EB0(a1, a2);
      }

      if (v4 != a1[4])
      {
        sub_29A213190(a1);
        a1[4] = v4;
      }

      *a1 = a2;
    }

    else
    {

      sub_29A2131FC(a1);
    }
  }
}

void *sub_29A216EB0(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::SdfOpaqueValue]");
  if (a2 > 0x7FFFFFFFFFFFFFEELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

void sub_29A216F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B294598();
    }
  }
}

void sub_29A216F84(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  *__p = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  sub_29A2172C8(v4, a1, a2);
  *(a3 + 8) = &off_2A2047D78;
  sub_29A218D70();
}

void sub_29A21703C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

void sub_29A2170C4(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 == *(a1 + 8))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    a4[1] = off_2A2047E30;
    sub_29A18ECC8(a4, v15);
    sub_29A219394(v15);
  }

  else
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A218DD8(v15, v7);
    sub_29A219950(v15);
    v8 = v16;
    sub_29A219950(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 96 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A218EA0(&v13, v9, v10);
      sub_29A2172C8(v12, a2, a3);
      ++v11;
      sub_29A218F20(&v13);
    }

    a4[1] = off_2A2047E30;
    sub_29A18ECC8(a4, v15);
    sub_29A219394(v15);
  }
}

void sub_29A217210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A219394(va);
  _Unwind_Resume(a1);
}

void sub_29A217240(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A2171B8);
  }

  JUMPOUT(0x29A217228);
}

void sub_29A2172C8(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v8 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v8, 0x2F);
  }

  *a3 = v4;
  if (*(v5 + 56 * v3 + 48) != 3)
  {
    sub_29A151D68();
  }

  pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(__p);
  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *__p;
  *(a1 + 16) = v10;
  __p[1] = 0;
  v10 = 0;
  __p[0] = 0;
  sub_29A217560((a1 + 24));
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  v12 = 0;
  v11 = 0uLL;
  sub_29A21761C((a1 + 48));
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  v14 = 0;
  v13 = 0uLL;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = v15;
  *(a1 + 88) = v16;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v17 = &v13;
  sub_29A218CE8(&v17);
  v17 = &v11;
  sub_29A21859C(&v17);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29A2174D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2174F4(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v4 = (a1 + 48);
  sub_29A218CE8(&v4);
  v4 = (a1 + 24);
  sub_29A21859C(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29A217560(void **a1)
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
        v3 -= 32;
        sub_29A2175CC(a1, v3);
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

_DWORD *sub_29A2175CC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29A21761C(void **a1)
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
        v3 -= 64;
        sub_29A217688(a1, v3);
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

_DWORD *sub_29A217688(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 32);
  sub_29A2176E4(&v4);
  v4 = (a2 + 8);
  sub_29A10C99C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));
  return sub_29A1DE3A4(a2);
}

void sub_29A2176E4(void ***a1)
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
        v4 -= 72;
        sub_29A21776C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A21776C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  v4 = (a2 + 24);
  sub_29A2177C4(&v4);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

void sub_29A2177C4(void ***a1)
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
        v4 -= 56;
        sub_29A21784C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A21784C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  sub_29A217894(&v3);
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void sub_29A217894(void ***a1)
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
        sub_29A21791C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A21791C(uint64_t a1, uint64_t a2)
{
  sub_29A186B14(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t *sub_29A21796C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 96), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A21798C(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A217B5C(a1);
}

void sub_29A217B5C(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 24, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 9));
    }

    v3 = (v1 + 12);
    sub_29A218CE8(&v3);
    v3 = (v1 + 6);
    sub_29A21859C(&v3);
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 1) = v2;
      operator delete(v2);
    }

    operator delete(v1);
  }
}

unint64_t sub_29A217BE8(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = 0;
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 >> 2;
    do
    {
      v10 = *v2++;
      v9 = v10;
      if (v7)
      {
        v6 = v9 + ((v6 + v9 + (v6 + v9) * (v6 + v9)) >> 1);
      }

      else
      {
        v5 = 1;
        v6 = v9;
      }

      v7 = 1;
      --v8;
    }

    while (v8);
    v13 = v5;
    v12 = v6;
  }

  sub_29A217CE0(&v12, a2 + 3, a2 + 6, (a2 + 9));
  return bswap64(0x9E3779B97F4A7C55 * v12);
}

uint64_t *sub_29A217C90(uint64_t *result, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = v3 >> 2;
    v5 = *result;
    v6 = *(result + 8);
    do
    {
      v8 = *v2++;
      v7 = v8;
      if (v6)
      {
        v5 = v7 + ((v5 + v7 + (v5 + v7) * (v5 + v7)) >> 1);
      }

      else
      {
        *(result + 8) = 1;
        v5 = v7;
      }

      v6 = 1;
      --v4;
    }

    while (v4);
    *result = v5;
  }

  return result;
}

unint64_t sub_29A217CE0(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1] - v8;
  if (v9)
  {
    v10 = v9 >> 5;
    do
    {
      --v10;
      v11 = v8 + 32;
      sub_29A217DC8(a1, v8);
      v8 = v11;
    }

    while (v10);
  }

  return sub_29A217D64(a1, a3, a4);
}

unint64_t sub_29A217D64(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t *a2, uint64_t a3)
{
  sub_29A217E20(a1, *a2, (a2[1] - *a2) >> 6);
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v6, v7);
}

unint64_t sub_29A217DC8(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t a2)
{
  sub_29A1E33B4(a1, a2);
  v6 = *(a2 + 8);
  v5 = a2 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v8, v9);
}

unint64_t sub_29A217E20(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      --v3;
      sub_29A1E33B4(v5, a2);
      result = sub_29A217E84(v5, a2 + 8, (a2 + 32), (a2 + 56));
      a2 += 64;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_29A217E84(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v8 = *a2;
  v9 = *(a2 + 8) - v8;
  if (v9)
  {
    v10 = v9 >> 5;
    do
    {
      --v10;
      v11 = (v8 + 32);
      sub_29A217F5C(a1, v8);
      v8 = v11;
    }

    while (v10);
  }

  return sub_29A217F08(a1, a3, a4);
}

unint64_t sub_29A217F08(unint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  result = sub_29A217FF8(a1, a2);
  v6 = *a3;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_29A217F5C(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2, v5);

  return sub_29A217FB8(a1, v2 + 6, v2 + 28);
}

uint64_t sub_29A217FB8(uint64_t result, int *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

unint64_t sub_29A217FF8(unint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = result;
    v5 = 0x8E38E38E38E38E39 * (v3 >> 3);
    do
    {
      --v5;
      result = sub_29A218064(v4, v2, (v2 + 24), v2 + 48);
      v2 += 72;
    }

    while (v5);
  }

  return result;
}

unint64_t sub_29A218064(uint64_t *a1, unsigned int **a2, uint64_t *a3, uint64_t a4)
{
  sub_29A217C90(a1, a2);
  sub_29A2180D0(a1, a3);
  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  if (v7 >= 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = *(a4 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v8, v9);
}

pxrInternal__aapl__pxrReserved__::Tf_HashState *sub_29A2180D0(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = this;
    v5 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 3);
    do
    {
      --v5;
      this = sub_29A21813C(v4, v2, v2 + 8, (v2 + 32));
      v2 += 56;
    }

    while (v5);
  }

  return this;
}

uint64_t sub_29A21813C(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a2;
  if (*(this + 8))
  {
    v6 += (*this + v6 + (*this + v6) * (*this + v6)) >> 1;
  }

  else
  {
    *(this + 8) = 1;
  }

  *this = v6;
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(this, v8, v9);

  return sub_29A2181C4(this, a4);
}

uint64_t sub_29A2181C4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = result;
    v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
    do
    {
      --v5;
      result = sub_29A218224(v4, v2, (v2 + 24));
      v2 += 40;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_29A218224(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2, v6);
  result = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(a3);
  if (*(a1 + 8))
  {
    result += (*a1 + result + (*a1 + result) * (*a1 + result)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = result;
  return result;
}

uint64_t sub_29A218294(uint64_t a1)
{
  v1 = atomic_load((*a1 + 96));
  if (v1 != 1)
  {
    sub_29A2182FC();
  }

  return *a1;
}

void sub_29A218364(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*>();
}

void sub_29A218420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A218CE8(va);
  sub_29A21859C(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A218464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference,pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference&>();
  }

  v7 = 1;
  sub_29A218510(v6);
  return a4;
}

uint64_t sub_29A218510(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A218548(a1);
  }

  return a1;
}

uint64_t *sub_29A218548(uint64_t *result)
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
      result = sub_29A2175CC(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29A21859C(void ***a1)
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
        sub_29A2175CC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A218624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern,pxrInternal__aapl__pxrReserved__::SdfPathPattern&>();
  }

  v7 = 1;
  sub_29A218C5C(v6);
  return a4;
}

void *sub_29A2186D0(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 6);
      *(v4 + 28) = *(v6 + 28);
      *(v4 + 6) = v9;
      v6 += 2;
      v4 = v8 + 4;
      v14 = v8 + 4;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_29A2187A4(v11);
  return v4;
}

uint64_t sub_29A2187A4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10CC3C(a1);
  }

  return a1;
}

void *sub_29A2187DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29A218880(a4);
  }

  v7 = 1;
  sub_29A218BD0(v6);
  return a4;
}

void sub_29A218880(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*>();
}

void sub_29A218930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2177C4(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A218960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall&>();
  }

  v7 = 1;
  sub_29A218B44(v6);
  return a4;
}

uint64_t sub_29A218A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg,pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg&>();
  }

  v7 = 1;
  sub_29A218AB8(v6);
  return a4;
}

uint64_t sub_29A218AB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A218AF0(a1);
  }

  return a1;
}

void sub_29A218AF0(uint64_t *a1)
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
      v3 -= 40;
      sub_29A21791C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_29A218B44(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A218B7C(a1);
  }

  return a1;
}

void sub_29A218B7C(uint64_t *a1)
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
      v3 -= 56;
      sub_29A21784C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_29A218BD0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A218C08(a1);
  }

  return a1;
}

void sub_29A218C08(uint64_t *a1)
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
      v3 -= 72;
      sub_29A21776C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_29A218C5C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A218C94(a1);
  }

  return a1;
}

uint64_t *sub_29A218C94(uint64_t *result)
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
      v3 -= 64;
      result = sub_29A217688(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29A218CE8(void ***a1)
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
        v4 -= 64;
        sub_29A217688(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A218DD8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *__p = 0u;
  v9 = 0u;
  v7 = 0u;
  *v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_29A219470(a1);
  v10 = v5;
  sub_29A219534(a1, a2, &v10);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  v10 = &v7;
  sub_29A218CE8(&v10);
  v10 = v6 + 1;
  sub_29A21859C(&v10);
  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  return a1;
}

void sub_29A218E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A2174F4(&a9);
  sub_29A219394(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A218EA0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A218F20(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 96;
  }

  return a1;
}

uint64_t *sub_29A218FA0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A218FC0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A219168(a1);
}

unint64_t sub_29A218FD8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  sub_29A2191D0(&v4, v1[4], v2);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A219054(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A21937C);
  return a2;
}

void *sub_29A219150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = off_2A2047E30;
  return sub_29A18ECC8(a2, v2);
}

void sub_29A219168(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A219394(v1);

    operator delete(v1);
  }
}

unint64_t sub_29A2191D0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      --v3;
      sub_29A217C90(v5, a2);
      result = sub_29A217CE0(v5, (a2 + 24), (a2 + 48), a2 + 72);
      a2 += 96;
    }

    while (v3);
  }

  return result;
}

BOOL sub_29A219234(void *a1, uint64_t a2)
{
  if (a1[4] != *(a2 + 32) || !sub_29A18EAFC(a1, a2) || a1[3] != *(a2 + 24))
  {
    result = sub_29A18EAFC(a1, a2);
    if (!result)
    {
      return result;
    }

    if (*a1)
    {
      std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
    }
  }

  return 1;
}

uint64_t sub_29A219314(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A219168(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A219168(&v4);
  }

  return *a1;
}

void *sub_29A21937C(pxrInternal__aapl__pxrReserved__::SdfPathExpression **a1, void *a2)
{
  v3 = *a1;
  *a1 = (*a1 + 96);
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void sub_29A219394(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 96 * *a1;
        v7 = v5 + 48;
        do
        {
          if (*(v7 + 47) < 0)
          {
            operator delete(*(v7 + 24));
          }

          v9 = v7;
          sub_29A218CE8(&v9);
          v9 = (v7 - 24);
          sub_29A21859C(&v9);
          v8 = *(v7 - 48);
          if (v8)
          {
            *(v7 - 40) = v8;
            operator delete(v8);
          }

          v7 += 96;
          v6 -= 96;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A219470(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29A219394(a1);
    }

    else if (*a1)
    {
      v4 = 96 * *a1;
      v5 = a1[4] + 48;
      do
      {
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        v7 = v5;
        sub_29A218CE8(&v7);
        v7 = (v5 - 24);
        sub_29A21859C(&v7);
        v6 = *(v5 - 48);
        if (v6)
        {
          *(v5 - 40) = v6;
          operator delete(v6);
        }

        v5 += 96;
        v4 -= 96;
      }

      while (v4);
    }

    *a1 = 0;
  }
}

void sub_29A219534(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = 96 * v3;
            v14 = 96 * a2;
            do
            {
              v15 = &v7[v14 / 8];
              if (SHIBYTE(v7[v14 / 8 + 11]) < 0)
              {
                operator delete(v15[9]);
              }

              v17 = v15 + 6;
              sub_29A218CE8(&v17);
              v17 = v15 + 3;
              sub_29A21859C(&v17);
              v16 = *v15;
              if (*v15)
              {
                v7[v14 / 8 + 1] = v16;
                operator delete(v16);
              }

              v14 += 96;
            }

            while (v13 != v14);
            goto LABEL_27;
          }

          v9 = a1[4];
          if (*(v9 - 8) < a2)
          {
            v7 = sub_29A21971C(a1, a2);
            sub_29A2198B0(v9, v9 + 96 * v3, v7);
          }

LABEL_19:
          v10 = &v7[12 * v3];
          goto LABEL_20;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29A21971C(a1, a2);
      sub_29A2198B0(v11, v11 + 96 * v12, v7);
      if (v3 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (a2 <= 0x2AAAAAAAAAAAAAALL)
    {
      v7 = sub_29A21971C(a1, a2);
      v10 = v7;
LABEL_20:
      sub_29A2197B4(a3, v10, &v7[12 * a2]);
LABEL_27:
      if (v7 != a1[4])
      {
        sub_29A219394(a1);
        a1[4] = v7;
      }

      *a1 = a2;
      return;
    }
  }

  sub_29A219470(a1);
}

void *sub_29A21971C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::SdfPathExpression]");
  if (a2 > 0x155555555555555)
  {
    v3 = -1;
  }

  else
  {
    v3 = (96 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

void sub_29A2197B4(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    sub_29A218364(a2);
  }
}

void sub_29A21980C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A219848(v1);
      v1 += 96;
      v3 -= 96;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_29A219848(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = (a1 + 48);
  sub_29A218CE8(&v3);
  v3 = (a1 + 24);
  sub_29A21859C(&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void *sub_29A2198B0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    sub_29A218364(a3);
  }

  return a3;
}

void sub_29A219914(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A219848(v1);
      v1 += 96;
      v3 -= 96;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_29A219950(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2945E8();
    }
  }
}

uint64_t sub_29A219994@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  result = sub_29A219C68(&v5, a1, a2);
  *a3 = v5;
  a3[1] = &off_2A2047EE8 + 3;
  return result;
}

void sub_29A219A68(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A219F48(v15, v7);
    sub_29A21A6E8(v15);
    v8 = v16;
    sub_29A21A6E8(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 8 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A219FBC(&v13, v9, v10);
      sub_29A219C68(v12, a2, a3);
      ++v11;
      sub_29A21A03C(&v13);
    }

    a4[1] = &off_2A2047FA0;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2047FA0;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29A219BE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A219B58);
  }

  JUMPOUT(0x29A219BC8);
}

uint64_t sub_29A219C68(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 2 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v10 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v10, 0x2F);
  }

  *a3 = v3 + 1;
  *a1 = sub_29A20E084(v4 + 56 * v3);
  v8 = (*a3)++;
  result = sub_29A20E084(*a2 + 56 * v8);
  a1[1] = result;
  return result;
}

void *sub_29A219EF0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2047EE8 + 3;
  return result;
}

uint64_t sub_29A219F08(uint64_t result, int *a2, int *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

uint64_t sub_29A219F48(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A21A43C(a1);
  v6 = &v5;
  sub_29A21A48C(a1, a2, &v6);
  return a1;
}

uint64_t sub_29A219FBC(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21A03C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t *sub_29A21A0BC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A21A0DC(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A21A254(result);
}

void *sub_29A21A140(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A21A424);
  return a2;
}

void *sub_29A21A23C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2047FA0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A21A254(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A21A2BC(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = (a2[4] + 4);
    v4 = *a2;
    do
    {
      v5 = bswap64(0x9E3779B97F4A7C55 * (*v3 + ((*(v3 - 1) + *v3 + (*(v3 - 1) + *v3) * (*(v3 - 1) + *v3)) >> 1)));
      v2 = v5 + ((v5 + v2 + (v5 + v2) * (v5 + v2)) >> 1);
      v3 += 2;
      --v4;
    }

    while (v4);
    v2 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v2);
}

uint64_t sub_29A21A3BC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A21A254(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A21A254(&v4);
  }

  return *a1;
}

void *sub_29A21A424(unsigned int **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29A21A43C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A21A48C(unint64_t *result, unint64_t a2, unint64_t **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A21A654(result, a2);
              v7 = result;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  result[i] = *(v9 + i * 8);
                }
              }
            }

            v11 = *a3;
            v12 = v3;
            do
            {
              v7[v12++] = *v11;
            }

            while (a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A21A654(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 8 * v17;
        v19 = result;
        do
        {
          v20 = *v7++;
          *v19++ = v20;
          v18 -= 8;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = v3;
        do
        {
          result[v22++] = *v21;
        }

        while (a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      result = sub_29A21A654(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        result[v15 / 8] = *v16;
        v15 += 8;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A21A43C(result);
}

void *sub_29A21A654(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A21A6E8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B29464C();
    }
  }

  return result;
}

uint64_t sub_29A21A72C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_29A21AA04(&v5, a1, a2);
  *(a3 + 8) = &off_2A2042560 + 3;
  *a3 = v5;
  return result;
}

void sub_29A21A804(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A191640(v15, v7);
    sub_29A191A40(v15);
    v8 = v16;
    sub_29A191A40(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 4 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21ABD0(&v13, v9, v10);
      sub_29A21AA04(v12, a2, a3);
      ++v11;
      sub_29A21AC50(&v13);
    }

    a4[1] = &off_2A2043250;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043250;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29A21A97C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21A8F4);
  }

  JUMPOUT(0x29A21A964);
}

uint64_t sub_29A21AA04(_WORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 2 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v13 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v13, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A211610(v4 + 56 * v3);
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  *a1 = v9;
  v10 = (*a3)++;
  sub_29A211610(*a2 + 56 * v10);
  if (v11 == 0.0)
  {
    result = HIWORD(LODWORD(v11));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A21ABD0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21AC50(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

uint64_t sub_29A21ACD0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  result = sub_29A21AFA4(&v5, a1, a2);
  *a3 = v5;
  a3[1] = &off_2A2042618 + 3;
  return result;
}

void sub_29A21ADA4(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A190B18(v15, v7);
    sub_29A190F50(v15);
    v8 = v16;
    sub_29A190F50(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 8 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21B0E4(&v13, v9, v10);
      sub_29A21AFA4(v12, a2, a3);
      ++v11;
      sub_29A21B164(&v13);
    }

    a4[1] = &off_2A2043198;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043198;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29A21AF1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21AE94);
  }

  JUMPOUT(0x29A21AF04);
}

uint64_t sub_29A21AFA4(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 2 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v12 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v12, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A211610(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  result = sub_29A211610(*a2 + 56 * v9);
  a1[1] = v11;
  return result;
}

uint64_t sub_29A21B0E4(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21B164(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

unsigned int *sub_29A21B1E4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unsigned int **a3@<X8>)
{
  sub_29A21B4D8(&v5, a1, a2);
  a3[1] = (&off_2A20426D0 + 2);
  result = operator new(0x18uLL);
  *result = v5;
  atomic_store(0, result + 4);
  *a3 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21B2D8(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A1921FC(v15, v7);
    sub_29A19255C(v15);
    v8 = v16;
    sub_29A19255C(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 16 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21B618(&v13, v9, v10);
      sub_29A21B4D8(v12, a2, a3);
      ++v11;
      sub_29A21B698(&v13);
    }

    a4[1] = &off_2A2043308;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043308;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29A21B450(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21B3C8);
  }

  JUMPOUT(0x29A21B438);
}

uint64_t sub_29A21B4D8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 2 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v12 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v12, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A2123CC(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  result = sub_29A2123CC(*a2 + 56 * v9);
  a1[1] = v11;
  return result;
}

uint64_t sub_29A21B618(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21B698(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

_DWORD *sub_29A21B718@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A21BA18(&v5, a1, a2);
  a3[1] = &off_2A2048058 + 2;
  result = operator new(0x10uLL);
  *result = v5;
  result[2] = v6;
  atomic_store(0, result + 3);
  *a3 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21B814(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A21BE0C(v15, v7);
    sub_29A21C6E0(v15);
    v8 = v16;
    sub_29A21C6E0(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 12 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21BE84(&v13, v9, v10);
      sub_29A21BA18(v12, a2, a3);
      ++v11;
      sub_29A21BF04(&v13);
    }

    a4[1] = &off_2A2048110;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2048110;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29A21B990(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21B908);
  }

  JUMPOUT(0x29A21B978);
}

uint64_t sub_29A21BA18(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 3 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v11 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v11, 0x2F);
  }

  *a3 = v3 + 1;
  *a1 = sub_29A20E084(v4 + 56 * v3);
  v8 = (*a3)++;
  a1[1] = sub_29A20E084(*a2 + 56 * v8);
  v9 = (*a3)++;
  result = sub_29A20E084(*a2 + 56 * v9);
  a1[2] = result;
  return result;
}

uint64_t *sub_29A21BB74(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A21BB90(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 3, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A21BBB8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A21BBD0(int **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A21BDD4(&v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29A21BC2C(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

_DWORD *sub_29A21BD74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2048058 + 2;
  result = operator new(0x10uLL);
  v5 = *(v3 + 8);
  *result = *v3;
  result[2] = v5;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A21BDD4(uint64_t a1, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A219F08(a1, a3, a4);
}

uint64_t sub_29A21BE0C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  sub_29A21C3C8(a1);
  v7 = &v5;
  sub_29A21C418(a1, a2, &v7);
  return a1;
}

uint64_t sub_29A21BE84(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21BF04(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 12;
  }

  return a1;
}

uint64_t *sub_29A21BF84(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A21BFA4(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A21C11C(result);
}

void *sub_29A21C008(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A21C3B0);
  return a2;
}

void *sub_29A21C104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2048110;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A21C11C(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A21C184(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 3;
      sub_29A21C1FC(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A21C1FC(uint64_t a1, int *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A21BDD4(&v5, a2, a2 + 1, a2 + 2);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A21C348(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A21C11C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A21C11C(&v4);
  }

  return *a1;
}

void *sub_29A21C3B0(unsigned int **a1, void *a2)
{
  v3 = *a1;
  *a1 += 3;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29A21C3C8(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A21C418(unint64_t *result, unint64_t a2, uint64_t **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A21C644(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = result + v10;
                  v12 = *(v9 + v10);
                  *(v11 + 2) = *(v9 + v10 + 8);
                  *v11 = v12;
                  v10 += 12;
                }

                while (12 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 12 * v3;
            do
            {
              v15 = v7 + v14;
              v16 = *v13;
              *(v15 + 2) = *(v13 + 2);
              *v15 = v16;
              v14 += 12;
            }

            while (12 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *result;
      }

      result = sub_29A21C644(result, a2);
      v17 = result;
      if (v3)
      {
        v23 = 12 * v22;
        v24 = result;
        do
        {
          v25 = *v7;
          *(v24 + 2) = *(v7 + 2);
          *v24 = v25;
          v24 = (v24 + 12);
          v7 = (v7 + 12);
          v23 -= 12;
        }

        while (v23);
      }

      if (v3 < a2)
      {
        v26 = *a3;
        v27 = 12 * v3;
        do
        {
          v28 = result + v27;
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          v27 += 12;
        }

        while (12 * a2 != v27);
      }

      goto LABEL_31;
    }

    if (a2 < 0x1555555555555556)
    {
      result = sub_29A21C644(result, a2);
      v17 = result;
      v18 = 0;
      v19 = *a3;
      do
      {
        v20 = result + v18;
        v21 = *v19;
        *(v20 + 2) = *(v19 + 2);
        *v20 = v21;
        v18 += 12;
      }

      while (12 * a2 != v18);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A21C3C8(result);
}

void *sub_29A21C644(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]");
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A21C6E0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2946B0();
    }
  }

  return result;
}

uint64_t sub_29A21C724@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_29A21CA08(&v5, a1, a2);
  *(a3 + 8) = &off_2A2042788 + 3;
  *a3 = v5;
  *(a3 + 4) = v6;
  return result;
}

void sub_29A21C804(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A193C60(v15, v7);
    sub_29A1940CC(v15);
    v8 = v16;
    sub_29A1940CC(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 6 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21CC38(&v13, v9, v10);
      sub_29A21CA08(v12, a2, a3);
      ++v11;
      sub_29A21CCB8(&v13);
    }

    a4[1] = &off_2A2043478;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043478;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29A21C980(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21C8F8);
  }

  JUMPOUT(0x29A21C968);
}

uint64_t sub_29A21CA08(_WORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 3 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v16 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v16, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A211610(v4 + 56 * v3);
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  *a1 = v9;
  v10 = (*a3)++;
  sub_29A211610(*a2 + 56 * v10);
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

  a1[1] = v12;
  v13 = (*a3)++;
  sub_29A211610(*a2 + 56 * v13);
  if (v14 == 0.0)
  {
    result = HIWORD(LODWORD(v14));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v14) >> 23])
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v14) >> 23] + (((LODWORD(v14) & 0x7FFFFF) + ((LODWORD(v14) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v14));
  }

  a1[2] = result;
  return result;
}

uint64_t sub_29A21CC38(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21CCB8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 6;
  }

  return a1;
}

_DWORD *sub_29A21CD38@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A21D038(&v5, a1, a2);
  a3[1] = &off_2A2042840 + 2;
  result = operator new(0x10uLL);
  *result = v5;
  result[2] = v6;
  atomic_store(0, result + 3);
  *a3 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21CE34(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A193124(v15, v7);
    sub_29A1935CC(v15);
    v8 = v16;
    sub_29A1935CC(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 12 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21D194(&v13, v9, v10);
      sub_29A21D038(v12, a2, a3);
      ++v11;
      sub_29A21D214(&v13);
    }

    a4[1] = &off_2A20433C0;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A20433C0;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29A21CFB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21CF28);
  }

  JUMPOUT(0x29A21CF98);
}

uint64_t sub_29A21D038(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 3 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v14 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v14, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A211610(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  sub_29A211610(*a2 + 56 * v9);
  a1[1] = v10;
  v11 = (*a3)++;
  result = sub_29A211610(*a2 + 56 * v11);
  a1[2] = v13;
  return result;
}

uint64_t sub_29A21D194(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21D214(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 12;
  }

  return a1;
}

void *sub_29A21D294@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A21D594(&v5, a1, a2);
  a3[1] = &off_2A20428F8 + 2;
  result = operator new(0x20uLL);
  *result = v5;
  *(result + 2) = v6;
  atomic_store(0, result + 6);
  *a3 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21D390(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A1948F8(v15, v7);
    sub_29A194CC8(v15);
    v8 = v16;
    sub_29A194CC8(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 24 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21D6F0(&v13, v9, v10);
      sub_29A21D594(v12, a2, a3);
      ++v11;
      sub_29A21D770(&v13);
    }

    a4[1] = &off_2A2043530;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043530;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29A21D50C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21D484);
  }

  JUMPOUT(0x29A21D4F4);
}

uint64_t sub_29A21D594(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 3 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v14 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v14, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A2123CC(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v9);
  a1[1] = v10;
  v11 = (*a3)++;
  result = sub_29A2123CC(*a2 + 56 * v11);
  a1[2] = v13;
  return result;
}

uint64_t sub_29A21D6F0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21D770(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

unsigned int *sub_29A21D7F0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unsigned int **a3@<X8>)
{
  sub_29A21DAE4(&v5, a1, a2);
  a3[1] = (&off_2A20481C8 + 2);
  result = operator new(0x14uLL);
  *result = v5;
  atomic_store(0, result + 4);
  *a3 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21D8E4(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A21DF14(v15, v7);
    sub_29A21E784(v15);
    v8 = v16;
    sub_29A21E784(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 16 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21DF88(&v13, v9, v10);
      sub_29A21DAE4(v12, a2, a3);
      ++v11;
      sub_29A21E008(&v13);
    }

    a4[1] = &off_2A2048280;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2048280;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29A21DA5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21D9D4);
  }

  JUMPOUT(0x29A21DA44);
}

uint64_t sub_29A21DAE4(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 4 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v12 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v12, 0x2F);
  }

  *a3 = v3 + 1;
  *a1 = sub_29A20E084(v4 + 56 * v3);
  v8 = (*a3)++;
  a1[1] = sub_29A20E084(*a2 + 56 * v8);
  v9 = (*a3)++;
  a1[2] = sub_29A20E084(*a2 + 56 * v9);
  v10 = (*a3)++;
  result = sub_29A20E084(*a2 + 56 * v10);
  a1[3] = result;
  return result;
}

uint64_t *sub_29A21DC5C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A21DC78(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A21DCA0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A21DCB8(int **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A21DED8(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29A21DD18(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

unsigned int *sub_29A21DE80@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = (&off_2A20481C8 + 2);
  result = operator new(0x14uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A21DED8(uint64_t a1, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A21BDD4(a1, a3, a4, a5);
}

uint64_t sub_29A21DF14(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_29A21E4DC(a1);
  v6 = v5;
  sub_29A21E52C(a1, a2, &v6);
  return a1;
}

uint64_t sub_29A21DF88(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21E008(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t *sub_29A21E088(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A21E0A8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A21E220(result);
}

void *sub_29A21E10C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A21E4C4);
  return a2;
}

void *sub_29A21E208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2048280;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A21E220(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A21E288(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29A21E300(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A21E300(uint64_t a1, int *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A21DED8(&v5, a2, a2 + 1, a2 + 2, a2 + 3);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A21E45C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A21E220(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A21E220(&v4);
  }

  return *a1;
}

void *sub_29A21E4C4(unsigned int **a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29A21E4DC(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A21E52C(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A21E6F4(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A21E6F4(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29A21E6F4(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A21E4DC(result);
}

void *sub_29A21E6F4(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A21E784(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B29471C();
    }
  }

  return result;
}

uint64_t sub_29A21E7C8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  result = sub_29A21EA9C(&v5, a1, a2);
  *a3 = v5;
  a3[1] = &off_2A20429B0 + 3;
  return result;
}

void sub_29A21E89C(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A1962EC(v15, v7);
    sub_29A1966EC(v15);
    v8 = v16;
    sub_29A1966EC(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 8 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21ED30(&v13, v9, v10);
      sub_29A21EA9C(v12, a2, a3);
      ++v11;
      sub_29A21EDB0(&v13);
    }

    a4[1] = &off_2A20436A0;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A20436A0;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29A21EA14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21E98CLL);
  }

  JUMPOUT(0x29A21E9FCLL);
}

uint64_t sub_29A21EA9C(_WORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 4 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v19 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v19, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A211610(v4 + 56 * v3);
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  *a1 = v9;
  v10 = (*a3)++;
  sub_29A211610(*a2 + 56 * v10);
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

  a1[1] = v12;
  v13 = (*a3)++;
  sub_29A211610(*a2 + 56 * v13);
  if (v14 == 0.0)
  {
    v15 = HIWORD(LODWORD(v14));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v14) >> 23])
  {
    v15 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v14) >> 23] + (((LODWORD(v14) & 0x7FFFFF) + ((LODWORD(v14) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v15) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v14));
  }

  a1[2] = v15;
  v16 = (*a3)++;
  sub_29A211610(*a2 + 56 * v16);
  if (v17 == 0.0)
  {
    result = HIWORD(LODWORD(v17));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23])
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23] + (((LODWORD(v17) & 0x7FFFFF) + ((LODWORD(v17) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v17));
  }

  a1[3] = result;
  return result;
}

uint64_t sub_29A21ED30(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21EDB0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

unsigned int *sub_29A21EE30@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unsigned int **a3@<X8>)
{
  sub_29A21F124(&v5, a1, a2);
  a3[1] = (&off_2A2042A68 + 2);
  result = operator new(0x14uLL);
  *result = v5;
  atomic_store(0, result + 4);
  *a3 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21EF24(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A195790(v15, v7);
    sub_29A195BC4(v15);
    v8 = v16;
    sub_29A195BC4(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 16 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21F29C(&v13, v9, v10);
      sub_29A21F124(v12, a2, a3);
      ++v11;
      sub_29A21F31C(&v13);
    }

    a4[1] = &off_2A20435E8;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A20435E8;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29A21F09C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21F014);
  }

  JUMPOUT(0x29A21F084);
}

uint64_t sub_29A21F124(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 4 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v16 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v16, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A211610(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  sub_29A211610(*a2 + 56 * v9);
  a1[1] = v10;
  v11 = (*a3)++;
  sub_29A211610(*a2 + 56 * v11);
  a1[2] = v12;
  v13 = (*a3)++;
  result = sub_29A211610(*a2 + 56 * v13);
  a1[3] = v15;
  return result;
}

uint64_t sub_29A21F29C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21F31C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29A21F39C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A21F690(v6, a1, a2);
  a3[1] = &off_2A2042B20 + 2;
  result = operator new(0x28uLL);
  v5 = v6[1];
  *result = v6[0];
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a3 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21F490(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A196EB8(v15, v7);
    sub_29A19722C(v15);
    v8 = v16;
    sub_29A19722C(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 32 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21F808(&v13, v9, v10);
      sub_29A21F690(v12, a2, a3);
      ++v11;
      sub_29A21F888(&v13);
    }

    a4[1] = &off_2A2043758;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043758;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29A21F608(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21F580);
  }

  JUMPOUT(0x29A21F5F0);
}

uint64_t sub_29A21F690(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 4 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v16 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v16, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A2123CC(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v9);
  a1[1] = v10;
  v11 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v11);
  a1[2] = v12;
  v13 = (*a3)++;
  result = sub_29A2123CC(*a2 + 56 * v13);
  a1[3] = v15;
  return result;
}

uint64_t sub_29A21F808(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21F888(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

uint64_t sub_29A21F908@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, void *a3@<X8>)
{
  result = sub_29A21FBDC(&v5, a1, a2);
  *a3 = v5;
  a3[1] = &off_2A2042E00 + 1;
  return result;
}

void sub_29A21F9DC(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A19A1A4(v15, v7);
    sub_29A19A5A0(v15);
    v8 = v16;
    sub_29A19A5A0(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 8 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A21FD18(&v13, v9, v10);
      sub_29A21FBDC(v12, a2, a3);
      ++v11;
      sub_29A21FD98(&v13);
    }

    a4[1] = &off_2A2043A38;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043A38;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

void sub_29A21FB54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21FACCLL);
  }

  JUMPOUT(0x29A21FB3CLL);
}

uint64_t sub_29A21FBDC(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  if (*a3 + 4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v7 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v7, 0x2F);
  }

  sub_29A2114BC(&v8, a2, a3);
  *(a1 + 6) = v8;
  result = sub_29A21CA08(&v9, a2, a3);
  *a1 = v9;
  *(a1 + 4) = v10;
  return result;
}

uint64_t sub_29A21FD18(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A21FD98(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

unsigned int *sub_29A21FE18@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unsigned int **a3@<X8>)
{
  sub_29A220108(&v5, a1, a2);
  a3[1] = &off_2A2042D48;
  result = operator new(0x14uLL);
  *result = v5;
  atomic_store(0, result + 4);
  *a3 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void sub_29A21FF08(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A199640(v15, v7);
    sub_29A199A70(v15);
    v8 = v16;
    sub_29A199A70(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 16 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A2202A4(&v13, v9, v10);
      sub_29A220108(v12, a2, a3);
      ++v11;
      sub_29A220324(&v13);
    }

    a4[1] = &off_2A2043980;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043980;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

void sub_29A220080(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A21FFF8);
  }

  JUMPOUT(0x29A220068);
}

uint64_t sub_29A220108(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3);
  if (*a3 + 4 > v5)
  {
    v11 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v11, 0x2F);
  }

  if (v3 + 1 > v5)
  {
    v12 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v12, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A211610(v4 + 56 * v3);
  *(a1 + 12) = v9;
  result = sub_29A21D038(&v13, a2, a3);
  *a1 = v13;
  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_29A2202A4(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A220324(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29A2203A4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A220694(v6, a1, a2);
  a3[1] = &off_2A2042EB8;
  result = operator new(0x28uLL);
  v5 = v6[1];
  *result = v6[0];
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a3 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void sub_29A220494(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A19AD54(v15, v7);
    sub_29A19B0C4(v15);
    v8 = v16;
    sub_29A19B0C4(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 32 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A220830(&v13, v9, v10);
      sub_29A220694(v12, a2, a3);
      ++v11;
      sub_29A2208B0(&v13);
    }

    a4[1] = &off_2A2043AF0;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043AF0;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

void sub_29A22060C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A220584);
  }

  JUMPOUT(0x29A2205F4);
}

double sub_29A220694(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3);
  if (*a3 + 4 > v5)
  {
    v11 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v11, 0x2F);
  }

  if (v3 + 1 > v5)
  {
    v12 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v12, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A2123CC(v4 + 56 * v3);
  *(a1 + 24) = v9;
  sub_29A21D594(&v13, a2, a3);
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_29A220830(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A2208B0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

void *sub_29A220930@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A220C24(v6, a1, a2);
  a3[1] = &off_2A2048338 + 2;
  result = operator new(0x28uLL);
  v5 = v6[1];
  *result = v6[0];
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a3 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void sub_29A220A24(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A220F88(v15, v7);
    sub_29A2216E8(v15);
    v8 = v16;
    sub_29A2216E8(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 32 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A220FFC(&v13, v9, v10);
      sub_29A220C24(v12, a2, a3);
      ++v11;
      sub_29A22107C(&v13);
    }

    a4[1] = &off_2A20483F0;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A20483F0;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

void sub_29A220B9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A220B14);
  }

  JUMPOUT(0x29A220B84);
}

uint64_t sub_29A220C24(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 4 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v16 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v16, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A2123CC(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v9);
  a1[1] = v10;
  v11 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v11);
  a1[2] = v12;
  v13 = (*a3)++;
  result = sub_29A2123CC(*a2 + 56 * v13);
  a1[3] = v15;
  return result;
}

uint64_t *sub_29A220D9C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A220DB8(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 8, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A220DE0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A220DF8(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A18BAAC(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void *sub_29A220F30@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2048338 + 2;
  result = operator new(0x28uLL);
  v5 = v3[1];
  *result = *v3;
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A220F88(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_29A22142C(a1);
  v6 = v5;
  sub_29A22147C(a1, a2, &v6);
  return a1;
}

uint64_t sub_29A220FFC(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A22107C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

uint64_t *sub_29A2210FC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A22111C(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A221294(result);
}

void *sub_29A221180(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A221414);
  return a2;
}

void *sub_29A22127C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20483F0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A221294(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A2213AC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A221294(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A221294(&v4);
  }

  return *a1;
}

void *sub_29A221414(double **a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29A22142C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A22147C(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A221658(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8 + 16);
                  *v11 = *(v9 + v10 * 8);
                  *(v11 + 1) = v12;
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 4 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = v13[1];
              *v15 = *v13;
              *(v15 + 1) = v16;
              v14 += 4;
            }

            while (4 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29A221658(result, a2);
      v17 = result;
      if (v3)
      {
        v24 = 32 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          v27 = *(v7 + 1);
          v7 += 4;
          *v25 = v26;
          *(v25 + 1) = v27;
          v25 += 4;
          v24 -= 32;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v28 = *a3;
        v29 = 4 * v3;
        do
        {
          v30 = &result[v29];
          v31 = v28[1];
          *v30 = *v28;
          *(v30 + 1) = v31;
          v29 += 4;
        }

        while (4 * a2 != v29);
      }

      goto LABEL_31;
    }

    v18 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      result = sub_29A221658(result, a2);
      v17 = result;
      v19 = 0;
      v20 = *a3;
      do
      {
        v21 = &result[v19 / 8];
        v22 = v20[1];
        *v21 = *v20;
        *(v21 + 1) = v22;
        v19 += 32;
      }

      while (v18 != v19);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A22142C(result);
}

void *sub_29A221658(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A2216E8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B294780();
    }
  }

  return result;
}

void *sub_29A22172C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A221A3C(v7, a1, a2);
  a3[1] = &off_2A20484A8 + 2;
  result = operator new(0x50uLL);
  v5 = v7[3];
  *(result + 2) = v7[2];
  *(result + 3) = v5;
  *(result + 8) = v8;
  v6 = v7[1];
  *result = v7[0];
  *(result + 1) = v6;
  atomic_store(0, result + 18);
  *a3 = result;
  atomic_fetch_add_explicit(result + 18, 1u, memory_order_relaxed);
  return result;
}

void sub_29A221838(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A221F2C(v15, v7);
    sub_29A222868(v15);
    v8 = v16;
    sub_29A222868(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 72 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A221FA8(&v13, v9, v10);
      sub_29A221A3C(v12, a2, a3);
      ++v11;
      sub_29A222028(&v13);
    }

    a4[1] = &off_2A2048560;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2048560;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29A2219B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A22192CLL);
  }

  JUMPOUT(0x29A22199CLL);
}

uint64_t sub_29A221A3C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 9 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v26 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v26, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A2123CC(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v9);
  a1[1] = v10;
  v11 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v11);
  a1[2] = v12;
  v13 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v13);
  a1[3] = v14;
  v15 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v15);
  a1[4] = v16;
  v17 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v17);
  a1[5] = v18;
  v19 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v19);
  a1[6] = v20;
  v21 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v21);
  a1[7] = v22;
  v23 = (*a3)++;
  result = sub_29A2123CC(*a2 + 56 * v23);
  a1[8] = v25;
  return result;
}

uint64_t *sub_29A221C40(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 72), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A221C5C(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 18, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A221C84(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

void *sub_29A221D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A20484A8 + 2;
  result = operator new(0x50uLL);
  *result = *v3;
  v6 = *(v3 + 32);
  v5 = *(v3 + 48);
  v7 = *(v3 + 16);
  *(result + 8) = *(v3 + 64);
  *(result + 2) = v6;
  *(result + 3) = v5;
  *(result + 1) = v7;
  atomic_store(0, result + 18);
  *a2 = result;
  atomic_fetch_add_explicit(result + 18, 1u, memory_order_relaxed);
  return result;
}

unint64_t sub_29A221E0C(uint64_t a1, double *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A18C798(&v3, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

atomic_uint *sub_29A221E80(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 18);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x50uLL);
  *v3 = *v2;
  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  v7 = *(v2 + 1);
  *(v3 + 8) = *(v2 + 8);
  *(v3 + 2) = v6;
  *(v3 + 3) = v5;
  *(v3 + 1) = v7;
  atomic_store(0, v3 + 18);
  atomic_fetch_add_explicit(v3 + 18, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 18, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

uint64_t sub_29A221F2C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_29A2224F4(a1);
  v7 = v5;
  sub_29A222544(a1, a2, &v7);
  return a1;
}

uint64_t sub_29A221FA8(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A222028(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 72;
  }

  return a1;
}

uint64_t *sub_29A2220A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A2220C8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A222240(result);
}

void *sub_29A22212C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A2224DC);
  return a2;
}

void *sub_29A222228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2048560;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A222240(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A2222A8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 9;
      sub_29A222320(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A222320(uint64_t a1, double *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18C798(&v5, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A222474(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A222240(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A222240(&v4);
  }

  return *a1;
}

void *sub_29A2224DC(double **a1, void *a2)
{
  v3 = *a1;
  *a1 += 9;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29A2224F4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A222544(unint64_t *result, unint64_t a2, uint64_t *a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A2227C8(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10 / 8];
                  *v11 = *(v9 + v10);
                  v12 = *(v9 + v10 + 16);
                  v13 = *(v9 + v10 + 32);
                  v14 = *(v9 + v10 + 48);
                  v11[8] = *(v9 + v10 + 64);
                  *(v11 + 2) = v13;
                  *(v11 + 3) = v14;
                  *(v11 + 1) = v12;
                  v10 += 72;
                }

                while (72 * v3 != v10);
              }
            }

            v15 = *a3;
            v16 = 9 * v3;
            do
            {
              v17 = &v7[v16];
              *v17 = *v15;
              v18 = *(v15 + 16);
              v19 = *(v15 + 32);
              v20 = *(v15 + 48);
              v17[8] = *(v15 + 64);
              *(v17 + 2) = v19;
              *(v17 + 3) = v20;
              *(v17 + 1) = v18;
              v16 += 9;
            }

            while (9 * a2 != v16);
          }

          v21 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v28 = a2;
      }

      else
      {
        v28 = *result;
      }

      result = sub_29A2227C8(result, a2);
      v21 = result;
      if (v3)
      {
        v29 = 72 * v28;
        v30 = result;
        do
        {
          *v30 = *v7;
          v31 = *(v7 + 1);
          v32 = *(v7 + 2);
          v33 = *(v7 + 3);
          v30[8] = v7[8];
          *(v30 + 2) = v32;
          *(v30 + 3) = v33;
          *(v30 + 1) = v31;
          v7 += 9;
          v30 += 9;
          v29 -= 72;
        }

        while (v29);
      }

      if (v3 < a2)
      {
        v34 = *a3;
        v35 = 9 * v3;
        do
        {
          v36 = &result[v35];
          *v36 = *v34;
          v37 = *(v34 + 16);
          v38 = *(v34 + 32);
          v39 = *(v34 + 48);
          v36[8] = *(v34 + 64);
          *(v36 + 2) = v38;
          *(v36 + 3) = v39;
          *(v36 + 1) = v37;
          v35 += 9;
        }

        while (9 * a2 != v35);
      }

      goto LABEL_31;
    }

    if (a2 < 0x38E38E38E38E38FLL)
    {
      result = sub_29A2227C8(result, a2);
      v21 = result;
      v22 = 0;
      v23 = *a3;
      do
      {
        v24 = &result[v22];
        *v24 = *v23;
        v25 = *(v23 + 16);
        v26 = *(v23 + 32);
        v27 = *(v23 + 48);
        v24[8] = *(v23 + 64);
        *(v24 + 2) = v26;
        *(v24 + 3) = v27;
        *(v24 + 1) = v25;
        v22 += 9;
      }

      while (9 * a2 != v22);
LABEL_31:
      if (v21 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A2224F4(result);
}

void *sub_29A2227C8(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]");
  if (a2 > 0x1C71C71C71C71C6)
  {
    v3 = -1;
  }

  else
  {
    v3 = 72 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A222868(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2947E8();
    }
  }

  return result;
}

void *sub_29A2228AC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  sub_29A222BB8(v9, a1, a2);
  a3[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v5 = v9[5];
  *(result + 4) = v9[4];
  *(result + 5) = v5;
  v6 = v9[7];
  *(result + 6) = v9[6];
  *(result + 7) = v6;
  v7 = v9[1];
  *result = v9[0];
  *(result + 1) = v7;
  v8 = v9[3];
  *(result + 2) = v9[2];
  *(result + 3) = v8;
  atomic_store(0, result + 32);
  *a3 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

void sub_29A2229B8(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A197D6C(v15, v7);
    sub_29A198240(v15);
    v8 = v16;
    sub_29A198240(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + (*&v15[0] << 7);
    while (v13 != v14)
    {
      v12 = sub_29A222E80(&v13, v9, v10);
      sub_29A222BB8(v12, a2, a3);
      ++v11;
      sub_29A222F00(&v13);
    }

    a4[1] = &off_2A2043810;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043810;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29A222B30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A222AA8);
  }

  JUMPOUT(0x29A222B18);
}

uint64_t sub_29A222BB8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  if (*a3 + 16 > (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)))
  {
    v40 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/usd/sdf/parserHelpers.cpp", v40, 0x2F);
  }

  *a3 = v3 + 1;
  sub_29A2123CC(v4 + 56 * v3);
  *a1 = v8;
  v9 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v9);
  a1[1] = v10;
  v11 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v11);
  a1[2] = v12;
  v13 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v13);
  a1[3] = v14;
  v15 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v15);
  a1[4] = v16;
  v17 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v17);
  a1[5] = v18;
  v19 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v19);
  a1[6] = v20;
  v21 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v21);
  a1[7] = v22;
  v23 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v23);
  a1[8] = v24;
  v25 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v25);
  a1[9] = v26;
  v27 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v27);
  a1[10] = v28;
  v29 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v29);
  a1[11] = v30;
  v31 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v31);
  a1[12] = v32;
  v33 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v33);
  a1[13] = v34;
  v35 = (*a3)++;
  sub_29A2123CC(*a2 + 56 * v35);
  a1[14] = v36;
  v37 = (*a3)++;
  result = sub_29A2123CC(*a2 + 56 * v37);
  a1[15] = v39;
  return result;
}

uint64_t sub_29A222E80(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A222F00(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 128;
  }

  return a1;
}

char *sub_29A222F80(char *__dst, __int128 *a2, __int128 *a3, char a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v9;
  }

  v10 = *a3;
  *(__dst + 5) = *(a3 + 2);
  *(__dst + 24) = v10;
  __dst[48] = a4;
  sub_29A223020((__dst + 56), a5);
  return __dst;
}

void sub_29A223004(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A223020(uint64_t a1, uint64_t a2)
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

uint64_t sub_29A2230B8(uint64_t a1, uint64_t a2)
{
  sub_29A22313C(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29A22313C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_29A2231C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A2231C0(a1, *a2);
    sub_29A2231C0(a1, a2[1]);
    sub_29A200878((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A22322C()
{
  v2 = *v1;
  *(v0 + 8) = *(v1 + 2);
  *v0 = v2;
}

pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext *pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::Sdf_ParserValueContext(pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 25) = 0;
  *(this + 208) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 144) = 0;
  *(this + 29) = 0;
  *(this + 30) = &unk_2A2048658;
  *(this + 31) = sub_29A22331C;
  *(this + 33) = this + 240;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::Clear(this);
  return this;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 25) = 0;
  *(this + 208) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 144) = 0;
  *(this + 29) = 0;
  *(this + 30) = &unk_2A2048658;
  *(this + 31) = sub_29A22331C;
  *(this + 33) = this + 240;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::Clear(this);
  return this;
}

void sub_29A22331C(uint64_t *a1)
{
  v1[0] = "sdf/parserValueContext.cpp";
  v1[1] = "ReportCodingError";
  v1[2] = 32;
  v1[3] = "void pxrInternal__aapl__pxrReserved__::ReportCodingError(const std::string &)";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::Clear(uint64_t this)
{
  v1 = this;
  *this = 0;
  *(this + 112) = -1;
  *(this + 16) = *(this + 8);
  *(this + 32) = 0;
  v3 = *(this + 64);
  for (i = *(this + 72); i != v3; this = sub_29A224BA0(i))
  {
    i -= 56;
  }

  *(v1 + 72) = v3;
  *(v1 + 96) = *(v1 + 88);
  *(v1 + 272) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::SetupFactory(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 152);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = *(a1 + 175);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 160);
  }

  if (v6 != v7 || (v5 >= 0 ? (v9 = a2) : (v9 = *a2), v8 >= 0 ? (v10 = v4) : (v10 = v4->__r_.__value_.__r.__words[0]), memcmp(v9, v10, v6)))
  {
    ValueFactoryForMenvaName = pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::GetValueFactoryForMenvaName(a2, (a1 + 144));
    std::string::operator=((a1 + 120), a2);
    if (*(a1 + 144))
    {
      sub_29A2235B4((a1 + 176), ValueFactoryForMenvaName + 56);
      *(a1 + 208) = *(ValueFactoryForMenvaName + 48);
      v12 = *(ValueFactoryForMenvaName + 24);
      *(a1 + 232) = *(ValueFactoryForMenvaName + 40);
      *(a1 + 216) = v12;
    }

    else
    {
      v15 = 0;
      sub_29A2230B8(a1 + 176, v14);
      sub_29A200914(v14);
      *(a1 + 208) = 0;
      *(a1 + 232) = 0;
    }

    std::string::operator=(v4, a2);
  }

  return *(a1 + 144);
}

void sub_29A2235A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_29A2235B4(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29A223020(v4, a2);
  sub_29A22465C(v4, a1);
  sub_29A200914(v4);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::ProduceValue@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v14[1] = 0;
  if (*(a1 + 273) == 1)
  {
    if (*(a1 + 303) < 0)
    {
      sub_29A008D14(__p, *(a1 + 280), *(a1 + 288));
    }

    else
    {
      *__p = *(a1 + 280);
      v13 = *(a1 + 296);
    }

    pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v10, __p);
    sub_29A22388C(v14, v10);
    sub_29A186B14(v10);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_9;
  }

  if (*(a1 + 200))
  {
    v10[0] = 0;
    sub_29A22395C(a1 + 176, a1 + 8, a1 + 64, v10, a2);
    sub_29A18606C(v14, __p);
    sub_29A186B14(__p);
LABEL_9:
    pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::Clear(a1);
    sub_29A186A3C(a4, v14);
    return sub_29A186B14(v14);
  }

  v7 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    v7 = *v7;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unrecognized type name '%s'", a2, a3, v7);
  if (v11 >= 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = v10[0];
  }

  sub_29A008E78(__p, v8);
  v9 = *(a1 + 264);
  if (!v9)
  {
    sub_29A0DDCB0();
  }

  (*(*v9 + 48))(v9, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  a4[1] = 0;
  return sub_29A186B14(v14);
}