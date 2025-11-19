void sub_29A40D038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVal@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_29A16039C(a2, a1);
  if (result)
  {
    if ((*(result + 47) & 0x80000000) == 0)
    {
      v7 = *(result + 3);
      *(a4 + 16) = result[5];
      *a4 = v7;
      return result;
    }

    v8 = result[3];
    v9 = result[4];
  }

  else
  {
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      *a4 = *a3;
      *(a4 + 16) = *(a3 + 16);
      return result;
    }

    v8 = *a3;
    v9 = *(a3 + 8);
  }

  return sub_29A008D14(a4, v8, v9);
}

void *pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal@<X0>(void *a1@<X0>, void *a2@<X1>, atomic_uint **a3@<X2>, atomic_uint **a4@<X8>)
{
  result = sub_29A16039C(a2, a1);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a4);
  }

  else
  {
    v7 = *a3;
    *a4 = *a3;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a4 = v8;
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IntVal(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_29A16039C(a2, a1);
  if (v4)
  {
    return std::stoi(v4 + 1, 0, 10);
  }

  return a3;
}

void sub_29A40D1B8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29A40D1A8);
}

void pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVecVal(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A16039C(a2, a1);
  if (v4)
  {
    v5 = v4;
    sub_29A008E78(__p, "|");
    pxrInternal__aapl__pxrReserved__::TfStringSplit(v5 + 1, __p, a3);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_29A40D240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVecVal(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVecVal(a1, a2, &v16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = v16;
  for (i = v17; v4 != i; v4 += 24)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v19);
    v7 = *(a3 + 8);
    v6 = *(a3 + 16);
    if (v7 >= v6)
    {
      v8 = (v7 - *a3) >> 3;
      v9 = v8 + 1;
      if ((v8 + 1) >> 61)
      {
        sub_29A00C9A4();
      }

      v10 = v6 - *a3;
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

      v18[4] = a3;
      if (v11)
      {
        v12 = sub_29A00C9BC(a3, v11);
      }

      else
      {
        v12 = 0;
      }

      v13 = &v12[v8];
      v18[0] = v12;
      v18[1] = v13;
      v18[3] = &v12[v11];
      *v13 = v19;
      v19 = 0;
      v18[2] = v13 + 1;
      sub_29A15412C(a3, v18);
      v14 = *(a3 + 8);
      sub_29A1541C0(v18);
      v15 = v19;
      *(a3 + 8) = v14;
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *v7 = v19;
      *(a3 + 8) = v7 + 1;
    }
  }

  v18[0] = &v16;
  sub_29A012C90(v18);
}

void sub_29A40D3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A124AB0(&a18);
  a18 = &a10;
  sub_29A012C90(&a18);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::OptionVecVal(std::string *a1@<X0>, void *a2@<X8>)
{
  sub_29A008E78(&__p, "|");
  pxrInternal__aapl__pxrReserved__::TfStringSplit(a1, &__p, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = v22;
  for (i = v23; v4 != i; ++v4)
  {
    v6 = std::string::find(v4, 58, 0);
    if (v6 == -1)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v16);
      v10 = v16.__r_.__value_.__r.__words[0];
      v16.__r_.__value_.__r.__words[0] = 0;
      *&__p.__r_.__value_.__l.__data_ = v10;
      v11 = a2[1];
      if (v11 >= a2[2])
      {
        v14 = sub_29A40DB78(a2, &__p);
        size = __p.__r_.__value_.__l.__size_;
        a2[1] = v14;
        if ((size & 7) != 0)
        {
          atomic_fetch_add_explicit((size & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        *v11 = v10;
        v11[1] = __p.__r_.__value_.__l.__size_;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        a2[1] = v11 + 2;
      }

      if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v16.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v16.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v7 = v6;
      std::string::basic_string(&__p, v4, 0, v6, &v16);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v18);
      std::string::basic_string(&v16, v4, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v24);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v17);
      v8 = v18;
      v18 = 0;
      v19 = v8;
      v20 = v17;
      v17 = 0;
      v9 = a2[1];
      if (v9 >= a2[2])
      {
        v12 = sub_29A40DB78(a2, &v19);
        v13 = v20;
        a2[1] = v12;
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        *v9 = v8;
        v9[1] = v20;
        v19 = 0;
        v20 = 0;
        a2[1] = v9 + 2;
      }

      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v22;
  sub_29A012C90(&__p);
}

void sub_29A40D650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IsPropertyAnAssetIdentifier(void *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v2)
  {
    v2 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  result = sub_29A16039C(a1, v2 + 5);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8);
    v4 = atomic_load(&qword_2A1741CF0);
    if (!v4)
    {
      v4 = sub_29A40DEEC();
    }

    v5 = v8;
    if ((*(v4 + 16) ^ v8) < 8)
    {
      goto LABEL_13;
    }

    v6 = atomic_load(&qword_2A1741CF0);
    if (!v6)
    {
      v6 = sub_29A40DEEC();
    }

    v5 = v8;
    if ((*v6 ^ v8) < 8)
    {
      goto LABEL_13;
    }

    v7 = atomic_load(&qword_2A1741CF0);
    if (!v7)
    {
      v7 = sub_29A40DEEC();
    }

    v5 = v8;
    if ((*(v7 + 8) ^ v8) >= 8)
    {
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      return 0;
    }

    else
    {
LABEL_13:
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      return 1;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IsPropertyATerminal(void *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v2)
  {
    v2 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  v3 = sub_29A16039C(a1, v2 + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = atomic_load(&qword_2A1741CF0);
  if (!v5)
  {
    v5 = sub_29A40DEEC();
  }

  v6 = (*(v5 + 3) & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*(v5 + 3) & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  v7 = *(v6 + 23) >= 0 ? v6 : *v6;
  v8 = *(v4 + 47);
  v9 = v8 >= 0 ? *(v4 + 47) : v4[4];
  v10 = strlen(v7);
  if (v9 >= v10 && ((v11 = v10, v8 >= 0) ? (v12 = (v4 + 3)) : (v12 = v4[3]), !strncmp(v12, v7, v11)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void **pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::GetRoleFromMetadata@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v4)
  {
    v4 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  result = sub_29A16039C(a1, v4 + 4);
  if (!result)
  {
    goto LABEL_17;
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
  if (!v6)
  {
    v6 = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
  }

  v7 = *(v6 + 1);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
  if (!v8)
  {
    v8 = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
  }

  v9 = *(v8 + 2);
  if (v7 != v9)
  {
    while ((*v7 ^ *a2) >= 8)
    {
      if (++v7 == v9)
      {
        v7 = *(v8 + 2);
        break;
      }
    }
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
  if (!result)
  {
    result = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
  }

  if (v7 == result[2])
  {
    if ((*a2 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

LABEL_17:
    *a2 = 0;
  }

  return result;
}

void sub_29A40DABC(_Unwind_Exception *a1)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A40DADC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A40DB30(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29A40DB30(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; i -= 16)
  {
    v3 = *(i - 8);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(i - 16);
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_29A40DB78(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  v16 = v8;
  v17 = v9;
  *(&v18 + 1) = &v8[16 * v7];
  *v9 = *a2;
  *a2 = 0;
  *(v9 + 1) = a2[1];
  a2[1] = 0;
  *&v18 = v9 + 16;
  v10 = *(a1 + 8);
  v11 = &v9[*a1 - v10];
  sub_29A40DC90(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A40DDD8(&v16);
  return v15;
}

void sub_29A40DC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A40DDD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A40DC90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a4;
  v10 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      a4[1] = v4[1];
      v4[1] = 0;
      v4 += 2;
      a4 += 2;
    }

    while (v4 != a3);
    v10 = a4;
    for (i = 1; a2 != a3; a2 += 2)
    {
      v5 = a2[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29A40DD54(v7);
}

uint64_t sub_29A40DD54(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A40DD8C(a1);
  }

  return a1;
}

uint64_t sub_29A40DD8C(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(v1 - 16);
    v1 -= 16;
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29A40DDD8(uint64_t a1)
{
  sub_29A40DE10(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A40DE10(uint64_t result, uint64_t a2)
{
  for (i = *(result + 16); i != a2; i = *(result + 16))
  {
    v3 = (i - 16);
    *(result + 16) = i - 16;
    v4 = *(i - 8);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((*v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType *sub_29A40DE60(atomic_ullong *a1)
{
  result = sub_29A40DEA8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType::~SdrPropertyMetadata_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType *sub_29A40DEA8()
{
  v0 = operator new(0xC0uLL);
  pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType::SdrPropertyMetadata_StaticTokenType(v0);
  return v0;
}

unint64_t sub_29A40DEEC()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "filename", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "fileInput", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "assetIdInput", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "terminal", 0);
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
  atomic_compare_exchange_strong(&qword_2A1741CF0, &v12, v0);
  if (v12)
  {
    v13 = sub_29A1CF24C(v0);
    operator delete(v13);
    return atomic_load(&qword_2A1741CF0);
  }

  return v0;
}

void sub_29A40E0A0(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType *sub_29A40E15C(atomic_ullong *a1)
{
  result = sub_29A40E1A4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType::~SdrPropertyRole_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType *sub_29A40E1A4()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType::SdrPropertyRole_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType::~SdrNodeMetadata_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType::SdrNodeMetadata_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType *this)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "category", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "role", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "departments", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "help", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "label", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "pages", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "primvars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "__SDR__implementationName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "__SDR__target", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "sdrUsdEncodingVersion", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "sdrDefinitionNameFallbackPrefix", 0);
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

void sub_29A40E68C(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::SdrNodeContext_StaticTokenType::~SdrNodeContext_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrNodeContext_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdrNodeContext_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdrNodeContext_StaticTokenType::SdrNodeContext_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrNodeContext_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "pattern", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "surface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "volume", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "displacement", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "light", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "displayFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "lightFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "pixelFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "sampleFilter", 0);
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

void sub_29A40EB98(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType::~SdrNodeRole_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType::SdrNodeRole_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrNodeRole_StaticTokenType *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "primvar", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "texture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "field", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "math", 0);
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

void sub_29A40EEDC(_Unwind_Exception *a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdrShaderNode::SdrShaderNode(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8, __int128 *a9, uint64_t a10, uint64_t a11, __int128 *a12)
{
  v13 = pxrInternal__aapl__pxrReserved__::NdrNode::NdrNode(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  *v13 = &unk_2A204E100;
  v14 = (v13 + 400);
  v15 = (v13 + 408);
  *(v13 + 352) = 0u;
  *(v13 + 368) = 0u;
  v28 = (v13 + 416);
  v16 = (v13 + 440);
  *(v13 + 384) = 0u;
  *(v13 + 400) = 0u;
  *(v13 + 416) = 0u;
  *(v13 + 432) = 0u;
  *(v13 + 448) = 0u;
  *(v13 + 464) = 0u;
  *(v13 + 480) = 0u;
  *(v13 + 496) = 1065353216;
  v17 = v13 + 504;
  *(v13 + 504) = 0u;
  *(v13 + 520) = 0u;
  *(v13 + 536) = 1065353216;
  for (i = *(v13 + 240); i; i = *i)
  {
    v19 = i[3];
    if (v19)
    {
    }

    else
    {
      v20 = 0;
    }

    v31 = (i + 2);
    sub_29A160544(a1 + 464, i + 2, &unk_29B4D6118, &v31)[3] = v20;
  }

  for (j = *(a1 + 304); j; j = *j)
  {
    v22 = j[3];
    if (v22)
    {
    }

    else
    {
      v23 = 0;
    }

    v31 = (j + 2);
    sub_29A160544(v17, j + 2, &unk_29B4D6118, &v31)[3] = v23;
  }

  pxrInternal__aapl__pxrReserved__::SdrShaderNode::_InitializePrimvars(a1);
  pxrInternal__aapl__pxrReserved__::SdrShaderNode::_PostProcessProperties(a1);
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v24)
  {
    v24 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  v31 = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v24 + 4, (a1 + 160), &v31, &v29);
  if (&v29 == v14)
  {
    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v14 = v29;
    *&v29 = 0;
  }

  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v25)
  {
    v25 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  v31 = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v25, (a1 + 160), &v31, &v29);
  if (&v29 == v15)
  {
    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v15 = v29;
    *&v29 = 0;
  }

  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v26)
  {
    v26 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVecVal(v26 + 2, (a1 + 160), &v29);
  sub_29A2F7B20(v28);
  *(a1 + 416) = v29;
  *(a1 + 432) = v30;
  v30 = 0;
  v29 = 0uLL;
  v31 = &v29;
  sub_29A124AB0(&v31);
  pxrInternal__aapl__pxrReserved__::SdrShaderNode::_ComputePages(a1, &v29);
  sub_29A2F7B20(v16);
  *v16 = v29;
  *(a1 + 456) = v30;
  v30 = 0;
  v29 = 0uLL;
  v31 = &v29;
  sub_29A124AB0(&v31);
  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::SdrShaderNode::SdrShaderNode(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_29A40F330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15)
{
  sub_29A155EF4(v16);
  sub_29A155EF4((v15 + 58));
  sub_29A124AB0(&a15);
  a15 = a14;
  sub_29A124AB0(&a15);
  if ((*v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a15 = v15 + 47;
  sub_29A124AB0(&a15);
  a15 = v15 + 44;
  sub_29A124AB0(&a15);
  pxrInternal__aapl__pxrReserved__::NdrNode::~NdrNode(v15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdrShaderNode::_InitializePrimvars(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v2)
  {
    v2 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVecVal(v2 + 6, this + 20, &v33);
  v3 = v33;
  for (i = v34; v3 != i; ++v3)
  {
    size = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    v6 = size;
    if ((size & 0x80u) != 0)
    {
      size = v3->__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_18;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v7 = v3;
    }

    if (v7->__r_.__value_.__s.__data_[0] == 36)
    {
      pxrInternal__aapl__pxrReserved__::TfStringTrimLeft("$", v3, &__p);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v41);
      ShaderInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(this, &v41);
      v9 = ShaderInput;
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!ShaderInput)
      {
        goto LABEL_60;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      if (!v10)
      {
        v10 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      }

      if ((*(v10 + 1) ^ v9[2]) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v31);
        v11 = v36;
        if (v36 >= v37)
        {
          v24 = v36 - v35;
          v25 = v24 + 1;
          if ((v24 + 1) >> 61)
          {
            sub_29A00C9A4();
          }

          v26 = v37 - v35;
          if ((v37 - v35) >> 2 > v25)
          {
            v25 = v26 >> 2;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFF8)
          {
            v27 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          v45 = &v35;
          if (v27)
          {
            v28 = sub_29A00C9BC(&v35, v27);
          }

          else
          {
            v28 = 0;
          }

          v29 = &v28[v24];
          v41 = v28;
          v42 = v29;
          v44 = &v28[v27];
          *v29 = v31;
          v31 = 0;
          v43 = v29 + 1;
          sub_29A15412C(&v35, &v41);
          v30 = v36;
          sub_29A1541C0(&v41);
          v36 = v30;
          if ((v31 & 7) != 0)
          {
            atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          *v36 = v31;
          v36 = v11 + 1;
        }
      }

      else
      {
LABEL_60:
        if (sub_29A4043D8(1))
        {
          v20 = this + 40;
          if (*(this + 63) < 0)
          {
            v20 = *(this + 5);
          }

          v21 = v3;
          if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
          {
            v21 = v3->__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Found a node [%s] whose metadata indicates a primvar naming property [%s] but the property's type is not string; ignoring.", v18, v19, v20, v21);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_18:
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p);
      v12 = v39;
      if (v39 >= v40)
      {
        v13 = v39 - v38;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          sub_29A00C9A4();
        }

        v15 = v40 - v38;
        if ((v40 - v38) >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        v45 = &v38;
        if (v16)
        {
          v17 = sub_29A00C9BC(&v38, v16);
        }

        else
        {
          v17 = 0;
        }

        v22 = &v17[v13];
        v41 = v17;
        v42 = v22;
        v44 = &v17[v16];
        *v22 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__r.__words[0] = 0;
        v43 = v22 + 1;
        sub_29A15412C(&v38, &v41);
        v23 = v39;
        sub_29A1541C0(&v41);
        v39 = v23;
        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        *v39 = __p.__r_.__value_.__r.__words[0];
        v39 = v12 + 1;
      }
    }
  }

  if ((this + 352) != &v38)
  {
    sub_29A34AC54(this + 44, v38, v39, v39 - v38);
  }

  if ((this + 376) != &v35)
  {
    sub_29A34AC54(this + 47, v35, v36, v36 - v35);
  }

  v41 = &v33;
  sub_29A012C90(&v41);
  v41 = &v35;
  sub_29A124AB0(&v41);
  v41 = &v38;
  sub_29A124AB0(&v41);
}

void sub_29A40F7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char ***__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char **a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_29A012C90(&__p);
  a19 = &a22;
  sub_29A124AB0(&a19);
  a22 = &a25;
  sub_29A124AB0(&a22);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdrShaderNode::_PostProcessProperties(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v2)
  {
    v2 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  v3 = pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IntVal(v2 + 9, this + 20, 0xFFFFFFFFLL);
  pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetAllVstructNames(this, &v8);
  v4 = *(this + 17);
  for (i = *(this + 18); v4 != i; ++v4)
  {
    if (*v4)
    {
    }

    else
    {
      v6 = 0;
    }

    if (v3 != -1)
    {
      pxrInternal__aapl__pxrReserved__::SdrShaderProperty::_SetUsdEncodingVersion(v6, v3);
    }

    v7 = v8;
    if (v8 != v9)
    {
      while ((*v7 ^ *(v6 + 1)) >= 8)
      {
        if (++v7 == v9)
        {
          goto LABEL_15;
        }
      }
    }

    if (v7 != v9)
    {
      pxrInternal__aapl__pxrReserved__::SdrShaderProperty::_ConvertToVStruct(v6);
    }

LABEL_15:
    pxrInternal__aapl__pxrReserved__::SdrShaderProperty::_FinalizeProperty(v6);
  }

  v10 = &v8;
  sub_29A124AB0(&v10);
}

void sub_29A40F9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderNode::_ComputePages@<X0>(void *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = this[17];
  v3 = this[18];
  if (v2 != v3)
  {
    this = 0;
    do
    {
      v5 = *v2;
      v6 = *a2;
      if (*a2 == this)
      {
        goto LABEL_8;
      }

      while ((*v6 ^ *(v5 + 200)) >= 8)
      {
        if (++v6 == this)
        {
          goto LABEL_8;
        }
      }

      if (v6 == this)
      {
LABEL_8:
        if (this >= a2[2])
        {
          this = sub_29A410EDC(a2, (v5 + 200));
        }

        else
        {
          v7 = *(v5 + 200);
          *this = v7;
          if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *this &= 0xFFFFFFFFFFFFFFF8;
          }

          ++this;
        }

        a2[1] = this;
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return this;
}

void sub_29A40FAF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetAllVstructNames@<X0>(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this@<X0>, void *a2@<X8>)
{
  v30 = 0u;
  v31 = 0u;
  v32 = 1065353216;
  for (i = *(this + 60); i; i = *i)
  {
    v5 = (*(*i[3] + 24))(i[3]);
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v6)
    {
      v6 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    v7 = sub_29A16039C(v5, v6 + 10);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = (v7 + 24);
    v9 = *(v7 + 47);
    if (v9 < 0)
    {
      if (*(v7 + 4) != 7)
      {
        goto LABEL_14;
      }

      v8 = *v8;
    }

    else if (v9 != 7)
    {
      goto LABEL_14;
    }

    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == 1920234358 && v11 == 1952675186)
    {
      if ((i[2] & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_20;
      }

      EmptyString = ((i[2] & 0xFFFFFFFFFFFFFFF8) + 16);
      goto LABEL_21;
    }

LABEL_14:
    if (!pxrInternal__aapl__pxrReserved__::SdrShaderProperty::IsVStructMember(i[3]))
    {
      continue;
    }

    v13 = i[3];
    v7 = sub_29A16039C(this + 58, v13 + 27);
    if (!v7)
    {
      continue;
    }

    if ((v13[27] & 0xFFFFFFFFFFFFFFF8) == 0)
    {
LABEL_20:
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      goto LABEL_21;
    }

    EmptyString = ((v13[27] & 0xFFFFFFFFFFFFFFF8) + 16);
LABEL_21:
    sub_29A2D1AC8(&v30, EmptyString, EmptyString);
  }

  for (j = *(this + 65); j; j = *j)
  {
    v16 = (*(*j[3] + 24))(j[3]);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v17)
    {
      v17 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    v18 = sub_29A16039C(v16, v17 + 10);
    if (!v18)
    {
      goto LABEL_36;
    }

    v19 = (v18 + 24);
    v20 = *(v18 + 47);
    if (v20 < 0)
    {
      if (*(v18 + 4) != 7)
      {
        goto LABEL_36;
      }

      v19 = *v19;
    }

    else if (v20 != 7)
    {
      goto LABEL_36;
    }

    v21 = *v19;
    v22 = *(v19 + 3);
    if (v21 == 1920234358 && v22 == 1952675186)
    {
      if ((j[2] & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_42;
      }

      v25 = ((j[2] & 0xFFFFFFFFFFFFFFF8) + 16);
      goto LABEL_43;
    }

LABEL_36:
    if (!pxrInternal__aapl__pxrReserved__::SdrShaderProperty::IsVStructMember(j[3]))
    {
      continue;
    }

    v24 = j[3];
    v18 = sub_29A16039C(this + 63, v24 + 27);
    if (!v18)
    {
      continue;
    }

    if ((v24[27] & 0xFFFFFFFFFFFFFFF8) == 0)
    {
LABEL_42:
      v25 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      goto LABEL_43;
    }

    v25 = ((v24[27] & 0xFFFFFFFFFFFFFFF8) + 16);
LABEL_43:
    sub_29A2D1AC8(&v30, v25, v25);
  }

  v26 = v31;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v27 = 0;
  if (v26)
  {
    v28 = v26;
    do
    {
      ++v27;
      v28 = *v28;
    }

    while (v28);
  }

  sub_29A410688(a2, v26, 0, v27);
  return sub_29A0EB4E8(&v30);
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(uint64_t a1, void *a2)
{
  result = pxrInternal__aapl__pxrReserved__::NdrNode::GetInput(a1, a2);
  if (result)
  {
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderOutput(uint64_t a1, void *a2)
{
  result = pxrInternal__aapl__pxrReserved__::NdrNode::GetOutput(a1, a2);
  if (result)
  {
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetAssetIdentifierInputNames@<X0>(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::NdrNode::GetInputNames(this);
  v5 = *result;
  v6 = *(result + 8);
  while (v5 != v6)
  {
    result = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(this, v5);
    v7 = result;
    if (result)
    {
      result = pxrInternal__aapl__pxrReserved__::SdrShaderProperty::IsAssetIdentifier(result);
      if (result)
      {
        result = sub_29A1D8028(a2, (v7 + 8));
      }
    }

    ++v5;
  }

  return result;
}

void sub_29A40FF84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdrShaderProperty *pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetDefaultInput(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this)
{
  InputNames = pxrInternal__aapl__pxrReserved__::NdrNode::GetInputNames(this);
  v3 = *InputNames;
  v4 = *(InputNames + 8);
  while (v3 != v4)
  {
    ShaderInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(this, v3);
    if (ShaderInput)
    {
      v6 = ShaderInput;
      if (pxrInternal__aapl__pxrReserved__::SdrShaderProperty::IsDefaultInput(ShaderInput))
      {
        return v6;
      }
    }

    ++v3;
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetHelp(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v4)
  {
    v4 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVal(v4 + 3, this + 20, __p, a2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A41007C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetImplementationName@<X0>(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v4)
  {
    v4 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  v5 = (v4 + 56);

  return pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVal(v5, this + 20, this + 40, a2);
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetRole@<X0>(pxrInternal__aapl__pxrReserved__::SdrShaderNode *this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  if (!v4)
  {
    v4 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
  }

  v5 = (v4 + 8);

  return pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVal(v5, this + 20, this + 40, a2);
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetPropertyNamesForPage@<X0>(void *result@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result[17];
  for (i = result[18]; v3 != i; ++v3)
  {
    if (*v3)
    {
    }

    else
    {
      v7 = 0;
    }

    result = pxrInternal__aapl__pxrReserved__::TfToken::operator==((v7 + 25), a2);
    if (result)
    {
      result = sub_29A1D8028(a3, v7 + 1);
    }
  }

  return result;
}

void sub_29A41023C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdrShaderNode::CheckPropertyCompliance@<X0>(pxrInternal__aapl__pxrReserved__::NdrNode ***a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      InputNames = pxrInternal__aapl__pxrReserved__::NdrNode::GetInputNames(*v3);
      v7 = *InputNames;
      v8 = *(InputNames + 8);
      while (v7 != v8)
      {
        ShaderInput = pxrInternal__aapl__pxrReserved__::SdrShaderNode::GetShaderInput(v5, v7);
        if (ShaderInput)
        {
          v9 = sub_29A160470(v18, v7);
          if (v9)
          {
            (*(*v9[3] + 48))(&v15);
            (*(*ShaderInput + 48))(&v13);
            if (!pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::operator!=(&v15, &v13))
            {
              pxrInternal__aapl__pxrReserved__::VtValue::operator==();
            }

            if ((v14 & 7) != 0)
            {
              atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v15.n128_u8[8] & 7) != 0)
            {
              atomic_fetch_add_explicit((v15.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v10 = sub_29A160470(a2, v7);
            if (v10)
            {
              sub_29A1D8028((v10 + 3), v5 + 2);
            }

            else
            {
              v11 = *(v5 + 2);
              v20 = v11;
              if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v20 &= 0xFFFFFFFFFFFFFFF8;
              }

              v15 = 0uLL;
              v16 = 0;
              sub_29A12EF7C(&v15, &v20, &v21, 1uLL);
              sub_29A410B2C(a2, v7, v7, &v15);
              v13 = &v15;
              sub_29A124AB0(&v13);
              if ((v20 & 7) != 0)
              {
                atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }
          }

          else
          {
            sub_29A410854(v18, v7, v7, &ShaderInput);
          }
        }

        ++v7;
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return sub_29A155EF4(v18);
}

void sub_29A410540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A4107A4(v9);
  sub_29A155EF4(va);
  _Unwind_Resume(a1);
}

void sub_29A4105D4(uint64_t a1)
{
  sub_29A410FDC(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType *sub_29A4105FC(atomic_ullong *a1)
{
  result = sub_29A410644();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType::~SdrNodeMetadata_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType *sub_29A410644()
{
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::SdrNodeMetadata_StaticTokenType::SdrNodeMetadata_StaticTokenType(v0);
  return v0;
}

void *sub_29A410688(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29A410710(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A4106F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A410710(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v6 = a2;
  v7 = 0;
  result = a4;
  do
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(result);
    v6 = *v6;
    result = v8 + 8;
    v7 -= 8;
  }

  while (v6 != a3);
  return result;
}

void sub_29A410774(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      v4 = *(v1 - 8 + v3);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 -= 8;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4107A4(uint64_t a1)
{
  sub_29A4107E0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4107E0(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v5 = (v2 + 24);
      sub_29A124AB0(&v5);
      v4 = *(v2 + 2);
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

void *sub_29A410854(uint64_t a1, void *a2, uint64_t *a3, void *a4)
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

  sub_29A410A9C(a1, v6, a3, a4, &v22);
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

void sub_29A410A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A410A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  result = operator new(0x20uLL);
  *a5 = result;
  a5[1] = a1;
  a5[2] = 0;
  *result = 0;
  result[1] = a2;
  v11 = *a3;
  result[2] = *a3;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[3] = *a4;
  *(a5 + 16) = 1;
  return result;
}

uint64_t *sub_29A410B2C(uint64_t a1, void *a2, uint64_t *a3, __n128 *a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if ((i[2] ^ *a2) < 8)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v8;
  sub_29A410D94(i + 2, a3, a4);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

__n128 sub_29A410D94(uint64_t *a1, uint64_t *a2, __n128 *a3)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a3;
  *(a1 + 1) = *a3;
  a1[3] = a3[1].n128_i64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

void sub_29A410DE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = (a2 + 24);
    sub_29A124AB0(&v4);
    v3 = *(a2 + 16);
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

pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType *sub_29A410E50(atomic_ullong *a1)
{
  result = sub_29A410E98();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType::~SdrPropertyTypes_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType *sub_29A410E98()
{
  v0 = operator new(0x88uLL);
  pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType::SdrPropertyTypes_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29A410EDC(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v13[4] = a1;
  if (v7)
  {
    v8 = sub_29A00C9BC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * v2];
  v13[0] = v8;
  v13[1] = v9;
  v13[3] = &v8[8 * v7];
  v10 = *a2;
  *v9 = *a2;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13[2] = v9 + 8;
  sub_29A15412C(a1, v13);
  v11 = a1[1];
  sub_29A1541C0(v13);
  return v11;
}

void sub_29A410FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

void sub_29A410FDC(uint64_t a1)
{
  *a1 = &unk_2A204E100;
  sub_29A155EF4(a1 + 504);
  sub_29A155EF4(a1 + 464);
  v4 = (a1 + 440);
  sub_29A124AB0(&v4);
  v4 = (a1 + 416);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 408);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 400);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = (a1 + 376);
  sub_29A124AB0(&v4);
  v4 = (a1 + 352);
  sub_29A124AB0(&v4);
  pxrInternal__aapl__pxrReserved__::NdrNode::~NdrNode(a1);
}

void pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType::~SdrPropertyTypes_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType *this)
{
  v15 = (this + 112);
  sub_29A124AB0(&v15);
  v2 = *(this + 13);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 12);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 11);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 10);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 9);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 7);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 6);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 5);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 4);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 3);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 2);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 1);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType::SdrPropertyTypes_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType *this)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "int", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "string", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "float", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "half", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "color4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "point", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "normal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "vector", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "matrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "struct", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "terminal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "vstruct", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "unknown", 0);
  v3 = (this + 112);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v22 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v23 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v24 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v25 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v27 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v28 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v29 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v30 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v31 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v32 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v33 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v34 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  sub_29A12EF7C(v3, &v21, &v35, 0xEuLL);
  for (i = 104; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29A411654(_Unwind_Exception *a1)
{
  v3 = 104;
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
      v5 = v1[13];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[12];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[11];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[10];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[9];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[8];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[7];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[6];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[5];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[4];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[3];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[2];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[1];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType::~SdrPropertyMetadata_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType::SdrPropertyMetadata_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata_StaticTokenType *this)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "label", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "help", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "page", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "renderType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "role", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "widget", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "hints", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "options", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "isDynamicArray", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "connectable", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "tag", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "validConnectionTypes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "vstructMemberOf", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "vstructMemberName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "vstructConditionalExpr", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "__SDR__isAssetIdentifier", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "__SDR__implementationName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "sdrUsdDefinitionType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "__SDR__defaultinput", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "__SDR__target", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "__SDR__colorspace", 0);
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

void sub_29A41201C(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType::~SdrPropertyRole_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType::SdrPropertyRole_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyRole_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "none", 0);
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

void pxrInternal__aapl__pxrReserved__::SdrPropertyTokens_StaticTokenType::~SdrPropertyTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdrPropertyTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdrPropertyTokens_StaticTokenType::SdrPropertyTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdrPropertyTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, ":", 0);
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

uint64_t pxrInternal__aapl__pxrReserved__::SdrShaderProperty::SdrShaderProperty(uint64_t a1, uint64_t *a2, atomic_uint **a3, void *a4, int a5, atomic_uint *a6, void *a7, uint64_t a8, uint64_t **a9)
{
  v39 = a6;
  sub_29A412DBC(a3, &v39, a7, __p);
  sub_29A412DBC(a3, &v39, a7, v38);
  pxrInternal__aapl__pxrReserved__::NdrProperty::NdrProperty(a1, a2, __p, a4, a5, v38[1], 0, a7);
  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a1 = &unk_2A204E130;
  sub_29A404A70(a1 + 104, a8);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_29A4172E8((a1 + 144), *a9, a9[1], (a9[1] - *a9) >> 4);
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  v16 = (a1 + 200);
  *(a1 + 216) = 0u;
  v17 = (a1 + 216);
  v33 = (a1 + 208);
  v34 = (a1 + 192);
  v18 = (a1 + 224);
  *(a1 + 232) = 0;
  v19 = (a1 + 232);
  *(a1 + 248) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 256) = 1;
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v20)
  {
    v20 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  *(a1 + 56) = pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IsTruthy(v20 + 8, (a1 + 64));
  if (a5)
  {
    *(a1 + 57) = 1;
  }

  else
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v21)
    {
      v21 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    if (sub_29A16039C((a1 + 64), v21 + 9))
    {
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      if (!v22)
      {
        v22 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      }

      IsTruthy = pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IsTruthy(v22 + 9, (a1 + 64));
    }

    else
    {
      IsTruthy = 1;
    }

    *(a1 + 57) = IsTruthy;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v24)
  {
    v24 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  sub_29A415EA4(__p, v24 + 5, "default");
  sub_29A4173FC(a1 + 64, __p, __p);
  if (v37 < 0)
  {
    operator delete(__p[1]);
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v25)
  {
    v25 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  v38[0] = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v25, (a1 + 64), v38, __p);
  if (__p == v34)
  {
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v34 = __p[0];
    __p[0] = 0;
  }

  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v26)
  {
    v26 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  v38[0] = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v26 + 2, (a1 + 64), v38, __p);
  if (__p == v16)
  {
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v16 = __p[0];
    __p[0] = 0;
  }

  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v27)
  {
    v27 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  v38[0] = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v27 + 5, (a1 + 64), v38, __p);
  if (__p == v33)
  {
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v33 = __p[0];
    __p[0] = 0;
  }

  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v28)
  {
    v28 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  v38[0] = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v28 + 12, (a1 + 64), v38, __p);
  if (__p == v17)
  {
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v17 = __p[0];
    __p[0] = 0;
  }

  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v29)
  {
    v29 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  v38[0] = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v29 + 13, (a1 + 64), v38, __p);
  if (__p == v18)
  {
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v18 = __p[0];
    __p[0] = 0;
  }

  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v30)
  {
    v30 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  v38[0] = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVal(v30 + 14, (a1 + 64), v38, __p);
  if (__p == v19)
  {
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v19 = __p[0];
    __p[0] = 0;
  }

  if ((v38[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v31)
  {
    v31 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::TokenVecVal(v31 + 11, (a1 + 64), __p);
  sub_29A2F7B20((a1 + 168));
  *(a1 + 168) = *__p;
  *(a1 + 184) = v36;
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v38[0] = __p;
  sub_29A124AB0(v38);
  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::SdrShaderProperty::SdrShaderProperty(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_29A412C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  sub_29A186B14(v21 + 72);
  if ((*v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a11 = v21;
  sub_29A124AB0(&a11);
  sub_29A40DADC(&a11);
  sub_29A40349C(v20);
  pxrInternal__aapl__pxrReserved__::NdrProperty::~NdrProperty(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_29A412DBC@<X0>(atomic_uint **a1@<X0>, atomic_uint **a2@<X1>, void *a3@<X2>, atomic_uint **a4@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::GetRoleFromMetadata(a3, &v15);
  if (*a1)
  {
    v8 = v15 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (v9 = sub_29A414C48(), v10 = sub_29A16039C(v9, a1), result = sub_29A414C48(), v10) && (result = sub_29A16039C(v10 + 3, &v15)) != 0)
  {
    v11 = *(result + 24);
    *a4 = v11;
    if ((v11 & 7) != 0)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a4 = v12;
      }
    }

    a2 = (result + 32);
  }

  else
  {
    v13 = *a1;
    *a4 = *a1;
    if ((v13 & 7) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a4 = v14;
      }
    }
  }

  a4[1] = *a2;
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A412EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdrShaderProperty::GetHelp(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v4)
  {
    v4 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVal(v4 + 1, this + 8, __p, a2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A412F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderProperty::GetImplementationName@<X0>(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v4)
  {
    this = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    v4 = this;
  }

  if ((*(v2 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v2 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  return pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVal(v4 + 16, v2 + 8, EmptyString, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdrShaderProperty::CanConnectTo(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this, const pxrInternal__aapl__pxrReserved__::NdrProperty *a2)
{
  if (*(this + 40))
  {
    v2 = a2;
  }

  else
  {
    v2 = this;
  }

  if (*(this + 40))
  {
    v3 = this;
  }

  else
  {
    v3 = a2;
  }

  if (*(this + 40) == *(a2 + 40))
  {
    return 0;
  }

  v6 = *(v2 + 6);
  v7 = (*(*v2 + 24))(v2);
  v8 = *(v3 + 6);
  v9 = (*(*v3 + 24))(v3);
  v10 = (v2 + 16);
  v11 = (v3 + 16);
  v12 = *(v3 + 2) ^ *(v2 + 2);
  if (v12 <= 7 && v6 == v8)
  {
    return 1;
  }

  v14 = v9;
  if (v12 <= 7 && !*(v3 + 6) && (*(v3 + 56) & 1) == 0 && (*(v2 + 56) & 1) != 0)
  {
    return 1;
  }

  sub_29A4134F0(v10, v6, v7, *(this + 64), v39);
  sub_29A4134F0(v3 + 2, v8, v14, *(this + 64), v37);
  SdfType = pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetSdfType(v39);
  v35 = pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetSdfType(v37);
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v15)
  {
    v15 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v15 + 4) ^ *v10) < 8)
  {
    goto LABEL_30;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v16)
  {
    v16 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v16 + 6) ^ *v10) < 8)
  {
    goto LABEL_30;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v17)
  {
    v17 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v17 + 7) ^ *v10) < 8)
  {
    goto LABEL_30;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v18)
  {
    v18 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v18 + 8) ^ *v10) >= 8)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v33)
    {
      v33 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v19 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(&SdfType, v33 + 20);
  }

  else
  {
LABEL_30:
    v19 = 1;
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v20)
  {
    v20 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v20 + 4) ^ *v11) < 8)
  {
    goto LABEL_43;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v21)
  {
    v21 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v21 + 6) ^ *v11) < 8)
  {
    goto LABEL_43;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v22)
  {
    v22 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v22 + 7) ^ *v11) < 8)
  {
    goto LABEL_43;
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v23)
  {
    v23 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v23 + 8) ^ *v11) >= 8)
  {
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v34)
    {
      v34 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v24 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(&v35, v34 + 20);
  }

  else
  {
LABEL_43:
    v24 = 1;
  }

  if (v19 && v24)
  {
    goto LABEL_60;
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v25)
  {
    v25 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v25 + 5) ^ *v10) >= 8)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v27)
    {
      v27 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v26 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(&SdfType, v27 + 21);
  }

  else
  {
    v26 = 1;
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v28)
  {
    v28 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v28 + 5) ^ *v11) >= 8)
  {
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v30)
    {
      v30 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v29 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(&v35, v30 + 21);
  }

  else
  {
    v29 = 1;
  }

  if (v26 && v29)
  {
    goto LABEL_60;
  }

  v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v31)
  {
    v31 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v31 + 12) ^ *v11) > 7)
  {
    goto LABEL_72;
  }

  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v32)
  {
    v32 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v32 + 2) ^ *v10) < 8)
  {
LABEL_60:
    result = 1;
  }

  else
  {
LABEL_72:
    result = 0;
  }

  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A4134A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4134F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4 == 1)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v13)
    {
      v13 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::StringVal(v13 + 17, a3, v52, __p);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v54);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    if (v54)
    {
      if ((atomic_load_explicit(&qword_2A1741D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741D70))
      {
        sub_29A416ABC();
        __cxa_atexit(sub_29A416A40, &xmmword_2A1741D78, &dword_299FE7000);
        qword_2A1741D68 = &xmmword_2A1741D78;
        __cxa_guard_release(&qword_2A1741D70);
      }

      v14 = qword_2A1741D68;
      if (sub_29A16039C(qword_2A1741D68, &v54))
      {
        v16 = sub_29A16039C(v14, &v54);
        if (!v16)
        {
          sub_29A0F26E4("unordered_map::at: key not found");
        }

        __p[0] = v16[3];
      }

      else
      {
        __p[0] = "sdr/shaderProperty.cpp";
        __p[1] = "_GetSdrUsdDefinitionType";
        v49 = 162;
        v50 = "SdfValueTypeName pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetSdrUsdDefinitionType(const NdrTokenMap &)";
        v51 = 0;
        v28 = v54 & 0xFFFFFFFFFFFFFFF8;
        if ((v54 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v29 = (v28 + 16);
          if (*(v28 + 39) < 0)
          {
            v29 = *v29;
          }
        }

        else
        {
          v29 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Invalid SdfValueTypeName or alias provided for sdrUsdDefinitionType metadata: %s", v15, v29);
        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(__p);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(__p);
    }

    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v47 = __p[0];
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(&v47))
    {
      v34 = &v47;
      return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
    }

    v32 = sub_29A415F1C(a2, a3);
    if (sub_29A413D44(a3))
    {
      v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (v32)
      {
        if (!v33)
        {
          v33 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v33 + 552);
      }

      else
      {
        if (!v33)
        {
          v33 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v33 + 96);
      }

      goto LABEL_86;
    }

    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v35)
    {
      v35 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v35 + 11) ^ *a1) < 8)
    {
      goto LABEL_70;
    }

    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v36)
    {
      v36 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v36 + 10) ^ *a1) < 8)
    {
      goto LABEL_70;
    }

    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v37)
    {
      v37 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v37 + 12) ^ *a1) <= 7)
    {
LABEL_70:
      v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (v32)
      {
        if (!v38)
        {
          v38 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v38 + 544);
      }

      else
      {
        if (!v38)
        {
          v38 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v38 + 88);
      }

      goto LABEL_86;
    }

    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v39)
    {
      v39 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*v39 ^ *a1) <= 7)
    {
      switch(a2)
      {
        case 4:
          v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          if (!v44)
          {
            v44 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          }

          v34 = (v44 + 120);
          return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
        case 3:
          v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          if (!v43)
          {
            v43 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          }

          v34 = (v43 + 112);
          return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
        case 2:
          v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          if (!v40)
          {
            v40 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          }

          v34 = (v40 + 104);
          return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
      }
    }

    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v41)
    {
      v41 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v41 + 2) ^ *a1) <= 7)
    {
      switch(a2)
      {
        case 4:
          v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          if (!v46)
          {
            v46 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          }

          v34 = (v46 + 168);
          return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
        case 3:
          v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          if (!v45)
          {
            v45 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          }

          v34 = (v45 + 160);
          return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
        case 2:
          v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          if (!v42)
          {
            v42 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          }

          v34 = (v42 + 152);
          return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
      }
    }

    return sub_29A415F7C(a1, v32, a5);
  }

  else
  {
    if (a4)
    {
      if (sub_29A4043D8(1))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid/unsupported usdEncodingVersion %d. Current version is %d.", v17, v18, a4, 1);
      }

LABEL_24:
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v20)
      {
        v20 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      v21 = (v20 + 88);
      v22 = a5;
      v23 = a1;
      v24 = 0;
LABEL_27:

      return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(v22, v21, v23, v24);
    }

    v10 = sub_29A415F1C(a2, a3);
    if (sub_29A413D44(a3))
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (v10)
      {
        if (!v11)
        {
          v11 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v11 + 536);
      }

      else
      {
        if (!v11)
        {
          v11 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v11 + 80);
      }

LABEL_86:
      __p[0] = *v12;
      v34 = __p;
      return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a5, v34, a1, 1);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v19)
    {
      v19 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v19 + 11) ^ *a1) <= 7)
    {
      goto LABEL_24;
    }

    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v26)
    {
      v26 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v26 + 10) ^ *a1) <= 7)
    {
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (!v27)
      {
        v27 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      }

      v21 = (v27 + 80);
      v22 = a5;
      v23 = a1;
      v24 = 1;
      goto LABEL_27;
    }

    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v30)
    {
      v30 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v30 + 12) ^ *a1) <= 7)
    {
      v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
      if (v10)
      {
        if (!v31)
        {
          v31 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v31 + 512);
      }

      else
      {
        if (!v31)
        {
          v31 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
        }

        v12 = (v31 + 56);
      }

      goto LABEL_86;
    }

    return sub_29A415F7C(a1, v10, a5);
  }
}

