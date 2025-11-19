void sub_29A359608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_AppendKeys(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        sub_29A35A990(a2, 5);
        if (v31 == 1)
        {
          v10 = sub_29A01BCCC(a4, __p);
          if (v9 == v10)
          {
            v17 = sub_29A1179F4(a3, 0, 0, __p);
            v18 = *a3;
            *(v18 + 8) = v17;
            *v17 = v18;
            *a3 = v17;
            v17[1] = a3;
            ++a3[2];
            v32 = __p;
            sub_29A0DD058(a4, __p, &unk_29B4D6118, &v32)[7] = v17;
          }

          else
          {
            v11 = *(v10 + 56);
            if (v11 != a3)
            {
              v12 = v11[1];
              if (v11 != v12)
              {
                v13 = *v12;
                v14 = *(v13 + 8);
                v15 = *v11;
                *(v15 + 8) = v14;
                *v14 = v15;
                v16 = *a3;
                *(v16 + 8) = v11;
                *v11 = v16;
                *a3 = v13;
                *(v13 + 8) = a3;
              }
            }
          }
        }

        if (v31 == 1 && v30 < 0)
        {
          operator delete(__p[0]);
        }

        v6 += 3;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v19 = a4 + 1;
    do
    {
      v20 = sub_29A01BCCC(a4, v6);
      if (v19 == v20)
      {
        v27 = sub_29A1179F4(a3, 0, 0, v6);
        v28 = *a3;
        *(v28 + 8) = v27;
        *v27 = v28;
        *a3 = v27;
        v27[1] = a3;
        ++a3[2];
        __p[0] = v6;
        sub_29A0DD058(a4, v6, &unk_29B4D6118, __p)[7] = v27;
      }

      else
      {
        v21 = *(v20 + 56);
        if (v21 != a3)
        {
          v22 = v21[1];
          if (v21 != v22)
          {
            v23 = *v22;
            v24 = *(v23 + 8);
            v25 = *v21;
            *(v25 + 8) = v24;
            *v24 = v25;
            v26 = *a3;
            *(v26 + 8) = v21;
            *v21 = v26;
            *a3 = v23;
            *(v23 + 8) = a3;
          }
        }
      }

      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_29A35986C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_ReorderKeys()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

{
    ;
  }
}

void sub_29A359918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*result == 1)
  {
    sub_29A242868(a3, result);
  }

  if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
  {
    if (*a2 == 1)
    {
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
    }

    if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
    {
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
    }
  }

  *a3 = 0;
  a3[152] = 0;
  return result;
}

