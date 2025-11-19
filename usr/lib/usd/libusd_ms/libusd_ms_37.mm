void sub_29A1CBFE4(uint64_t a1)
{
  sub_29A1CE730((a1 + 192));
  sub_29A1CF350((a1 + 96));
  sub_29A1CBF40((a1 + 72));
  sub_29A1CBFA8(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  operator delete(a1);
}

void sub_29A1CC044(int8x8_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v8 = sub_29A1CF4A8(a1, a2, 0);
  if (!v8)
  {
    v8 = sub_29A1CF5A4(a1, a3, 0);
  }

  pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a3, v11);
  *v15 = *v11;
  v16 = v12;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, v11);
    (*(*v8 + 16))(&v9, v8, v11, v15);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    *v11 = v9;
    v12 = v10;
    pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(v11, a4);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    (*(*v8 + 16))(v8, a2, v15);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_29A1CC1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_29A0D2850(&a13);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A1CC204(int8x8_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v8 = sub_29A1CF4A8(a1, a2, 0);
  if (!v8)
  {
    v8 = sub_29A1CF5A4(a1, a3, 0);
  }

  pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a3, v11);
  *v15 = *v11;
  v16 = v12;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, v11);
    (*(*v8 + 24))(&v9, v8, v11, v15);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    *v11 = v9;
    v12 = v10;
    pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(v11, a4);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    (*(*v8 + 24))(v8, a2, v15);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_29A1CC390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_29A0D2850(&a13);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A1CC3C4(void *a1@<X0>, uint64_t a2@<X1>, std::string *p_dst@<X8>)
{
  v20 = a1;
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    memset(&v19, 0, sizeof(v19));
    v16 = 0;
    v17 = 0;
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, &v13);
    __dst.__r_.__value_.__r.__words[0] = &v19;
    __dst.__r_.__value_.__l.__size_ = &v16;
    sub_29A1CFA4C(&__dst, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    sub_29A1CFAD4(&v20, &v19, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__dst, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __dst = v13;
    }

    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v7 = HIBYTE(v18);
      if (v18 < 0)
      {
        v7 = v17;
      }

      if (v7)
      {
        while (1)
        {
          pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(&v16, &v13);
          v11[0] = &v19;
          v11[1] = &v16;
          sub_29A1CFA4C(v11, &v13);
          if (v15 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v13.__r_.__value_.__l.__data_);
          }

          v8 = sub_29A1CFD3C(a1, &__dst);
          if (!v8)
          {
            break;
          }

          (*(*v8 + 16))(&v13);
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }

          v19 = v13;
          v9 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
          if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v9 = v19.__r_.__value_.__l.__size_;
          }

          if (!v9)
          {
            break;
          }

          pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(&__dst, &v19, &v13);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v13;
          v10 = HIBYTE(v18);
          if (v18 < 0)
          {
            v10 = v17;
          }

          if (!v10)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
LABEL_32:
        *p_dst = __dst;
        p_dst = &__dst;
      }
    }

    p_dst->__r_.__value_.__l.__size_ = 0;
    p_dst->__r_.__value_.__r.__words[2] = 0;
    p_dst->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_29A1CFAD4(&v20, a2, p_dst);
  }
}

void sub_29A1CC63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v31 - 41) < 0)
  {
    operator delete(*(v31 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1CC6A4(int8x8_t *a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  v5 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, &v8);
    (*(*v5 + 40))(&__str, v5, &v8);
    std::string::operator=(&v8, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(&v8, &__str);
    *a3 = __str;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = *(*v5 + 40);

    v6(v5, a2);
  }
}

void sub_29A1CC804(void *a1, void **a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  sub_29A1D0C68(v13, a1[6] + 1);
  v6 = a1[1];
  if (*(v6 + 161) == 1)
  {
    v7 = sub_29A1CF760(v6);
    (*(*v7 + 48))(v7, a2, v13[0]);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  for (i = a1[5]; i; i = *i)
  {
    v10 = i[5];
    if (*(v10 + 161) == 1)
    {
      v11 = sub_29A1CF760(v10);
      if (v11)
      {
        (*(*v11 + 48))(v11, a2, v13[0] + 16 * v8);
      }

      ++v8;
    }
  }

  sub_29A1D0BB8(a3, v13);
  v14 = 0;
  v12 = sub_29A0ED084(a1 + 12, &v14);
  v15 = a2;
  sub_29A0A71C8(v12, &v15);
  v15 = v13;
  sub_29A1D0D38(&v15);
}

void sub_29A1CC934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_29A1D0D38(&a14);
  _Unwind_Resume(a1);
}

void sub_29A1CC95C(void *a1, std::string *a2, uint64_t *a3)
{
  if (sub_29A1D0DBC(a3) & 1) != 0 || (sub_29B293680(v26))
  {
    v24 = 0uLL;
    v25 = 0;
    v6 = sub_29A1D1410(a3);
    v7 = *v6;
    *v6 = 0uLL;
    v24 = v7;
    v8 = *(v6 + 16);
    *(v6 + 16) = v25;
    v25 = v8;
    v9 = a1[1];
    if (*(v9 + 161) == 1)
    {
      v10 = sub_29A1CF760(v9);
      (*(*v10 + 56))(v10, a2, v24);
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    for (i = a1[5]; i; i = *i)
    {
      v13 = i[5];
      if (*(v13 + 161) == 1)
      {
        v14 = sub_29A1CF760(v13);
        if (v14)
        {
          (*(*v14 + 56))(v14, a2, v24 + 16 * v11);
        }

        ++v11;
      }
    }

    v15 = sub_29A1D1410(a3);
    v16 = *v15;
    *v15 = v24;
    v24 = v16;
    v17 = *(v15 + 16);
    *(v15 + 16) = v25;
    v25 = v17;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v18 = sub_29A0ED084(a1 + 12, &__p);
    v19 = v18[1];
    if (*v18 == v19)
    {
      v22[0] = "ar/resolver.cpp";
      v22[1] = "_UnbindContext";
      v22[2] = 697;
      v22[3] = "virtual void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_UnbindContext(const ArResolverContext &, VtValue *)";
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::ArResolverContext::GetDebugString(a2, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v22, 1, "No context was bound, cannot unbind context: %s", p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v18[1] = v19 - 8;
    }

    v22[0] = &v24;
    sub_29A1D0D38(v22);
  }
}

void sub_29A1CCB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a17 = &a22;
  sub_29A1D0D38(&a17);
  _Unwind_Resume(a1);
}

void sub_29A1CCBB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v10, 0, sizeof(v10));
  v4 = *(a1 + 8);
  if (*(v4 + 161) == 1)
  {
    v5 = sub_29A1CF760(v4);
    (*(*v5 + 64))(v9);
    sub_29A1D144C(v10, v9);
    v11 = v9;
    sub_29A0176E4(&v11);
  }

  for (i = *(a1 + 40); i; i = *i)
  {
    v7 = i[5];
    if (*(v7 + 161) == 1)
    {
      v8 = sub_29A1CF760(v7);
      if (v8)
      {
        (*(*v8 + 64))(v9);
        sub_29A1D144C(v10, v9);
        v11 = v9;
        sub_29A0176E4(&v11);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::ArResolverContext::ArResolverContext(a2, v10);
  v9[0] = v10;
  sub_29A03AA70(v9);
}

void sub_29A1CCCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_29A0176E4((v14 - 40));
  a10 = &a13;
  sub_29A03AA70(&a10);
  _Unwind_Resume(a1);
}

void sub_29A1CCD1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, v12);
    sub_29A1CCD1C(a1, v12);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v6 = *(a1 + 8);
    if (*(v6 + 161) == 1)
    {
      v7 = sub_29A1CF760(v6);
      (*(*v7 + 72))(v11);
      sub_29A1D144C(v12, v11);
      v16 = v11;
      sub_29A0176E4(&v16);
    }

    for (i = *(a1 + 40); i; i = *i)
    {
      v9 = i[5];
      if (*(v9 + 161) == 1)
      {
        v10 = sub_29A1CF760(v9);
        if (v10)
        {
          (*(*v10 + 72))(v11);
          sub_29A1D144C(v12, v11);
          v16 = v11;
          sub_29A0176E4(&v16);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::ArResolverContext::ArResolverContext(a3, v12);
    v11[0] = v12;
    sub_29A03AA70(v11);
  }
}

void sub_29A1CCE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v13 - 40) = v12;
  sub_29A0176E4((v13 - 40));
  a9 = &a12;
  sub_29A03AA70(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1CCEEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  if (*(result + 161))
  {
    v3 = *(*sub_29A1CF760(result) + 80);

    return v3();
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

_BYTE *sub_29A1CCF6C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result[161] == 1)
  {
    v5 = sub_29A1CF760(result);
    result = (*(*v5 + 88))(v5, a2);
  }

  for (i = *(a1 + 40); i; i = *i)
  {
    result = i[5];
    if (result[161] == 1)
    {
      result = sub_29A1CF760(result);
      if (result)
      {
        result = (*(*result + 88))(result, a2);
      }
    }
  }

  return result;
}

void sub_29A1CD01C(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v12, 0, sizeof(v12));
  v4 = a1[1];
  if (*(v4 + 161) == 1)
  {
    v5 = sub_29A1CF760(v4);
    (*(*v5 + 96))(v11);
    sub_29A1D144C(v12, v11);
    v13 = v11;
    sub_29A0176E4(&v13);
  }

  for (i = a1[5]; i; i = *i)
  {
    v7 = i[5];
    if (*(v7 + 161) == 1)
    {
      v8 = sub_29A1CF760(v7);
      if (v8)
      {
        (*(*v8 + 96))(v11);
        sub_29A1D144C(v12, v11);
        v13 = v11;
        sub_29A0176E4(&v13);
      }
    }
  }

  LOBYTE(v13) = 0;
  v9 = sub_29A0ED084(a1 + 12, &v13);
  v10 = v9[1];
  if (*v9 != v10 && *(v10 - 8))
  {
    sub_29A1D1728(v12);
  }

  pxrInternal__aapl__pxrReserved__::ArResolverContext::ArResolverContext(a2, v12);
  v11[0] = v12;
  sub_29A03AA70(v11);
}

void sub_29A1CD164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_29A0176E4((v14 - 40));
  a10 = &a13;
  sub_29A03AA70(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1CD1B4(int8x8_t *a1, char *a2)
{
  v11 = 0;
  v3 = sub_29A1CF5A4(a1, a2, &v11);
  if (*(v11 + 49) != 1)
  {
    return 0;
  }

  v4 = v3;
  if (!pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    return (*(*v4 + 104))(v4, a2);
  }

  pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, v7);
  v5 = (*(*v4 + 104))(v4, v7);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v5;
}

void sub_29A1CD2A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0D2850(va);
  _Unwind_Resume(a1);
}

void sub_29A1CD2B8(int8x8_t *a1, char *a2)
{
  v3 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner(a2, &v5);
    (*(*v3 + 112))(v3, &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }

    if (v6 < 0)
    {
      operator delete(v5);
    }
  }

  else
  {
    v4 = *(*v3 + 112);

    v4(v3, a2);
  }
}

void sub_29A1CD3C8(int8x8_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[2] = *MEMORY[0x29EDCA608];
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  memset(&v26, 0, sizeof(v26));
  v27[1] = 0;
  v7 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, v15);
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a3, v11);
    if (SHIBYTE(v12) < 0)
    {
      sub_29A008D14(v9, v11[0], v11[1]);
    }

    else
    {
      *v9 = *v11;
      v10 = v12;
    }

    (*(*v7 + 120))(&v19, v7, v15, v9);
    if (SBYTE7(v25[0]) < 0)
    {
      operator delete(v24);
    }

    v24 = *&v19.__r_.__value_.__l.__data_;
    *&v25[0] = *(&v19.__r_.__value_.__l + 2);
    *(&v19.__r_.__value_.__s + 23) = 0;
    v19.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v25[1]) < 0)
    {
      operator delete(*(&v25[0] + 1));
    }

    *(v25 + 8) = v20;
    *(&v25[1] + 1) = v21;
    HIBYTE(v21) = 0;
    LOBYTE(v20) = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v26 = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_29A18606C(v27, v23);
    sub_29A186B14(v23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath(&v26, &v13, &v19);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v26 = v19;
    }

    *a4 = v24;
    *(a4 + 16) = *&v25[0];
    *&v25[0] = 0;
    v24 = 0uLL;
    *(a4 + 24) = *(v25 + 8);
    *(a4 + 40) = *(&v25[1] + 1);
    *(&v25[0] + 1) = 0;
    *&v25[1] = 0;
    *(a4 + 48) = v26;
    *(&v25[1] + 1) = 0;
    memset(&v26, 0, sizeof(v26));
    sub_29A186A3C((a4 + 72), v27);
    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else
  {
    (*(*v7 + 120))(v7, a2, a3);
  }

  sub_29A186B14(v27);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25[1]) < 0)
  {
    operator delete(*(&v25[0] + 1));
  }

  if (SBYTE7(v25[0]) < 0)
  {
    operator delete(v24);
  }
}

void sub_29A1CD700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_29A0D2850(&a15);
  sub_29A0D2850(&a21);
  sub_29A1D18FC(v21 - 144);
  _Unwind_Resume(a1);
}

void sub_29A1CD754(int8x8_t *a1, char *a2, uint64_t a3)
{
  v5 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, v13);
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a3, v7);
    *__p = *v7;
    v12 = v8;
    v7[1] = 0;
    v8 = 0;
    v7[0] = 0;
    (*(*v5 + 128))(v5, v13, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    v6 = *(*v5 + 128);

    v6(v5, a2, a3);
  }
}

void sub_29A1CD8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_29A0D2850(&a9);
  sub_29A0D2850(&a22);
  _Unwind_Resume(a1);
}

void sub_29A1CD8E8(int8x8_t *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner(a2, v9);
    v7 = sub_29A1CFD3C(a1, v9);
    if (v7)
    {
      (*(*v7 + 24))(v7, v9, &__p);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  else
  {
    v8 = *(*v6 + 136);

    v8(v6, a2);
  }
}

uint64_t sub_29A1CDA14(int8x8_t *a1, char *a2, uint64_t a3)
{
  v5 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    if (a3)
    {
      MEMORY[0x29C2C1A60](a3, "Cannot open package-relative paths for write");
    }

    return 0;
  }

  else
  {
    v7 = *(*v5 + 144);

    return v7(v5, a2, a3);
  }
}

void sub_29A1CDABC(int8x8_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    v9[0] = "ar/resolver.cpp";
    v9[1] = "_OpenAssetForWrite";
    v9[2] = 920;
    v9[3] = "virtual std::shared_ptr<ArWritableAsset> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_OpenAssetForWrite(const ArResolvedPath &, WriteMode) const";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Cannot open package-relative paths for write");
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = *(*v7 + 152);

    v8(v7, a2, a3);
  }
}