void sub_29A413C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_guard_abort(&qword_2A1741D70);
  v27 = *(v25 - 56);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdrShaderProperty::IsVStructMember(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v2)
  {
    v2 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  return sub_29A16039C(this + 8, v2 + 13) != 0;
}

BOOL pxrInternal__aapl__pxrReserved__::SdrShaderProperty::IsVStruct(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v2)
  {
    v2 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  return (*(v2 + 12) ^ *(this + 2)) < 8uLL;
}

BOOL sub_29A413D44(void *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v2)
  {
    v2 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  return sub_29A16039C(a1, v2 + 15) != 0;
}

BOOL pxrInternal__aapl__pxrReserved__::SdrShaderProperty::IsDefaultInput(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v2)
  {
    v2 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  return sub_29A16039C(this + 8, v2 + 18) != 0;
}

void *pxrInternal__aapl__pxrReserved__::SdrShaderProperty::_ConvertToVStruct(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v2)
  {
    v2 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  sub_29A166F2C(this + 2, v2 + 12);
  (*(*this + 48))(&v6, this);
  SdfType = pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetSdfType(&v6);
  DefaultValue = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultValue(&SdfType);
  result = sub_29A1854E8(this + 3, DefaultValue);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdrShaderProperty::_FinalizeProperty(pxrInternal__aapl__pxrReserved__::SdrShaderProperty *this)
{
  v95 = *MEMORY[0x29EDCA608];
  if (!*(this + 4))
  {
    sub_29A186EF4(&v89, this + 3);
    goto LABEL_76;
  }

  v2 = *(this + 6);
  sub_29A4134F0(this + 2, v2, this + 8, *(this + 64), v87);
  SdfType = pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetSdfType(v87);
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType((this + 24), v3);
  if (*pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&SdfType) == Type)
  {
    sub_29A186EF4(&v89, this + 3);
  }

  else
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v5)
    {
      v5 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    if (sub_29A16039C(this + 8, v5 + 17))
    {
      v6 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&SdfType);
      Typeid = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(v6);
      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid((this + 24), Typeid, &v89);
      if (v90)
      {
        goto LABEL_74;
      }

      sub_29A186B14(&v89);
    }

    v8 = sub_29A415F1C(v2, this + 8);
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v9)
    {
      v9 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((*(v9 + 1) ^ *(this + 2)) <= 7 && sub_29A413D44(this + 8))
    {
      if (v8)
      {
        v94 = 0;
        memset(v93, 0, sizeof(v93));
        if (sub_29A1FA6D8((this + 24)))
        {
          v10 = *(this + 4);
          if ((v10 & 4) != 0)
          {
            v11 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(this + 24);
          }

          else
          {
            v11 = *(this + 3);
          }

          sub_29A280638(v93, v11);
        }

        v92 = 0;
        memset(v91, 0, sizeof(v91));
        sub_29A416EB8(v91[0].n128_u64, *v93);
        sub_29A214388(v93);
        v12 = v94;
        sub_29A214388(v93);
        v13 = v94 + 24 * *v93;
        while (v12 != v13)
        {
          pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v82);
          sub_29A417054(v91, v82);
          if (v85 < 0)
          {
            operator delete(*(&v83 + 1));
          }

          if (SBYTE7(v83) < 0)
          {
            operator delete(v82[0]);
          }

          v12 += 24;
        }

        sub_29A416F48(v91, &v89);
        sub_29A216064(v91);
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
      }

      memset(v93, 0, 24);
      if (sub_29A1EFC10((this + 24)))
      {
        v23 = *(this + 4);
        if ((v23 & 4) != 0)
        {
          v24 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(this + 24);
        }

        else
        {
          v24 = *(this + 3);
        }

        std::string::operator=(v93, v24);
      }

      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v82);
      v90 = &off_2A2047B38;
      sub_29A215A28(&v89, v82);
      if (v85 < 0)
      {
        operator delete(*(&v83 + 1));
      }

      if (SBYTE7(v83) < 0)
      {
        operator delete(v82[0]);
      }

      if ((v93[23] & 0x80000000) != 0)
      {
        operator delete(*v93);
      }

      goto LABEL_74;
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v14)
    {
      v14 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((((*(v14 + 2) ^ *(this + 2)) < 8uLL) & v8) == 1)
    {
      v84 = 0;
      *v82 = 0u;
      v83 = 0u;
      sub_29A416F8C((this + 24), v82);
      if (v82[0] == v2)
      {
        if (v2 == 4)
        {
          sub_29A18E624(v82);
          v32 = *v84;
          sub_29A18E624(v82);
          v33 = v84[1];
          sub_29A18E624(v82);
          v34 = v84[2];
          sub_29A18E624(v82);
          v35 = v84[3];
          v90 = (&off_2A2042A68 + 2);
          v30 = operator new(0x14uLL);
          *v30 = v32;
          v30[1] = v33;
          v30[2] = v34;
          v30[3] = v35;
          v31 = v30 + 4;
        }

        else
        {
          if (v2 != 3)
          {
            if (v2 != 2)
            {
              pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
            }

            sub_29A18E624(v82);
            v15 = *v84;
            sub_29A18E624(v82);
            v16 = v84[1];
            v90 = (&off_2A2042618 + 3);
            v89 = __PAIR64__(v16, v15);
            goto LABEL_66;
          }

          sub_29A18E624(v82);
          v27 = *v84;
          sub_29A18E624(v82);
          v28 = v84[1];
          sub_29A18E624(v82);
          v29 = v84[2];
          v90 = (&off_2A2042840 + 2);
          v30 = operator new(0x10uLL);
          *v30 = v27;
          v30[1] = v28;
          v30[2] = v29;
          v31 = v30 + 3;
        }

        atomic_store(0, v31);
        v89 = v30;
        atomic_fetch_add_explicit(v31, 1u, memory_order_relaxed);
        goto LABEL_66;
      }

      if (sub_29A416FF4(0))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Default value for fixed size float array type does not have the right length (%zu vs expected %zu)", v21, v22, v82[0], v2);
      }

      sub_29A186EF4(&v89, this + 3);
LABEL_66:
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v17)
    {
      v17 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    if ((((*v17 ^ *(this + 2)) < 8uLL) & v8) == 1)
    {
      v84 = 0;
      *v82 = 0u;
      v83 = 0u;
      if (sub_29A19D610((this + 24)))
      {
        v18 = *(this + 4);
        if ((v18 & 4) != 0)
        {
          v19 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(this + 24);
        }

        else
        {
          v19 = *(this + 3);
        }

        sub_29A27CF04(v82, v19);
      }

      if (v82[0] == v2)
      {
        if (v2 == 4)
        {
          sub_29A19DBEC(v82);
          v41 = *v84;
          sub_29A19DBEC(v82);
          v42 = v84[1];
          sub_29A19DBEC(v82);
          v43 = v84[2];
          sub_29A19DBEC(v82);
          v44 = v84[3];
          v90 = (&off_2A20481C8 + 2);
          v39 = operator new(0x14uLL);
          *v39 = v41;
          v39[1] = v42;
          v39[2] = v43;
          v39[3] = v44;
          v40 = v39 + 4;
        }

        else
        {
          if (v2 != 3)
          {
            if (v2 != 2)
            {
              pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
            }

            sub_29A19DBEC(v82);
            v20 = *v84;
            sub_29A19DBEC(v82);
            v90 = (&off_2A2047EE8 + 3);
            v89 = v20 | (v84[1] << 32);
            goto LABEL_71;
          }

          sub_29A19DBEC(v82);
          v36 = *v84;
          sub_29A19DBEC(v82);
          v37 = v84[1];
          sub_29A19DBEC(v82);
          v38 = v84[2];
          v90 = (&off_2A2048058 + 2);
          v39 = operator new(0x10uLL);
          *v39 = v36;
          v39[1] = v37;
          v39[2] = v38;
          v40 = v39 + 3;
        }

        atomic_store(0, v40);
        v89 = v39;
        atomic_fetch_add_explicit(v40, 1u, memory_order_relaxed);
        goto LABEL_71;
      }

      if (sub_29A416FF4(0))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Default value for fixed size int array type does not have the right length (%zu vs expected %zu)", v25, v26, v82[0], v2);
      }

      sub_29A186EF4(&v89, this + 3);
LABEL_71:
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    DefaultValue = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultValue(&SdfType);
    sub_29A186EF4(&v89, DefaultValue);
  }