void sub_29A359DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a10;
  sub_29A012C90(&a19);
  a19 = &a13;
  sub_29A012C90(&a19);
  a19 = &a16;
  sub_29A012C90(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_29A359E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A22B430(a1, a2, a3);
  if (v5 == a2)
  {
    return a2;
  }

  v6 = v5;
  for (i = v5 + 24; i != a2; i += 24)
  {
    v8 = *(i + 23);
    if (v8 >= 0)
    {
      v9 = *(i + 23);
    }

    else
    {
      v9 = *(i + 8);
    }

    v10 = *(a3 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (v9 == v10)
    {
      v12 = v8 >= 0 ? i : *i;
      v13 = v11 >= 0 ? a3 : *a3;
      if (!memcmp(v12, v13, v9))
      {
        continue;
      }
    }

    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v14 = *i;
    *(v6 + 16) = *(i + 16);
    *v6 = v14;
    v6 += 24;
    *(i + 23) = 0;
    *i = 0;
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::ModifyOperations(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A35A01C(a2, a1 + 1);
  v5 = v4 | sub_29A35A01C(a2, a1 + 4);
  v6 = sub_29A35A01C(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A35A01C(a2, a1 + 10);
  v8 = sub_29A35A01C(a2, a1 + 13);
  return v7 | v8 | sub_29A35A01C(a2, a1 + 16);
}

uint64_t sub_29A35A01C(uint64_t a1, uint64_t *a2)
{
  v25 = 0uLL;
  v26 = 0;
  sub_29A0925E4(&v25, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v23 = 0u;
  v24 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v16 = 0;
  }

  else
  {
    do
    {
      v6 = *(a1 + 24);
      if (!v6)
      {
        sub_29A0DDCB0();
      }

      (*(*v6 + 48))(__p);
      v7 = v22;
      if (v22 == 1 && (sub_29A37076C(&v23, __p), v7 = v22, (v8 & 1) == 0) && (v22 & 1) != 0)
      {
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        v22 = 0;
      }

      else if (v7)
      {
        if ((v21 & 0x80u) == 0)
        {
          v9 = v21;
        }

        else
        {
          v9 = __p[1];
        }

        v10 = *(v4 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v4 + 8);
        }

        if (v9 == v10)
        {
          v12 = (v21 & 0x80u) == 0 ? __p : __p[0];
          v13 = v11 >= 0 ? v4 : *v4;
          if (!memcmp(v12, v13, v9))
          {
            sub_29A070BA0(&v25);
          }
        }

        sub_29A091654(&v25, __p);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(__p[0]);
      }

      v4 += 24;
    }

    while (v4 != v5);
    v14 = *a2;
    *a2 = v25;
    v25 = v14;
    v15 = a2[2];
    a2[2] = v26;
    v26 = v15;
    v16 = 1;
  }

  v17 = *(&v24 + 1);
  *(&v24 + 1) = 0;
  if (v17)
  {
    v18 = sub_29A0EB4E8(v17);
    operator delete(v18);
  }

  __p[0] = &v23;
  sub_29A012C90(__p);
  *&v23 = &v25;
  sub_29A012C90(&v23);
  return v16;
}

void sub_29A35A21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a16 = &a20;
  sub_29A012C90(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::GetItems();
  }

  return 0;
}

void sub_29A35A4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a11 = &a16;
  sub_29A012C90(&a11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SetExplicitItems();
}

void sub_29A35A764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A370164(&a16);
  sub_29A019EE8(&a9, a10);
  sub_29A116F64(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::operator==(unsigned __int8 *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v27 = v2;
  v28 = v3;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = a2[1];
  if (v7 - v6 != a2[2] - v8)
  {
    return 0;
  }

  while (v6 != v7)
  {
    result = sub_29A0EC4B8(&v22, v6, v8);
    if (!result)
    {
      return result;
    }

    v6 += 3;
    v8 += 3;
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 5);
  v12 = a2[4];
  if (v11 - v10 != a2[5] - v12)
  {
    return 0;
  }

  while (v10 != v11)
  {
    result = sub_29A0EC4B8(&v23, v10, v12);
    if (!result)
    {
      return result;
    }

    v10 += 3;
    v12 += 3;
  }

  v13 = *(a1 + 7);
  v14 = *(a1 + 8);
  v15 = a2[7];
  if (v14 - v13 != a2[8] - v15)
  {
    return 0;
  }

  while (v13 != v14)
  {
    result = sub_29A0EC4B8(&v24, v13, v15);
    if (!result)
    {
      return result;
    }

    v13 += 3;
    v15 += 3;
  }

  v16 = *(a1 + 10);
  v17 = *(a1 + 11);
  v18 = a2[10];
  if (v17 - v16 != a2[11] - v18)
  {
    return 0;
  }

  while (v16 != v17)
  {
    result = sub_29A0EC4B8(&v25, v16, v18);
    if (!result)
    {
      return result;
    }

    v16 += 3;
    v18 += 3;
  }

  v19 = *(a1 + 13);
  v20 = *(a1 + 14);
  v21 = a2[13];
  if (v20 - v19 != a2[14] - v21)
  {
    return 0;
  }

  while (v19 != v20)
  {
    result = sub_29A0EC4B8(&v26, v19, v21);
    if (!result)
    {
      return result;
    }

    v19 += 3;
    v21 += 3;
  }

  return sub_29A22BEE4(a1 + 16, (a2 + 16));
}

uint64_t sub_29A35A990(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::_ReorderKeysHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v29 = v30;
  while (v27 != v28)
  {
    if (*(a2 + 24))
    {
      sub_29A102AAC(&v27, a2, a3);
      sub_29A35A990(a2, 3);
      if (v26 == 1)
      {
        sub_29A095658(&v29, &__p, &__p);
        if (v8)
        {
          sub_29A070BA0(&v31);
        }
      }

      if (v26 == 1 && SHIBYTE(v25) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v9 = sub_29A102AAC(&v27, a2, a3);
      sub_29A095658(&v29, v9, v9);
      if (v10)
      {
        sub_29A102AAC(&v27, v10, v11);
        sub_29A070BA0(&v31);
      }
    }

    sub_29A102B2C(&v27);
  }

  if (v31 != v32)
  {
    *&__p = &__p;
    *(&__p + 1) = &__p;
    v25 = 0;
    sub_29A1180F8(&__p, a3);
    v27 = v31;
    v28 = v32;
    while (v27 != v28)
    {
      v14 = sub_29A102AAC(&v27, v12, v13);
      v15 = sub_29A01BCCC(a4, v14);
      v16 = v15;
      if (a4 + 8 != v15)
      {
        p_p = *(v15 + 56);
        while (1)
        {
          p_p = *(p_p + 1);
          if (p_p == &__p)
          {
            break;
          }

          if (sub_29A00AF58(&v29, p_p + 2))
          {
            goto LABEL_22;
          }
        }

        p_p = &__p;
LABEL_22:
        if (!v25)
        {
          goto LABEL_27;
        }

        sub_29A117E88(a3, a3, &__p, *(v16 + 56), p_p);
      }

      sub_29A102B2C(&v27);
    }

    v18 = v25;
    if (v25)
    {
      v19 = *(a3 + 8);
      v20 = __p;
      v21 = *(__p + 8);
      v22 = **(&__p + 1);
      *(v22 + 8) = v21;
      *v21 = v22;
      v23 = *v19;
      *(v23 + 8) = *(&v20 + 1);
      **(&v20 + 1) = v23;
      *v19 = v20;
      *(v20 + 8) = v19;
      *(a3 + 16) += v18;
      v25 = 0;
    }

LABEL_27:
    sub_29A116F64(&__p);
  }

  sub_29A019EE8(&v29, v30[0]);
  *&__p = &v31;
  sub_29A012C90(&__p);
}

void sub_29A35AC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, char *a19, uint64_t a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A019EE8(&a18, a19);
  __p = &a21;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<std::string>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2047308, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = std::string]";
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
    sub_29A372100(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A372100(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A372100(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A372100(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A372100(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A372100(a1, __p, (a2 + 128), &v13, 0);
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

void sub_29A35AEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::CreateExplicit(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp(uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetExplicitItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::Create(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetPrependedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetAppendedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetDeletedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_SetExplicit();
}

{
    ;
  }
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::Swap(char *result, char *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::HasItem(uint64_t a1, void *a2)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v2 != v3)
    {
      while ((*v2 ^ *a2) >= 8)
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
    while ((*v5 ^ *a2) >= 8)
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
      while ((*v7 ^ *a2) >= 8)
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
        while ((*v9 ^ *a2) >= 8)
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
          while ((*v11 ^ *a2) >= 8)
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
            while ((*v2 ^ *a2) >= 8)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::GetItems(SdfListOpType) const [T = pxrInternal__aapl__pxrReserved__::TfToken]";
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::ApplyOperations();
}

void sub_29A35B6A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A37223C(va);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::ApplyOperations(void *result, uint64_t **a2, uint64_t a3)
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
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_AddKeys();
    }

    if (*(a3 + 24) || ((result[8] - result[7]) >> 3) + ((result[11] - result[10]) >> 3) + ((result[5] - result[4]) >> 3) + ((result[14] - result[13]) >> 3) + ((result[17] - result[16]) >> 3))
    {
      sub_29A3722BC(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = v8; i != &v7; i = i[1])
      {
        v10 = i + 2;
        sub_29A372414(&v4, i + 2, &unk_29B4D6118, &v10)[5] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_DeleteKeys();
    }

    return sub_29A36B068(&v7);
  }

  return result;
}

void sub_29A35B8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A36B068(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_SetExplicit(unsigned __int8 *result, int a2)
{
  if (*result != a2)
  {
    *result = a2;
    v2 = *(result + 1);
    for (i = *(result + 2); i != v2; i -= 8)
    {
      v5 = *(i - 8);
      v4 = v5;
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(result + 2) = v2;
    v6 = *(result + 4);
    for (j = *(result + 5); j != v6; j -= 8)
    {
      v9 = *(j - 8);
      v8 = v9;
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(result + 5) = v6;
    v10 = *(result + 7);
    for (k = *(result + 8); k != v10; k -= 8)
    {
      v13 = *(k - 8);
      v12 = v13;
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(result + 8) = v10;
    v14 = *(result + 10);
    for (m = *(result + 11); m != v14; m -= 8)
    {
      v17 = *(m - 8);
      v16 = v17;
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(result + 11) = v14;
    v18 = *(result + 13);
    for (n = *(result + 14); n != v18; n -= 8)
    {
      v21 = *(n - 8);
      v20 = v21;
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(result + 14) = v18;
    v22 = *(result + 16);
    for (ii = *(result + 17); ii != v22; ii -= 8)
    {
      v25 = *(ii - 8);
      v24 = v25;
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    *(result + 17) = v22;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_MakeUnique(uint64_t a1, uint64_t **a2)
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
        v9 = (v8 + 1);
        if (v3 != (v8 + 1))
        {
          v10 = *v8;
          v11 = v9;
          do
          {
            v12 = *v11++;
            v7 &= (v12 ^ v10) > 7;
          }

          while (v11 != v3);
        }

        v8 = v9;
      }

      while (v9 != v3 - 1);
      if ((v7 & 1) == 0)
      {
LABEL_11:
        if (v2 != v3)
        {
          for (i = v2 + 1; i != v3; ++i)
          {
            v14 = *(i - 1) & 0xFFFFFFFFFFFFFFF8;
            v15 = *i & 0xFFFFFFFFFFFFFFF8;
            if (v14 >= v15)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_29A35BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 - 72);
  sub_29A124AB0(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetDeletedItems();
    }
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetAddedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetOrderedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::GetItems();
}

{
    ;
  }
}

void sub_29A35C0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    sub_29B294B14(&a9);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_DeleteKeys(void *result, uint64_t a2, char *a3, uint64_t **a4)
{
  v4 = result[14];
  v16 = result[13];
  v17 = v4;
  if (v16 != v4)
  {
    v8 = a4 + 1;
    do
    {
      if (*(a2 + 24))
      {
        sub_29A1FCDD0(&v16, a2, a3);
        sub_29A35D784(a2, 2);
        if (v15 == 1)
        {
          v9 = sub_29A372F60(a4, &v14);
          v10 = v9;
          if (v8 != v9)
          {
            sub_29A372E00(a3, *(v9 + 40));
            sub_29A372E58(a4, v10);
          }
        }

        if (v15 == 1 && (v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v11 = sub_29A1FCDD0(&v16, a2, a3);
        v12 = sub_29A372F60(a4, v11);
        if (v8 != v12)
        {
          v13 = v12;
          sub_29A372E00(a3, *(v12 + 40));
          sub_29A372E58(a4, v13);
        }
      }

      result = sub_29A1FCE50(&v16);
    }

    while (v16 != v17);
  }

  return result;
}

void sub_29A35C230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    sub_29B294B14(&a9);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_PrependKeys(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result[7];
  v6 = result[8];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = (a4 + 8);
      do
      {
        --v6;
        result = sub_29A35D784(a2, 4);
        if (v33 == 1)
        {
          v10 = *(a3 + 8);
          result = sub_29A372F60(a4, &v32);
          if (v9 == result)
          {
            v17 = operator new(0x18uLL);
            v18 = v17;
            *v17 = 0;
            v17[1] = 0;
            v19 = v32;
            v17[2] = v32;
            if ((v19 & 7) != 0)
            {
              v20 = (v19 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed) & 1) == 0)
              {
                v17[2] = v20;
              }
            }

            v21 = *v10;
            *(v21 + 8) = v17;
            *v17 = v21;
            *v10 = v17;
            v17[1] = v10;
            ++*(a3 + 16);
            v34 = &v32;
            result = sub_29A372414(a4, &v32, &unk_29B4D6118, &v34);
            result[5] = v18;
          }

          else
          {
            v11 = result[5];
            if (v11 != v10)
            {
              v12 = v11[1];
              if (v11 != v12)
              {
                v13 = *v12;
                v14 = *(v13 + 8);
                v15 = *v11;
                *(v15 + 8) = v14;
                *v14 = v15;
                v16 = *v10;
                *(v16 + 8) = v11;
                *v11 = v16;
                *v10 = v13;
                *(v13 + 8) = v10;
              }
            }
          }
        }

        if (v33 == 1 && (v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v22 = (a4 + 8);
    do
    {
      --v6;
      v23 = *(a3 + 8);
      result = sub_29A372F60(a4, v6);
      if (v22 == result)
      {
        v30 = sub_29A3723B4(a3, 0, 0, v6);
        v31 = *v23;
        *(v31 + 8) = v30;
        *v30 = v31;
        *v23 = v30;
        v30[1] = v23;
        ++*(a3 + 16);
        v32 = v6;
        result = sub_29A372414(a4, v6, &unk_29B4D6118, &v32);
        result[5] = v30;
      }

      else
      {
        v24 = result[5];
        if (v24 != v23)
        {
          v25 = v24[1];
          if (v24 != v25)
          {
            v26 = *v25;
            v27 = *(v26 + 8);
            v28 = *v24;
            *(v28 + 8) = v27;
            *v27 = v28;
            v29 = *v23;
            *(v29 + 8) = v24;
            *v24 = v29;
            *v23 = v26;
            *(v26 + 8) = v23;
          }
        }
      }
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A35C4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    sub_29B294B14(&a9);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_AppendKeys(void *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = result[10];
  v7 = result[11];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = (a4 + 8);
      do
      {
        result = sub_29A35D784(a2, 5);
        if (v31 == 1)
        {
          result = sub_29A372F60(a4, &v30);
          if (v9 == result)
          {
            v16 = operator new(0x18uLL);
            v17 = v16;
            *v16 = 0;
            v16[1] = 0;
            v18 = v30;
            v16[2] = v30;
            if ((v18 & 7) != 0)
            {
              v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
              {
                v16[2] = v19;
              }
            }

            v20 = *a3;
            *(v20 + 8) = v16;
            *a3 = v16;
            *v16 = v20;
            v16[1] = a3;
            ++a3[2];
            v32 = &v30;
            result = sub_29A372414(a4, &v30, &unk_29B4D6118, &v32);
            result[5] = v17;
          }

          else
          {
            v10 = result[5];
            if (v10 != a3)
            {
              v11 = v10[1];
              if (v10 != v11)
              {
                v12 = *v11;
                v13 = *(v12 + 8);
                v14 = *v10;
                *(v14 + 8) = v13;
                *v13 = v14;
                v15 = *a3;
                *(v15 + 8) = v10;
                *v10 = v15;
                *a3 = v12;
                *(v12 + 8) = a3;
              }
            }
          }
        }

        if (v31 == 1 && (v30 & 7) != 0)
        {
          atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v21 = (a4 + 8);
    do
    {
      result = sub_29A372F60(a4, v6);
      if (v21 == result)
      {
        v28 = sub_29A3723B4(a3, 0, 0, v6);
        v29 = *a3;
        *(v29 + 8) = v28;
        *v28 = v29;
        *a3 = v28;
        v28[1] = a3;
        ++a3[2];
        v30 = v6;
        result = sub_29A372414(a4, v6, &unk_29B4D6118, &v30);
        result[5] = v28;
      }

      else
      {
        v22 = result[5];
        if (v22 != a3)
        {
          v23 = v22[1];
          if (v22 != v23)
          {
            v24 = *v23;
            v25 = *(v24 + 8);
            v26 = *v22;
            *(v26 + 8) = v25;
            *v25 = v26;
            v27 = *a3;
            *(v27 + 8) = v22;
            *v22 = v27;
            *a3 = v24;
            *(v24 + 8) = a3;
          }
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A35C734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    sub_29B294B14(&a9);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_ReorderKeys()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

{
    ;
  }
}

void sub_29A35C7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*result == 1)
  {
    sub_29A282C6C(a3, result);
  }

  if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
  {
    if (*a2 == 1)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }

    if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
    {
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }
  }

  *a3 = 0;
  a3[152] = 0;
  return result;
}

void sub_29A35CC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a10;
  sub_29A124AB0(&a19);
  a19 = &a13;
  sub_29A124AB0(&a19);
  a19 = &a16;
  sub_29A124AB0(&a19);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A35CD28(uint64_t *a1, uint64_t *a2, void *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while ((*result ^ *a3) >= 8)
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
        v6 = *i;
        if ((*a3 ^ *i) >= 8)
        {
          if (i != result)
          {
            if ((*result & 7) != 0)
            {
              atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              v6 = *i;
            }

            *result = v6;
            *i = 0;
          }

          ++result;
        }
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::ModifyOperations(uint64_t **a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A35CE70(a2, a1 + 1);
  v5 = v4 | sub_29A35CE70(a2, a1 + 4);
  v6 = sub_29A35CE70(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A35CE70(a2, a1 + 10);
  v8 = sub_29A35CE70(a2, a1 + 13);
  return v7 | v8 | sub_29A35CE70(a2, a1 + 16);
}

uint64_t sub_29A35CE70(uint64_t a1, uint64_t **a2)
{
  v20 = 0uLL;
  v21 = 0;
  sub_29A1D7F98(&v20, a2[1] - *a2);
  v18 = 0u;
  v19 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_22;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      sub_29A0DDCB0();
    }

    (*(*v7 + 48))(&v16);
    v8 = v17;
    if (v17 == 1 && (sub_29A372A50(&v18, &v16), v8 = v17, (v9 & 1) == 0) && (v17 & 1) != 0)
    {
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = 0;
    }

    else if (v8)
    {
      if ((*v4 ^ v16) < 8)
      {
        sub_29A1D8028(&v20, v4);
        goto LABEL_14;
      }

      sub_29A153214(&v20, &v16);
    }

    v6 = 1;
LABEL_14:
    if (v17 == 1 && (v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    ++v4;
  }

  while (v4 != v5);
  if (v6)
  {
    v10 = *a2;
    *a2 = v20;
    v20 = v10;
    v11 = a2[2];
    a2[2] = v21;
    v21 = v11;
    v12 = 1;
    goto LABEL_23;
  }

LABEL_22:
  v12 = 0;
LABEL_23:
  v13 = *(&v19 + 1);
  *(&v19 + 1) = 0;
  if (v13)
  {
    v14 = sub_29A155EF4(v13);
    operator delete(v14);
  }

  v16 = &v18;
  sub_29A124AB0(&v16);
  *&v18 = &v20;
  sub_29A124AB0(&v18);
  return v12;
}

void sub_29A35D030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a11 = &a15;
  sub_29A124AB0(&a11);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::GetItems();
  }

  return 0;
}

void sub_29A35D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a11 = &a16;
  sub_29A124AB0(&a11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SetExplicitItems();
}

void sub_29A35D544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A37223C(&a16);
  sub_29A1602D4(&a9, a10);
  sub_29A36B068(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v2 = a1[2];
  v4 = a2[1];
  if (v2 - v3 != a2[2] - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if ((*v4 ^ *v3) > 7)
    {
      return 0;
    }

    v3 += 8;
    ++v4;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[4];
  if (v5 - v6 != a2[5] - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if ((*v7 ^ *v6) > 7)
    {
      return 0;
    }

    v6 += 8;
    ++v7;
  }

  v9 = a1[7];
  v8 = a1[8];
  v10 = a2[7];
  if (v8 - v9 != a2[8] - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if ((*v10 ^ *v9) > 7)
    {
      return 0;
    }

    v9 += 8;
    ++v10;
  }

  v12 = a1[10];
  v11 = a1[11];
  v13 = a2[10];
  if (v11 - v12 != a2[11] - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if ((*v13 ^ *v12) > 7)
    {
      return 0;
    }

    v12 += 8;
    ++v13;
  }

  v15 = a1[13];
  v14 = a1[14];
  v16 = a2[13];
  if (v14 - v15 != a2[14] - v16)
  {
    return 0;
  }

  while (v15 != v14)
  {
    if ((*v16 ^ *v15) > 7)
    {
      return 0;
    }

    v15 += 8;
    ++v16;
  }

  return sub_29A35D70C(a1 + 16, (a2 + 16));
}

BOOL sub_29A35D70C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    v7 = v6 ^ *(v5 - 8);
    result = v7 < 8;
    v9 = v7 > 7 || v5 == v2;
    v5 += 8;
  }

  while (!v9);
  return result;
}

uint64_t sub_29A35D784(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::_ReorderKeysHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  v7 = a1[1];
  *&v28 = *a1;
  *(&v28 + 1) = v7;
  while (v28 != *(&v28 + 1))
  {
    if (*(a2 + 24))
    {
      sub_29A2F8C94(&v28, a2, a3);
      sub_29A35D784(a2, 3);
      if (v31 == 1)
      {
        sub_29A372EA4(&v32, &v30, &v30);
        if (v8)
        {
          sub_29A1D8028(&v34, &v30);
        }
      }

      if (v31 == 1 && (v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v9 = sub_29A2F8C94(&v28, a2, a3);
      sub_29A372EA4(&v32, v9, v9);
      if (v10)
      {
        v12 = sub_29A2F8C94(&v28, v10, v11);
        sub_29A1D8028(&v34, v12);
      }
    }

    sub_29A2F8D14(&v28);
  }

  if (v34 != v35)
  {
    *&v28 = &v28;
    *(&v28 + 1) = &v28;
    v29 = 0;
    sub_29A1180F8(&v28, a3);
    v30 = v34;
    v31 = v35;
    while (v30 != v31)
    {
      v15 = sub_29A2F8C94(&v30, v13, v14);
      v16 = sub_29A372F60(a4, v15);
      if (a4 + 8 != v16)
      {
        v17 = *(v16 + 40);
        v18 = &v28;
        if (v17[1] != &v28)
        {
          v18 = v17[1];
          do
          {
            if (v33[0])
            {
              v19 = v18[1] & 0xFFFFFFFFFFFFFFF8;
              v20 = v33[0];
              do
              {
                v21 = v20[4] & 0xFFFFFFFFFFFFFFF8;
                if (v19 >= v21)
                {
                  if (v21 >= v19)
                  {
                    goto LABEL_27;
                  }

                  ++v20;
                }

                v20 = *v20;
              }

              while (v20);
            }

            v18 = *(v18 + 1);
          }

          while (v18 != &v28);
          v18 = &v28;
        }

LABEL_27:
        if (!v29)
        {
          goto LABEL_32;
        }

        sub_29A117E88(a3, a3, &v28, v17, v18);
      }

      sub_29A2F8D14(&v30);
    }

    v22 = v29;
    if (v29)
    {
      v23 = *(a3 + 8);
      v24 = v28;
      v25 = *(v28 + 8);
      v26 = **(&v28 + 1);
      *(v26 + 8) = v25;
      *v25 = v26;
      v27 = *v23;
      *(v27 + 8) = *(&v24 + 1);
      **(&v24 + 1) = v27;
      *v23 = v24;
      *(v24 + 8) = v23;
      *(a3 + 16) += v22;
      v29 = 0;
    }

LABEL_32:
    sub_29A36B068(&v28);
  }

  sub_29A1602D4(&v32, v33[0]);
  v32 = &v34;
  sub_29A124AB0(&v32);
}

void sub_29A35DA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void **a15, void *a16)
{
  if (a14 == 1 && (a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1602D4(&a15, a16);
  a15 = (v16 - 56);
  sub_29A124AB0(&a15);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2047318, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = pxrInternal__aapl__pxrReserved__::TfToken]";
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
    sub_29A3736A8(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A3736A8(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A3736A8(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A3736A8(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A3736A8(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A3736A8(a1, __p, (a2 + 128), &v13, 0);
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

void sub_29A35DD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::CreateExplicit(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SdfListOp(uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetExplicitItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::Create(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetPrependedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetAppendedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetDeletedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_SetExplicit();
}

{
    ;
  }
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::Swap(char *result, char *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::HasItem(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v4, a2) & 1) == 0)
      {
        v4 += 16;
        if (v4 == v5)
        {
          v4 = v5;
          break;
        }
      }

      v5 = *(a1 + 16);
    }

    return v4 != v5;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 != v8)
  {
    while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v7, a2) & 1) == 0)
    {
      v7 += 16;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(a1 + 40);
  }

  if (v7 == v8)
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v9 != v10)
    {
      while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v9, a2) & 1) == 0)
      {
        v9 += 16;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v10 = *(a1 + 64);
    }

    if (v9 == v10)
    {
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      if (v11 != v12)
      {
        while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v11, a2) & 1) == 0)
        {
          v11 += 16;
          if (v11 == v12)
          {
            v11 = v12;
            break;
          }
        }

        v12 = *(a1 + 88);
      }

      if (v11 == v12)
      {
        v13 = *(a1 + 104);
        v14 = *(a1 + 112);
        if (v13 != v14)
        {
          while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v13, a2) & 1) == 0)
          {
            v13 += 16;
            if (v13 == v14)
            {
              v13 = v14;
              break;
            }
          }

          v14 = *(a1 + 112);
        }

        if (v13 == v14)
        {
          v4 = *(a1 + 128);
          v5 = *(a1 + 136);
          if (v4 != v5)
          {
            while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v4, a2) & 1) == 0)
            {
              v4 += 16;
              if (v4 == v5)
              {
                v4 = v5;
                break;
              }
            }

            v5 = *(a1 + 136);
          }

          return v4 != v5;
        }
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::GetItems(SdfListOpType) const [T = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue]";
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::ApplyOperations();
}

void sub_29A35E4F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3737D0(va);
  sub_29A1D0D38(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::ApplyOperations(uint64_t a1, void **a2, uint64_t a3)
{
  if (a2)
  {
    v7 = &v7;
    v8 = &v7;
    v9 = 0;
    if (*a1 == 1)
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_AddKeys();
    }

    if (*(a3 + 24) || ((*(a1 + 64) - *(a1 + 56)) >> 4) + ((*(a1 + 88) - *(a1 + 80)) >> 4) + ((*(a1 + 40) - *(a1 + 32)) >> 4) + ((*(a1 + 112) - *(a1 + 104)) >> 4) + ((*(a1 + 136) - *(a1 + 128)) >> 4))
    {
      sub_29A373A74(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = v8; i != &v7; i = i[1])
      {
        v10 = i + 2;
        sub_29A373BCC(&v4, (i + 2), &unk_29B4D6118, &v10)[6] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_DeleteKeys();
    }

    sub_29A36B1B8(&v7);
  }
}

void sub_29A35E724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A36B1B8(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_SetExplicit(unsigned __int8 *result, int a2)
{
  if (*result != a2)
  {
    v2 = result;
    *result = a2;
    v3 = *(result + 2);
    v4 = *(v2 + 1);
    while (v3 != v4)
    {
      v3 = sub_29A186B14(v3 - 16);
    }

    *(v2 + 2) = v4;
    v6 = *(v2 + 4);
      ;
    }

    *(v2 + 5) = v6;
    v8 = *(v2 + 7);
      ;
    }

    *(v2 + 8) = v8;
    v10 = *(v2 + 10);
      ;
    }

    *(v2 + 11) = v10;
    v12 = *(v2 + 13);
      ;
    }

    *(v2 + 14) = v12;
    v13 = *(v2 + 16);
      ;
    }

    *(v2 + 17) = v13;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_MakeUnique(uint64_t a1, void ***a2, int a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 - *a2) >> 4;
  if (v6 < 2)
  {
    return 1;
  }

  if (v6 <= 0xA)
  {
    if (v4 == v5 - 2)
    {
      return 1;
    }

    v12 = 1;
    do
    {
      v13 = v4 + 2;
      if (v5 != v4 + 2)
      {
        v14 = v4 + 2;
        do
        {
          v12 &= pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v4, v14) ^ 1;
          v14 += 2;
        }

        while (v14 != v5);
      }

      v4 += 2;
    }

    while (v13 != v5 - 2);
    if (v12)
    {
      return 1;
    }

    v4 = *a2;
    v5 = a2[1];
  }

  LOBYTE(v34) = 0;
  if (v4 == v5)
  {
    return 1;
  }

  while (1)
  {
    v15 = v4 + 2;
    if (v4 + 2 == v5)
    {
      break;
    }

    v16 = sub_29A373D74(&v34, v4, (v4 + 2));
    v4 += 2;
    if (!v16)
    {
      v5 = v15 - 2;
      break;
    }
  }

  v17 = a2[1];
  if (v5 == v17)
  {
    return 1;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  sub_29A27CADC(&v36, *a2, v17, (v17 - *a2) >> 4);
  v18 = 126 - 2 * __clz((v37 - v36) >> 4);
  if (v37 == v36)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_29A3755F0(v36, v37, &v31, v19, 1);
  v20 = v36;
  v21 = v37;
  if (v36 == v37)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v22 = (v20 + 16);
    if ((v20 + 16) == v21)
    {
      break;
    }

    v23 = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v20, v20 + 16);
    v20 = v22;
    if (v23)
    {
      v21 = (v22 - 16);
      break;
    }
  }

  if (v21 == v37)
  {
LABEL_31:
    v7 = 1;
  }

  else
  {
    sub_29A37693C(&v34, 0, 0.0, 0.5);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    sub_29A360B8C(&v31, (a2[1] - *a2) >> 4);
    if (a3)
    {
      v24 = a2[1];
      while (v24 != *a2)
      {
        v24 = (v24 - 16);
        sub_29A376B6C(&v34, v24, v24);
        if (v25)
        {
          sub_29A35FD10(&v31, v24);
        }
      }

      sub_29A377204(v31, v32);
    }

    else
    {
      for (i = *a2; i != a2[1]; i = (i + 16))
      {
        sub_29A376B6C(&v34, i, i);
        if (v27)
        {
          sub_29A35FD10(&v31, i);
        }
      }
    }

    if (&v31 != a2)
    {
      sub_29A373850(a2, v31, v32, (v32 - v31) >> 4);
    }

    if (a4)
    {
      MEMORY[0x29C2C1A60](a4, "Duplicate item found in SdfListOp: %s.", v28);
      sub_29A1FD264(v21);
      if (v30 < 0)
      {
        operator delete(__p);
      }
    }

    v39 = &v31;
    sub_29A1D0D38(&v39);
    v31 = &v35;
    sub_29A36B22C(&v31);
    v7 = 0;
  }

  v34 = &v36;
  sub_29A1D0D38(&v34);
  return v7;
}

void sub_29A35EB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 - 120);
  sub_29A1D0D38(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetDeletedItems();
    }
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetAddedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetOrderedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_AddKeys()
{
  v0 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::GetItems();
}

{
    ;
  }
}

void sub_29A35EEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    sub_29A186B14(&a13);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = result[14];
  v20 = result[13];
  v21 = v4;
  if (v20 != v4)
  {
    v8 = a4 + 1;
    do
    {
      if (*(a2 + 24))
      {
        sub_29A1FD164(&v20, a2, a3);
        sub_29A360774(a2, 2);
        if (v23 == 1)
        {
          v9 = sub_29A3754EC(a4, v22);
          v10 = v9;
          if (v8 != v9)
          {
            v11 = *(v9 + 48);
            v13 = *v11;
            v12 = v11[1];
            *(v13 + 8) = v12;
            *v12 = v13;
            --*(a3 + 16);
            sub_29A186B14((v11 + 2));
            operator delete(v11);
            sub_29A03AFE8(a4, v10);
            sub_29A186B14((v10 + 4));
            operator delete(v10);
          }
        }

        if (v23 == 1)
        {
          sub_29A186B14(v22);
        }
      }

      else
      {
        v14 = sub_29A1FD164(&v20, a2, a3);
        v15 = sub_29A3754EC(a4, v14);
        v16 = v15;
        if (v8 != v15)
        {
          v17 = *(v15 + 48);
          v19 = *v17;
          v18 = v17[1];
          *(v19 + 8) = v18;
          *v18 = v19;
          --*(a3 + 16);
          sub_29A186B14((v17 + 2));
          operator delete(v17);
          sub_29A03AFE8(a4, v16);
          sub_29A186B14((v16 + 4));
          operator delete(v16);
        }
      }

      result = sub_29A1FD1E4(&v20);
    }

    while (v20 != v21);
  }

  return result;
}

void sub_29A35F0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_29A186B14(&a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_PrependKeys(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v7 = result[7];
  v6 = result[8];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        v6 = (v6 - 16);
        result = sub_29A360774(a2, 4);
        if (v31 == 1)
        {
          v10 = *(a3 + 8);
          result = sub_29A3754EC(a4, v30);
          if (v9 == result)
          {
            v17 = sub_29A375318(a3, 0, 0, v30);
            v18 = *v10;
            *(v18 + 8) = v17;
            *v17 = v18;
            *v10 = v17;
            v17[1] = v10;
            ++*(a3 + 16);
            v29 = v30;
            result = sub_29A373BCC(a4, v30, &unk_29B4D6118, &v29);
            result[6] = v17;
          }

          else
          {
            v11 = result[6];
            if (v11 != v10)
            {
              v12 = v11[1];
              if (v11 != v12)
              {
                v13 = *v12;
                v14 = *(v13 + 8);
                v15 = *v11;
                *(v15 + 8) = v14;
                *v14 = v15;
                v16 = *v10;
                *(v16 + 8) = v11;
                *v11 = v16;
                *v10 = v13;
                *(v13 + 8) = v10;
              }
            }
          }
        }

        if (v31 == 1)
        {
          result = sub_29A186B14(v30);
        }
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v19 = a4 + 1;
    do
    {
      v6 = (v6 - 16);
      v20 = *(a3 + 8);
      result = sub_29A3754EC(a4, v6);
      if (v19 == result)
      {
        v27 = sub_29A375318(a3, 0, 0, v6);
        v28 = *v20;
        *(v28 + 8) = v27;
        *v27 = v28;
        *v20 = v27;
        v27[1] = v20;
        ++*(a3 + 16);
        v30[0] = v6;
        result = sub_29A373BCC(a4, v6, &unk_29B4D6118, v30);
        result[6] = v27;
      }

      else
      {
        v21 = result[6];
        if (v21 != v20)
        {
          v22 = v21[1];
          if (v21 != v22)
          {
            v23 = *v22;
            v24 = *(v23 + 8);
            v25 = *v21;
            *(v25 + 8) = v24;
            *v24 = v25;
            v26 = *v20;
            *(v26 + 8) = v21;
            *v21 = v26;
            *v20 = v23;
            *(v23 + 8) = v20;
          }
        }
      }
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A35F354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_29A186B14(&a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_AppendKeys(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = result[10];
  v7 = result[11];
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 1;
      do
      {
        result = sub_29A360774(a2, 5);
        if (v29 == 1)
        {
          result = sub_29A3754EC(a4, v28);
          if (v9 == result)
          {
            v16 = sub_29A375318(a3, 0, 0, v28);
            v17 = *a3;
            *(v17 + 8) = v16;
            *v16 = v17;
            *a3 = v16;
            v16[1] = a3;
            ++a3[2];
            v27 = v28;
            result = sub_29A373BCC(a4, v28, &unk_29B4D6118, &v27);
            result[6] = v16;
          }

          else
          {
            v10 = result[6];
            if (v10 != a3)
            {
              v11 = v10[1];
              if (v10 != v11)
              {
                v12 = *v11;
                v13 = *(v12 + 8);
                v14 = *v10;
                *(v14 + 8) = v13;
                *v13 = v14;
                v15 = *a3;
                *(v15 + 8) = v10;
                *v10 = v15;
                *a3 = v12;
                *(v12 + 8) = a3;
              }
            }
          }
        }

        if (v29 == 1)
        {
          result = sub_29A186B14(v28);
        }

        v6 = (v6 + 16);
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v18 = a4 + 1;
    do
    {
      result = sub_29A3754EC(a4, v6);
      if (v18 == result)
      {
        v25 = sub_29A375318(a3, 0, 0, v6);
        v26 = *a3;
        *(v26 + 8) = v25;
        *v25 = v26;
        *a3 = v25;
        v25[1] = a3;
        ++a3[2];
        v28[0] = v6;
        result = sub_29A373BCC(a4, v6, &unk_29B4D6118, v28);
        result[6] = v25;
      }

      else
      {
        v19 = result[6];
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

      v6 = (v6 + 16);
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A35F5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_29A186B14(&a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_ReorderKeys(uint64_t a1)
{
  memset(v1, 0, sizeof(v1));
  sub_29A27CADC(v1, *(a1 + 128), *(a1 + 136), (*(a1 + 136) - *(a1 + 128)) >> 4);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_ReorderKeysHelper();
}

void sub_29A35F67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1D0D38(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result;
  v41 = *MEMORY[0x29EDCA608];
  if (*result == 1)
  {
    result = sub_29A27C964(a3, result);
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
        sub_29A27CADC(&v28, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
        *&v33 = 0;
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::ApplyOperations();
      }

      if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A27CADC(&v28, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        sub_29A27CADC(&v25, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_29A27CADC(&v22, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 4);
        v6 = v3[13];
        v7 = v3[14];
        while (1)
        {
          if (v6 == v7)
          {
            v12 = v3[7];
            v13 = v3[8];
            if (v12 != v13)
            {
              do
              {
                v14 = sub_29A35FC74(v28, v29, v12);
                sub_29A35FBE4(&v28, v14, v29);
                v15 = sub_29A35FC74(v25, v26, v12);
                sub_29A35FBE4(&v25, v15, v26);
                v16 = sub_29A35FC74(v22, v23, v12);
                sub_29A35FBE4(&v22, v16, v23);
                v12 += 16;
              }

              while (v12 != v13);
              v12 = v3[7];
              v13 = v3[8];
            }

            sub_29A374438(&v25, v25, v12, v13, (v13 - v12) >> 4);
            v17 = v3[10];
            v18 = v3[11];
            if (v17 != v18)
            {
              do
              {
                v19 = sub_29A35FC74(v28, v29, v17);
                sub_29A35FBE4(&v28, v19, v29);
                v20 = sub_29A35FC74(v25, v26, v17);
                sub_29A35FBE4(&v25, v20, v26);
                v21 = sub_29A35FC74(v22, v23, v17);
                sub_29A35FBE4(&v22, v21, v23);
                v17 += 16;
              }

              while (v17 != v18);
              v17 = v3[10];
              v18 = v3[11];
            }

            sub_29A374438(&v22, v23, v17, v18, (v18 - v17) >> 4);
            LOBYTE(v31) = 0;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetDeletedItems();
          }

          v8 = sub_29A35FC74(v25, v26, v6);
          sub_29A35FBE4(&v25, v8, v26);
          v9 = sub_29A35FC74(v22, v23, v6);
          sub_29A35FBE4(&v22, v9, v23);
          v10 = v28;
          v11 = v29;
          if (v28 != v29)
          {
            do
            {
              if (pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v10, v6))
              {
                goto LABEL_17;
              }

              v10 += 2;
            }

            while (v10 != v11);
            v10 = v11;
LABEL_17:
            v11 = v29;
          }

          if (v10 == v11)
          {
            sub_29A35FD10(&v28, v6);
          }

          v6 += 2;
        }
      }
    }

    *a3 = 0;
    a3[152] = 0;
  }

  return result;
}

void sub_29A35FB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a10;
  sub_29A1D0D38(&a19);
  a19 = &a13;
  sub_29A1D0D38(&a19);
  a19 = &a16;
  sub_29A1D0D38(&a19);
  _Unwind_Resume(a1);
}

void *sub_29A35FBE4(uint64_t a1, void *a2, void *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_29A18606C(v7, v4);
        v4 += 2;
        v7 += 2;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 16;
      sub_29A186B14(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void *sub_29A35FC74(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v3, a3) & 1) == 0)
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        if ((pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(i, a3) & 1) == 0)
        {
          sub_29A18606C(v3, i);
          v3 += 2;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_29A35FD10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A374328(a1, a2);
  }

  else
  {
    sub_29A186EF4(*(a1 + 8), a2);
    result = v3 + 16;
    *(a1 + 8) = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::ModifyOperations(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A35FE0C(a2, a1 + 1);
  v5 = v4 | sub_29A35FE0C(a2, a1 + 4);
  v6 = sub_29A35FE0C(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A35FE0C(a2, a1 + 10);
  v8 = sub_29A35FE0C(a2, a1 + 13);
  return v7 | v8 | sub_29A35FE0C(a2, a1 + 16);
}

uint64_t sub_29A35FE0C(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0uLL;
  v18 = 0;
  sub_29A360B8C(&v17, (a2[1] - *a2) >> 4);
  v15 = 0u;
  v16 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v11 = 0;
  }

  else
  {
    do
    {
      v6 = *(a1 + 24);
      if (!v6)
      {
        sub_29A0DDCB0();
      }

      (*(*v6 + 48))(v19);
      v7 = v20;
      if (v20 == 1 && (sub_29A374628(&v15, v19), v7 = v20, (v8 & 1) == 0) && (v20 & 1) != 0)
      {
        sub_29A186B14(v19);
        v20 = 0;
      }

      else if (v7)
      {
        pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator!=();
      }

      if (v20 == 1)
      {
        sub_29A186B14(v19);
      }

      v4 += 16;
    }

    while (v4 != v5);
    v9 = *a2;
    *a2 = v17;
    v17 = v9;
    v10 = a2[2];
    a2[2] = v18;
    v18 = v10;
    v11 = 1;
  }

  v12 = *(&v16 + 1);
  *(&v16 + 1) = 0;
  if (v12)
  {
    v13 = sub_29A374834(v12);
    operator delete(v13);
  }

  v19[0] = &v15;
  sub_29A1D0D38(v19);
  *&v15 = &v17;
  sub_29A1D0D38(&v15);
  return v11;
}

void sub_29A35FFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_29A1D0D38(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::GetItems();
  }

  return 0;
}

void sub_29A36021C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a11 = &a16;
  sub_29A1D0D38(&a11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SetExplicitItems();
}

void sub_29A3604E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A3737D0(&a16);
  sub_29A373A18(&a9, a10);
  sub_29A36B1B8(&a12);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[1];
  if (v5 - v4 != a2[2] - v6)
  {
    return 0;
  }

  while (v4 != v5)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v4, v6))
    {
      return 0;
    }

    v4 += 16;
    v6 += 16;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[4];
  if (v8 - v7 != a2[5] - v9)
  {
    return 0;
  }

  while (v7 != v8)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v7, v9))
    {
      return 0;
    }

    v7 += 16;
    v9 += 16;
  }

  v10 = a1[7];
  v11 = a1[8];
  v12 = a2[7];
  if (v11 - v10 != a2[8] - v12)
  {
    return 0;
  }

  while (v10 != v11)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v10, v12))
    {
      return 0;
    }

    v10 += 16;
    v12 += 16;
  }

  v13 = a1[10];
  v14 = a1[11];
  v15 = a2[10];
  if (v14 - v13 != a2[11] - v15)
  {
    return 0;
  }

  while (v13 != v14)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v13, v15))
    {
      return 0;
    }

    v13 += 16;
    v15 += 16;
  }

  v16 = a1[13];
  v17 = a1[14];
  v18 = a2[13];
  if (v17 - v16 != a2[14] - v18)
  {
    return 0;
  }

  while (v16 != v17)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v16, v18))
    {
      return 0;
    }

    v16 += 16;
    v18 += 16;
  }

  return sub_29A3606E4(a1 + 16, a2 + 16);
}

uint64_t sub_29A3606E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 16;
    v4 += 16;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_29A360774(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_ReorderKeysHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v7 = a1[1];
  v25 = *a1;
  v26 = v7;
  v27 = v28;
  while (v25 != v26)
  {
    if (*(a2 + 24))
    {
      sub_29A360A8C(&v25, a2, a3);
      sub_29A360774(a2, 3);
      if (v33 == 1)
      {
        sub_29A375400(&v27, &v32, &v32);
        if (v8)
        {
          sub_29A35FD10(&v29, &v32);
        }
      }

      if (v33 == 1)
      {
        sub_29A186B14(&v32);
      }
    }

    else
    {
      v9 = sub_29A360A8C(&v25, a2, a3);
      sub_29A375400(&v27, v9, v9);
      if (v10)
      {
        v12 = sub_29A360A8C(&v25, v10, v11);
        sub_29A35FD10(&v29, v12);
      }
    }

    sub_29A360B0C(&v25);
  }

  if (v29 != v30)
  {
    *&v32 = &v32;
    *(&v32 + 1) = &v32;
    v33 = 0;
    sub_29A1180F8(&v32, a3);
    v25 = v29;
    v26 = v30;
    while (v25 != v26)
    {
      v15 = sub_29A360A8C(&v25, v13, v14);
      v16 = sub_29A3754EC(a4, v15);
      v17 = v16;
      if (a4 + 8 != v16)
      {
        v18 = *(v16 + 48);
        while (1)
        {
          v18 = *(v18 + 1);
          if (v18 == &v32)
          {
            break;
          }

          if (sub_29A37557C(&v27, (v18 + 1)))
          {
            goto LABEL_21;
          }
        }

        v18 = &v32;
LABEL_21:
        if (!v33)
        {
          goto LABEL_26;
        }

        sub_29A117E88(a3, a3, &v32, *(v17 + 48), v18);
      }

      sub_29A360B0C(&v25);
    }

    v19 = v33;
    if (v33)
    {
      v20 = *(a3 + 8);
      v21 = v32;
      v22 = *(v32 + 8);
      v23 = **(&v32 + 1);
      *(v23 + 8) = v22;
      *v22 = v23;
      v24 = *v20;
      *(v24 + 8) = *(&v21 + 1);
      **(&v21 + 1) = v24;
      *v20 = v21;
      *(v21 + 8) = v20;
      *(a3 + 16) += v19;
      v33 = 0;
    }

LABEL_26:
    sub_29A36B1B8(&v32);
  }

  sub_29A373A18(&v27, v28[0]);
  v27 = &v29;
  sub_29A1D0D38(&v27);
}

void sub_29A360A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_29A186B14(&a17);
  }

  sub_29A373A18(&a11, a12);
  a11 = &a14;
  sub_29A1D0D38(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_29A360A8C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A360B0C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29A360B8C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A017BD4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[16 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29A1D1BB4(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A1D1C24(&v12);
  }

  return result;
}

void sub_29A360C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1D1C24(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2047338, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue]";
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
    sub_29A377260(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A377260(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A377260(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A377260(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A377260(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A377260(a1, __p, (a2 + 128), &v13, 0);
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

void sub_29A360EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::CreateExplicit(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp(uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetExplicitItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::Create(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetPrependedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetAppendedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetDeletedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_SetExplicit();
}

{
    ;
  }
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::Swap(char *result, char *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::HasItem(uint64_t a1, void *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::GetItems(SdfListOpType) const [T = pxrInternal__aapl__pxrReserved__::SdfPath]";
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ApplyOperations();
}

void sub_29A361648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A377388(va);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ApplyOperations(uint64_t a1, _DWORD **a2, uint64_t a3)
{
  if (a2)
  {
    v7 = &v7;
    v8 = &v7;
    v9 = 0;
    if (*a1 == 1)
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_AddKeys();
    }

    if (*(a3 + 24) || ((*(a1 + 64) - *(a1 + 56)) >> 3) + ((*(a1 + 88) - *(a1 + 80)) >> 3) + ((*(a1 + 40) - *(a1 + 32)) >> 3) + ((*(a1 + 112) - *(a1 + 104)) >> 3) + ((*(a1 + 136) - *(a1 + 128)) >> 3))
    {
      sub_29A3774A4(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = v8; i != &v7; i = i[1])
      {
        v10 = i + 2;
        sub_29A3775F4(&v4, i + 2, &unk_29B4D6118, &v10)[5] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_DeleteKeys();
    }

    sub_29A36B320(&v7);
  }
}

void sub_29A361880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A36B320(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_SetExplicit(_DWORD *result, int a2)
{
  if (*result != a2)
  {
    v2 = result;
    *result = a2;
    v3 = (result + 2);
    v4 = *(result + 1);
    for (i = *(result + 2); i != v4; result = sub_29A1E230C(v3, i))
    {
      i -= 2;
    }

    v6 = v2[4];
    v2[2] = v4;
    for (j = v2[5]; j != v6; result = sub_29A1E230C((v2 + 4), j))
    {
      j -= 2;
    }

    v8 = v2[7];
    v2[5] = v6;
    for (k = v2[8]; k != v8; result = sub_29A1E230C((v2 + 7), k))
    {
      k -= 2;
    }

    v10 = v2[10];
    v2[8] = v8;
    for (m = v2[11]; m != v10; result = sub_29A1E230C((v2 + 10), m))
    {
      m -= 2;
    }

    v12 = v2[13];
    v2[11] = v10;
    for (n = v2[14]; n != v12; result = sub_29A1E230C((v2 + 13), n))
    {
      n -= 2;
    }

    v14 = v2[16];
    v2[14] = v12;
    for (ii = v2[17]; ii != v14; result = sub_29A1E230C((v2 + 16), ii))
    {
      ii -= 2;
    }

    v2[17] = v14;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_MakeUnique(uint64_t a1, unint64_t **a2)
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
              std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_29A361C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 - 72);
  sub_29A1E234C(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetDeletedItems();
    }
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetAddedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetOrderedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::GetItems();
}

{
    ;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v28 = result[13];
  v29 = v4;
  if (v28 != v4)
  {
    v8 = (a4 + 1);
    do
    {
      if (*(a2 + 24))
      {
        sub_29A1FAB78(&v28, a2, a3);
        sub_29A363794(a2, 2);
        if (v27 == 1)
        {
          v9 = *v8;
          if (*v8)
          {
            v10 = v8;
            do
            {
              v11 = v9[4];
              v12 = v11 >= v26;
              v13 = v11 < v26;
              if (v12)
              {
                v10 = v9;
              }

              v9 = v9[v13];
            }

            while (v9);
            if (v10 != v8 && v26 >= v10[4])
            {
              v14 = v10[5];
              v16 = *v14;
              v15 = v14[1];
              *(v16 + 8) = v15;
              *v15 = v16;
              --*(a3 + 16);
              sub_29A1E26CC(v14 + 4);
              operator delete(v14);
              sub_29A03AFE8(a4, v10);
              sub_29A377464(v10 + 8);
              operator delete(v10);
            }
          }
        }

        sub_29A1E3AEC(&v26);
      }

      else
      {
        v17 = sub_29A1FAB78(&v28, a2, a3);
        v18 = *v8;
        if (*v8)
        {
          v19 = *v17;
          v20 = v8;
          do
          {
            v21 = v18[4];
            v12 = v21 >= v19;
            v22 = v21 < v19;
            if (v12)
            {
              v20 = v18;
            }

            v18 = v18[v22];
          }

          while (v18);
          if (v20 != v8 && v19 >= v20[4])
          {
            v23 = v20[5];
            v25 = *v23;
            v24 = v23[1];
            *(v25 + 8) = v24;
            *v24 = v25;
            --*(a3 + 16);
            sub_29A1E26CC(v23 + 4);
            operator delete(v23);
            sub_29A03AFE8(a4, v20);
            sub_29A377464(v20 + 8);
            operator delete(v20);
          }
        }
      }

      result = sub_29A1FABF8(&v28);
    }

    while (v28 != v29);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_PrependKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
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
        sub_29A363794(a2, 4);
        if (v40 == 1)
        {
          v10 = *(a3 + 8);
          v11 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v12 = a4 + 1;
          do
          {
            v13 = v11[4];
            v14 = v13 >= v39;
            v15 = v13 < v39;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 != v9 && v39 >= v12[4])
          {
            v18 = v12[5];
            if (v18 != v10)
            {
              v19 = v18[1];
              if (v18 != v19)
              {
                v20 = *v19;
                v21 = v20[1];
                v22 = *v18;
                v22[1] = v21;
                *v21 = v22;
                v23 = *v10;
                v23[1] = v18;
                *v18 = v23;
                *v10 = v20;
                v20[1] = v10;
              }
            }
          }

          else
          {
LABEL_13:
            v16 = sub_29A37759C(a3, 0, 0, &v39);
            v17 = *v10;
            *(v17 + 8) = v16;
            *v16 = v17;
            *v10 = v16;
            v16[1] = v10;
            ++*(a3 + 16);
            v41 = &v39;
            sub_29A3775F4(a4, &v39, &unk_29B4D6118, &v41)[5] = v16;
          }
        }

        result = sub_29A1E3AEC(&v39);
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v24 = a4 + 1;
    do
    {
      --v6;
      v25 = *(a3 + 8);
      v26 = *v24;
      if (!*v24)
      {
        goto LABEL_29;
      }

      v27 = *v6;
      v28 = a4 + 1;
      do
      {
        v29 = v26[4];
        v14 = v29 >= v27;
        v30 = v29 < v27;
        if (v14)
        {
          v28 = v26;
        }

        v26 = v26[v30];
      }

      while (v26);
      if (v28 != v24 && v27 >= v28[4])
      {
        v33 = v28[5];
        if (v33 != v25)
        {
          v34 = v33[1];
          if (v33 != v34)
          {
            v35 = *v34;
            v36 = *(v35 + 8);
            v37 = *v33;
            *(v37 + 8) = v36;
            *v36 = v37;
            v38 = *v25;
            *(v38 + 8) = v33;
            *v33 = v38;
            *v25 = v35;
            *(v35 + 8) = v25;
          }
        }
      }

      else
      {
LABEL_29:
        v31 = sub_29A37759C(a3, 0, 0, v6);
        v32 = *v25;
        *(v32 + 8) = v31;
        *v31 = v32;
        *v25 = v31;
        v31[1] = v25;
        ++*(a3 + 16);
        v39 = v6;
        result = sub_29A3775F4(a4, v6, &unk_29B4D6118, &v39);
        result[5] = v31;
      }
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A3624DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E3AEC(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_AppendKeys(void *result, uint64_t a2, uint64_t **a3, uint64_t **a4)
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
        sub_29A363794(a2, 5);
        if (v38 == 1)
        {
          v10 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v11 = a4 + 1;
          do
          {
            v12 = v10[4];
            v13 = v12 >= v37;
            v14 = v12 < v37;
            if (v13)
            {
              v11 = v10;
            }

            v10 = v10[v14];
          }

          while (v10);
          if (v11 != v9 && v37 >= v11[4])
          {
            v17 = v11[5];
            if (v17 != a3)
            {
              v18 = v17[1];
              if (v17 != v18)
              {
                v19 = *v18;
                v20 = v19[1];
                v21 = *v17;
                v21[1] = v20;
                *v20 = v21;
                v22 = *a3;
                v22[1] = v17;
                *v17 = v22;
                *a3 = v19;
                v19[1] = a3;
              }
            }
          }

          else
          {
LABEL_13:
            v15 = sub_29A37759C(a3, 0, 0, &v37);
            v16 = *a3;
            *(v16 + 8) = v15;
            *v15 = v16;
            *a3 = v15;
            v15[1] = a3;
            a3[2] = (a3[2] + 1);
            v39 = &v37;
            sub_29A3775F4(a4, &v37, &unk_29B4D6118, &v39)[5] = v15;
          }
        }

        result = sub_29A1E3AEC(&v37);
        ++v6;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v23 = a4 + 1;
    do
    {
      v24 = *v23;
      if (!*v23)
      {
        goto LABEL_29;
      }

      v25 = *v6;
      v26 = a4 + 1;
      do
      {
        v27 = v24[4];
        v13 = v27 >= v25;
        v28 = v27 < v25;
        if (v13)
        {
          v26 = v24;
        }

        v24 = v24[v28];
      }

      while (v24);
      if (v26 != v23 && v25 >= v26[4])
      {
        v31 = v26[5];
        if (v31 != a3)
        {
          v32 = v31[1];
          if (v31 != v32)
          {
            v33 = *v32;
            v34 = v33[1];
            v35 = *v31;
            v35[1] = v34;
            *v34 = v35;
            v36 = *a3;
            v36[1] = v31;
            *v31 = v36;
            *a3 = v33;
            v33[1] = a3;
          }
        }
      }

      else
      {
LABEL_29:
        v29 = sub_29A37759C(a3, 0, 0, v6);
        v30 = *a3;
        v30[1] = v29;
        *v29 = v30;
        *a3 = v29;
        v29[1] = a3;
        a3[2] = (a3[2] + 1);
        v37 = v6;
        result = sub_29A3775F4(a4, v6, &unk_29B4D6118, &v37);
        result[5] = v29;
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A36276C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E3AEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_ReorderKeys()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

{
    ;
  }
}

void sub_29A3627F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*result == 1)
  {
    sub_29A1E1FE0(a3, result);
  }

  if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
  {
    if (*a2 == 1)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
    }

    if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
    }
  }

  *a3 = 0;
  a3[152] = 0;
  return result;
}

void sub_29A362C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a10;
  sub_29A1E234C(&a19);
  a19 = &a13;
  sub_29A1E234C(&a19);
  a19 = &a16;
  sub_29A1E234C(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_29A362D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_29A31BE88(&v9, a3, *(a1 + 8));
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 2;
        sub_29A1E230C(a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void *sub_29A362DD4(void *a1, void *a2, void *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*v3 != *a3)
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (*i != *a3)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ModifyOperations(void ****a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A362F24(a2, a1 + 1);
  v5 = v4 | sub_29A362F24(a2, a1 + 4);
  v6 = sub_29A362F24(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A362F24(a2, a1 + 10);
  v8 = sub_29A362F24(a2, a1 + 13);
  return v7 | v8 | sub_29A362F24(a2, a1 + 16);
}

uint64_t sub_29A362F24(uint64_t a1, void ****a2)
{
  v19 = 0uLL;
  v20 = 0;
  sub_29A2FCAE8(&v19, a2[1] - *a2);
  v17 = 0u;
  v18 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_15;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      sub_29A0DDCB0();
    }

    (*(*v7 + 48))(&v15);
    if (v16 == 1)
    {
      sub_29A377A70(&v17, &v15);
      if ((v8 & 1) == 0)
      {
        sub_29A37811C(&v15);
      }
    }

    if (v16 == 1)
    {
      if (v15 == *v4)
      {
        sub_29A1E28B4(&v19, v4);
        goto LABEL_12;
      }

      sub_29A377BD0(&v19, &v15);
    }

    v6 = 1;
LABEL_12:
    sub_29A1E3AEC(&v15);
    ++v4;
  }

  while (v4 != v5);
  if (v6)
  {
    v9 = *a2;
    *a2 = v19;
    v19 = v9;
    v10 = a2[2];
    a2[2] = v20;
    v20 = v10;
    v11 = 1;
    goto LABEL_16;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  v12 = *(&v18 + 1);
  *(&v18 + 1) = 0;
  if (v12)
  {
    v13 = sub_29A1DE590(v12);
    operator delete(v13);
  }

  v15 = &v17;
  sub_29A1E234C(&v15);
  *&v17 = &v19;
  sub_29A1E234C(&v17);
  return v11;
}

void sub_29A3630AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a11 = &a15;
  sub_29A1E234C(&a11);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::GetItems();
  }

  return 0;
}

void sub_29A3632C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a12 = &a17;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SetExplicitItems();
}

void sub_29A363584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A377388(&a16);
  sub_29A377408(&a9, a10);
  sub_29A36B320(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v2 = a1[2];
  v4 = a2[1];
  if (v2 - v3 != a2[2] - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    v3 += 8;
    ++v4;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[4];
  if (v5 - v6 != a2[5] - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    v6 += 8;
    ++v7;
  }

  v9 = a1[7];
  v8 = a1[8];
  v10 = a2[7];
  if (v8 - v9 != a2[8] - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    v9 += 8;
    ++v10;
  }

  v12 = a1[10];
  v11 = a1[11];
  v13 = a2[10];
  if (v11 - v12 != a2[11] - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    v12 += 8;
    ++v13;
  }

  v15 = a1[13];
  v14 = a1[14];
  v16 = a2[13];
  if (v14 - v15 != a2[14] - v16)
  {
    return 0;
  }

  while (v15 != v14)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    v15 += 8;
    ++v16;
  }

  v18 = a1[16];
  v17 = a1[17];
  v19 = a2[16];
  if (v17 - v18 != a2[17] - v19)
  {
    return 0;
  }

  if (v18 == v17)
  {
    return 1;
  }

  v20 = v18 + 8;
  do
  {
    v21 = *v19++;
    result = *(v20 - 8) == v21;
    v23 = *(v20 - 8) != v21 || v20 == v17;
    v20 += 8;
  }

  while (!v23);
  return result;
}

uint64_t sub_29A363794(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::_ReorderKeysHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  v7 = a1[1];
  *&v36 = *a1;
  *(&v36 + 1) = v7;
  while (v36 != *(&v36 + 1))
  {
    if (*(a2 + 24))
    {
      sub_29A1E25CC(&v36, a2, a3);
      sub_29A363794(a2, 3);
      if (v35 == 1)
      {
        sub_29A378394(&v38, &v34, &v34);
        if (v8)
        {
          sub_29A1E28B4(&v40, &v34);
        }
      }

      sub_29A1E3AEC(&v34);
    }

    else
    {
      v9 = sub_29A1E25CC(&v36, a2, a3);
      sub_29A378394(&v38, v9, v9);
      if (v10)
      {
        v12 = sub_29A1E25CC(&v36, v10, v11);
        sub_29A1E28B4(&v40, v12);
      }
    }

    sub_29A1E264C(&v36);
  }

  if (v40 != v41)
  {
    *&v36 = &v36;
    *(&v36 + 1) = &v36;
    v37 = 0;
    sub_29A1180F8(&v36, a3);
    v34 = v40;
    v35 = v41;
    v15 = (a4 + 8);
    while (v34 != v35)
    {
      v16 = sub_29A1E25CC(&v34, v13, v14);
      v17 = *v15;
      if (*v15)
      {
        v18 = *v16;
        v19 = v15;
        do
        {
          v20 = v17[4];
          v21 = v20 >= v18;
          v22 = v20 < v18;
          if (v21)
          {
            v19 = v17;
          }

          v17 = v17[v22];
        }

        while (v17);
        if (v19 != v15 && v18 >= v19[4])
        {
          v23 = v19[5];
          v24 = &v36;
          if (v23[1] != &v36)
          {
            v24 = v23[1];
            do
            {
              if (v39[0])
              {
                v25 = *(v24 + 2);
                v26 = v39[0];
                do
                {
                  v27 = *(v26 + 28);
                  if (v25 >= v27)
                  {
                    if (v27 >= v25)
                    {
                      goto LABEL_32;
                    }

                    ++v26;
                  }

                  v26 = *v26;
                }

                while (v26);
              }

              v24 = *(v24 + 1);
            }

            while (v24 != &v36);
            v24 = &v36;
          }

LABEL_32:
          if (!v37)
          {
            goto LABEL_37;
          }

          sub_29A117E88(a3, a3, &v36, v23, v24);
        }
      }

      sub_29A1E264C(&v34);
    }

    v28 = v37;
    if (v37)
    {
      v29 = *(a3 + 8);
      v30 = v36;
      v31 = *(v36 + 8);
      v32 = **(&v36 + 1);
      *(v32 + 8) = v31;
      *v31 = v32;
      v33 = *v29;
      *(v33 + 8) = *(&v30 + 1);
      **(&v30 + 1) = v33;
      *v29 = v30;
      *(v30 + 8) = v29;
      *(a3 + 16) += v28;
      v37 = 0;
    }

LABEL_37:
    sub_29A36B320(&v36);
  }

  sub_29A1E2AEC(&v38, v39[0]);
  v38 = &v40;
  sub_29A1E234C(&v38);
}

void sub_29A363A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void *a16)
{
  sub_29A36B320(&a12);
  sub_29A1E2AEC(&a15, a16);
  a15 = (v16 - 56);
  sub_29A1E234C(&a15);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::SdfPath>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2046F90, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = pxrInternal__aapl__pxrReserved__::SdfPath]";
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
    sub_29A37A0C0(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A37A0C0(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A37A0C0(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A37A0C0(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A37A0C0(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A37A0C0(a1, __p, (a2 + 128), &v13, 0);
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

void sub_29A363D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::CreateExplicit(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SdfListOp(uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetExplicitItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::Create(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetPrependedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetAppendedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetDeletedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_SetExplicit();
}

{
    ;
  }
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::Swap(char *result, char *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::HasItem(uint64_t a1, void *a2)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v4, a2) & 1) == 0)
      {
        v4 += 7;
        if (v4 == v5)
        {
          v4 = v5;
          break;
        }
      }

      v5 = *(a1 + 16);
    }

    return v4 != v5;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 != v8)
  {
    while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v7, a2) & 1) == 0)
    {
      v7 += 7;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(a1 + 40);
  }

  if (v7 == v8)
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v9 != v10)
    {
      while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v9, a2) & 1) == 0)
      {
        v9 += 7;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v10 = *(a1 + 64);
    }

    if (v9 == v10)
    {
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      if (v11 != v12)
      {
        while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v11, a2) & 1) == 0)
        {
          v11 += 7;
          if (v11 == v12)
          {
            v11 = v12;
            break;
          }
        }

        v12 = *(a1 + 88);
      }

      if (v11 == v12)
      {
        v13 = *(a1 + 104);
        v14 = *(a1 + 112);
        if (v13 != v14)
        {
          while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v13, a2) & 1) == 0)
          {
            v13 += 7;
            if (v13 == v14)
            {
              v13 = v14;
              break;
            }
          }

          v14 = *(a1 + 112);
        }

        if (v13 == v14)
        {
          v4 = *(a1 + 128);
          v5 = *(a1 + 136);
          if (v4 != v5)
          {
            while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v4, a2) & 1) == 0)
            {
              v4 += 7;
              if (v4 == v5)
              {
                v4 = v5;
                break;
              }
            }

            v5 = *(a1 + 136);
          }

          return v4 != v5;
        }
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::GetItems(SdfListOpType) const [T = pxrInternal__aapl__pxrReserved__::SdfReference]";
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ApplyOperations();
}

