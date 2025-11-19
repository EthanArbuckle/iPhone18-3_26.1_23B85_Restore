void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<unsigned int>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FBFC8(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FBFC8(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FBFC8(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FBFC8(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FBFC8(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FBFC8(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F4800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<unsigned long long>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FC35C(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FC35C(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FC35C(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FC35C(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FC35C(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FC35C(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F4A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<std::string>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FC910(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FC910(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FC910(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FC910(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FC910(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FC910(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F4C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FCB64(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FCB64(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FCB64(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FCB64(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FCB64(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FCB64(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F4E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FCED0(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FCED0(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FCED0(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FCED0(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FCED0(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FCED0(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F5080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      sub_29A1F95A4(a1, "    ", 4uLL);
      --v5;
    }

    while (v5);
  }

  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  return sub_29A1F95A4(a1, v7, v8);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  if (a2)
  {
    v5 = a2;
    do
    {
      sub_29A1F95A4(a1, "    ", 4uLL);
      --v5;
    }

    while (v5);
  }

  va_copy(v10, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, va, this);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  sub_29A1F95A4(a1, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1F51D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::OpenParensIfNeeded(void *a1, char a2, int a3)
{
  if (a2)
  {
    if (a3)
    {
      return 1;
    }

    sub_29A008E78(&__p, "; ");
    if ((v10 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v10 & 0x80u) == 0)
    {
      v5 = v10;
    }

    else
    {
      v5 = v9;
    }
  }

  else
  {
    if (a3)
    {
      v6 = " (\n";
    }

    else
    {
      v6 = " (";
    }

    sub_29A008E78(&__p, v6);
    if ((v10 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v10 & 0x80u) == 0)
    {
      v5 = v10;
    }

    else
    {
      v5 = v9;
    }
  }

  sub_29A1F95A4(a1, p_p, v5);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_29A1F52B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::CloseParensIfNeeded(void *a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    if (!a4)
    {
      a2 = 0;
    }

    sub_29A008E78(__p, ")");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F5338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(void *a1, uint64_t a2, const std::string *a3)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(a3, &__p);
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1F53AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote@<X0>(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 34;
  if (std::string::find(a1, 34, 0) != -1)
  {
    if (std::string::find(v2, 39, 0) == -1)
    {
      v4 = 39;
    }

    else
    {
      v4 = 34;
    }
  }

  v5 = std::string::find(v2, 10, 0);
  if (v5 != -1)
  {
    std::string::push_back(a2, v4);
    std::string::push_back(a2, v4);
  }

  std::string::push_back(a2, v4);
  if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  v6 = v2->__r_.__value_.__s.__data_[0];
  if (v2->__r_.__value_.__s.__data_[0])
  {
    do
    {
      if ((v6 & 0xE0) == 0xC0)
      {
        v7 = 2;
      }

      else if ((v6 & 0xF0) == 0xE0)
      {
        v7 = 3;
      }

      else
      {
        if ((v6 & 0xF8) != 0xF0)
        {
          goto LABEL_20;
        }

        v7 = 4;
      }

      v8 = v7;
      v9 = 1;
      while ((v2->__r_.__value_.__s.__data_[v9] & 0xC0) == 0x80)
      {
        if (v8 == ++v9)
        {
          sub_29A11D6EC(a2, v2, (v2 + v8));
          v2 = (v2 + (v8 - 1));
          goto LABEL_36;
        }
      }

LABEL_20:
      if (v6 > 0xCu)
      {
        if (v6 == 13)
        {
          v10 = "\\r";
          goto LABEL_35;
        }

        if (v6 == 92)
        {
          v10 = "\\\";
LABEL_35:
          std::string::append(a2, v10);
          goto LABEL_36;
        }

LABEL_28:
        if (v4 == v6)
        {
          std::string::push_back(a2, 92);
          v6 = v4;
        }

        else if ((v6 - 32) >= 0x5Fu)
        {
          strcpy(__s, "\\x__");
          __s[2] = a0123456789abcd[v6 >> 4];
          __s[3] = a0123456789abcd[v6 & 0xF];
          std::string::append(a2, __s);
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      if (v6 == 9)
      {
        v10 = "\\t";
        goto LABEL_35;
      }

      if (v6 != 10)
      {
        goto LABEL_28;
      }

      if (v5 == -1)
      {
        v10 = "\\n";
        goto LABEL_35;
      }

      v6 = 10;
LABEL_33:
      std::string::push_back(a2, v6);
LABEL_36:
      v11 = v2->__r_.__value_.__s.__data_[1];
      v2 = (v2 + 1);
      v6 = v11;
    }

    while (v11);
  }

  if (v5 == -1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  return std::string::append(a2, v12, v4);
}

void sub_29A1F5640(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteAssetPath(void *a1, uint64_t a2, const std::string *a3)
{
  sub_29A1F56D8(a3, &__p);
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1F56BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29A1F56D8@<X0>(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v4 = std::string::find(a1, 64, 0);
  v5 = v4;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  size = HIBYTE(v2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = v2->__r_.__value_.__l.__size_;
  }

  v7 = 2;
  if (v4 != -1)
  {
    v7 = 6;
  }

  std::string::reserve(a2, size + v7);
  if (v5 == -1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  std::string::append(a2, v8, 64);
  if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  v9 = v2->__r_.__value_.__s.__data_[0];
  if (v2->__r_.__value_.__s.__data_[0])
  {
    do
    {
      if (v5 != -1 && v9 == 64 && v2->__r_.__value_.__s.__data_[1] == 64 && v2->__r_.__value_.__s.__data_[2] == 64)
      {
        std::string::push_back(a2, 92);
        std::string::append(a2, 3uLL, 64);
        v2 = (v2 + 2);
      }

      else
      {
        std::string::push_back(a2, v9);
      }

      v10 = v2->__r_.__value_.__s.__data_[1];
      v2 = (v2 + 1);
      v9 = v10;
    }

    while (v10);
  }

  return std::string::append(a2, v8, 64);
}

void sub_29A1F5800(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDefaultValue(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  if (sub_29A1F594C(a3))
  {
    v6 = sub_29A1F5A34(a3);
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v6);
    if (*(String + 23) >= 0)
    {
      v8 = String;
    }

    else
    {
      v8 = *String;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "<%s>", v8);
  }

  else if (sub_29A1F5AC8(a3))
  {
    __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.cpp";
    __p.__r_.__value_.__l.__size_ = "WriteDefaultValue";
    __p.__r_.__value_.__r.__words[2] = 473;
    v11 = "static void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDefaultValue(Sdf_TextOutput &, size_t, VtValue)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Tried to write opaque value to layer");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::StringFromVtValue(a3, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " = %s", p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A1F5930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F594C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4842AALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20471A0);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSdfPath(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a3);
  if (*(String + 23) >= 0)
  {
    v6 = String;
  }

  else
  {
    v6 = *String;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "<%s>", v6);
}

void **sub_29A1F5A34(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1F594C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1F963C, &stru_2A20471A0);
  }
}

uint64_t sub_29A1F5AC8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484605 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047358);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::StringFromVtValue(const std::string **this@<X0>, std::string *a2@<X8>)
{
  v3 = this;
  memset(&__p, 0, sizeof(__p));
  if (sub_29A1F8298(&__p, this) & 1) != 0 || (sub_29A1F845C(&__p, v3) & 1) != 0 || (sub_29A1F8624(&__p, v3))
  {
LABEL_35:
    *a2 = __p;
    memset(&__p, 0, sizeof(__p));
    goto LABEL_36;
  }

  if (sub_29A1FD484(v3))
  {
    v5 = *(v3 + 1);
    if ((v5 & 4) != 0)
    {
      v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    else
    {
      v6 = *v3;
    }

    sub_29A1FD510(v6, &v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v21;
    goto LABEL_35;
  }

  if (sub_29A1FD578(v3))
  {
    v7 = *(v3 + 1);
    if ((v7 & 4) != 0)
    {
      v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    else
    {
      v8 = *v3;
    }

    std::string::append(&__p, "[");
    v9 = *(v8 + 4);
    if (v9)
    {
      v10 = *v8;
      if (v10)
      {
        sub_29A1FD510(v9, &v21);
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v21;
        }

        else
        {
          v11 = v21.__r_.__value_.__r.__words[0];
        }

        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v21.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v11, size);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v13 = v10 - 1;
        if (v10 != 1)
        {
          v14 = (v9 + 96);
          do
          {
            std::string::append(&__p, ", ");
            sub_29A1FD510(v14, &v21);
            if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &v21;
            }

            else
            {
              v15 = v21.__r_.__value_.__r.__words[0];
            }

            if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v16 = v21.__r_.__value_.__l.__size_;
            }

            std::string::append(&__p, v15, v16);
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v21.__r_.__value_.__l.__data_);
            }

            v14 = (v14 + 96);
            --v13;
          }

          while (v13);
        }
      }
    }

    std::string::append(&__p, "]");
    goto LABEL_35;
  }

  if (sub_29A1F8DE8(v3))
  {
    v17 = *(v3 + 1);
    if ((v17 & 4) != 0)
    {
      v3 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

LABEL_42:
    LODWORD(v21.__r_.__value_.__l.__data_) = *v3;
    sub_29A1F8E20(&v21);
    goto LABEL_36;
  }

  if (sub_29A1F9040(v3))
  {
    v18 = *(v3 + 1);
    if ((v18 & 4) != 0)
    {
      v3 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    LODWORD(v21.__r_.__value_.__l.__data_) = *v3;
    sub_29A1F9078(&v21);
  }

  else
  {
    if (sub_29A1F9298(v3))
    {
      v19 = *(v3 + 1);
      if ((v19 & 4) != 0)
      {
        v3 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
      }

      goto LABEL_42;
    }

    sub_29A1F87E8(v3);
  }

LABEL_36:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1F5E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteNameVector(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 3);
  if (v7 >= 2)
  {
    sub_29A008E78(&__p, "[");
    v8 = (v20 & 0x80u) == 0 ? &__p : __p;
    v9 = (v20 & 0x80u) == 0 ? v20 : v19;
    sub_29A1F95A4(a1, v8, v9);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  if (v5 != v6)
  {
    v10 = 0;
    v11 = 0;
    if (v7 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v7;
    }

    do
    {
      if (v11)
      {
        sub_29A008E78(&__p, ", ");
        v13 = (v20 & 0x80u) == 0 ? &__p : __p;
        v14 = (v20 & 0x80u) == 0 ? v20 : v19;
        sub_29A1F95A4(a1, v13, v14);
        if (v20 < 0)
        {
          operator delete(__p);
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a1, 0, (*a3 + v10));
      ++v11;
      v10 += 24;
    }

    while (v12 != v11);
  }

  if (v7 >= 2)
  {
    sub_29A008E78(&__p, "]");
    if ((v20 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }

    sub_29A1F95A4(a1, p_p, v16);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return 1;
}

void sub_29A1F5FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteNameVector(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v6 = *a3;
  v5 = a3[1];
  v7 = (v5 - *a3) >> 3;
  if (v7 >= 2)
  {
    sub_29A008E78(&__p, "[");
    v8 = (v20 & 0x80u) == 0 ? &__p : __p;
    v9 = (v20 & 0x80u) == 0 ? v20 : v19;
    a1 = sub_29A1F95A4(v4, v8, v9);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  if (v5 != v6)
  {
    v10 = 0;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7;
    }

    do
    {
      if (v10)
      {
        sub_29A008E78(&__p, ", ");
        v12 = (v20 & 0x80u) == 0 ? &__p : __p;
        v13 = (v20 & 0x80u) == 0 ? v20 : v19;
        a1 = sub_29A1F95A4(v4, v12, v13);
        if (v20 < 0)
        {
          operator delete(__p);
        }
      }

      if ((*(*a3 + 8 * v10) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(*a3 + 8 * v10) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(v4, 0, EmptyString);
      ++v10;
    }

    while (v11 != v10);
  }

  if (v7 >= 2)
  {
    sub_29A008E78(&__p, "]");
    if ((v20 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }

    sub_29A1F95A4(v4, p_p, v16);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return 1;
}

void sub_29A1F61A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteTimeSamples(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a3, &v29);
  if (sub_29A1F650C(&v29))
  {
    if ((v30 & 4) != 0)
    {
      v7 = (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(&v29);
    }

    else
    {
      v7 = v29;
    }

    sub_29A1F973C(&v26, v7);
    v24 = v26;
    v25 = &v27;
    while (v24 != v25)
    {
      v8 = sub_29A1F6598(&v24);
      pxrInternal__aapl__pxrReserved__::TfStringify(*(*v8 + 32), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s: ", p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = sub_29A1F6598(&v24);
      if (sub_29A1F594C((*v10 + 40)))
      {
        v11 = sub_29A1F6598(&v24);
        v12 = sub_29A1F5A34((*v11 + 40));
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v12);
        if (*(String + 23) >= 0)
        {
          v14 = String;
        }

        else
        {
          v14 = *String;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "<%s>", v14);
      }

      else
      {
        v15 = sub_29A1F6598(&v24);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::StringFromVtValue((*v15 + 40), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        sub_29A1F95A4(a1, v16, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_29A008E78(&__p, ",\n");
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = __p.__r_.__value_.__l.__size_;
      }

      sub_29A1F95A4(a1, v18, v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_29A1F65D0(&v24);
    }

    sub_29A1F9B0C(&v26, v27);
  }

  else if (sub_29A1F6678(&v29))
  {
    v20 = (v30 & 4) != 0 ? (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(&v29) : v29;
    sub_29A1F6704(v20);
    v21 = v28 >= 0 ? &v26 : v26;
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s\n", v21);
    if (v28 < 0)
    {
      operator delete(v26);
    }
  }

  sub_29A186B14(&v29);
  return 1;
}

void sub_29A1F6490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1F650C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485848 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047368);
}

void *sub_29A1F6598(void *result)
{
  if (*result == result[1])
  {
    sub_29B293FC0();
  }

  return result;
}

void *sub_29A1F65D0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<double, pxrInternal__aapl__pxrReserved__::VtValue>>::operator++() [T = std::map<double, pxrInternal__aapl__pxrReserved__::VtValue>, Reverse = false]";
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

uint64_t sub_29A1F6678(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48463ALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047378);
}

uint64_t sub_29A1F6704(uint64_t a1)
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

void sub_29A1F6900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSpline(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  pxrInternal__aapl__pxrReserved__::TsSpline::GetKnots(this, v65);
  if (pxrInternal__aapl__pxrReserved__::TsKnotMap::HasCurveSegments(v65))
  {
    CurveType = pxrInternal__aapl__pxrReserved__::TsSpline::GetCurveType(this);
    v7 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(CurveType);
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s,\n", v7);
  }

  PreExtrapolation = pxrInternal__aapl__pxrReserved__::TsSpline::GetPreExtrapolation(this);
  v67 = v8;
  sub_29A1F74E8(a1, a2, "pre", &PreExtrapolation);
  PreExtrapolation = pxrInternal__aapl__pxrReserved__::TsSpline::GetPostExtrapolation(this);
  v67 = v9;
  sub_29A1F74E8(a1, a2, "post", &PreExtrapolation);
  pxrInternal__aapl__pxrReserved__::TsSpline::GetInnerLoopParams(this, &PreExtrapolation);
  *v63 = 0u;
  v64 = 0u;
  if (pxrInternal__aapl__pxrReserved__::TsLoopParams::operator!=(&PreExtrapolation, v63))
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::GetInnerLoopParams(this, &PreExtrapolation);
    v10 = v63;
    pxrInternal__aapl__pxrReserved__::TfStringify(*&PreExtrapolation, v63);
    if (SBYTE7(v64) < 0)
    {
      v10 = v63[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringify(*&v67, v61);
    v11 = v62;
    v12 = v61[0];
    v13 = v68;
    v14 = HIDWORD(v68);
    pxrInternal__aapl__pxrReserved__::TfStringify(*&v69, __p);
    v15 = v61;
    if (v11 < 0)
    {
      v15 = v12;
    }

    if (v60 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "loop: (%s, %s, %d, %d, %s),\n", v10, v15, v13, v14, v16);
    if (v60 < 0)
    {
      operator delete(__p[0]);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(v63[0]);
    }
  }

  ValueType = pxrInternal__aapl__pxrReserved__::TsSpline::GetValueType(this);
  v18 = pxrInternal__aapl__pxrReserved__::TsSpline::GetCurveType(this);
  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == ValueType)
  {
    v19 = pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(v65);
    v20 = pxrInternal__aapl__pxrReserved__::TsKnotMap::end(v65);
    if (v19 != v20)
    {
      v21 = 3;
      do
      {
        Time = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v19);
        pxrInternal__aapl__pxrReserved__::TfStringify(Time, &PreExtrapolation);
        if (v68 >= 0)
        {
          p_PreExtrapolation = &PreExtrapolation;
        }

        else
        {
          p_PreExtrapolation = PreExtrapolation;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s:", p_PreExtrapolation);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(PreExtrapolation);
        }

        if (pxrInternal__aapl__pxrReserved__::TsKnot::IsDualValued(v19))
        {
          v61[0] = 0;
          if (sub_29A1F9C98(v19, v61))
          {
            v24 = 40;
            if ((*(*v19 + 24) & 0x20) == 0)
            {
              v24 = 32;
            }

            v25 = *(*v19 + v24);
            v61[0] = v25;
          }

          else
          {
            v25 = v61[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringify(*&v25, &PreExtrapolation);
          if (v68 >= 0)
          {
            v26 = &PreExtrapolation;
          }

          else
          {
            v26 = PreExtrapolation;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " %s &", v26);
          if (SHIBYTE(v68) < 0)
          {
            operator delete(PreExtrapolation);
          }
        }

        v61[0] = 0;
        if (sub_29A1F9C98(v19, v61))
        {
          v27 = *(*v19 + 32);
          v61[0] = v27;
        }

        else
        {
          v27 = v61[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringify(*&v27, &PreExtrapolation);
        if (v68 >= 0)
        {
          v28 = &PreExtrapolation;
        }

        else
        {
          v28 = PreExtrapolation;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " %s", v28);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(PreExtrapolation);
        }

        if (v21 == 3)
        {
          PreExtrapolation = 0;
          if (sub_29A1F9C98(v19, &PreExtrapolation))
          {
            PreExtrapolation = *(*v19 + 48);
          }

          PreTanWidth = 0.0;
          if (!v18)
          {
            PreTanWidth = pxrInternal__aapl__pxrReserved__::TsKnot::GetPreTanWidth(v19);
          }

          sub_29A1F9B68(a1, "pre", v18 == 0, PreTanWidth, *&PreExtrapolation);
        }

        NextInterpolation = pxrInternal__aapl__pxrReserved__::TsKnot::GetNextInterpolation(v19);
        v21 = NextInterpolation;
        if (NextInterpolation == 3)
        {
          PreExtrapolation = 0;
          if (sub_29A1F9C98(v19, &PreExtrapolation))
          {
            PreExtrapolation = *(*v19 + 56);
          }

          PostTanWidth = 0.0;
          if (!v18)
          {
            PostTanWidth = pxrInternal__aapl__pxrReserved__::TsKnot::GetPostTanWidth(v19);
          }

          sub_29A1F9B68(a1, "post curve", v18 == 0, PostTanWidth, *&PreExtrapolation);
        }

        else
        {
          v32 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(NextInterpolation);
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; post %s", v32);
        }

        pxrInternal__aapl__pxrReserved__::TsKnot::GetCustomData(v19, &PreExtrapolation);
        if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(&PreExtrapolation))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; ");
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, 0, 0, &PreExtrapolation, 0);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, ",\n");
        sub_29A184A10(&PreExtrapolation, 0);
        v19 = (v19 + 24);
      }

      while (v19 != v20);
    }
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == ValueType)
  {
    v33 = pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(v65);
    v34 = pxrInternal__aapl__pxrReserved__::TsKnotMap::end(v65);
    if (v33 != v34)
    {
      v35 = 3;
      do
      {
        v36 = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v33);
        pxrInternal__aapl__pxrReserved__::TfStringify(v36, &PreExtrapolation);
        if (v68 >= 0)
        {
          v37 = &PreExtrapolation;
        }

        else
        {
          v37 = PreExtrapolation;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s:", v37);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(PreExtrapolation);
        }

        if (pxrInternal__aapl__pxrReserved__::TsKnot::IsDualValued(v33))
        {
          LODWORD(v61[0]) = 0;
          if (sub_29A1F9ECC(v33, v61))
          {
            v38 = 32;
            if ((*(*v33 + 24) & 0x20) == 0)
            {
              v38 = 28;
            }

            v39 = *(*v33 + v38);
            *v61 = v39;
          }

          else
          {
            v39 = *v61;
          }

          pxrInternal__aapl__pxrReserved__::TfStringify(v39, &PreExtrapolation);
          if (v68 >= 0)
          {
            v40 = &PreExtrapolation;
          }

          else
          {
            v40 = PreExtrapolation;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " %s &", v40);
          if (SHIBYTE(v68) < 0)
          {
            operator delete(PreExtrapolation);
          }
        }

        LODWORD(v61[0]) = 0;
        if (sub_29A1F9ECC(v33, v61))
        {
          v41 = *(*v33 + 28);
          *v61 = v41;
        }

        else
        {
          v41 = *v61;
        }

        pxrInternal__aapl__pxrReserved__::TfStringify(v41, &PreExtrapolation);
        if (v68 >= 0)
        {
          v42 = &PreExtrapolation;
        }

        else
        {
          v42 = PreExtrapolation;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " %s", v42);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(PreExtrapolation);
        }

        if (v35 == 3)
        {
          LODWORD(PreExtrapolation) = 0;
          if (sub_29A1F9ECC(v33, &PreExtrapolation))
          {
            LODWORD(PreExtrapolation) = *(*v33 + 36);
          }

          v43 = 0.0;
          if (!v18)
          {
            v43 = pxrInternal__aapl__pxrReserved__::TsKnot::GetPreTanWidth(v33);
          }

          sub_29A1F9D9C(a1, "pre", v18 == 0, v43, *&PreExtrapolation);
        }

        v44 = pxrInternal__aapl__pxrReserved__::TsKnot::GetNextInterpolation(v33);
        v35 = v44;
        if (v44 == 3)
        {
          LODWORD(PreExtrapolation) = 0;
          if (sub_29A1F9ECC(v33, &PreExtrapolation))
          {
            LODWORD(PreExtrapolation) = *(*v33 + 40);
          }

          v45 = 0.0;
          if (!v18)
          {
            v45 = pxrInternal__aapl__pxrReserved__::TsKnot::GetPostTanWidth(v33);
          }

          sub_29A1F9D9C(a1, "post curve", v18 == 0, v45, *&PreExtrapolation);
        }

        else
        {
          v46 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(v44);
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; post %s", v46);
        }

        pxrInternal__aapl__pxrReserved__::TsKnot::GetCustomData(v33, &PreExtrapolation);
        if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(&PreExtrapolation))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; ");
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, 0, 0, &PreExtrapolation, 0);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, ",\n");
        sub_29A184A10(&PreExtrapolation, 0);
        v33 = (v33 + 24);
      }

      while (v33 != v34);
    }
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == ValueType)
  {
    v47 = pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(v65);
    v48 = pxrInternal__aapl__pxrReserved__::TsKnotMap::end(v65);
    if (v47 != v48)
    {
      v49 = 3;
      do
      {
        v50 = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v47);
        pxrInternal__aapl__pxrReserved__::TfStringify(v50, &PreExtrapolation);
        if (v68 >= 0)
        {
          v51 = &PreExtrapolation;
        }

        else
        {
          v51 = PreExtrapolation;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s:", v51);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(PreExtrapolation);
        }

        if (pxrInternal__aapl__pxrReserved__::TsKnot::IsDualValued(v47))
        {
          LOWORD(v61[0]) = 0;
          if (sub_29A1FA318(v47, v61))
          {
            v52 = 28;
            if ((*(*v47 + 24) & 0x20) == 0)
            {
              v52 = 26;
            }

            LOWORD(v61[0]) = *(*v47 + v52);
          }

          sub_29A1F9FD0();
          if (v68 >= 0)
          {
            v53 = &PreExtrapolation;
          }

          else
          {
            v53 = PreExtrapolation;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " %s &", v53);
          if (SHIBYTE(v68) < 0)
          {
            operator delete(PreExtrapolation);
          }
        }

        LOWORD(v61[0]) = 0;
        if (sub_29A1FA318(v47, v61))
        {
          LOWORD(v61[0]) = *(*v47 + 26);
        }

        sub_29A1F9FD0();
        if (v68 >= 0)
        {
          v54 = &PreExtrapolation;
        }

        else
        {
          v54 = PreExtrapolation;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " %s", v54);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(PreExtrapolation);
        }

        if (v49 == 3)
        {
          LOWORD(PreExtrapolation) = 0;
          if (sub_29A1FA318(v47, &PreExtrapolation))
          {
            LOWORD(PreExtrapolation) = *(*v47 + 30);
          }

          v55 = 0.0;
          if (!v18)
          {
            v55 = pxrInternal__aapl__pxrReserved__::TsKnot::GetPreTanWidth(v47);
          }

          sub_29A1FA1F0(a1, "pre", v18 == 0, PreExtrapolation, v55);
        }

        v56 = pxrInternal__aapl__pxrReserved__::TsKnot::GetNextInterpolation(v47);
        v49 = v56;
        if (v56 == 3)
        {
          LOWORD(PreExtrapolation) = 0;
          if (sub_29A1FA318(v47, &PreExtrapolation))
          {
            LOWORD(PreExtrapolation) = *(*v47 + 32);
          }

          v57 = 0.0;
          if (!v18)
          {
            v57 = pxrInternal__aapl__pxrReserved__::TsKnot::GetPostTanWidth(v47);
          }

          sub_29A1FA1F0(a1, "post curve", v18 == 0, PreExtrapolation, v57);
        }

        else
        {
          v58 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(v56);
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; post %s", v58);
        }

        pxrInternal__aapl__pxrReserved__::TsKnot::GetCustomData(v47, &PreExtrapolation);
        if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(&PreExtrapolation))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; ");
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, 0, 0, &PreExtrapolation, 0);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, ",\n");
        sub_29A184A10(&PreExtrapolation, 0);
        v47 = (v47 + 24);
      }

      while (v47 != v48);
    }
  }

  else
  {
    PreExtrapolation = "ts/valueTypeDispatch.h";
    v67 = "TsDispatchToValueTypeTemplate";
    v68 = 64;
    v69 = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_SplineKnotWriter, Args = <std::reference_wrapper<pxrInternal__aapl__pxrReserved__::Sdf_TextOutput>, const unsigned long &, std::reference_wrapper<const pxrInternal__aapl__pxrReserved__::TsKnotMap>, pxrInternal__aapl__pxrReserved__::TsCurveType>]";
    v70 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&PreExtrapolation, 1, "Unsupported spline value type");
  }

  PreExtrapolation = v65;
  sub_29A1B8EE4(&PreExtrapolation);
}

void sub_29A1F7384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  a27 = &a35;
  sub_29A1B8EE4(&a27);
  _Unwind_Resume(a1);
}

const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(int a1)
{
  if (!a1)
  {
    return "bezier";
  }

  if (a1 == 1)
  {
    return "hermite";
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "sdf/fileIO_Common.cpp";
  v4[1] = "Stringify";
  v4[2] = 1127;
  v4[3] = "static const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(TsCurveType)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "unknown value");
  return "";
}

{
  if (!a1)
  {
    return "public";
  }

  if (a1 == 1)
  {
    return "private";
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "sdf/fileIO_Common.cpp";
  v4[1] = "Stringify";
  v4[2] = 1070;
  v4[3] = "static const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(SdfPermission)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "unknown value");
  return "";
}

{
  if (!a1)
  {
    return "";
  }

  if (a1 == 1)
  {
    return "uniform";
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "sdf/fileIO_Common.cpp";
  v4[1] = "Stringify";
  v4[2] = 1099;
  v4[3] = "static const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(SdfVariability)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "unknown value");
  return "";
}

void sub_29A1F74E8(void *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation(__p);
  if (!pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator==(a4, __p))
  {
    if (*a4 == 3)
    {
      pxrInternal__aapl__pxrReserved__::TfStringify(*(a4 + 8), __p);
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s: %s(%s),\n", a3, "sloped", v8);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(*a4);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "%s: %s,\n", a3, v9);
    }
  }
}

void sub_29A1F75BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F75DC(void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = "{ ";
  if (a3)
  {
    v8 = "{\n";
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "relocates = %s", v8);
  v10 = *a4;
  v9 = a4[1];
  v30 = v10;
  v31 = v9;
  if (v10 != v9)
  {
    v11 = ((v9 - v10) >> 4) - 1;
    do
    {
      v12 = sub_29A1FA41C(&v30);
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(*v12);
      if (*(String + 23) >= 0)
      {
        v14 = String;
      }

      else
      {
        v14 = *String;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "<%s>", v14);
      sub_29A008E78(&__p, ": ");
      if ((v29 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v29 & 0x80u) == 0)
      {
        v16 = v29;
      }

      else
      {
        v16 = v28;
      }

      sub_29A1F95A4(a1, p_p, v16);
      if (v29 < 0)
      {
        operator delete(__p);
      }

      v17 = sub_29A1FA41C(&v30);
      v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((*v17 + 8));
      if (*(v18 + 23) >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = *v18;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "<%s>", v19);
      if (v11 && ((sub_29A008E78(&__p, ", "), (v29 & 0x80u) == 0) ? (v20 = &__p) : (v20 = __p), (v29 & 0x80u) == 0 ? (v21 = v29) : (v21 = v28), sub_29A1F95A4(a1, v20, v21), v29 < 0))
      {
        operator delete(__p);
        if (a3)
        {
LABEL_28:
          sub_29A008E78(&__p, "\n");
          if ((v29 & 0x80u) == 0)
          {
            v22 = &__p;
          }

          else
          {
            v22 = __p;
          }

          if ((v29 & 0x80u) == 0)
          {
            v23 = v29;
          }

          else
          {
            v23 = v28;
          }

          sub_29A1F95A4(a1, v22, v23);
          if (v29 < 0)
          {
            operator delete(__p);
          }
        }
      }

      else if (a3)
      {
        goto LABEL_28;
      }

      sub_29A1FA454(&v30);
      --v11;
    }

    while (v30 != v31);
  }

  if (a3)
  {
    sub_29A008E78(&__p, "}\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, &__p);
  }

  else
  {
    sub_29A008E78(&__p, " }");
    if ((v29 & 0x80u) == 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v25 = v29;
    }

    else
    {
      v25 = v28;
    }

    sub_29A1F95A4(a1, v24, v25);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_29A1F7850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F7880(void *a1, uint64_t a2, int a3, void *a4)
{
  v8 = "{ ";
  if (a3)
  {
    v8 = "{\n";
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "relocates = %s", v8);
  v9 = a4[2];
  v29 = *a4;
  v30 = a4 + 1;
  if (v29 != a4 + 1)
  {
    v10 = v9 - 1;
    do
    {
      v11 = sub_29A1FA4D4(&v29);
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((*v11 + 28));
      if (*(String + 23) >= 0)
      {
        v13 = String;
      }

      else
      {
        v13 = *String;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "<%s>", v13);
      sub_29A008E78(&__p, ": ");
      if ((v28 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v28 & 0x80u) == 0)
      {
        v15 = v28;
      }

      else
      {
        v15 = v27;
      }

      sub_29A1F95A4(a1, p_p, v15);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      v16 = sub_29A1FA4D4(&v29);
      v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((*v16 + 36));
      if (*(v17 + 23) >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v17;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "<%s>", v18);
      if (v10 && ((sub_29A008E78(&__p, ", "), (v28 & 0x80u) == 0) ? (v19 = &__p) : (v19 = __p), (v28 & 0x80u) == 0 ? (v20 = v28) : (v20 = v27), sub_29A1F95A4(a1, v19, v20), v28 < 0))
      {
        operator delete(__p);
        if (a3)
        {
LABEL_28:
          sub_29A008E78(&__p, "\n");
          if ((v28 & 0x80u) == 0)
          {
            v21 = &__p;
          }

          else
          {
            v21 = __p;
          }

          if ((v28 & 0x80u) == 0)
          {
            v22 = v28;
          }

          else
          {
            v22 = v27;
          }

          sub_29A1F95A4(a1, v21, v22);
          if (v28 < 0)
          {
            operator delete(__p);
          }
        }
      }

      else if (a3)
      {
        goto LABEL_28;
      }

      sub_29A1FA50C(&v29);
      --v10;
    }

    while (v29 != v30);
  }

  if (a3)
  {
    sub_29A008E78(&__p, "}\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, &__p);
  }

  else
  {
    sub_29A008E78(&__p, " }");
    if ((v28 & 0x80u) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p;
    }

    if ((v28 & 0x80u) == 0)
    {
      v24 = v28;
    }

    else
    {
      v24 = v27;
    }

    sub_29A1F95A4(a1, v23, v24);
  }

  if (v28 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_29A1F7AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::_WriteDictionary(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  if (a3)
  {
    v9 = "{\n";
  }

  else
  {
    v9 = "{ ";
  }

  sub_29A008E78(&__p, v9);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_29A1F95A4(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = a4[2];
  v54 = *a4;
  v55 = a4 + 1;
  if (v54 != a4 + 1)
  {
    if (a3)
    {
      v13 = a2 + 1;
    }

    else
    {
      v13 = 0;
    }

    do
    {
      --v12;
      v14 = sub_29A1F8260(&v54);
      v15 = *(*v14 + 40);
      if (a5)
      {
        if (sub_29A1EFC10(*(*v14 + 40)))
        {
          v16 = sub_29A1F8260(&v54);
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a1, v13, *(*v16 + 32));
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, ": ");
          v17 = sub_29A1EFC48(v15);
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a1, 0, v17);
          if (v12 && ((sub_29A008E78(&__p, ", "), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v18 = &__p) : (v18 = __p.__r_.__value_.__r.__words[0]), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v19 = HIBYTE(__p.__r_.__value_.__r.__words[2])) : (v19 = __p.__r_.__value_.__l.__size_), sub_29A1F95A4(a1, v18, v19), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (a3)
            {
LABEL_27:
              sub_29A008E78(&__p, "\n");
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v20 = &__p;
              }

              else
              {
                v20 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v21 = __p.__r_.__value_.__l.__size_;
              }

              goto LABEL_85;
            }
          }

          else if (a3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.cpp";
          __p.__r_.__value_.__l.__size_ = "_WriteDictionary";
          __p.__r_.__value_.__r.__words[2] = 805;
          v52 = "static void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::_WriteDictionary(Sdf_TextOutput &, size_t, BOOL, Sdf_FileIOUtility::_OrderedDictionary &, BOOL)";
          v53 = 0;
          v24 = *(*sub_29A1F8260(&v54) + 32);
          if (v24[23] < 0)
          {
            v24 = *v24;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Dictionary has a non-string value under key %s; skipping", v24);
        }
      }

      else
      {
        v22 = *(*sub_29A1F8260(&v54) + 32);
        if (*(v22 + 23) < 0)
        {
          sub_29A008D14(&__dst, *v22, *(v22 + 1));
        }

        else
        {
          v23 = *v22;
          __dst.__r_.__value_.__r.__words[2] = *(v22 + 2);
          *&__dst.__r_.__value_.__l.__data_ = v23;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        v26 = p_dst->__r_.__value_.__s.__data_[0];
        if (p_dst->__r_.__value_.__s.__data_[0])
        {
          v27 = (v26 - 48) >= 0xA;
        }

        else
        {
          v27 = 0;
        }

        if (!v27)
        {
          goto LABEL_60;
        }

        if (v26 != 95 && (v26 & 0xFFFFFFDF) - 65 > 0x19)
        {
          goto LABEL_60;
        }

        do
        {
          v30 = p_dst->__r_.__value_.__s.__data_[0];
          p_dst = (p_dst + 1);
          v29 = v30;
          v31 = (v30 & 0xFFFFFFDF) - 65;
          v32 = v30 - 48;
        }

        while (v30 == 95 || v31 < 0x1A || v32 < 0xA);
        if (v29)
        {
LABEL_60:
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(&__dst, &__p);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = __p;
        }

        if (!sub_29A185258(v15))
        {
          v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          if (!v43)
          {
            v43 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::GetSerializationName(v43, v15);
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &__dst;
        }

        else
        {
          v35 = __dst.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, v13, "dictionary %s = ", v35);
        v36 = sub_29A187B1C(v15);
        v49[0] = 0;
        v49[1] = 0;
        v48 = v49;
        __p.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v36);
        __p.__r_.__value_.__l.__size_ = v37;
        __p.__r_.__value_.__r.__words[2] = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v36);
        v52 = v38;
        while (__p.__r_.__value_.__l.__size_ != v52 || __p.__r_.__value_.__l.__size_ && __p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__r.__words[2])
        {
          v40 = *sub_29A185F48(&__p, v38, v39);
          v47 = (*sub_29A185F48(&__p, v41, v42) + 32);
          v56 = &v47;
          sub_29A1FA5B4(&v48, &v47, &unk_29B4D6118, &v56)[5] = v40 + 56;
          sub_29A186174(&__p);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::_WriteDictionary(a1, a2 + 1, a3, &v48, 0);
        sub_29A082B84(&v48, v49[0]);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      if ((a3 & 1) == 0 && v12)
      {
        sub_29A008E78(&__p, "; ");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

LABEL_85:
        sub_29A1F95A4(a1, v20, v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_29A1F8A08(&v54);
    }

    while (v54 != v55);
  }

  if (a3)
  {
    sub_29A008E78(&__p, "}\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, &__p);
  }

  else
  {
    sub_29A008E78(&__p, " }");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &__p;
    }

    else
    {
      v44 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = __p.__r_.__value_.__l.__size_;
    }

    sub_29A1F95A4(a1, v44, v45);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1F8194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1F8260(void *result)
{
  if (*result == result[1])
  {
    sub_29B29400C();
  }

  return result;
}

uint64_t sub_29A1F8298(uint64_t a1, const std::string **a2)
{
  if (sub_29A1EFC10(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(v5, &__p);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = __p;
  }

  else
  {
    result = sub_29A1FA6D8(a2);
    if (!result)
    {
      return result;
    }

    v7 = a2[1];
    if ((v7 & 4) != 0)
    {
      v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v8 = *a2;
    }

    std::string::append(a1, "[");
    size = v8[1].__r_.__value_.__l.__size_;
    if (size)
    {
      v10 = v8->__r_.__value_.__r.__words[0];
      if (v10)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(size, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, p_p, v12);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v13 = v10 - 1;
        if (v10 != 1)
        {
          v14 = size + 1;
          do
          {
            std::string::append(a1, ", ");
            pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(v14, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &__p;
            }

            else
            {
              v15 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v16 = __p.__r_.__value_.__l.__size_;
            }

            std::string::append(a1, v15, v16);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v14;
            --v13;
          }

          while (v13);
        }
      }
    }

    std::string::append(a1, "]");
  }

  return 1;
}

void sub_29A1F843C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F845C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  if (sub_29A1FA710(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(v2, &__p);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = __p;
  }

  else
  {
    result = sub_29A1FA748(v2);
    if (!result)
    {
      return result;
    }

    v6 = *(v2 + 1);
    if ((v6 & 4) != 0)
    {
      v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v7 = *v2;
    }

    std::string::append(a1, "[");
    v8 = v7[4];
    if (v8)
    {
      v9 = *v7;
      if (v9)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(v8, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v12 = v9 - 1;
        if (v9 != 1)
        {
          v13 = (v8 + 8);
          do
          {
            std::string::append(a1, ", ");
            pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(v13, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v14 = &__p;
            }

            else
            {
              v14 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v15 = __p.__r_.__value_.__l.__size_;
            }

            std::string::append(a1, v14, v15);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v13 = (v13 + 8);
            --v12;
          }

          while (v12);
        }
      }
    }

    std::string::append(a1, "]");
  }

  return 1;
}

void sub_29A1F8604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F8624(uint64_t a1, const std::string **a2)
{
  if (sub_29A1FA780(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A1F56D8(v5, &__p);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = __p;
  }

  else
  {
    result = sub_29A1FA80C(a2);
    if (!result)
    {
      return result;
    }

    v7 = a2[1];
    if ((v7 & 4) != 0)
    {
      v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v8 = *a2;
    }

    std::string::append(a1, "[");
    size = v8[1].__r_.__value_.__l.__size_;
    if (size)
    {
      v10 = v8->__r_.__value_.__r.__words[0];
      if (v10)
      {
        sub_29A1F56D8(size, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, p_p, v12);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v13 = v10 - 1;
        if (v10 != 1)
        {
          v14 = size + 2;
          do
          {
            std::string::append(a1, ", ");
            sub_29A1F56D8(v14, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &__p;
            }

            else
            {
              v15 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v16 = __p.__r_.__value_.__l.__size_;
            }

            std::string::append(a1, v15, v16);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v14 += 2;
            --v13;
          }

          while (v13);
        }
      }
    }

    std::string::append(a1, "]");
  }

  return 1;
}

void sub_29A1F87C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F87E8(uint64_t a1)
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

void sub_29A1F89E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void *sub_29A1F8A08(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<const std::string *, const pxrInternal__aapl__pxrReserved__::VtValue *, pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::_StringLessThan>>::operator++() [T = std::map<const std::string *, const pxrInternal__aapl__pxrReserved__::VtValue *, pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::_StringLessThan>, Reverse = false]";
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

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(void *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtDictionary *this, int a5)
{
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v17 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(this);
  v18 = v10;
  v19 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(this);
  v20 = v11;
  while (v18 != v20 || v18 && v17 != v19)
  {
    v13 = *sub_29A185F48(&v17, v11, v12);
    v16 = (*sub_29A185F48(&v17, v14, v15) + 32);
    v23 = &v16;
    sub_29A1FA5B4(&v21, &v16, &unk_29B4D6118, &v23)[5] = v13 + 56;
    sub_29A186174(&v17);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::_WriteDictionary(a1, a2, a3, &v21, a5);
  sub_29A082B84(&v21, v22[0]);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteLayerOffset(void *a1, uint64_t a2, int a3, double *a4)
{
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__p, 0.0, 1.0);
  if (!pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(a4, __p))
  {
    if ((a3 & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, " (");
    }

    v9 = *a4;
    v8 = a4[1];
    if (*a4 != 0.0)
    {
      pxrInternal__aapl__pxrReserved__::TfStringify(v9, __p);
      if (v17 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if (a3)
      {
        v11 = a2;
      }

      else
      {
        v11 = 0;
      }

      v12 = "";
      if (a3)
      {
        v12 = "\n";
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, v11, "offset = %s%s", v10, v12);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v8 != 1.0)
    {
      if (v9 != 0.0 && (a3 & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; ");
      }

      pxrInternal__aapl__pxrReserved__::TfStringify(v8, __p);
      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (a3)
      {
        v14 = a2;
      }

      else
      {
        v14 = 0;
      }

      v15 = "";
      if (a3)
      {
        v15 = "\n";
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, v14, "scale = %s%s", v13, v15);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((a3 & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, ")");
    }
  }
}

void sub_29A1F8D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility *this@<X0>, std::string *a2@<X8>)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(EmptyString, a2);
}

uint64_t sub_29A1F8DE8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 1)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC94B0]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1F8E20(unsigned int *a1)
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
  MEMORY[0x29C2C1ED0](&v7, *a1);
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

void sub_29A1F901C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1F9040(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 2)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC94C8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1F9078(unsigned int *a1)
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
  MEMORY[0x29C2C1EE0](&v7, *a1);
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

void sub_29A1F9274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1F9298(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x29EDC94A0] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x29EDC94A0];

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, v4);
}

const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(unsigned int a1)
{
  if (a1 < 3)
  {
    return off_29F2954F8[a1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "sdf/fileIO_Common.cpp";
  v4[1] = "Stringify";
  v4[2] = 1085;
  v4[3] = "static const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(SdfSpecifier)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "unknown value");
  return "";
}

{
  if (a1 < 7)
  {
    return off_29F295510[a1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "sdf/fileIO_Common.cpp";
  v4[1] = "Stringify";
  v4[2] = 1116;
  v4[3] = "static const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(TsExtrapMode)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "unknown value");
  return "";
}

{
  if (a1 < 4)
  {
    return off_29F295548[a1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "sdf/fileIO_Common.cpp";
  v4[1] = "Stringify";
  v4[2] = 1140;
  v4[3] = "static const char *pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(TsInterpMode)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "unknown value");
  return "";
}

uint64_t sub_29A1F95A4(void *a1, char *__src, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  while (1)
  {
    v6 = a1[5];
    v7 = v3 >= a1[3] - v6 ? a1[3] - v6 : v3;
    memcpy((a1[4] + v6), __src, v7);
    v8 = a1[5] + v7;
    a1[5] = v8;
    if (v8 == a1[3])
    {
      result = sub_29A1F3A88(a1);
      if (!result)
      {
        break;
      }
    }

    __src += v7;
    v3 -= v7;
    if (!v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_29A1F9640@<X0>(void *a1@<X8>)
{
  sub_29A1F9694(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  v4[0] = 0;
  a1[2] = &unk_2A20471A0;
  return v2(0);
}

_DWORD *sub_29A1F9694@<X0>(void *a1@<X8>)
{
  v2 = operator new(8uLL);
  *v2 = 0;
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v3 + 1);
  *a1 = v2;
  a1[1] = sub_29A1F96E8;
  return result;
}

void sub_29A1F96E8(_DWORD *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);
    v2 = sub_29A1DE3A4(a1);

    operator delete(v2);
  }
}

uint64_t *sub_29A1F973C(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A1F9794(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29A1F9794(uint64_t *result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A1F981C(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29A1F981C(uint64_t **a1, double *a2, double *a3, void *a4)
{
  v6 = sub_29A1F98A0(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29A1F9A3C(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

double *sub_29A1F98A0(void *a1, double *a2, double **a3, double *a4, double *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
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
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 1;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
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
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
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

void *sub_29A1F9A3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[4] = *a2;
  result = sub_29A186EF4(v6 + 5, a2 + 1);
  *(a3 + 16) = 1;
  return result;
}

void sub_29A1F9AB0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A186B14(v2 + 40);
    }

    operator delete(v2);
  }
}

void sub_29A1F9B0C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A1F9B0C(a1, *a2);
    sub_29A1F9B0C(a1, a2[1]);
    sub_29A186B14((a2 + 5));

    operator delete(a2);
  }
}

void sub_29A1F9B68(void *a1, const char *a2, int a3, double a4, double a5)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::TfStringify(a4, v15);
    v8 = v16;
    v9 = v15[0];
    pxrInternal__aapl__pxrReserved__::TfStringify(a5, __p);
    if (v8 >= 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v9;
    }

    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; %s (%s, %s)", a2, v10, v11);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfStringify(a5, v15);
    if (v16 >= 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; %s (%s)", a2, v12);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_29A1F9C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F9C98(pxrInternal__aapl__pxrReserved__::TsKnot *a1, uint64_t a2)
{
  if (a2)
  {
    ValueType = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a1);
    if (ValueType == pxrInternal__aapl__pxrReserved__::Ts_GetType<double>())
    {
      return 1;
    }

    v7 = "ts/knot.h";
    v8 = "_CheckOutParam";
    v9 = 427;
    v10 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParam(T *) const [T = double]";
    v11 = 0;
    v6 = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a1);
    pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v6);
    v5 = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
    pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v5);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Cannot read from knot of type '%s' into '%s'");
  }

  else
  {
    v7 = "ts/knot.h";
    v8 = "_CheckOutParam";
    v9 = 418;
    v10 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParam(T *) const [T = double]";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Null pointer");
  }

  return 0;
}

void sub_29A1F9D9C(void *a1, const char *a2, int a3, double a4, float a5)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::TfStringify(a4, v15);
    v8 = v16;
    v9 = v15[0];
    pxrInternal__aapl__pxrReserved__::TfStringify(a5, __p);
    if (v8 >= 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v9;
    }

    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; %s (%s, %s)", a2, v10, v11);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfStringify(a5, v15);
    if (v16 >= 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; %s (%s)", a2, v12);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_29A1F9E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F9ECC(pxrInternal__aapl__pxrReserved__::TsKnot *a1, uint64_t a2)
{
  if (a2)
  {
    ValueType = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a1);
    if (ValueType == pxrInternal__aapl__pxrReserved__::Ts_GetType<float>())
    {
      return 1;
    }

    v7 = "ts/knot.h";
    v8 = "_CheckOutParam";
    v9 = 427;
    v10 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParam(T *) const [T = float]";
    v11 = 0;
    v6 = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a1);
    pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v6);
    v5 = pxrInternal__aapl__pxrReserved__::Ts_GetType<float>();
    pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v5);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Cannot read from knot of type '%s' into '%s'");
  }

  else
  {
    v7 = "ts/knot.h";
    v8 = "_CheckOutParam";
    v9 = 418;
    v10 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParam(T *) const [T = float]";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Null pointer");
  }

  return 0;
}

uint64_t sub_29A1F9FD0()
{
  sub_29A00B6DC(&v5);
  v0 = *(v5 - 24);
  v1 = std::locale::classic();
  std::ios_base::getloc((&v5 + v0));
  std::ios_base::imbue((&v5 + v0), v1);
  std::locale::~locale(&v11);
  v2 = *(&v7[3].__locale_ + v0);
  if (v2)
  {
    (*(v2->__locale_ + 2))(v2, v1);
    std::locale::locale(&v10, v2 + 1);
    std::locale::operator=(v2 + 1, v1);
    std::locale::~locale(&v10);
  }

  std::locale::~locale(&v4);
  pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(&v5);
  std::stringbuf::str();
  v5 = *MEMORY[0x29EDC9538];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29A1FA1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void sub_29A1FA1F0(void *a1, const char *a2, int a3, __int16 a4, double a5)
{
  v16 = a4;
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::TfStringify(a5, v14);
    v7 = v15;
    v8 = v14[0];
    sub_29A1F9FD0();
    if (v7 >= 0)
    {
      v9 = v14;
    }

    else
    {
      v9 = v8;
    }

    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; %s (%s, %s)", a2, v9, p_p);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_29A1F9FD0();
    if (v15 >= 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = v14[0];
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "; %s (%s)", a2, v11);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_29A1FA2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FA318(pxrInternal__aapl__pxrReserved__::TsKnot *a1, uint64_t a2)
{
  if (a2)
  {
    ValueType = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a1);
    if (ValueType == pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>())
    {
      return 1;
    }

    v7 = "ts/knot.h";
    v8 = "_CheckOutParam";
    v9 = 427;
    v10 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParam(T *) const [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    v11 = 0;
    v6 = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a1);
    pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v6);
    v5 = pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
    pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v5);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Cannot read from knot of type '%s' into '%s'");
  }

  else
  {
    v7 = "ts/knot.h";
    v8 = "_CheckOutParam";
    v9 = 418;
    v10 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParam(T *) const [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Null pointer");
  }

  return 0;
}

void *sub_29A1FA41C(void *result)
{
  if (*result == result[1])
  {
    sub_29B294058();
  }

  return result;
}

void *sub_29A1FA454(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>>::operator++() [T = const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29A1FA4D4(void *result)
{
  if (*result == result[1])
  {
    sub_29B2940A4();
  }

  return result;
}

void *sub_29A1FA50C(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
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

uint64_t *sub_29A1FA5B4(uint64_t **a1, const void ***a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A1FA63C(a1, &v10, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v7[4] = **a4;
    v7[5] = 0;
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

uint64_t sub_29A1FA63C(uint64_t a1, uint64_t *a2, const void ***a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_29A00AFCC(a1, *a3, *(v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_29A00AFCC(a1, *(v8 + 32), *a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_29A1FA6D8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 59)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042530);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1FA710(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040480);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1FA748(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042548);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1FA780(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484676 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047388);
}

uint64_t sub_29A1FA80C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4846A9 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047398);
}

void sub_29A1FA898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a5;
  }

  else
  {
    v9 = *a5;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a5 + 8);
  }

  if (v8)
  {
    v10 = " ";
  }

  else
  {
    v10 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v9, v10, v11);
  v12 = *a4;
  v13 = *(a4 + 8);
  if (*a4 == v13)
  {
    sub_29A008E78(__p, "None\n");
    if ((v30 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v30 & 0x80u) == 0)
    {
      v17 = v30;
    }

    else
    {
      v17 = __p[1];
    }

    goto LABEL_23;
  }

  if (v13 - v12 == 8)
  {
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v12);
    if (*(String + 23) >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "<%s>", v15);
    sub_29A008E78(__p, "\n");
    if ((v30 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v30 & 0x80u) == 0)
    {
      v17 = v30;
    }

    else
    {
      v17 = __p[1];
    }

LABEL_23:
    sub_29A1F95A4(a1, v16, v17);
    goto LABEL_59;
  }

  sub_29A008E78(__p, "[\n");
  if ((v30 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v19 = v30;
  }

  else
  {
    v19 = __p[1];
  }

  sub_29A1F95A4(a1, v18, v19);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *(a4 + 8);
  *&v28 = *a4;
  *(&v28 + 1) = v22;
  while (v28 != *(&v28 + 1))
  {
    v23 = sub_29A1FAB78(&v28, v20, v21);
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v23);
    if (*(v24 + 23) >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = *v24;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2 + 1, "<%s>", v25);
    *__p = v28;
    sub_29A1FABF8(__p);
    if (__p[0] == __p[1])
    {
      sub_29A008E78(__p, "\n");
      if ((v30 & 0x80u) == 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v27 = v30;
      }

      else
      {
        v27 = __p[1];
      }
    }

    else
    {
      sub_29A008E78(__p, ",\n");
      if ((v30 & 0x80u) == 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v27 = v30;
      }

      else
      {
        v27 = __p[1];
      }
    }

    sub_29A1F95A4(a1, v26, v27);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1FABF8(&v28);
  }

  sub_29A008E78(__p, "]\n");
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, __p);
LABEL_59:
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FAB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FAB78(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FABF8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void sub_29A1FAC78(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *(a5 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a5;
  }

  else
  {
    v9 = *a5;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a5 + 8);
  }

  if (v8)
  {
    v10 = " ";
  }

  else
  {
    v10 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v9, v10, v11);
  v12 = *a4;
  v13 = a4[1];
  if (*a4 == v13)
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v15 = v26;
    }

    else
    {
      v15 = __p[1];
    }

    goto LABEL_20;
  }

  if (v13 - v12 == 48)
  {
    sub_29A1FAF18(a1, 0, v12);
    sub_29A008E78(__p, "\n");
    if ((v26 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v15 = v26;
    }

    else
    {
      v15 = __p[1];
    }

LABEL_20:
    sub_29A1F95A4(a1, v14, v15);
    goto LABEL_53;
  }

  sub_29A008E78(__p, "[\n");
  if ((v26 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v17 = v26;
  }

  else
  {
    v17 = __p[1];
  }

  sub_29A1F95A4(a1, v16, v17);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = a4[1];
  *&v24 = *a4;
  *(&v24 + 1) = v20;
  while (v24 != *(&v24 + 1))
  {
    v21 = sub_29A1FAFF0(&v24, v18, v19);
    sub_29A1FAF18(a1, a2 + 1, v21);
    *__p = v24;
    sub_29A1FB070(__p);
    if (__p[0] == __p[1])
    {
      sub_29A008E78(__p, "\n");
      if ((v26 & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v23 = v26;
      }

      else
      {
        v23 = __p[1];
      }
    }

    else
    {
      sub_29A008E78(__p, ",\n");
      if ((v26 & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v23 = v26;
      }

      else
      {
        v23 = __p[1];
      }
    }

    sub_29A1F95A4(a1, v22, v23);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1FB070(&v24);
  }

  sub_29A008E78(__p, "]\n");
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, __p);
LABEL_53:
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FAEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1FAF18(void *a1, uint64_t a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "");
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    v7 = (a3 + 24);
    goto LABEL_7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteAssetPath(a1, 0, a3);
  v7 = (a3 + 24);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a3 + 24)))
  {
LABEL_7:
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v7);
    if (*(String + 23) >= 0)
    {
      v9 = String;
    }

    else
    {
      v9 = *String;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "<%s>", v9);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteLayerOffset(a1, a2 + 1, 0, (a3 + 32));
}

uint64_t sub_29A1FAFF0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FB070(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 48;
  }

  return a1;
}

void sub_29A1FB0F0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *(a5 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a5;
  }

  else
  {
    v9 = *a5;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a5 + 8);
  }

  if (v8)
  {
    v10 = " ";
  }

  else
  {
    v10 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v9, v10, v11);
  v12 = *a4;
  v13 = a4[1];
  if (*a4 == v13)
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v15 = v26;
    }

    else
    {
      v15 = __p[1];
    }

    goto LABEL_53;
  }

  if (v13 - v12 == 56 && pxrInternal__aapl__pxrReserved__::VtDictionary::empty((v12 + 48)))
  {
    sub_29A1FB3A0(a1, 0, *a4);
    sub_29A008E78(__p, "\n");
    if ((v26 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v15 = v26;
    }

    else
    {
      v15 = __p[1];
    }

LABEL_53:
    sub_29A1F95A4(a1, v14, v15);
    goto LABEL_54;
  }

  sub_29A008E78(__p, "[\n");
  if ((v26 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v17 = v26;
  }

  else
  {
    v17 = __p[1];
  }

  sub_29A1F95A4(a1, v16, v17);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = a4[1];
  *&v24 = *a4;
  *(&v24 + 1) = v20;
  while (v24 != *(&v24 + 1))
  {
    v21 = sub_29A1FB580(&v24, v18, v19);
    sub_29A1FB3A0(a1, a2 + 1, v21);
    *__p = v24;
    sub_29A1FB600(__p);
    if (__p[0] == __p[1])
    {
      sub_29A008E78(__p, "\n");
      if ((v26 & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v23 = v26;
      }

      else
      {
        v23 = __p[1];
      }
    }

    else
    {
      sub_29A008E78(__p, ",\n");
      if ((v26 & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v23 = v26;
      }

      else
      {
        v23 = __p[1];
      }
    }

    sub_29A1F95A4(a1, v22, v23);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1FB600(&v24);
  }

  sub_29A008E78(__p, "]\n");
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, __p);
LABEL_54:
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FB370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1FB3A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::empty((a3 + 48));
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "");
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
    v8 = (a3 + 24);
LABEL_8:
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v8);
    if (*(String + 23) >= 0)
    {
      v10 = String;
    }

    else
    {
      v10 = *String;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "<%s>", v10);
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteAssetPath(a1, 0, a3);
  v8 = (a3 + 24);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a3 + 24)))
  {
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_20;
  }

LABEL_12:
  sub_29A008E78(__p, " (\n");
  if ((v14 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v12 = v14;
  }

  else
  {
    v12 = __p[1];
  }

  sub_29A1F95A4(a1, v11, v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteLayerOffset(a1, a2 + 1, !v6, (a3 + 32));
  if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty((a3 + 48)))
  {
    sub_29A008E78(__p, "customData = ");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2 + 1, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, a2 + 1, 1, (a3 + 48), 0);
  }

  if (!v6)
  {
    sub_29A008E78(__p, ")");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1FB558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FB580(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FB600(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 56;
  }

  return a1;
}

void sub_29A1FB680(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *(a5 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = *a5;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v9 = " ";
  }

  else
  {
    v9 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v8, v9, v10);
  if (*a4 == a4[1])
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v23 = v26;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A1F95A4(a1, v22, v23);
  }

  else
  {
    sub_29A008E78(__p, "[");
    if ((v26 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = __p[1];
    }

    sub_29A1F95A4(a1, v11, v12);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = a4[1];
    *&v24 = *a4;
    *(&v24 + 1) = v15;
    while (v24 != *(&v24 + 1))
    {
      v16 = sub_29A1FB914(&v24, v13, v14);
      sub_29A1F8E20(v16);
      if ((v26 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s", v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v24;
      sub_29A1FB994(__p);
      if (__p[0] == __p[1])
      {
        sub_29A008E78(__p, "");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      else
      {
        sub_29A008E78(__p, ", ");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      sub_29A1F95A4(a1, v18, v19);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A1FB994(&v24);
    }

    sub_29A008E78(__p, "]\n");
    if ((v26 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = __p[1];
    }

    sub_29A1F95A4(a1, v20, v21);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FB8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FB914(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<int>>::operator*() [T = const std::vector<int>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FB994(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<int>>::operator++() [T = const std::vector<int>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

void sub_29A1FBA14(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *(a5 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = *a5;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v9 = " ";
  }

  else
  {
    v9 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v8, v9, v10);
  if (*a4 == a4[1])
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v23 = v26;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A1F95A4(a1, v22, v23);
  }

  else
  {
    sub_29A008E78(__p, "[");
    if ((v26 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = __p[1];
    }

    sub_29A1F95A4(a1, v11, v12);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = a4[1];
    *&v24 = *a4;
    *(&v24 + 1) = v15;
    while (v24 != *(&v24 + 1))
    {
      v16 = sub_29A1FBCA8(&v24, v13, v14);
      sub_29A1FBDA8(v16);
      if ((v26 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s", v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v24;
      sub_29A1FBD28(__p);
      if (__p[0] == __p[1])
      {
        sub_29A008E78(__p, "");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      else
      {
        sub_29A008E78(__p, ", ");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      sub_29A1F95A4(a1, v18, v19);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A1FBD28(&v24);
    }

    sub_29A008E78(__p, "]\n");
    if ((v26 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = __p[1];
    }

    sub_29A1F95A4(a1, v20, v21);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FBC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FBCA8(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<long long>>::operator*() [T = const std::vector<long long>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FBD28(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<long long>>::operator++() [T = const std::vector<long long>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t sub_29A1FBDA8(void *a1)
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
  MEMORY[0x29C2C1F30](&v7, *a1);
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

void sub_29A1FBFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void sub_29A1FBFC8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *(a5 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = *a5;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v9 = " ";
  }

  else
  {
    v9 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v8, v9, v10);
  if (*a4 == a4[1])
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v23 = v26;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A1F95A4(a1, v22, v23);
  }

  else
  {
    sub_29A008E78(__p, "[");
    if ((v26 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = __p[1];
    }

    sub_29A1F95A4(a1, v11, v12);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = a4[1];
    *&v24 = *a4;
    *(&v24 + 1) = v15;
    while (v24 != *(&v24 + 1))
    {
      v16 = sub_29A1FC25C(&v24, v13, v14);
      sub_29A1F9078(v16);
      if ((v26 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s", v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v24;
      sub_29A1FC2DC(__p);
      if (__p[0] == __p[1])
      {
        sub_29A008E78(__p, "");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      else
      {
        sub_29A008E78(__p, ", ");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      sub_29A1F95A4(a1, v18, v19);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A1FC2DC(&v24);
    }

    sub_29A008E78(__p, "]\n");
    if ((v26 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = __p[1];
    }

    sub_29A1F95A4(a1, v20, v21);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FC22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FC25C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<unsigned int>>::operator*() [T = const std::vector<unsigned int>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FC2DC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<unsigned int>>::operator++() [T = const std::vector<unsigned int>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

void sub_29A1FC35C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *(a5 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = *a5;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v9 = " ";
  }

  else
  {
    v9 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v8, v9, v10);
  if (*a4 == a4[1])
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v23 = v26;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A1F95A4(a1, v22, v23);
  }

  else
  {
    sub_29A008E78(__p, "[");
    if ((v26 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = __p[1];
    }

    sub_29A1F95A4(a1, v11, v12);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = a4[1];
    *&v24 = *a4;
    *(&v24 + 1) = v15;
    while (v24 != *(&v24 + 1))
    {
      v16 = sub_29A1FC5F0(&v24, v13, v14);
      sub_29A1FC6F0(v16);
      if ((v26 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s", v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v24;
      sub_29A1FC670(__p);
      if (__p[0] == __p[1])
      {
        sub_29A008E78(__p, "");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      else
      {
        sub_29A008E78(__p, ", ");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      sub_29A1F95A4(a1, v18, v19);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A1FC670(&v24);
    }

    sub_29A008E78(__p, "]\n");
    if ((v26 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = __p[1];
    }

    sub_29A1F95A4(a1, v20, v21);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FC5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FC5F0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<unsigned long long>>::operator*() [T = const std::vector<unsigned long long>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FC670(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<unsigned long long>>::operator++() [T = const std::vector<unsigned long long>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t sub_29A1FC6F0(void *a1)
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
  MEMORY[0x29C2C1F40](&v7, *a1);
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

void sub_29A1FC8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void sub_29A1FC910(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *(a5 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = *a5;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v9 = " ";
  }

  else
  {
    v9 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v8, v9, v10);
  if (*a4 == a4[1])
  {
    sub_29A008E78(__p, "None\n");
    if ((v25 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v22 = v25;
    }

    else
    {
      v22 = __p[1];
    }

    sub_29A1F95A4(a1, v21, v22);
  }

  else
  {
    sub_29A008E78(__p, "[");
    if ((v25 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v12 = v25;
    }

    else
    {
      v12 = __p[1];
    }

    sub_29A1F95A4(a1, v11, v12);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = a4[1];
    *&v23 = *a4;
    *(&v23 + 1) = v15;
    while (v23 != *(&v23 + 1))
    {
      v16 = sub_29A17EFC8(&v23, v13, v14);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a1, 0, v16);
      *__p = v23;
      sub_29A17F188(__p);
      if (__p[0] == __p[1])
      {
        sub_29A008E78(__p, "");
        if ((v25 & 0x80u) == 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v18 = v25;
        }

        else
        {
          v18 = __p[1];
        }
      }

      else
      {
        sub_29A008E78(__p, ", ");
        if ((v25 & 0x80u) == 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v18 = v25;
        }

        else
        {
          v18 = __p[1];
        }
      }

      sub_29A1F95A4(a1, v17, v18);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A17F188(&v23);
    }

    sub_29A008E78(__p, "]\n");
    if ((v25 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v20 = v25;
    }

    else
    {
      v20 = __p[1];
    }

    sub_29A1F95A4(a1, v19, v20);
  }

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FCB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1FCB64(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *(a5 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = *a5;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v9 = " ";
  }

  else
  {
    v9 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v8, v9, v10);
  if (*a4 == a4[1])
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v23 = v26;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A1F95A4(a1, v22, v23);
  }

  else
  {
    sub_29A008E78(__p, "[");
    if ((v26 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = __p[1];
    }

    sub_29A1F95A4(a1, v11, v12);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = a4[1];
    *&v24 = *a4;
    *(&v24 + 1) = v15;
    while (v24 != *(&v24 + 1))
    {
      v16 = sub_29A1FCDD0(&v24, v13, v14);
      if ((*v16 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v16 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a1, 0, EmptyString);
      *__p = v24;
      sub_29A1FCE50(__p);
      if (__p[0] == __p[1])
      {
        sub_29A008E78(__p, "");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      else
      {
        sub_29A008E78(__p, ", ");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      sub_29A1F95A4(a1, v18, v19);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A1FCE50(&v24);
    }

    sub_29A008E78(__p, "]\n");
    if ((v26 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = __p[1];
    }

    sub_29A1F95A4(a1, v20, v21);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FCDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FCDD0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FCE50(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void sub_29A1FCED0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *(a5 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = *a5;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v9 = " ";
  }

  else
  {
    v9 = "";
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s = ", v8, v9, v10);
  if (*a4 == a4[1])
  {
    sub_29A008E78(__p, "None\n");
    if ((v26 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v23 = v26;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A1F95A4(a1, v22, v23);
  }

  else
  {
    sub_29A008E78(__p, "[");
    if ((v26 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = __p[1];
    }

    sub_29A1F95A4(a1, v11, v12);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = a4[1];
    *&v24 = *a4;
    *(&v24 + 1) = v15;
    while (v24 != *(&v24 + 1))
    {
      v16 = sub_29A1FD164(&v24, v13, v14);
      sub_29A1FD264(v16);
      if ((v26 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s", v17);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v24;
      sub_29A1FD1E4(__p);
      if (__p[0] == __p[1])
      {
        sub_29A008E78(__p, "");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      else
      {
        sub_29A008E78(__p, ", ");
        if ((v26 & 0x80u) == 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v19 = v26;
        }

        else
        {
          v19 = __p[1];
        }
      }

      sub_29A1F95A4(a1, v18, v19);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A1FD1E4(&v24);
    }

    sub_29A008E78(__p, "]\n");
    if ((v26 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = __p[1];
    }

    sub_29A1F95A4(a1, v20, v21);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1FD134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FD164(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1FD1E4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t sub_29A1FD264(uint64_t a1)
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

void sub_29A1FD460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1FD484(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4846EALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20473B0);
}

void sub_29A1FD510(pxrInternal__aapl__pxrReserved__::SdfPathExpression *a1@<X0>, std::string *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::GetText(&__p, a1);
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Quote(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1FD55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1FD578(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484722 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20473C0);
}

double pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Sdf_LayerRegistry(pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry *this)
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
  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_Layers::Update(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_29A1FDA88(a3, v50);
  sub_29A1FDA88(a4, v44);
  if ((v55 & 0x80u) == 0)
  {
    v7 = v55;
  }

  else
  {
    v7 = v54[1];
  }

  v8 = v49;
  if ((v49 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 != v8 || ((v55 & 0x80u) == 0 ? (v9 = v54) : (v9 = v54[0]), (v49 & 0x80u) == 0 ? (v10 = __p) : (v10 = __p[0]), memcmp(v9, v10, v7)))
  {
    if (sub_29A1FDC90(v54, a2, a1) && sub_29A1D9440(3))
    {
      if ((v55 & 0x80u) == 0)
      {
        v13 = v54;
      }

      else
      {
        v13 = v54[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Removed realPath '%s' for update.\n", v11, v12, v13);
    }

    v14 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v14)
    {
      sub_29A1FF6D0(a1, __p, __p, a2);
      if (v15)
      {
        if (sub_29A1D9440(3))
        {
          if ((v49 & 0x80u) == 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Updated realPath '%s'.\n", v16, v17, v18);
        }
      }

      else
      {
        MEMORY[0x29C2C1A60](v46, "");
        MEMORY[0x29C2C1A60](v44, "");
        if (sub_29A1D9440(3))
        {
          if ((v49 & 0x80u) == 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Updated realPath '%s' would create collision. Dangling layer created instead.\n", v19, v20, v21);
        }
      }
    }
  }

  if ((v53 & 0x80u) == 0)
  {
    v22 = v53;
  }

  else
  {
    v22 = v52[1];
  }

  v23 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v23 = v46[1];
  }

  if (v22 != v23 || ((v53 & 0x80u) == 0 ? (v24 = v52) : (v24 = v52[0]), (v47 & 0x80u) == 0 ? (v25 = v46) : (v25 = v46[0]), memcmp(v24, v25, v22)))
  {
    if (sub_29A1FDD28(v52, a2, a1 + 10) && sub_29A1D9440(3))
    {
      if ((v53 & 0x80u) == 0)
      {
        v28 = v52;
      }

      else
      {
        v28 = v52[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Removed repositoryPath '%s' for update.\n", v26, v27, v28);
    }

    v29 = v47;
    if ((v47 & 0x80u) != 0)
    {
      v29 = v46[1];
    }

    if (v29)
    {
      sub_29A1FF9E8(a1 + 10, v46, a2);
      if (sub_29A1D9440(3))
      {
        if ((v47 & 0x80u) == 0)
        {
          v32 = v46;
        }

        else
        {
          v32 = v46[0];
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Updated repositoryPath '%s'.\n", v30, v31, v32);
      }
    }
  }

  if ((v51 & 0x80u) == 0)
  {
    v33 = v51;
  }

  else
  {
    v33 = v50[1];
  }

  v34 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v34 = v44[1];
  }

  if (v33 != v34 || ((v51 & 0x80u) == 0 ? (v35 = v50) : (v35 = v50[0]), (v45 & 0x80u) == 0 ? (v36 = v44) : (v36 = v44[0]), memcmp(v35, v36, v33)))
  {
    if (sub_29A1FDD28(v50, a2, a1 + 5) && sub_29A1D9440(3))
    {
      v39 = v50;
      if ((v51 & 0x80u) != 0)
      {
        v39 = v50[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Removed identifier '%s' for update.\n", v37, v38, v39);
    }

    v40 = v45;
    if ((v45 & 0x80u) != 0)
    {
      v40 = v44[1];
    }

    if (v40)
    {
      sub_29A1FF9E8(a1 + 5, v44, a2);
      if (sub_29A1D9440(3))
      {
        v43 = v44;
        if ((v45 & 0x80u) != 0)
        {
          v43 = v44[0];
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Updated identifier '%s'.\n", v41, v42, v43);
      }
    }
  }

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }
}

void sub_29A1FDA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29A098B54(va);
  sub_29A098B54(va1);
  _Unwind_Resume(a1);
}

void sub_29A1FDA88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a1, v15, __p) & 1) == 0)
  {
    v8 = "sdf/layerRegistry.cpp";
    v9 = "_AssetInfoToAliases";
    v10 = 52;
    v11 = "Sdf_RegistryAliases pxrInternal__aapl__pxrReserved__::_AssetInfoToAliases(const Sdf_AssetInfo &)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v8, "Sdf_SplitIdentifier( assetInfo.identifier, &identifierSansArguments, &arguments)", 0);
  }

  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    if ((v5 & 0x80) == 0)
    {
LABEL_7:
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = "sdf/layerRegistry.cpp";
    v9 = "_AssetInfoToAliases";
    v10 = 55;
    v11 = "Sdf_RegistryAliases pxrInternal__aapl__pxrReserved__::_AssetInfoToAliases(const Sdf_AssetInfo &)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v8, "!assetInfo.identifier.empty()", 0);
    if ((*(a1 + 23) & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_29A008D14(a2, *a1, *(a1 + 8));
LABEL_10:
  v6 = *(a1 + 143);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 128);
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier((a1 + 120), __p, a2 + 24);
  }

  else
  {
    sub_29A008E78((a2 + 24), "");
  }

  v7 = *(a1 + 47);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier((a1 + 24), __p, a2 + 48);
  }

  else
  {
    sub_29A008E78((a2 + 48), "");
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_29A1FDC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 17) < 0)
  {
    operator delete(*(v20 - 40));
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29A1FDC90(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  result = sub_29A0FC520(a3, a1);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return result;
}

uint64_t sub_29A1FDD28(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v3 = sub_29A1FF668(a3, a1);
  if (v3 != v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_Layers::Insert(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_29A1FDA88(a3, &v25);
  v7 = sub_29A0FC520(a1, &v29);
  if (v7)
  {
    v22 = 0;
    v21 = v7[6];
    *a4 = v7[5];
    a4[1] = v21;
    if (!v21)
    {
      goto LABEL_31;
    }

LABEL_30:
    atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
    goto LABEL_31;
  }

  v8 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v8 = *(&v29 + 1);
  }

  if (v8)
  {
    sub_29A1FF6D0(a1, &v29, &v29, a2);
    if ((v9 & 1) == 0)
    {
      v23[0] = "sdf/layerRegistry.cpp";
      v23[1] = "Insert";
      v23[2] = 178;
      v23[3] = "std::pair<SdfLayerHandle, BOOL> pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_Layers::Insert(const SdfLayerHandle &, const Sdf_AssetInfo &)";
      v24 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v23, "_byRealPath.emplace(aliases.realPath, layer).second", 0);
    }

    if (sub_29A1D9440(3))
    {
      if ((v30 & 0x80u) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Inserted realPath '%s' into registry\n", v10, v11, v12);
    }
  }

  v13 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v13 = *(&v27 + 1);
  }

  if (v13)
  {
    sub_29A1FF9E8(a1 + 10, &v27, a2);
    if (sub_29A1D9440(3))
    {
      if ((v28 & 0x80u) == 0)
      {
        v16 = &v27;
      }

      else
      {
        v16 = v27;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Inserted repositoryPath '%s' into registry\n", v14, v15, v16);
    }
  }

  v17 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v17 = *(&v25 + 1);
  }

  if (v17)
  {
    sub_29A1FF9E8(a1 + 5, &v25, a2);
    if (sub_29A1D9440(3))
    {
      v20 = &v25;
      if ((v26 & 0x80u) != 0)
      {
        v20 = v25;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Inserted identifier '%s' into registry\n", v18, v19, v20);
    }
  }

  v21 = a2[1];
  *a4 = *a2;
  a4[1] = v21;
  v22 = 1;
  if (v21)
  {
    goto LABEL_30;
  }

LABEL_31:
  sub_29B29415C(&v29, &v25, a4, v22);
}

void sub_29A1FDFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A098B54(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_Layers::Erase(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29A1FDA88(a3, v16);
  v5 = sub_29A1FDC90(__p, a2, a1);
  if (v5 && sub_29A1D9440(3))
  {
    if (v21 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Erased realPath '%s' from registry.\n", v6, v7, v8);
  }

  if (sub_29A1FDD28(v18, a2, a1 + 10))
  {
    if (sub_29A1D9440(3))
    {
      if (v19 >= 0)
      {
        v11 = v18;
      }

      else
      {
        v11 = v18[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Erased repositoryPath '%s' from registry.\n", v9, v10, v11);
    }

    v5 = 1;
  }

  if (sub_29A1FDD28(v16, a2, a1 + 5))
  {
    if (sub_29A1D9440(3))
    {
      if (v19 >= 0)
      {
        v14 = v18;
      }

      else
      {
        v14 = v18[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Erased identifier '%s' from registry.\n", v12, v13, v14);
    }

    v5 = 1;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return v5;
}

void sub_29A1FE130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A098B54(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Insert(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29B293A0C(a2);
  if (v7 & 1 | v6)
  {
    if (sub_29A1D9440(3))
    {
      sub_29A1FE404(a2, &v13);
      v10 = v15 >= 0 ? &v13 : v13;
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::Insert(%s)\n", v8, v9, v10);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v13);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_Layers::Insert(a1, a2, a3, v11);
    if ((v12 & 1) == 0)
    {
      v13 = "sdf/layerRegistry.cpp";
      v14 = "Insert";
      v15 = 256;
      v16 = "void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Insert(const SdfLayerHandle &, const Sdf_AssetInfo &)";
      v17 = 0;
      sub_29A1DA6E4(a2);
    }

    sub_29B293818(v11);
  }

  else
  {
    v13 = "sdf/layerRegistry.cpp";
    v14 = "Insert";
    v15 = 237;
    v16 = "void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Insert(const SdfLayerHandle &, const Sdf_AssetInfo &)";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 1, "Expired layer handle");
  }
}

void sub_29A1FE368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, atomic_uint *a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a26)
  {
    if (atomic_fetch_add_explicit(a26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a26 + 8))(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1FE404@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29B293A0C(a1);
  if (v5 & 1 | v4)
  {
    sub_29A1DA6E4(a1);
  }

  return sub_29A008E78(a2, "None");
}

void sub_29A1FE550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Update(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29B293A0C(a2);
  if (v9 & 1 | v8)
  {
    if (sub_29A1D9440(3))
    {
      sub_29A1FE404(a2, __p);
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::Update(%s)\n", v10, v11, v12);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_Layers::Update(a1, a2, a3, a4);
  }

  else
  {
    __p[0] = "sdf/layerRegistry.cpp";
    __p[1] = "Update";
    v14 = 269;
    v15 = "void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Update(const SdfLayerHandle &, const Sdf_AssetInfo &, const Sdf_AssetInfo &)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Expired layer handle");
  }
}

void sub_29A1FE694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Erase(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_Layers::Erase(a1, a2, a3);
  if (sub_29A1D9440(3))
  {
    sub_29A1FE404(a2, __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = "Failed";
    if (v4)
    {
      v8 = "Success";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::Erase(%s) => %s\n", v5, v6, v7, v8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1FE74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Find(void *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  IsAnonLayerIdentifier = pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(a2);
  if (IsAnonLayerIdentifier)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_FindByIdentifier(a1, a2, v28);
    v9 = a4[1];
    *a4 = *v28;
    v28[1] = 0;
    if (v9)
    {
      sub_29B2941B0(v9);
    }
  }

  else
  {
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(IsAnonLayerIdentifier);
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a2, v28, __p);
    if ((pxrInternal__aapl__pxrReserved__::ArResolver::IsContextDependentPath(Resolver) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_FindByIdentifier(a1, a2, &v25);
      v11 = a4[1];
      *a4 = v25;
      *(&v25 + 1) = 0;
      if (v11)
      {
        sub_29B2941B0(v11);
      }
    }

    IsRepositoryPath = pxrInternal__aapl__pxrReserved__::ArResolver::IsRepositoryPath(Resolver);
    v13 = sub_29B293A0C(a4);
    if ((((v14 & 1 | v13) == 0) & IsRepositoryPath) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_FindByRepositoryPath(a1, a2, &v25);
      v15 = a4[1];
      *a4 = v25;
      *(&v25 + 1) = 0;
      if (v15)
      {
        sub_29B2941B0(v15);
      }
    }

    v16 = sub_29B293A0C(a4);
    if (!(v17 & 1 | v16))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_FindByRealPath(a2, a1, a3, &v25);
      v18 = a4[1];
      *a4 = v25;
      *(&v25 + 1) = 0;
      if (v18)
      {
        sub_29B2941B0(v18);
      }
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }
  }

  if (sub_29A1D9440(3))
  {
    v19 = *(a2 + 23);
    v20 = *a2;
    sub_29A1FE404(a4, v28);
    if (v19 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = v20;
    }

    if (v29 >= 0)
    {
      v24 = v28;
    }

    else
    {
      v24 = v28[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::Find('%s') => %s\n", v21, v22, v23, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }
  }
}

void sub_29A1FE990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    if (atomic_fetch_add_explicit(v27 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v27 + 8))(v27);
    }
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_FindByIdentifier(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = sub_29A0EC378((a1 + 40), a2);
  if (v5)
  {
    *a3 = v5[5];
    sub_29B28FD1C((a3 + 8), v5 + 6);
  }

  if (sub_29A1D9440(3))
  {
    v6 = a2[23];
    v7 = *a2;
    v8 = sub_29B293A0C(a3);
    if (v6 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = v7;
    }

    if (v9 & 1 | v8)
    {
      v12 = "Found";
    }

    else
    {
      v12 = "Not Found";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::_FindByIdentifier('%s') => %s\n", v9, v10, v11, v12);
  }
}

void sub_29A1FEAD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_FindByRepositoryPath(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v4)
  {
    v6 = sub_29A0EC378((a1 + 80), a2);
    if (v6)
    {
      *a3 = v6[5];
      sub_29B28FD1C((a3 + 8), v6 + 6);
    }

    if (sub_29A1D9440(3))
    {
      v7 = a2[23];
      v8 = *a2;
      v9 = sub_29B293A0C(a3);
      if (v7 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = v8;
      }

      if (v10 & 1 | v9)
      {
        v13 = "Found";
      }

      else
      {
        v13 = "Not Found";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::_FindByRepositoryPath('%s') => %s\n", v10, v11, v12, v13);
    }
  }
}

void sub_29A1FEBF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::_FindByRealPath(std::string *__str@<X1>, void *a2@<X0>, void **a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(&v38, 0, sizeof(v38));
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    if (pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(__str, &v38, v36))
    {
      pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v35);
      if (*(a3 + 23) >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      if (!v9)
      {
        a3 = __p;
        pxrInternal__aapl__pxrReserved__::Sdf_ComputeFilePath(&v38, __p);
      }

      std::string::operator=(&v38, a3);
      if (!v9 && v34 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
      if (!v10)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
      }

      v11 = v35;
      v12 = atomic_load((v10 + 144));
      if (v11 < v12 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v35, v10))
      {
        memset(&v32, 0, sizeof(v32));
        v13 = sub_29A0FE7E0(&v35, 0);
        if (v13 != sub_29A11477C())
        {
          sub_29A070BA0(&v32);
        }

        if (sub_29A1D9440(3))
        {
          v14 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
          v15 = __str->__r_.__value_.__r.__words[0];
          pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v32, &v31);
          v18 = v14 >= 0 ? __str : v15;
          v19 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::_FindByRealPath('%s'): Failed to compute real path: %s\n", v16, v17, v18, v19);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }
        }

        v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
        if (!v20)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
        }

        v21 = sub_29A0FE7E0(&v35, 0);
        v39 = 0;
        v22 = sub_29A0ED084(v20 + 19, &v39);
        if (v22 != v21)
        {
          pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v20, v21, v22);
        }

        v31.__r_.__value_.__r.__words[0] = &v32;
        sub_29A012C90(&v31);
      }

      pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v35);
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v38.__r_.__value_.__l.__data_, v36, &v32);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      v38 = v32;
      v23 = sub_29A0EC378(a2, &v38);
      if (v23)
      {
        *a4 = v23[5];
        sub_29B28FD1C((a4 + 8), v23 + 6);
      }

      if (sub_29A1D9440(3))
      {
        v24 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
        v25 = v38.__r_.__value_.__r.__words[0];
        v26 = sub_29B293A0C(a4);
        v29 = &v38;
        if (v24 < 0)
        {
          v29 = v25;
        }

        if (v27 & 1 | v26)
        {
          v30 = "Found";
        }

        else
        {
          v30 = "Not Found";
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Sdf_LayerRegistry::_FindByRealPath('%s') => %s\n", v27, v28, v29, v30);
      }
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A1FEF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __p = &a18;
  sub_29A012C90(&__p);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a27);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  v36 = *(v33 + 8);
  if (v36)
  {
    if (atomic_fetch_add_explicit(v36 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v36 + 8))(v36);
    }
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::GetLayers@<X0>(void *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  for (i = this[7]; i; i = *i)
  {
    v3 = i[6];
    v10 = i[5];
    v11 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    }

    v4 = sub_29B293A0C(&v10);
    if (v5 & 1 | v4 || (v8[0] = "sdf/layerRegistry.cpp", v8[1] = "GetLayers", v8[2] = 450, v8[3] = "SdfLayerHandleSet pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::GetLayers() const", v9 = 0, v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Found expired layer in registry", v5, v6), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "layer", v7) & 1) != 0))
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
    }

    this = v11;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        this = (*(*this + 8))(this);
      }
    }
  }

  return this;
}

void sub_29A1FF164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a16)
  {
    if (atomic_fetch_add_explicit(a16 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a16 + 8))(a16);
    }
  }

  sub_29A1FFFD0(v16, *(v16 + 8));
  _Unwind_Resume(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> pxrInternal__aapl__pxrReserved__::operator<<(int a1, pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::GetLayers(this, &v12);
  v10 = v12;
  v11 = &v13;
  while (v10 != v11)
  {
    v4 = sub_29A1FF4DC(&v10, v2, v3);
    v5 = v4[1];
    v8 = *v4;
    v9 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    v6 = sub_29B293A0C(&v8);
    if (v7 & 1 | v6)
    {
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
    }

    sub_29B28FEF8(&v9);
    sub_29A1FF560(&v10);
  }

  sub_29A1FFFD0(&v12, v13);
}

uint64_t sub_29A1FF4DC(void *a1, uint64_t a2, char *a3)
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
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator*() [T = std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 32;
}

void *sub_29A1FF560(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator++() [T = std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
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

uint64_t sub_29A1FF608(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B290C80(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

const void **sub_29A1FF668(void *a1, unsigned __int8 *a2)
{
  v4 = sub_29A0FC520(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      v6 = *v6;
    }

    while (v6 && sub_29A0EC4B8(a1, v6 + 2, a2));
  }

  return v5;
}

const void **sub_29A1FF6D0(uint64_t a1, unsigned __int8 *a2, __int128 *a3, void *a4)
{
  v7 = a2;
  v29 = 0;
  v30 = 0;
  v9 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v10 = a2[23];
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v29, a2, v10);
  v11 = bswap64(0x9E3779B97F4A7C55 * v29);
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v4 = v11;
      if (v11 >= v12)
      {
        v4 = v11 % v12;
      }
    }

    else
    {
      v4 = (v12 - 1) & v11;
    }

    v15 = *(*a1 + 8 * v4);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v11)
        {
          if (sub_29A0EC4B8(a1, i + 2, v7))
          {
            return i;
          }
        }

        else
        {
          if (v14 > 1)
          {
            if (v17 >= v12)
            {
              v17 %= v12;
            }
          }

          else
          {
            v17 &= v12 - 1;
          }

          if (v17 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A1FF968(a1, v11, a3, a4, &v29);
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v12 || (v19 * v12) < v18)
  {
    v20 = 1;
    if (v12 >= 3)
    {
      v20 = (v12 & (v12 - 1)) != 0;
    }

    v21 = v20 | (2 * v12);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v4 = v11 % v12;
      }

      else
      {
        v4 = v11;
      }
    }

    else
    {
      v4 = (v12 - 1) & v11;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    i = v29;
    *v29 = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29;
    *v29 = *(a1 + 16);
    *(a1 + 16) = v26;
    *(v24 + 8 * v4) = a1 + 16;
    i = v29;
    if (*v29)
    {
      v27 = *(*v29 + 1);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v27 >= v12)
        {
          v27 %= v12;
        }
      }

      else
      {
        v27 &= v12 - 1;
      }

      *(*a1 + 8 * v27) = v29;
      i = v29;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A1FF950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A181A20(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A1FF968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x38uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B2940F0(v10 + 2, a3, a4);
  *(a5 + 16) = 1;
  return result;
}

void sub_29A1FFA24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A181A20(va, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_29A1FFA3C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = sub_29B2940F0(v8 + 2, a2, a3);
  *(a4 + 16) = 1;
  v14 = 0;
  v15 = 0;
  v10 = v8[39];
  if (v10 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v8 + 2);
  }

  if (v10 >= 0)
  {
    v12 = v8[39];
  }

  else
  {
    v12 = *(v8 + 3);
  }

  result = pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v14, v11, v12);
  *(v8 + 1) = bswap64(0x9E3779B97F4A7C55 * v14);
  return result;
}

uint64_t sub_29A1FFB10(void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v4 = *(a2 + 39);
  v5 = (a2 + 16);
  v6 = *(a2 + 24);
  if (v4 >= 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v4 >= 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v12, v7, v8);
  v9 = bswap64(0x9E3779B97F4A7C55 * v12);
  *(a2 + 8) = v9;
  v10 = sub_29A1FFBB4(a1, v9, v5);
  sub_29A0FF16C(a1, a2, v10);
  return a2;
}

const void **sub_29A1FFBB4(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_29A1FFD2C(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && sub_29A0EC4B8(a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void sub_29A1FFD2C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_29A1FFE1C(a1, prime);
    }
  }
}

void sub_29A1FFE1C(void **a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 61)
    {
      sub_29A00C8B8();
    }

    v4 = operator new(8 * a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = 0;
    a1[1] = a2;
    do
    {
      *(*a1 + v6++) = 0;
    }

    while (a2 != v6);
    v7 = a1[2];
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + v8) = a1 + 2;
      for (i = *v7; *v7; i = *v7)
      {
        v13 = i[1];
        if (v10 > 1)
        {
          if (v13 >= a2)
          {
            v13 %= a2;
          }
        }

        else
        {
          v13 &= a2 - 1;
        }

        if (v13 == v8)
        {
          v7 = i;
        }

        else
        {
          v14 = *a1;
          if (*(*a1 + v13))
          {
            v15 = *i;
            if (*i)
            {
              v16 = i;
              while (1)
              {
                v17 = sub_29A0EC4B8(a1, i + 2, v15 + 2);
                v18 = *v16;
                if (!v17)
                {
                  break;
                }

                v15 = *v18;
                v16 = *v16;
                if (!*v18)
                {
                  goto LABEL_31;
                }
              }

              v15 = *v16;
              v18 = v16;
LABEL_31:
              v14 = *a1;
            }

            else
            {
              v18 = i;
            }

            *v7 = v15;
            *v18 = *v14[v13];
            *v14[v13] = i;
          }

          else
          {
            v14[v13] = v7;
            v7 = i;
            v8 = v13;
          }
        }
      }
    }
  }

  else
  {
    v11 = *a1;
    *a1 = 0;
    if (v11)
    {
      operator delete(v11);
    }

    a1[1] = 0;
  }
}

void sub_29A1FFFD0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B294234(a2, a1);
  }
}

uint64_t sub_29A200000()
{
  result = *v1;
  *v0 = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::GetValueFactoryForMenvaName(const void **a1, _BYTE *a2)
{
  v4 = atomic_load(&qword_2A173F6A8);
  if (!v4)
  {
    v4 = sub_29A200994();
  }

  v5 = sub_29A01BCCC(v4, a1);
  v6 = atomic_load(&qword_2A173F6A8);
  if (!v6)
  {
    v6 = sub_29A200994();
  }

  if (v6 + 8 == v5)
  {
    if ((atomic_load_explicit(&qword_2A173F6B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F6B8))
    {
      v8 = atomic_load(&qword_2A173F6A8);
      if (!v8)
      {
        v8 = sub_29A200994();
      }

      sub_29A008E78(__p, "None");
      v12 = __p;
      v9 = sub_29A200774(v8, __p, &unk_29B4D6118, &v12) + 56;
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      qword_2A173F6B0 = v9;
      __cxa_guard_release(&qword_2A173F6B8);
    }

    *a2 = 0;
    return qword_2A173F6B0;
  }

  else
  {
    *a2 = 1;
    return v5 + 56;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_BoolFromString(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(__s1, *a1, *(a1 + 8));
  }

  else
  {
    *__s1 = *a1;
    v13 = *(a1 + 16);
  }

  v3 = HIBYTE(v13);
  if (v13 >= 0)
  {
    v4 = __s1 + HIBYTE(v13);
  }

  else
  {
    v4 = &__s1[0][__s1[1]];
  }

  if (v13 >= 0)
  {
    v5 = __s1;
  }

  else
  {
    v5 = __s1[0];
  }

  if (v5 != v4)
  {
    do
    {
      *v5 = __tolower(*v5);
      v5 = (v5 + 1);
    }

    while (v5 != v4);
    v3 = HIBYTE(v13);
  }

  if (v3 < 0)
  {
    v8 = __s1[0];
    if (strcmp(__s1[0], "false"))
    {
      if (!strcmp(v8, "true"))
      {
        goto LABEL_38;
      }

      v7 = *v8;
      if (v7 != 110)
      {
        if (strcmp(v8, "yes"))
        {
          if (v7 == 48)
          {
            v10 = 0;
            v9 = 0;
            if (!*(v8 + 1))
            {
              goto LABEL_48;
            }

            goto LABEL_42;
          }

LABEL_39:
          if (v7 == 49)
          {
            v10 = *(v8 + 1) == 0;
            goto LABEL_42;
          }

LABEL_41:
          v10 = 0;
LABEL_42:
          if (a2 && !v10)
          {
            *a2 = 0;
          }

          if ((v3 & 0x80) == 0)
          {
            return 1;
          }

          v9 = 1;
          v8 = __s1[0];
LABEL_48:
          operator delete(v8);
          return v9;
        }

LABEL_38:
        v9 = 1;
        goto LABEL_48;
      }

      if (*(v8 + 1) != 111 || *(v8 + 2))
      {
        if (strcmp(v8, "yes"))
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }
    }

    v9 = 0;
    goto LABEL_48;
  }

  if (LODWORD(__s1[0]) == 1936482662 && WORD2(__s1[0]) == 101)
  {
    return 0;
  }

  if (!(LODWORD(__s1[0]) ^ 0x65757274 | BYTE4(__s1[0])))
  {
    return 1;
  }

  if (!(LOWORD(__s1[0]) ^ 0x6F6E | BYTE2(__s1[0])))
  {
    return 0;
  }

  if (LODWORD(__s1[0]) == 7562617)
  {
    return 1;
  }

  if (LOWORD(__s1[0]) != 48)
  {
    v7 = LOBYTE(__s1[0]);
    v8 = __s1;
    goto LABEL_39;
  }

  return 0;
}