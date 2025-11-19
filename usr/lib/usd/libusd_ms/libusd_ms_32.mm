uint64_t *pxrInternal__aapl__pxrReserved__::VtDictionary::erase(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v11[0] = a4;
  v11[1] = a5;
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = sub_29A184D50(v12, v5, a3);
  v9 = sub_29A184D50(v11, *a1, v8);
  return sub_29A187378(v5, v7, v9);
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::clear(pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  v1 = *this;
  if (*this)
  {
    sub_29A186C00(*this, *(v1 + 8));
    *v1 = v1 + 8;
    *(v1 + 16) = 0;
    *(v1 + 8) = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::find(uint64_t *a1, const void **a2)
{
  if (*a1)
  {
    return sub_29A01BCCC(*a1, a2);
  }

  else
  {
    return 0;
  }
}

{
  if (*a1)
  {
    return sub_29A01BCCC(*a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::find(pxrInternal__aapl__pxrReserved__::VtDictionary *this, const char *a2)
{
  v3 = a2;
  if (*this)
  {
    return sub_29A1873E0(*this, &v3);
  }

  else
  {
    return 0;
  }
}

{
  v3 = a2;
  if (*this)
  {
    return sub_29A1873E0(*this, &v3);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::begin(pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::end(pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  return 0;
}

{
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::size(pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  if (*this)
  {
    return *(*this + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtDictionary::swap(uint64_t *this, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  return this;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtDictionary::insert@<X0>(pxrInternal__aapl__pxrReserved__::VtDictionary *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v10, "Vt", "VtDictionary::insert");
  pxrInternal__aapl__pxrReserved__::VtDictionary::_CreateDictIfNeeded(a1);
  result = sub_29A187460(*a1, a2, a2);
  v8 = *a1;
  if ((*a1 + 8) == result && v8 != 0)
  {
    v8 = 0;
  }

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath(uint64_t *a1, std::string *a2, char *__s)
{
  sub_29A008E78(__p, __s);
  pxrInternal__aapl__pxrReserved__::TfStringSplit(a2, __p, v9);
  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath(a1, v9);
  v10 = v9;
  sub_29A012C90(&v10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return ValueAtPath;
}

void sub_29A185160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v16 - 24) = v15;
  sub_29A012C90((v16 - 24));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (*a2 == v2)
  {
    return 0;
  }

  v4 = (v2 - 24);
  while (v3 != v4)
  {
    v5 = *a1;
    if (!*a1)
    {
      return 0;
    }

    v6 = sub_29A01BCCC(*a1, v3);
    if (v5 + 8 == v6)
    {
      return 0;
    }

    v7 = v6;
    if (!sub_29A185258((v6 + 56)))
    {
      return 0;
    }

    v8 = *(v7 + 64);
    if ((v8 & 4) != 0)
    {
      a1 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v7 + 56);
    }

    else
    {
      a1 = *(v7 + 56);
    }

    v3 += 3;
  }

  v9 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = sub_29A01BCCC(*a1, v4);
  if (v9 + 8 == v10)
  {
    return 0;
  }

  else
  {
    return v10 + 56;
  }
}

uint64_t sub_29A185258(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4C5D74 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042020);
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::_SetValueAtPathImpl(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, __int128 *a2, __int128 *a3, void *a4)
{
  v19[2] = *MEMORY[0x29EDCA608];
  v7 = a2 + 24;
  if ((a2 + 24) == a3)
  {
    v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a1, a2);

    sub_29A1854E8(v10, a4);
  }

  else
  {
    v11 = 0;
    v13[1] = &off_2A2042030;
    sub_29A187864(v13, &v11);
    sub_29A1869DC(__dst, a2, v13);
    *__p = *__dst;
    v18 = v15;
    __dst[1] = 0;
    v15 = 0;
    __dst[0] = 0;
    sub_29A186A3C(v19, v16);
    pxrInternal__aapl__pxrReserved__::VtDictionary::insert(a1, __p, v12);
    v9 = v12[0];
    sub_29A186B14(v19);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A186B14(v16);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__dst[0]);
    }

    sub_29A186B14(v13);
    sub_29A184A10(&v11, 0);
    __p[0] = 0;
    sub_29A18562C((v9 + 56), __p);
    pxrInternal__aapl__pxrReserved__::VtDictionary::_SetValueAtPathImpl(__p, v7, a3, a4);
    sub_29A18562C((v9 + 56), __p);
    sub_29A184A10(__p, 0);
  }
}

void sub_29A18549C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  sub_29A1855F0(va3);
  sub_29A1855F0(va2);
  sub_29A186B14(va1);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A1854E8(void *a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    if (a2[1])
    {
      sub_29A186978(v7, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      if (v8)
      {
        (*(v8 + 32))(v7);
      }
    }

    else
    {
      sub_29B291604(a1);
    }
  }

  return a1;
}

void sub_29A1855B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1855F0(uint64_t a1)
{
  sub_29A186B14(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const pxrInternal__aapl__pxrReserved__::VtDictionary *sub_29A18562C(pxrInternal__aapl__pxrReserved__::VtValue *a1, void *a2)
{
  if ((sub_29A185258(a1) & 1) == 0)
  {
    v6 = 0;
    sub_29A1878CC(a1, &v6);
    sub_29A184A10(&v6, 0);
  }

  result = sub_29A18799C(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  return result;
}

void sub_29A185694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, std::string *a2, void *a3, char *__s)
{
  sub_29A008E78(__p, __s);
  pxrInternal__aapl__pxrReserved__::TfStringSplit(a2, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 != v10)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::_SetValueAtPathImpl(a1, v9, v10, a3);
  }

  __p[0] = &v9;
  sub_29A012C90(__p);
}

void sub_29A185740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __p = &a16;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, __int128 **a2, void *a3)
{
  v4 = a2[1];
  v5 = *a2;
  if (v5 != v4)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::_SetValueAtPathImpl(a1, v5, v4, a3);
  }
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::_EraseValueAtPathImpl(uint64_t *a1, const void **a2, const void **a3)
{
  v3 = a2 + 3;
  v4 = *a1;
  if (a2 + 3 == a3)
  {
    if (v4)
    {
      v9 = *a1;

      sub_29A18731C(v9, a2);
    }
  }

  else if (v4)
  {
    v7 = sub_29A01BCCC(*a1, a2);
    if (v4 + 8 != v7)
    {
      v8 = v7;
      if (sub_29A185258((v7 + 56)))
      {
        v10 = 0;
        sub_29A18562C((v8 + 56), &v10);
        pxrInternal__aapl__pxrReserved__::VtDictionary::_EraseValueAtPathImpl(&v10, v3, a3);
        if (v10 && v10[2])
        {
          sub_29A18562C((v8 + 56), &v10);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtDictionary::erase(a1, v8, v4);
        }

        sub_29A184A10(&v10, 0);
      }
    }
  }
}

void sub_29A185898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath(uint64_t *a1, std::string *a2, char *__s)
{
  sub_29A008E78(__p, __s);
  pxrInternal__aapl__pxrReserved__::TfStringSplit(a2, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 != v8)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::_EraseValueAtPathImpl(a1, v7, v8);
  }

  __p[0] = &v7;
  sub_29A012C90(__p);
}

void sub_29A185934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __p = &a16;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath(uint64_t *a1, const void ***a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v3 != v2)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::_EraseValueAtPathImpl(a1, v3, v2);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::VtGetEmptyDictionary(pxrInternal__aapl__pxrReserved__ *this)
{
  result = atomic_load(&qword_2A173F408);
  if (!result)
  {
    return sub_29A1879D8();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtDictionaryOver(pxrInternal__aapl__pxrReserved__ *this, uint64_t **a2, const pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  if (this)
  {
    v3 = a3;
    v6 = *a2;
    if (*a2)
    {
      v7 = *v6;
      if (v6 + 1 == *v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    sub_29A185B60(this, v7, v8, 0, 0);
    if (v3)
    {
      v11 = *this;
      if (*this)
      {
        v12 = *v11;
        if (v11 + 8 == *v11)
        {
          v11 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = 0;
      v22 = v12;
      v23 = v11;
      v24 = 0;
      v25 = 0;
      while (v11 != v13 || v13 && v22 != v24)
      {
        v14 = sub_29A185C1C(&v22, v9, v10);
        v15 = *a2;
        if (*a2)
        {
          v16 = sub_29A01BCCC(*a2, (*v14 + 32));
          if (v15 + 1 != v16)
          {
            v19 = v16;
            v20 = *sub_29A185C1C(&v22, v17, v18);
            Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v19 + 56));
            sub_29A186B64((v20 + 56), Typeid);
          }
        }

        sub_29A185CAC(&v22);
        v11 = v23;
        v13 = v25;
      }
    }
  }

  else
  {
    v22 = "vt/dictionary.cpp";
    v23 = "VtDictionaryOver";
    v24 = 312;
    v25 = "void pxrInternal__aapl__pxrReserved__::VtDictionaryOver(VtDictionary *, const VtDictionary &, BOOL)";
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "VtDictionaryOver: NULL dictionary pointer.");
  }
}

uint64_t sub_29A185B60(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_29A0ECEEC(&v11, "Vt", "VtDictionary::insert (range)");
  if (a3 != a5 || a3 && a2 != a4)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::_CreateDictIfNeeded(a1);
    result = sub_29A187A8C(*a1, a2, a3, a4, a5);
  }

  if (v11)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return result;
}

void *sub_29A185C1C(void *result, uint64_t a2, char *a3)
{
  v3 = result[1];
  if (v3 == result[3] && (!v3 || *result == result[2]))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator->";
    v4[2] = 270;
    v4[3] = "Iterator &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtDictionary>::operator->() [T = pxrInternal__aapl__pxrReserved__::VtDictionary, Reverse = false]";
    v5 = 0;
    v6 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v4, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A185CAC(void *a1)
{
  v2 = a1[1];
  if (v2 != a1[3] || v2 && *a1 != a1[2])
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  v4[0] = "tf/iterator.h";
  v4[1] = "operator++";
  v4[2] = 233;
  v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtDictionary>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtDictionary, Reverse = false]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtDictionaryOver(const char **this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v27[3] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (a3)
    {
      v4 = *this;
      if (*this)
      {
        v5 = *v4;
        if (v4 + 8 == *v4)
        {
          v4 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      v8 = 0;
      v22 = v5;
      v23 = v4;
      v24 = 0;
      v25 = 0;
      while (v4 != v8 || v8 && v22 != v24)
      {
        v9 = sub_29A185F48(&v22, a2, a3);
        v12 = *a2;
        if (!*a2 || (v13 = sub_29A01BCCC(*a2, (*v9 + 32)), v12 + 8 == v13))
        {
          v15 = sub_29A185FD8(&v22, v10, v11);
          pxrInternal__aapl__pxrReserved__::VtDictionary::insert(a2, v15, v27);
        }

        else
        {
          v14 = sub_29A185F48(&v22, v10, v11);
          pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf((*v14 + 56), (v13 + 56), v27);
          sub_29A18606C((v13 + 56), v27);
          sub_29A186B14(v27);
        }

        sub_29A186174(&v22);
        v4 = v23;
        v8 = v25;
      }
    }

    else
    {
      v6 = *this;
      if (*this)
      {
        v7 = *v6;
        if (v6 + 8 == *v6)
        {
          v6 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v16 = 0;
      v22 = v7;
      v23 = v6;
      v24 = 0;
      v25 = 0;
      while (v6 != v16 || v16 && v22 != v24)
      {
        v17 = *sub_29A185F48(&v22, a2, a3);
        v20 = sub_29A185F48(&v22, v18, v19);
        v21 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, (*v20 + 32));
        sub_29A1854E8(v21, (v17 + 56));
        sub_29A186174(&v22);
        v6 = v23;
        v16 = v25;
      }
    }
  }

  else
  {
    v22 = "vt/dictionary.cpp";
    v23 = "VtDictionaryOver";
    v24 = 332;
    v25 = "void pxrInternal__aapl__pxrReserved__::VtDictionaryOver(const VtDictionary &, VtDictionary *, BOOL)";
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "VtDictionaryOver: NULL dictionary pointer");
  }
}

void *sub_29A185F48(void *result, uint64_t a2, char *a3)
{
  v3 = result[1];
  if (v3 == result[3] && (!v3 || *result == result[2]))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator->";
    v4[2] = 270;
    v4[3] = "Iterator &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::VtDictionary>::operator->() [T = const pxrInternal__aapl__pxrReserved__::VtDictionary, Reverse = false]";
    v5 = 0;
    v6 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v4, "iterator exhausted", a3);
  }

  return result;
}

uint64_t sub_29A185FD8(void *a1, uint64_t a2, char *a3)
{
  v3 = a1[1];
  if (v3 == a1[3] && (!v3 || *a1 == a1[2]))
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::VtDictionary>::operator*() [T = const pxrInternal__aapl__pxrReserved__::VtDictionary, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return *a1 + 32;
}

void *sub_29A18606C(void *a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    if (a2[1])
    {
      sub_29A186978(v9, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      a2[1] = 0;
      if (v10)
      {
        (*(v10 + 32))(v9);
      }
    }

    else
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = (a1[1] & 3) == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
    }
  }

  return a1;
}

void sub_29A18615C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_29A186174(void *a1)
{
  v2 = a1[1];
  if (v2 != a1[3] || v2 && *a1 != a1[2])
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  v4[0] = "tf/iterator.h";
  v4[1] = "operator++";
  v4[2] = 233;
  v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::VtDictionary>::operator++() [T = const pxrInternal__aapl__pxrReserved__::VtDictionary, Reverse = false]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(pxrInternal__aapl__pxrReserved__ *this, const char **a2, const pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  if (this)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = *v5;
      if (v5 + 8 == *v5)
      {
        v5 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    v29 = v6;
    v30 = v5;
    v8 = a3 ^ 1;
    v31 = 0;
    v32 = 0;
    while (v5 != v7 || v7 && v29 != v31)
    {
      v9 = sub_29A185F48(&v29, a2, a3);
      if (sub_29AA91F34(this, (*v9 + 32)) && (v12 = sub_29A185F48(&v29, v10, v11), sub_29AA91F34(a2, (*v12 + 32))))
      {
        v13 = sub_29A185F48(&v29, v10, v11);
        v14 = sub_29A01BCCC(*a2, (*v13 + 32));
        v15 = sub_29A187B1C((v14 + 56));
        v18 = sub_29A185F48(&v29, v16, v17);
        v19 = sub_29A01BCCC(*this, (*v18 + 32));
        v27[0] = 0;
        sub_29A18562C((v19 + 56), v27);
        pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(v27, v15, 0, v20);
        sub_29A18562C((v19 + 56), v27);
        sub_29A184A10(v27, 0);
      }

      else
      {
        v21 = sub_29A185FD8(&v29, v10, v11);
        pxrInternal__aapl__pxrReserved__::VtDictionary::insert(this, v21, v27);
        if (((v8 | v28) & 1) == 0)
        {
          v24 = v27[0];
          v25 = sub_29A185F48(&v29, v22, v23);
          Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((*v25 + 56));
          sub_29A186B64((v24 + 7), Typeid);
        }
      }

      sub_29A186174(&v29);
      v5 = v30;
      v7 = v32;
    }
  }

  else
  {
    v29 = "vt/dictionary.cpp";
    v30 = "VtDictionaryOverRecursive";
    v31 = 369;
    v32 = "void pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(VtDictionary *, const VtDictionary &, BOOL)";
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 1, "VtDictionaryOverRecursive: NULL dictionary pointer.");
  }
}

void pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(const char **this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v36[3] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = a3;
    v6 = *this;
    if (*this)
    {
      v7 = *v6;
      if (v6 + 8 == *v6)
      {
        v6 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = 0;
    v31 = v7;
    v32 = v6;
    v33 = 0;
    v34 = 0;
    while (v6 != v8 || v8 && v31 != v33)
    {
      v9 = sub_29A185F48(&v31, a2, a3);
      if (sub_29AA91F34(this, (*v9 + 32)) && (v12 = sub_29A185F48(&v31, v10, v11), sub_29AA91F34(a2, (*v12 + 32))))
      {
        v13 = sub_29A185F48(&v31, v10, v11);
        v14 = sub_29A01BCCC(*this, (*v13 + 32));
        v15 = sub_29A187B1C((v14 + 56));
        v18 = sub_29A185F48(&v31, v16, v17);
        v19 = sub_29A01BCCC(*a2, (*v18 + 32));
        v36[0] = 0;
        sub_29A18562C((v19 + 56), v36);
        pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(v15, v36, 0, v20);
        sub_29A18562C((v19 + 56), v36);
        sub_29A184A10(v36, 0);
      }

      else
      {
        v21 = sub_29A185F48(&v31, v10, v11);
        if (v3)
        {
          v24 = *a2;
          if (!*a2 || (v25 = sub_29A01BCCC(*a2, (*v21 + 32)), v24 + 8 == v25))
          {
            v30 = sub_29A185FD8(&v31, v22, v23);
            pxrInternal__aapl__pxrReserved__::VtDictionary::insert(a2, v30, v36);
          }

          else
          {
            v26 = sub_29A185F48(&v31, v22, v23);
            pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf((*v26 + 56), (v25 + 56), v36);
            sub_29A18606C((v25 + 56), v36);
            sub_29A186B14(v36);
          }
        }

        else
        {
          v27 = *v21;
          v28 = sub_29A185F48(&v31, v22, v23);
          v29 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, (*v28 + 32));
          sub_29A1854E8(v29, (v27 + 56));
        }
      }

      sub_29A186174(&v31);
      v6 = v32;
      v8 = v34;
    }
  }

  else
  {
    v31 = "vt/dictionary.cpp";
    v32 = "VtDictionaryOverRecursive";
    v33 = 409;
    v34 = "void pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(const VtDictionary &, VtDictionary *, BOOL)";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "VtDictionaryOverRecursive: NULL dictionary pointer.");
  }
}

void sub_29A1866CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(void **a1, uint64_t *a2, char *a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  if (*a2)
  {
    v6 = *(v6 + 16);
  }

  if (v5 == v6)
  {
    if (v4)
    {
      v7 = *v4;
      if (v4 + 1 == *v4)
      {
        v4 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v13[0] = v7;
    v13[1] = v4;
    v13[2] = 0;
    v13[3] = 0;
    if (!v4)
    {
      return 1;
    }

    v8 = sub_29A185F48(v13, a2, a3);
    if (*a2)
    {
      v9 = *a2;
      if (v9 + 8 != sub_29A01BCCC(*a2, (*v8 + 32)))
      {
        sub_29A185F48(v13, v10, v11);
        pxrInternal__aapl__pxrReserved__::VtValue::operator==();
      }
    }
  }

  return 0;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, void **a2)
{
  LOBYTE(v21) = 123;
  sub_29A00911C(a1, &v21, 1);
  v4 = *a2;
  if (*a2)
  {
    v5 = *v4;
    if (v4 + 1 == *v4)
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v21 = v5;
  v22 = v4;
  v7 = 1;
  v23 = 0;
  v24 = 0;
  while (v4 != v6 || v6 && v21 != v23)
  {
    if ((v7 & 1) == 0)
    {
      sub_29A00911C(a1, ", ", 2);
    }

    v25 = 39;
    v8 = sub_29A00911C(a1, &v25, 1);
    v11 = sub_29A185F48(&v21, v9, v10);
    v12 = *(*v11 + 55);
    if (v12 >= 0)
    {
      v13 = *v11 + 32;
    }

    else
    {
      v13 = *(*v11 + 32);
    }

    if (v12 >= 0)
    {
      v14 = *(*v11 + 55);
    }

    else
    {
      v14 = *(*v11 + 40);
    }

    v15 = sub_29A00911C(v8, v13, v14);
    v16 = sub_29A00911C(v15, "': ", 3);
    v19 = sub_29A185F48(&v21, v17, v18);
    pxrInternal__aapl__pxrReserved__::operator<<(v16, *v19 + 56);
    sub_29A186174(&v21);
    v7 = 0;
    v4 = v22;
    v6 = v24;
  }

  LOBYTE(v21) = 125;
  sub_29A00911C(a1, &v21, 1);
  return a1;
}

uint64_t sub_29A186978(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (~v3 & 3) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 8) = v5;
    if (v5)
    {
      (*(v5 + 40))(a2, a1);
    }
  }

  return a1;
}

void *sub_29A1869DC(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_29A186A3C(__dst + 3, a3);
  return __dst;
}

void *sub_29A186A3C(void *a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  if (a2[1])
  {
    sub_29A186978(v7, a1);
    v4 = a2[1];
    v5 = ~*(a2 + 2);
    a1[1] = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
    }

    else
    {
      *a1 = *a2;
    }

    a2[1] = 0;
    if (v8)
    {
      (*(v8 + 32))(v7);
    }
  }

  return a1;
}

void sub_29A186AFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A186B14(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*(a1 + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  *(a1 + 8) = 0;
  return a1;
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29A186B64(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
  if (strcmp((*(Typeid + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(a2 + 1) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(a2, a1, v6);
    sub_29A18606C(a1, v6);
    sub_29A186B14(v6);
  }

  return a1;
}

void sub_29A186C00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A186C00(a1, *a2);
    sub_29A186C00(a1, a2[1]);
    sub_29A186C5C((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A186C5C(uint64_t a1)
{
  sub_29A186B14(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_29A186CAC(uint64_t *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A186D04(a1, *a2, a2 + 1);
  return a1;
}

uint64_t *sub_29A186D04(uint64_t *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A186D8C(v5, (v5 + 1), v4 + 4, v4 + 2);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t *sub_29A186D8C(uint64_t **a1, uint64_t a2, const void **a3, __int128 *a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29A186E10(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A186E10@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A186E7C(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A186E7C(void *__dst, __int128 *a2)
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

  sub_29A186EF4(__dst + 3, a2 + 3);
  return __dst;
}

void sub_29A186ED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A186EF4(void *a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  if (a2[1])
  {
    sub_29A186978(v7, a1);
    v4 = a2[1];
    v5 = ~*(a2 + 2);
    a1[1] = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
    }

    else
    {
      *a1 = *a2;
    }

    if (v8)
    {
      (*(v8 + 32))(v7);
    }
  }

  return a1;
}

void sub_29A186FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A186FEC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A186C5C(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A187048(uint64_t a1, const void **a2, const void **a3)
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
      sub_29A186D8C(a1, v4, v6, v6);
      v6 += 5;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t *sub_29A1870CC(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A187164(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A187164@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x48uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29A1871F8(uint64_t a1, const std::string::value_type **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  while (std::string::compare((v3 + 4), *a2) > 0)
  {
    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (std::string::compare((v3 + 4), *a2) < 0)
  {
    ++v3;
    goto LABEL_6;
  }

  v6 = *v3;
  v7 = v3;
  if (*v3)
  {
    v7 = v3;
    do
    {
      v8 = std::string::compare((v6 + 4), *a2);
      if (v8 >= 0)
      {
        v7 = v6;
      }

      v6 = *(v6 + ((v8 >> 28) & 8));
    }

    while (v6);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v10 < 1)))
  {
    v10 = std::string::compare((i + 32), *a2);
    if (v10 > 0)
    {
      v2 = i;
    }
  }

  if (v7 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v11 = v7[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v7[2];
        v13 = *v12 == v7;
        v7 = v12;
      }

      while (!v13);
    }

    ++result;
    v7 = v12;
  }

  while (v12 != v2);
  return result;
}

uint64_t sub_29A18731C(uint64_t **a1, const void **a2)
{
  v3 = sub_29A01BCCC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_29A03AFE8(a1, v3);
  sub_29A186C5C((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *sub_29A187378(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_29A03AFE8(a1, v4);
      sub_29A186C5C((v4 + 4));
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

uint64_t sub_29A1873E0(uint64_t a1, const std::string::value_type **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), *a2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), *a2) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t *sub_29A187460(uint64_t **a1, const void **a2, __int128 *a3)
{
  v5 = sub_29A00B0D0(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29A186E10(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t *sub_29A1874E0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A187500(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A18763C(a1);
}

pxrInternal__aapl__pxrReserved__::VtDictionary *sub_29A187624@<X0>(const void *****a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2042030;
  return sub_29A187864(a2, v2);
}

void sub_29A18763C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A184A10(v1, 0);

    operator delete(v1);
  }
}

unint64_t sub_29A1876A4(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1 || !*(v1 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  sub_29A18770C(&v3, *v1, (v1 + 8));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t sub_29A18770C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = a2[1];
      v6 = a2;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      result = sub_29A18778C(v4, (a2 + 4));
      a2 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_29A18778C(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2)
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
  result = pxrInternal__aapl__pxrReserved__::VtValue::GetHash((v2 + 24));
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

const pxrInternal__aapl__pxrReserved__::VtDictionary *sub_29A1877FC(const pxrInternal__aapl__pxrReserved__::VtDictionary **a1)
{
  v2 = atomic_load(*a1 + 2);
  if (v2 != 1)
  {
    sub_29AA860BC(*a1, &v4);
    sub_29A18763C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A18763C(&v4);
  }

  return *a1;
}

pxrInternal__aapl__pxrReserved__::VtDictionary *sub_29A187864(unsigned int **a1, const void ****a2)
{
  v4 = operator new(0x10uLL);
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(v4, a2);
  atomic_store(0, v4 + 2);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A1878CC(uint64_t a1, const void ****a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A2042030;
  sub_29A187864(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A187960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const pxrInternal__aapl__pxrReserved__::VtDictionary *sub_29A18799C(const pxrInternal__aapl__pxrReserved__::VtDictionary **a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B29164C(v2, a1);
  }

  return sub_29A1877FC(a1);
}

unint64_t sub_29A1879D8()
{
  sub_29A0ECEEC(&v3, "Vt", "VtDictionary");
  v0 = malloc(8uLL);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v4, v3);
  }

  *v0 = 0;
  v3 = 0;
  sub_29A184A10(v0, 0);
  sub_29A184A10(&v3, 0);
  v1 = 0;
  atomic_compare_exchange_strong(&qword_2A173F408, &v1, v0);
  if (v1)
  {
    sub_29A184A10(v0, 0);
    free(v0);
    return atomic_load(&qword_2A173F408);
  }

  return v0;
}

uint64_t **sub_29A187A8C(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a2 == a4;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (a3 != a5 || (v6 & 1) == 0)
  {
    sub_29A186D8C(result, (result + 1), (a2 + 32), (a2 + 32));
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  return result;
}

void **sub_29A187B1C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A185258(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A187BB0, &stru_2A2042020);
  }
}

uint64_t sub_29A187BB4@<X0>(void *a1@<X8>)
{
  sub_29A187C08(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  v4[0] = 0;
  a1[2] = &stru_2A2042020;
  return v2(0);
}

uint64_t sub_29A187C08@<X0>(void *a1@<X8>)
{
  sub_29A0ECEEC(&v4, "Vt", "VtDictionary");
  result = malloc(8uLL);
  v3 = result;
  if (v4)
  {
    result = pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  *v3 = 0;
  *a1 = v3;
  a1[1] = sub_29A187C7C;
  return result;
}

void sub_29A187C7C(void ***a1)
{
  if (a1)
  {
    sub_29A184A10(a1, 0);

    free(a1);
  }
}

void pxrInternal__aapl__pxrReserved__::Vt_HashDetail::_IssueUnimplementedHashError(pxrInternal__aapl__pxrReserved__::Vt_HashDetail *this, const std::type_info *a2)
{
  v5[0] = "vt/hash.cpp";
  v5[1] = "_IssueUnimplementedHashError";
  v5[2] = 25;
  v5[3] = "void pxrInternal__aapl__pxrReserved__::Vt_HashDetail::_IssueUnimplementedHashError(const std::type_info &)";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(this + 1) & 0x7FFFFFFFFFFFFFFFLL), __p);
  if (v4 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Invoked VtHashValue on an object of type <%s>, which is not hashable by TfHash().  Consider providing an overload of hash_value() or TfHashAppend().", v2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A187D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::Vt_StreamOutGeneric(uint64_t a1, uint64_t a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), v12);
  if (v13 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v12[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("<'%s' @ %p>", v5, v6, v7, a2);
  if ((v15 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = sub_29A00911C(a3, v8, v9);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v10;
}

void sub_29A187E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::VtStreamOut()
{
  JUMPOUT(0x29C2C1ED0);
}

{
  JUMPOUT(0x29C2C1ED0);
}

{
  JUMPOUT(0x29C2C1EE0);
}

{
  JUMPOUT(0x29C2C1ED0);
}

void *pxrInternal__aapl__pxrReserved__::VtStreamOutArray(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  if (*(a2 + 2))
  {
    if (*(a2 + 3))
    {
      v4 = 20;
      if (!*(a2 + 4))
      {
        v4 = 16;
      }
    }

    else
    {
      v4 = 12;
    }

    v6 = 1;
    for (i = 8; i != v4; i += 4)
    {
      v6 *= *(a2 + i);
    }

    if (!v6)
    {
      v8 = 0;
      return sub_29A187F54(a1, a2, a3, a4, v8, 0);
    }

    v5 = v6;
  }

  else
  {
    v5 = 1;
  }

  v8 = *a2 / v5;
  if (*a2 % v5)
  {
    v10 = *a2;
    a2 = &v10;
  }

  return sub_29A187F54(a1, a2, a3, a4, v8, 0);
}

void *sub_29A187F54(void *a1, _DWORD *a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6)
{
  v17 = 91;
  sub_29A00911C(a1, &v17, 1);
  v12 = a2 + 2;
  if (a2[2])
  {
    if (a2[3])
    {
      v13 = 2;
      if (a2[4])
      {
        v13 = 3;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v13 == a6)
  {
    if (a5)
    {
      v14 = 0;
      do
      {
        if (v14)
        {
          sub_29A00911C(a1, ", ", 2);
        }

        a4(a3, a1);
        ++v14;
      }

      while (a5 != v14);
    }
  }

  else if (v12[a6])
  {
    v15 = 0;
    do
    {
      if (v15)
      {
        sub_29A00911C(a1, ", ", 2);
      }

      sub_29A187F54(a1, a2, a3, a4, a5, a6 + 1);
      ++v15;
    }

    while (v15 < v12[a6]);
  }

  v18 = 93;
  return sub_29A00911C(a1, &v18, 1);
}

double pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfDualQuatf>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfDualQuatd>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfRange3f>@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_29B480F60;
  result = 2.84809454e-306;
  *(a1 + 16) = 0x80000000800000;
  return result;
}

int64x2_t pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfRange3d>@<Q0>(uint64_t a1@<X8>)
{
  *a1 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a1 + 16) = xmmword_29B43C5A0;
  result = vdupq_n_s64(0xC7EFFFFFE0000000);
  *(a1 + 32) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfInterval>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void pxrInternal__aapl__pxrReserved__::VtZero<std::string>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfMultiInterval>(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

uint64_t *sub_29A188394()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20420F8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042110, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042128, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042140, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042158, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042170, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042188, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20421A0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20421B8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20421D0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20421E8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042200, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042218, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042230, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042248, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042260, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042278, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042290, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20422A8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20422C0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20422D8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20422F0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042308, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042320, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042338, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042350, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042368, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042380, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042398, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20423B0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20423C8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20423E0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20423F8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042410, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042428, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042440, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042458, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042470, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042488, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20424A0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20424B8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20424D0, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20424E8, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042500, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042518, 0, 0, 0, 40, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042530, 0, 0, 0, 40, 0, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2042548, 0, 0, 0, 40, 0, 0);
}

void sub_29A188A50()
{
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040978, &unk_2A2040968, sub_29A189484);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040978, &unk_2A2040958, sub_29A189774);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040978, &unk_2A2040948, sub_29A1899AC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040968, &unk_2A2040948, sub_29A189D2C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040948, &unk_2A2040968, sub_29A189DBC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040968, &unk_2A2040958, sub_29A189EB8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040958, &unk_2A2040968, sub_29A189F1C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040958, &unk_2A2040948, sub_29A18A014);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040948, &unk_2A2040958, sub_29A18A094);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409B8, &unk_2A20409A8, sub_29A18A0EC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409B8, &unk_2A2040998, sub_29A18A3DC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409B8, &unk_2A2040988, sub_29A18A7AC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409A8, &unk_2A2040988, sub_29A18AB84);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040988, &unk_2A20409A8, sub_29A18AC2C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409A8, &unk_2A2040998, sub_29A18AD7C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040998, &unk_2A20409A8, sub_29A18AE18);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040998, &unk_2A2040988, sub_29A18AF5C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040988, &unk_2A2040998, sub_29A18AFF4);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409F8, &unk_2A20409E8, sub_29A18B07C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409F8, &unk_2A20409D8, sub_29A18B3BC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409F8, &unk_2A20409C8, sub_29A18B7A0);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409E8, &unk_2A20409C8, sub_29A18BB8C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409C8, &unk_2A20409E8, sub_29A18BC40);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409E8, &unk_2A20409D8, sub_29A18BE00);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409D8, &unk_2A20409E8, sub_29A18BEA4);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409D8, &unk_2A20409C8, sub_29A18C054);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A20409C8, &unk_2A20409D8, sub_29A18C0DC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040808, &unk_2A2040818, sub_29A18C164);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040818, &unk_2A2040808, sub_29A18CA04);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040868, &unk_2A2040858, sub_29A18D2A4);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040858, &unk_2A2040868, sub_29A18D66C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040868, &unk_2A2040848, sub_29A18D8F8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040848, &unk_2A2040868, sub_29A18DCBC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040858, &unk_2A2040848, sub_29A18DD14);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&unk_2A2040848, &unk_2A2040858, sub_29A18DD94);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042518, &stru_2A2042500, sub_29A18DE14);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042500, &stru_2A2042518, sub_29A18DEC0);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042518, &stru_2A20424E8, sub_29A18FA98);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20424E8, &stru_2A2042518, sub_29A18FB48);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042500, &stru_2A20424E8, sub_29A190748);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20424E8, &stru_2A2042500, sub_29A1907EC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042170, &stru_2A20421B8, sub_29A190890);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421B8, &stru_2A2042170, sub_29A190948);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042170, &stru_2A2042200, sub_29A191FF8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042200, &stru_2A2042170, sub_29A1920B8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421B8, &stru_2A2042200, sub_29A192CE8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042200, &stru_2A20421B8, sub_29A192D8C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042158, &stru_2A20421A0, sub_29A192E30);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421A0, &stru_2A2042158, sub_29A192EFC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042158, &stru_2A20421E8, sub_29A194680);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421E8, &stru_2A2042158, sub_29A194758);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421A0, &stru_2A20421E8, sub_29A1953F8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421E8, &stru_2A20421A0, sub_29A1954B8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042140, &stru_2A2042188, sub_29A195578);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042188, &stru_2A2042140, sub_29A195648);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042140, &stru_2A20421D0, sub_29A196D24);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421D0, &stru_2A2042140, sub_29A196E04);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042188, &stru_2A20421D0, sub_29A1979F0);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20421D0, &stru_2A2042188, sub_29A197A98);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042218, &stru_2A2042260, sub_29A197B40);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042260, &stru_2A2042218, sub_29A197C1C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042368, &stru_2A2042380, sub_29A199444);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042380, &stru_2A2042368, sub_29A1994F8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042368, &stru_2A2042398, sub_29A19ABEC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042398, &stru_2A2042368, sub_29A19ACA0);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042380, &stru_2A2042398, sub_29A19B894);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042398, &stru_2A2042380, sub_29A19B948);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20424A0, &stru_2A2042470, sub_29A19B9FC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042470, &stru_2A20424A0, sub_29A19BA9C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042488, &stru_2A2042470, sub_29A19D43C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042470, &stru_2A2042488, sub_29A19D4DC);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042488, &stru_2A2042440, sub_29A19E0A8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042440, &stru_2A2042488, sub_29A19E148);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042308, &stru_2A2042320, sub_29A19EBA0);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2042320, &stru_2A2042308, sub_29A19EC44);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20422D8, &stru_2A20422F0, sub_29A19FF9C);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20422F0, &stru_2A20422D8, sub_29A1A0044);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20422A8, &stru_2A20422C0, sub_29A1A16D0);

  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20422C0, &stru_2A20422A8, sub_29A1A1790);
}