LABEL_74:
  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_76:
  sub_29A18606C(this + 30, &v89);
  sub_29A186B14(&v89);
  v46 = *(this + 6);
  v47 = sub_29A415F1C(v46, this + 8);
  sub_29A186EF4(v91, this + 3);
  v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v48)
  {
    v48 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*v48 ^ *(this + 2)) <= 7)
  {
    if (v47)
    {
      v49 = sub_29A19D610((this + 24));
    }

    else
    {
      v49 = sub_29A293A9C((this + 24));
    }

    goto LABEL_114;
  }

  v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v50)
  {
    v50 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v50 + 1) ^ *(this + 2)) <= 7)
  {
    if (v47)
    {
      v49 = sub_29A1FA6D8((this + 24));
    }

    else
    {
      v49 = sub_29A1EFC10((this + 24));
    }

    goto LABEL_114;
  }

  v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v51)
  {
    v51 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v51 + 2) ^ *(this + 2)) <= 7)
  {
    if ((v47 & 1) == 0)
    {
      v49 = sub_29A3F9DF4((this + 24));
      goto LABEL_114;
    }

    v84 = 0;
    *v82 = 0u;
    v83 = 0u;
    v52 = sub_29A416F8C((this + 24), v82);
    if (v82[0] == v46)
    {
      if (!v52)
      {
        goto LABEL_131;
      }

      if (v46 == 4)
      {
        sub_29A18E624(v82);
        v76 = *v84;
        sub_29A18E624(v82);
        v77 = v84[1];
        sub_29A18E624(v82);
        v78 = v84[2];
        sub_29A18E624(v82);
        v79 = v84[3];
        *&v93[8] = &off_2A2042A68 + 2;
        v74 = operator new(0x14uLL);
        *v74 = v76;
        v74[1] = v77;
        v74[2] = v78;
        v74[3] = v79;
        v75 = v74 + 4;
      }

      else
      {
        if (v46 != 3)
        {
          if (v46 == 2)
          {
            sub_29A18E624(v82);
            v53 = *v84;
            sub_29A18E624(v82);
            v54 = v84[1];
            *&v93[8] = &off_2A2042618 + 3;
            *v93 = __PAIR64__(v54, v53);
            sub_29A18606C(v91, v93);
            sub_29A186B14(v93);
          }

          else if (sub_29A416FF4(0))
          {
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid arraySize provided. Expects 2/3/4 but %zu  provided.", v80, v81, v46);
          }

          goto LABEL_131;
        }

        sub_29A18E624(v82);
        v71 = *v84;
        sub_29A18E624(v82);
        v72 = v84[1];
        sub_29A18E624(v82);
        v73 = v84[2];
        *&v93[8] = &off_2A2042840 + 2;
        v74 = operator new(0x10uLL);
        *v74 = v71;
        v74[1] = v72;
        v74[2] = v73;
        v75 = v74 + 3;
      }

      atomic_store(0, v75);
      *v93 = v74;
      atomic_fetch_add_explicit(v75, 1u, memory_order_relaxed);
      sub_29A18606C(v91, v93);
      sub_29A186B14(v93);
      goto LABEL_131;
    }

    if (sub_29A416FF4(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Default value for fixed size float array type does not have the right length (%zu vs expected %zu)", v66, v67, v82[0], v46);
    }

LABEL_131:
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v55)
  {
    v55 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v55 + 4) ^ *(this + 2)) < 8)
  {
    goto LABEL_110;
  }

  v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v56)
  {
    v56 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v56 + 6) ^ *(this + 2)) < 8)
  {
    goto LABEL_110;
  }

  v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v57)
  {
    v57 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v57 + 7) ^ *(this + 2)) < 8)
  {
    goto LABEL_110;
  }

  v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v58)
  {
    v58 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v58 + 8) ^ *(this + 2)) <= 7)
  {
LABEL_110:
    if (v47)
    {
      v49 = sub_29A1936C8((this + 24));
    }

    else
    {
      v49 = sub_29A3FDE60((this + 24));
    }

    goto LABEL_114;
  }

  v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v69)
  {
    v69 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v69 + 5) ^ *(this + 2)) <= 7)
  {
    if (v47)
    {
      v49 = sub_29A195CC0((this + 24));
    }

    else
    {
      v49 = sub_29A3FEA70((this + 24));
    }

    goto LABEL_114;
  }

  v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v70)
  {
    v70 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  if ((*(v70 + 9) ^ *(this + 2)) <= 7)
  {
    if (v47)
    {
      v49 = sub_29A19833C((this + 24));
    }

    else
    {
      v49 = sub_29A3FC38C((this + 24));
    }

LABEL_114:
    if (v49)
    {
      goto LABEL_132;
    }
  }

  if (sub_29A416FF4(0))
  {
    v59 = *(this + 1) & 0xFFFFFFFFFFFFFFF8;
    if (v59)
    {
      v60 = (v59 + 16);
      if (*(v59 + 39) < 0)
      {
        v60 = *v60;
      }
    }

    else
    {
      v60 = "";
    }

    v61 = *(this + 2) & 0xFFFFFFFFFFFFFFF8;
    if (v61)
    {
      v62 = (v61 + 16);
      if (*(v61 + 39) < 0)
      {
        v62 = *v62;
      }
    }

    else
    {
      v62 = "";
    }

    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(v91, v82);
    if ((SBYTE7(v83) & 0x80u) == 0)
    {
      v65 = v82;
    }

    else
    {
      v65 = v82[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Expected type for defaultValue for property: %s is %s, but %s was provided.", v63, v64, v60, v62, v65);
    if (SBYTE7(v83) < 0)
    {
      operator delete(v82[0]);
    }
  }

LABEL_132:
  sub_29A18606C(this + 3, v91);
  return sub_29A186B14(v91);
}

void sub_29A414C10(uint64_t a1)
{
  sub_29A4171E0(a1);

  operator delete(v1);
}

uint64_t sub_29A414C48()
{
  v48[6] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741D00))
  {
    v1 = operator new(0x28uLL);
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v2)
    {
      v2 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    if (!v3)
    {
      v3 = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v4)
    {
      v4 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v5 = *(v4 + 2);
    v32[0] = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v32[0] &= 0xFFFFFFFFFFFFFFF8;
    }

    v32[1] = 3;
    sub_29A41553C(&v42, v3, v32);
    sub_29A4155A0(v33, &v42, 1);
    sub_29A4158D8(v44, v2 + 4, v33);
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v6)
    {
      v6 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    if (!v7)
    {
      v7 = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v8)
    {
      v8 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v9 = *(v8 + 2);
    v30[0] = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v30[0] &= 0xFFFFFFFFFFFFFFF8;
    }

    v30[1] = 4;
    sub_29A41553C(&v40, v7, v30);
    sub_29A4155A0(v31, &v40, 1);
    sub_29A4158D8(v45, v6 + 5, v31);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v10)
    {
      v10 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    if (!v11)
    {
      v11 = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v12)
    {
      v12 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v13 = *(v12 + 2);
    v28[0] = v13;
    if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v28[0] &= 0xFFFFFFFFFFFFFFF8;
    }

    v28[1] = 3;
    sub_29A41553C(&v38, v11, v28);
    sub_29A4155A0(v29, &v38, 1);
    sub_29A4158D8(v46, v10 + 6, v29);
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v14)
    {
      v14 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    if (!v15)
    {
      v15 = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v16)
    {
      v16 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v17 = *(v16 + 2);
    v26[0] = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v26[0] &= 0xFFFFFFFFFFFFFFF8;
    }

    v26[1] = 3;
    sub_29A41553C(&v36, v15, v26);
    sub_29A4155A0(v27, &v36, 1);
    sub_29A4158D8(v47, v14 + 7, v27);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v18)
    {
      v18 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    if (!v19)
    {
      v19 = sub_29A40E15C(&pxrInternal__aapl__pxrReserved__::SdrPropertyRole);
    }

    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v20)
    {
      v20 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v21 = *(v20 + 2);
    v24[0] = v21;
    if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v24[0] &= 0xFFFFFFFFFFFFFFF8;
    }

    v24[1] = 3;
    sub_29A41553C(&v34, v19, v24);
    sub_29A4155A0(v25, &v34, 1);
    sub_29A4158D8(v48, v18 + 8, v25);
    sub_29A4159C8(v1, v44, 5);
    for (i = 0; i != -30; i -= 6)
    {
      sub_29A1D820C(&v48[i + 1]);
      v23 = v48[i];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    sub_29A1D820C(v25);
    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v24[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v24[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29A1D820C(v27);
    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v26[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29A1D820C(v29);
    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v28[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v28[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29A1D820C(v31);
    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v30[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29A1D820C(v33);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v42 & 7) != 0)
    {
      atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v32[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v32[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    qword_2A1741CF8 = v1;
    __cxa_guard_release(&qword_2A1741D00);
  }

  return qword_2A1741CF8;
}

void sub_29A415288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_29A1D820C(&a19);
  if ((a49 & 7) != 0)
  {
    atomic_fetch_add_explicit((a49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a48 & 7) != 0)
  {
    atomic_fetch_add_explicit((a48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1D820C(&a26);
  if ((a52 & 7) != 0)
  {
    atomic_fetch_add_explicit((a52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a51 & 7) != 0)
  {
    atomic_fetch_add_explicit((a51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1D820C(&a33);
  if ((a55 & 7) != 0)
  {
    atomic_fetch_add_explicit((a55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a54 & 7) != 0)
  {
    atomic_fetch_add_explicit((a54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1D820C(&a40);
  if ((a58 & 7) != 0)
  {
    atomic_fetch_add_explicit((a58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a57 & 7) != 0)
  {
    atomic_fetch_add_explicit((a57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a38 & 7) != 0)
  {
    atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  while (v61 != &a60)
  {
    sub_29A1D820C((v61 - 40));
    v64 = *(v61 - 6);
    v61 -= 48;
    v63 = v64;
    if ((v64 & 7) != 0)
    {
      atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  operator delete(v60);
  __cxa_guard_abort(&qword_2A1741D00);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A41553C(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *a3;
  result[1] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[2] = a3[1];
  return result;
}

uint64_t sub_29A4155A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_29A41561C(a1, a2, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_29A41561C(uint64_t a1, void *a2, uint64_t *a3)
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
  sub_29A415874(i + 2, a3);
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

uint64_t *sub_29A415874(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[1];
  result[1] = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[2] = a2[2];
  return result;
}

uint64_t *sub_29A4158D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A415950((a1 + 1), a3);
  return a1;
}

uint64_t sub_29A415950(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A41561C(a1, i + 2, i + 2);
  }

  return a1;
}

uint64_t sub_29A4159C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_29A415A44(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

void *sub_29A415A44(uint64_t a1, void *a2, uint64_t *a3)
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

  sub_29A415C90(a1, v5, a3, &v21);
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

void sub_29A415C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a10)
  {
    sub_29A415D90(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A415C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A415D18(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A415CFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A415D90(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A415D18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A415950((a1 + 1), (a2 + 1));
  return a1;
}

void sub_29A415D90(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A1D820C((a2 + 3));
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

uint64_t sub_29A415E04(uint64_t a1)
{
  sub_29A415E40(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A415E40(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A1D820C((v2 + 3));
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

uint64_t *sub_29A415EA4(uint64_t *a1, uint64_t *a2, char *__s)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A008E78(a1 + 1, __s);
  return a1;
}

uint64_t sub_29A415F1C(uint64_t a1, void *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v4)
  {
    v4 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  return (a1 != 0) | pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IsTruthy(v4 + 8, a2);
}

uint64_t sub_29A415F7C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v87 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if ((atomic_load_explicit(&qword_2A1741D30, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1741D30))
    {
      v5 = &unk_2A1741D08;
      goto LABEL_6;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v9)
    {
      v9 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v10)
    {
      v10 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v11 = *v9;
    v69 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v69 &= 0xFFFFFFFFFFFFFFF8;
    }

    v70 = *(v10 + 58);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v12)
    {
      v12 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v13)
    {
      v13 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v14 = *(v12 + 1);
    v71 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v71 &= 0xFFFFFFFFFFFFFFF8;
    }

    v72 = *(v13 + 67);
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v15)
    {
      v15 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v16)
    {
      v16 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v17 = *(v15 + 2);
    v73 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v73 &= 0xFFFFFFFFFFFFFFF8;
    }

    v74 = *(v16 + 64);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v18)
    {
      v18 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v19)
    {
      v19 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v20 = *(v18 + 4);
    v75 = v20;
    if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v75 &= 0xFFFFFFFFFFFFFFF8;
    }

    v76 = *(v19 + 92);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v21)
    {
      v21 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v22)
    {
      v22 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v23 = *(v21 + 5);
    v77 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v77 &= 0xFFFFFFFFFFFFFFF8;
    }

    v78 = *(v22 + 95);
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v24)
    {
      v24 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v25)
    {
      v25 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v26 = *(v24 + 6);
    v79 = v26;
    if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v79 &= 0xFFFFFFFFFFFFFFF8;
    }

    v80 = *(v25 + 83);
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v27)
    {
      v27 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v28)
    {
      v28 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v29 = *(v27 + 7);
    v81 = v29;
    if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v81 &= 0xFFFFFFFFFFFFFFF8;
    }

    v82 = *(v28 + 89);
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v30)
    {
      v30 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v31)
    {
      v31 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v32 = *(v30 + 8);
    v83 = v32;
    if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v83 &= 0xFFFFFFFFFFFFFFF8;
    }

    v84 = *(v31 + 86);
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v33)
    {
      v33 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v34)
    {
      v34 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v35 = *(v33 + 9);
    v85 = v35;
    if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v85 &= 0xFFFFFFFFFFFFFFF8;
    }

    v86 = *(v34 + 102);
    sub_29A416A44(&unk_2A1741D08, &v69, 9);
    for (i = 128; i != -16; i -= 16)
    {
      v37 = *(&v69 + i);
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v38 = &qword_2A1741D30;
    v39 = &unk_2A1741D08;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1741D60, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1741D60))
    {
      v5 = &unk_2A1741D38;
      goto LABEL_6;
    }

    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v40)
    {
      v40 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v41)
    {
      v41 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v42 = *v40;
    v69 = v42;
    if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v69 &= 0xFFFFFFFFFFFFFFF8;
    }

    v70 = *(v41 + 2);
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v43)
    {
      v43 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v44)
    {
      v44 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v45 = *(v43 + 1);
    v71 = v45;
    if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v71 &= 0xFFFFFFFFFFFFFFF8;
    }

    v72 = *(v44 + 10);
    v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v46)
    {
      v46 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v47)
    {
      v47 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v48 = *(v46 + 2);
    v73 = v48;
    if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v73 &= 0xFFFFFFFFFFFFFFF8;
    }

    v74 = *(v47 + 7);
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v49)
    {
      v49 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v50)
    {
      v50 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v51 = *(v49 + 4);
    v75 = v51;
    if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v75 &= 0xFFFFFFFFFFFFFFF8;
    }

    v76 = *(v50 + 35);
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v52)
    {
      v52 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v53)
    {
      v53 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v54 = *(v52 + 5);
    v77 = v54;
    if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v77 &= 0xFFFFFFFFFFFFFFF8;
    }

    v78 = *(v53 + 38);
    v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v55)
    {
      v55 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v56)
    {
      v56 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v57 = *(v55 + 6);
    v79 = v57;
    if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v79 &= 0xFFFFFFFFFFFFFFF8;
    }

    v80 = *(v56 + 26);
    v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v58)
    {
      v58 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v59)
    {
      v59 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v60 = *(v58 + 7);
    v81 = v60;
    if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v81 &= 0xFFFFFFFFFFFFFFF8;
    }

    v82 = *(v59 + 32);
    v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v61)
    {
      v61 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v62)
    {
      v62 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v63 = *(v61 + 8);
    v83 = v63;
    if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v83 &= 0xFFFFFFFFFFFFFFF8;
    }

    v84 = *(v62 + 29);
    v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v64)
    {
      v64 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v65)
    {
      v65 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v66 = *(v64 + 9);
    v85 = v66;
    if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v85 &= 0xFFFFFFFFFFFFFFF8;
    }

    v86 = *(v65 + 45);
    sub_29A416A44(&unk_2A1741D38, &v69, 9);
    for (j = 128; j != -16; j -= 16)
    {
      v68 = *(&v69 + j);
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v38 = &qword_2A1741D60;
    v39 = &unk_2A1741D38;
  }

  __cxa_atexit(sub_29A416A40, v39, &dword_299FE7000);
  __cxa_guard_release(v38);
  v5 = v39;
LABEL_6:
  v6 = sub_29A16039C(v5, a1);
  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a3, v6 + 3, a1, 1);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v8)
  {
    v8 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a3, v8 + 11, a1, 0);
}

uint64_t sub_29A416A44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_29A162678(a1, a2, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void sub_29A416ABC()
{
  xmmword_2A1741D78 = 0u;
  unk_2A1741D88 = 0u;
  dword_2A1741D98 = 1065353216;
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetAllTypes(v0, &v3);
  v1 = v3;
  if (v3 != v4)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v3, &v2);
    sub_29A416C50(&xmmword_2A1741D78, &v2, &v2, v1);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAliasesAsTokens(&v2);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void *sub_29A416C50(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if ((i[2] ^ *a2) < 8)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v8;
  v14 = *a3;
  *a3 = 0;
  v15 = *a4;
  i[2] = v14;
  i[3] = v15;
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    *i = *v23;
LABEL_38:
    *v23 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v22 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v24 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v24 >= v9)
      {
        v24 %= v9;
      }
    }

    else
    {
      v24 &= v9 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29A416E8C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_29A416EB8(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    v6 = sub_29A216374(a1, a2);
    goto LABEL_9;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 8);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = sub_29A216374(a1, a2);
    sub_29A21651C(v3, v3 + 48 * v5, v6);
LABEL_9:
    sub_29A216064(a1);
    a1[4] = v6;
  }
}

double sub_29A416F48@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A3FAB84(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A416F8C(pxrInternal__aapl__pxrReserved__::VtValue *a1, __int128 *a2)
{
  v4 = sub_29A18E720(a1);
  if (v4)
  {
    v5 = *(a1 + 1);
    if ((v5 & 4) != 0)
    {
      v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v6 = *a1;
    }

    sub_29A41712C(a2, v6);
  }

  return v4;
}

BOOL sub_29A416FF4(int a1)
{
  v2 = sub_29A40C424();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A40C424();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), "SDR_TYPE_CONFORMANCE");
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void sub_29A417054(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        v9 = v5 + 48 * v4;
        v10 = *a2;
        *(v9 + 16) = *(a2 + 16);
        *v9 = v10;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0;
        v11 = *(a2 + 24);
        *(v9 + 40) = *(a2 + 40);
        *(v9 + 24) = v11;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 24) = 0;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_29B2A027C(a1, v4, a2);
    goto LABEL_13;
  }

  sub_29B2A0200(a1);
}

__int128 *sub_29A41712C(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != result)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  return result;
}

void sub_29A4171E0(uint64_t a1)
{
  *a1 = &unk_2A204E130;
  sub_29A186B14(a1 + 240);
  v2 = *(a1 + 232);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 224);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 216);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 208);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 200);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 192);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = (a1 + 168);
  sub_29A124AB0(&v8);
  v8 = (a1 + 144);
  sub_29A40DADC(&v8);
  sub_29A40349C(a1 + 104);
  pxrInternal__aapl__pxrReserved__::NdrProperty::~NdrProperty(a1);
}