void sub_29A1CDBA0(void *a1, uint64_t *a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v38 = 0;
  v39 = 0uLL;
  if (sub_29A1D0DBC(a2))
  {
    v4 = sub_29A1D1410(a2);
    v5 = *v4;
    *v4 = v38;
    v38 = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v39;
    v39 = v6;
    v7 = v6;
  }

  else
  {
    sub_29A1D1958(&v38, a1[6] + ((a1[10] - a1[9]) >> 4) + 2);
    v5 = v38;
    v7 = v39;
  }

  if (a1[6] + ((a1[10] - a1[9]) >> 4) + 2 != (v7 - v5) >> 4)
  {
    v40 = "ar/resolver.cpp";
    v41 = "_BeginCacheScope";
    v42 = 963;
    v43 = "virtual void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_BeginCacheScope(VtValue *)";
    LOBYTE(v44) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "cacheData.size() == 2 + _packageResolvers.size() + _uriResolvers.size()", 0);
  }

  v8 = a1[1];
  if (*(v8 + 162) == 1)
  {
    v9 = sub_29A1CF760(v8);
    (*(*v9 + 160))(v9, v38);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  for (i = a1[5]; i; i = *i)
  {
    v12 = i[5];
    if (*(v12 + 162) == 1)
    {
      v13 = sub_29A1CF760(v12);
      if (v13)
      {
        (*(*v13 + 160))(v13, v38 + 16 * v10);
      }

      ++v10;
    }
  }

  v14 = a1[10] - a1[9];
  if (v14)
  {
    v15 = 0;
    v16 = v14 >> 4;
    v17 = 16 * v10;
    do
    {
      v18 = sub_29A1D07FC(*(a1[9] + v15));
      if (v18)
      {
        (*(*v18 + 32))(v18, v38 + v17 + v15);
      }

      ++v10;
      v15 += 16;
      --v16;
    }

    while (v16);
  }

  if (!v38 || (v19 = (v38 + 16 * v10), *(v19 + 1)) && (sub_29A1D1C74(v19) & 1) == 0)
  {
    v40 = "ar/threadLocalScopedCache.h";
    v41 = "BeginCacheScope";
    v42 = 62;
    v43 = "void pxrInternal__aapl__pxrReserved__::ArThreadLocalScopedCache<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_Cache>::BeginCacheScope(VtValue *) [CachedType = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_Cache]";
    LOBYTE(v44) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v40, 1, "Unexpected cache scope data");
    goto LABEL_32;
  }

  LOBYTE(v40) = 0;
  v20 = sub_29A0ED084(a1 + 24, &v40);
  if (sub_29A1D1C74(v19))
  {
    v21 = *(v19 + 1);
    if ((v21 & 4) != 0)
    {
      v22 = (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
    }

    else
    {
      v22 = *v19;
    }
  }

  else
  {
    v23 = v20[1];
    if (*v20 == v23)
    {
      v25 = operator new(0x260uLL);
      *(v25 + 1) = 0;
      *(v25 + 2) = 0;
      *v25 = &unk_2A2046568;
      v26 = v25 + 24;
      bzero(v25 + 24, 0x248uLL);
      __dmb(0xBu);
      *(v25 + 3) = 0;
      __dmb(0xBu);
      *(v25 + 68) = 0;
      *(v25 + 552) = 0u;
      *(v25 + 568) = 0u;
      *(v25 + 584) = 0u;
      *(v25 + 4) = v25 + 552;
      __dmb(0xBu);
      *(v25 + 3) = 1;
      v27 = v20[1];
      v28 = v20[2];
      if (v27 >= v28)
      {
        v30 = *v20;
        v31 = v27 - *v20;
        v32 = v31 >> 4;
        v33 = (v31 >> 4) + 1;
        if (v33 >> 60)
        {
          sub_29A00C9A4();
        }

        if ((v28 - v30) >> 3 > v33)
        {
          v33 = (v28 - v30) >> 3;
        }

        if ((v28 - v30) >= 0x7FFFFFFFFFFFFFF0)
        {
          v34 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        v44 = v20;
        if (v34)
        {
          v37 = v31;
          if (v34 >> 60)
          {
            sub_29A00C8B8();
          }

          v35 = operator new(16 * v34);
          v31 = v37;
        }

        else
        {
          v35 = 0;
        }

        v36 = &v35[16 * v32];
        *v36 = v26;
        *(v36 + 1) = v25;
        v29 = v36 + 16;
        memcpy(v35, v30, v31);
        *v20 = v35;
        v40 = v30;
        v41 = v30;
        v20[1] = v29;
        v42 = v30;
        v20[2] = &v35[16 * v34];
        v43 = v28;
        sub_29A1CEF7C(&v40);
      }

      else
      {
        *v27 = v26;
        *(v27 + 1) = v25;
        v29 = v27 + 16;
      }

      v20[1] = v29;
      goto LABEL_30;
    }

    v22 = (v23 - 16);
  }

  sub_29A1D1CF8(v20, v22);
LABEL_30:
  v24 = v20[1];
  sub_29A186978(&v40, v19);
  sub_29A1D1FD8(v19, v24 - 2);
  if (v41)
  {
    (*(v41 + 4))(&v40);
  }

LABEL_32:
  sub_29A1D0BB8(a2, &v38);
  v40 = &v38;
  sub_29A1D0D38(&v40);
}

void sub_29A1CE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_29A1D0D38(&a14);
  _Unwind_Resume(a1);
}

void sub_29A1CE0A0(void *a1, uint64_t *a2)
{
  if (sub_29A1D0DBC(a2) & 1) != 0 || (sub_29B2936CC(v23))
  {
    v21 = 0uLL;
    v22 = 0;
    v4 = sub_29A1D1410(a2);
    v5 = *v4;
    *v4 = 0uLL;
    v21 = v5;
    v6 = *(v4 + 16);
    *(v4 + 16) = v22;
    v22 = v6;
    v7 = a1[1];
    if (*(v7 + 162) == 1)
    {
      v8 = sub_29A1CF760(v7);
      (*(*v8 + 168))(v8, v21);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    for (i = a1[5]; i; i = *i)
    {
      v11 = i[5];
      if (*(v11 + 162) == 1)
      {
        v12 = sub_29A1CF760(v11);
        if (v12)
        {
          (*(*v12 + 168))(v12, v21 + 16 * v9);
        }

        ++v9;
      }
    }

    v13 = a1[10] - a1[9];
    if (v13)
    {
      v14 = 0;
      v15 = v13 >> 4;
      v16 = 16 * v9;
      do
      {
        v17 = sub_29A1D07FC(*(a1[9] + v14));
        if (v17)
        {
          (*(*v17 + 40))(v17, v21 + v16 + v14);
        }

        v14 += 16;
        --v15;
      }

      while (v15);
    }

    LOBYTE(v24[0]) = 0;
    v18 = sub_29A0ED084(a1 + 24, v24);
    v19 = v18[1];
    if (*v18 == v19)
    {
      v24[0] = "ar/threadLocalScopedCache.h";
      v24[1] = "EndCacheScope";
      v24[2] = 84;
      v24[3] = "void pxrInternal__aapl__pxrReserved__::ArThreadLocalScopedCache<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_Cache>::EndCacheScope(VtValue *) [CachedType = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_Cache]";
      v25 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v24, "!cacheStack.empty()", 0))
      {
LABEL_20:
        sub_29A1D0BB8(a2, &v21);
        v24[0] = &v21;
        sub_29A1D0D38(v24);
        return;
      }

      v19 = v18[1];
    }

    v20 = *(v19 - 8);
    if (v20)
    {
      sub_29A014BEC(v20);
    }

    v18[1] = v19 - 16;
    goto LABEL_20;
  }
}

void sub_29A1CE2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 56) = &a9;
  sub_29A1D0D38((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_29A1CE2F4(int8x8_t *a1, char *a2)
{
  v3 = sub_29A1CF5A4(a1, a2, 0);
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter(a2, v7);
    v4 = (*(*v3 + 176))(v3, v7);
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    return v4;
  }

  else
  {
    v6 = *(*v3 + 176);

    return v6(v3, a2);
  }
}

void *sub_29A1CE3F0(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A2046110;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A2046170;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A1CE64C;
  return a1;
}

uint64_t sub_29A1CE4BC(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 24) = 1;
  return v5;
}

void sub_29A1CE580(void *a1)
{
  v1 = sub_29A1CF350(a1);

  operator delete(v1);
}

void *sub_29A1CE5A8()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A2046170;
  return result;
}

uint64_t sub_29A1CE5E0(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29A1CE640(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

uint64_t sub_29A1CE66C(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, sub_29A1CE938, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 24) = 1;
  return v5;
}

void *sub_29A1CE730(void *a1)
{
  *a1 = &unk_2A2046208;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  v3 = a1[8];
  v5 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 5), sub_29A1CE948);
  v6 = a1[6];
  if (v5 > v6)
  {
    v7 = v3 - 1;
    do
    {
      v8 = v7[v5];
      v7[v5] = 0;
      if (v8 >= 0x40)
      {
        tbb::internal::NFS_Free(v8, v4);
      }

      --v5;
    }

    while (v5 > v6);
    v5 = v6;
  }

  v9 = *v3;
  if (*v3 >= 0x40)
  {
    for (; v5; --v5)
    {
      v3[v5 - 1] = 0;
    }

    tbb::internal::NFS_Free(v9, v4);
  }

  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 5), v4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

void sub_29A1CE85C(void *a1)
{
  v1 = sub_29A1CE730(a1);

  operator delete(v1);
}

void *sub_29A1CE884()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A2046268;
  return result;
}

uint64_t sub_29A1CE8BC(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29A1CE91C(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_29A1CE938(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void sub_29A1CE948(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = a1 + (v2 << 7);
      if (*(v4 - 104) == 1)
      {
        v5 = *(v4 - 128);
        if (v5)
        {
          v6 = *(v4 - 120);
          v7 = *(v4 - 128);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 8);
              if (v8)
              {
                sub_29A014BEC(v8);
              }

              v6 -= 16;
            }

            while (v6 != v5);
            v7 = *(v4 - 128);
          }

          *(v4 - 120) = v5;
          operator delete(v7);
        }

        *(v4 - 104) = 0;
      }

      --v2;
    }

    while (v2);
  }
}

BOOL sub_29A1CE9DC(int a1)
{
  v2 = sub_29A1C3D80();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A1C3D80();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), "AR_RESOLVER_INIT");
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t sub_29A1CEA3C(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      if (v3[2] == *a2)
      {
        sub_29A1CA078(a2, *(a1 + 16), &v10);
        if (v10)
        {
          sub_29A1CEBC0(&v9, v10);
          v8 = operator new(0xC0uLL);
          v8[1] = 0;
          v8[2] = 0;
          *v8 = &unk_2A2046300;
          sub_29B293238(v8 + 3, v3);
        }
      }

      v3 += 7;
    }

    while (v3 != v4);
  }

  return 0;
}

void sub_29A1CEB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(a1);
}

void sub_29A1CEB78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2046300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29A1CEBC0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2046350;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1CEC18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B293718(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1CEC34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1CEC5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A1CEC8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20463A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1CECCC(unsigned int *a1)
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
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, *a1);
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