void sub_29A36453C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A345FB4(va);
  sub_29A2463D0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ApplyOperations(uint64_t a1, __int128 **a2, uint64_t a3)
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
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_AddKeys();
    }

    if (*(a3 + 24) || 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 88) - *(a1 + 80)) >> 3) + 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3) + 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 40) - *(a1 + 32)) >> 3) + 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 112) - *(a1 + 104)) >> 3) != 0x9249249249249249 * ((*(a1 + 136) - *(a1 + 128)) >> 3))
    {
      sub_29A37A2AC(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = *v8; i != &v7; i = *(i + 8))
      {
        v10 = (i + 16);
        sub_29A37A4B4(&v4, (i + 16), &unk_29B4D6118, &v10)[11] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_DeleteKeys();
    }

    sub_29A36B4D0(&v7);
  }
}

void sub_29A3647AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A36B4D0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_SetExplicit(unsigned __int8 *a1, int a2)
{
  if (*a1 != a2)
  {
    *a1 = a2;
    v3 = (a1 + 8);
    v4 = *(a1 + 1);
    for (i = *(a1 + 2); i != v4; sub_29A244A44(v3, i))
    {
      i -= 56;
    }

    v6 = *(a1 + 4);
    *(a1 + 2) = v4;
    for (j = *(a1 + 5); j != v6; sub_29A244A44((a1 + 32), j))
    {
      j -= 56;
    }

    v8 = *(a1 + 7);
    *(a1 + 5) = v6;
    for (k = *(a1 + 8); k != v8; sub_29A244A44((a1 + 56), k))
    {
      k -= 56;
    }

    v10 = *(a1 + 10);
    *(a1 + 8) = v8;
    for (m = *(a1 + 11); m != v10; sub_29A244A44((a1 + 80), m))
    {
      m -= 56;
    }

    v12 = *(a1 + 13);
    *(a1 + 11) = v10;
    for (n = *(a1 + 14); n != v12; sub_29A244A44((a1 + 104), n))
    {
      n -= 56;
    }

    v14 = *(a1 + 16);
    *(a1 + 14) = v12;
    for (ii = *(a1 + 17); ii != v14; sub_29A244A44((a1 + 128), ii))
    {
      ii -= 56;
    }

    *(a1 + 17) = v14;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_MakeUnique(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a2) >> 3);
  if (v6 < 2)
  {
    return 1;
  }

  if (v6 <= 0xA)
  {
    if (v4 == (v5 - 56))
    {
      return 1;
    }

    v12 = 1;
    do
    {
      v13 = v4 + 56;
      if (v5 != (v4 + 56))
      {
        v14 = (v4 + 56);
        do
        {
          v12 &= pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v4, v14) ^ 1;
          v14 = (v14 + 56);
        }

        while (v14 != v5);
      }

      v4 = (v4 + 56);
    }

    while (v13 != v5 - 56);
    if (v12)
    {
      return 1;
    }

    v4 = *a2;
    v5 = *(a2 + 8);
  }

  if (v4 == v5)
  {
    return 1;
  }

  while (1)
  {
    v15 = v4 + 56;
    if ((v4 + 56) == v5)
    {
      break;
    }

    v16 = pxrInternal__aapl__pxrReserved__::SdfReference::operator<(v4, v4 + 7);
    v4 = (v4 + 56);
    if ((v16 & 1) == 0)
    {
      v5 = (v15 - 56);
      break;
    }
  }

  v17 = *(a2 + 8);
  if (v5 == v17)
  {
    return 1;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  sub_29A246200(&v38, *a2, v17, 0x6DB6DB6DB6DB6DB7 * ((v17 - *a2) >> 3));
  v18 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v39 - v38));
  if (v39 == v38)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_29A37C8C4(v38, v39, &v33, v19, 1);
  v20 = v38;
  v21 = v39;
  if (v38 == v39)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v22 = v20 + 7;
    if (v20 + 7 == v21)
    {
      break;
    }

    v23 = pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v20, v20 + 7);
    v20 = v22;
    if (v23)
    {
      v21 = v22 - 7;
      break;
    }
  }

  if (v21 == v39)
  {
LABEL_31:
    v7 = 1;
  }

  else
  {
    sub_29A37E19C(&v36, 0, 0.0, 0.5);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    sub_29A366B88(&v33, 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    if (a3)
    {
      v24 = *(a2 + 8);
      while (v24 != *a2)
      {
        v24 = (v24 - 56);
        sub_29A37E3BC(&v36, v24, v24);
        if (v25)
        {
          sub_29A245218(&v33, v24);
        }
      }

      v28 = (v34 - 56);
      if (v33 != v34 && v28 > v33)
      {
        sub_29A2476F4(v33, v28);
      }
    }

    else
    {
      for (i = *a2; i != *(a2 + 8); i = (i + 56))
      {
        sub_29A37E3BC(&v36, i, i);
        if (v27)
        {
          sub_29A245218(&v33, i);
        }
      }
    }

    if (&v33 != a2)
    {
      sub_29A325158(a2, v33, v34, 0x6DB6DB6DB6DB6DB7 * ((v34 - v33) >> 3));
    }

    if (a4)
    {
      MEMORY[0x29C2C1A60](a4, "Duplicate item found in SdfListOp: %s.", __p);
      sub_29A366C70(v21);
      if (v32 < 0)
      {
        operator delete(__pa);
      }
    }

    v41 = &v33;
    sub_29A2463D0(&v41);
    v33 = &v37;
    sub_29A36B60C(&v33);
    v7 = 0;
  }

  v36 = &v38;
  sub_29A2463D0(&v36);
  return v7;
}