uint64_t *sub_29A4172E8(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A417370(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A417350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A40DADC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A417370(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
      sub_29A3ACAE4(v4, v6);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A40DD54(v8);
  return v4;
}

void *sub_29A4173FC(uint64_t a1, void *a2, uint64_t *a3)
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

  sub_29A41763C(a1, v5, a3, &v21);
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

void sub_29A417624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A404E30(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29A41763C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v9 = *a3;
  *(v8 + 2) = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v8 + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *(a3 + 1);
  *(v8 + 24) = result;
  *(v8 + 5) = a3[3];
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A4176D0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E188, 0, "PCP_CHANGES", 0);
  v0 = sub_29A417834();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "PCP_CHANGES", "Pcp change processing");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E188, 1, "PCP_DEPENDENCIES", 0);
  v1 = sub_29A417834();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "PCP_DEPENDENCIES", "Pcp dependencies");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E188, 2, "PCP_PRIM_INDEX", 0);
  v2 = sub_29A417834();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "PCP_PRIM_INDEX", "Print debug output to terminal during prim indexing");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E188, 3, "PCP_PRIM_INDEX_GRAPHS", 0);
  v3 = sub_29A417834();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 12, "PCP_PRIM_INDEX_GRAPHS", "Write graphviz 'dot' files during prim indexing (requires PCP_PRIM_INDEX)");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E188, 4, "PCP_PRIM_INDEX_GRAPHS_MAPPINGS", 0);
  v4 = sub_29A417834();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4 + 16, "PCP_PRIM_INDEX_GRAPHS_MAPPINGS", "Include namespace mappings in graphviz files generated during prim indexing (requires PCP_PRIM_INDEX_GRAPHS)");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E188, 5, "PCP_NAMESPACE_EDIT", 0);
  v5 = sub_29A417834() + 20;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v5, "PCP_NAMESPACE_EDIT", "Pcp namespace edits");
}