void sub_29A1CEEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1CEEEC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A099388(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_29A1CEF38(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_29A099388((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_29A1CEF7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_29A014BEC(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_29A1CEFDC()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "extensions", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "uriSchemes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "implementsContexts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "implementsScopedCaches", 0);
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
  atomic_compare_exchange_strong(&qword_2A173F640, &v12, v0);
  if (v12)
  {
    v13 = sub_29A1CF24C(v0);
    operator delete(v13);
    return atomic_load(&qword_2A173F640);
  }

  return v0;
}

void sub_29A1CF190(_Unwind_Exception *a1)
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

uint64_t sub_29A1CF24C(uint64_t a1)
{
  v6 = (a1 + 32);
  sub_29A124AB0(&v6);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A1CF308(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20463C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29A1CF350(void *a1)
{
  *a1 = &unk_2A2046110;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A1CF3EC(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29A1CF3EC(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::ArResolverContext const*>>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
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

uint64_t sub_29A1CF4A8(int8x8_t *a1, char *a2, void *a3)
{
  if (!*&a1[6])
  {
    return 0;
  }

  v6 = a2[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v10 = a1[8];
    v9 = *a2;
    v8 = (*&v10 + 1) < *(a2 + 1) ? *&v10 + 1 : *(a2 + 1);
  }

  else
  {
    v7 = a1[8];
    v8 = *&v7 + 1 < v6 ? *&v7 + 1 : a2[23];
    v9 = a2;
  }

  v11 = &v9[v8];
  v12 = memchr(v9, 58, v8);
  if (!v12 || v12 == v11)
  {
    return 0;
  }

  if ((v6 & 0x80000000) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  sub_29A0D2BE0(__p, v15, v12, v12 - v15);
  v14 = sub_29A1CF600(a1, __p, a3);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

void sub_29A1CF588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1CF5A4(int8x8_t *a1, char *a2, void *a3)
{
  result = sub_29A1CF4A8(a1, a2, a3);
  if (!result)
  {
    if (a3)
    {
      *a3 = *&a1[1] + 112;
    }

    v6 = a1[1];

    return sub_29A1CF760(v6);
  }

  return result;
}

uint64_t sub_29A1CF600(int8x8_t *a1, unsigned __int8 *a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(a2, __p);
  v5 = sub_29A12A708(&a1[3], __p);
  v6 = a1[4];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v6)
    {
      v10 = v5 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v5;
  }

  v11 = *(*&a1[3] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_23;
  }

  while (1)
  {
    v13 = v12[1];
    if (v7 == v13)
    {
      if (sub_29A0EC4B8(&a1[3], v12 + 2, __p))
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v10)
    {
      break;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v12 = 0;
LABEL_20:
  if (v12)
  {
    v14 = v12 + 5;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (!v14)
    {
      return 0;
    }

LABEL_25:
    if (a3)
    {
      *a3 = *v14 + 112;
    }

    return sub_29A1CF760(*v14);
  }

  else
  {
    if (v14)
    {
      goto LABEL_25;
    }

    return 0;
  }
}

uint64_t sub_29A1CF760(uint64_t a1)
{
  v1 = atomic_load((a1 + 24));
  if ((v1 & 1) == 0)
  {
    sub_29A1CF840(a1);
  }

  return *(a1 + 96);
}

void sub_29A1CF994(void *a1, uint64_t a2)
{
  sub_29A1CEBC0(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void *sub_29A1CF9DC(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void *sub_29A1CFA4C(void *a1, __int128 *a2)
{
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = a1[1];
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 5);
  *v6 = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

void sub_29A1CFAD4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v28 = 0;
  v6 = sub_29A1CF5A4(v5, a2, &v28);
  if (*(v28 + 50))
  {
    goto LABEL_9;
  }

  LOBYTE(v20[0]) = 0;
  v7 = sub_29A0ED084((v5 + 192), v20);
  v8 = v7[1];
  if (*v7 == v8)
  {
    goto LABEL_9;
  }

  v10 = *(v8 - 16);
  v9 = *(v8 - 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v10)
    {
      sub_29A014BEC(v9);
LABEL_9:
      (*(*v6 + 32))(v6, a2);
      return;
    }
  }

  else if (!v10)
  {
    goto LABEL_9;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v15, *a2, *(a2 + 8));
  }

  else
  {
    *v15 = *a2;
    v16 = *(a2 + 16);
  }

  *v20 = *v15;
  v11 = v16;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v17 = 0;
  v21 = v11;
  __p = 0;
  v23 = 0;
  v24 = 0;
  v18 = 0;
  v19 = 0;
  v12 = sub_29A1CFECC(v10, &v25, v20);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_22:
    (*(*v6 + 32))(v20, v6, a2);
    v13 = v27;
    if (*(v27 + 63) < 0)
    {
      operator delete(*(v27 + 40));
    }

    *(v13 + 40) = *v20;
    *(v13 + 56) = v21;
    goto LABEL_25;
  }

  operator delete(v15[0]);
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (*(v27 + 63) < 0)
  {
    sub_29A008D14(a3, *(v27 + 40), *(v27 + 48));
  }

  else
  {
    v14 = *(v27 + 40);
    *(a3 + 16) = *(v27 + 56);
    *a3 = v14;
  }

  v27 = 0;
  sub_29A0F845C(&v25);
  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A1CFCF8(_Unwind_Exception *a1)
{
  *(v2 - 72) = 0;
  sub_29A0F845C((v2 - 88));
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A1CFD3C(void *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner(a2, v14);
  *v18 = *v14;
  v19 = v15;
  v14[1] = 0;
  v15 = 0;
  v14[0] = 0;
  if (v17 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }
  }

  (*(*a1 + 112))(v14, a1, v18);
  v3 = a1[9];
  v4 = a1[10] - v3;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = v14[1];
    }

    if (v15 >= 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = v14[0];
    }

    while (1)
    {
      v8 = *v3;
      v9 = *(*v3 + 135);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(*v3 + 120);
      }

      if (v9 == v6)
      {
        v11 = v10 >= 0 ? (v8 + 112) : *(v8 + 112);
        if (!memcmp(v11, v7, v6))
        {
          break;
        }
      }

      v3 += 2;
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

    v12 = sub_29A1D07FC(v8);
  }

  else
  {
LABEL_19:
    v12 = 0;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return v12;
}

void sub_29A1CFE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1CFECC(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29A1CFF4C(a1, 1, a3, (a3 + 24), a2, 1, sub_29A1D0288, 0);
}

uint64_t sub_29A1CFF4C(uint64_t *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, _BYTE *, uint64_t), void *a8)
{
  v13 = *a3;
  if (a3[23] >= 0)
  {
    v13 = a3;
  }

  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = v13 + 1;
    do
    {
      v15 = (0x9E3779B97F4A7C15 * v15) ^ v14;
      v17 = *v16++;
      v14 = v17;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  v18 = 0;
  v19 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A1D0448(&v34, a1, v19 & v15, 0);
    v20 = (v36 + 16);
    do
    {
      v20 = *v20;
    }

    while (v20 >= 0x40 && !sub_29A1B00DC(a3, v20 + 2));
    if (a2)
    {
      break;
    }

    if (v20)
    {
      v21 = 1;
LABEL_17:
      v22 = a8;
      if (!a5)
      {
        goto LABEL_52;
      }

LABEL_18:
      if ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v23 = 2;
        while ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v24 = v23 < 16;
          v23 *= 2;
          if (!v24)
          {
            v25 = v34;
            v34 = 0;
            if (v35 == 1)
            {
LABEL_23:
              v26 = *v25;
              v27 = *v25 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v28 = v26;
                atomic_compare_exchange_strong(v25, &v28, v27);
                if (v28 == v26)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v25, 0, memory_order_relaxed) != v26)
                {
                  sched_yield();
                  goto LABEL_23;
                }
              }
            }

            else
            {
              atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v29 = *a1;
            __dmb(0xBu);
            a8 = v22;
            goto LABEL_38;
          }
        }
      }

      sub_29A0F845C(&v34);
      *(a5 + 16) = v20;
      *(a5 + 24) = v15;
      if (!v18)
      {
        goto LABEL_49;
      }

LABEL_48:
      sub_29A1D028C(a1, v18, (a1 + 72), 0);
      goto LABEL_49;
    }

    v29 = *a1;
    __dmb(0xBu);
    if (v19 == v29 || !sub_29A108BB8(a1, v15, v19, v29))
    {
      sub_29A0F845C(&v34);
      return 0;
    }

LABEL_38:
    sub_29A0F845C(&v34);
    v19 = v29;
  }

  if (v20)
  {
LABEL_14:
    v21 = 0;
    goto LABEL_17;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v35 & 1) == 0)
  {
    v35 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v34) & 1) == 0)
    {
      v20 = (v36 + 16);
      while (1)
      {
        v20 = *v20;
        if (v20 < 0x40)
        {
          break;
        }

        if (sub_29A1B00DC(a3, v20 + 2))
        {
          if (v35 != 1)
          {
            goto LABEL_14;
          }

          v21 = 0;
          atomic_fetch_add(v34, 3uLL);
          v35 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  v29 = *a1;
  __dmb(0xBu);
  if (v19 != v29)
  {
    if (!sub_29A108BB8(a1, v15, v19, v29))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v29 = v19;
LABEL_40:
  v18 = sub_29A108650(a1, v36, a8, v29);
  v22 = 0;
  v21 = 1;
  v20 = a8;
  if (a5)
  {
    goto LABEL_18;
  }

LABEL_52:
  sub_29A0F845C(&v34);
  if (v18)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (v22)
  {
    sub_29A1D0414(a1, v22);
  }

  return v21;
}

void sub_29A1D0268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29A1D028C(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29A1D0448(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A0EC0EC(a3);
  v9 = *(a2 + 8 * v8 + 8) + 24 * (a3 - ((1 << v8) & 0x1FFFFFFFFFFFFFFELL));
  *(a1 + 16) = v9;
  v10 = *(v9 + 16);
  __dmb(0xBu);
  if (v10 == 3 && (v11 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v11)))
  {
    *a1 = v11;
    v12 = *(a1 + 16);
    if (*(v12 + 16) == 3)
    {
      sub_29A1D053C(a2, v12, a3);
    }
  }

  else
  {
    v13 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v13;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v13);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v13);
    }
  }

  return a1;
}

void *sub_29A1D053C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29A1D0448(&v20, a1, v10 & a3, 0);
  v11 = (v22 + 16);
  v12 = *(v22 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while (1)
    {
      v14 = *(v12 + 39) >= 0 ? (v12 + 16) : *(v12 + 16);
      v15 = *v14;
      if (*v14)
      {
        v16 = 0;
        v17 = v14 + 1;
        do
        {
          v16 = (0x9E3779B97F4A7C15 * v16) ^ v15;
          v18 = *v17++;
          v15 = v18;
        }

        while (v18);
      }

      else
      {
        v16 = 0;
      }

      if ((v16 & v13) != a3)
      {
        break;
      }

      if (v21 & 1) != 0 || (v21 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v20)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_32:
        v12 = *v11;
        if (*v11 <= 0x3F)
        {
          return sub_29A0F845C(&v20);
        }
      }

      else
      {
        v11 = (v22 + 16);
        v12 = *(v22 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v20);
        }
      }
    }

    v11 = v12;
    goto LABEL_32;
  }

  return sub_29A0F845C(&v20);
}

void sub_29A1D06FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1D0710(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v7 = tbb::internal::allocate_via_handler_v3(0x40);
  v12[0] = v7;
  v12[1] = a1;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = (v7 + 16);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v7 + 32) = *(a2 + 2);
    *v8 = v9;
  }

  v10 = *a3;
  *(v7 + 56) = *(a3 + 2);
  *(v7 + 40) = v10;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v12[0] = 0;
  sub_29A1D07C8(v12, v6);
  return v7;
}

uint64_t *sub_29A1D07C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

uint64_t sub_29A1D07FC(uint64_t a1)
{
  v1 = atomic_load((a1 + 24));
  if ((v1 & 1) == 0)
  {
    sub_29A17F138(a1);
  }

  return *(a1 + 96);
}

void sub_29A1D09F4(void *a1, uint64_t a2)
{
  sub_29A1D0AAC(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void *sub_29A1D0A3C(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void *sub_29A1D0AAC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2046418;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1D0B04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B293774(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D0B20(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1D0B48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A1D0B78(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2046468))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A1D0BB8(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A1D0DBC(a1) & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    sub_29A1D0E48(a1, v8);
    v9 = v8;
    sub_29A1D0D38(&v9);
  }

  result = sub_29A1D1410(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void sub_29A1D0C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1D0D38(va);
  _Unwind_Resume(a1);
}

void *sub_29A1D0C68(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = 0;
    v5 = a1[1];
    v6 = v5 + 16 * a2;
    v7 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
    v8 = vdupq_n_s64(v7);
    v9 = (v5 + 24);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v4), xmmword_29B430070)));
      if (v10.i8[0])
      {
        *(v9 - 2) = 0;
      }

      if (v10.i8[4])
      {
        *v9 = 0;
      }

      v4 += 2;
      v9 += 4;
    }

    while (v7 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2 != v4);
    a1[1] = v6;
  }

  return a1;
}

void sub_29A1D0D38(void ***a1)
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
        v4 = sub_29A186B14(v4 - 16);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A1D0DBC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4831DELL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2046480);
}

uint64_t sub_29A1D0E48(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A2046490;
  sub_29A1D1398(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A1D0EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1D0F18(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A1D0F38(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D1060(a1);
}

void *sub_29A1D1048@<X0>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2046490;
  return sub_29A1D1398(a2, v2);
}

void sub_29A1D1060(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A1D0D38(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A1D10B8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 4;
    do
    {
      Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v2);
      if (v4)
      {
        Hash += (Hash + v5 + (Hash + v5) * (Hash + v5)) >> 1;
      }

      v2 = (v2 + 16);
      v4 = 1;
      v5 = Hash;
      --v6;
    }

    while (v6);
    v3 = 0x9E3779B97F4A7C55 * Hash;
  }

  return bswap64(v3);
}

uint64_t sub_29A1D1138(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (*a1 != v2)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator==();
  }

  return 1;
}

uint64_t sub_29A1D11AC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29A1D1214(*a1, &v4);
    sub_29A1D1060(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1D1060(&v4);
  }

  return *a1;
}

void *sub_29A1D1214@<X0>(void **a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29A1D128C(v4, *a1, a1[1], (a1[1] - *a1) >> 4);
  atomic_store(0, v4 + 6);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A1D128C(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A1D1314(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A1D12F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A1D0D38(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A1D1314(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29A186EF4(a4, v6);
      v6 += 2;
      a4 += 2;
      v7 -= 16;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29A1D1374(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 16;
    do
    {
      v4 = sub_29A186B14(v4) - 16;
      v2 += 16;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1D1398(unsigned int **a1, void **a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29A1D128C(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A1D1410(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B293798(v2, a1);
  }

  return sub_29A1D11AC(a1);
}

uint64_t sub_29A1D144C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A1D14AC(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = (v3 + 3);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A1D14AC(uint64_t a1, uint64_t a2)
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

  v8 = &v7[3 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[3 * v6];
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = *a2;
  v8[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v17 = v8 + 3;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  sub_29A1D15EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A03AE68(&v15);
  return v14;
}

void sub_29A1D15D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A03AE68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1D15EC(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      sub_29A0176E4(&v12);
      v5 += 3;
    }
  }

  return sub_29A1D16A4(v8);
}

uint64_t sub_29A1D16A4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A1D16DC(a1);
  }

  return a1;
}

void sub_29A1D16DC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_29A0176E4(&v3);
  }
}

void sub_29A1D1728(void *a1)
{
  if (a1[1] < a1[2])
  {
    sub_29A1D1768(a1);
  }

  sub_29A1D17BC(a1);
}

void sub_29A1D1768(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void sub_29A1D17BC(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    v10 = a1;
    if (v3)
    {
      v4 = sub_29A012C48(a1, v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = &v4[24 * v1];
    v6 = v4;
    v7 = v5;
    v8 = v5;
    v9 = &v4[24 * v3];
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
  }

  sub_29A00C9A4();
}

void sub_29A1D18E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A03AE68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1D18FC(uint64_t a1)
{
  sub_29A186B14(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A1D1958(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = (result - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (result != v6)
      {
        result = sub_29A186B14((result - 2));
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return sub_29A1D19D8(a1, v5);
  }

  return result;
}

void *sub_29A1D19D8(void *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v5 + 16 * a2;
      v14 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = (v5 + 24);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_29B430070)));
        if (v17.i8[0])
        {
          *(v16 - 2) = 0;
        }

        if (v17.i8[4])
        {
          *v16 = 0;
        }

        v12 += 2;
        v16 += 4;
      }

      while (v14 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = result[1];
    }

    result[1] = v13;
  }

  else
  {
    v6 = v5 - *result;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 4;
    v9 = v4 - *result;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v32 = result;
    if (v10)
    {
      v11 = sub_29A017BD4(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v18 = 0;
    v19 = &v11[16 * v8];
    v29 = v11;
    v30 = v19;
    *(&v31 + 1) = &v11[16 * v10];
    v20 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
    v21 = v20 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
    v22 = vdupq_n_s64(v20);
    v23 = v19 + 24;
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v18), xmmword_29B430070)));
      if (v24.i8[0])
      {
        *(v23 - 2) = 0;
      }

      if (v24.i8[4])
      {
        *v23 = 0;
      }

      v18 += 2;
      v23 += 4;
    }

    while (v21 != v18);
    *&v31 = &v19[16 * a2];
    v25 = *(v3 + 8);
    v26 = &v19[*v3 - v25];
    sub_29A1D1BB4(v3, *v3, v25, v26);
    v27 = *v3;
    *v3 = v26;
    v28 = *(v3 + 16);
    *(v3 + 8) = v31;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    v29 = v27;
    v30 = v27;
    return sub_29A1D1C24(&v29);
  }

  return result;
}

void sub_29A1D1BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1D1C24(va);
  _Unwind_Resume(a1);
}

void sub_29A1D1BB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A186A3C(a4, v7);
      v7 += 2;
      a4 = v8 + 2;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A186B14(v6);
      v6 += 16;
    }
  }
}