void sub_29A364C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  a15 = &a25;
  sub_29A2463D0(&a15);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetDeletedItems();
    }
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetAddedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetOrderedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::GetItems();
}

{
    ;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v22 = result[13];
  v23 = v4;
  if (v22 != v4)
  {
    v8 = a4 + 1;
    do
    {
      if (*(a2 + 24))
      {
        sub_29A1FB580(&v22, a2, a3);
        sub_29A3667B4(a2, 2);
        if (v21 == 1)
        {
          v9 = sub_29A37C7D8(a4, v20);
          v10 = v9;
          if (v8 != v9)
          {
            v11 = *(v9 + 88);
            v13 = *v11;
            v12 = v11[1];
            *(v13 + 8) = v12;
            *v12 = v13;
            --*(a3 + 16);
            sub_29A36B544((v11 + 2));
            operator delete(v11);
            sub_29A03AFE8(a4, v10);
            sub_29A37A244((v10 + 4));
            operator delete(v10);
          }
        }

        sub_29A36B5AC(v20);
      }

      else
      {
        v14 = sub_29A1FB580(&v22, a2, a3);
        v15 = sub_29A37C7D8(a4, v14);
        if (v8 != v15)
        {
          v16 = v15;
          v17 = *(v15 + 88);
          v19 = *v17;
          v18 = v17[1];
          *(v19 + 8) = v18;
          *v18 = v19;
          --*(a3 + 16);
          sub_29A36B544((v17 + 2));
          operator delete(v17);
          sub_29A03AFE8(a4, v16);
          sub_29A37A244((v16 + 4));
          operator delete(v16);
        }
      }

      result = sub_29A1FB600(&v22);
    }

    while (v22 != v23);
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_PrependKeys(char *result, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = *(result + 7);
  v6 = *(result + 8);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 8;
      do
      {
        v6 -= 7;
        sub_29A3667B4(a2, 4);
        if (v31 == 1)
        {
          v10 = *(a3 + 8);
          v11 = sub_29A37C7D8(a4, v30);
          if (v9 == v11)
          {
            v18 = sub_29A37C3FC(a3, 0, 0, v30);
            v19 = *v10;
            *(v19 + 8) = v18;
            *v18 = v19;
            *v10 = v18;
            v18[1] = v10;
            ++*(a3 + 16);
            v32 = v30;
            sub_29A37A4B4(a4, v30, &unk_29B4D6118, &v32)[11] = v18;
          }

          else
          {
            v12 = *(v11 + 88);
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

        result = sub_29A36B5AC(v30);
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v20 = a4 + 8;
    do
    {
      v6 -= 7;
      v21 = *(a3 + 8);
      result = sub_29A37C7D8(a4, v6);
      if (v20 == result)
      {
        v28 = sub_29A37C3FC(a3, 0, 0, v6);
        v29 = *v21;
        *(v29 + 8) = v28;
        *v28 = v29;
        *v21 = v28;
        v28[1] = v21;
        ++*(a3 + 16);
        *&v30[0] = v6;
        result = sub_29A37A4B4(a4, v6, &unk_29B4D6118, v30);
        *(result + 11) = v28;
      }

      else
      {
        v22 = *(result + 11);
        if (v22 != v21)
        {
          v23 = v22[1];
          if (v22 != v23)
          {
            v24 = *v23;
            v25 = *(v24 + 8);
            v26 = *v22;
            *(v26 + 8) = v25;
            *v25 = v26;
            v27 = *v21;
            *(v27 + 8) = v22;
            *v22 = v27;
            *v21 = v24;
            *(v24 + 8) = v21;
          }
        }
      }
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_AppendKeys(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v6 = *(result + 80);
  v7 = *(result + 88);
  if (*(a2 + 24))
  {
    if (v6 != v7)
    {
      v9 = a4 + 8;
      do
      {
        sub_29A3667B4(a2, 5);
        if (v29 == 1)
        {
          v10 = sub_29A37C7D8(a4, v28);
          if (v9 == v10)
          {
            v17 = sub_29A37C3FC(a3, 0, 0, v28);
            v18 = *a3;
            *(v18 + 8) = v17;
            *v17 = v18;
            *a3 = v17;
            v17[1] = a3;
            ++a3[2];
            v30 = v28;
            sub_29A37A4B4(a4, v28, &unk_29B4D6118, &v30)[11] = v17;
          }

          else
          {
            v11 = *(v10 + 88);
            if (v11 != a3)
            {
              v12 = v11[1];
              if (v11 != v12)
              {
                v13 = *v12;
                v14 = *(v13 + 8);
                v15 = *v11;
                *(v15 + 8) = v14;
                *v14 = v15;
                v16 = *a3;
                *(v16 + 8) = v11;
                *v11 = v16;
                *a3 = v13;
                *(v13 + 8) = a3;
              }
            }
          }
        }

        result = sub_29A36B5AC(v28);
        v6 += 7;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v19 = a4 + 8;
    do
    {
      result = sub_29A37C7D8(a4, v6);
      if (v19 == result)
      {
        v26 = sub_29A37C3FC(a3, 0, 0, v6);
        v27 = *a3;
        *(v27 + 8) = v26;
        *v26 = v27;
        *a3 = v26;
        v26[1] = a3;
        ++a3[2];
        *&v28[0] = v6;
        result = sub_29A37A4B4(a4, v6, &unk_29B4D6118, v28);
        *(result + 88) = v26;
      }

      else
      {
        v20 = *(result + 88);
        if (v20 != a3)
        {
          v21 = v20[1];
          if (v20 != v21)
          {
            v22 = *v21;
            v23 = *(v22 + 8);
            v24 = *v20;
            *(v24 + 8) = v23;
            *v23 = v24;
            v25 = *a3;
            *(v25 + 8) = v20;
            *v20 = v25;
            *a3 = v22;
            *(v22 + 8) = a3;
          }
        }
      }

      v6 += 7;
    }

    while (v6 != v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_ReorderKeys(uint64_t a1)
{
  memset(v1, 0, sizeof(v1));
  sub_29A246200(v1, *(a1 + 128), *(a1 + 136), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 136) - *(a1 + 128)) >> 3));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_ReorderKeysHelper();
}

void sub_29A3656C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2463D0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result;
  v41 = *MEMORY[0x29EDCA608];
  if (*result == 1)
  {
    result = sub_29A2481A4(a3, result);
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
        sub_29A246200(&v28, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
        *&v33 = 0;
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ApplyOperations();
      }

      if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_29A246200(&v28, *(a2 + 104), *(a2 + 112), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 112) - *(a2 + 104)) >> 3));
        *v25 = 0;
        v26 = 0;
        v27 = 0;
        sub_29A246200(v25, *(a2 + 56), *(a2 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
        v22 = 0;
        *v23 = 0;
        v24 = 0;
        sub_29A246200(&v22, *(a2 + 80), *(a2 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
        v6 = v3[13];
        v7 = v3[14];
        while (1)
        {
          if (v6 == v7)
          {
            v12 = v3[7];
            v13 = v3[8];
            if (v12 != v13)
            {
              do
              {
                v14 = sub_29A365CEC(v28, v29, v12);
                sub_29A365C68(&v28, v14, v29);
                v15 = sub_29A365CEC(*v25, v26, v12);
                sub_29A365C68(v25, v15, v26);
                v16 = sub_29A365CEC(v22, *v23, v12);
                sub_29A365C68(&v22, v16, *v23);
                v12 = (v12 + 56);
              }

              while (v12 != v13);
              v12 = v3[7];
              v13 = v3[8];
            }

            sub_29A37AED4(v25, *v25, v12, v13, 0x6DB6DB6DB6DB6DB7 * ((v13 - v12) >> 3));
            v17 = v3[10];
            v18 = v3[11];
            if (v17 != v18)
            {
              do
              {
                v19 = sub_29A365CEC(v28, v29, v17);
                sub_29A365C68(&v28, v19, v29);
                v20 = sub_29A365CEC(*v25, v26, v17);
                sub_29A365C68(v25, v20, v26);
                v21 = sub_29A365CEC(v22, *v23, v17);
                sub_29A365C68(&v22, v21, *v23);
                v17 = (v17 + 56);
              }

              while (v17 != v18);
              v17 = v3[10];
              v18 = v3[11];
            }

            sub_29A37AED4(&v22, *v23, v17, v18, 0x6DB6DB6DB6DB6DB7 * ((v18 - v17) >> 3));
            LOBYTE(v31) = 0;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetDeletedItems();
          }

          v8 = sub_29A365CEC(*v25, v26, v6);
          sub_29A365C68(v25, v8, v26);
          v9 = sub_29A365CEC(v22, *v23, v6);
          sub_29A365C68(&v22, v9, *v23);
          v10 = v28;
          v11 = v29;
          if (v28 != v29)
          {
            do
            {
              if (pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v10, v6))
              {
                goto LABEL_17;
              }

              v10 += 7;
            }

            while (v10 != v11);
            v10 = v11;
LABEL_17:
            v11 = v29;
          }

          if (v10 == v11)
          {
            sub_29A245218(&v28, v6);
          }

          v6 = (v6 + 56);
        }
      }
    }

    *a3 = 0;
    a3[152] = 0;
  }

  return result;
}

void sub_29A365B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a10;
  sub_29A2463D0(&a19);
  a19 = &a13;
  sub_29A2463D0(&a19);
  a19 = &a16;
  sub_29A2463D0(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_29A365C68(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_29A37AE28(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 56;
        sub_29A244A44(a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *sub_29A365CEC(__int128 *a1, __int128 *a2, void *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v3, a3) & 1) == 0)
    {
      v3 = (v3 + 56);
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = (v3 + 56); i != a2; i = (i + 56))
      {
        if ((pxrInternal__aapl__pxrReserved__::SdfReference::operator==(i, a3) & 1) == 0)
        {
          if (*(v3 + 23) < 0)
          {
            operator delete(*v3);
          }

          v8 = *i;
          *(v3 + 2) = *(i + 2);
          *v3 = v8;
          *(i + 23) = 0;
          *i = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ModifyOperations(__int128 **a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A365E7C(a2, a1 + 1);
  v5 = v4 | sub_29A365E7C(a2, a1 + 4);
  v6 = sub_29A365E7C(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A365E7C(a2, a1 + 10);
  v8 = sub_29A365E7C(a2, a1 + 13);
  return v7 | v8 | sub_29A365E7C(a2, a1 + 16);
}

uint64_t sub_29A365E7C(uint64_t a1, __int128 **a2)
{
  v19 = 0uLL;
  v20 = 0;
  sub_29A366B88(&v19, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  v17 = 0u;
  v18 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_15;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      sub_29A0DDCB0();
    }

    (*(*v7 + 48))(v15);
    if (v16 == 1)
    {
      sub_29A37B190(&v17, v15);
      if ((v8 & 1) == 0)
      {
        sub_29A37C114(v15);
      }
    }

    if (v16 == 1)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v15, v4))
      {
        sub_29A245218(&v19, v4);
        goto LABEL_12;
      }

      sub_29A37B330(&v19, v15);
    }

    v6 = 1;
LABEL_12:
    sub_29A36B5AC(v15);
    v4 = (v4 + 56);
  }

  while (v4 != v5);
  if (v6)
  {
    v9 = *a2;
    *a2 = v19;
    v19 = v9;
    v10 = a2[2];
    a2[2] = v20;
    v20 = v10;
    v11 = 1;
    goto LABEL_16;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  v12 = *(&v18 + 1);
  *(&v18 + 1) = 0;
  if (v12)
  {
    v13 = sub_29A37B3F0(v12);
    operator delete(v13);
  }

  *&v15[0] = &v17;
  sub_29A2463D0(v15);
  *&v15[0] = &v19;
  sub_29A2463D0(v15);
  return v11;
}

void sub_29A366018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 80);
  sub_29A2463D0(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::GetItems();
  }

  return 0;
}

void sub_29A36625C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a12 = &a17;
  sub_29A2463D0(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SetExplicitItems();
}

void sub_29A366520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A345FB4(&a16);
  sub_29A37A1E8(&a9, a10);
  sub_29A36B4D0(&a12);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::operator==(unsigned __int8 *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a2[1];
  if (v5 - v4 != a2[2] - v6)
  {
    return 0;
  }

  while (v4 != v5)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v4, v6))
    {
      return 0;
    }

    v4 += 7;
    v6 += 7;
  }

  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = a2[4];
  if (v8 - v7 != a2[5] - v9)
  {
    return 0;
  }

  while (v7 != v8)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v7, v9))
    {
      return 0;
    }

    v7 += 7;
    v9 += 7;
  }

  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = a2[7];
  if (v11 - v10 != a2[8] - v12)
  {
    return 0;
  }

  while (v10 != v11)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v10, v12))
    {
      return 0;
    }

    v10 += 7;
    v12 += 7;
  }

  v13 = *(a1 + 10);
  v14 = *(a1 + 11);
  v15 = a2[10];
  if (v14 - v13 != a2[11] - v15)
  {
    return 0;
  }

  while (v13 != v14)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v13, v15))
    {
      return 0;
    }

    v13 += 7;
    v15 += 7;
  }

  v16 = *(a1 + 13);
  v17 = *(a1 + 14);
  v18 = a2[13];
  if (v17 - v16 != a2[14] - v18)
  {
    return 0;
  }

  while (v16 != v17)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v16, v18))
    {
      return 0;
    }

    v16 += 7;
    v18 += 7;
  }

  return sub_29A366724(a1 + 16, (a2 + 16));
}