uint64_t sub_29A417834()
{
  if ((atomic_load_explicit(&qword_2A14F7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F7DD8))
  {
    v1 = operator new(0x18uLL);
    *v1 = 0;
    v1[1] = 0;
    v1[2] = 0;
    qword_2A14F7DD0 = v1;
    __cxa_guard_release(&qword_2A14F7DD8);
  }

  return qword_2A14F7DD0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::ConcurrentPopulationContext::ConcurrentPopulationContext(uint64_t this, pxrInternal__aapl__pxrReserved__::Pcp_Dependencies *a2, char *a3)
{
  *this = a2;
  *(this + 8) = 0;
  if (*(a2 + 36))
  {
    v5[6] = v3;
    v5[7] = v4;
    sub_29B2A03A8(v5, a2, a3);
  }

  *(a2 + 36) = this;
  return this;
}

void pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::ConcurrentPopulationContext::~ConcurrentPopulationContext(pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::ConcurrentPopulationContext *this)
{
  *(*this + 288) = 0;
}

{
  *(*this + 288) = 0;
}

double pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Pcp_Dependencies(pxrInternal__aapl__pxrReserved__::Pcp_Dependencies *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 70) = 1065353216;
  *(this + 36) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 70) = 1065353216;
  *(this + 36) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::~Pcp_Dependencies(void **this)
{
  sub_29A41B3A4((this + 31));
  sub_29A41B2DC((this + 26));
  sub_29A155EF4((this + 21));
  sub_29A155EF4((this + 16));
  sub_29A41B20C((this + 11));
  sub_29A41B140((this + 6));

  sub_29A41B0B8(this);
}

void pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Add(void *a1, pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, uint64_t *a3, pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData *a4, uint64_t *a5)
{
  sub_29A0ECEEC(&v102, "Pcp", "Pcp_Dependencies::Add");
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(a2);
  if (v9 && v8 != -1)
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(a2);
    *&v104 = v10;
    *(&v104 + 1) = v11;
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v104);
    if (sub_29A418240(1))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(Path);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Pcp_Dependencies: Adding deps for index <%s>:\n", v14, v15, Text);
    }

    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a2, 6u, &v98);
    v90 = Path;
    v18 = v98;
    v17 = v99;
    v19 = v100;
    if (v98 == v100 && v99 == v101)
    {
      v91 = 0;
    }

    else
    {
      v20 = 0;
      v91 = 0;
      v89 = v101 - 1;
      do
      {
        v21 = v17;
        v97[0] = v18;
        v97[1] = v17;
        v22 = pxrInternal__aapl__pxrReserved__::PcpClassifyNodeDependency(v97, v16);
        if ((v22 & 6) != 0)
        {
          v94 = 0;
          LOBYTE(v95) = 0;
          v23 = a1[36];
          if (v23)
          {
            sub_29A3AE760(&v94, v23 + 8);
          }

          LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v97);
          v25 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v97);
          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v26 = sub_29A4199E0(a1, LayerStack, LayerStack);
          v28 = v27;
          sub_29A419D40(&v104);
          if (v28)
          {
            ++a1[5];
          }

          v29 = sub_29A419918(v26 + 3, v25);
          sub_29A1E28B4(v29, v90);
          v30 = v94;
          if (v94)
          {
            __dmb(0xBu);
            *v30 = 0;
          }

          ++v91;
          if (sub_29A418240(1))
          {
            pxrInternal__aapl__pxrReserved__::PcpDependencyFlagsToString(v22, &v104);
            if ((SBYTE7(v105) & 0x80u) == 0)
            {
              v31 = &v104;
            }

            else
            {
              v31 = v104;
            }

            v5 = v5 & 0xFFFFFFFF00000000 | pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v97);
            pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, v5, &v94);
            if (v96 >= 0)
            {
              v32 = &v94;
            }

            else
            {
              v32 = v94;
            }

            v33 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v97);
            v34 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v33);
            v35 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v97);
            v36 = sub_29A4184C4(v35);
            Identifier = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v36);
            sub_29A4182A4(Identifier);
            p_p = &__p;
            if (v93 < 0)
            {
              p_p = __p;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Node %i (%s %s): <%s> %s\n", v38, v39, v20, v31, v32, v34, p_p);
            if (v93 < 0)
            {
              operator delete(__p);
            }

            if (v96 < 0)
            {
              operator delete(v94);
            }

            if (SBYTE7(v105) < 0)
            {
              operator delete(v104);
            }
          }
        }

        v17 = v21 + 1;
        v20 = (v20 + 1);
      }

      while (v18 != v19 || v89 != v21);
    }

    v42 = *a3;
    v41 = a3[1];
    if (*a3 == v41)
    {
      v44 = v90;
      v50 = v91;
    }

    else
    {
      v98 = 0;
      LOBYTE(v99) = 0;
      v43 = a1[36];
      v44 = v90;
      if (v43)
      {
        sub_29A3AE760(&v98, v43 + 8);
        v42 = *a3;
        v41 = a3[1];
      }

      if (v42 == v41)
      {
        v49 = v41;
      }

      else
      {
        do
        {
          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v45 = sub_29A4199E0(a1, v42 + 1, v42 + 1);
          v47 = v46;
          sub_29A419D40(&v104);
          if (v47)
          {
            ++a1[5];
          }

          v48 = sub_29A419918(v45 + 3, v42 + 4);
          sub_29A1E28B4(v48, v90);
          v42 += 88;
        }

        while (v42 != v41);
        v41 = *a3;
        v49 = a3[1];
      }

      *&v104 = v90;
      v51 = sub_29A41B424((a1 + 6), v90, &unk_29B4D6118, &v104);
      v52 = (v51 + 3);
      v53 = v51[3];
      if (v53 == v51[4])
      {
        sub_29A41B744(v52);
        *(v51 + 3) = *a3;
        v51[5] = a3[2];
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      else
      {
        sub_29A41B814(v52, v53, *a3, a3[1], 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3));
      }

      v54 = v98;
      if (v98)
      {
        __dmb(0xBu);
        *v54 = 0;
      }

      v50 = v91 - 1171354717 * ((v49 - v41) >> 3);
      if (sub_29A418240(1))
      {
        v55 = v51[3];
        for (i = v51[4]; v55 != i; v55 += 11)
        {
          if (sub_29A418240(1))
          {
            pxrInternal__aapl__pxrReserved__::PcpDependencyFlagsToString(*v55, &v104);
            if ((SBYTE7(v105) & 0x80u) == 0)
            {
              v57 = &v104;
            }

            else
            {
              v57 = v104;
            }

            v58 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v55 + 2));
            v59 = sub_29A4184C4(v55 + 1);
            v60 = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v59);
            sub_29A4182A4(v60);
            if (SHIBYTE(v100) >= 0)
            {
              v63 = &v98;
            }

            else
            {
              v63 = v98;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Node (culled) (%s): <%s> %s\n", v61, v62, v57, v58, v63);
            v44 = v90;
            if (SHIBYTE(v100) < 0)
            {
              operator delete(v98);
            }

            if (SBYTE7(v105) < 0)
            {
              operator delete(v104);
            }
          }
        }
      }
    }

    if (*a4)
    {
      *&v104 = 0;
      BYTE8(v104) = 0;
      v64 = a1[36];
      if (v64)
      {
        sub_29A3AE760(&v104, v64 + 8);
      }

      RelevantFieldNames = pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::GetRelevantFieldNames(a4);
      v67 = RelevantFieldNames + 1;
      v66 = *RelevantFieldNames;
      if (*RelevantFieldNames != RelevantFieldNames + 1)
      {
        do
        {
          LODWORD(v98) = 0;
          v68 = sub_29A41A398((a1 + 16), v66 + 4, v66 + 4, &v98);
          ++*(v68 + 6);
          v69 = v66[1];
          if (v69)
          {
            do
            {
              v70 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v70 = v66[2];
              v71 = *v70 == v66;
              v66 = v70;
            }

            while (!v71);
          }

          v66 = v70;
        }

        while (v70 != v67);
      }

      RelevantAttributeNames = pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::GetRelevantAttributeNames(a4);
      v74 = RelevantAttributeNames + 1;
      v73 = *RelevantAttributeNames;
      if (*RelevantAttributeNames != RelevantAttributeNames + 1)
      {
        do
        {
          LODWORD(v98) = 0;
          v75 = sub_29A41A398((a1 + 21), v73 + 4, v73 + 4, &v98);
          ++*(v75 + 6);
          v76 = v73[1];
          if (v76)
          {
            do
            {
              v77 = v76;
              v76 = *v76;
            }

            while (v76);
          }

          else
          {
            do
            {
              v77 = v73[2];
              v71 = *v77 == v73;
              v73 = v77;
            }

            while (!v71);
          }

          v73 = v77;
        }

        while (v77 != v74);
      }

      v98 = v44;
      v78 = sub_29A41C05C((a1 + 11), v44, &unk_29B4D6118, &v98);
      v79 = v78[3];
      v78[3] = *a4;
      *a4 = v79;
      v80 = v104;
      if (v104)
      {
        __dmb(0xBu);
        *v80 = 0;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::IsEmpty(a5))
    {
      v98 = 0;
      LOBYTE(v99) = 0;
      v81 = a1[36];
      if (v81)
      {
        sub_29A3AE760(&v98, v81 + 8);
      }

      v94 = a1;
      v95 = v44;
      *&v104 = &v94;
      *(&v104 + 1) = sub_29A41C300;
      pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::_ForEachDependency(a5, &v104);
      *&v104 = v44;
      v82 = sub_29A41C640((a1 + 26), v44, &unk_29B4D6118, &v104);
      pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::operator=(v82 + 3, a5);
      v83 = v98;
      if (v98)
      {
        __dmb(0xBu);
        *v83 = 0;
      }
    }

    if (!v50 && sub_29A418240(1))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    None\n", v84, v85);
    }
  }

  if (v102)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v103, v102);
  }
}