uint64_t sub_29A1D1C24(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_29A186B14(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A1D1C74(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN32pxrInternal__aapl__pxrReserved__12_GLOBAL__N_120_DispatchingResolver6_CacheEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2046548);
}

uint64_t sub_29A1D1CF8(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = *result;
    v9 = v4 - *result;
    v10 = v9 >> 4;
    v11 = (v9 >> 4) + 1;
    if (v11 >> 60)
    {
      sub_29A00C9A4();
    }

    if ((v5 - v8) >> 3 > v11)
    {
      v11 = (v5 - v8) >> 3;
    }

    if (v5 - v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v18[4] = result;
    if (v12)
    {
      if (v12 >> 60)
      {
        sub_29A00C8B8();
      }

      v13 = operator new(16 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v10];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
      v8 = *v3;
      v5 = *(v3 + 16);
      v9 = *(v3 + 8) - *v3;
      v10 = v9 >> 4;
    }

    v16 = &v13[16 * v12];
    v7 = v14 + 16;
    v17 = &v14[-16 * v10];
    memcpy(v17, v8, v9);
    *v3 = v17;
    *(v3 + 8) = v7;
    *(v3 + 16) = v16;
    v18[2] = v8;
    v18[3] = v5;
    v18[0] = v8;
    v18[1] = v8;
    result = sub_29A1CEF7C(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(v3 + 8) = v7;
  return result;
}

void sub_29A1D1E50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2046568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1D1EB8(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29A1D0414(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3FuLL);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29A1D1F84(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

uint64_t sub_29A1D1F84(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

void *sub_29A1D1FD8(void *a1, void *a2)
{
  a1[1] = &off_2A20465A8;
  result = operator new(0x18uLL);
  v5 = a2[1];
  *result = *a2;
  *(result + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  atomic_store(0, result + 4);
  *a1 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A1D203C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A1D205C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void sub_29A1D2100(uint64_t *a1)
{
  v3 = atomic_load((*a1 + 16));
  if (v3 != 1)
  {
    v9[5] = v1;
    v9[6] = v2;
    v5 = *a1;
    v6 = operator new(0x18uLL);
    v7 = v6;
    v8 = v5[1];
    *v6 = *v5;
    *(v6 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v6 + 4);
    atomic_fetch_add_explicit(v6 + 4, 1u, memory_order_relaxed);
    sub_29A1D2264(a1);
    *a1 = v7;
    v9[0] = 0;
    sub_29A1D2264(v9);
  }
}

void *sub_29A1D2254@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29A1D1FD8(a2, v2);
}

void sub_29A1D2264(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    operator delete(v1);
  }
}

void **sub_29A1D22CC(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A012C48(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = &v4[3 * v6];
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29A1D15EC(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A03AE68(&v12);
  }

  return result;
}

void sub_29A1D2394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A03AE68(va);
  _Unwind_Resume(a1);
}

void sub_29A1D23A8(void *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    sub_29B29348C(a1[1], a2);
  }

  v5 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
  if ((v5 + 1) <= 0x492492492492492)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + 1)
    {
      v7 = v5 + 1;
    }

    if (v6 >= 0x249249249249249)
    {
      v8 = 0x492492492492492;
    }

    else
    {
      v8 = v7;
    }

    sub_29A1D2538(v9, v8, v5, a1);
    sub_29B29348C(v9[2], a2);
  }

  sub_29A00C9A4();
}

unint64_t sub_29A1D24D0(atomic_ullong *a1)
{
  v2 = operator new(0x18uLL);
  v3 = v2;
  v4 = 0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    v6 = *v2;
    if (*v3)
    {
      v3[1] = v6;
      operator delete(v6);
    }

    operator delete(v3);
    return atomic_load(a1);
  }

  return v3;
}

void *sub_29A1D2538(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 >= 0x492492492492493)
    {
      sub_29A00C8B8();
    }

    v7 = operator new(56 * a2);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[56 * a2];
  return a1;
}

uint64_t sub_29A1D25B8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a2[1] + *a1 - v11;
  v22 = v12;
  v23 = v12;
  v20[0] = a1;
  v20[1] = &v22;
  v20[2] = &v23;
  if (v11 == v10)
  {
    v21 = 1;
  }

  else
  {
    v13 = v12;
    v14 = v10;
    do
    {
      *v13 = *v14;
      *v14 = 0;
      *(v14 + 8) = 0;
      v15 = *(v14 + 16);
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 16) = v15;
      *(v13 + 24) = 0;
      *(v13 + 24) = *(v14 + 24);
      *(v13 + 40) = *(v14 + 40);
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      LOWORD(v15) = *(v14 + 48);
      *(v13 + 50) = *(v14 + 50);
      *(v13 + 48) = v15;
      v14 += 56;
      v13 += 56;
    }

    while (v14 != v11);
    v23 = v13;
    v21 = 1;
    do
    {
      sub_29B293518(v10, a2, a3, a4, a5, a6, a7, a8);
      v10 += 56;
    }

    while (v10 != v11);
  }

  result = sub_29A1D2754(v20, a2, a3, a4, a5, a6, a7, a8);
  a2[1] = v12;
  v17 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29A1D2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  while (1)
  {
    v10 = *(a1 + 16);
    if (v10 == v9)
    {
      break;
    }

    *(a1 + 16) = v10 - 56;
    sub_29B293518(v10 - 56, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A1D2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v10 = **(a1 + 16);
    v11 = **(a1 + 8);
    while (v10 != v11)
    {
      v10 -= 56;
      sub_29B293518(v10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  return a1;
}

void *sub_29A1D27B0(void *a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      ++v3;
      v4 = v6;
    }

    while (v6 != a3);
  }

  return sub_29A1D2C9C(a1, a2, a3, v3);
}

void sub_29A1D2808(pxrInternal__aapl__pxrReserved__::PlugRegistry *a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(a1);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(*a1, a2);
  v4 = sub_29B290C20(a2);
  if (!(v5 & 1 | v4) && sub_29A1CE9DC(0))
  {
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
    if (*(TypeName + 23) >= 0)
    {
      v9 = TypeName;
    }

    else
    {
      v9 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Failed to find plugin for %s", v7, v8, v9);
  }
}

void sub_29A1D288C(_Unwind_Exception *exception_object)
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

void *sub_29A1D28DC@<X0>(pxrInternal__aapl__pxrReserved__::TfType *a1@<X0>, pxrInternal__aapl__pxrReserved__::PlugRegistry *a2@<X1>, _BYTE *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  if (*a2 == *result)
  {
    *a3 = 0;
    a3[16] = 0;
  }

  else
  {
    sub_29A1D2808(a2, v8);
    v6 = sub_29B290C20(v8);
    if (v7 & 1 | v6)
    {
      sub_29A17F138(v8);
    }

    *a3 = 0;
    a3[16] = 0;
    return sub_29B293818(v8);
  }

  return result;
}

void sub_29A1D2BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, char a22, int a23, __int16 a24, char a25)
{
  if (SHIBYTE(a23) < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (*(v25 - 80) == 1)
  {
    v27 = *(v25 - 88);
    if (v27)
    {
      sub_29A014BEC(v27);
    }
  }

  v28 = *(v25 - 56);
  if (v28)
  {
    if (atomic_fetch_add_explicit(v28 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v28 + 8))(v28);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1D2C9C(void *a1, void *a2, void *a3, unint64_t a4)
{
  v8 = a1[2];
  result = *a1;
  if (a4 <= (v8 - result) >> 3)
  {
    v16 = (a1[1] - result) >> 3;
    if (v16 >= a4)
    {
      if (a2 != a3)
      {
        do
        {
          *result = a2[4];
          v24 = a2[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = a2[2];
              v15 = *v25 == a2;
              a2 = v25;
            }

            while (!v15);
          }

          ++result;
          a2 = v25;
        }

        while (v25 != a3);
      }

      a1[1] = result;
    }

    else
    {
      v26 = a2;
      result = sub_29A095B38(&v26, v16);
      v17 = v26;
      if (v26 != a2)
      {
        v18 = *a1;
        do
        {
          *v18 = a2[4];
          v19 = a2[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = a2[2];
              v15 = *v20 == a2;
              a2 = v20;
            }

            while (!v15);
          }

          ++v18;
          a2 = v20;
        }

        while (v20 != v17);
      }

      v21 = a1[1];
      if (v17 != a3)
      {
        do
        {
          *v21 = v17[4];
          v22 = v17[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v17[2];
              v15 = *v23 == v17;
              v17 = v23;
            }

            while (!v15);
          }

          ++v21;
          v17 = v23;
        }

        while (v23 != a3);
      }

      a1[1] = v21;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A00C968(a1, v11);
    v12 = a1[1];
    if (a2 != a3)
    {
      do
      {
        *v12 = a2[4];
        v13 = a2[1];
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
            v14 = a2[2];
            v15 = *v14 == a2;
            a2 = v14;
          }

          while (!v15);
        }

        ++v12;
        a2 = v14;
      }

      while (v14 != a3);
    }

    a1[1] = v12;
  }

  return result;
}