uint64_t sub_29A366724(double **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfReference::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 7;
    v4 += 7;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_29A3667B4(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::_ReorderKeysHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v31[0] = 0;
  v31[1] = 0;
  v7 = a1[1];
  v28 = *a1;
  v29 = v7;
  v30 = v31;
  while (v28 != v29)
  {
    if (*(a2 + 24))
    {
      sub_29A366A88(&v28, a2, a3);
      sub_29A3667B4(a2, 3);
      if (v27 == 1)
      {
        sub_29A37C5F0(&v30, &v25, &v25);
        if (v8)
        {
          sub_29A245218(&v32, &v25);
        }
      }

      sub_29A36B5AC(&v25);
    }

    else
    {
      v9 = sub_29A366A88(&v28, a2, a3);
      sub_29A37C5F0(&v30, v9, v9);
      if (v10)
      {
        v12 = sub_29A366A88(&v28, v10, v11);
        sub_29A245218(&v32, v12);
      }
    }

    sub_29A366B08(&v28);
  }

  if (v32 != v33)
  {
    *&v25 = &v25;
    *(&v25 + 1) = &v25;
    v26 = 0;
    sub_29A1180F8(&v25, a3);
    v28 = v32;
    v29 = v33;
    while (v28 != v29)
    {
      v15 = sub_29A366A88(&v28, v13, v14);
      v16 = sub_29A37C7D8(a4, v15);
      v17 = v16;
      if (a4 + 8 != v16)
      {
        v18 = *(v16 + 88);
        while (1)
        {
          v18 = *(v18 + 1);
          if (v18 == &v25)
          {
            break;
          }

          if (sub_29A37C85C(&v30, v18 + 2))
          {
            goto LABEL_20;
          }
        }

        v18 = &v25;
LABEL_20:
        if (!v26)
        {
          goto LABEL_25;
        }

        sub_29A117E88(a3, a3, &v25, *(v17 + 88), v18);
      }

      sub_29A366B08(&v28);
    }

    v19 = v26;
    if (v26)
    {
      v20 = *(a3 + 8);
      v21 = v25;
      v22 = *(v25 + 8);
      v23 = **(&v25 + 1);
      *(v23 + 8) = v22;
      *v22 = v23;
      v24 = *v20;
      *(v24 + 8) = *(&v21 + 1);
      **(&v21 + 1) = v24;
      *v20 = v21;
      *(v21 + 8) = v20;
      *(a3 + 16) += v19;
      v26 = 0;
    }

LABEL_25:
    sub_29A36B4D0(&v25);
  }

  sub_29A37C594(&v30, v31[0]);
  *&v25 = &v32;
  sub_29A2463D0(&v25);
}

void sub_29A366A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  sub_29A36B5AC(&a9);
  sub_29A37C594(&a19, a20);
  a9 = (v20 - 72);
  sub_29A2463D0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A366A88(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A366B08(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 56;
  }

  return a1;
}

void **sub_29A366B88(void **result, unint64_t a2)
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
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[56 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A245460(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A2455EC(&v12);
  }

  return result;
}

void sub_29A366C5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2455EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A366C70(uint64_t a1)
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

void sub_29A366E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::SdfReference>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20472B8, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = pxrInternal__aapl__pxrReserved__::SdfReference]";
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
    sub_29A37EB4C(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A37EB4C(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A37EB4C(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A37EB4C(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A37EB4C(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A37EB4C(a1, __p, (a2 + 128), &v13, 0);
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

void sub_29A3670E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::CreateExplicit(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetExplicitItems();
}

double pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SdfListOp(uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetExplicitItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::Create(uint64_t a1@<X8>)
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
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetPrependedItems();
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetPrependedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetAppendedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetDeletedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_SetExplicit();
}

{
    ;
  }
}

char *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::Swap(char *result, char *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::HasItem(uint64_t a1, double *a2)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v4, a2))
      {
        v4 += 6;
        if (v4 == v5)
        {
          v4 = v5;
          break;
        }
      }

      v5 = *(a1 + 16);
    }

    return v4 != v5;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 != v8)
  {
    while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v7, a2))
    {
      v7 += 6;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(a1 + 40);
  }

  if (v7 == v8)
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v9 != v10)
    {
      while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v9, a2))
      {
        v9 += 6;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v10 = *(a1 + 64);
    }

    if (v9 == v10)
    {
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      if (v11 != v12)
      {
        while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v11, a2))
        {
          v11 += 6;
          if (v11 == v12)
          {
            v11 = v12;
            break;
          }
        }

        v12 = *(a1 + 88);
      }

      if (v11 == v12)
      {
        v13 = *(a1 + 104);
        v14 = *(a1 + 112);
        if (v13 != v14)
        {
          while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v13, a2))
          {
            v13 += 6;
            if (v13 == v14)
            {
              v13 = v14;
              break;
            }
          }

          v14 = *(a1 + 112);
        }

        if (v13 == v14)
        {
          v4 = *(a1 + 128);
          v5 = *(a1 + 136);
          if (v4 != v5)
          {
            while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v4, a2))
            {
              v4 += 6;
              if (v4 == v5)
              {
                v4 = v5;
                break;
              }
            }

            v5 = *(a1 + 136);
          }

          return v4 != v5;
        }
      }
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::GetItems(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v5[0] = "sdf/listOp.cpp";
    v5[1] = "GetItems";
    v5[2] = 151;
    v5[3] = "const typename SdfListOp<T>::ItemVector &pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::GetItems(SdfListOpType) const [T = pxrInternal__aapl__pxrReserved__::SdfPayload]";
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

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::GetAppliedItems(void *a1@<X8>)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ApplyOperations();
}