BOOL sub_29A418240(int a1)
{
  v2 = sub_29A417834();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A417834();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F2958E0[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t sub_29A4182A4(uint64_t a1)
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

void sub_29A4184A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4184C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Remove(pxrInternal__aapl__pxrReserved__::Pcp_Dependencies *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a3)
{
  v78 = a3;
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(a2);
  if (v7 && v6 != -1)
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(a2);
    *&v79 = v8;
    *(&v79 + 1) = v9;
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v79);
    if (sub_29A418240(1))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(Path);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Pcp_Dependencies: Removing deps for index <%s>\n", v12, v13, Text);
    }

    v77[0] = this;
    v77[1] = Path;
    v70 = Path;
    v77[2] = &v78;
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a2, 6u, &v79);
    v15 = *(&v79 + 1);
    v16 = v79;
    v17 = v80;
    if (v79 != v80)
    {
      v18 = 0;
      v19 = *(&v80 + 1) - 1;
      do
      {
        v20 = v15;
        v76[0] = v16;
        v76[1] = v15;
        v21 = pxrInternal__aapl__pxrReserved__::PcpClassifyNodeDependency(v76, v14);
        if ((v21 & 6) != 0)
        {
          v22 = v21;
          if (sub_29A418240(1))
          {
            pxrInternal__aapl__pxrReserved__::PcpDependencyFlagsToString(v22, &v71);
            if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v71;
            }

            else
            {
              v23 = v71.__r_.__value_.__r.__words[0];
            }

            v3 = v3 & 0xFFFFFFFF00000000 | pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v76);
            pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, v3, v74);
            if (v75 >= 0)
            {
              v24 = v74;
            }

            else
            {
              v24 = v74[0];
            }

            v25 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v76);
            v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v25);
            LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v76);
            v28 = sub_29A4184C4(LayerStack);
            Identifier = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v28);
            sub_29A4182A4(Identifier);
            p_p = &__p;
            if (v73 < 0)
            {
              p_p = __p;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Node %i (%s %s): <%s> %s\n", v30, v31, v18, v23, v24, v26, p_p);
            if (v73 < 0)
            {
              operator delete(__p);
            }

            if (v75 < 0)
            {
              operator delete(v74[0]);
            }

            if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v71.__r_.__value_.__l.__data_);
            }
          }

          v33 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v76);
          v34 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v76);
          sub_29A418AE0(v77, v33, v34);
        }

        v15 = v20 + 1;
        v18 = (v18 + 1);
      }

      while (v16 != v17 || v19 != v20);
    }

    v35 = v70;
    v36 = sub_29A2F4F50(this + 6, v70);
    if (v36)
    {
      v37 = v36;
      v38 = v36[3];
      for (i = v36[4]; v38 != i; v38 += 11)
      {
        if (sub_29A418240(1))
        {
          pxrInternal__aapl__pxrReserved__::PcpDependencyFlagsToString(*v38, &v79);
          if ((SBYTE7(v80) & 0x80u) == 0)
          {
            v40 = &v79;
          }

          else
          {
            v40 = v79;
          }

          v41 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v38 + 2));
          v42 = sub_29A4184C4(v38 + 1);
          v43 = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v42);
          sub_29A4182A4(v43);
          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &v71;
          }

          else
          {
            v46 = v71.__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Node (culled) (%s): <%s> %s\n", v44, v45, v40, v41, v46);
          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v80) < 0)
          {
            operator delete(v79);
          }
        }

        sub_29A418AE0(v77, v38 + 1, v38 + 4);
      }

      sub_29A41C9C0(this + 6, v37);
    }

    v47 = sub_29A2F4F50(this + 11, v70);
    if (v47)
    {
      v48 = v47;
      v49 = (v47 + 3);
      if (v47[3] || (sub_29B2A0400(&v71) & 1) != 0)
      {
        RelevantFieldNames = pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::GetRelevantFieldNames(v49);
        v52 = RelevantFieldNames + 1;
        v51 = *RelevantFieldNames;
        if (*RelevantFieldNames != RelevantFieldNames + 1)
        {
          do
          {
            v53 = sub_29A160470(this + 16, v51 + 4);
            if (v53 || (*&v79 = "pcp/dependencies.cpp", *(&v79 + 1) = "operator()", *&v80 = 335, *(&v80 + 1) = "auto pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Remove(const PcpPrimIndex &, PcpLifeboat *)::(anonymous class)::operator()(_FileFormatArgumentFieldDepMap &, const TfToken::Set &) const", v81 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v79, "depMapIt != depMap.end()", 0) & 1) != 0))
            {
              v54 = *(v53 + 6);
              v55 = __OFSUB__(v54, 1);
              v56 = v54 - 1;
              if ((v56 < 0) ^ v55 | (v56 == 0))
              {
                sub_29A41ADD8(this + 16, v53);
              }

              else
              {
                *(v53 + 6) = v56;
              }
            }

            v57 = v51[1];
            if (v57)
            {
              do
              {
                v58 = v57;
                v57 = *v57;
              }

              while (v57);
            }

            else
            {
              do
              {
                v58 = v51[2];
                v59 = *v58 == v51;
                v51 = v58;
              }

              while (!v59);
            }

            v51 = v58;
          }

          while (v58 != v52);
        }

        RelevantAttributeNames = pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::GetRelevantAttributeNames(v49);
        v62 = RelevantAttributeNames + 1;
        v61 = *RelevantAttributeNames;
        v35 = v70;
        if (*RelevantAttributeNames != RelevantAttributeNames + 1)
        {
          do
          {
            v63 = sub_29A160470(this + 21, v61 + 4);
            if (v63 || (*&v79 = "pcp/dependencies.cpp", *(&v79 + 1) = "operator()", *&v80 = 335, *(&v80 + 1) = "auto pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Remove(const PcpPrimIndex &, PcpLifeboat *)::(anonymous class)::operator()(_FileFormatArgumentFieldDepMap &, const TfToken::Set &) const", v81 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v79, "depMapIt != depMap.end()", 0) & 1) != 0))
            {
              v64 = *(v63 + 6);
              v55 = __OFSUB__(v64, 1);
              v65 = v64 - 1;
              if ((v65 < 0) ^ v55 | (v65 == 0))
              {
                sub_29A41ADD8(this + 21, v63);
              }

              else
              {
                *(v63 + 6) = v65;
              }
            }

            v66 = v61[1];
            if (v66)
            {
              do
              {
                v67 = v66;
                v66 = *v66;
              }

              while (v66);
            }

            else
            {
              do
              {
                v67 = v61[2];
                v59 = *v67 == v61;
                v61 = v67;
              }

              while (!v59);
            }

            v61 = v67;
          }

          while (v67 != v62);
        }
      }

      sub_29A41CA1C(this + 11, v48);
    }

    v68 = sub_29A2F4F50(this + 26, v35);
    if (v68)
    {
      v69 = v68;
      v74[0] = this;
      v74[1] = v35;
      *&v79 = v74;
      *(&v79 + 1) = sub_29A41CA78;
      pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::_ForEachDependency((v68 + 3), &v79);
      sub_29A41CB64(this + 26, v69);
    }
  }
}