uint64_t sub_29A1D2EA8(uint64_t result, pxrInternal__aapl__pxrReserved__::TfType *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v7 = a2;
    v8 = (a2 - 8);
    v9 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = v9;
          v10 = (v7 - v9) >> 3;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                return sub_29A1D3E54(v9, (v9 + 1), v8);
              case 4:
                return sub_29A1D4098(v9, (v9 + 1), (v9 + 2), v8);
              case 5:
                return sub_29A1D4258(v9, (v9 + 1), (v9 + 2), (v9 + 3), v8);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            v7 = a2;
            if (v10 == 2)
            {
              TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
              v156 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v9);
              v157 = *(v156 + 23);
              v158 = *(TypeName + 23);
              if (v158 >= 0)
              {
                v159 = *(TypeName + 23);
              }

              else
              {
                v159 = *(TypeName + 8);
              }

              if (v158 >= 0)
              {
                v160 = TypeName;
              }

              else
              {
                v160 = *TypeName;
              }

              if (v157 >= 0)
              {
                v161 = *(v156 + 23);
              }

              else
              {
                v161 = *(v156 + 8);
              }

              if (v157 >= 0)
              {
                v162 = v156;
              }

              else
              {
                v162 = *v156;
              }

              if (v161 >= v159)
              {
                v163 = v159;
              }

              else
              {
                v163 = v161;
              }

              result = memcmp(v160, v162, v163);
              v164 = v159 < v161;
              if (result)
              {
                v164 = result < 0;
              }

              if (v164)
              {
                v165 = *v9;
                *v9 = *v8;
                *v8 = v165;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v166 = (v9 + 1);
            v167 = v9 == v7 || v166 == v7;
            v168 = v167;
            if (a4)
            {
              if ((v168 & 1) == 0)
              {
                v169 = 0;
                v170 = v9;
                do
                {
                  v171 = v170;
                  v170 = v166;
                  v172 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v166);
                  v173 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v171);
                  v174 = *(v173 + 23);
                  v175 = *(v172 + 23);
                  if (v175 >= 0)
                  {
                    v176 = *(v172 + 23);
                  }

                  else
                  {
                    v176 = *(v172 + 8);
                  }

                  if (v175 >= 0)
                  {
                    v177 = v172;
                  }

                  else
                  {
                    v177 = *v172;
                  }

                  if (v174 >= 0)
                  {
                    v178 = *(v173 + 23);
                  }

                  else
                  {
                    v178 = *(v173 + 8);
                  }

                  if (v174 >= 0)
                  {
                    v179 = v173;
                  }

                  else
                  {
                    v179 = *v173;
                  }

                  if (v178 >= v176)
                  {
                    v180 = v176;
                  }

                  else
                  {
                    v180 = v178;
                  }

                  result = memcmp(v177, v179, v180);
                  v181 = v176 < v178;
                  if (result)
                  {
                    v181 = result < 0;
                  }

                  if (v181)
                  {
                    v316 = *v170;
                    v182 = v169;
                    while (1)
                    {
                      *(v9 + v182 + 8) = *(v9 + v182);
                      if (!v182)
                      {
                        break;
                      }

                      v182 -= 8;
                      v183 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
                      v184 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v9 + v182));
                      v185 = *(v184 + 23);
                      v186 = *(v183 + 23);
                      if (v186 >= 0)
                      {
                        v187 = *(v183 + 23);
                      }

                      else
                      {
                        v187 = *(v183 + 8);
                      }

                      if (v186 >= 0)
                      {
                        v188 = v183;
                      }

                      else
                      {
                        v188 = *v183;
                      }

                      if (v185 >= 0)
                      {
                        v189 = *(v184 + 23);
                      }

                      else
                      {
                        v189 = *(v184 + 8);
                      }

                      if (v185 >= 0)
                      {
                        v190 = v184;
                      }

                      else
                      {
                        v190 = *v184;
                      }

                      if (v189 >= v187)
                      {
                        v191 = v187;
                      }

                      else
                      {
                        v191 = v189;
                      }

                      result = memcmp(v188, v190, v191);
                      v192 = v187 < v189;
                      if (result)
                      {
                        v192 = result < 0;
                      }

                      if (!v192)
                      {
                        v193 = (v9 + v182 + 8);
                        goto LABEL_335;
                      }
                    }

                    v193 = v9;
LABEL_335:
                    *v193 = v316;
                  }

                  v166 = (v170 + 8);
                  v169 += 8;
                }

                while ((v170 + 8) != a2);
              }
            }

            else if ((v168 & 1) == 0)
            {
              v290 = (v9 - 1);
              do
              {
                v291 = v6;
                v6 = v166;
                v292 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v166);
                v293 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v291);
                v294 = *(v293 + 23);
                v295 = *(v292 + 23);
                if (v295 >= 0)
                {
                  v296 = *(v292 + 23);
                }

                else
                {
                  v296 = *(v292 + 8);
                }

                if (v295 >= 0)
                {
                  v297 = v292;
                }

                else
                {
                  v297 = *v292;
                }

                if (v294 >= 0)
                {
                  v298 = *(v293 + 23);
                }

                else
                {
                  v298 = *(v293 + 8);
                }

                if (v294 >= 0)
                {
                  v299 = v293;
                }

                else
                {
                  v299 = *v293;
                }

                if (v298 >= v296)
                {
                  v300 = v296;
                }

                else
                {
                  v300 = v298;
                }

                result = memcmp(v297, v299, v300);
                v301 = v296 < v298;
                if (result)
                {
                  v301 = result < 0;
                }

                if (v301)
                {
                  v316 = *v6;
                  v302 = v290;
                  do
                  {
                    *(v302 + 2) = *(v302 + 1);
                    v303 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
                    v304 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v302);
                    v305 = *(v304 + 23);
                    v306 = *(v303 + 23);
                    if (v306 >= 0)
                    {
                      v307 = *(v303 + 23);
                    }

                    else
                    {
                      v307 = *(v303 + 8);
                    }

                    if (v306 >= 0)
                    {
                      v308 = v303;
                    }

                    else
                    {
                      v308 = *v303;
                    }

                    if (v305 >= 0)
                    {
                      v309 = *(v304 + 23);
                    }

                    else
                    {
                      v309 = *(v304 + 8);
                    }

                    if (v305 >= 0)
                    {
                      v310 = v304;
                    }

                    else
                    {
                      v310 = *v304;
                    }

                    if (v309 >= v307)
                    {
                      v311 = v307;
                    }

                    else
                    {
                      v311 = v309;
                    }

                    result = memcmp(v308, v310, v311);
                    v312 = v307 < v309;
                    if (result)
                    {
                      v312 = result < 0;
                    }

                    v302 = (v302 - 8);
                  }

                  while (v312);
                  *(v302 + 2) = v316;
                }

                v166 = (v6 + 8);
                v290 = (v290 + 8);
              }

              while ((v6 + 8) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != v7)
            {
              v194 = v11 >> 1;
              v195 = v11 >> 1;
              do
              {
                v196 = v195;
                if (v194 >= v195)
                {
                  v197 = (2 * v195) | 1;
                  v198 = v6 + 8 * v197;
                  if (2 * v195 + 2 < v10)
                  {
                    v199 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v6 + 8 * v197));
                    v200 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v198 + 8));
                    v201 = *(v200 + 23);
                    v202 = *(v199 + 23);
                    if (v202 >= 0)
                    {
                      v203 = *(v199 + 23);
                    }

                    else
                    {
                      v203 = *(v199 + 8);
                    }

                    if (v202 >= 0)
                    {
                      v204 = v199;
                    }

                    else
                    {
                      v204 = *v199;
                    }

                    if (v201 >= 0)
                    {
                      v205 = *(v200 + 23);
                    }

                    else
                    {
                      v205 = *(v200 + 8);
                    }

                    if (v201 >= 0)
                    {
                      v206 = v200;
                    }

                    else
                    {
                      v206 = *v200;
                    }

                    if (v205 >= v203)
                    {
                      v207 = v203;
                    }

                    else
                    {
                      v207 = v205;
                    }

                    v208 = memcmp(v204, v206, v207);
                    v209 = v203 < v205;
                    if (v208)
                    {
                      v209 = v208 < 0;
                    }

                    if (v209)
                    {
                      v198 += 8;
                      v197 = 2 * v196 + 2;
                    }
                  }

                  v210 = (v6 + 8 * v196);
                  v211 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v198);
                  v212 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v210);
                  v213 = *(v212 + 23);
                  v214 = *(v211 + 23);
                  if (v214 >= 0)
                  {
                    v215 = *(v211 + 23);
                  }

                  else
                  {
                    v215 = *(v211 + 8);
                  }

                  if (v214 >= 0)
                  {
                    v216 = v211;
                  }

                  else
                  {
                    v216 = *v211;
                  }

                  if (v213 >= 0)
                  {
                    v217 = *(v212 + 23);
                  }

                  else
                  {
                    v217 = *(v212 + 8);
                  }

                  if (v213 >= 0)
                  {
                    v218 = v212;
                  }

                  else
                  {
                    v218 = *v212;
                  }

                  if (v217 >= v215)
                  {
                    v219 = v215;
                  }

                  else
                  {
                    v219 = v217;
                  }

                  result = memcmp(v216, v218, v219);
                  v220 = v215 < v217;
                  if (result)
                  {
                    v220 = result < 0;
                  }

                  if (!v220)
                  {
                    v313 = v196;
                    v316 = *v210;
                    do
                    {
                      v221 = v198;
                      *v210 = *v198;
                      if (v194 < v197)
                      {
                        break;
                      }

                      v222 = (2 * v197) | 1;
                      v198 = v6 + 8 * v222;
                      v223 = 2 * v197 + 2;
                      if (v223 < v10)
                      {
                        v224 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v6 + 8 * v222));
                        v225 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v198 + 8));
                        v226 = *(v225 + 23);
                        v227 = *(v224 + 23);
                        v228 = v194;
                        if (v227 >= 0)
                        {
                          v229 = *(v224 + 23);
                        }

                        else
                        {
                          v229 = *(v224 + 8);
                        }

                        if (v227 >= 0)
                        {
                          v230 = v224;
                        }

                        else
                        {
                          v230 = *v224;
                        }

                        if (v226 >= 0)
                        {
                          v231 = *(v225 + 23);
                        }

                        else
                        {
                          v231 = *(v225 + 8);
                        }

                        if (v226 >= 0)
                        {
                          v232 = v225;
                        }

                        else
                        {
                          v232 = *v225;
                        }

                        if (v231 >= v229)
                        {
                          v233 = v229;
                        }

                        else
                        {
                          v233 = v231;
                        }

                        v234 = memcmp(v230, v232, v233);
                        v88 = v229 >= v231;
                        v194 = v228;
                        v235 = !v88;
                        if (v234)
                        {
                          v235 = v234 < 0;
                        }

                        if (v235)
                        {
                          v198 += 8;
                          v222 = v223;
                        }
                      }

                      v236 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v198);
                      v237 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
                      v238 = *(v237 + 23);
                      v239 = *(v236 + 23);
                      if (v239 >= 0)
                      {
                        v240 = *(v236 + 23);
                      }

                      else
                      {
                        v240 = *(v236 + 8);
                      }

                      if (v239 >= 0)
                      {
                        v241 = v236;
                      }

                      else
                      {
                        v241 = *v236;
                      }

                      if (v238 >= 0)
                      {
                        v242 = *(v237 + 23);
                      }

                      else
                      {
                        v242 = *(v237 + 8);
                      }

                      if (v238 >= 0)
                      {
                        v243 = v237;
                      }

                      else
                      {
                        v243 = *v237;
                      }

                      if (v242 >= v240)
                      {
                        v244 = v240;
                      }

                      else
                      {
                        v244 = v242;
                      }

                      result = memcmp(v241, v243, v244);
                      v245 = v240 < v242;
                      if (result)
                      {
                        v245 = result < 0;
                      }

                      v210 = v221;
                      v197 = v222;
                    }

                    while (!v245);
                    *v221 = v316;
                    v196 = v313;
                  }
                }

                v195 = v196 - 1;
              }

              while (v196);
              do
              {
                v246 = 0;
                v314 = *v6;
                v247 = v6;
                do
                {
                  v248 = (v247 + 8 * v246);
                  v249 = (v248 + 1);
                  v250 = (2 * v246) | 1;
                  v251 = 2 * v246 + 2;
                  if (v251 < v10)
                  {
                    v252 = (v248 + 2);
                    v253 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v248 + 1));
                    v254 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v252);
                    v255 = *(v254 + 23);
                    v256 = *(v253 + 23);
                    if (v256 >= 0)
                    {
                      v257 = *(v253 + 23);
                    }

                    else
                    {
                      v257 = *(v253 + 8);
                    }

                    if (v256 >= 0)
                    {
                      v258 = v253;
                    }

                    else
                    {
                      v258 = *v253;
                    }

                    if (v255 >= 0)
                    {
                      v259 = *(v254 + 23);
                    }

                    else
                    {
                      v259 = *(v254 + 8);
                    }

                    if (v255 >= 0)
                    {
                      v260 = v254;
                    }

                    else
                    {
                      v260 = *v254;
                    }

                    if (v259 >= v257)
                    {
                      v261 = v257;
                    }

                    else
                    {
                      v261 = v259;
                    }

                    result = memcmp(v258, v260, v261);
                    v262 = v257 < v259;
                    if (result)
                    {
                      v262 = result < 0;
                    }

                    if (v262)
                    {
                      v249 = v252;
                      v250 = v251;
                    }
                  }

                  *v247 = *v249;
                  v247 = v249;
                  v246 = v250;
                }

                while (v250 <= ((v10 - 2) >> 1));
                v263 = (a2 - 8);
                v167 = v249 == (a2 - 8);
                a2 = (a2 - 8);
                if (v167)
                {
                  *v249 = v314;
                }

                else
                {
                  *v249 = *v263;
                  *v263 = v314;
                  v264 = (v249 - v6 + 8) >> 3;
                  v265 = v264 < 2;
                  v266 = v264 - 2;
                  if (!v265)
                  {
                    v267 = v266 >> 1;
                    v268 = (v6 + 8 * (v266 >> 1));
                    v269 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v268);
                    v270 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v249);
                    v271 = *(v270 + 23);
                    v272 = *(v269 + 23);
                    if (v272 >= 0)
                    {
                      v273 = *(v269 + 23);
                    }

                    else
                    {
                      v273 = *(v269 + 8);
                    }

                    if (v272 >= 0)
                    {
                      v274 = v269;
                    }

                    else
                    {
                      v274 = *v269;
                    }

                    if (v271 >= 0)
                    {
                      v275 = *(v270 + 23);
                    }

                    else
                    {
                      v275 = *(v270 + 8);
                    }

                    if (v271 >= 0)
                    {
                      v276 = v270;
                    }

                    else
                    {
                      v276 = *v270;
                    }

                    if (v275 >= v273)
                    {
                      v277 = v273;
                    }

                    else
                    {
                      v277 = v275;
                    }

                    result = memcmp(v274, v276, v277);
                    v278 = v273 < v275;
                    if (result)
                    {
                      v278 = result < 0;
                    }

                    if (v278)
                    {
                      v316 = *v249;
                      do
                      {
                        v279 = v268;
                        *v249 = *v268;
                        if (!v267)
                        {
                          break;
                        }

                        v267 = (v267 - 1) >> 1;
                        v268 = (v6 + 8 * v267);
                        v280 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v268);
                        v281 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
                        v282 = *(v281 + 23);
                        v283 = *(v280 + 23);
                        if (v283 >= 0)
                        {
                          v284 = *(v280 + 23);
                        }

                        else
                        {
                          v284 = *(v280 + 8);
                        }

                        if (v283 >= 0)
                        {
                          v285 = v280;
                        }

                        else
                        {
                          v285 = *v280;
                        }

                        if (v282 >= 0)
                        {
                          v286 = *(v281 + 23);
                        }

                        else
                        {
                          v286 = *(v281 + 8);
                        }

                        if (v282 >= 0)
                        {
                          v287 = v281;
                        }

                        else
                        {
                          v287 = *v281;
                        }

                        if (v286 >= v284)
                        {
                          v288 = v284;
                        }

                        else
                        {
                          v288 = v286;
                        }

                        result = memcmp(v285, v287, v288);
                        v289 = v284 < v286;
                        if (result)
                        {
                          v289 = result < 0;
                        }

                        v249 = v279;
                      }

                      while (v289);
                      *v279 = v316;
                    }
                  }
                }

                v265 = v10-- <= 2;
              }

              while (!v265);
            }

            return result;
          }

          v12 = v10 >> 1;
          v13 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            sub_29A1D3E54((v6 + 8 * (v10 >> 1)), v6, v8);
          }

          else
          {
            sub_29A1D3E54(v6, (v6 + 8 * (v10 >> 1)), v8);
            sub_29A1D3E54((v6 + 8), (v13 - 1), (a2 - 16));
            sub_29A1D3E54((v6 + 16), (v6 + 8 + 8 * v12), (a2 - 24));
            sub_29A1D3E54((v13 - 1), (v6 + 8 * (v10 >> 1)), (v6 + 8 + 8 * v12));
            v14 = *v6;
            *v6 = *v13;
            *v13 = v14;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v6 - 8));
          v16 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
          v17 = *(v16 + 23);
          v18 = *(v15 + 23);
          if (v18 >= 0)
          {
            v19 = *(v15 + 23);
          }

          else
          {
            v19 = *(v15 + 8);
          }

          if (v18 >= 0)
          {
            v20 = v15;
          }

          else
          {
            v20 = *v15;
          }

          if (v17 >= 0)
          {
            v21 = *(v16 + 23);
          }

          else
          {
            v21 = *(v16 + 8);
          }

          if (v17 >= 0)
          {
            v22 = v16;
          }

          else
          {
            v22 = *v16;
          }

          if (v21 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v20, v22, v23);
          v25 = v19 < v21;
          if (v24)
          {
            v25 = v24 < 0;
          }

          if (v25)
          {
            break;
          }

          v316 = *v6;
          v90 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
          v91 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
          v92 = *(v91 + 23);
          v93 = *(v90 + 23);
          if (v93 >= 0)
          {
            v94 = *(v90 + 23);
          }

          else
          {
            v94 = *(v90 + 8);
          }

          if (v93 >= 0)
          {
            v95 = v90;
          }

          else
          {
            v95 = *v90;
          }

          if (v92 >= 0)
          {
            v96 = *(v91 + 23);
          }

          else
          {
            v96 = *(v91 + 8);
          }

          if (v92 >= 0)
          {
            v97 = v91;
          }

          else
          {
            v97 = *v91;
          }

          if (v96 >= v94)
          {
            v98 = v94;
          }

          else
          {
            v98 = v96;
          }

          result = memcmp(v95, v97, v98);
          v99 = v94 < v96;
          if (result)
          {
            v99 = result < 0;
          }

          if (v99)
          {
            v9 = v6;
            do
            {
              ++v9;
              v100 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
              v101 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v9);
              v102 = *(v101 + 23);
              v103 = *(v100 + 23);
              if (v103 >= 0)
              {
                v104 = *(v100 + 23);
              }

              else
              {
                v104 = *(v100 + 8);
              }

              if (v103 >= 0)
              {
                v105 = v100;
              }

              else
              {
                v105 = *v100;
              }

              if (v102 >= 0)
              {
                v106 = *(v101 + 23);
              }

              else
              {
                v106 = *(v101 + 8);
              }

              if (v102 >= 0)
              {
                v107 = v101;
              }

              else
              {
                v107 = *v101;
              }

              if (v106 >= v104)
              {
                v108 = v104;
              }

              else
              {
                v108 = v106;
              }

              result = memcmp(v105, v107, v108);
              v109 = v104 < v106;
              if (result)
              {
                v109 = result < 0;
              }
            }

            while (!v109);
          }

          else
          {
            v110 = (v6 + 8);
            do
            {
              v9 = v110;
              if (v110 >= v7)
              {
                break;
              }

              v111 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
              v112 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v9);
              v113 = *(v112 + 23);
              v114 = *(v111 + 23);
              if (v114 >= 0)
              {
                v115 = *(v111 + 23);
              }

              else
              {
                v115 = *(v111 + 8);
              }

              if (v114 >= 0)
              {
                v116 = v111;
              }

              else
              {
                v116 = *v111;
              }

              if (v113 >= 0)
              {
                v117 = *(v112 + 23);
              }

              else
              {
                v117 = *(v112 + 8);
              }

              if (v113 >= 0)
              {
                v118 = v112;
              }

              else
              {
                v118 = *v112;
              }

              if (v117 >= v115)
              {
                v119 = v115;
              }

              else
              {
                v119 = v117;
              }

              result = memcmp(v116, v118, v119);
              v120 = result < 0;
              if (!result)
              {
                v120 = v115 < v117;
              }

              v110 = v9 + 1;
            }

            while (!v120);
          }

          v121 = v7;
          if (v9 < v7)
          {
            v121 = v7;
            do
            {
              v121 = (v121 - 8);
              v122 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
              v123 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v121);
              v124 = *(v123 + 23);
              v125 = *(v122 + 23);
              if (v125 >= 0)
              {
                v126 = *(v122 + 23);
              }

              else
              {
                v126 = *(v122 + 8);
              }

              if (v125 >= 0)
              {
                v127 = v122;
              }

              else
              {
                v127 = *v122;
              }

              if (v124 >= 0)
              {
                v128 = *(v123 + 23);
              }

              else
              {
                v128 = *(v123 + 8);
              }

              if (v124 >= 0)
              {
                v129 = v123;
              }

              else
              {
                v129 = *v123;
              }

              if (v128 >= v126)
              {
                v130 = v126;
              }

              else
              {
                v130 = v128;
              }

              result = memcmp(v127, v129, v130);
              v131 = v126 < v128;
              if (result)
              {
                v131 = result < 0;
              }
            }

            while (v131);
          }

          while (v9 < v121)
          {
            v132 = *v9;
            *v9 = *v121;
            *v121 = v132;
            do
            {
              ++v9;
              v133 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
              v134 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v9);
              v135 = *(v134 + 23);
              v136 = *(v133 + 23);
              if (v136 >= 0)
              {
                v137 = *(v133 + 23);
              }

              else
              {
                v137 = *(v133 + 8);
              }

              if (v136 >= 0)
              {
                v138 = v133;
              }

              else
              {
                v138 = *v133;
              }

              if (v135 >= 0)
              {
                v139 = *(v134 + 23);
              }

              else
              {
                v139 = *(v134 + 8);
              }

              if (v135 >= 0)
              {
                v140 = v134;
              }

              else
              {
                v140 = *v134;
              }

              if (v139 >= v137)
              {
                v141 = v137;
              }

              else
              {
                v141 = v139;
              }

              v142 = memcmp(v138, v140, v141);
              v143 = v137 < v139;
              if (v142)
              {
                v143 = v142 < 0;
              }
            }

            while (!v143);
            do
            {
              v121 = (v121 - 8);
              v144 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
              v145 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v121);
              v146 = *(v145 + 23);
              v147 = *(v144 + 23);
              if (v147 >= 0)
              {
                v148 = *(v144 + 23);
              }

              else
              {
                v148 = *(v144 + 8);
              }

              if (v147 >= 0)
              {
                v149 = v144;
              }

              else
              {
                v149 = *v144;
              }

              if (v146 >= 0)
              {
                v150 = *(v145 + 23);
              }

              else
              {
                v150 = *(v145 + 8);
              }

              if (v146 >= 0)
              {
                v151 = v145;
              }

              else
              {
                v151 = *v145;
              }

              if (v150 >= v148)
              {
                v152 = v148;
              }

              else
              {
                v152 = v150;
              }

              result = memcmp(v149, v151, v152);
              v153 = v148 < v150;
              if (result)
              {
                v153 = result < 0;
              }
            }

            while (v153);
          }

          v154 = v9 - 1;
          if (v9 - 1 != v6)
          {
            *v6 = *v154;
          }

          a4 = 0;
          *v154 = v316;
        }

        v26 = 0;
        v316 = *v6;
        do
        {
          v26 += 8;
          v27 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v26 + v6));
          v28 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
          v29 = *(v28 + 23);
          v30 = *(v27 + 23);
          if (v30 >= 0)
          {
            v31 = *(v27 + 23);
          }

          else
          {
            v31 = *(v27 + 8);
          }

          if (v30 >= 0)
          {
            v32 = v27;
          }

          else
          {
            v32 = *v27;
          }

          if (v29 >= 0)
          {
            v33 = *(v28 + 23);
          }

          else
          {
            v33 = *(v28 + 8);
          }

          if (v29 >= 0)
          {
            v34 = v28;
          }

          else
          {
            v34 = *v28;
          }

          if (v33 >= v31)
          {
            v35 = v31;
          }

          else
          {
            v35 = v33;
          }

          v36 = memcmp(v32, v34, v35);
          v37 = v31 < v33;
          if (v36)
          {
            v37 = v36 < 0;
          }
        }

        while (v37);
        v38 = (v6 + v26);
        v39 = a2;
        if (v26 == 8)
        {
          v39 = a2;
          do
          {
            if (v38 >= v39)
            {
              break;
            }

            v39 = (v39 - 8);
            v51 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v39);
            v52 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
            v53 = *(v52 + 23);
            v54 = *(v51 + 23);
            if (v54 >= 0)
            {
              v55 = *(v51 + 23);
            }

            else
            {
              v55 = *(v51 + 8);
            }

            if (v54 >= 0)
            {
              v56 = v51;
            }

            else
            {
              v56 = *v51;
            }

            if (v53 >= 0)
            {
              v57 = *(v52 + 23);
            }

            else
            {
              v57 = *(v52 + 8);
            }

            if (v53 >= 0)
            {
              v58 = v52;
            }

            else
            {
              v58 = *v52;
            }

            if (v57 >= v55)
            {
              v59 = v55;
            }

            else
            {
              v59 = v57;
            }

            v60 = memcmp(v56, v58, v59);
            v61 = v55 < v57;
            if (v60)
            {
              v61 = v60 < 0;
            }
          }

          while (!v61);
        }

        else
        {
          do
          {
            v39 = (v39 - 8);
            v40 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v39);
            v41 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
            v42 = *(v41 + 23);
            v43 = *(v40 + 23);
            if (v43 >= 0)
            {
              v44 = *(v40 + 23);
            }

            else
            {
              v44 = *(v40 + 8);
            }

            if (v43 >= 0)
            {
              v45 = v40;
            }

            else
            {
              v45 = *v40;
            }

            if (v42 >= 0)
            {
              v46 = *(v41 + 23);
            }

            else
            {
              v46 = *(v41 + 8);
            }

            if (v42 >= 0)
            {
              v47 = v41;
            }

            else
            {
              v47 = *v41;
            }

            if (v46 >= v44)
            {
              v48 = v44;
            }

            else
            {
              v48 = v46;
            }

            v49 = memcmp(v45, v47, v48);
            v50 = v44 < v46;
            if (v49)
            {
              v50 = v49 < 0;
            }
          }

          while (!v50);
        }

        if (v38 >= v39)
        {
          v87 = (v38 - 8);
        }

        else
        {
          v62 = v38;
          v63 = v39;
          do
          {
            v64 = *v62;
            *v62 = *v63;
            *v63 = v64;
            do
            {
              v62 = (v62 + 8);
              v65 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v62);
              v66 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
              v67 = *(v66 + 23);
              v68 = *(v65 + 23);
              if (v68 >= 0)
              {
                v69 = *(v65 + 23);
              }

              else
              {
                v69 = *(v65 + 8);
              }

              if (v68 >= 0)
              {
                v70 = v65;
              }

              else
              {
                v70 = *v65;
              }

              if (v67 >= 0)
              {
                v71 = *(v66 + 23);
              }

              else
              {
                v71 = *(v66 + 8);
              }

              if (v67 >= 0)
              {
                v72 = v66;
              }

              else
              {
                v72 = *v66;
              }

              if (v71 >= v69)
              {
                v73 = v69;
              }

              else
              {
                v73 = v71;
              }

              v74 = memcmp(v70, v72, v73);
              v75 = v69 < v71;
              if (v74)
              {
                v75 = v74 < 0;
              }
            }

            while (v75);
            do
            {
              v63 = (v63 - 8);
              v76 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v63);
              v77 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v316);
              v78 = *(v77 + 23);
              v79 = *(v76 + 23);
              if (v79 >= 0)
              {
                v80 = *(v76 + 23);
              }

              else
              {
                v80 = *(v76 + 8);
              }

              if (v79 >= 0)
              {
                v81 = v76;
              }

              else
              {
                v81 = *v76;
              }

              if (v78 >= 0)
              {
                v82 = *(v77 + 23);
              }

              else
              {
                v82 = *(v77 + 8);
              }

              if (v78 >= 0)
              {
                v83 = v77;
              }

              else
              {
                v83 = *v77;
              }

              if (v82 >= v80)
              {
                v84 = v80;
              }

              else
              {
                v84 = v82;
              }

              v85 = memcmp(v81, v83, v84);
              v86 = v80 < v82;
              if (v85)
              {
                v86 = v85 < 0;
              }
            }

            while (!v86);
          }

          while (v62 < v63);
          v87 = (v62 - 8);
        }

        if (v87 != v6)
        {
          *v6 = *v87;
        }

        *v87 = v316;
        v88 = v38 >= v39;
        v7 = a2;
        if (v88)
        {
          break;
        }