void sub_29A367904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A346184(va);
  sub_29A24A5D0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ApplyOperations(uint64_t a1, uint64_t *a2, uint64_t a3)
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
      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_AddKeys();
    }

    if (*(a3 + 24) || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 4) - 0x5555555555555555 * ((*(a1 + 64) - *(a1 + 56)) >> 4) - 0x5555555555555555 * ((*(a1 + 40) - *(a1 + 32)) >> 4) - 0x5555555555555555 * ((*(a1 + 112) - *(a1 + 104)) >> 4) != 0x5555555555555555 * ((*(a1 + 136) - *(a1 + 128)) >> 4))
    {
      sub_29A37ED2C(&v7, &v7, *a2, a2[1]);
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      for (i = *v8; i != &v7; i = *(i + 8))
      {
        v10 = (i + 16);
        sub_29A37EE98(&v4, (i + 16), &unk_29B4D6118, &v10)[10] = i;
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_DeleteKeys();
    }

    sub_29A36B770(&v7);
  }
}

void sub_29A367B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A36B770(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_SetExplicit(unsigned __int8 *a1, int a2)
{
  if (*a1 != a2)
  {
    *a1 = a2;
    v3 = (a1 + 8);
    v4 = *(a1 + 1);
    for (i = *(a1 + 2); i != v4; sub_29A248FFC(v3, i))
    {
      i -= 48;
    }

    v6 = *(a1 + 4);
    *(a1 + 2) = v4;
    for (j = *(a1 + 5); j != v6; sub_29A248FFC((a1 + 32), j))
    {
      j -= 48;
    }

    v8 = *(a1 + 7);
    *(a1 + 5) = v6;
    for (k = *(a1 + 8); k != v8; sub_29A248FFC((a1 + 56), k))
    {
      k -= 48;
    }

    v10 = *(a1 + 10);
    *(a1 + 8) = v8;
    for (m = *(a1 + 11); m != v10; sub_29A248FFC((a1 + 80), m))
    {
      m -= 48;
    }

    v12 = *(a1 + 13);
    *(a1 + 11) = v10;
    for (n = *(a1 + 14); n != v12; sub_29A248FFC((a1 + 104), n))
    {
      n -= 48;
    }

    v14 = *(a1 + 16);
    *(a1 + 14) = v12;
    for (ii = *(a1 + 17); ii != v14; sub_29A248FFC((a1 + 128), ii))
    {
      ii -= 48;
    }

    *(a1 + 17) = v14;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_MakeUnique(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 4);
  if (v6 < 2)
  {
    return 1;
  }

  if (v6 <= 0xA)
  {
    if (v4 == v5 - 6)
    {
      return 1;
    }

    v12 = 1;
    do
    {
      v13 = v4 + 48;
      if (v5 != (v4 + 48))
      {
        v14 = (v4 + 48);
        do
        {
          v12 &= !pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v4, v14);
          v14 += 6;
        }

        while (v14 != v5);
      }

      v4 += 48;
    }

    while (v13 != v5 - 6);
    if (v12)
    {
      return 1;
    }

    v4 = *a2;
    v5 = a2[1];
  }

  if (v4 == v5)
  {
    return 1;
  }

  while (1)
  {
    v15 = v4 + 48;
    if ((v4 + 48) == v5)
    {
      break;
    }

    v16 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(v4, (v4 + 48));
    v4 += 48;
    if ((v16 & 1) == 0)
    {
      v5 = (v15 - 48);
      break;
    }
  }

  v17 = a2[1];
  if (v5 == v17)
  {
    return 1;
  }

  v38 = 0uLL;
  v39 = 0;
  sub_29A24A49C(&v38, *a2, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - *a2) >> 4));
  v18 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v38.n128_u64[1] - v38.n128_u64[0]) >> 4));
  if (v38.n128_u64[1] == v38.n128_u64[0])
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_29A380E70(v38.n128_u64[0], v38.n128_u64[1], &v33, v19, 1);
  v21 = v38.n128_i64[1];
  v20 = v38.n128_u64[0];
  if (v38.n128_u64[0] == v38.n128_u64[1])
  {
    goto LABEL_31;
  }

  while (1)
  {
    v22 = v20 + 6;
    if (v20 + 6 == v21)
    {
      break;
    }

    v23 = pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v20, v20 + 6);
    v20 = v22;
    if (v23)
    {
      v21 = (v22 - 6);
      break;
    }
  }

  if (v21 == v38.n128_u64[1])
  {
LABEL_31:
    v7 = 1;
  }

  else
  {
    sub_29A3824F4(&v36, 0, 0.0, 0.5);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    sub_29A369F24(&v33, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    if (a3)
    {
      v24 = a2[1];
      while (v24 != *a2)
      {
        v24 -= 3;
        sub_29A382728(&v36, v24, v24);
        if (v25)
        {
          sub_29A249514(&v33, v24);
        }
      }

      v28 = &v34[-2];
      if (v33 != v34 && v28 > v33)
      {
        sub_29A24B778(v33, v28);
      }
    }

    else
    {
      for (i = *a2; i != a2[1]; i += 3)
      {
        sub_29A382728(&v36, i, i);
        if (v27)
        {
          sub_29A249514(&v33, i);
        }
      }
    }

    if (&v33 != a2)
    {
      sub_29A325794(a2, v33, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 4));
    }

    if (a4)
    {
      MEMORY[0x29C2C1A60](a4, "Duplicate item found in SdfListOp: %s.", v30);
      sub_29A36A000(v21);
      if (v32 < 0)
      {
        operator delete(__p);
      }
    }

    v40 = &v33;
    sub_29A24A5D0(&v40);
    v33 = &v37;
    sub_29A36B894(&v33);
    v7 = 0;
  }

  v36 = &v38;
  sub_29A24A5D0(&v36);
  return v7;
}