void sub_29A418A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A418AE0(void **a1, void *a2, _DWORD *a3)
{
  v5 = *a1;
  __p[0] = a2;
  v6 = sub_29A41A76C(v5, a2, &unk_29B4D6118, __p);
  v7 = sub_29A419918(v6 + 3, a3);
  v8 = *v7;
  v9 = *(v7 + 1);
  if (*v7 != v9)
  {
    while (*v8 != *a1[1])
    {
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_4;
      }
    }
  }

  if (v8 != v9)
  {
LABEL_7:
    sub_29A41A670(v8);
  }

  v9 = v8;
LABEL_4:
  __p[0] = "pcp/dependencies.cpp";
  __p[1] = "operator()";
  __p[2] = 234;
  __p[3] = "auto pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Remove(const PcpPrimIndex &, PcpLifeboat *)::(anonymous class)::operator()(const PcpLayerStackRefPtr &, const SdfPath &) const";
  v12 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "i != deps.end()", 0);
  if (result)
  {
    v8 = v9;
    goto LABEL_7;
  }

  return result;
}

void sub_29A418E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::RemoveAll(pxrInternal__aapl__pxrReserved__::Pcp_Dependencies *this, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a2)
{
  if (sub_29A418240(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Pcp_Dependencies::RemoveAll: Clearing all dependencies\n", v4, v5);
  }

  if (a2)
  {
    v7 = *(this + 2);
    v8 = 0;
    if (v7)
    {
      do
      {
        v6 = sub_29A418F6C(&v7);
        pxrInternal__aapl__pxrReserved__::PcpLifeboat::Retain(a2, (*v6 + 16));
        sub_29A418FA4(&v7);
      }

      while (v7 != v8);
    }
  }

  sub_29A41CBC0(this);
  ++*(this + 5);
  sub_29A160340(this + 128);
  sub_29A160340(this + 168);
  sub_29A41CC1C(this + 48);
  sub_29A41CC78(this + 88);
  sub_29A41CCD4(this + 208);
  sub_29A41CD30(this + 248);
}

void *sub_29A418F6C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A044C();
  }

  return result;
}