LABEL_141:
        result = sub_29A1D2EA8(v6, v87, a3, a4 & 1);
        a4 = 0;
        v9 = v87 + 1;
      }

      v89 = sub_29A1D44A4(v6, v87);
      v9 = v87 + 1;
      result = sub_29A1D44A4(v87 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v89)
      {
        goto LABEL_141;
      }
    }

    a2 = v87;
    if (!v89)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_29A1D3E54(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *this, pxrInternal__aapl__pxrReserved__::TfType *a3)
{
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(this);
  v7 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
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
    v16 = v15 < 0;
  }

  else
  {
    v16 = v10 < v12;
  }

  v17 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
  v18 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(this);
  v19 = *(v18 + 23);
  v20 = *(v17 + 23);
  if (v20 >= 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = *(v17 + 8);
  }

  if (v20 >= 0)
  {
    v22 = v17;
  }

  else
  {
    v22 = *v17;
  }

  if (v19 >= 0)
  {
    v23 = *(v18 + 23);
  }

  else
  {
    v23 = *(v18 + 8);
  }

  if (v19 >= 0)
  {
    v24 = v18;
  }

  else
  {
    v24 = *v18;
  }

  if (v23 >= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v23;
  }

  result = memcmp(v22, v24, v25);
  v27 = result < 0;
  if (!result)
  {
    v27 = v21 < v23;
  }

  if (v16)
  {
    v28 = *a1;
    if (v27)
    {
      *a1 = *a3;
LABEL_78:
      *a3 = v28;
      return result;
    }

    *a1 = *this;
    *this = v28;
    v41 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
    v42 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(this);
    v43 = *(v42 + 23);
    v44 = *(v41 + 23);
    if (v44 >= 0)
    {
      v45 = *(v41 + 23);
    }

    else
    {
      v45 = *(v41 + 8);
    }

    if (v44 >= 0)
    {
      v46 = v41;
    }

    else
    {
      v46 = *v41;
    }

    if (v43 >= 0)
    {
      v47 = *(v42 + 23);
    }

    else
    {
      v47 = *(v42 + 8);
    }

    if (v43 >= 0)
    {
      v48 = v42;
    }

    else
    {
      v48 = *v42;
    }

    if (v47 >= v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = v47;
    }

    result = memcmp(v46, v48, v49);
    v50 = v45 < v47;
    if (result)
    {
      v50 = result < 0;
    }

    if (v50)
    {
      v28 = *this;
      *this = *a3;
      goto LABEL_78;
    }
  }

  else if (v27)
  {
    v29 = *this;
    *this = *a3;
    *a3 = v29;
    v30 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(this);
    v31 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
    v32 = *(v31 + 23);
    v33 = *(v30 + 23);
    if (v33 >= 0)
    {
      v34 = *(v30 + 23);
    }

    else
    {
      v34 = *(v30 + 8);
    }

    if (v33 >= 0)
    {
      v35 = v30;
    }

    else
    {
      v35 = *v30;
    }

    if (v32 >= 0)
    {
      v36 = *(v31 + 23);
    }

    else
    {
      v36 = *(v31 + 8);
    }

    if (v32 >= 0)
    {
      v37 = v31;
    }

    else
    {
      v37 = *v31;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    result = memcmp(v35, v37, v38);
    v39 = v34 < v36;
    if (result)
    {
      v39 = result < 0;
    }

    if (v39)
    {
      v40 = *a1;
      *a1 = *this;
      *this = v40;
    }
  }

  return result;
}