uint64_t sub_29A189484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  v5 = COERCE_UNSIGNED_INT(*v2);
  if (*v2)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23])
    {
      v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23] + (((v5 & 0x7FFFFF) + ((v5 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v5);
    }
  }

  else
  {
    v6 = v5 >> 16;
  }

  v7 = v2[1];
  v8 = COERCE_UNSIGNED_INT(v7);
  if (v7)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
    {
      result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
    }
  }

  else
  {
    result = v8 >> 16;
  }

  *(a2 + 8) = &off_2A2042560 + 3;
  *a2 = v6 | (result << 16);
  return result;
}

_DWORD *sub_29A189718@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2042560 + 3;
  *a2 = *result;
  return result;
}

uint64_t sub_29A189734(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
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

float32x2_t sub_29A189774@<D0>(int32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  v3 = a1[1];
  if ((v3.i8[0] & 4) != 0)
  {
    a1 = (*((*&v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  a2[1] = (&off_2A2042618 + 3);
  result = vcvt_f32_s32(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_29A1897EC(float *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A18994C(&v2, a1, a1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void *sub_29A189934@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2042618 + 3;
  return result;
}

uint64_t sub_29A18994C(uint64_t result, float *a2, float *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = LODWORD(v3);
  if (*(result + 8))
  {
    v4 = ((*result + LODWORD(v3) + (*result + LODWORD(v3)) * (*result + LODWORD(v3))) >> 1) + LODWORD(v3);
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a3;
  if (*a3 == 0.0)
  {
    v5 = 0.0;
  }

  *result = LODWORD(v5) + ((v4 + LODWORD(v5) + (v4 + LODWORD(v5)) * (v4 + LODWORD(v5))) >> 1);
  return result;
}

void *sub_29A1899AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *a1;
  v5 = *(a1 + 4);
  a2[1] = &off_2A20426D0 + 2;
  result = operator new(0x18uLL);
  *result = v4;
  *(result + 1) = v5;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A189A28(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A189A44(atomic_uint **a1)
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

void *sub_29A189A6C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A189A84(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A189C3C(&v3, v1, v1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unsigned int *sub_29A189BE4@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = (&off_2A20426D0 + 2);
  result = operator new(0x18uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A189C3C(uint64_t result, double *a2, double *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = v3;
  if (*(result + 8))
  {
    *&v4 = *&v3 + ((*result + *&v3 + (*result + *&v3) * (*result + *&v3)) >> 1);
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a3;
  if (*a3 == 0.0)
  {
    v5 = 0.0;
  }

  *result = *&v5 + ((*&v4 + *&v5 + (*&v4 + *&v5) * (*&v4 + *&v5)) >> 1);
  return result;
}

unsigned int *sub_29A189C98(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 4);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x18uLL);
  *v3 = *v2;
  atomic_store(0, v3 + 4);
  atomic_fetch_add_explicit(v3 + 4, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 4, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29A189D2C@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
  a2[1] = &off_2A20426D0 + 2;
  result = operator new(0x18uLL);
  *result = v4;
  *(result + 1) = v5;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A189DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = *v4;
  if (v5 == 0.0)
  {
    v6 = HIWORD(LODWORD(v5));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v5) >> 23])
  {
    v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v5) >> 23] + (((LODWORD(v5) & 0x7FFFFF) + ((LODWORD(v5) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v5));
  }

  v7 = v4[1];
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

  *(a2 + 8) = &off_2A2042560 + 3;
  *a2 = v6 | (result << 16);
  return result;
}

unsigned __int16 *sub_29A189EB8@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*result];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[result[1]];
  *(a2 + 8) = &off_2A2042618 + 3;
  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_29A189F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  v5 = *v2;
  if (*v2 == 0.0)
  {
    v6 = v5 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23])
  {
    v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23] + (((v5 & 0x7FFFFF) + ((v5 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v5);
  }

  v7 = v2[1];
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

  *(a2 + 8) = &off_2A2042560 + 3;
  *a2 = v6 | (result << 16);
  return result;
}

unsigned int *sub_29A18A014@<X0>(float32x2_t *a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = a1[1];
  if ((v3.i8[0] & 4) != 0)
  {
    a1 = (*((*&v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  a2[1] = (&off_2A20426D0 + 2);
  v5 = vcvtq_f64_f32(*a1);
  result = operator new(0x18uLL);
  *result = v5;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

float32x2_t sub_29A18A094@<D0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  a2[1] = (&off_2A2042618 + 3);
  result = vcvt_f32_f64(*v4);
  *a2 = result;
  return result;
}

uint64_t sub_29A18A0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = COERCE_UNSIGNED_INT(*v4);
  if (*v4)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23])
    {
      v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23] + (((v5 & 0x7FFFFF) + ((v5 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v5);
    }
  }

  else
  {
    v6 = v5 >> 16;
  }

  v7 = v4[1];
  v8 = COERCE_UNSIGNED_INT(v7);
  if (v7)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
    {
      v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
    }
  }

  else
  {
    v9 = v8 >> 16;
  }

  v10 = v4[2];
  v11 = COERCE_UNSIGNED_INT(v10);
  if (v10)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v11 >> 23])
    {
      result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v11 >> 23] + (((v11 & 0x7FFFFF) + ((v11 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v11);
    }
  }

  else
  {
    result = v11 >> 16;
  }

  *(a2 + 8) = &off_2A2042788 + 3;
  *a2 = v6;
  *(a2 + 2) = v9;
  *(a2 + 4) = result;
  return result;
}

int *sub_29A18A228(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

int *sub_29A18A240(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

unint64_t sub_29A18A25C(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A18A3A4(&v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

uint64_t sub_29A18A380@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2042788 + 3;
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  return result;
}

uint64_t sub_29A18A3A4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
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
  return sub_29A189734(a1, a3, a4);
}

void *sub_29A18A3DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4[1].i32[0];
  a2[1] = &off_2A2042840 + 2;
  v6 = vcvt_f32_s32(*v4);
  result = operator new(0x10uLL);
  *result = v6;
  *(result + 2) = v5;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18A464(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18A480(atomic_uint **a1)
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

void *sub_29A18A4A8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A18A4C0(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A18A6C4(&v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29A18A51C(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

_DWORD *sub_29A18A664@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2042840 + 2;
  result = operator new(0x10uLL);
  v5 = *(v3 + 8);
  *result = *v3;
  result[2] = v5;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18A6C4(uint64_t a1, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = LODWORD(v4);
  if (*(a1 + 8))
  {
    v5 = ((*a1 + LODWORD(v4) + (*a1 + LODWORD(v4)) * (*a1 + LODWORD(v4))) >> 1) + LODWORD(v4);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A18994C(a1, a3, a4);
}

atomic_uint *sub_29A18A710(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 3);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x10uLL);
  v5 = v2[2];
  *v3 = *v2;
  v3[2] = v5;
  atomic_store(0, v3 + 3);
  atomic_fetch_add_explicit(v3 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 3, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29A18A7AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  a2[1] = &off_2A20428F8 + 2;
  result = operator new(0x20uLL);
  *result = v5;
  *(result + 1) = v6;
  *(result + 2) = v7;
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18A840(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18A85C(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 6, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A18A884(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A18A89C(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A18AAA0(&v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29A18A8F8(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void *sub_29A18AA40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A20428F8 + 2;
  result = operator new(0x20uLL);
  v5 = *(v3 + 16);
  *result = *v3;
  *(result + 2) = v5;
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18AAA0(uint64_t a1, double *a2, double *a3, double *a4)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = v4;
  if (*(a1 + 8))
  {
    *&v5 = *&v4 + ((*a1 + *&v4 + (*a1 + *&v4) * (*a1 + *&v4)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A189C3C(a1, a3, a4);
}

atomic_uint *sub_29A18AAE8(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 6);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x20uLL);
  v5 = *(v2 + 2);
  *v3 = *v2;
  *(v3 + 2) = v5;
  atomic_store(0, v3 + 6);
  atomic_fetch_add_explicit(v3 + 6, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 6, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29A18AB84@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
  a2[1] = &off_2A20428F8 + 2;
  result = operator new(0x20uLL);
  *result = v4;
  *(result + 1) = v5;
  *(result + 2) = v6;
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18AC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = *v4;
  if (v5 == 0.0)
  {
    v6 = HIWORD(LODWORD(v5));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v5) >> 23])
  {
    v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v5) >> 23] + (((LODWORD(v5) & 0x7FFFFF) + ((LODWORD(v5) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v5));
  }

  v7 = v4[1];
  if (v7 == 0.0)
  {
    v8 = HIWORD(LODWORD(v7));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23])
  {
    v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23] + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
  }

  v9 = v4[2];
  if (v9 == 0.0)
  {
    result = HIWORD(LODWORD(v9));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23])
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23] + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  *(a2 + 8) = &off_2A2042788 + 3;
  *a2 = v6;
  *(a2 + 2) = v8;
  *(a2 + 4) = result;
  return result;
}

_DWORD *sub_29A18AD7C@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
  a2[1] = &off_2A2042840 + 2;
  result = operator new(0x10uLL);
  *result = v4;
  *(result + 1) = v5;
  *(result + 2) = v6;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18AE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = *v4;
  if (*v4 == 0.0)
  {
    v6 = v5 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23])
  {
    v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23] + (((v5 & 0x7FFFFF) + ((v5 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v5);
  }

  v7 = v4[1];
  if (v7 == 0.0)
  {
    v8 = HIWORD(LODWORD(v7));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23])
  {
    v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23] + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
  }

  v9 = v4[2];
  if (v9 == 0.0)
  {
    result = HIWORD(LODWORD(v9));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23])
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23] + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  *(a2 + 8) = &off_2A2042788 + 3;
  *a2 = v6;
  *(a2 + 2) = v8;
  *(a2 + 4) = result;
  return result;
}

void *sub_29A18AF5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4[1].f32[0];
  a2[1] = &off_2A20428F8 + 2;
  v7 = vcvtq_f64_f32(*v4);
  result = operator new(0x20uLL);
  *result = v7;
  *(result + 2) = v5;
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A18AFF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4[1].f64[0];
  a2[1] = &off_2A2042840 + 2;
  v6 = vcvt_f32_f64(*v4);
  result = operator new(0x10uLL);
  *result = v6;
  *(result + 2) = v5;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

_WORD *sub_29A18B07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  result = sub_29A18B0D4(a2, v4);
  *(a2 + 8) = &off_2A20429B0 + 3;
  return result;
}

_WORD *sub_29A18B0D4(_WORD *a1, int *a2)
{
  v4 = COERCE_UNSIGNED_INT(*a2);
  if (*a2)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23])
    {
      v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23] + (((v4 & 0x7FFFFF) + ((v4 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v4);
    }
  }

  else
  {
    v5 = v4 >> 16;
  }

  *a1 = v5;
  v6 = a2[1];
  v7 = COERCE_UNSIGNED_INT(v6);
  if (v6)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v7 >> 23])
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v7 >> 23] + (((v7 & 0x7FFFFF) + ((v7 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v7);
    }
  }

  else
  {
    v8 = v7 >> 16;
  }

  a1[1] = v8;
  v9 = a2[2];
  v10 = COERCE_UNSIGNED_INT(v9);
  if (v9)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v10 >> 23])
    {
      v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v10 >> 23] + (((v10 & 0x7FFFFF) + ((v10 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v10);
    }
  }

  else
  {
    v11 = v10 >> 16;
  }

  a1[2] = v11;
  v12 = a2[3];
  v13 = COERCE_UNSIGNED_INT(v12);
  if (v12)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v13 >> 23])
    {
      v14 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v13 >> 23] + (((v13 & 0x7FFFFF) + ((v13 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v14) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v13);
    }
  }

  else
  {
    v14 = v13 >> 16;
  }

  a1[3] = v14;
  return a1;
}

unint64_t sub_29A18B240(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A18B380(&v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void *sub_29A18B368@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A20429B0 + 3;
  return result;
}

uint64_t sub_29A18B380(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
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
  return sub_29A18A3A4(a1, a3, a4, a5);
}

unsigned int *sub_29A18B3BC@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  a2[1] = (&off_2A2042A68 + 2);
  v6 = vcvtq_f32_s32(*v4);
  result = operator new(0x14uLL);
  *result = v6;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18B440(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18B45C(atomic_uint **a1)
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

void *sub_29A18B484(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A18B49C(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A18B6BC(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29A18B4FC(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

unsigned int *sub_29A18B664@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = (&off_2A2042A68 + 2);
  result = operator new(0x14uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18B6BC(uint64_t a1, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *a2;
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = LODWORD(v5);
  if (*(a1 + 8))
  {
    v6 = ((*a1 + LODWORD(v5) + (*a1 + LODWORD(v5)) * (*a1 + LODWORD(v5))) >> 1) + LODWORD(v5);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29A18A6C4(a1, a3, a4, a5);
}

unsigned int *sub_29A18B70C(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 4);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x14uLL);
  *v3 = *v2;
  atomic_store(0, v3 + 4);
  atomic_fetch_add_explicit(v3 + 4, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 4, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29A18B7A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  a2[1] = &off_2A2042B20 + 2;
  v5.i64[0] = *v4;
  v5.i64[1] = HIDWORD(*v4);
  v6 = vcvtq_f64_s64(v5);
  v5.i64[0] = *(v4 + 8);
  v5.i64[1] = HIDWORD(*v4);
  v8 = v6;
  result = operator new(0x28uLL);
  *result = v8;
  *(result + 1) = vcvtq_f64_s64(v5);
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18B830(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18B84C(atomic_uint **a1)
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

void *sub_29A18B874(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A18B88C(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A18BAAC(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29A18B8EC(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void *sub_29A18BA54@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2042B20 + 2;
  result = operator new(0x28uLL);
  v5 = v3[1];
  *result = *v3;
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18BAAC(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = v5;
  if (*(a1 + 8))
  {
    *&v6 = *&v5 + ((*a1 + *&v5 + (*a1 + *&v5) * (*a1 + *&v5)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29A18AAA0(a1, a3, a4, a5);
}

atomic_uint *sub_29A18BAF8(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 8);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x28uLL);
  v5 = *(v2 + 1);
  *v3 = *v2;
  *(v3 + 1) = v5;
  atomic_store(0, v3 + 8);
  atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 8, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29A18BB8C@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
  v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]];
  a2[1] = &off_2A2042B20 + 2;
  result = operator new(0x28uLL);
  *result = v4;
  *(result + 1) = v5;
  *(result + 2) = v6;
  *(result + 3) = v7;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

_WORD *sub_29A18BC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  result = sub_29A18BC98(a2, v4);
  *(a2 + 8) = &off_2A20429B0 + 3;
  return result;
}

_WORD *sub_29A18BC98(_WORD *a1, double *a2)
{
  v4 = *a2;
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = a2[1];
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  a1[1] = v7;
  v8 = a2[2];
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

  a1[2] = v9;
  v10 = a2[3];
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  a1[3] = v11;
  return a1;
}

_DWORD *sub_29A18BE00@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
  v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]];
  a2[1] = &off_2A2042A68 + 2;
  result = operator new(0x14uLL);
  *result = v4;
  *(result + 1) = v5;
  *(result + 2) = v6;
  *(result + 3) = v7;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

_WORD *sub_29A18BEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  result = sub_29A18BEFC(a2, v4);
  *(a2 + 8) = &off_2A20429B0 + 3;
  return result;
}

_WORD *sub_29A18BEFC(_WORD *a1, float *a2)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v5 = v4 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23] + (((v4 & 0x7FFFFF) + ((v4 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v4);
  }

  *a1 = v5;
  v6 = a2[1];
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  a1[1] = v7;
  v8 = a2[2];
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

  a1[2] = v9;
  v10 = a2[3];
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  a1[3] = v11;
  return a1;
}

void *sub_29A18C054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  a2[1] = &off_2A2042B20 + 2;
  v6 = vcvtq_f64_f32(v4[1]);
  v7 = vcvtq_f64_f32(*v4);
  result = operator new(0x28uLL);
  *result = v7;
  *(result + 1) = v6;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

unsigned int *sub_29A18C0DC@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  a2[1] = (&off_2A2042A68 + 2);
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), v4[1]);
  result = operator new(0x14uLL);
  *result = v6;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A18C164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(v10, v4);
  a2[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v6 = v10[5];
  *(result + 4) = v10[4];
  *(result + 5) = v6;
  v7 = v10[7];
  *(result + 6) = v10[6];
  *(result + 7) = v7;
  v8 = v10[1];
  *result = v10[0];
  *(result + 1) = v8;
  v9 = v10[3];
  *(result + 2) = v10[2];
  *(result + 3) = v9;
  atomic_store(0, result + 32);
  *a2 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18C200(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 128), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18C21C(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 32, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A18C244(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

void *sub_29A18C35C@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  *(result + 2) = v3[2];
  *(result + 3) = v5;
  *result = v7;
  *(result + 1) = v6;
  v8 = v3[7];
  v10 = v3[4];
  v9 = v3[5];
  *(result + 6) = v3[6];
  *(result + 7) = v8;
  *(result + 4) = v10;
  *(result + 5) = v9;
  atomic_store(0, result + 32);
  *a2 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

unint64_t sub_29A18C3CC(uint64_t a1, double *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A18C46C(&v3, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8, a2 + 9, a2 + 10, a2 + 11, a2 + 12, a2 + 13, a2 + 14, a2 + 15);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

uint64_t sub_29A18C46C(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15, double *a16, double *a17)
{
  v17 = *a2;
  if (*a2 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = v17;
  if (*(a1 + 8))
  {
    *&v18 = *&v17 + ((*a1 + *&v17 + (*a1 + *&v17) * (*a1 + *&v17)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  return sub_29A18C4EC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_29A18C4EC(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15, double *a16)
{
  v16 = *a2;
  if (*a2 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = v16;
  if (*(a1 + 8))
  {
    *&v17 = *&v16 + ((*a1 + *&v16 + (*a1 + *&v16) * (*a1 + *&v16)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_29A18C568(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_29A18C568(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15)
{
  v15 = *a2;
  if (*a2 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = v15;
  if (*(a1 + 8))
  {
    *&v16 = *&v15 + ((*a1 + *&v15 + (*a1 + *&v15) * (*a1 + *&v15)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_29A18C5E0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_29A18C5E0(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14)
{
  v14 = *a2;
  if (*a2 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  if (*(a1 + 8))
  {
    *&v15 = *&v14 + ((*a1 + *&v14 + (*a1 + *&v14) * (*a1 + *&v14)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_29A18C654(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_29A18C654(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13)
{
  v13 = *a2;
  if (*a2 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = v13;
  if (*(a1 + 8))
  {
    *&v14 = *&v13 + ((*a1 + *&v13 + (*a1 + *&v13) * (*a1 + *&v13)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return sub_29A18C6C4(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_29A18C6C4(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12)
{
  v12 = *a2;
  if (*a2 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = v12;
  if (*(a1 + 8))
  {
    *&v13 = *&v12 + ((*a1 + *&v12 + (*a1 + *&v12) * (*a1 + *&v12)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_29A18C730(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_29A18C730(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11)
{
  v11 = *a2;
  if (*a2 == 0.0)
  {
    v11 = 0.0;
  }

  v12 = v11;
  if (*(a1 + 8))
  {
    *&v12 = *&v11 + ((*a1 + *&v11 + (*a1 + *&v11) * (*a1 + *&v11)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_29A18C798(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_29A18C798(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  v10 = *a2;
  if (*a2 == 0.0)
  {
    v10 = 0.0;
  }

  v11 = v10;
  if (*(a1 + 8))
  {
    *&v11 = *&v10 + ((*a1 + *&v10 + (*a1 + *&v10) * (*a1 + *&v10)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_29A18C7FC(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_29A18C7FC(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9)
{
  v9 = *a2;
  if (*a2 == 0.0)
  {
    v9 = 0.0;
  }

  v10 = v9;
  if (*(a1 + 8))
  {
    *&v10 = *&v9 + ((*a1 + *&v9 + (*a1 + *&v9) * (*a1 + *&v9)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_29A18C85C(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_29A18C85C(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8)
{
  v8 = *a2;
  if (*a2 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = v8;
  if (*(a1 + 8))
  {
    *&v9 = *&v8 + ((*a1 + *&v8 + (*a1 + *&v8) * (*a1 + *&v8)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29A18C8B4(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29A18C8B4(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  v7 = *a2;
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  if (*(a1 + 8))
  {
    *&v8 = *&v7 + ((*a1 + *&v7 + (*a1 + *&v7) * (*a1 + *&v7)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29A18C908(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29A18C908(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = *a2;
  if (*a2 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6;
  if (*(a1 + 8))
  {
    *&v7 = *&v6 + ((*a1 + *&v6 + (*a1 + *&v6) * (*a1 + *&v6)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29A18BAAC(a1, a3, a4, a5, a6);
}

atomic_uint *sub_29A18C958(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 32);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x88uLL);
  v5 = *(v2 + 3);
  v7 = *v2;
  v6 = *(v2 + 1);
  *(v3 + 2) = *(v2 + 2);
  *(v3 + 3) = v5;
  *v3 = v7;
  *(v3 + 1) = v6;
  v8 = *(v2 + 7);
  v10 = *(v2 + 4);
  v9 = *(v2 + 5);
  *(v3 + 6) = *(v2 + 6);
  *(v3 + 7) = v8;
  *(v3 + 4) = v10;
  *(v3 + 5) = v9;
  atomic_store(0, v3 + 32);
  atomic_fetch_add_explicit(v3 + 32, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 32, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29A18CA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v8, v4);
  a2[1] = &off_2A2042C90 + 2;
  result = operator new(0x44uLL);
  v6 = v8[1];
  *result = v8[0];
  *(result + 1) = v6;
  v7 = v8[3];
  *(result + 2) = v8[2];
  *(result + 3) = v7;
  atomic_store(0, result + 16);
  *a2 = result;
  atomic_fetch_add_explicit(result + 16, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18CA90(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 64), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18CAAC(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 16, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29A18CAD4(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

void *sub_29A18CBEC@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2042C90 + 2;
  result = operator new(0x44uLL);
  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  *(result + 2) = v3[2];
  *(result + 3) = v5;
  *result = v7;
  *(result + 1) = v6;
  atomic_store(0, result + 16);
  *a2 = result;
  atomic_fetch_add_explicit(result + 16, 1u, memory_order_relaxed);
  return result;
}

unint64_t sub_29A18CC4C(uint64_t a1, float *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A18CCEC(&v3, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8, a2 + 9, a2 + 10, a2 + 11, a2 + 12, a2 + 13, a2 + 14, a2 + 15);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

uint64_t sub_29A18CCEC(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16, float *a17)
{
  v17 = *a2;
  if (*a2 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = LODWORD(v17);
  if (*(a1 + 8))
  {
    v18 = ((*a1 + LODWORD(v17) + (*a1 + LODWORD(v17)) * (*a1 + LODWORD(v17))) >> 1) + LODWORD(v17);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  return sub_29A18CD70(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_29A18CD70(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16)
{
  v16 = *a2;
  if (*a2 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = LODWORD(v16);
  if (*(a1 + 8))
  {
    v17 = ((*a1 + LODWORD(v16) + (*a1 + LODWORD(v16)) * (*a1 + LODWORD(v16))) >> 1) + LODWORD(v16);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_29A18CDF0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_29A18CDF0(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15)
{
  v15 = *a2;
  if (*a2 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = LODWORD(v15);
  if (*(a1 + 8))
  {
    v16 = ((*a1 + LODWORD(v15) + (*a1 + LODWORD(v15)) * (*a1 + LODWORD(v15))) >> 1) + LODWORD(v15);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_29A18CE6C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_29A18CE6C(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14)
{
  v14 = *a2;
  if (*a2 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = LODWORD(v14);
  if (*(a1 + 8))
  {
    v15 = ((*a1 + LODWORD(v14) + (*a1 + LODWORD(v14)) * (*a1 + LODWORD(v14))) >> 1) + LODWORD(v14);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_29A18CEE4(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_29A18CEE4(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13)
{
  v13 = *a2;
  if (*a2 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = LODWORD(v13);
  if (*(a1 + 8))
  {
    v14 = ((*a1 + LODWORD(v13) + (*a1 + LODWORD(v13)) * (*a1 + LODWORD(v13))) >> 1) + LODWORD(v13);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return sub_29A18CF58(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_29A18CF58(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12)
{
  v12 = *a2;
  if (*a2 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = LODWORD(v12);
  if (*(a1 + 8))
  {
    v13 = ((*a1 + LODWORD(v12) + (*a1 + LODWORD(v12)) * (*a1 + LODWORD(v12))) >> 1) + LODWORD(v12);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_29A18CFC8(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_29A18CFC8(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11)
{
  v11 = *a2;
  if (*a2 == 0.0)
  {
    v11 = 0.0;
  }

  v12 = LODWORD(v11);
  if (*(a1 + 8))
  {
    v12 = ((*a1 + LODWORD(v11) + (*a1 + LODWORD(v11)) * (*a1 + LODWORD(v11))) >> 1) + LODWORD(v11);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_29A18D034(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_29A18D034(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10)
{
  v10 = *a2;
  if (*a2 == 0.0)
  {
    v10 = 0.0;
  }

  v11 = LODWORD(v10);
  if (*(a1 + 8))
  {
    v11 = ((*a1 + LODWORD(v10) + (*a1 + LODWORD(v10)) * (*a1 + LODWORD(v10))) >> 1) + LODWORD(v10);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_29A18D09C(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_29A18D09C(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9)
{
  v9 = *a2;
  if (*a2 == 0.0)
  {
    v9 = 0.0;
  }

  v10 = LODWORD(v9);
  if (*(a1 + 8))
  {
    v10 = ((*a1 + LODWORD(v9) + (*a1 + LODWORD(v9)) * (*a1 + LODWORD(v9))) >> 1) + LODWORD(v9);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_29A18D100(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_29A18D100(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8)
{
  v8 = *a2;
  if (*a2 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = LODWORD(v8);
  if (*(a1 + 8))
  {
    v9 = ((*a1 + LODWORD(v8) + (*a1 + LODWORD(v8)) * (*a1 + LODWORD(v8))) >> 1) + LODWORD(v8);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29A18D15C(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29A18D15C(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *a2;
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = LODWORD(v7);
  if (*(a1 + 8))
  {
    v8 = ((*a1 + LODWORD(v7) + (*a1 + LODWORD(v7)) * (*a1 + LODWORD(v7))) >> 1) + LODWORD(v7);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29A18D1B4(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29A18D1B4(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *a2;
  if (*a2 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = LODWORD(v6);
  if (*(a1 + 8))
  {
    v7 = ((*a1 + LODWORD(v6) + (*a1 + LODWORD(v6)) * (*a1 + LODWORD(v6))) >> 1) + LODWORD(v6);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29A18B6BC(a1, a3, a4, a5, a6);
}

atomic_uint *sub_29A18D208(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 16);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x44uLL);
  v5 = *(v2 + 3);
  v7 = *v2;
  v6 = *(v2 + 1);
  *(v3 + 2) = *(v2 + 2);
  *(v3 + 3) = v5;
  *v3 = v7;
  *(v3 + 1) = v6;
  atomic_store(0, v3 + 16);
  atomic_fetch_add_explicit(v3 + 16, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 16, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

unsigned int *sub_29A18D2A4@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(&v6, v2);
  a2[1] = &off_2A2042D48;
  result = operator new(0x14uLL);
  *result = v6;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18D328(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18D344(atomic_uint **a1)
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

void *sub_29A18D36C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A18D384(float **a1)
{
  v1 = *a1;
  v3 = *(*a1 + 3);
  v4 = 0;
  v5 = 0;
  sub_29A18D5A0(&v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

BOOL sub_29A18D3E4(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

unsigned int *sub_29A18D54C@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2042D48;
  result = operator new(0x14uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18D5A0(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = LODWORD(v3);
  if (*(a1 + 8))
  {
    v4 = ((*a1 + LODWORD(v3) + (*a1 + LODWORD(v3)) * (*a1 + LODWORD(v3))) >> 1) + LODWORD(v3);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A18D5E8(a1, a3);
}

uint64_t sub_29A18D5E8(uint64_t a1, float *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18A6C4(&v5, a2, a2 + 1, a2 + 2);
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

uint64_t sub_29A18D66C@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::GfQuath *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  result = pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(a2, v4);
  *(a2 + 1) = &off_2A2042E00 + 1;
  return result;
}

unint64_t sub_29A18D6E8(unsigned __int16 *a1)
{
  v1 = a1[3];
  v4 = 1;
  v3 = v1;
  sub_29A18D874(&v3, a1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

uint64_t sub_29A18D744(uint64_t a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1 + 6)] == pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a2 + 6)])
  {
    pxrInternal__aapl__pxrReserved__::GfVec3h::operator==();
  }

  return 0;
}

uint64_t sub_29A18D770(uint64_t a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1 + 6)] == pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a2 + 6)])
  {
    pxrInternal__aapl__pxrReserved__::GfVec3h::operator==();
  }

  return 0;
}

void *sub_29A18D85C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2042E00 + 1;
  return result;
}

uint64_t sub_29A18D874(uint64_t a1, unsigned __int16 *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18A3A4(&v5, a2, a2 + 1, a2 + 2);
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

void *sub_29A18D8F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(v7, v2);
  a2[1] = &off_2A2042EB8;
  result = operator new(0x28uLL);
  v6 = v7[1];
  *result = v7[0];
  *(result + 1) = v6;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A18D97C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A18D998(atomic_uint **a1)
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

void *sub_29A18D9C0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29A18D9D8(double **a1)
{
  v1 = *a1;
  v3 = *(*a1 + 3);
  v4 = 0;
  v5 = 0;
  sub_29A18DBF4(&v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

BOOL sub_29A18DA38(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

void *sub_29A18DBA0@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2042EB8;
  result = operator new(0x28uLL);
  v5 = v3[1];
  *result = *v3;
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18DBF4(uint64_t a1, double *a2, double *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = v3;
  if (*(a1 + 8))
  {
    *&v4 = *&v3 + ((*a1 + *&v3 + (*a1 + *&v3) * (*a1 + *&v3)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A18DC38(a1, a3);
}

uint64_t sub_29A18DC38(uint64_t a1, double *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18AAA0(&v5, a2, a2 + 1, a2 + 2);
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

uint64_t sub_29A18DCBC@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::GfQuath *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  result = pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(a2, v4);
  *(a2 + 1) = &off_2A2042E00 + 1;
  return result;
}

void *sub_29A18DD14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(v7, v4);
  a2[1] = &off_2A2042EB8;
  result = operator new(0x28uLL);
  v6 = v7[1];
  *result = v7[0];
  *(result + 1) = v6;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

float32x4_t *sub_29A18DD94@<X0>(uint64_t a1@<X0>, float32x4_t **a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(&v6, v4);
  a2[1] = &off_2A2042D48;
  result = operator new(0x14uLL);
  *result = v6;
  atomic_store(0, &result[1]);
  *a2 = result;
  atomic_fetch_add_explicit(&result[1], 1u, memory_order_relaxed);
  return result;
}

void sub_29A18DE14(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A18DFB4(a1);
  sub_29A18E048(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A18E624(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 2 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v8];
      v7 -= 2;
    }

    while (v7);
  }

  sub_29A18E0BC(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29A18DEC0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A18ED70(a1);
  sub_29A18EE04(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A18F540(v10);
  if (v5)
  {
    v6 = v11;
    v7 = 4 * v5;
    do
    {
      v8 = *v4;
      if (*v4 == 0.0)
      {
        v9 = v8 >> 16;
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
      {
        v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
      }

      *v6++ = v9;
      ++v4;
      v7 -= 4;
    }

    while (v7);
  }

  sub_29A18EE78(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void **sub_29A18DFB4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A18E100(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A18E138, &stru_2A2042518);
  }
}

uint64_t sub_29A18E048(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  sub_29A18E1D4(a1);
  v7 = &v6;
  sub_29A18E224(a1, a2, &v7, v4);
  return a1;
}

double sub_29A18E0BC@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A18E668(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A18E100(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 58)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042518);
  }

  else
  {
    return 0;
  }
}

double sub_29A18E138@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A18E188;
  a1[2] = &stru_2A2042518;
  return result;
}

uint64_t sub_29A18E188(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  return result;
}

void *sub_29A18E1D4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

void *sub_29A18E224(void *result, unint64_t a2, __int32 **a3, int16x4_t a4)
{
  v4 = *result;
  if (*result == a2)
  {
    return result;
  }

  v6 = result;
  if (a2)
  {
    v8 = result[4];
    if (v8)
    {
      if (!result[3])
      {
        v9 = atomic_load(v8 - 2);
        if (v9 == 1)
        {
          if (v4 >= a2)
          {
            v13 = result[4];
          }

          else
          {
            v10 = result[4];
            if (*(v10 - 8) < a2)
            {
              result = sub_29A18E590(result, a2);
              v8 = result;
              if (v4)
              {
                v11 = 0;
                do
                {
                  *(result + v11) = *(v10 + v11);
                  v11 += 4;
                }

                while (4 * v4 != v11);
              }
            }

            v12 = 0;
            v13 = v8;
            a4.i32[0] = **a3;
            v14 = (4 * a2 - 4 * v4 - 4) >> 2;
            v15 = vdupq_n_s64(v14);
            v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v17 = v8 + v4 + 2;
            do
            {
              v18 = vdupq_n_s64(v12);
              v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B430070)));
              if (vuzp1_s16(v19, a4).u8[0])
              {
                *(v17 - 2) = a4.i32[0];
              }

              if (vuzp1_s16(v19, a4).i8[2])
              {
                *(v17 - 1) = a4.i32[0];
              }

              if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E10)))).i32[1])
              {
                *v17 = a4.i32[0];
                v17[1] = a4.i32[0];
              }

              v12 += 4;
              v17 += 4;
            }

            while (v16 != v12);
          }

LABEL_51:
          if (v13 != v6[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
          }

          *v6 = a2;
          return result;
        }

        v8 = result[4];
      }

      if (v4 >= a2)
      {
        v28 = a2;
      }

      else
      {
        v28 = *result;
      }

      result = sub_29A18E590(result, a2);
      v13 = result;
      if (v4)
      {
        v30 = 4 * v28;
        v31 = result;
        do
        {
          v32 = *v8;
          v8 = (v8 + 4);
          *v31++ = v32;
          v30 -= 4;
        }

        while (v30);
      }

      if (v4 < a2)
      {
        v33 = 0;
        v29.i32[0] = **a3;
        v34 = (4 * a2 - 4 * v4 - 4) >> 2;
        v35 = vdupq_n_s64(v34);
        v36 = (v34 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v37 = result + v4 + 2;
        do
        {
          v38 = vdupq_n_s64(v33);
          v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B430070)));
          if (vuzp1_s16(v39, v29).u8[0])
          {
            *(v37 - 2) = v29.i32[0];
          }

          if (vuzp1_s16(v39, v29).i8[2])
          {
            *(v37 - 1) = v29.i32[0];
          }

          if (vuzp1_s16(v29, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B433E10)))).i32[1])
          {
            *v37 = v29.i32[0];
            v37[1] = v29.i32[0];
          }

          v33 += 4;
          v37 += 4;
        }

        while (v36 != v33);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      result = sub_29A18E590(result, a2);
      v13 = result;
      v20 = 0;
      v21.i32[0] = **a3;
      v22 = (4 * a2 - 4) >> 2;
      v23 = vdupq_n_s64(v22);
      v24 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v25 = result + 1;
      do
      {
        v26 = vdupq_n_s64(v20);
        v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29B430070)));
        if (vuzp1_s16(v27, v21).u8[0])
        {
          *(v25 - 2) = v21.i32[0];
        }

        if (vuzp1_s16(v27, v21).i8[2])
        {
          *(v25 - 1) = v21.i32[0];
        }

        if (vuzp1_s16(v21, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29B433E10)))).i32[1])
        {
          *v25 = v21.i32[0];
          v25[1] = v21.i32[0];
        }

        v20 += 4;
        v25 += 4;
      }

      while (v24 != v20);
      goto LABEL_51;
    }
  }

  return sub_29A18E1D4(result);
}

void *sub_29A18E590(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(size_t) [T = float]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
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

uint64_t sub_29A18E624(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2916CC();
    }
  }

  return result;
}

__n128 sub_29A18E668(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A18E720(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A18E758(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v4 = sub_29A18ED34(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A18E720(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 57)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042500);
  }

  else
  {
    return 0;
  }
}

void *sub_29A18E758(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2042F70;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A18E7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A18E828(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A18E848(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A18E9A0(result);
}

void *sub_29A18E88C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A18ECB4);
  return a2;
}

void *sub_29A18E988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2042F70;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A18E9A0(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A18EA08(unint64_t *a1)
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

      v1 = LODWORD(v5) + ((v1 + LODWORD(v5) + (v1 + LODWORD(v5)) * (v1 + LODWORD(v5))) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

BOOL Overlay::__operatorEqualsEquals(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 4 * *a1 - 4;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 4;
  }

  while (!v11);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 2 * *a1 - 2;
  do
  {
    v8 = *v5++;
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v8];
    v10 = *v6++;
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v10];
    result = v9 == v11;
    v12 = v9 != v11 || v7 == 0;
    v7 -= 2;
  }

  while (!v12);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  for (i = *(a2 + 32); pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v5] == pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*i] && pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v5[1]] == pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[i[1]]; i += 2)
  {
    v5 += 2;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

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
      pxrInternal__aapl__pxrReserved__::GfVec3h::operator==();
    }
  }

  return 1;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

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
      pxrInternal__aapl__pxrReserved__::GfVec4h::operator==();
    }
  }

  return 1;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 8);
  v6 = 16 * *a1;
  for (i = (*(a2 + 32) + 8); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 16;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 6)] == pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(*(a2 + 32) + 6)])
  {
    pxrInternal__aapl__pxrReserved__::GfVec3h::operator==();
  }

  return 0;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 16);
  v6 = 32 * *a1;
  for (i = (*(a2 + 32) + 16); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 32;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

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
      pxrInternal__aapl__pxrReserved__::GfRange3d::operator==();
    }
  }

  return 1;
}

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
      pxrInternal__aapl__pxrReserved__::GfRange3f::operator==();
    }
  }

  return 1;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    v11 = v10 ^ v8;
    result = v11 < 8;
    v12 = v11 > 7 || v7 == 0;
    v7 -= 8;
  }

  while (!v12);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v8 == v10 && v9 == v11;
  }

  while (result && v5 != v6);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = v5 + 32 * *a1;
  for (i = *(a2 + 32); *v5 == *i && *(v5 + 8) == *(i + 8) && *(v5 + 16) == *(i + 16) && *(v5 + 24) == *(i + 24); i += 32)
  {
    v5 += 32;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

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
      pxrInternal__aapl__pxrReserved__::GfDualQuath::operator==();
    }
  }

  return 1;
}

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
      pxrInternal__aapl__pxrReserved__::GfDualQuatf::operator==();
    }
  }

  return 1;
}

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
      pxrInternal__aapl__pxrReserved__::GfDualQuatd::operator==();
    }
  }

  return 1;
}

BOOL sub_29A18EAFC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    if (*(a1 + 12))
    {
      v7 = *(a1 + 16) ? 4 : 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = (a2 + 8);
  if (*(a2 + 8))
  {
    if (*(a2 + 12))
    {
      v9 = *(a2 + 16) ? 4 : 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (v5)
  {
    if (*(a1 + 12))
    {
      v10 = *(a1 + 16) == 0;
      v11 = 3;
      if (!v10)
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  return memcmp(v4, v8, 4 * v11 - 4) == 0;
}

uint64_t sub_29A18EBE0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A18E9A0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A18E9A0(&v4);
  }

  return *a1;
}

void *sub_29A18EC48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  v5 = *(a1 + 16);
  *result = *a1;
  *(result + 1) = v5;
  v6 = *(a1 + 32);
  *(result + 4) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(result + 3))
    {
      v7 = *(result + 3);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, result + 10);
  *a2 = result;
  atomic_fetch_add_explicit(result + 10, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A18ECC8(void *a1, uint64_t a2)
{
  result = operator new(0x30uLL);
  v5 = *(a2 + 16);
  *result = *a2;
  *(result + 1) = v5;
  v6 = *(a2 + 32);
  *(result + 4) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(result + 3))
    {
      v7 = *(result + 3);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, result + 10);
  *a1 = result;
  atomic_fetch_add_explicit(result + 10, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A18ED34(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291738();
  }

  return sub_29A18EBE0(a1);
}

void **sub_29A18ED70(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A18E720(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A18EEBC, &stru_2A2042500);
  }
}

uint64_t sub_29A18EE04(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A18EF58(a1);
  v6 = &v5;
  sub_29A18EFA8(a1, a2, &v6);
  return a1;
}

double sub_29A18EE78@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A18F584(a2, a1).n128_u64[0];
  return result;
}

double sub_29A18EEBC@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A18EF0C;
  a1[2] = &stru_2A2042500;
  return result;
}

uint64_t sub_29A18EF0C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  return result;
}

void *sub_29A18EF58(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

void *sub_29A18EFA8(void *result, unint64_t a2, __int16 **a3)
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
            v12 = result[4];
          }

          else
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A18F4AC(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = 0;
            v12 = v7;
            v13 = **a3;
            v14 = (2 * a2 - 2 * v3 - 2) >> 1;
            v15 = vdupq_n_s64(v14);
            v16 = (v14 & 0x7FFFFFFFFFFFFFF8) + 8;
            v17 = v7 + v3 + 4;
            do
            {
              v18 = vdupq_n_s64(v11);
              v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B430070)));
              if (vuzp1_s8(vuzp1_s16(v19, *v15.i8), *v15.i8).u8[0])
              {
                *(v17 - 4) = v13;
              }

              if (vuzp1_s8(vuzp1_s16(v19, *&v15), *&v15).i8[1])
              {
                *(v17 - 3) = v13;
              }

              if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E10)))), *&v15).i8[2])
              {
                *(v17 - 2) = v13;
                *(v17 - 1) = v13;
              }

              v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E00)));
              if (vuzp1_s8(*&v15, vuzp1_s16(v20, *&v15)).i32[1])
              {
                *v17 = v13;
              }

              if (vuzp1_s8(*&v15, vuzp1_s16(v20, *&v15)).i8[5])
              {
                v17[1] = v13;
              }

              if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433DF0))))).i8[6])
              {
                v17[2] = v13;
                v17[3] = v13;
              }

              v11 += 8;
              v17 += 8;
            }

            while (v16 != v11);
          }

LABEL_69:
          if (v12 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v30 = a2;
      }

      else
      {
        v30 = *result;
      }

      result = sub_29A18F4AC(result, a2);
      v12 = result;
      if (v3)
      {
        v31 = 2 * v30;
        v32 = result;
        do
        {
          v33 = *v7;
          v7 = (v7 + 2);
          *v32++ = v33;
          v31 -= 2;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (2 * a2 - 2 * v3 - 2) >> 1;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 & 0x7FFFFFFFFFFFFFF8) + 8;
        v39 = result + v3 + 4;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B430070)));
          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).u8[0])
          {
            *(v39 - 4) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).i8[1])
          {
            *(v39 - 3) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433E10)))), 6).i8[2])
          {
            *(v39 - 2) = v35;
            *(v39 - 1) = v35;
          }

          v42 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433E00)));
          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i32[1])
          {
            *v39 = v35;
          }

          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i8[5])
          {
            v39[1] = v35;
          }

          if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433DF0))))).i8[6])
          {
            v39[2] = v35;
            v39[3] = v35;
          }

          v34 += 8;
          v39 += 8;
        }

        while (v38 != v34);
      }

      goto LABEL_69;
    }

    if (2 * a2 / a2 == 2)
    {
      result = sub_29A18F4AC(result, a2);
      v12 = result;
      v21 = 0;
      v22 = **a3;
      v23 = (2 * a2 - 2) >> 1;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 & 0x7FFFFFFFFFFFFFF8) + 8;
      v26 = result + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B430070)));
        if (vuzp1_s8(vuzp1_s16(v28, *v24.i8), *v24.i8).u8[0])
        {
          *(v26 - 4) = v22;
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v24), *&v24).i8[1])
        {
          *(v26 - 3) = v22;
        }

        if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E10)))), *&v24).i8[2])
        {
          *(v26 - 2) = v22;
          *(v26 - 1) = v22;
        }

        v29 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E00)));
        if (vuzp1_s8(*&v24, vuzp1_s16(v29, *&v24)).i32[1])
        {
          *v26 = v22;
        }

        if (vuzp1_s8(*&v24, vuzp1_s16(v29, *&v24)).i8[5])
        {
          v26[1] = v22;
        }

        if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433DF0))))).i8[6])
        {
          v26[2] = v22;
          v26[3] = v22;
        }

        v21 += 8;
        v26 += 8;
      }

      while (v25 != v21);
      goto LABEL_69;
    }
  }

  return sub_29A18EF58(result);
}

void *sub_29A18F4AC(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]");
  if (a2 > 0x3FFFFFFFFFFFFFF7)
  {
    v3 = -1;
  }

  else
  {
    v3 = 2 * a2 + 16;
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

uint64_t sub_29A18F540(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2917A4();
    }
  }

  return result;
}

__n128 sub_29A18F584(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A18E100(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A18F63C(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  v4 = sub_29A18FA5C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A18F63C(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043028;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A18F6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A18F70C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A18F72C(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A18F8C4(result);
}

unint64_t sub_29A18F744(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = v4 + ((v1 + v4 + (v1 + v4) * (v1 + v4)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

void *sub_29A18F7B0(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A18FA44);
  return a2;
}

void *sub_29A18F8AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043028;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A18F8C4(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A18F9DC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A18F8C4(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A18F8C4(&v4);
  }

  return *a1;
}

uint64_t sub_29A18FA5C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291814();
  }

  return sub_29A18F9DC(a1);
}

void sub_29A18FA98(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A18DFB4(a1);
  sub_29A18FC40(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A190088(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 2 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v8];
      v7 -= 2;
    }

    while (v7);
  }

  sub_29A18FCB4(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29A18FB48(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A190618(a1);
  sub_29A18EE04(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A18F540(v10);
  if (v5)
  {
    v6 = v11;
    v7 = 8 * v5;
    do
    {
      v8 = *v4;
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

      *v6++ = v9;
      ++v4;
      v7 -= 8;
    }

    while (v7);
  }

  sub_29A18EE78(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

uint64_t sub_29A18FC40(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A18FCF8(a1);
  v6 = &v5;
  sub_29A18FD48(a1, a2, &v6);
  return a1;
}

double sub_29A18FCB4@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A1900CC(a2, a1).n128_u64[0];
  return result;
}

void *sub_29A18FCF8(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A18FD48(unint64_t *result, unint64_t a2, unint64_t **a3)
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
              result = sub_29A18FFF4(result, a2);
              v7 = result;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  result[i] = *(v9 + i * 8);
                }
              }
            }

            v11 = 0;
            v12 = **a3;
            v13 = (8 * a2 - 8 * v3 - 8) >> 3;
            v14 = (v13 + 2) & 0x3FFFFFFFFFFFFFFELL;
            v15 = vdupq_n_s64(v13);
            v16 = &v7[v3 + 1];
            do
            {
              v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_29B430070)));
              if (v17.i8[0])
              {
                *(v16 - 1) = v12;
              }

              if (v17.i8[4])
              {
                *v16 = v12;
              }

              v11 += 2;
              v16 += 2;
            }

            while (v14 != v11);
          }

          v18 = v7;
LABEL_43:
          if (v18 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *result;
      }

      result = sub_29A18FFF4(result, a2);
      v18 = result;
      if (v3)
      {
        v25 = 8 * v24;
        v26 = result;
        do
        {
          v27 = *v7++;
          *v26++ = v27;
          v25 -= 8;
        }

        while (v25);
      }

      if (v3 < a2)
      {
        v28 = 0;
        v29 = **a3;
        v30 = (8 * a2 - 8 * v3 - 8) >> 3;
        v31 = (v30 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v32 = vdupq_n_s64(v30);
        v33 = &result[v3 + 1];
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v28), xmmword_29B430070)));
          if (v34.i8[0])
          {
            *(v33 - 1) = v29;
          }

          if (v34.i8[4])
          {
            *v33 = v29;
          }

          v28 += 2;
          v33 += 2;
        }

        while (v31 != v28);
      }

      goto LABEL_43;
    }

    if (8 * a2 / a2 == 8)
    {
      result = sub_29A18FFF4(result, a2);
      v18 = result;
      v19 = 0;
      v20 = **a3;
      v21 = (8 * a2 - 8) >> 3;
      v22 = vdupq_n_s64(v21);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v19), xmmword_29B430070)));
        if (v23.i8[0])
        {
          result[v19] = v20;
        }

        if (v23.i8[4])
        {
          result[v19 + 1] = v20;
        }

        v19 += 2;
      }

      while (((v21 + 2) & 0x3FFFFFFFFFFFFFFELL) != v19);
      goto LABEL_43;
    }
  }

  return sub_29A18FCF8(result);
}

void *sub_29A18FFF4(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(size_t) [T = double]");
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

uint64_t sub_29A190088(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291880();
    }
  }

  return result;
}

__n128 sub_29A1900CC(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A190184(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A1901BC(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  v4 = sub_29A1905DC(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A190184(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20424E8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A1901BC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20430E0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A190250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19028C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1902AC(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A190404(result);
}

void *sub_29A1902F0(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A1905C8);
  return a2;
}

void *sub_29A1903EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20430E0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A190404(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A19046C(unint64_t *a1)
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

      v1 = *&v5 + ((v1 + *&v5 + (v1 + *&v5) * (v1 + *&v5)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t sub_29A190560(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A190404(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A190404(&v4);
  }

  return *a1;
}

uint64_t sub_29A1905DC(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2918EC();
  }

  return sub_29A190560(a1);
}

void **sub_29A190618(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A190184(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1906AC, &stru_2A20424E8);
  }
}

double sub_29A1906AC@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1906FC;
  a1[2] = &stru_2A20424E8;
  return result;
}

uint64_t sub_29A1906FC(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  return result;
}

void sub_29A190748(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A18ED70(a1);
  sub_29A18FC40(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A190088(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 4 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = v8;
      v7 -= 4;
    }

    while (v7);
  }

  sub_29A18FCB4(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29A1907EC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A190618(a1);
  sub_29A18E048(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A18E624(v10);
  if (v5)
  {
    v6 = v11;
    v7 = 8 * v5;
    do
    {
      v8 = *v4++;
      v9 = v8;
      *v6++ = v9;
      v7 -= 8;
    }

    while (v7);
  }

  sub_29A18E0BC(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29A190890(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A190A84(a1);
  sub_29A190B18(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A190F50(v9);
  if (v5)
  {
    v6 = &v4[2 * v5];
    v7 = v10;
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[1]];
      *v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v4];
      v7[1] = v8;
      v7 += 2;
      v4 += 2;
    }

    while (v4 != v6);
  }

  sub_29A190B8C(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29A190948(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1915AC(a1);
  sub_29A191640(v12, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A191A40(v12);
  if (v5)
  {
    v6 = &v4[2 * v5];
    v7 = v13;
    do
    {
      v8 = *v4;
      if (*v4 == 0.0)
      {
        v9 = v8 >> 16;
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
      {
        v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
      }

      v10 = v4[1];
      if (v10 == 0.0)
      {
        v11 = HIWORD(LODWORD(v10));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
      {
        v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
      }

      *v7++ = v9 | (v11 << 16);
      v4 += 2;
    }

    while (v4 != v6);
  }

  sub_29A1916B4(v12, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void **sub_29A190A84(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A190BD0(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A190C08, &stru_2A2042170);
  }
}

uint64_t sub_29A190B18(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A190CA4(a1);
  v6 = &v5;
  sub_29A190CF4(a1, a2, &v6);
  return a1;
}

double sub_29A190B8C@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A190F94(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A190BD0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 19)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042170);
  }

  else
  {
    return 0;
  }
}

double sub_29A190C08@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A190C58;
  a1[2] = &stru_2A2042170;
  return result;
}

uint64_t sub_29A190C58(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  return result;
}

void *sub_29A190CA4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A190CF4(unint64_t *result, unint64_t a2, unint64_t **a3)
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
              result = sub_29A190EBC(result, a2);
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

      result = sub_29A190EBC(result, a2);
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
      result = sub_29A190EBC(result, a2);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A190CA4(result);
}

void *sub_29A190EBC(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]");
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

uint64_t sub_29A190F50(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291958();
    }
  }

  return result;
}

__n128 sub_29A190F94(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19104C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A191084(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  v4 = sub_29A191570(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A19104C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20421B8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A191084(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043198;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A191118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A191154(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A191174(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1912EC(result);
}

void *sub_29A1911D8(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A191558);
  return a2;
}

void *sub_29A1912D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043198;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1912EC(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A191354(uint64_t a1, uint64_t *a2)
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
      v4 = v3 + 2;
      sub_29A1913CC(&v7, v3);
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

uint64_t sub_29A1913CC(uint64_t a1, float *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18994C(&v5, a2, a2 + 1);
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

uint64_t sub_29A1914F0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1912EC(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1912EC(&v4);
  }

  return *a1;
}

void *sub_29A191558(float **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A191570(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2919BC();
  }

  return sub_29A1914F0(a1);
}

void **sub_29A1915AC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19104C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1916F8, &stru_2A20421B8);
  }
}

uint64_t sub_29A191640(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A191794(a1);
  v6 = &v5;
  sub_29A1917E4(a1, a2, &v6);
  return a1;
}

double sub_29A1916B4@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A191A84(a2, a1).n128_u64[0];
  return result;
}

double sub_29A1916F8@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A191748;
  a1[2] = &stru_2A20421B8;
  return result;
}

uint64_t sub_29A191748(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  return result;
}

void *sub_29A191794(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A1917E4(unint64_t *result, unint64_t a2, _DWORD **a3)
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
              result = sub_29A1919AC(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 4 * v3;
            do
            {
              *(v7 + v12) = *v11;
              v12 += 4;
            }

            while (4 * a2 != v12);
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

      result = sub_29A1919AC(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 4 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 = (v7 + 4);
          *v19 = v20;
          v19 = (v19 + 4);
          v18 -= 4;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 4 * v3;
        do
        {
          *(result + v22) = *v21;
          v22 += 4;
        }

        while (4 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 4 * a2;
    if (4 * a2 / a2 == 4)
    {
      result = sub_29A1919AC(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *(result + v15) = *v16;
        v15 += 4;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A191794(result);
}

void *sub_29A1919AC(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2h]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
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

uint64_t sub_29A191A40(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291A28();
    }
  }

  return result;
}

__n128 sub_29A191A84(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A190BD0(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A191B3C(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  v4 = sub_29A191FBC(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A191B3C(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043250;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A191BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A191C0C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A191C2C(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A191DA4(result);
}

void *sub_29A191C90(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A191FA4);
  return a2;
}

void *sub_29A191D8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043250;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A191DA4(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A191E0C(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = (a2[4] + 2);
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

uint64_t sub_29A191F3C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A191DA4(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A191DA4(&v4);
  }

  return *a1;
}

uint64_t sub_29A191FBC(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291A8C();
  }

  return sub_29A191F3C(a1);
}

void sub_29A191FF8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A190A84(a1);
  sub_29A1921FC(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19255C(v9);
  if (v5)
  {
    v6 = &v4[2 * v5];
    v7 = v10;
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[1]];
      *v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v4];
      v7[1] = v8;
      v7 += 2;
      v4 += 2;
    }

    while (v4 != v6);
  }

  sub_29A192270(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29A1920B8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A192BB8(a1);
  sub_29A191640(v12, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A191A40(v12);
  if (v5)
  {
    v6 = &v4[2 * v5];
    v7 = v13;
    do
    {
      v8 = *v4;
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

      v10 = v4[1];
      if (v10 == 0.0)
      {
        v11 = HIWORD(LODWORD(v10));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
      {
        v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
      }

      *v7++ = v9 | (v11 << 16);
      v4 += 2;
    }

    while (v4 != v6);
  }

  sub_29A1916B4(v12, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

uint64_t sub_29A1921FC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_29A1922B4(a1);
  v6 = v5;
  sub_29A192304(a1, a2, &v6);
  return a1;
}

double sub_29A192270@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A1925A0(a2, a1).n128_u64[0];
  return result;
}

void *sub_29A1922B4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A192304(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A1924CC(result, a2);
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

      result = sub_29A1924CC(result, a2);
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
      result = sub_29A1924CC(result, a2);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1922B4(result);
}

void *sub_29A1924CC(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]");
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

uint64_t sub_29A19255C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291AF8();
    }
  }

  return result;
}

__n128 sub_29A1925A0(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A192658(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A192690(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  v4 = sub_29A192B7C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A192658(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 25)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042200);
  }

  else
  {
    return 0;
  }
}

void *sub_29A192690(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043308;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A192724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A192760(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A192780(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1928F8(result);
}

void *sub_29A1927E4(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A192B64);
  return a2;
}

void *sub_29A1928E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043308;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1928F8(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A192960(uint64_t a1, uint64_t *a2)
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
      v4 = v3 + 2;
      sub_29A1929D8(&v7, v3);
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

uint64_t sub_29A1929D8(uint64_t a1, double *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A189C3C(&v5, a2, a2 + 1);
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

uint64_t sub_29A192AFC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1928F8(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1928F8(&v4);
  }

  return *a1;
}

void *sub_29A192B64(double **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A192B7C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291B5C();
  }

  return sub_29A192AFC(a1);
}

void **sub_29A192BB8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A192658(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A192C4C, &stru_2A2042200);
  }
}

double sub_29A192C4C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A192C9C;
  a1[2] = &stru_2A2042200;
  return result;
}

uint64_t sub_29A192C9C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  return result;
}

void sub_29A192CE8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1915AC(a1);
  sub_29A1921FC(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19255C(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 8 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = vcvtq_f64_f32(v8);
      v7 -= 8;
    }

    while (v7);
  }

  sub_29A192270(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29A192D8C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A192BB8(a1);
  sub_29A190B18(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A190F50(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 16 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = vcvt_f32_f64(v8);
      v7 -= 16;
    }

    while (v7);
  }

  sub_29A190B8C(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29A192E30(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A193090(a1);
  sub_29A193124(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1935CC(v10);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = v11;
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[1]];
      v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[2]];
      *v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v4];
      v7[1] = v8;
      v7[2] = v9;
      v4 += 3;
      v7 += 3;
    }

    while (v4 != v6);
  }

  sub_29A19319C(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29A192EFC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A193BCC(a1);
  sub_29A193C60(v14, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1940CC(v14);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = v15;
    do
    {
      v8 = *v4;
      if (*v4 == 0.0)
      {
        v9 = v8 >> 16;
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
      {
        v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
      }

      v10 = v4[1];
      if (v10 == 0.0)
      {
        v11 = HIWORD(LODWORD(v10));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
      {
        v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
      }

      v12 = v4[2];
      if (v12 == 0.0)
      {
        v13 = HIWORD(LODWORD(v12));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v12) >> 23])
      {
        v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v12) >> 23] + (((LODWORD(v12) & 0x7FFFFF) + ((LODWORD(v12) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v13) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v12));
      }

      *v7 = v9 | (v11 << 16);
      *(v7 + 4) = v13;
      v4 += 3;
      v7 += 6;
    }

    while (v4 != v6);
  }

  sub_29A193CD8(v14, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void **sub_29A193090(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1931E0(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A193218, &stru_2A2042158);
  }
}

uint64_t sub_29A193124(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  sub_29A1932B4(a1);
  v7 = &v5;
  sub_29A193304(a1, a2, &v7);
  return a1;
}

double sub_29A19319C@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A193610(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A1931E0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 18)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042158);
  }

  else
  {
    return 0;
  }
}

double sub_29A193218@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A193268;
  a1[2] = &stru_2A2042158;
  return result;
}

uint64_t sub_29A193268(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  return result;
}

void *sub_29A1932B4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A193304(unint64_t *result, unint64_t a2, uint64_t **a3)
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
              result = sub_29A193530(result, a2);
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

      result = sub_29A193530(result, a2);
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
      result = sub_29A193530(result, a2);
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1932B4(result);
}

void *sub_29A193530(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]");
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

uint64_t sub_29A1935CC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291BC8();
    }
  }

  return result;
}

__n128 sub_29A193610(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1936C8(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A193700(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v4 = sub_29A193B90(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}