void sub_29A36800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 - 120);
  sub_29A24A5D0(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetItems(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetOrderedItems();
      case 4:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetPrependedItems();
      case 5:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetAppendedItems();
    }
  }

  else
  {
    switch(a3)
    {
      case 0:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetExplicitItems();
      case 1:
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetAddedItems();
      case 2:

        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetDeletedItems();
    }
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetAddedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetOrderedItems()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_SetExplicit();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_AddKeys()
{
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::GetItems();
}

{
    ;
  }
}

void sub_29A3683D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B840(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_DeleteKeys(void *result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = result[14];
  v22 = result[13];
  v23 = v4;
  if (v22 != v4)
  {
    v8 = a4 + 1;
    do
    {
      if (*(a2 + 24))
      {
        sub_29A1FAFF0(&v22, a2, a3);
        sub_29A369B50(a2, 2);
        if (v21 == 1)
        {
          v9 = sub_29A380D84(a4, v20);
          v10 = v9;
          if (v8 != v9)
          {
            v11 = *(v9 + 80);
            v13 = *v11;
            v12 = v11[1];
            *(v13 + 8) = v12;
            *v12 = v13;
            --*(a3 + 16);
            sub_29A36B7E4((v11 + 2));
            operator delete(v11);
            sub_29A03AFE8(a4, v10);
            sub_29A37ECD0((v10 + 4));
            operator delete(v10);
          }
        }

        sub_29A36B840(v20);
      }

      else
      {
        v14 = sub_29A1FAFF0(&v22, a2, a3);
        v15 = sub_29A380D84(a4, v14);
        if (v8 != v15)
        {
          v16 = v15;
          v17 = *(v15 + 80);
          v19 = *v17;
          v18 = v17[1];
          *(v19 + 8) = v18;
          *v18 = v19;
          --*(a3 + 16);
          sub_29A36B7E4((v17 + 2));
          operator delete(v17);
          sub_29A03AFE8(a4, v16);
          sub_29A37ECD0((v16 + 4));
          operator delete(v16);
        }
      }

      result = sub_29A1FB070(&v22);
    }

    while (v22 != v23);
  }

  return result;
}

void sub_29A368554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B840(va);
  _Unwind_Resume(a1);
}

uint64_t **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_PrependKeys(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t **a4)
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
        v6 -= 6;
        sub_29A369B50(a2, 4);
        if (v31 == 1)
        {
          v10 = *(a3 + 8);
          v11 = sub_29A380D84(a4, v30);
          if (v9 == v11)
          {
            v18 = sub_29A380AE0(a3, 0, 0, v30);
            v19 = *v10;
            *(v19 + 8) = v18;
            v18->n128_u64[0] = v19;
            *v10 = v18;
            v18->n128_u64[1] = v10;
            ++*(a3 + 16);
            v32 = v30;
            sub_29A37EE98(a4, v30, &unk_29B4D6118, &v32)[10] = v18;
          }

          else
          {
            v12 = *(v11 + 80);
            if (v12 != v10)
            {
              v13 = v12[1];
              if (v12 != v13)
              {
                v14 = *v13;
                v15 = v14->n128_u64[1];
                v16 = *v12;
                v16->n128_u64[1] = v15;
                *v15 = v16;
                v17 = *v10;
                v17->n128_u64[1] = v12;
                *v12 = v17;
                *v10 = v14;
                v14->n128_u64[1] = v10;
              }
            }
          }
        }

        result = sub_29A36B840(v30);
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v20 = a4 + 1;
    do
    {
      v6 -= 6;
      v21 = *(a3 + 8);
      result = sub_29A380D84(a4, v6);
      if (v20 == result)
      {
        v28 = sub_29A380AE0(a3, 0, 0, v6);
        v29 = *v21;
        *(v29 + 8) = v28;
        v28->n128_u64[0] = v29;
        *v21 = v28;
        v28->n128_u64[1] = v21;
        ++*(a3 + 16);
        v30[0] = v6;
        result = sub_29A37EE98(a4, v6, &unk_29B4D6118, v30);
        result[10] = v28;
      }

      else
      {
        v22 = result[10];
        if (v22 != v21)
        {
          v23 = v22[1];
          if (v22 != v23)
          {
            v24 = *v23;
            v25 = v24->n128_u64[1];
            v26 = *v22;
            v26->n128_u64[1] = v25;
            *v25 = v26;
            v27 = *v21;
            v27->n128_u64[1] = v22;
            *v22 = v27;
            *v21 = v24;
            v24->n128_u64[1] = v21;
          }
        }
      }
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A368798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B840(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_AppendKeys(uint64_t result, uint64_t a2, __n128 **a3, uint64_t **a4)
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
        sub_29A369B50(a2, 5);
        if (v29 == 1)
        {
          v10 = sub_29A380D84(a4, v28);
          if (v9 == v10)
          {
            v17 = sub_29A380AE0(a3, 0, 0, v28);
            v18 = *a3;
            *(v18 + 8) = v17;
            v17->n128_u64[0] = v18;
            *a3 = v17;
            v17->n128_u64[1] = a3;
            a3[2] = (a3[2] + 1);
            v30 = v28;
            sub_29A37EE98(a4, v28, &unk_29B4D6118, &v30)[10] = v17;
          }

          else
          {
            v11 = *(v10 + 80);
            if (v11 != a3)
            {
              v12 = v11[1];
              if (v11 != v12)
              {
                v13 = *v12;
                v14 = v13->n128_u64[1];
                v15 = *v11;
                v15->n128_u64[1] = v14;
                *v14 = v15;
                v16 = *a3;
                v16->n128_u64[1] = v11;
                *v11 = v16;
                *a3 = v13;
                v13->n128_u64[1] = a3;
              }
            }
          }
        }

        result = sub_29A36B840(v28);
        v6 += 6;
      }

      while (v6 != v7);
    }
  }

  else if (v6 != v7)
  {
    v19 = a4 + 1;
    do
    {
      result = sub_29A380D84(a4, v6);
      if (v19 == result)
      {
        v26 = sub_29A380AE0(a3, 0, 0, v6);
        v27 = *a3;
        *(v27 + 8) = v26;
        v26->n128_u64[0] = v27;
        *a3 = v26;
        v26->n128_u64[1] = a3;
        a3[2] = (a3[2] + 1);
        v28[0] = v6;
        result = sub_29A37EE98(a4, v6, &unk_29B4D6118, v28);
        *(result + 80) = v26;
      }

      else
      {
        v20 = *(result + 80);
        if (v20 != a3)
        {
          v21 = v20[1];
          if (v20 != v21)
          {
            v22 = *v21;
            v23 = v22->n128_u64[1];
            v24 = *v20;
            v24->n128_u64[1] = v23;
            *v23 = v24;
            v25 = *a3;
            v25->n128_u64[1] = v20;
            *v20 = v25;
            *a3 = v22;
            v22->n128_u64[1] = a3;
          }
        }
      }

      v6 += 6;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_29A3689D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B840(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_ReorderKeys(uint64_t a1)
{
  v1 = 0uLL;
  v2 = 0;
  sub_29A24A49C(&v1, *(a1 + 128), *(a1 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 4));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_ReorderKeysHelper();
}

void sub_29A368A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A24A5D0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ApplyOperations@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result;
  v38 = *MEMORY[0x29EDCA608];
  if (*result == 1)
  {
    result = sub_29A24C0F4(a3, result);
    a3[152] = 1;
  }

  else
  {
    if (*(result + 32) == *(result + 40) && *(result + 128) == *(result + 136))
    {
      if (*a2 == 1)
      {
        v26 = 0uLL;
        v27 = 0;
        sub_29A24A49C(&v26, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
        *&v30 = 0;
        pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ApplyOperations();
      }

      if (*(a2 + 32) == *(a2 + 40) && *(a2 + 128) == *(a2 + 136))
      {
        v26 = 0uLL;
        v27 = 0;
        sub_29A24A49C(&v26, *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 4));
        v24 = 0uLL;
        v25 = 0;
        sub_29A24A49C(&v24, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
        v22 = 0uLL;
        v23 = 0;
        sub_29A24A49C(&v22, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
        v6 = v3[13];
        v7 = v3[14];
        while (1)
        {
          if (v6 == v7)
          {
            v12 = v3[7];
            v13 = v3[8];
            if (v12 != v13)
            {
              do
              {
                v14 = sub_29A369098(v26.n128_u64[0], v26.n128_u64[1], v12);
                sub_29A369014(&v26, v14, v26.n128_u64[1]);
                v15 = sub_29A369098(v24.n128_u64[0], v24.n128_u64[1], v12);
                sub_29A369014(&v24, v15, v24.n128_u64[1]);
                v16 = sub_29A369098(v22.n128_u64[0], v22.n128_u64[1], v12);
                sub_29A369014(&v22, v16, v22.n128_u64[1]);
                v12 += 6;
              }

              while (v12 != v13);
              v12 = v3[7];
              v13 = v3[8];
            }

            sub_29A37F7E0(&v24, v24.n128_i64[0], v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 4));
            v17 = v3[10];
            v18 = v3[11];
            if (v17 != v18)
            {
              do
              {
                v19 = sub_29A369098(v26.n128_u64[0], v26.n128_u64[1], v17);
                sub_29A369014(&v26, v19, v26.n128_u64[1]);
                v20 = sub_29A369098(v24.n128_u64[0], v24.n128_u64[1], v17);
                sub_29A369014(&v24, v20, v24.n128_u64[1]);
                v21 = sub_29A369098(v22.n128_u64[0], v22.n128_u64[1], v17);
                sub_29A369014(&v22, v21, v22.n128_u64[1]);
                v17 += 6;
              }

              while (v17 != v18);
              v17 = v3[10];
              v18 = v3[11];
            }

            sub_29A37F7E0(&v22, v22.n128_i64[1], v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 4));
            LOBYTE(v28) = 0;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetDeletedItems();
          }

          v8 = sub_29A369098(v24.n128_u64[0], v24.n128_u64[1], v6);
          sub_29A369014(&v24, v8, v24.n128_u64[1]);
          v9 = sub_29A369098(v22.n128_u64[0], v22.n128_u64[1], v6);
          sub_29A369014(&v22, v9, v22.n128_u64[1]);
          v11 = v26.n128_u64[1];
          v10 = v26.n128_u64[0];
          if (v26.n128_u64[0] != v26.n128_u64[1])
          {
            do
            {
              if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v10, v6))
              {
                goto LABEL_17;
              }

              v10 += 6;
            }

            while (v10 != v11);
            v10 = v11;
LABEL_17:
            v11 = v26.n128_u64[1];
          }

          if (v10 == v11)
          {
            sub_29A249514(&v26, v6);
          }

          v6 += 6;
        }
      }
    }

    *a3 = 0;
    a3[152] = 0;
  }

  return result;
}