uint64_t sub_29A1D4098(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *a2, pxrInternal__aapl__pxrReserved__::TfType *a3, pxrInternal__aapl__pxrReserved__::TfType *a4)
{
  sub_29A1D3E54(a1, a2, a3);
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a4);
  v9 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
  v10 = *(v9 + 23);
  v11 = *(TypeName + 23);
  if (v11 >= 0)
  {
    v12 = *(TypeName + 23);
  }

  else
  {
    v12 = *(TypeName + 8);
  }

  if (v11 >= 0)
  {
    v13 = TypeName;
  }

  else
  {
    v13 = *TypeName;
  }

  if (v10 >= 0)
  {
    v14 = *(v9 + 23);
  }

  else
  {
    v14 = *(v9 + 8);
  }

  if (v10 >= 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = *v9;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  result = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (result)
  {
    v18 = result < 0;
  }

  if (v18)
  {
    v19 = *a3;
    *a3 = *a4;
    *a4 = v19;
    v20 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
    v21 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
    v22 = *(v21 + 23);
    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    if (v23 >= 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = *v20;
    }

    if (v22 >= 0)
    {
      v26 = *(v21 + 23);
    }

    else
    {
      v26 = *(v21 + 8);
    }

    if (v22 >= 0)
    {
      v27 = v21;
    }

    else
    {
      v27 = *v21;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    result = memcmp(v25, v27, v28);
    v29 = v24 < v26;
    if (result)
    {
      v29 = result < 0;
    }

    if (v29)
    {
      v30 = *a2;
      *a2 = *a3;
      *a3 = v30;
      v31 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
      v32 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
      v33 = *(v32 + 23);
      v34 = *(v31 + 23);
      if (v34 >= 0)
      {
        v35 = *(v31 + 23);
      }

      else
      {
        v35 = *(v31 + 8);
      }

      if (v34 >= 0)
      {
        v36 = v31;
      }

      else
      {
        v36 = *v31;
      }

      if (v33 >= 0)
      {
        v37 = *(v32 + 23);
      }

      else
      {
        v37 = *(v32 + 8);
      }

      if (v33 >= 0)
      {
        v38 = v32;
      }

      else
      {
        v38 = *v32;
      }

      if (v37 >= v35)
      {
        v39 = v35;
      }

      else
      {
        v39 = v37;
      }

      result = memcmp(v36, v38, v39);
      v40 = v35 < v37;
      if (result)
      {
        v40 = result < 0;
      }

      if (v40)
      {
        v41 = *a1;
        *a1 = *a2;
        *a2 = v41;
      }
    }
  }

  return result;
}

uint64_t sub_29A1D4258(pxrInternal__aapl__pxrReserved__::TfType *a1, pxrInternal__aapl__pxrReserved__::TfType *a2, pxrInternal__aapl__pxrReserved__::TfType *a3, pxrInternal__aapl__pxrReserved__::TfType *a4, pxrInternal__aapl__pxrReserved__::TfType *a5)
{
  sub_29A1D4098(a1, a2, a3, a4);
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a5);
  v11 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a4);
  v12 = *(v11 + 23);
  v13 = *(TypeName + 23);
  if (v13 >= 0)
  {
    v14 = *(TypeName + 23);
  }

  else
  {
    v14 = *(TypeName + 8);
  }

  if (v13 >= 0)
  {
    v15 = TypeName;
  }

  else
  {
    v15 = *TypeName;
  }

  if (v12 >= 0)
  {
    v16 = *(v11 + 23);
  }

  else
  {
    v16 = *(v11 + 8);
  }

  if (v12 >= 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = *v11;
  }

  if (v16 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  result = memcmp(v15, v17, v18);
  v20 = v14 < v16;
  if (result)
  {
    v20 = result < 0;
  }

  if (v20)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    v22 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a4);
    v23 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
    v24 = *(v23 + 23);
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = *(v22 + 8);
    }

    if (v25 >= 0)
    {
      v27 = v22;
    }

    else
    {
      v27 = *v22;
    }

    if (v24 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = *(v23 + 8);
    }

    if (v24 >= 0)
    {
      v29 = v23;
    }

    else
    {
      v29 = *v23;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    result = memcmp(v27, v29, v30);
    v31 = v26 < v28;
    if (result)
    {
      v31 = result < 0;
    }

    if (v31)
    {
      v32 = *a3;
      *a3 = *a4;
      *a4 = v32;
      v33 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
      v34 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
      v35 = *(v34 + 23);
      v36 = *(v33 + 23);
      if (v36 >= 0)
      {
        v37 = *(v33 + 23);
      }

      else
      {
        v37 = *(v33 + 8);
      }

      if (v36 >= 0)
      {
        v38 = v33;
      }

      else
      {
        v38 = *v33;
      }

      if (v35 >= 0)
      {
        v39 = *(v34 + 23);
      }

      else
      {
        v39 = *(v34 + 8);
      }

      if (v35 >= 0)
      {
        v40 = v34;
      }

      else
      {
        v40 = *v34;
      }

      if (v39 >= v37)
      {
        v41 = v37;
      }

      else
      {
        v41 = v39;
      }

      result = memcmp(v38, v40, v41);
      v42 = v37 < v39;
      if (result)
      {
        v42 = result < 0;
      }

      if (v42)
      {
        v43 = *a2;
        *a2 = *a3;
        *a3 = v43;
        v44 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
        v45 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
        v46 = *(v45 + 23);
        v47 = *(v44 + 23);
        if (v47 >= 0)
        {
          v48 = *(v44 + 23);
        }

        else
        {
          v48 = *(v44 + 8);
        }

        if (v47 >= 0)
        {
          v49 = v44;
        }

        else
        {
          v49 = *v44;
        }

        if (v46 >= 0)
        {
          v50 = *(v45 + 23);
        }

        else
        {
          v50 = *(v45 + 8);
        }

        if (v46 >= 0)
        {
          v51 = v45;
        }

        else
        {
          v51 = *v45;
        }

        if (v50 >= v48)
        {
          v52 = v48;
        }

        else
        {
          v52 = v50;
        }

        result = memcmp(v49, v51, v52);
        v53 = v48 < v50;
        if (result)
        {
          v53 = result < 0;
        }

        if (v53)
        {
          v54 = *a1;
          *a1 = *a2;
          *a2 = v54;
        }
      }
    }
  }

  return result;
}

BOOL sub_29A1D44A4(uint64_t *a1, pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 8);
        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((a2 - 8));
        v7 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a1);
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
        v16 = v10 < v12;
        if (v15)
        {
          v16 = v15 < 0;
        }

        if (v16)
        {
          v17 = *a1;
          *a1 = *v5;
          *v5 = v17;
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_29A1D3E54(a1, (a1 + 1), (a2 - 8));
      return 1;
    case 4:
      sub_29A1D4098(a1, (a1 + 1), (a1 + 2), (a2 - 8));
      return 1;
    case 5:
      sub_29A1D4258(a1, (a1 + 1), (a1 + 2), (a1 + 3), (a2 - 8));
      return 1;
  }

LABEL_28:
  v18 = (a1 + 2);
  sub_29A1D3E54(a1, (a1 + 1), (a1 + 2));
  v19 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v19);
    v23 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v18);
    v24 = *(v23 + 23);
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = *(v22 + 8);
    }

    if (v25 >= 0)
    {
      v27 = v22;
    }

    else
    {
      v27 = *v22;
    }

    if (v24 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = *(v23 + 8);
    }

    if (v24 >= 0)
    {
      v29 = v23;
    }

    else
    {
      v29 = *v23;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    v31 = memcmp(v27, v29, v30);
    v32 = v26 < v28;
    if (v31)
    {
      v32 = v31 < 0;
    }

    if (v32)
    {
      v47 = *v19;
      v33 = v20;
      while (1)
      {
        *(a1 + v33 + 24) = *(a1 + v33 + 16);
        if (v33 == -16)
        {
          break;
        }

        v34 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v47);
        v35 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((a1 + v33 + 8));
        v36 = *(v35 + 23);
        v37 = *(v34 + 23);
        if (v37 >= 0)
        {
          v38 = *(v34 + 23);
        }

        else
        {
          v38 = *(v34 + 8);
        }

        if (v37 >= 0)
        {
          v39 = v34;
        }

        else
        {
          v39 = *v34;
        }

        if (v36 >= 0)
        {
          v40 = *(v35 + 23);
        }

        else
        {
          v40 = *(v35 + 8);
        }

        if (v36 >= 0)
        {
          v41 = v35;
        }

        else
        {
          v41 = *v35;
        }

        if (v40 >= v38)
        {
          v42 = v38;
        }

        else
        {
          v42 = v40;
        }

        v43 = memcmp(v39, v41, v42);
        v44 = v38 < v40;
        if (v43)
        {
          v44 = v43 < 0;
        }

        v33 -= 8;
        if (!v44)
        {
          v45 = (a1 + v33 + 24);
          goto LABEL_70;
        }
      }

      v45 = a1;
LABEL_70:
      *v45 = v47;
      if (++v21 == 8)
      {
        return (v19 + 8) == a2;
      }
    }

    v18 = v19;
    v20 += 8;
    v19 = (v19 + 8);
    if (v19 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_29A1D4764(__n128 *a1, __n128 *a2)
{
  if (a1[1].n128_u8[0] == a2[1].n128_u8[0])
  {
    if (a1[1].n128_u8[0])
    {
      result = *a2;
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      v4 = a1->n128_u64[1];
      *a1 = result;
      if (v4)
      {

        sub_29A014BEC(v4);
      }
    }
  }

  else if (a1[1].n128_u8[0])
  {
    v5 = a1->n128_u64[1];
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    a1[1].n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a1[1].n128_u8[0] = 1;
  }

  return result;
}

void *sub_29A1D47FC()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2046670;
  return result;
}

unint64_t sub_29A1D485C()
{
  result = atomic_load(&qword_2A173F648);
  if (!result)
  {
    result = sub_29A1D24D0(&qword_2A173F648);
  }

  *(result + 8) -= 8;
  return result;
}

uint64_t sub_29A1D489C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20466D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A1D48E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result - 8) = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *sub_29A1D4914(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  return result;
}

void sub_29A1D4928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (a1 + 24);

  sub_29A012C90(&a10);
}

pxrInternal__aapl__pxrReserved__::ArResolverContext *pxrInternal__aapl__pxrReserved__::ArResolverContext::ArResolverContext(pxrInternal__aapl__pxrReserved__::ArResolverContext *this, const pxrInternal__aapl__pxrReserved__::ArResolverContext **a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    pxrInternal__aapl__pxrReserved__::ArResolverContext::_Add(this, v3);
    v3 = (v3 + 24);
  }

  return this;
}

void sub_29A1D49B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArResolverContext::_Add(__n128 **this, const pxrInternal__aapl__pxrReserved__::ArResolverContext *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  if (*a2 != v3)
  {
    do
    {
      v5 = (*(**v2 + 16))();
      sub_29A1D5284(&v6, v5);
      pxrInternal__aapl__pxrReserved__::ArResolverContext::_Add(this, &v6);
      if (v6.n128_u64[1])
      {
        sub_29A014BEC(v6.n128_u64[1]);
      }

      v2 += 16;
    }

    while (v2 != v3);
  }
}

void sub_29A1D4A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 *pxrInternal__aapl__pxrReserved__::ArResolverContext::_Add(__n128 **a1, __n128 *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
    v5 = a1[1];
  }

  else
  {
    v6 = v4 - *a1;
    do
    {
      v7 = &v5[v6 >> 1];
      v9 = v7->n128_u64[0];
      v8 = v7 + 1;
      v10 = (*(*v9 + 24))(v9);
      v11 = (*(*a2->n128_u64[0] + 24))();
      v12 = sub_29A1D5240(v10, v11);
      if (v12)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v12)
      {
        v5 = v8;
      }
    }

    while (v6);
    v4 = a1[1];
  }

  if (v4 == v5 || (v13 = v5->n128_u64[0], v14 = (*(*a2->n128_u64[0] + 24))(), v15 = (*(*v13 + 24))(v13), result = strcmp((*(v14 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v15 + 8) & 0x7FFFFFFFFFFFFFFFLL)), result))
  {

    return sub_29A1D4F24(a1, v5, a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArResolverContext::operator==(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v2 == v3)
    {
      return 1;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *a2;
      v9 = *(v3 + v6);
      v10 = (*(**(*a2 + v6) + 24))(*(*a2 + v6));
      v11 = (*(*v9 + 24))(v9);
      if (strcmp((*(v10 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v11 + 8) & 0x7FFFFFFFFFFFFFFFLL)) || ((*(**(v3 + v6) + 40))(*(v3 + v6), *(v8 + v6)) & 1) == 0)
      {
        break;
      }

      ++v7;
      v3 = *a1;
      v6 += 16;
      if (v7 >= (a1[1] - *a1) >> 4)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL pxrInternal__aapl__pxrReserved__::ArResolverContext::operator<(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1) >> 4;
  v5 = a2[1] - *a2;
  if (v4 < v5 >> 4)
  {
    return 1;
  }

  if (v4 > v5 >> 4 || v2 == v3)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *a2;
    v14 = *(v3 + v11);
    v15 = (*(**(*a2 + v11) + 24))(*(*a2 + v11));
    v16 = (*(*v14 + 24))(v14);
    v17 = strcmp((*(v15 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v16 + 8) & 0x7FFFFFFFFFFFFFFFLL));
    v18 = *(v3 + v11);
    if (v17)
    {
      break;
    }

    v6 = (*(*v18 + 32))(v18, *(v13 + v11));
    if (v6 & 1) == 0 && ((*(**(v3 + v11) + 40))(*(v3 + v11), *(v13 + v11)))
    {
      ++v12;
      v3 = *a1;
      v11 += 16;
      if (v12 < (a1[1] - *a1) >> 4)
      {
        continue;
      }
    }

    return v6;
  }

  v19 = (*(*v18 + 24))(v18);
  v20 = (*(**(v13 + v11) + 24))(*(v13 + v11));

  return sub_29A1D5240(v19, v20);
}

__n128 *sub_29A1D4F24(char **a1, __n128 *a2, __n128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_29A00C9A4();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v29 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v26 = v17;
    v27 = &v17[16 * v16];
    *&v28 = v27;
    *(&v28 + 1) = &v17[16 * v15];
    sub_29A1D53F4(&v26, a3);
    v18 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = &v20[-(v4 - v19)];
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    sub_29A017C0C(&v26);
    return v18;
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a1[1] = &v6[1];
  }

  else
  {
    sub_29A1D5390(a1, a2, v6, &a2[1]);
    v8 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v9 = v4->n128_u64[1];
    *v4 = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  return v4;
}

void sub_29A1D5090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

std::string *pxrInternal__aapl__pxrReserved__::ArResolverContext::GetDebugString@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if (this->__r_.__value_.__r.__words[0] != size)
  {
    do
    {
      (*(**v2 + 56))(__p);
      if ((v8 & 0x80u) == 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if ((v8 & 0x80u) == 0)
      {
        v6 = v8;
      }

      else
      {
        v6 = __p[1];
      }

      std::string::append(a2, v5, v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      this = std::string::append(a2, "\n");
      v2 += 16;
    }

    while (v2 != size);
  }

  return this;
}

void sub_29A1D5170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Ar_GetDebugString(pxrInternal__aapl__pxrReserved__ *this, const std::type_info *a2, const void *a3)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(this + 1) & 0x7FFFFFFFFFFFFFFFLL), __p);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("<'%s' @ %p>", v4, v5, v6, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1D5224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A1D5240(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v2 & 0x8000000000000000) != 0 && (v3 & 0x8000000000000000) != 0)
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) >> 31;
  }

  else
  {
    return v2 < v3;
  }
}

void *sub_29A1D5284(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2046758;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1D52DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B293160(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D52F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1D5320(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A1D5350(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20467A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A1D5390(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A1D5510(&v11, a2, v7, v6);
}

__n128 sub_29A1D53F4(void *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v23 = a1[4];
      v10 = sub_29A017BD4(v9, v8);
      v12 = &v10[16 * (v8 >> 2)];
      v13 = *(a1 + 1);
      v14 = v13;
      v15 = v12;
      v16 = *(&v13 + 1) - v13;
      if (*(&v13 + 1) != v13)
      {
        v15 = &v12[v16];
        v17 = &v10[16 * (v8 >> 2)];
        do
        {
          *v17 = *v14;
          v17 += 16;
          *v14 = 0;
          *(v14 + 8) = 0;
          v14 += 16;
          v16 -= 16;
        }

        while (v16);
        v13 = *(a1 + 1);
      }

      v20 = *a1;
      *a1 = v10;
      a1[1] = v12;
      v21 = v13;
      v18 = a1[3];
      a1[2] = v15;
      a1[3] = &v10[16 * v11];
      v22 = v18;
      sub_29A017C0C(&v20);
      v4 = a1[2];
    }

    else
    {
      v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
      sub_29A03D458(&v20, v5, v4, &v5[-v6]);
      v4 = v7;
      a1[1] -= 16 * v6;
      a1[2] = v7;
    }
  }

  result = *a2;
  *v4 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a1[2] += 16;
  return result;
}

void *sub_29A1D5510(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(pxrInternal__aapl__pxrReserved__::ArResolverContextBinder *this, pxrInternal__aapl__pxrReserved__::ArResolver *a2, const pxrInternal__aapl__pxrReserved__::ArResolverContext *a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void sub_29A1D55E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 + 32);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(pxrInternal__aapl__pxrReserved__::ArResolverContextBinder *this, const pxrInternal__aapl__pxrReserved__::ArResolverContext *a2)
{
  *this = pxrInternal__aapl__pxrReserved__::ArGetResolver(this);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void sub_29A1D5680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 + 32);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(pxrInternal__aapl__pxrReserved__::ArResolverContextBinder *this)
{
  v2 = *this;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::ArResolver::UnbindContext(v2);
  }

  sub_29A186B14(this + 32);
  v3 = (this + 8);
  sub_29A0176E4(&v3);
}

pxrInternal__aapl__pxrReserved__::ArResolverScopedCache *pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(pxrInternal__aapl__pxrReserved__::ArResolverScopedCache *this)
{
  *(this + 1) = 0;
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(this);
  pxrInternal__aapl__pxrReserved__::ArResolver::BeginCacheScope(Resolver, this);
  return this;
}

pxrInternal__aapl__pxrReserved__::ArResolverScopedCache *pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(pxrInternal__aapl__pxrReserved__::ArResolverScopedCache *this, const pxrInternal__aapl__pxrReserved__::ArResolverScopedCache *a2)
{
  v3 = sub_29A186EF4(this, a2);
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v3);
  pxrInternal__aapl__pxrReserved__::ArResolver::BeginCacheScope(Resolver, this);
  return this;
}

void pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(pxrInternal__aapl__pxrReserved__::ArResolverScopedCache *this)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(this);
  pxrInternal__aapl__pxrReserved__::ArResolver::EndCacheScope(Resolver, this);

  sub_29A186B14(this);
}

