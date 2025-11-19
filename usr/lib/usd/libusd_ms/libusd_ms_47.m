void sub_29A263770(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x60uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485100;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::plus<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Digit>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A263844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A2638A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (!sub_29A26391C(a1, a2) || (sub_29A26367C(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 8) = v4;
    *(a1 + 24) = v5;
  }

  return result;
}

void sub_29A26390C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26391C(void *a1, uint64_t a2)
{
  v3 = sub_29A2635D8(a1, a2);
  if (v3 && (sub_29A2634A8(a1) & 1) == 0)
  {
    sub_29A263770(a1);
  }

  return v3;
}

__n128 sub_29A263974(uint64_t a1)
{
  if (sub_29A2639C8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A2639C8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28265 || *(v1 + 2) != 102)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

__n128 sub_29A263A34(uint64_t a1)
{
  if (sub_29A263A88(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A263A88(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 24942 || *(v1 + 2) != 110)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A263AF4(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A261D20(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A237570(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A263B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A263B7C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A260ECC(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A2376E8(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A263BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A263C04(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if ((sub_29A263C90(a1) & 1) != 0 || sub_29A263FE8(a1))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1;
    sub_29A237EC0(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A263C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A263C90(void *a1)
{
  v2 = sub_29A263CE8(a1);
  if (v2 && (sub_29A263D54(a1) & 1) == 0)
  {
    sub_29A263EC8(a1);
  }

  return v2;
}

uint64_t sub_29A263CE8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 16448 || *(v1 + 2) != 64)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A263D54(uint64_t a1)
{
  sub_29A263DB4(a1);
  if (v2)
  {
    return 1;
  }

  while (1)
  {
    sub_29A263E44(a1);
    if ((v3 & 1) == 0)
    {
      result = sub_29A2613D4(a1);
      if (!result)
      {
        break;
      }
    }

    sub_29A263DB4(a1);
    if (v5)
    {
      return 1;
    }
  }

  return result;
}

__n128 sub_29A263DB4(uint64_t a1)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if (sub_29A263CE8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 40);
    v5 = *(a1 + 32) + 1;
    v6 = *(a1 + 16) + 1;
    v7 = 2;
    do
    {
      if (v3 == v4)
      {
        break;
      }

      if (*v3 != 64)
      {
        break;
      }

      *(a1 + 8) = ++v3;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5++;
      ++v6;
      --v7;
    }

    while (v7);
  }

  else
  {
    result = v8;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

__n128 sub_29A263E44(uint64_t a1)
{
  v1 = (a1 + 8);
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v4.n128_u64[0] == *(a1 + 40) || *v4.n128_u64[0] != 92 || (v2 = *(a1 + 16) + 1, *(a1 + 8) = v4.n128_u64[0] + 1, *(a1 + 16) = v2, ++*(a1 + 32), (sub_29A263CE8(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A263EC8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x190uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485160;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::AtAtAt, PXR_INTERNAL_NS_pegtl::rep_opt<2, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::At>>, PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::EscapeAtAtAt, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A263F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A263FE8(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 64)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v3;
  ++a1[4];
  if ((sub_29A264064(a1) & 1) == 0)
  {
    sub_29A2640DC(a1);
  }

  return 1;
}

uint64_t sub_29A264064(void *a1)
{
  while (1)
  {
    v2 = a1[1];
    if (v2 != a1[5] && *v2 == 64)
    {
      break;
    }

    if ((sub_29A2613D4(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v4;
  ++a1[4];
  return 1;
}

void sub_29A2640DC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xA8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485170;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::At, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2641C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A264224(uint64_t a1, const char *a2, char *a3)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v5 = sub_29A2642B8(a1, a2, a3);
  if (v5)
  {
    sub_29A264340(a1, a2);
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A238858(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2642A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2642B8(uint64_t a1, const char *a2, char *a3)
{
  v5 = *(a1 + 8);
  if (v5 == *(a1 + 40) || *v5 != 40)
  {
    return 0;
  }

  v3 = *(a1 + 16) + 1;
  *(a1 + 8) = v5 + 1;
  *(a1 + 16) = v3;
  ++*(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::BeginTuple((a2 + 624), a2, a3);
  return 1;
}

void sub_29A264334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A264340(void *a1, const char *a2)
{
  if ((sub_29A264398(a1, a2) & 1) == 0)
  {
    sub_29A264858(a1);
  }

  if ((sub_29A2644D0(a1, a2, v4) & 1) == 0)
  {
    sub_29A264558(a1);
  }

  return 1;
}

uint64_t sub_29A264398(void *a1, const char *a2)
{
    ;
  }

  v4 = sub_29A2643FC(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A2643FC(uint64_t a1, const char *a2)
{
  v4 = sub_29A264454(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A264684(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

uint64_t sub_29A264454(uint64_t a1, const char *a2)
{
  sub_29A2632B0(a1, a2);
  if ((v4 & 1) == 0 && (sub_29A263AF4(a1, a2) & 1) == 0 && (sub_29A263B7C(a1, a2) & 1) == 0)
  {
    sub_29A263C04(a1, a2);
    if ((v6 & 1) == 0)
    {
      result = sub_29A2642B8(a1, a2, v5);
      if (!result)
      {
        return result;
      }

      sub_29A264340(a1, a2);
    }
  }

  return 1;
}

uint64_t sub_29A2644D0(uint64_t a1, const char *a2, char *a3)
{
  v5 = *(a1 + 8);
  if (v5 == *(a1 + 40) || *v5 != 41)
  {
    return 0;
  }

  v3 = *(a1 + 16) + 1;
  *(a1 + 8) = v5 + 1;
  *(a1 + 16) = v3;
  ++*(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::EndTuple((a2 + 624), a2, a3);
  return 1;
}

void sub_29A26454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A264558(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485180;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TupleValueClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A264624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A264684(uint64_t a1, const char *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A264454(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A2646EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2646FC(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 44)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
    ;
  }

  return 1;
}

__n128 sub_29A264790(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 40) || *v2 != 44)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  else
  {
    v3 = *(a1 + 16) + 1;
    *(a1 + 8) = v2 + 1;
    *(a1 + 16) = v3;
    ++*(a1 + 32);
      ;
    }
  }

  return result;
}

void sub_29A264844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A264858(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x100uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485190;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TupleValueItem>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A264954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A2649B4(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A264A3C(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A238AB8(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A264A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A264A3C(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  if (*v1 != 91)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v3;
  ++a1[4];
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v4 = a1[1];
  if (v4 == a1[5] || *v4 != 93)
  {
    return 0;
  }

  v5 = a1[2] + 1;
  a1[1] = v4 + 1;
  a1[2] = v5;
  ++a1[4];
  return 1;
}

uint64_t sub_29A264B04(uint64_t a1, char *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A264B98(a1, a2);
  if (v4)
  {
    sub_29A264C20(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A2392D8(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A264B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A264B98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 40) || *v4 != 91)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::BeginList((a2 + 624));
  return 1;
}

void sub_29A264C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A264C20(void *a1, const char *a2)
{
  if ((sub_29A264C78(a1, a2) & 1) == 0)
  {
    sub_29A264ECC(a1);
  }

  if ((sub_29A265028(a1, a2) & 1) == 0)
  {
    sub_29A2650B0(a1);
  }

  return 1;
}

uint64_t sub_29A264C78(void *a1, const char *a2)
{
    ;
  }

  v4 = sub_29A264CDC(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A264CDC(void *a1, const char *a2)
{
  v4 = sub_29A264D34(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A264E54(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

uint64_t sub_29A264D34(void *a1, const char *a2)
{
  sub_29A2632B0(a1, a2);
  if ((v4 & 1) == 0 && (sub_29A263AF4(a1, a2) & 1) == 0 && (sub_29A263B7C(a1, a2) & 1) == 0)
  {
    sub_29A263C04(a1, a2);
    if ((v5 & 1) == 0)
    {
      if (sub_29A264B98(a1, a2))
      {
        sub_29A264DD0(a1, a2, v6, v7);
      }

      else
      {
        result = sub_29A2642B8(a1, a2, v6);
        if (!result)
        {
          return result;
        }

        sub_29A264340(a1, a2);
      }
    }
  }

  return 1;
}

uint64_t sub_29A264DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_29A264C78(a1, a2, a3, a4) & 1) == 0)
  {
    sub_29A264ECC(a1);
  }

  if ((sub_29A265028(a1, a2) & 1) == 0)
  {
    sub_29A2650B0(a1);
  }

  return 1;
}

void sub_29A264E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A264E54(uint64_t a1, const char *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A264D34(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A264EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A264ECC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851A0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListValueItem>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A264FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A265028(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 40) || *v4 != 93)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::EndList((a2 + 624));
  return 1;
}

void sub_29A2650A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A2650B0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851B0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListValueClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26517C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A2651DC(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A265264(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A23B470(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A265254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A265264(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 60)
  {
    return 0;
  }

  v4 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v4;
  ++a1[4];
  if ((sub_29A2652E0(a1, a2) & 1) == 0)
  {
    sub_29A26775C(a1);
  }

  return 1;
}

uint64_t sub_29A2652E0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 62)
  {
    return sub_29A265324(a1, a2);
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  return 1;
}

uint64_t sub_29A265324(void *a1, uint64_t a2)
{
  result = sub_29A265390(a1, a2);
  if (result)
  {
    v4 = a1[1];
    if (v4 == a1[5] || *v4 != 62)
    {
      return 0;
    }

    else
    {
      v5 = a1[2] + 1;
      a1[1] = v4 + 1;
      a1[2] = v5;
      ++a1[4];
      return 1;
    }
  }

  return result;
}

uint64_t sub_29A265390(void *a1, uint64_t a2)
{
  if (sub_29A265420(a1, a2))
  {
    return 1;
  }

  if (sub_29A26736C(a1, a2))
  {
    return 1;
  }

  sub_29A2676D4(a1, a2);
  if (v4)
  {
    return 1;
  }

  v5 = a1[1];
  if (v5 != a1[5] && *v5 == 46)
  {
    v6 = a1[2] + 1;
    a1[1] = v5 + 1;
    a1[2] = v6;
    ++a1[4];
    return 1;
  }

  return 0;
}

uint64_t sub_29A265420(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 40) || *v4 != 47)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  sub_29A2654A4(a1, a2);
  return 1;
}

void sub_29A265498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2654A4(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26552C(a1);
  if (v4)
  {
    sub_29A266224(a1);
    sub_29A266298(a1, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26551C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26552C(void *a1)
{
  v2 = sub_29A261E98(a1);
  if (v2)
  {
      ;
    }

    do
    {
      sub_29A265584(a1);
    }

    while ((v3 & 1) != 0);
  }

  return v2;
}

__n128 sub_29A265584(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v2 = sub_29A265644(a1);
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  if (v2 && sub_29A265FA8(a1) && sub_29A261E98(a1))
  {
      ;
    }
  }

  else
  {
    result = v4;
    *(a1 + 8) = v4;
    *(a1 + 24) = v5;
  }

  return result;
}

void sub_29A265620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A265644(void *a1)
{
  result = sub_29A265690(a1);
  if (result)
  {
    result = sub_29A261E98(a1);
    if (result)
    {
        ;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_29A265690(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 47)
  {
    return sub_29A2656D4(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

uint64_t sub_29A2656D4(void *a1)
{
  v2 = sub_29A265748(a1);
  if (v2)
  {
    sub_29A2657C4(a1);
    sub_29A265E5C(a1);
    if (v3)
    {
      do
      {
        sub_29A265EF8(a1);
        sub_29A265E5C(a1);
      }

      while ((v4 & 1) != 0);
    }
  }

  return v2;
}

uint64_t sub_29A265748(void *a1)
{
    ;
  }

  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 123)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
    ;
  }

  return 1;
}

uint64_t sub_29A2657C4(void *a1)
{
  if ((sub_29A265844(a1) & 1) == 0)
  {
    sub_29A2658FC(a1);
  }

  if ((sub_29A265A20(a1) & 1) == 0)
  {
    sub_29A265A9C(a1);
  }

  sub_29A265BD0(a1);
  if ((sub_29A265CB4(a1) & 1) == 0)
  {
    sub_29A265D30(a1);
  }

  return 1;
}

uint64_t sub_29A265844(void *a1)
{
  v2 = sub_29A261E98(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A265890(void *a1)
{
  if (sub_29A261F48(a1))
  {
    return 1;
  }

  v2 = a1[1];
  if (v2 != a1[5] && *v2 == 45)
  {
    v3 = a1[2] + 1;
    a1[1] = v2 + 1;
    a1[2] = v3;
    ++a1[4];
    return 1;
  }

  return 0;
}

void sub_29A2658FC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484C80;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::VariantSetName");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2659C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A265A20(void *a1)
{
    ;
  }

  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 61)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
    ;
  }

  return 1;
}

void sub_29A265A9C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x60uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484C90;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<PXR_INTERNAL_NS_pegtl::one<'='>, PXR_INTERNAL_NS_pegtl::blank>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A265B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A265BD0(uint64_t a1)
{
  v4 = *(a1 + 8);
  if (v4 != *(a1 + 40) && *v4 == 46)
  {
    v2 = *(a1 + 16) + 1;
    *(a1 + 8) = v4 + 1;
    *(a1 + 16) = v2;
    ++*(a1 + 32);
  }

  do
  {
      ;
    }
  }

  while ((sub_29A265C64(a1) & 1) != 0);
  return 1;
}

void sub_29A265C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A265C64(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 124 && v2 != 45)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v3;
  ++a1[4];
  return 1;
}

uint64_t sub_29A265CB4(void *a1)
{
    ;
  }

  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 125)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
    ;
  }

  return 1;
}

void sub_29A265D30(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CA0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::VarSelClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A265DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A265E5C(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
    ;
  }

  v2 = *(a1 + 8);
  if (v2 == *(a1 + 40) || *v2 != 123)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  else
  {
    v3 = *(a1 + 16) + 1;
    *(a1 + 8) = v2 + 1;
    *(a1 + 16) = v3;
    ++*(a1 + 32);
      ;
    }
  }

  return result;
}

uint64_t sub_29A265EF8(void *a1)
{
  if ((sub_29A265844(a1) & 1) == 0)
  {
    sub_29A2658FC(a1);
  }

  if ((sub_29A265A20(a1) & 1) == 0)
  {
    sub_29A265A9C(a1);
  }

  sub_29A265BD0(a1);
  if ((sub_29A265CB4(a1) & 1) == 0)
  {
    sub_29A265D30(a1);
  }

  return 1;
}

void sub_29A265F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A265FA8(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 47)
  {
    return sub_29A265FEC(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

uint64_t sub_29A265FEC(void *a1)
{
  v2 = sub_29A265748(a1);
  if (v2)
  {
    sub_29A266060(a1);
    sub_29A265E5C(a1);
    if (v3)
    {
      do
      {
        sub_29A266174(a1);
        sub_29A265E5C(a1);
      }

      while ((v4 & 1) != 0);
    }
  }

  return v2;
}

uint64_t sub_29A266060(void *a1)
{
  if ((sub_29A265844(a1) & 1) == 0)
  {
    sub_29A2658FC(a1);
  }

  if ((sub_29A265A20(a1) & 1) == 0)
  {
    sub_29A265A9C(a1);
  }

  sub_29A2660E0(a1);
  if ((sub_29A265CB4(a1) & 1) == 0)
  {
    sub_29A265D30(a1);
  }

  return 1;
}

uint64_t sub_29A2660E0(uint64_t a1)
{
  v4 = *(a1 + 8);
  if (v4 != *(a1 + 40) && *v4 == 46)
  {
    v2 = *(a1 + 16) + 1;
    *(a1 + 8) = v4 + 1;
    *(a1 + 16) = v2;
    ++*(a1 + 32);
  }

  do
  {
      ;
    }
  }

  while ((sub_29A265C64(a1) & 1) != 0);
  return 1;
}

void sub_29A266168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A266174(void *a1)
{
  if ((sub_29A265844(a1) & 1) == 0)
  {
    sub_29A2658FC(a1);
  }

  if ((sub_29A265A20(a1) & 1) == 0)
  {
    sub_29A265A9C(a1);
  }

  sub_29A2660E0(a1);
  if ((sub_29A265CB4(a1) & 1) == 0)
  {
    sub_29A265D30(a1);
  }

  return 1;
}

void sub_29A266214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A266224(void *a1)
{
  sub_29A265E5C(a1);
  v3 = v2;
  if (v2)
  {
    sub_29A266174(a1);
    sub_29A265E5C(a1);
    if (v4)
    {
      do
      {
        sub_29A266174(a1);
        sub_29A265E5C(a1);
      }

      while ((v5 & 1) != 0);
    }
  }

  return v3;
}

__n128 sub_29A266298(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if (v7.n128_u64[0] != *(a1 + 40) && *v7.n128_u64[0] == 46 && (v5 = *(a1 + 16) + 1, *(a1 + 8) = v7.n128_u64[0] + 1, *(a1 + 16) = v5, ++*(a1 + 32), sub_29A266344(a1)))
  {
    sub_29A266440(a1, a2);
  }

  else
  {
    result = v7;
    *v2 = v7;
    v2[1] = v8;
  }

  return result;
}

void sub_29A266338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A266344(void *a1)
{
  v2 = sub_29A261E98(a1);
  if (v2)
  {
      ;
    }

    do
    {
      sub_29A26639C(a1);
    }

    while ((v3 & 1) != 0);
  }

  return v2;
}

__n128 sub_29A26639C(uint64_t a1)
{
  v1 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (v5.n128_u64[0] != *(a1 + 40) && *v5.n128_u64[0] == 58 && (v3 = *(a1 + 16) + 1, *(a1 + 8) = v5.n128_u64[0] + 1, *(a1 + 16) = v3, ++*(a1 + 32), sub_29A261E98(a1)))
  {
      ;
    }
  }

  else
  {
    result = v5;
    *v1 = v5;
    v1[1] = v6;
  }

  return result;
}

void sub_29A266430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A266440(uint64_t a1, uint64_t a2)
{
  if (sub_29A2664B0(a1, a2))
  {
    return 1;
  }

  sub_29A266B3C(a1, a2);
  if (v4)
  {
    sub_29A266C7C(a1, a2);
    return 1;
  }

  return sub_29A2670E0(a1, a2);
}

uint64_t sub_29A2664B0(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  if (v6 == *(a1 + 40) || *v6 != 91)
  {
    return 0;
  }

  v4 = *(a1 + 16) + 1;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) = v4;
  ++*(a1 + 32);
  if ((sub_29A265390() & 1) == 0)
  {
    sub_29A266570(a1);
  }

  sub_29A26669C(a1);
  sub_29A266814(a1, a2);
  return 1;
}

void sub_29A266564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A266570(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::TargetPath");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26663C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26669C(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 93)
  {
    sub_29A2666EC(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

void sub_29A2666EC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CC0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::TargetPathClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2667B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A266814(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 46)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  sub_29A266874(a1, a2);
  return 1;
}

uint64_t sub_29A266874(void *a1, uint64_t a2)
{
  if ((sub_29A266344(a1) & 1) == 0)
  {
    sub_29A2668E4(a1);
  }

  sub_29A266A10(a1, a2);
  return 1;
}

void sub_29A2668D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2668E4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CD0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::RelationalAttributeName");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2669B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A266A10(void *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 != a1[5] && *v4 == 91)
  {
    v5 = a1[2] + 1;
    a1[1] = v4 + 1;
    a1[2] = v5;
    ++a1[4];
    sub_29A266AC0(a1);
    return 1;
  }

  sub_29A266B3C(a1, a2);
  if (v6)
  {
    sub_29A266C7C(a1, a2);
    return 1;
  }

  return sub_29A2670E0(a1, a2);
}

__n128 sub_29A266AC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  if ((sub_29A265390() & 1) == 0)
  {
    sub_29A266570(a1);
  }

  if ((sub_29A26669C(a1) & 1) == 0)
  {
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

void sub_29A266B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A266B3C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2635D8(a1, a2) || (result.n128_u64[0] = sub_29A266BB4(a1).n128_u64[0], (v4 & 1) == 0))
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A266BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A266BB4(uint64_t a1)
{
  if (sub_29A266C08(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A266C08(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1886413165 || *(v1 + 4) != 29285)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A266C7C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A266CF8(a1);
  if (v4)
  {
    sub_29A267008(a1, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A266CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A266CF8(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 91)
  {
    sub_29A266ECC(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  sub_29A266D50(a1);
  return 1;
}

uint64_t sub_29A266D50(void *a1)
{
  if ((sub_29A265390() & 1) == 0)
  {
    sub_29A266DA0(a1);
  }

  return sub_29A26669C(a1);
}

void sub_29A266DA0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::MapperPath");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A266E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A266ECC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x80uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CE0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::BracketPath<pxrInternal__aapl__pxrReserved__::Sdf_PathParser::MapperPath>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A266FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A267008(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2635D8(a1, a2) && sub_29A267084(a1))
  {
      ;
    }
  }

  else
  {
    result = v4;
    *(a1 + 8) = v4;
    *(a1 + 24) = v5;
  }

  return result;
}

void sub_29A267074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A267084(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 - 97) >= 0x1A && v2 != 95 && (v2 - 65) > 0x19)
  {
    return 0;
  }

  v4 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v4;
  ++a1[4];
  return 1;
}

uint64_t sub_29A2670E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A2635D8(a1, a2);
  if (v3)
  {
    sub_29A267138(a1);
    if ((v4 & 1) == 0)
    {
      sub_29A267240(a1);
    }
  }

  return v3;
}

__n128 sub_29A267138(uint64_t a1)
{
  if (sub_29A26718C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26718C(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x6973736572707865 || *(v1 + 8) != 28271)
  {
    return 0;
  }

  v4 = a1[2] + 10;
  a1[1] = v1 + 10;
  a1[2] = v4;
  a1[4] += 10;
  return 1;
}

void sub_29A267240(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::Expression");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26730C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26736C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v4 = sub_29A2673FC(a1);
  if (v4)
  {
    do
    {
      sub_29A26745C(a1);
    }

    while ((v5 & 1) != 0);
    sub_29A2674E0(a1, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v4;
}

void sub_29A2673E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2673FC(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 11822)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

__n128 sub_29A26745C(uint64_t a1)
{
  v1 = (a1 + 8);
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v4.n128_u64[0] == *(a1 + 40) || *v4.n128_u64[0] != 47 || (v2 = *(a1 + 16) + 1, *(a1 + 8) = v4.n128_u64[0] + 1, *(a1 + 16) = v2, ++*(a1 + 32), (sub_29A2673FC(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

__n128 sub_29A2674E0(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (v5.n128_u64[0] == *(a1 + 40) || *v5.n128_u64[0] != 47 || (v3 = *(a1 + 16) + 1, *(a1 + 8) = v5.n128_u64[0] + 1, *(a1 + 16) = v3, ++*(a1 + 32), (sub_29A267570(a1, a2) & 1) == 0))
  {
    result = v5;
    *v2 = v5;
    v2[1] = v6;
  }

  return result;
}

void sub_29A267564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A267570(void *a1, uint64_t a2)
{
  if (sub_29A2675D0(a1))
  {
    sub_29A266298(a1, a2);
    return 1;
  }

  else
  {

    return sub_29A26764C(a1, a2);
  }
}

uint64_t sub_29A2675D0(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v2 = sub_29A26552C(a1);
  if (v2)
  {
    sub_29A266224(a1);
  }

  else
  {
    *(a1 + 8) = v4;
    *(a1 + 24) = v5;
  }

  return v2;
}

void sub_29A26763C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26764C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5])
  {
    return 0;
  }

  if (*v2 != 46)
  {
    return 0;
  }

  v5 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v5;
  ++a1[4];
  result = sub_29A266344(a1);
  if (result)
  {
    sub_29A266440(a1, a2);
    return 1;
  }

  return result;
}

__n128 sub_29A2676D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (sub_29A2675D0(a1))
  {
    result.n128_u64[0] = sub_29A266298(a1, a2).n128_u64[0];
  }

  else if ((sub_29A26764C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26774C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26775C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x110uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851C0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RightAngleBracket, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_PathParser::Path, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RightAngleBracket>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26781C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26787C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v5 = sub_29A2678F4(a1, a2);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2678E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2678F4(uint64_t a1, uint64_t a2)
{
  if (!sub_29A267958(a1, a2) || !sub_29A26208C(a1, a2))
  {
    return 0;
  }

  return sub_29A260E44(a1, a2);
}

uint64_t sub_29A267958(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A2679D4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 7u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2679C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2679D4(uint64_t a1)
{
  if (sub_29A231728(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A267A28(uint64_t a1, char *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A267AB0(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A23C350(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A267AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A267AB0(void *a1, char *a2)
{
  result = sub_29A267B44(a1, a2);
  if (result)
  {
    result = sub_29A262838(a1);
    if (result)
    {
      result = sub_29A261C98(a1, a2);
      if (result)
      {
        result = sub_29A26208C(a1, a2);
        if (result)
        {
          if (sub_29A26221C(a1, a2))
          {
            return 1;
          }

          else
          {

            return sub_29A264B04(a1, a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A267B44(uint64_t a1, uint64_t a2)
{
  if (sub_29A267BC8(a1, a2) & 1) != 0 || (sub_29A267CC4(a1, a2) & 1) != 0 || (sub_29A267DBC(a1, a2) & 1) != 0 || (sub_29A267EB8(a1, a2))
  {
    return 1;
  }

  return sub_29A267FB0(a1, a2);
}

uint64_t sub_29A267BC8(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A267C70(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 1;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v5;
}

void sub_29A267C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A267C70(uint64_t a1)
{
  if (sub_29A23090C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A267CC4(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A267D68(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 2;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 2;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v5;
}

void sub_29A267D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A267D68(uint64_t a1)
{
  if (sub_29A2313DC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A267DBC(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A267E64(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 5;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 5;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v5;
}

void sub_29A267E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A267E64(uint64_t a1)
{
  if (sub_29A230A50(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A267EB8(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A267F5C(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 4;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 4;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v5;
}

void sub_29A267F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A267F5C(uint64_t a1)
{
  if (sub_29A23286C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A267FB0(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A268058(a1);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a2 + 264) - 4);
    if (v6 == 2)
    {
      *(a2 + 616) = 3;
    }

    else if (v6 == 4)
    {
      *(a2 + 616) = 3;
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 6u);
    }
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v5;
}

void sub_29A268048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A268058(uint64_t a1)
{
  if (sub_29A232DC4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A2680AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  sub_29A268134(a1);
  if (result)
  {
    sub_29A23C5F0();
  }

  *(a1 + 8) = v3;
  *(a1 + 24) = v4;
  return result;
}

void sub_29A268124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A268134(uint64_t a1)
{
  if (sub_29A232BBC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A268188(void *a1, uint64_t a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A268208(a1, a2) & 1) == 0)
  {
    sub_29A268714(a1);
  }

  return 1;
}

void sub_29A2681F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A268208(void *a1, uint64_t a2)
{
  v4 = sub_29A26827C(a1);
  if (v4)
  {
      ;
    }

    sub_29A26833C(a1, a2);
    if ((sub_29A268680(a1, a2) & 1) == 0)
    {
      sub_29A26861C(a1);
    }
  }

  return v4;
}

uint64_t sub_29A26827C(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 123)
  {
    sub_29A2682D8(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

void sub_29A2682D8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected {", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26833C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A2683C0(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A2683AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2683C0(void *a1, uint64_t a2)
{
  v4 = sub_29A268418(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A2685A4(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

uint64_t sub_29A268418(void *a1, uint64_t a2)
{
  if (!sub_29A26847C(a1, a2) || !sub_29A268504(a1))
  {
    return 0;
  }

  return sub_29A26847C(a1, a2);
}

uint64_t sub_29A26847C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A265264(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A23C9D4(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A2684F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A268504(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 58)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  return 1;
}

__n128 sub_29A2685A4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A268418(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26860C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26861C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A268680(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v4 == *(a1 + 40) || *v4 != 125)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1;
  sub_29A23EC98(v6, a2);
  return 1;
}

void sub_29A268708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A268714(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x2C8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851D0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::must<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelocatesMapOpen, PXR_INTERNAL_NS_pegtl::pad_opt<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef, PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NamespaceSeparator, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InlinePadding>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PathRef>>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::RelocatesMapClose>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2687D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A268834(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  result = sub_29A2688EC(a1, a2);
  if (result)
  {
    result = sub_29A26208C(a1, a2);
    if (result)
    {
      v5 = a1[1];
      if (v5 == a1[5] || *v5 != 91)
      {
        return 0;
      }

      else
      {
        v6 = a1[2] + 1;
        a1[1] = v5 + 1;
        a1[2] = v6;
        ++a1[4];
          ;
        }

        sub_29A2689CC(a1, a2);
        if ((sub_29A269278(a1, a2) & 1) == 0)
        {
          sub_29A269214(a1);
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_29A2688EC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A268978(a1);
  v5 = v4;
  if (v4)
  {
    sub_29A012CE4((a2 + 112));
    *(a2 + 144) = *(a2 + 136);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Fu);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A268968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A268978(uint64_t a1)
{
  if (sub_29A233390(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A2689CC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A268A50(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A268A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A268A50(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A268AA8(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26919C(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

uint64_t sub_29A268AA8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A268B30(a1, a2);
  if (v4)
  {
    sub_29A070BA0(a2 + 112);
  }

  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return v4;
}

void sub_29A268B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A268B30(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A268B94(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
    sub_29A268C20(a1, a2);
  }

  return v5;
}

__n128 sub_29A268B94(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if ((sub_29A263C90(a1) & 1) != 0 || sub_29A263FE8(a1))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1;
    sub_29A240274(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A268C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A268C20(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = (a1 + 8);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if (v7.n128_u64[0] == *(a1 + 40))
  {
    goto LABEL_6;
  }

  if (*v7.n128_u64[0] != 40)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 16) + 1;
  *(a1 + 8) = v7.n128_u64[0] + 1;
  *(a1 + 16) = v5;
  ++*(a1 + 32);
    ;
  }

  sub_29A268CE8(a1, a2);
  if ((sub_29A2690DC(a1) & 1) == 0)
  {
LABEL_6:
    result = v7;
    *v2 = v7;
    v2[1] = v8;
  }

  return result;
}

void sub_29A268CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A268CE8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A268D6C(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A268D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A268D6C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A268DC4(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
      sub_29A269064(a1, a2);
    }

    while ((v6 & 1) != 0);
    sub_29A269384(a1);
  }

  return v5;
}

void sub_29A268DC4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (((sub_29A268E38(a1, a2) & 1) != 0 || sub_29A268F08(a1, a2)) && sub_29A26208C(a1, a2))
  {

    sub_29A268FD8(a1, a2);
  }
}

uint64_t sub_29A268E38(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A268EB4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x29u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A268EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A268EB4(uint64_t a1)
{
  if (sub_29A232094(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A268F08(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A268F84(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Au);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A268F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A268F84(uint64_t a1)
{
  if (sub_29A2331B8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

__n128 sub_29A268FD8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A26333C(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A263A34(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1;
    sub_29A240A14(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

void sub_29A269054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A269064(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  if (!sub_29A262ED4(a1) || (sub_29A268DC4(a1, a2), (v5 & 1) == 0))
  {
    result = v6;
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

void sub_29A2690CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2690DC(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5] || *v1 != 41)
  {
    sub_29A269138(a1);
  }

  v2 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v2;
  ++a1[4];
  return 1;
}

void sub_29A269138(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected)", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

__n128 sub_29A26919C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A268AA8(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A269204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A269214(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected ]", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A269278(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v4 == *(a1 + 40) || *v4 != 93)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1;
  sub_29A240D60(v6, a2);
  return 1;
}

void sub_29A269300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26930C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A262ED4(a1) || (sub_29A260D18(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A269374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A269384(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  do
  {
      ;
    }
  }

  while ((sub_29A260540(a1) & 1) != 0);
  v2 = sub_29A262F44(a1);
  if (v2)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a1 + 24) = v5;
  }

  return v2;
}

void sub_29A269418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A269430(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected)", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A269494(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 40) || *v4 != 41)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, a2);
  return 1;
}

void sub_29A269510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26951C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A269580(a1, a2);
  if (v4)
  {
    return 1;
  }

  sub_29A269AFC(a1, a2);
  if (v5)
  {
    return 1;
  }

  return sub_29A260494(a1);
}

__n128 sub_29A269580(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if (!sub_29A267FB0(a1, a2))
  {
    goto LABEL_12;
  }

  if (!sub_29A262838(a1))
  {
    goto LABEL_12;
  }

  if (!sub_29A269668(a1, a2))
  {
    goto LABEL_12;
  }

  if (!sub_29A26208C(a1, a2))
  {
    goto LABEL_12;
  }

  sub_29A269738(a1, a2);
  if (!v4)
  {
    goto LABEL_12;
  }

  do
  {
      ;
    }
  }

  while ((sub_29A260540(a1) & 1) != 0);
  v5 = sub_29A262F44(a1);
  v7 = *(a1 + 8) == *(a1 + 40) ? 1 : v5;
  if ((v7 & 1) == 0)
  {
LABEL_12:
    result = v8;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

void sub_29A269654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A269668(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A2696E4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xFu);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2696D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2696E4(uint64_t a1)
{
  if (sub_29A232EBC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

__n128 sub_29A269738(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if ((sub_29A260E44(a1, a2) & 1) != 0 || sub_29A2697C4(a1, a2))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1;
    sub_29A24176C(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A2697B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2697C4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 91)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  sub_29A269824(a1, a2);
  return 1;
}

uint64_t sub_29A269824(void *a1, uint64_t a2)
{
  if ((sub_29A269874(a1, a2) & 1) == 0)
  {
    sub_29A2699A8(a1);
  }

  return sub_29A262D9C(a1);
}

uint64_t sub_29A269874(void *a1, uint64_t a2)
{
    ;
  }

  v4 = sub_29A2698D8(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A2698D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A260E44(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A269930(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

__n128 sub_29A269930(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A260E44(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A269998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2699A8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF8uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851E0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOf<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::String>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::MultilinePadding>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A269A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A269AFC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A269B94(a1, a2))
  {
    goto LABEL_6;
  }

  do
  {
      ;
    }
  }

  while ((sub_29A260540(a1) & 1) != 0);
  if ((sub_29A2602EC(a1) & 1) == 0 && v3)
  {
LABEL_6:
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A269B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A269B94(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A269C1C(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A25F120(v8, a2);
  }

  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return v4;
}

void sub_29A269C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A269C1C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A269CE4(a1, a2))
  {
    return 0;
  }

  if (!sub_29A262838(a1))
  {
    return 0;
  }

  sub_29A269FDC(a1, a2);
  if (!sub_29A260E44(a1, a2))
  {
    return 0;
  }

  if (!sub_29A26A194(a1, a2))
  {
    return 0;
  }

  v4 = a1[1];
  if (v4 == a1[5] || *v4 != 123)
  {
    return 0;
  }

  v5 = a1[2] + 1;
  a1[1] = v4 + 1;
  a1[2] = v5;
  ++a1[4];

  return sub_29A26E060(a1, a2);
}

uint64_t sub_29A269CE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A269D48(a1, a2) & 1) != 0 || (sub_29A269E24(a1, a2))
  {
    return 1;
  }

  return sub_29A269F00(a1, a2);
}

uint64_t sub_29A269D48(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A269DD0(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2434D4(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A269DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A269DD0(uint64_t a1)
{
  if (sub_29A2312F8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A269E24(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A269EAC(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A24365C(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A269E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A269EAC(uint64_t a1)
{
  if (sub_29A2322A4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A269F00(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A269F88(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2437F4(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A269F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A269F88(uint64_t a1)
{
  if (sub_29A230C28(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

__n128 sub_29A269FDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (!sub_29A26A054(a1, a2) || (sub_29A262838(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 8) = v4;
    *(a1 + 24) = v5;
  }

  return result;
}

void sub_29A26A044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26A054(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A261C98(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26A0A0(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

__n128 sub_29A26A0A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A26A118(a1, a2) || (sub_29A261C98(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26A108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26A118(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v4 = sub_29A2635D8(a1, a2);
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A26A194(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
    ;
  }

  sub_29A26A218(a1, a2);
  v7[0] = v5;
  v7[1] = v6;
  v8 = a1;
  sub_29A2528A0(v7, a2);
  return 1;
}

void sub_29A26A204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26A218(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A260B48(a1, a2);
  if (v4)
  {
    sub_29A26A2A8(a1, a2);
      ;
    }
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26A294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26A2A8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A26A308(a1, a2);
  if ((sub_29A269494(a1, a2) & 1) == 0)
  {
    sub_29A269430(a1);
  }

  return 1;
}

uint64_t sub_29A26A308(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A26A38C(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A26A378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26A38C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A26A3E4(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26DFE8(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A269384(a1);
  }

  return v4;
}

uint64_t sub_29A26A3E4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A26A638(a1, a2) & 1) != 0 || (sub_29A26A9A4(a1, a2))
  {
    return 1;
  }

  if (sub_29A26ABB4(a1, a2))
  {
    sub_29A26AC90(a1, a2);
    return 1;
  }

  if (sub_29A26B4E0(a1, a2))
  {
    sub_29A26B5BC(a1, a2);
    return 1;
  }

  if (sub_29A26BB84(a1, a2))
  {
    return 1;
  }

  if (sub_29A26BD40(a1, a2))
  {
    sub_29A26BE10(a1, a2);
    return 1;
  }

  if (sub_29A26A518(a1, a2) & 1) != 0 || (sub_29A26A560(a1, a2) & 1) != 0 || (sub_29A260D88(a1, a2) & 1) != 0 || (sub_29A26A5A8(a1, a2) & 1) != 0 || (sub_29A26D478(a1, a2) & 1) != 0 || (sub_29A26A5F0(a1, a2))
  {
    return 1;
  }

  return sub_29A26DE38(a1, a2);
}

uint64_t sub_29A26A518(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A26BEF0(a1, a2);
  if (v4)
  {
    sub_29A26BFCC(a1, a2);
  }

  return v4;
}

uint64_t sub_29A26A560(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A26C3B4(a1, a2);
  if (v4)
  {
    sub_29A26BFCC(a1, a2);
  }

  return v4;
}

uint64_t sub_29A26A5A8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A267B44(a1, a2);
  if (v4)
  {
    sub_29A26C490(a1, a2);
  }

  return v4;
}

uint64_t sub_29A26A5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A26DC78(a1, a2);
  if (v4)
  {
    sub_29A26DD58(a1, a2);
  }

  return v4;
}

uint64_t sub_29A26A638(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A260E44(a1, a2) & 1) != 0 || (sub_29A26A69C(a1, a2))
  {
    return 1;
  }

  return sub_29A26787C(a1, a2);
}

uint64_t sub_29A26A69C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26A724(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A244450(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26A724(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A26A788(a1, a2) || !sub_29A26208C(a1, a2))
  {
    return 0;
  }

  return sub_29A2621B8(a1, a2);
}

uint64_t sub_29A26A788(uint64_t a1, uint64_t a2)
{
  if (sub_29A26A7EC(a1, a2) & 1) != 0 || (sub_29A26A8C8(a1, a2))
  {
    return 1;
  }

  return sub_29A261C98(a1, a2);
}

uint64_t sub_29A26A7EC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26A874(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2441A8(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26A864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26A874(uint64_t a1)
{
  if (sub_29A2310D4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26A8C8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26A950(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2443A0(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26A940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26A950(uint64_t a1)
{
  if (sub_29A2337D4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26A9A4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v4 = sub_29A26AA28(a1, a2);
  if (v4)
  {
    sub_29A26AAF8(a1, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v4;
}

void sub_29A26AA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26AA28(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26AAA4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x19u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26AA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26AAA4(uint64_t a1)
{
  if (sub_29A231AFC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26AAF8(uint64_t a1, uint64_t a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A260E44(a1, a2) & 1) == 0)
  {
    sub_29A26AB50(a1);
  }

  return 1;
}

void sub_29A26AB50(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected string", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26ABB4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  sub_29A26AC3C(a1);
  if (result)
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1;
    sub_29A244950(v7, a2);
  }

  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return result;
}

void sub_29A26AC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26AC3C(uint64_t a1)
{
  if (sub_29A232A90(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26AC90(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A26AD70(a1, a2) & 1) == 0)
  {
    sub_29A26AD0C(a1);
  }

  return 1;
}

void sub_29A26ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26AD0C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected None, reference, or list of references separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26AD70(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26ADF8(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A24586C(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26ADF8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A26221C(a1, a2) & 1) != 0 || (sub_29A26AE5C(a1, a2))
  {
    return 1;
  }

  return sub_29A26B2C4(a1, a2);
}

uint64_t sub_29A26AE5C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26AEE4(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A2450EC(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26AED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26AEE4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A26847C(a1, a2) & 1) != 0 || (result = sub_29A26AF4C(a1, a2), result))
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
    sub_29A26AFB0(a1, a2);
    return 1;
  }

  return result;
}

uint64_t sub_29A26AF4C(void *a1, uint64_t a2)
{
  sub_29A268B94(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
    sub_29A26847C(a1, a2);
  }

  return v5;
}

__n128 sub_29A26AFB0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A26B048(a1, a2))
  {
    goto LABEL_4;
  }

    ;
  }

  sub_29A26B0D4(a1, a2);
  if ((sub_29A269494(a1, a2) & 1) == 0)
  {
LABEL_4:
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26B034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B048(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 40) || *v4 != 40)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x28u);
  return 1;
}

void sub_29A26B0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B0D4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  sub_29A26B158(a1, a2);
  v4 = v3;
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26B144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26B158(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A26B1B4(a1, a2);
  if ((v4 & 1) != 0 || (sub_29A268DC4(a1, a2), v5))
  {
    do
    {
      sub_29A26B23C(a1, a2);
    }

    while ((v6 & 1) != 0);
    sub_29A269384(a1);
  }
}

__n128 sub_29A26B1B4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A26A7EC(a1, a2) || !sub_29A26208C(a1, a2) || (sub_29A2622F8(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26B23C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if (!sub_29A262ED4(a1) || (result.n128_u64[0] = sub_29A26B1B4(a1, a2).n128_u64[0], (v5 & 1) == 0) && (sub_29A268DC4(a1, a2), (v6 & 1) == 0))
  {
    result = v7;
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return result;
}

void sub_29A26B2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B2C4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = a1[1];
  if (v2 == a1[5])
  {
    return 0;
  }

  if (*v2 != 91)
  {
    return 0;
  }

  v5 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v5;
  ++a1[4];
    ;
  }

  sub_29A26B38C(a1, a2);
  v6 = a1[1];
  if (v6 == a1[5] || *v6 != 93)
  {
    return 0;
  }

  v7 = a1[2] + 1;
  a1[1] = v6 + 1;
  a1[2] = v7;
  ++a1[4];
  return 1;
}

uint64_t sub_29A26B38C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A26B410(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A26B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B410(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A26AE5C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26B468(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

__n128 sub_29A26B468(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A26AE5C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B4E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  sub_29A26B568(a1);
  if (result)
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1;
    sub_29A248F04(v7, a2);
  }

  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return result;
}

void sub_29A26B558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26B568(uint64_t a1)
{
  if (sub_29A232384(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26B5BC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A26B69C(a1, a2) & 1) == 0)
  {
    sub_29A26B638(a1);
  }

  return 1;
}

void sub_29A26B628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26B638(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected None, payload, or list of payloads separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26B69C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26B724(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A249B14(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26B714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B724(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A26221C(a1, a2) & 1) != 0 || (sub_29A26B788(a1, a2))
  {
    return 1;
  }

  return sub_29A26B968(a1, a2);
}

uint64_t sub_29A26B788(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26B810(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A249434(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26B800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B810(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A26847C(a1, a2) & 1) != 0 || (result = sub_29A26AF4C(a1, a2), result))
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
    sub_29A26B878(a1, a2);
    return 1;
  }

  return result;
}

__n128 sub_29A26B878(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = (a1 + 8);
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if (v9.n128_u64[0] == *(a1 + 40))
  {
    goto LABEL_8;
  }

  if (*v9.n128_u64[0] != 40)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 16) + 1;
  *(a1 + 8) = v9.n128_u64[0] + 1;
  *(a1 + 16) = v5;
  ++*(a1 + 32);
    ;
  }

  sub_29A268CE8(a1, a2);
  v7 = *(a1 + 8);
  if (v7 == *(a1 + 40) || *v7 != 41)
  {
LABEL_8:
    result = v9;
    *v2 = v9;
    v2[1] = v10;
  }

  else
  {
    v8 = *(a1 + 16) + 1;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = v8;
    ++*(a1 + 32);
  }

  return result;
}

void sub_29A26B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26B968(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = a1[1];
  if (v2 == a1[5])
  {
    return 0;
  }

  if (*v2 != 91)
  {
    return 0;
  }

  v5 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v5;
  ++a1[4];
    ;
  }

  sub_29A26BA30(a1, a2);
  v6 = a1[1];
  if (v6 == a1[5] || *v6 != 93)
  {
    return 0;
  }

  v7 = a1[2] + 1;
  a1[1] = v6 + 1;
  a1[2] = v7;
  ++a1[4];
  return 1;
}

uint64_t sub_29A26BA30(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A26BAB4(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A26BAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26BAB4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A26B788(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26BB0C(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

__n128 sub_29A26BB0C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A26B788(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26BB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26BB84(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26BC18(a1, a2);
  if (v4)
  {
    sub_29A26BCE8(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A24CED8(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26BC18(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26BC94(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x16u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26BC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26BC94(uint64_t a1)
{
  if (sub_29A233E70(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26BCE8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A2622F8(a1, a2) & 1) == 0)
  {
    sub_29A262A40(a1);
  }

  return 1;
}

uint64_t sub_29A26BD40(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26BDBC(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x17u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26BDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26BDBC(uint64_t a1)
{
  if (sub_29A233D3C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26BE10(uint64_t a1, uint64_t a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  sub_29A269738(a1, a2);
  if ((v4 & 1) == 0)
  {
    sub_29A26BE8C(a1);
  }

  return 1;
}

void sub_29A26BE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26BE8C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected string or list of strings enclosed in [] separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26BEF0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26BF78(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A24DDE0(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26BF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26BF78(uint64_t a1)
{
  if (sub_29A2319E4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26BFCC(uint64_t a1, uint64_t a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A26C0AC(a1, a2) & 1) == 0)
  {
    sub_29A26C048(a1);
  }

  return 1;
}

void sub_29A26C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26C048(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected None, path ref, or list of path refs separated by ,", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26C0AC(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26C134(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A24E21C(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26C124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26C134(void *a1, uint64_t a2)
{
  if (sub_29A26221C(a1, a2) & 1) != 0 || (sub_29A26847C(a1, a2))
  {
    return 1;
  }

  return sub_29A26C198(a1, a2);
}

uint64_t sub_29A26C198(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5])
  {
    return 0;
  }

  if (*v2 != 91)
  {
    return 0;
  }

  v5 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v5;
  ++a1[4];
    ;
  }

  sub_29A26C260(a1, a2);
  v6 = a1[1];
  if (v6 == a1[5] || *v6 != 93)
  {
    return 0;
  }

  v7 = a1[2] + 1;
  a1[1] = v6 + 1;
  a1[2] = v7;
  ++a1[4];
  return 1;
}

uint64_t sub_29A26C260(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A26C2E4(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A26C2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26C2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A26847C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26C33C(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

__n128 sub_29A26C33C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A26847C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26C3B4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26C43C(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2504D8(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26C42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26C43C(uint64_t a1)
{
  if (sub_29A2335B4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26C490(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A262838(a1) & 1) == 0)
  {
    sub_29A2627D4(a1);
  }

  if ((sub_29A26C510(a1, a2) & 1) == 0)
  {
    sub_29A26D358(a1);
  }

  return 1;
}

void sub_29A26C500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26C510(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A26ABB4(a1, a2))
  {

    return sub_29A26C580(a1, a2);
  }

  else
  {
    if ((sub_29A26C710(a1, a2) & 1) == 0)
    {
      sub_29A26D238(a1);
    }

    return 1;
  }
}

uint64_t sub_29A26C580(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A26208C(a1, a2) || (sub_29A26AD70(a1, a2) & 1) == 0)
  {
    sub_29A26C5CC(a1);
  }

  return 1;
}

void sub_29A26C5CC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ReferenceList>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26C6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26C710(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A26B4E0(a1, a2))
  {

    return sub_29A26C780(a1, a2);
  }

  else
  {
    if ((sub_29A26C910(a1, a2) & 1) == 0)
    {
      sub_29A26D118(a1);
    }

    return 1;
  }
}

uint64_t sub_29A26C780(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A26208C(a1, a2) || (sub_29A26B69C(a1, a2) & 1) == 0)
  {
    sub_29A26C7CC(a1);
  }

  return 1;
}

void sub_29A26C7CC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485200;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PayloadList>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26C8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26C910(uint64_t a1, char *a2)
{
  if ((sub_29A26BEF0(a1, a2) & 1) != 0 || sub_29A26C3B4(a1, a2))
  {

    return sub_29A26C990(a1, a2);
  }

  else
  {
    if ((sub_29A26CB28(a1, a2) & 1) == 0)
    {
      sub_29A26CFF8(a1);
    }

    return 1;
  }
}

uint64_t sub_29A26C990(uint64_t a1, uint64_t a2)
{
  if (!sub_29A26208C(a1, a2) || (sub_29A26C0AC(a1, a2) & 1) == 0)
  {
    sub_29A26C9DC(a1);
  }

  return 1;
}

void sub_29A26C9DC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xC0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485210;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26CAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26CB28(uint64_t a1, char *a2)
{
  if (sub_29A26BD40(a1, a2))
  {

    return sub_29A26CB98(a1, a2);
  }

  else
  {
    if ((sub_29A26CD28(a1, a2) & 1) == 0)
    {
      sub_29A26CEC4(a1);
    }

    return 1;
  }
}

uint64_t sub_29A26CB98(uint64_t a1, uint64_t a2)
{
  if (!sub_29A26208C(a1, a2) || (sub_29A269738(a1, a2), (v4 & 1) == 0))
  {
    sub_29A26CBE4(a1);
  }

  return 1;
}

void sub_29A26CBE4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485220;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26CD28(uint64_t a1, char *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26CDB0(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A250F78(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26CDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26CDB0(uint64_t a1, char *a2)
{
  if (!sub_29A261C98(a1, a2) || !sub_29A26208C(a1, a2))
  {
    return 0;
  }

  return sub_29A26CE14(a1, a2);
}

uint64_t sub_29A26CE14(uint64_t a1, char *a2)
{
  if ((sub_29A26221C(a1, a2) & 1) == 0 && (sub_29A264B04(a1, a2) & 1) == 0)
  {
    sub_29A26CE60(a1);
  }

  return 1;
}

void sub_29A26CE60(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected None or [", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26CEC4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x58uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485230;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26CF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A26CFF8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x178uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485240;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26D0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A26D118(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x310uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485250;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordInherits, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordSpecializes>, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26D1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A26D238(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x430uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485260;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordPayload, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PayloadList>, PXR_INTERNAL_NS_pegtl::if_must_else<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordInherits, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordSpecializes>, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26D2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A26D358(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x550uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485270;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordReferences, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ReferenceList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordPayload, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::PayloadList>, PXR_INTERNAL_NS_pegtl::if_must_else<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordInherits, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordSpecializes>, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::InheritsOrSpecializesList>, PXR_INTERNAL_NS_pegtl::if_must_else<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::KeywordVariantSets, PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::NameList>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ListOpKeyValueMetadata>>>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26D418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26D478(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26D500(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A252040(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26D4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26D500(void *a1, uint64_t a2)
{
  if ((sub_29A26D54C(a1, a2) & 1) != 0 || (result = sub_29A26D61C(a1, a2), result))
  {
    sub_29A26D6EC(a1, a2);
    return 1;
  }

  return result;
}

uint64_t sub_29A26D54C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26D5C8(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Du);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26D5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26D5C8(uint64_t a1)
{
  if (sub_29A23276C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26D61C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26D698(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x2Eu);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26D688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26D698(uint64_t a1)
{
  if (sub_29A2334B4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26D6EC(void *a1, uint64_t a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A26D744(a1, a2) & 1) == 0)
  {
    sub_29A26DB4C(a1);
  }

  return 1;
}

uint64_t sub_29A26D744(void *a1, uint64_t a2)
{
  if ((sub_29A26D81C(a1, a2) & 1) == 0)
  {
    sub_29A26D7B8(a1);
  }

    ;
  }

  sub_29A26D8B0(a1, a2);
  if ((sub_29A26DACC(a1, a2) & 1) == 0)
  {
    sub_29A26DA68(a1);
  }

  return 1;
}

void sub_29A26D7B8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected {", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26D81C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (v4 == *(a1 + 40) || *v4 != 123)
  {
    return 0;
  }

  v2 = *(a1 + 16) + 1;
  *(a1 + 8) = v4 + 1;
  *(a1 + 16) = v2;
  ++*(a1 + 32);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1;
  sub_29A251B70(v6, a2);
  return 1;
}

void sub_29A26D8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26D8B0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A26D934(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A26D920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26D934(void *a1, uint64_t a2)
{
  v4 = sub_29A26D98C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A26D9F0(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

uint64_t sub_29A26D98C(void *a1, uint64_t a2)
{
  if (!sub_29A260E44(a1, a2) || !sub_29A268504(a1))
  {
    return 0;
  }

  return sub_29A260E44(a1, a2);
}

__n128 sub_29A26D9F0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A26D98C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26DA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26DA68(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected }", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26DACC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 125)
  {
    return 0;
  }

  v4 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v4;
  ++a1[4];
  v5 = (*(a2 + 952) - 8);
  sub_29A184A10(v5, 0);
  *(a2 + 952) = v5;
  return 1;
}

void sub_29A26DB4C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485280;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::StringDictionary");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A26DC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A26DC78(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26DD04(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 4)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 8u);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26DCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26DD04(uint64_t a1)
{
  if (sub_29A23247C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26DD58(uint64_t a1, uint64_t a2)
{
  if ((sub_29A26208C(a1, a2) & 1) == 0)
  {
    sub_29A2629DC(a1);
  }

  if ((sub_29A261C98(a1, a2) & 1) == 0)
  {
    sub_29A26DDD4(a1);
  }

  return 1;
}

void sub_29A26DDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26DDD4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected identifier", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26DE38(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26DEC0(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A2526B8(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26DEC0(uint64_t a1, uint64_t a2)
{
  result = sub_29A26DF0C(a1, a2);
  if (result)
  {
    result = sub_29A26208C(a1, a2);
    if (result)
    {
      sub_29A261C98(a1, a2);
      return 1;
    }
  }

  return result;
}

uint64_t sub_29A26DF0C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26DF94(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A25265C(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26DF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26DF94(uint64_t a1)
{
  if (sub_29A2338C8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

__n128 sub_29A26DFE8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A262ED4(a1) || (sub_29A26A3E4(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26E060(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A26E114(a1, a2) & 1) == 0)
  {
    sub_29A26E0B0(a1);
  }

  return sub_29A275950(a1);
}

void sub_29A26E0B0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A22D0C0(exception, "Expected child order, property order, prim, property, or variant set", a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

uint64_t sub_29A26E114(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  do
  {
    sub_29A26E15C(a1, a2);
  }

  while ((v4 & 1) != 0);
  return 1;
}

__n128 sub_29A26E15C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  sub_29A26E1E4(a1, a2);
  if ((v4 & 1) != 0 || sub_29A275190(a1, a2))
  {
      ;
    }
  }

  else
  {
    result = v6;
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

void sub_29A26E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26E1E4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if ((sub_29A26E28C(a1, a2) & 1) == 0 && !sub_29A26E548(a1, a2))
  {
    goto LABEL_6;
  }

  do
  {
      ;
    }
  }

  while ((sub_29A260540(a1) & 1) != 0);
  if ((sub_29A262F44(a1) & 1) == 0)
  {
LABEL_6:
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26E278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26E28C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26E314(a1, a2);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A252F24(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26E304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26E314(void *a1, uint64_t a2)
{
  if (sub_29A267FB0(a1, a2) && sub_29A262838(a1) && ((sub_29A26E3A8(a1, a2) & 1) != 0 || sub_29A26E478(a1, a2)) && sub_29A26208C(a1, a2))
  {

    sub_29A269738(a1, a2);
  }
}

uint64_t sub_29A26E3A8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26E424(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x10u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26E414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26E424(uint64_t a1)
{
  if (sub_29A231DA8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26E478(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26E4F4(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x11u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26E4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26E4F4(uint64_t a1)
{
  if (sub_29A232964(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26E548(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26E5D0(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A25E0D8(v8, a2);
  }

  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return v4;
}

void sub_29A26E5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26E5D0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A26E634(a1, a2);
  if (v4 & 1) != 0 || (sub_29A273AA8(a1, a2))
  {
    return 1;
  }

  return sub_29A274C70(a1, a2);
}

__n128 sub_29A26E634(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  sub_29A26E6C4(a1, a2);
  if (v4 && sub_29A270400(a1, a2))
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A25C144(v8, a2);
  }

  else
  {
    result = v6;
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

void sub_29A26E6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A26E6C4(void *a1, uint64_t a2)
{
  sub_29A26E734(a1, a2);
  if (sub_29A26E830(a1, a2) && sub_29A262838(a1))
  {

    sub_29A26EC6C(a1, a2);
  }
}

__n128 sub_29A26E734(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  sub_29A26E7DC(a1);
  if ((v4 & 1) == 0)
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    goto LABEL_5;
  }

  *(a2 + 1016) = 1;
  if ((sub_29A262838(a1) & 1) == 0)
  {
LABEL_5:
    result = v6;
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

void sub_29A26E7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26E7DC(uint64_t a1)
{
  if (sub_29A230FE8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26E830(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A26E8AC(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::SetupFactory(a2 + 624, a2 + 184);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A26E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26E8AC(uint64_t a1, uint64_t a2)
{
  sub_29A26E900(a1, a2);
  v4 = sub_29A261C98(a1, a2);
  if (v4)
  {
    sub_29A262BBC(a1, a2);
  }

  return v4;
}

__n128 sub_29A26E900(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  sub_29A26E978(a1, a2);
  if (!v3 || (sub_29A262838(a1) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26E978(uint64_t a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (sub_29A26EA34(a1, a2) & 1) != 0 || (sub_29A26EB50(a1, a2))
  {
    v7[1] = 0;
    sub_29A18606C((a2 + 1056), v7);
    sub_29A186B14(v7);
  }

  else
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26EA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26EA34(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26EAFC(a1);
  v5 = v4;
  if (v4)
  {
    v9[1] = &off_2A20494F0 + 3;
    LODWORD(v9[0]) = 1;
    sub_29A18606C((a2 + 1040), v9);
    sub_29A186B14(v9);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26EAFC(uint64_t a1)
{
  if (sub_29A230D18(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26EB50(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26EC18(a1);
  v5 = v4;
  if (v4)
  {
    v9[1] = &off_2A20494F0 + 3;
    LODWORD(v9[0]) = 1;
    sub_29A18606C((a2 + 1040), v9);
    sub_29A186B14(v9);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26EC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26EC18(uint64_t a1)
{
  if (sub_29A233B18(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

__n128 sub_29A26EC6C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if ((sub_29A26ECF8(a1) & 1) != 0 || sub_29A26EE30(a1, a2))
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1;
    sub_29A256908(v7, a2);
  }

  else
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A26ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26ECF8(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v2 = sub_29A261E98(a1);
  if (v2)
  {
      ;
    }

    do
    {
      sub_29A26ED8C(a1);
    }

    while ((v3 & 1) != 0);
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v2;
}

void sub_29A26ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26ED8C(uint64_t a1)
{
  v1 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (v5.n128_u64[0] != *(a1 + 40) && *v5.n128_u64[0] == 58 && (v3 = *(a1 + 16) + 1, *(a1 + 8) = v5.n128_u64[0] + 1, *(a1 + 16) = v3, ++*(a1 + 32), sub_29A261E98(a1)))
  {
      ;
    }
  }

  else
  {
    result = v5;
    *v1 = v5;
    v1[1] = v6;
  }

  return result;
}

void sub_29A26EE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26EE30(uint64_t a1, uint64_t a2)
{
  if (sub_29A267BC8(a1, a2) & 1) != 0 || (sub_29A267DBC(a1, a2) & 1) != 0 || (sub_29A26F214(a1, a2) & 1) != 0 || (sub_29A269F00(a1, a2) & 1) != 0 || (sub_29A26EA34(a1, a2) & 1) != 0 || (sub_29A26F2EC(a1, a2) & 1) != 0 || (sub_29A26F3C8(a1, a2))
  {
    return 1;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  sub_29A26E7DC(a1);
  if (v4)
  {
    *(a2 + 1016) = 1;
    return 1;
  }

  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  if (sub_29A26A7EC(a1, a2) & 1) != 0 || (sub_29A26F4A8(a1, a2) & 1) != 0 || (sub_29A269D48(a1, a2) & 1) != 0 || (sub_29A267CC4(a1, a2) & 1) != 0 || (sub_29A262644(a1, a2) & 1) != 0 || (sub_29A26F588(a1, a2) & 1) != 0 || (sub_29A267958(a1, a2) & 1) != 0 || (sub_29A26F668(a1, a2) & 1) != 0 || (sub_29A26F744(a1, a2) & 1) != 0 || (sub_29A26BEF0(a1, a2) & 1) != 0 || (sub_29A26AA28(a1, a2) & 1) != 0 || (sub_29A26F81C(a1, a2) & 1) != 0 || (sub_29A26F8F8(a1, a2) & 1) != 0 || (sub_29A26E3A8(a1, a2) & 1) != 0 || (sub_29A26221C(a1, a2) & 1) != 0 || (sub_29A26F9D4(a1, a2) & 1) != 0 || (sub_29A268E38(a1, a2) & 1) != 0 || (sub_29A26FAB0(a1, a2) & 1) != 0 || (sub_29A269E24(a1, a2) & 1) != 0 || (sub_29A26B4E0(a1, a2) & 1) != 0 || (sub_29A26DC78(a1, a2) & 1) != 0 || (sub_29A26FB8C(a1, a2) & 1) != 0 || (sub_29A26FC68(a1, a2) & 1) != 0 || (sub_29A26D54C(a1, a2) & 1) != 0 || (sub_29A267EB8(a1, a2) & 1) != 0 || (sub_29A26E478(a1, a2) & 1) != 0 || (sub_29A26ABB4(a1, a2) & 1) != 0 || (sub_29A2680AC(a1) & 1) != 0 || (sub_29A26FD44(a1, a2) & 1) != 0 || (sub_29A267FB0(a1, a2) & 1) != 0 || (sub_29A269668(a1, a2) & 1) != 0 || (sub_29A26FE20(a1, a2) & 1) != 0 || (sub_29A26FEFC(a1, a2) & 1) != 0 || (sub_29A268F08(a1, a2) & 1) != 0 || (sub_29A26FFD8(a1, a2) & 1) != 0 || (sub_29A2688EC(a1, a2) & 1) != 0 || (sub_29A26D61C(a1, a2) & 1) != 0 || (sub_29A26C3B4(a1, a2) & 1) != 0 || (sub_29A2700A8(a1, a2) & 1) != 0 || (sub_29A26A8C8(a1, a2) & 1) != 0 || (sub_29A26DF0C(a1, a2) & 1) != 0 || (sub_29A270184(a1, a2) & 1) != 0 || (sub_29A26EB50(a1, a2) & 1) != 0 || (sub_29A270260(a1, a2) & 1) != 0 || (sub_29A26BD40(a1, a2) & 1) != 0 || (sub_29A26BC18(a1, a2))
  {
    return 1;
  }

  return sub_29A27033C(a1, a2);
}

void sub_29A26F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A26F214(uint64_t a1, uint64_t *a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A26F298(a1);
  v6 = v5;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
    pxrInternal__aapl__pxrReserved__::TsSpline::SetCurveType(a2 + 148, 0);
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v6;
}

void sub_29A26F288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F298(uint64_t a1)
{
  if (sub_29A230B3C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F2EC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26F374(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2542E4(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26F364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F374(uint64_t a1)
{
  if (sub_29A230E04(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F3C8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26F454(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 39)
    {
      pxrInternal__aapl__pxrReserved__::TsKnot::SetNextInterpolation(a2 + 1240, 3);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26F444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F454(uint64_t a1)
{
  if (sub_29A230EFC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F4A8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26F534(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 3)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Cu);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26F524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F534(uint64_t a1)
{
  if (sub_29A231200(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F588(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26F614(a1);
  v5 = v4;
  if (v4)
  {
    if (*(*(a2 + 264) - 4) == 4)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0xAu);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26F604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F614(uint64_t a1)
{
  if (sub_29A2315F4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F668(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26F6F0(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2548B8(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26F6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F6F0(uint64_t a1)
{
  if (sub_29A23180C(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F744(uint64_t a1, uint64_t *a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A26F7C8(a1);
  v6 = v5;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v4);
    pxrInternal__aapl__pxrReserved__::TsSpline::SetCurveType(a2 + 148, 1);
  }

  else
  {
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return v6;
}

void sub_29A26F7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F7C8(uint64_t a1)
{
  if (sub_29A2318EC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F81C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26F8A4(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A254BC0(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26F894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F8A4(uint64_t a1)
{
  if (sub_29A231BDC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F8F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26F980(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A254D78(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26F970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26F980(uint64_t a1)
{
  if (sub_29A231CC8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26F9D4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26FA5C(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A254F1C(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26FA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26FA5C(uint64_t a1)
{
  if (sub_29A231FB4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26FAB0(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26FB38(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A255118(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26FB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26FB38(uint64_t a1)
{
  if (sub_29A232180(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26FB8C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26FC14(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2552A4(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26FC14(uint64_t a1)
{
  if (sub_29A2325A8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26FC68(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26FCF0(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A25545C(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26FCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26FCF0(uint64_t a1)
{
  if (sub_29A232688(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26FD44(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26FDCC(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A2559B4(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26FDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26FDCC(uint64_t a1)
{
  if (sub_29A232CE0(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26FE20(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26FEA8(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A255BA4(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26FE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26FEA8(uint64_t a1)
{
  if (sub_29A232FE0(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26FEFC(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A26FF84(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A255D3C(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A26FF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A26FF84(uint64_t a1)
{
  if (sub_29A2330CC(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A26FFD8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A270054(a1);
  v5 = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x22u);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A270044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A270054(uint64_t a1)
{
  if (sub_29A2332A4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A2700A8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A270130(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A256004(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A270120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A270130(uint64_t a1)
{
  if (sub_29A2336E8(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A270184(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A27020C(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A256524(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2701FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A27020C(uint64_t a1)
{
  if (sub_29A2339E4(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A270260(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A2702E8(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1;
    sub_29A256734(v9, a2);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2702D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2702E8(uint64_t a1)
{
  if (sub_29A233C10(a1))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    sub_29A230978(a1);
    result = v3;
    *(a1 + 8) = v3;
    *(a1 + 24) = v4;
  }

  return result;
}

uint64_t sub_29A27033C(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  sub_29A233F10(a1);
  v5 = v4;
  if (v4)
  {
    v9[1] = &off_2A20494F0 + 3;
    LODWORD(v9[0]) = 0;
    sub_29A18606C((a2 + 1040), v9);
    sub_29A186B14(v9);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v5;
}

void sub_29A2703F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A270400(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A270470(a1, a2))
  {
    if ((sub_29A270528(a1, a2) & 1) == 0)
    {
      sub_29A273404(a1);
    }

    return 1;
  }

  else
  {

    return sub_29A273524(a1, a2);
  }
}

uint64_t sub_29A270470(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v4 = sub_29A2635D8(a1, a2);
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A270510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A270528(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A270184(a1, a2))
  {
    sub_29A2705A4(a1, a2);
  }

  else if (sub_29A26F2EC(a1, a2))
  {
    sub_29A270A4C(a1, a2);
  }

  else
  {
    result = sub_29A2700A8(a1, a2);
    if (!result)
    {
      return result;
    }

    sub_29A270D80(a1, a2);
  }

  return 1;
}

uint64_t sub_29A2705A4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A26208C(a1, a2) || (sub_29A2705F0(a1, a2) & 1) == 0)
  {
    sub_29A270908(a1);
  }

  return 1;
}

uint64_t sub_29A2705F0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A270678(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A257044(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A270668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A270678(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v2 = a1[1];
  if (v2 == a1[5])
  {
    return 0;
  }

  if (*v2 != 123)
  {
    return 0;
  }

  v5 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v5;
  ++a1[4];
    ;
  }

  sub_29A270740(a1, a2);
  v6 = a1[1];
  if (v6 == a1[5] || *v6 != 125)
  {
    return 0;
  }

  v7 = a1[2] + 1;
  a1[1] = v6 + 1;
  a1[2] = v7;
  ++a1[4];
  return 1;
}

uint64_t sub_29A270740(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = sub_29A2707C4(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return v3;
}

void sub_29A2707B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2707C4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A27081C(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
      sub_29A270890(a1, a2);
    }

    while ((v6 & 1) != 0);
    sub_29A264790(a1);
  }

  return v5;
}

void sub_29A27081C(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  sub_29A268FD8(a1, a2);
  if (v4 && sub_29A268504(a1) && (sub_29A26221C(a1, a2) & 1) == 0)
  {

    sub_29A2630A8(a1, a2);
  }
}

__n128 sub_29A270890(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  if (!sub_29A2646FC(a1) || (sub_29A27081C(a1, a2), (v5 & 1) == 0))
  {
    result = v6;
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

void sub_29A2708F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

void sub_29A270908(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TimeSampleMap>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2709EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A270A4C(uint64_t a1, uint64_t a2)
{
  if (!sub_29A26208C(a1, a2) || (sub_29A270A98(a1, a2) & 1) == 0)
  {
    sub_29A270C3C(a1);
  }

  return 1;
}

uint64_t sub_29A270A98(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A270B20(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A257980(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A270B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A270B20(void *a1, uint64_t a2)
{
  if (sub_29A26221C(a1, a2) & 1) != 0 || (sub_29A26847C(a1, a2))
  {
    return 1;
  }

  return sub_29A270B84(a1, a2);
}

uint64_t sub_29A270B84(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 91)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  sub_29A270BE4(a1, a2);
  return 1;
}

uint64_t sub_29A270BE4(void *a1, uint64_t a2)
{
    ;
  }

  sub_29A26C260(a1, a2);

  return sub_29A262D9C(a1);
}

void sub_29A270C3C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485290;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Assignment, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::ConnectValue>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A2601DC(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A270D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A270D80(uint64_t a1, __n128 *a2)
{
  if (!sub_29A26208C(a1, a2) || (sub_29A270DCC(a1, a2) & 1) == 0)
  {
    sub_29A2732C0(a1);
  }

  return 1;
}

uint64_t sub_29A270DCC(uint64_t a1, __n128 *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A270E54(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A25B49C(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A270E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A270E54(void *a1, __n128 *a2)
{
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 123)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  sub_29A270EB4(a1, a2);
  return 1;
}

uint64_t sub_29A270EB4(void *a1, __n128 *a2)
{
  if ((sub_29A270F04(a1, a2) & 1) == 0)
  {
    sub_29A273160(a1);
  }

  return sub_29A275950(a1);
}

uint64_t sub_29A270F04(void *a1, __n128 *a2)
{
    ;
  }

  v4 = sub_29A270F68(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A270F68(uint64_t a1, __n128 *a2)
{
  v4 = sub_29A270FC0(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A2730E8(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A264790(a1);
  }

  return v4;
}

uint64_t sub_29A270FC0(uint64_t a1, __n128 *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A27103C(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0x1Fu);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A27102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A27103C(uint64_t a1, __n128 *a2)
{
  if (sub_29A26F744(a1, a2) & 1) != 0 || (sub_29A26F214(a1, a2) & 1) != 0 || (sub_29A2710D0(a1, a2) & 1) != 0 || (sub_29A271638(a1, a2) & 1) != 0 || (sub_29A271720(a1, a2))
  {
    return 1;
  }

  return sub_29A271E90(a1, a2);
}

uint64_t sub_29A2710D0(uint64_t a1, __n128 *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v4 = sub_29A271154(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::SetPreExtrapolation(&a2[74], a2 + 75);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v4;
}

void sub_29A271144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A271154(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A26FC68(a1, a2) || !sub_29A268504(a1))
  {
    return 0;
  }

  return sub_29A2711B8(a1, a2);
}

uint64_t sub_29A2711B8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A26F9D4(a1, a2))
  {
    return 1;
  }

  if (sub_29A26F668(a1, a2))
  {
    return 1;
  }

  if (sub_29A26F81C(a1, a2))
  {
    return 1;
  }

  sub_29A27125C(a1, a2);
  if (v4)
  {
    return 1;
  }

  sub_29A2714C4(a1, a2);
  if (v5)
  {
    return 1;
  }

  sub_29A27154C(a1, a2);
  if (v6)
  {
    return 1;
  }

  return sub_29A2715D4(a1, a2);
}

__n128 sub_29A27125C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if (sub_29A26FFD8(a1, a2) && sub_29A27131C(a1) && sub_29A2713BC(a1, a2) && (v5 = *(a1 + 8), v5 != *(a1 + 40)) && *v5 == 41)
  {
    v6 = *(a1 + 16) + 1;
    *(a1 + 8) = v5 + 1;
    *(a1 + 16) = v6;
    ++*(a1 + 32);
  }

  else
  {
    result = v7;
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return result;
}

void sub_29A27130C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A27131C(void *a1)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  v2 = a1[1];
  if (v2 == a1[5] || *v2 != 40)
  {
    return 0;
  }

  v3 = a1[2] + 1;
  a1[1] = v2 + 1;
  a1[2] = v3;
  ++a1[4];
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  return 1;
}

uint64_t sub_29A2713BC(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  sub_29A271438(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A271438(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A26333C(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A263A34(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1;
    sub_29A25869C(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

void sub_29A2714B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A2714C4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A26F8F8(a1, a2) || !sub_29A262838(a1) || (sub_29A26FE20(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A27153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A27154C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!sub_29A26F8F8(a1, a2) || !sub_29A262838(a1) || (sub_29A26FEFC(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
  }

  return result;
}

void sub_29A2715C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2715D4(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A26F8F8(a1, a2) || !sub_29A262838(a1))
  {
    return 0;
  }

  return sub_29A26FAB0(a1, a2);
}

uint64_t sub_29A271638(uint64_t a1, __n128 *a2)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v4 = sub_29A2716BC(a1, a2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::SetPostExtrapolation(&a2[74], a2 + 75);
    pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PopContext(a2, v5);
  }

  else
  {
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
  }

  return v4;
}

void sub_29A2716AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2716BC(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A26FB8C(a1, a2) || !sub_29A268504(a1))
  {
    return 0;
  }

  return sub_29A2711B8(a1, a2);
}

uint64_t sub_29A271720(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  v4 = sub_29A2717A8(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1;
    sub_29A259260(v8, a2);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return v4;
}

void sub_29A271798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2717A8(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  result = sub_29A26F8F8(a1, a2);
  if (result)
  {
    result = sub_29A268504(a1);
    if (result)
    {
      result = sub_29A27131C(a1);
      if (result)
      {
        result = sub_29A2718C8(a1, a2);
        if (result)
        {
          result = sub_29A2719D0(a1);
          if (result)
          {
            result = sub_29A271A70(a1, a2);
            if (result)
            {
              result = sub_29A2719D0(a1);
              if (result)
              {
                result = sub_29A271B78(a1, a2);
                if (result)
                {
                  result = sub_29A2719D0(a1);
                  if (result)
                  {
                    result = sub_29A271C80(a1, a2);
                    if (result)
                    {
                      result = sub_29A2719D0(a1);
                      if (result)
                      {
                        result = sub_29A271D88(a1, a2);
                        if (result)
                        {
                          v5 = a1[1];
                          if (v5 == a1[5] || *v5 != 41)
                          {
                            return 0;
                          }

                          else
                          {
                            v6 = a1[2] + 1;
                            a1[1] = v5 + 1;
                            a1[2] = v6;
                            ++a1[4];
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A2718C8(void *a1, uint64_t a2)
{
  do
  {
      ;
    }
  }

  while ((sub_29A26098C(a1) & 1) != 0);
  sub_29A271944(a1, a2);
  v5 = v4;
  if (v4)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A26098C(a1) & 1) != 0);
  }

  return v5;
}

__n128 sub_29A271944(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  sub_29A26333C(a1, a2);
  if ((v5 & 1) != 0 || (sub_29A263A34(a1), v6))
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = a1;
    sub_29A258BF4(v10, a2, v4);
  }

  else
  {
    result = v8;
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}