uint64_t sub_29A418FA4(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::unordered_map<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::SdfPathTable<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = std::unordered_map<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::SdfPathTable<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetUsedLayers@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  a2[1] = 0;
  v3 = (a2 + 1);
  a2[2] = 0;
  *a2 = (a2 + 1);
  v7 = *(this + 16);
  v8 = 0;
  while (v7 != v8)
  {
    v4 = sub_29A4190E0(&v7);
    v5 = sub_29A4184C4((*v4 + 16));
    Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v5);
    if (*Layers != *(Layers + 8))
    {
      sub_29A41CD8C(a2, v3, *Layers);
    }

    this = sub_29A419118(&v7);
  }

  return this;
}

void *sub_29A4190E0(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A0498();
  }

  return result;
}

uint64_t sub_29A419118(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::unordered_map<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::SdfPathTable<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const std::unordered_map<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::SdfPathTable<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetUsedRootLayers@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4[0] = *(this + 16);
  v4[1] = 0;
  if (v4[0])
  {
    v2 = sub_29A4190E0(v4);
    sub_29A41CF24(v3, (*v2 + 16));
    sub_29A419260(v3);
  }

  return this;
}

void sub_29A419260(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2A04E4();
}

void pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::UsesLayerStack(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  v2 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
}

uint64_t *pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetCulledDependencies(pxrInternal__aapl__pxrReserved__::Pcp_Dependencies *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(&qword_2A1741DA0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    sub_29B2A0558();
    this = v4;
    a2 = v5;
  }

  v2 = sub_29A328A44(this + 6, a2);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return &qword_2A1741DC8;
  }
}

void **sub_29A419394(void **a1)
{
  v3 = a1;
  sub_29A41CF9C(&v3);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetDynamicFileFormatArgumentDependencyData(pxrInternal__aapl__pxrReserved__::Pcp_Dependencies *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(&qword_2A1741DB0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    sub_29B2A05D0();
    this = v4;
    a2 = v5;
  }

  v2 = sub_29A328A44(this + 11, a2);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return &unk_2A1741DA8;
  }
}

uint64_t *sub_29A419494(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29A41AE40(a1, v2);
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetPrimsUsingExpressionVariablesFromLayerStack(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1741DB8, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v5 = a2;
    sub_29B2A0644();
    a1 = v4;
    a2 = v5;
  }

  v2 = sub_29A41D024((a1 + 248), a2);
  if (v2)
  {
    return v2 + 4;
  }

  else
  {
    return &qword_2A1741DE0;
  }
}

void **sub_29A419524(void **a1)
{
  v3 = a1;
  sub_29A1E234C(&v3);
  return a1;
}

__int128 *pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::GetExpressionVariablesFromLayerStackUsedByPrim(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A1741DC0, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    sub_29B2A06BC();
    a1 = v9;
  }

  v5 = sub_29A328A44((a1 + 208), a2);
  v6 = &xmmword_2A1741DF8;
  if (v5)
  {
    DependenciesForLayerStack = pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::GetDependenciesForLayerStack(v5 + 3, a3);
    if (DependenciesForLayerStack)
    {
      return DependenciesForLayerStack;
    }
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_AddCulledDependency(pxrInternal__aapl__pxrReserved__ *a1, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2)
{
  v11[7] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::PcpClassifyNodeDependency(a1, a2);
  if ((result & 6) != 0)
  {
    v4 = result;
    *&v6[8] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
    sub_29A41AF24(v11);
    v5 = v4;
    *v6 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1);
    *&v6[4] = *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
  }

  return result;
}

void sub_29A419804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A41985C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A41D140(a1, a2);
  }

  else
  {
    sub_29A41BC30(a1, *(a1 + 8), a2);
    result = v3 + 88;
    *(a1 + 8) = v3 + 88;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_29A4198BC(_DWORD *a1)
{
  sub_29A41AF74((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7);
  sub_29A1DE3A4(a1 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  sub_29A41B088();
}

char *sub_29A419918(void *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v7, a2);
  sub_29A1E2240(&v8, a2 + 1);
  memset(v9, 0, sizeof(v9));
  memset(v6, 0, sizeof(v6));
  v4 = sub_29A419E68(a1, &v7);
  v10 = v9;
  sub_29A1E234C(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  sub_29A1DE3A4(&v7);
  v10 = v6;
  sub_29A1E234C(&v10);
  return v4 + 8;
}

void sub_29A4199BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_29A419E1C(&a12);
  *(v12 - 40) = &a9;
  sub_29A1E234C((v12 - 40));
  _Unwind_Resume(a1);
}

void *sub_29A4199E0(void *a1, void *a2, void *a3)
{
  v4 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    sub_29A419C24(a1, v4, a3, v11);
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29A419C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A419CE0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A419C24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v8[2] = *a3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
}

void sub_29A419CC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A419CE0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29A419CE0(uint64_t a1, uint64_t *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A419D40(__p + 3);
    sub_29A41B088();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t *sub_29A419D40(uint64_t *a1)
{
  sub_29A419D78(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29A419D78(uint64_t *a1)
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
          v7 = *(v6 + 32);
          v9 = (v6 + 8);
          sub_29A1E234C(&v9);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v8 = sub_29A1DE3A4(v6);
          operator delete(v8);
          v6 = v7;
        }

        while (v7);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

_DWORD *sub_29A419E1C(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A1E234C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A419E68(void *a1, _DWORD *a2)
{
  v7 = a2;
  result = sub_29A419FDC(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29A419EBC(a1, &v5);
    return v5;
  }

  return result;
}

_DWORD *sub_29A419EBC(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(*a2, &v12);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
  {
    sub_29A1E21F4(&v9, &v12);
    sub_29A1E2240(&v10, &v13);
    memset(v11, 0, sizeof(v11));
    memset(v8, 0, sizeof(v8));
    v4 = sub_29A419E68(a1, &v9);
    v14 = v11;
    sub_29A1E234C(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    v14 = v8;
    sub_29A1E234C(&v14);
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = v5 | 1;
    }

    else
    {
      v6 = v4;
    }

    *(v3 + 6) = v6;
    *(v4 + 40) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29A419FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A419E1C(va1);
  *(v2 - 40) = va;
  sub_29A1E234C((v2 - 40));
  sub_29A1DCEA8((v2 - 48));
  _Unwind_Resume(a1);
}

void *sub_29A419FDC(void *a1, unsigned int *a2, _DWORD **a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29A41A120(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  if (!*v7)
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      sub_29A41A120(a1);
    }

    v9 = operator new(0x38uLL);
    sub_29A41A330(v9, *a3);
  }

  v8 = *v7;
  while (*v8 != *a2)
  {
    v8 = v8[4];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  return v8;
}

void sub_29A41A120(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_Grow() [MappedType = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>]", 0);
  }

  else
  {
    v3 = 0;
  }

  v19 = v3;
  v20 = v3 != 0;
  v4 = 2 * *(a1 + 32);
  if (v4 > 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 7;
  }

  *(a1 + 32) = v5;
  sub_29A41A2B8(&v17, v5 + 1);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = v8 >> 3;
    do
    {
      v11 = *(*a1 + 8 * v9);
      if (v11)
      {
        v12 = *(a1 + 32);
        do
        {
          v13 = *(v11 + 4);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          v15 = v17;
          *(v11 + 4) = *(v17 + 8 * v14);
          *(v15 + 8 * v14) = v11;
          v11 = v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
    v6 = *a1;
  }

  *a1 = v17;
  v16 = *(a1 + 16);
  *(a1 + 16) = v18;
  *&v17 = v6;
  v18 = v16;
  if (v6)
  {
    *(&v17 + 1) = v6;
    operator delete(v6);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3 != 0, v3);
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29A41A28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29A41A2B8(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = &v4[8 * a2];
  }

  return a1;
}

void sub_29A41A314(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A41A330(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void *sub_29A41A398(uint64_t a1, void *a2, uint64_t *a3, _DWORD *a4)
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

  sub_29A41A5E0(a1, v6, a3, a4, &v16);
  if (!v7 || (*(a1 + 32) * v7) < (*(a1 + 24) + 1))
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__rehash<true>();
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

void sub_29A41A5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A41A5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  result = operator new(0x20uLL);
  *a5 = result;
  a5[1] = a1;
  a5[2] = 0;
  *result = 0;
  result[1] = a2;
  v11 = *a3;
  result[2] = *a3;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 6) = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A41A670(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A41A71C(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_29A41AAF4(a1, *a2);
  sub_29A41AB48(a1, v3);

  sub_29A41ABE4(a1, v3);
}

void *sub_29A41A76C(void *a1, void *a2, uint64_t a3, void **a4)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_18:
    sub_29A41A9B0(a1, v5, a4, v12);
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}