void pxrInternal__aapl__pxrReserved__::ArTimestamp::_IssueInvalidGetTimeError(pxrInternal__aapl__pxrReserved__::ArTimestamp *this)
{
  v1[0] = "ar/timestamp.cpp";
  v1[1] = "_IssueInvalidGetTimeError";
  v1[2] = 17;
  v1[3] = "void pxrInternal__aapl__pxrReserved__::ArTimestamp::_IssueInvalidGetTimeError() const";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Cannot call GetTime on an invalid ArTimestamp");
}

void *pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_sandboxingCallback(pxrInternal__aapl__pxrReserved__::ArMemoryResolver *this)
{
  if ((atomic_load_explicit(&qword_2A173F650, memory_order_acquire) & 1) == 0)
  {
    sub_29B29386C();
  }

  return &unk_2A173F658;
}

void *pxrInternal__aapl__pxrReserved__::ArMemoryResolver::SetSandboxingCallback(pxrInternal__aapl__pxrReserved__::ArMemoryResolver *a1)
{
  pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_sandboxingCallback(a1);

  return sub_29A1D58E4(qword_2A173F658, a1);
}

void *sub_29A1D58E4(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29A1D6284(v4, a2);
  sub_29A1D631C(v4, a1);
  sub_29A1D6580(v4);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_CreateIdentifier(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(a2, 63, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_)
    {
LABEL_3:
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(a4, *a2, *(a2 + 8));
      }

      else
      {
        *a4 = *a2;
        *(a4 + 16) = *(a2 + 16);
      }

      goto LABEL_8;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_3;
  }

  pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_CreateIdentifier(a1, a2, a3, a4);
LABEL_8:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1D5A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_OpenAsset(const std::string *a1@<X1>, void *a2@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(a1, 63, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_3;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
LABEL_3:
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1->__r_.__value_.__r.__words[0];
    }

    v5 = [MEMORY[0x29EDB8E70] URLWithString:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v4)}];
    if (!v5)
    {
      goto LABEL_30;
    }

    v19 = 0;
    v20 = 0;
    v6 = [objc_msgSend(MEMORY[0x29EDBA110] componentsWithURL:v5 resolvingAgainstBaseURL:{0), "queryItems"}];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = *v23;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([objc_msgSend(v10 "name")])
        {
          if (![v10 value])
          {
            continue;
          }

          v11 = &v20;
          v12 = 16;
          goto LABEL_18;
        }

        if ([objc_msgSend(v10 "name")] && objc_msgSend(v10, "value"))
        {
          v11 = &v19;
          v12 = 10;
LABEL_18:
          *v11 = strtoull([objc_msgSend(v10 "value")], 0, v12);
          continue;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v7)
      {
        v13 = v20;
        if (v20)
        {
          v14 = v19;
          if (v19)
          {
            v15 = operator new(0x18uLL);
            pxrInternal__aapl__pxrReserved__::ArMemoryAsset::ArMemoryAsset(v15, v13, v14);
            sub_29A1D670C(a2, v15);
            goto LABEL_31;
          }
        }

LABEL_30:
        *a2 = 0;
        a2[1] = 0;
        goto LABEL_31;
      }
    }
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1->__r_.__value_.__r.__words[0];
  }

  v17 = pxrInternal__aapl__pxrReserved__::ArchOpenFile(v16, "rb");
  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = operator new(0x10uLL);
  pxrInternal__aapl__pxrReserved__::ArFilesystemAsset::ArFilesystemAsset(v18, v17);
  sub_29A1D6600(a2, v18);
LABEL_31:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1D5CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  operator delete(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_GetModificationTimestamp(uint64_t a1, uint64_t a2, std::string *a3)
{
  pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(a3, 63, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_3;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
LABEL_3:
    ModificationTimestamp = time(0);
    goto LABEL_6;
  }

  ModificationTimestamp = pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_GetModificationTimestamp(a1, a2, a3);
LABEL_6:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ModificationTimestamp;
}

void sub_29A1D5D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_Resolve(pxrInternal__aapl__pxrReserved__::ArResolver *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Suffix = pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(a2, 63, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v17.__r_.__value_.__l.__size_)
    {
      goto LABEL_18;
    }
  }

  else if (*(&v17.__r_.__value_.__s + 23))
  {
    goto LABEL_18;
  }

  IsRelativePath = pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_sandboxingCallback(Suffix);
  if (!qword_2A173F670)
  {
    goto LABEL_25;
  }

  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8 || (IsRelativePath = pxrInternal__aapl__pxrReserved__::TfIsRelativePath(a2), !IsRelativePath))
  {
    pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_sandboxingCallback(IsRelativePath);
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (sub_29A1D5F68(qword_2A173F658, v12))
    {
      goto LABEL_25;
    }

LABEL_18:
    if (*(a2 + 23) < 0)
    {
      sub_29A008D14(a3, *a2, *(a2 + 8));
    }

    else
    {
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
    }

    goto LABEL_26;
  }

  pxrInternal__aapl__pxrReserved__::ArchGetCwd(__p);
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(__p, a2, v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_sandboxingCallback(v9);
  if (v16 >= 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v15[0];
  }

  v11 = sub_29A1D5F68(qword_2A173F658, v10);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_25:
  pxrInternal__aapl__pxrReserved__::ArDefaultResolver::_Resolve(a1, a2, a3);
LABEL_26:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_29A1D5F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1D5F68(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pxrInternal__aapl__pxrReserved__::ArMemoryResolver::_GetExtension(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(a1, 63, &__p);
  pxrInternal__aapl__pxrReserved__::TfGetExtension(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A1D6010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D602C(void **a1)
{
  *a1 = &unk_2A20457C0;
  v2 = a1 + 1;
  sub_29A0176E4(&v2);
  pxrInternal__aapl__pxrReserved__::ArResolver::~ArResolver(a1);
}

void sub_29A1D6088(void **a1)
{
  *a1 = &unk_2A20457C0;
  v3 = a1 + 1;
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::ArResolver::~ArResolver(a1);
  operator delete(v2);
}

uint64_t sub_29A1D60E8()
{
  v2 = nullsub_144;
  return sub_29A1D6144(v0);
}

uint64_t sub_29A1D6144(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20468F0;
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

void sub_29A1D61D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D61F4(pxrInternal__aapl__pxrReserved__::Ar_ResolverFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Ar_ResolverFactoryBase::~Ar_ResolverFactoryBase(a1);

  operator delete(v1);
}

void *sub_29A1D621C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::ArResolver::ArResolver(v0);
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  *v0 = &unk_2A2046810;
  return v0;
}

uint64_t sub_29A1D6284(uint64_t a1, uint64_t a2)
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

void *sub_29A1D631C(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29A1D6574(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A1D6580(uint64_t a1)
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

void *sub_29A1D6600(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2046930;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1D6658(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2938C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D6674(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1D669C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A1D66CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2046980))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A1D670C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20469A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1D6764(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2938C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D6780(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1D67A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A1D67D8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20469F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::ArMemoryAsset *pxrInternal__aapl__pxrReserved__::ArMemoryAsset::ArMemoryAsset(pxrInternal__aapl__pxrReserved__::ArMemoryAsset *this, const char *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::ArAsset::ArAsset(this);
  *v6 = &unk_2A2046A20;
  v6[1] = a2;
  v6[2] = a3;
  if (!a2)
  {
    v8[0] = "arCustom/memoryAsset.cpp";
    v8[1] = "ArMemoryAsset";
    v8[2] = 14;
    v8[3] = "pxrInternal__aapl__pxrReserved__::ArMemoryAsset::ArMemoryAsset(const char *, size_t)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Invalid input data");
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::ArMemoryAsset::~ArMemoryAsset(pxrInternal__aapl__pxrReserved__::ArMemoryAsset *this)
{
  *this = &unk_2A2046A20;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);
}

{
  *this = &unk_2A2046A20;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);
}

{
  *this = &unk_2A2046A20;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::ArMemoryAsset::GetBuffer@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v3 = this[1];
  if (v3)
  {
    *a2 = v3;
    this = operator new(0x20uLL);
    *this = &unk_2A2046A80;
    this[1] = 0;
    this[2] = 0;
    this[3] = v3;
    a2[1] = this;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

size_t pxrInternal__aapl__pxrReserved__::ArMemoryAsset::Read(pxrInternal__aapl__pxrReserved__::ArMemoryAsset *this, void *__dst, size_t __n, uint64_t a4)
{
  v4 = *(this + 1);
  if (v4 && (v5 = __n, a4 + __n <= *(this + 2)))
  {
    memcpy(__dst, (v4 + a4), __n);
  }

  else
  {
    v10[0] = "arCustom/memoryAsset.cpp";
    v10[1] = "Read";
    v10[2] = 53;
    v10[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::ArMemoryAsset::Read(void *, size_t, size_t) const";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::ArchStrerror(__p);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 3, "Error occurred reading file: %s", v6);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v5;
}

void sub_29A1D6AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1D6AD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1D6B00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2046AC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(("N32pxrInternal__aapl__pxrReserved__12KindRegistryE" & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::KindRegistry*> &)::isInitializing, 1u))
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
      v8 = operator new(0x38uLL);
      pxrInternal__aapl__pxrReserved__::KindRegistry::KindRegistry(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::KindRegistry]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::KindRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::KindRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A1D6D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::KindRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::DeleteInstance()
{
  for (result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance); result; result = v1)
  {
    v1 = result;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance, &v1, 0);
    if (v1 == result)
    {
      v2 = *(*result + 8);

      return v2();
    }

    sched_yield();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType::~KindTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType::KindTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::KindTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "model", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "component", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "group", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "assembly", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "subcomponent", 0);
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

void sub_29A1D7114(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__::KindRegistry *pxrInternal__aapl__pxrReserved__::KindRegistry::KindRegistry(pxrInternal__aapl__pxrReserved__::KindRegistry *this)
{
  *(this + 1) = 0;
  *this = &unk_2A2046AE0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  pxrInternal__aapl__pxrReserved__::KindRegistry::_RegisterDefaults(this);
  return this;
}

void sub_29A1D7238(_Unwind_Exception *a1)
{
  sub_29A1D820C(v2);
  sub_29A0F6078(v1, v4);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::KindRegistry::_RegisterDefaults(pxrInternal__aapl__pxrReserved__::KindRegistry *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v2)
  {
    v2 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  __p[0] = 0;
  pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(this, (v2 + 32), __p);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v3)
  {
    v3 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  __p[0] = 0;
  pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(this, v3, __p);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v4)
  {
    v4 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v5)
  {
    v5 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(this, (v4 + 8), v5);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v6)
  {
    v6 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v7)
  {
    v7 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(this, (v6 + 16), v7);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v8)
  {
    v8 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
  if (!v9)
  {
    v9 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
  }

  pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(this, (v8 + 24), (v9 + 16));
  Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v10);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllPlugins(&v18, Instance);
  v17[0] = v18;
  v17[1] = v19;
  if (v18 != v19)
  {
    v16[0] = 0;
    v16[1] = 0;
    __p[14] = v16;
    v14 = sub_29A1D8094(v17, v12, v13);
    sub_29A17F138(v14);
  }

  __p[0] = &v18;
  sub_29A17DEA8(__p);
}

void sub_29A1D7690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30)
{
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::KindRegistry::~KindRegistry(pxrInternal__aapl__pxrReserved__::KindRegistry *this)
{
  *this = &unk_2A2046AE0;
  v1 = (this + 8);
  sub_29A1D820C(this + 16);
  sub_29A0F6078(v1, v2);
}

{
  *this = &unk_2A2046AE0;
  v1 = (this + 8);
  sub_29A1D820C(this + 16);
  sub_29A0F6078(v1, v2);
}

{
  *this = &unk_2A2046AE0;
  v2 = (this + 8);
  sub_29A1D820C(this + 16);
  sub_29A0F6078(v2, v3);

  operator delete(this);
}

unint64_t pxrInternal__aapl__pxrReserved__::KindRegistry::GetInstance(pxrInternal__aapl__pxrReserved__::KindRegistry *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::KindRegistry>::_CreateInstance();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(pxrInternal__aapl__pxrReserved__::KindRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v7 = EmptyString;
  }

  else
  {
    v7 = *EmptyString;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = (v8 - 48) >= 0xA;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  if (v8 != 95 && (v8 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_25;
  }

  do
  {
    v12 = *v7++;
    v11 = v12;
    v13 = (v12 & 0xFFFFFFDF) - 65;
    v14 = v12 - 48;
  }

  while (v12 == 95 || v13 < 0x1A || v14 < 0xA);
  if (v11)
  {
LABEL_25:
    v19 = "kind/registry.cpp";
    v20 = "_Register";
    v21 = 48;
    v22 = "void pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(const TfToken &, const TfToken &)";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Invalid kind: '%s'");
  }

  else if (sub_29A160470(this + 2, a2))
  {
    v19 = "kind/registry.cpp";
    v20 = "_Register";
    v21 = 56;
    v22 = "void pxrInternal__aapl__pxrReserved__::KindRegistry::_Register(const TfToken &, const TfToken &)";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Kind '%s' has already been registered");
  }

  else
  {
    v18 = 0;
    sub_29A166F2C(&v18, a3);
    v19 = a2;
    v17 = sub_29A1D82AC(this + 16, a2, &unk_29B4D6118, &v19);
    sub_29A166F2C(v17 + 3, &v18);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}