void sub_29A368F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a10;
  sub_29A24A5D0(&a19);
  a19 = &a13;
  sub_29A24A5D0(&a19);
  a19 = &a16;
  sub_29A24A5D0(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_29A369014(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_29A37F744(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 48;
        sub_29A248FFC(a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *sub_29A369098(__int128 *a1, __int128 *a2, double *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v3, a3))
    {
      v3 += 3;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 3; i != a2; i += 3)
      {
        if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(i, a3))
        {
          if (*(v3 + 23) < 0)
          {
            operator delete(*v3);
          }

          v8 = *i;
          *(v3 + 2) = *(i + 2);
          *v3 = v8;
          *(i + 23) = 0;
          *i = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ModifyOperations(double **a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  v4 = sub_29A369218(a2, a1 + 1);
  v5 = v4 | sub_29A369218(a2, a1 + 4);
  v6 = sub_29A369218(a2, a1 + 7);
  v7 = v5 | v6 | sub_29A369218(a2, a1 + 10);
  v8 = sub_29A369218(a2, a1 + 13);
  return v7 | v8 | sub_29A369218(a2, a1 + 16);
}

uint64_t sub_29A369218(uint64_t a1, double **a2)
{
  v19 = 0uLL;
  v20 = 0;
  sub_29A369F24(&v19, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  v17 = 0u;
  v18 = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_15;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      sub_29A0DDCB0();
    }

    (*(*v7 + 48))(v15);
    if (v16 == 1)
    {
      sub_29A37FA88(&v17, v15);
      if ((v8 & 1) == 0)
      {
        sub_29A3808A0(v15);
      }
    }

    if (v16 == 1)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v15, v4))
      {
        sub_29A249514(&v19, v4);
        goto LABEL_12;
      }

      sub_29A37FC58(&v19, v15);
    }

    v6 = 1;
LABEL_12:
    sub_29A36B840(v15);
    v4 += 6;
  }

  while (v4 != v5);
  if (v6)
  {
    v9 = *a2;
    *a2 = v19;
    v19 = v9;
    v10 = a2[2];
    a2[2] = v20;
    v20 = v10;
    v11 = 1;
    goto LABEL_16;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  v12 = *(&v18 + 1);
  *(&v18 + 1) = 0;
  if (v12)
  {
    v13 = sub_29A37FD60(v12);
    operator delete(v13);
  }

  *&v15[0] = &v17;
  sub_29A24A5D0(v15);
  *&v15[0] = &v19;
  sub_29A24A5D0(v15);
  return v11;
}

void sub_29A3693AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 - 80);
  sub_29A24A5D0(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ReplaceOperations(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((((a2 != 0) ^ *a1) & 1) != 0 || !a4 && *a5 != a5[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::GetItems();
  }

  return 0;
}

void sub_29A3695F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a12 = &a17;
  sub_29A24A5D0(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::ComposeOperations(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::GetItems();
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SetExplicitItems();
}

void sub_29A3698BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A346184(&a16);
  sub_29A37EC74(&a9, a10);
  sub_29A36B770(&a12);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::operator==(unsigned __int8 *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a2[1];
  if (v5 - v4 != a2[2] - v6)
  {
    return 0;
  }

  while (v4 != v5)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v4, v6))
    {
      return 0;
    }

    v4 += 6;
    v6 += 6;
  }

  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = a2[4];
  if (v8 - v7 != a2[5] - v9)
  {
    return 0;
  }

  while (v7 != v8)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v7, v9))
    {
      return 0;
    }

    v7 += 6;
    v9 += 6;
  }

  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = a2[7];
  if (v11 - v10 != a2[8] - v12)
  {
    return 0;
  }

  while (v10 != v11)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v10, v12))
    {
      return 0;
    }

    v10 += 6;
    v12 += 6;
  }

  v13 = *(a1 + 10);
  v14 = *(a1 + 11);
  v15 = a2[10];
  if (v14 - v13 != a2[11] - v15)
  {
    return 0;
  }

  while (v13 != v14)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v13, v15))
    {
      return 0;
    }

    v13 += 6;
    v15 += 6;
  }

  v16 = *(a1 + 13);
  v17 = *(a1 + 14);
  v18 = a2[13];
  if (v17 - v16 != a2[14] - v18)
  {
    return 0;
  }

  while (v16 != v17)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v16, v18))
    {
      return 0;
    }

    v16 += 6;
    v18 += 6;
  }

  return sub_29A369AC0(a1 + 16, (a2 + 16));
}

BOOL sub_29A369AC0(double **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 6;
    v4 += 6;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_29A369B50(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::_ReorderKeysHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v30.n128_u64[1] = 0;
  v31 = 0;
  v7 = a1[1];
  v28 = *a1;
  v29 = v7;
  v30.n128_u64[0] = &v30.n128_u64[1];
  while (v28 != v29)
  {
    if (*(a2 + 24))
    {
      sub_29A369E24(&v28, a2, a3);
      sub_29A369B50(a2, 3);
      if (v27 == 1)
      {
        sub_29A380C38(&v30, &v25, &v25);
        if (v8)
        {
          sub_29A249514(&v32, &v25);
        }
      }

      sub_29A36B840(&v25);
    }

    else
    {
      v9 = sub_29A369E24(&v28, a2, a3);
      sub_29A380C38(&v30, v9, v9);
      if (v10)
      {
        v12 = sub_29A369E24(&v28, v10, v11);
        sub_29A249514(&v32, v12);
      }
    }

    sub_29A369EA4(&v28);
  }

  if (v32 != v33)
  {
    *&v25 = &v25;
    *(&v25 + 1) = &v25;
    v26 = 0;
    sub_29A1180F8(&v25, a3);
    v28 = v32;
    v29 = v33;
    while (v28 != v29)
    {
      v15 = sub_29A369E24(&v28, v13, v14);
      v16 = sub_29A380D84(a4, v15);
      v17 = v16;
      if (a4 + 8 != v16)
      {
        v18 = *(v16 + 80);
        while (1)
        {
          v18 = *(v18 + 1);
          if (v18 == &v25)
          {
            break;
          }

          if (sub_29A380E08(&v30, v18 + 2))
          {
            goto LABEL_20;
          }
        }

        v18 = &v25;
LABEL_20:
        if (!v26)
        {
          goto LABEL_25;
        }

        sub_29A117E88(a3, a3, &v25, *(v17 + 80), v18);
      }

      sub_29A369EA4(&v28);
    }

    v19 = v26;
    if (v26)
    {
      v20 = *(a3 + 8);
      v21 = v25;
      v22 = *(v25 + 8);
      v23 = **(&v25 + 1);
      *(v23 + 8) = v22;
      *v22 = v23;
      v24 = *v20;
      *(v24 + 8) = *(&v21 + 1);
      **(&v21 + 1) = v24;
      *v20 = v21;
      *(v21 + 8) = v20;
      *(a3 + 16) += v19;
      v26 = 0;
    }

LABEL_25:
    sub_29A36B770(&v25);
  }

  sub_29A380BDC(&v30, v30.n128_u64[1]);
  *&v25 = &v32;
  sub_29A24A5D0(&v25);
}

void sub_29A369DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  sub_29A36B840(&a10);
  sub_29A380BDC(&a19, a20);
  a10 = (v20 - 72);
  sub_29A24A5D0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A369E24(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A369EA4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 48;
  }

  return a1;
}

void **sub_29A369F24(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 >= 0x555555555555556)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A08E058(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[48 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A249714(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A249894(&v12);
  }

  return result;
}

void sub_29A369FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A249894(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A36A000(uint64_t a1)
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

void sub_29A36A1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::operator<<<pxrInternal__aapl__pxrReserved__::SdfPayload>(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(a1);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20472A8, v5);
  pxrInternal__aapl__pxrReserved__::TfType::GetAliases(Root, *v6, v18);
  v7 = v18[0];
  if (v18[0] == v18[1])
  {
    __p[0] = "sdf/listOp.cpp";
    __p[1] = "_StreamOut";
    v15 = 892;
    v16 = "std::ostream &pxrInternal__aapl__pxrReserved__::_StreamOut(std::ostream &, const SdfListOp<T> &) [T = pxrInternal__aapl__pxrReserved__::SdfPayload]";
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
    sub_29A382E3C(a1, __p, (a2 + 8), &v13, 1);
  }

  else
  {
    sub_29A008E78(__p, "Deleted");
    sub_29A382E3C(a1, __p, (a2 + 104), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Added");
    sub_29A382E3C(a1, __p, (a2 + 32), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Prepended");
    sub_29A382E3C(a1, __p, (a2 + 56), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Appended");
    sub_29A382E3C(a1, __p, (a2 + 80), &v13, 0);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "Ordered");
    sub_29A382E3C(a1, __p, (a2 + 128), &v13, 0);
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

void sub_29A36A478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::SdfApplyListOrdering<std::string>(__n128 *a1, void *a2)
{
  v14[4] = *MEMORY[0x29EDCA608];
  if (*a2 != a2[1])
  {
    result = *a1;
    v3 = a1->n128_i64[1];
    v4 = a1->n128_u64[0];
    if (a1->n128_u64[0] != v3)
    {
      v11 = &v11;
      *v12 = &v11;
      v13 = 0;
      sub_29A3701E4(&v11, &v11, v4, v3);
      v10[0] = 0;
      v10[1] = 0;
      v9 = v10;
      for (i = *v12; i != &v11; i = *(i + 8))
      {
        v14[0] = (i + 16);
        sub_29A0DD058(&v9, (i + 16), &unk_29B4D6118, v14)[7] = i;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
    }
  }

  return result;
}

void sub_29A36A68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, char *);
  v9 = va_arg(va1, void);
  sub_29A019EE8(va, v8);
  sub_29A116F64(va1);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::SdfApplyListOrdering<pxrInternal__aapl__pxrReserved__::TfToken>(__n128 *a1, void *a2)
{
  v14[4] = *MEMORY[0x29EDCA608];
  if (*a2 != a2[1])
  {
    result = *a1;
    v3 = a1->n128_u64[1];
    v4 = a1->n128_u64[0];
    if (a1->n128_u64[0] != v3)
    {
      v11 = &v11;
      v12 = &v11;
      v13 = 0;
      sub_29A3722BC(&v11, &v11, v4, v3);
      v10[0] = 0;
      v10[1] = 0;
      v9 = v10;
      for (i = v12; i != &v11; i = i[1])
      {
        v14[0] = i + 2;
        sub_29A372414(&v9, i + 2, &unk_29B4D6118, v14)[5] = i;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }
  }

  return result;
}

void sub_29A36A898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  sub_29A1602D4(va, v8);
  sub_29A36B068(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A36A8E4()
{
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2047318, 0, 0, 0, 152, 0, 0);
  v1 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v0);
  sub_29A008E78(__p, "SdfTokenListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v0, v1, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2046F90, 0, 0, 0, 152, 0, 0);
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v2);
  sub_29A008E78(__p, "SdfPathListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v2, v3, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2047308, 0, 0, 0, 152, 0, 0);
  v5 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v4);
  sub_29A008E78(__p, "SdfStringListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v4, v5, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A20472B8, 0, 0, 0, 152, 0, 0);
  v7 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v6);
  sub_29A008E78(__p, "SdfReferenceListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v6, v7, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A20472A8, 0, 0, 0, 152, 0, 0);
  v9 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v8);
  sub_29A008E78(__p, "SdfPayloadListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v8, v9, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20472C8, 0, 0, 0, 152, 0, 0);
  v11 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v10);
  sub_29A008E78(__p, "SdfIntListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v10, v11, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20472E8, 0, 0, 0, 152, 0, 0);
  v13 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v12);
  sub_29A008E78(__p, "SdfUIntListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v12, v13, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20472D8, 0, 0, 0, 152, 0, 0);
  v15 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v14);
  sub_29A008E78(__p, "SdfInt64ListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v14, v15, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20472F8, 0, 0, 0, 152, 0, 0);
  v17 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v16);
  sub_29A008E78(__p, "SdfUInt64ListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v16, v17, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2047338, 0, 0, 0, 152, 0, 0);
  v19 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v18);
  sub_29A008E78(__p, "SdfUnregisteredValueListOp");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v18, v19, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204BC98, 0, 0, 0, 4, 1, 1);
}

void sub_29A36ACEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A36AD2C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204BC98, 0, "SdfListOpTypeExplicit", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204BC98, 1, "SdfListOpTypeAdded", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204BC98, 4, "SdfListOpTypePrepended", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204BC98, 5, "SdfListOpTypeAppended", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204BC98, 2, "SdfListOpTypeDeleted", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204BC98, 3, "SdfListOpTypeOrdered", 0);
}

__n128 sub_29A36ADEC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  result = *(a2 + 128);
  *(a1 + 128) = result;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a1 + 152) = 1;
  return result;
}

void sub_29A36AEC0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    while (v3 != v2)
    {
      v4 = *(v3 - 4);
      v3 -= 4;
      if (v4 != -1)
      {
        *v3 = -1;
      }
    }

    v1[1] = v2;
    operator delete(v2);
  }
}