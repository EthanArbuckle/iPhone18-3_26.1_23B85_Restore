BOOL sub_29A393C0C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (!v7)
    {
      return 1;
    }
  }

  else if (v4 != v5)
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFF8;
    v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    v10 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    v11 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 == v11)
    {
      v14 = *(v9 + 16);
      v12 = v9 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      v18 = *(v8 + 16);
      v16 = v8 + 16;
      v17 = v18;
      v19 = *(v16 + 23);
      if (v19 >= 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = *(v16 + 8);
      }

      if (v19 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v15 >= 0)
      {
        v22 = *(v12 + 23);
      }

      else
      {
        v22 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v23 = v12;
      }

      else
      {
        v23 = v13;
      }

      if (v22 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v21, v23, v24);
      v26 = v20 < v22;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (v26)
      {
        return 1;
      }
    }
  }

  if (v4)
  {
    v27 = v5 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    if (v4 && !v5)
    {
      return 0;
    }
  }

  else if (v5 != v4)
  {
    v28 = v5 & 0xFFFFFFFFFFFFFFF8;
    v29 = v4 & 0xFFFFFFFFFFFFFFF8;
    v30 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    v31 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v30 < v31)
    {
      return 0;
    }

    if (v30 == v31)
    {
      v34 = *(v29 + 16);
      v32 = v29 + 16;
      v33 = v34;
      v35 = *(v32 + 23);
      v38 = *(v28 + 16);
      v36 = v28 + 16;
      v37 = v38;
      v39 = *(v36 + 23);
      if (v39 >= 0)
      {
        v40 = *(v36 + 23);
      }

      else
      {
        v40 = *(v36 + 8);
      }

      if (v39 >= 0)
      {
        v41 = v36;
      }

      else
      {
        v41 = v37;
      }

      if (v35 >= 0)
      {
        v42 = *(v32 + 23);
      }

      else
      {
        v42 = *(v32 + 8);
      }

      if (v35 >= 0)
      {
        v43 = v32;
      }

      else
      {
        v43 = v33;
      }

      if (v42 >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      v45 = memcmp(v41, v43, v44);
      v46 = v40 < v42;
      if (v45)
      {
        v46 = v45 < 0;
      }

      if (v46)
      {
        return 0;
      }
    }
  }

  v47 = a1[1];
  v48 = a2[1];
  if (v47 && v48)
  {
    if (v47 != v48)
    {
      v49 = v47 & 0xFFFFFFFFFFFFFFF8;
      v50 = v48 & 0xFFFFFFFFFFFFFFF8;
      v51 = *(v49 + 8);
      v52 = *(v50 + 8);
      if (v51 < v52)
      {
        return 1;
      }

      if (v51 == v52)
      {
        v57 = *(v50 + 16);
        v55 = v50 + 16;
        v56 = v57;
        v58 = *(v55 + 23);
        v61 = *(v49 + 16);
        v59 = v49 + 16;
        v60 = v61;
        v62 = *(v59 + 23);
        if (v62 >= 0)
        {
          v63 = *(v59 + 23);
        }

        else
        {
          v63 = *(v59 + 8);
        }

        if (v62 >= 0)
        {
          v64 = v59;
        }

        else
        {
          v64 = v60;
        }

        if (v58 >= 0)
        {
          v65 = *(v55 + 23);
        }

        else
        {
          v65 = *(v55 + 8);
        }

        if (v58 >= 0)
        {
          v66 = v55;
        }

        else
        {
          v66 = v56;
        }

        if (v65 >= v63)
        {
          v67 = v63;
        }

        else
        {
          v67 = v65;
        }

        v68 = memcmp(v64, v66, v67);
        if (v68)
        {
          return v68 < 0;
        }

        else
        {
          return v63 < v65;
        }
      }
    }

    return 0;
  }

  if (v47)
  {
    v54 = 1;
  }

  else
  {
    v54 = v48 == 0;
  }

  return !v54;
}

pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType *sub_29A393E28(atomic_ullong *a1)
{
  result = sub_29A393E70();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType::~SdfPathTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType *sub_29A393E70()
{
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType::SdfPathTokens_StaticTokenType(v0);
  return v0;
}

void **sub_29A393EB4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {

    return sub_29A225520(a1, a2);
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

    v20 = a1;
    if (v10)
    {
      v11 = sub_29A00C9BC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v17 = v11;
    v18 = &v11[8 * v8];
    *&v19 = v18;
    *(&v19 + 1) = &v11[8 * v10];
    sub_29A393FE8(&v17, a2);
    v13 = *(a1 + 8);
    v14 = &v18[*a1 - v13];
    sub_29A1E291C(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_29A1E29E8(&v17);
  }
}

void sub_29A393FD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E29E8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A393FE8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (a2)
  {
    v4 = 8 * a2;
    v5 = result;
    v6 = &result[2 * a2];
    do
    {
      *v5++ = 0;
      v7 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(result);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v7 + 1);
      result = v5;
      v4 -= 8;
    }

    while (v4);
    result = v6;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29A394050(uint64_t a1)
{
  for (i = 0; i != 0x40000; i += 16)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + i));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + i + 4));
    *(a1 + i + 8) = 0;
  }

  return a1;
}

uint64_t sub_29A3940AC(uint64_t a1)
{
  v2 = 0x4000;
  do
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + v2 - 8));
    v3 = *(a1 + v2 - 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 -= 16;
  }

  while (v2);
  return a1;
}

void *sub_29A39410C(void *a1, unint64_t a2)
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

void sub_29A394168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A394184(void *a1, unint64_t a2)
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

void sub_29A394204()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C2E0, 0, "SdfPathExpression::Complement", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C2E0, 1, "SdfPathExpression::ImpliedUnion", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C2E0, 2, "SdfPathExpression::Union", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C2E0, 3, "SdfPathExpression::Intersection", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C2E0, 4, "SdfPathExpression::Difference", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C2E0, 5, "SdfPathExpression::ExpressionRef", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C2E0, 6, "SdfPathExpression::Pattern", 0);
}

uint64_t *sub_29A3942DC()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A20473B0, 0, 0, 0, 96, 0, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A20473C0, 0, 0, 0, 40, 0, 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference::Weaker(pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference *this)
{
  if ((atomic_load_explicit(&qword_2A173F9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F9F8))
  {
    v2 = operator new(0x20uLL);
    *v2 = 0;
    sub_29A225424(v2);
    sub_29A008E78(v2 + 1, "_");
    qword_2A173F9F0 = v2;
    __cxa_guard_release(&qword_2A173F9F8);
  }

  return qword_2A173F9F0;
}

void sub_29A3943C8(_Unwind_Exception *a1)
{
  v3 = sub_29A1DCEA8(v1);
  operator delete(v3);
  __cxa_guard_abort(&qword_2A173F9F8);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    sub_29A397C08(v20);
    v8 = "<input>";
    if (*(a3 + 23) < 0)
    {
      if (*(a3 + 8))
      {
        v8 = *a3;
      }
    }

    else if (*(a3 + 23))
    {
      v8 = a3;
    }

    v12 = v8;
    sub_29A3A28E8(__p, a2, &v12);
    v21[0] = *&v15[8];
    v21[1] = v16;
    if ((sub_29A398170(__p, v20) & 1) == 0)
    {
      sub_29A398034(__p);
    }

    if ((sub_29A229D1C(__p) & 1) == 0 && v9)
    {
      sub_29A3A27C4(__p);
    }

    sub_29A229D90(__p);
    sub_29A397BB0(v20, __p);
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v10;
      operator delete(v10);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *__p;
    *(a1 + 16) = v14;
    __p[1] = 0;
    v14 = 0;
    __p[0] = 0;
    sub_29A217560((a1 + 24));
    *(a1 + 24) = *v15;
    *(a1 + 40) = *&v15[16];
    memset(v15, 0, sizeof(v15));
    sub_29A21761C(v4);
    *(a1 + 48) = v16;
    *(a1 + 64) = v17;
    v17 = 0;
    v16 = 0uLL;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 72) = v18;
    *(a1 + 88) = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18) = 0;
    *&v21[0] = &v16;
    sub_29A218CE8(v21);
    *&v21[0] = v15;
    sub_29A21859C(v21);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = v20;
    sub_29A397FAC(__p);
  }

  return a1;
}

void sub_29A3945F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, const char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21)
{
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = (*(*v26 + 16))(v26);
    sub_29A008E78(&a12, v27);
    std::string::append(&a12, " -- ");
    v28 = v26[2];
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
    if (v29 != v30)
    {
      v31 = 1;
      do
      {
        if ((v31 & 1) == 0)
        {
          std::string::append(&a12, ", ");
        }

        sub_29A226CA0(v29);
        v32 = *(v24 - 73);
        if (v32 >= 0)
        {
          v33 = (v24 - 96);
        }

        else
        {
          v33 = *(v24 - 96);
        }

        if (v32 >= 0)
        {
          v34 = *(v24 - 73);
        }

        else
        {
          v34 = *(v24 - 88);
        }

        std::string::append(&a12, v33, v34);
        if (*(v24 - 73) < 0)
        {
          operator delete(*(v24 - 96));
        }

        v31 = 0;
        v29 += 48;
      }

      while (v29 != v30);
    }

    if (SHIBYTE(a10) < 0)
    {
      operator delete(__p);
    }

    __p = a12;
    a10 = a13;
    __cxa_end_catch();
    *&a12 = v24 - 120;
    sub_29A397FAC(&a12);
    a20 = 0uLL;
    a21 = 0;
    v35 = *v21;
    if (*v21)
    {
      *(v21 + 8) = v35;
      operator delete(v35);
      *v21 = 0;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
    }

    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    a13 = 0;
    a12 = 0uLL;
    sub_29A217560(v23);
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    a15 = 0;
    a16 = 0;
    a14 = 0;
    sub_29A21761C(v22);
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    a18 = 0;
    a19 = 0;
    a17 = 0;
    if (*(v21 + 95) < 0)
    {
      operator delete(*(v21 + 72));
    }

    *(v21 + 72) = a20;
    *(v21 + 88) = a21;
    HIBYTE(a21) = 0;
    LOBYTE(a20) = 0;
    *(v24 - 96) = &a17;
    sub_29A218CE8((v24 - 96));
    *(v24 - 96) = &a14;
    sub_29A21859C((v24 - 96));
    if (a12)
    {
      *(&a12 + 1) = a12;
      operator delete(a12);
    }

    std::string::operator=((v21 + 72), &__p);
    *&a12 = "sdf/pathExpression.cpp";
    *(&a12 + 1) = "SdfPathExpression";
    a13 = 64;
    a14 = "pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(const std::string &, const std::string &)";
    LOBYTE(a15) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&a12, 3, &__p);
    if (SHIBYTE(a10) < 0)
    {
      operator delete(__p);
    }

    JUMPOUT(0x29A3945BCLL);
  }

  *&a12 = v24 - 120;
  sub_29A397FAC(&a12);
  if (SHIBYTE(a10) < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 95) < 0)
  {
    operator delete(*(v21 + 72));
  }

  *&a12 = v22;
  sub_29A218CE8(&a12);
  *&a12 = v23;
  sub_29A21859C(&a12);
  v36 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::Everything(pxrInternal__aapl__pxrReserved__::SdfPathExpression *this)
{
  if ((atomic_load_explicit(&qword_2A173FA08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173FA08))
  {
    v2 = operator new(0x60uLL);
    sub_29A008E78(v5, "//");
    __p[0] = 0;
    __p[1] = 0;
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(v2, v5, __p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }

    qword_2A173FA00 = v2;
    __cxa_guard_release(&qword_2A173FA08);
  }

  return qword_2A173FA00;
}

void sub_29A3949A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  operator delete(v20);
  __cxa_guard_abort(&qword_2A173FA08);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::EveryDescendant(pxrInternal__aapl__pxrReserved__::SdfPathExpression *this)
{
  if ((atomic_load_explicit(&qword_2A173FA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173FA18))
  {
    v2 = operator new(0x60uLL);
    sub_29A008E78(v5, ".//");
    __p[0] = 0;
    __p[1] = 0;
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(v2, v5, __p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }

    qword_2A173FA10 = v2;
    __cxa_guard_release(&qword_2A173FA18);
  }

  return qword_2A173FA10;
}

void sub_29A394AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  operator delete(v20);
  __cxa_guard_abort(&qword_2A173FA18);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::Nothing(pxrInternal__aapl__pxrReserved__::SdfPathExpression *this)
{
  if ((atomic_load_explicit(&qword_2A173FA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173FA28))
  {
    v2 = operator new(0x60uLL);
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    qword_2A173FA20 = v2;
    __cxa_guard_release(&qword_2A173FA28);
  }

  return qword_2A173FA20;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::WeakerRef(pxrInternal__aapl__pxrReserved__::SdfPathExpression *this)
{
  if ((atomic_load_explicit(&qword_2A173FA38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173FA38))
  {
    v2 = operator new(0x60uLL);
    v3 = pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference::Weaker(v2);
    sub_29A394C1C(v3, v2);
    qword_2A173FA30 = v2;
    __cxa_guard_release(&qword_2A173FA38);
  }

  return qword_2A173FA30;
}

_DWORD *sub_29A394C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A1E21F4(&v5, a1);
  sub_29A1E2240(&v6, (a1 + 4));
  if (*(a1 + 31) < 0)
  {
    sub_29A008D14(__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *__p = *(a1 + 8);
    v8 = *(a1 + 24);
  }

  pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeAtom(&v5, a2);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeComplement(pxrInternal__aapl__pxrReserved__::SdfPathExpression *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::Everything(a1);
  std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
}

void pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeOp(pxrInternal__aapl__pxrReserved__::SdfPathExpression *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = a1;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  if (a1 == 4)
  {
    __p[0] = a2;
    __p[1] = (a2 + 24);
    v6 = a2 + 48;
    *&v7 = a2 + 72;
    v9 = pxrInternal__aapl__pxrReserved__::SdfPathExpression::Nothing(a1);
    v10 = v9 + 24;
    v11 = v9 + 48;
    v12 = v9 + 72;
    std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
  }

  v4 = pxrInternal__aapl__pxrReserved__::SdfPathExpression::Nothing(a1);
  __p[0] = a2;
  __p[1] = (a2 + 24);
  v6 = a2 + 48;
  *&v7 = a2 + 72;
  v9 = v4;
  v10 = v4 + 24;
  v11 = v4 + 48;
  v12 = v4 + 72;
  std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeAtom@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5 = 5;
  sub_29A00D250(a2, &v5);
  return sub_29A3955B4((a2 + 24), a1);
}

{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5 = 6;
  sub_29A00D250(a2, &v5);
  return sub_29A3956A8((a2 + 48), a1);
}

uint64_t sub_29A3955B4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29A3A39A8(a1, a2);
  }

  else
  {
    sub_29A1DDD84(a1[1], a2);
    sub_29A1DDDC0((v4 + 4), (a2 + 4));
    v5 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 8) = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v4 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A3956A8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A3A3AD8(a1, a2);
  }

  else
  {
    sub_29A3A3674(a1, a1[1], a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPathExpression::WalkWithOpStack(void *a1, uint64_t a2, void (*a3)(uint64_t, void **), uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v7 = a1[1];
  if (*a1 != v7)
  {
    v12 = a1[3];
    v13 = a1[6];
    v34 = *(v7 - 4);
    sub_29A3A3BE8(&__src, 1uLL, &v34);
    v14 = __src;
    v15 = v36;
    while (v14 != v15)
    {
      v16 = *(v15 - 2);
      if (v16 == 6)
      {
        a7(a6, v13);
        v17 = 0;
        v13 += 64;
      }

      else if (v16 == 5)
      {
        a5(a4, v12);
        v17 = 0;
        v12 += 32;
      }

      else
      {
        a3(a2, &__src);
        ++*(v15 - 1);
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }
      }

      if (*(v15 - 1) == v17)
      {
        v15 = v36 - 8;
      }

      else
      {
        v18 = v7 - 4;
        v19 = v36;
        if (v36 >= v37)
        {
          v20 = __src;
          v21 = v36 - __src;
          v22 = (v36 - __src) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_29A00C9A4();
          }

          v24 = v37 - __src;
          if ((v37 - __src) >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v23)
          {
            v25 = sub_29A00C9BC(&__src, v23);
            v23 = v26;
            v20 = __src;
            v21 = v36 - __src;
          }

          else
          {
            v25 = 0;
          }

          v27 = (v36 - __src) >> 3;
          v28 = &v25[8 * v22];
          v29 = &v25[8 * v23];
          *v28 = *(v7 - 8);
          v15 = v28 + 8;
          v30 = &v28[-8 * v27];
          memcpy(v30, v20, v21);
          v31 = __src;
          __src = v30;
          v36 = v15;
          v37 = v29;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v36 = *(v7 - 8);
          v15 = v19 + 8;
        }

        v7 = v18;
      }

      v36 = v15;
      v14 = __src;
    }

    if (v14)
    {
      v36 = v14;
      operator delete(v14);
    }
  }
}

void sub_29A3958E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPathExpression::Walk(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = v8;
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::WalkWithOpStack(a1, &v7, sub_29A396E4C, a4, a5, a6, a7);
}

__n128 pxrInternal__aapl__pxrReserved__::SdfPathExpression::ReplacePrefix@<Q0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 24);
  v9 = (a3 + 24);
  if (v8 != *(a3 + 32))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v8, a1, a2, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  if (v10 != v11)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v10, a1, a2, 1);
      pxrInternal__aapl__pxrReserved__::SdfPathPattern::SetPrefix(v10, &v15);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
      sub_29A1DE3A4(&v15);
      v10 = (v10 + 64);
    }

    while (v10 != v11);
    v10 = *(a3 + 48);
    v11 = *(a3 + 56);
  }

  *a4 = *a3;
  *(a4 + 16) = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a4 + 24) = *(a3 + 24);
  v12 = *(a3 + 40);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  *(a4 + 40) = v12;
  *(a4 + 48) = v10;
  v13 = *(a3 + 64);
  *(a4 + 56) = v11;
  *(a4 + 64) = v13;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  result = *(a3 + 72);
  *(a4 + 88) = *(a3 + 88);
  *(a4 + 72) = result;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

void sub_29A395AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPathExpression::IsAbsolute(pxrInternal__aapl__pxrReserved__::SdfPathExpression *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  while (v2 != v3)
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v2))
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(v2);
      if (!result)
      {
        return result;
      }
    }

    v2 = (v2 + 32);
  }

  v6 = *(this + 6);
  v5 = *(this + 7);
  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(v6);
    if (!result)
    {
      break;
    }

    v6 = (v6 + 64);
  }

  while (v6 != v5);
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeAbsolute@<Q0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 24);
  v7 = (a2 + 24);
  if (v6 != *(a2 + 32))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(v6, a1, &v13);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  if (v8 != v9)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(v8, a1, &v13);
      pxrInternal__aapl__pxrReserved__::SdfPathPattern::SetPrefix(v8, &v13);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
      sub_29A1DE3A4(&v13);
      v8 = (v8 + 64);
    }

    while (v8 != v9);
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a3 + 24) = *(a2 + 24);
  v10 = *(a2 + 40);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  *(a3 + 40) = v10;
  *(a3 + 48) = v8;
  v11 = *(a2 + 64);
  *(a3 + 56) = v9;
  *(a3 + 64) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  result = *(a2 + 72);
  *(a3 + 88) = *(a2 + 88);
  *(a3 + 72) = result;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

void sub_29A395CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathExpression::ContainsWeakerExpressionReference(pxrInternal__aapl__pxrReserved__::SdfPathExpression *this)
{
  for (i = *(this + 3); ; i += 32)
  {
    if (i == *(this + 4))
    {
      return 0;
    }

    v2 = (i + 8);
    v3 = *(i + 31);
    if (v3 < 0)
    {
      break;
    }

    if (v3 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    ;
  }

  if (*(i + 16) != 1)
  {
    goto LABEL_9;
  }

  v2 = *v2;
LABEL_8:
  if (*v2 != 95)
  {
    goto LABEL_9;
  }

  return 1;
}

double pxrInternal__aapl__pxrReserved__::SdfPathExpression::ResolveReferences@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[0] = a2;
  v14[1] = a3;
  if (*a1 == a1[1])
  {
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v8 = &v11;
    v9[0] = &v11;
    v9[1] = v14;
    v10 = &v11;
    v16[0] = &v10;
    v16[1] = sub_29A396E60;
    v15 = v16;
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::WalkWithOpStack(a1, &v15, sub_29A396E4C, v9, sub_29A3971D4, &v8, sub_29A397620);
    v5 = v12;
    *a4 = *(v12 - 96);
    *(a4 + 16) = *(v5 - 80);
    *(v5 - 96) = 0;
    *(v5 - 88) = 0;
    *(a4 + 24) = *(v5 - 72);
    *(a4 + 40) = *(v5 - 56);
    *(v5 - 80) = 0;
    *(v5 - 72) = 0;
    *(v5 - 64) = 0;
    *(v5 - 56) = 0;
    *(a4 + 48) = *(v5 - 48);
    *(a4 + 64) = *(v5 - 32);
    *(v5 - 48) = 0;
    *(v5 - 40) = 0;
    v6 = *(v5 - 24);
    *(a4 + 88) = *(v5 - 8);
    *(a4 + 72) = v6;
    *(v5 - 32) = 0;
    *(v5 - 24) = 0;
    *(v5 - 16) = 0;
    *(v5 - 8) = 0;
    v16[0] = &v11;
    sub_29A3A3C6C(v16);
  }

  return result;
}

void sub_29A395E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3A3C6C(va);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::SdfPathExpression::ComposeOver@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*a1 == v5)
  {
    *a3 = *a1;
    *(a3 + 8) = v5;
    *(a3 + 16) = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a3 + 24) = *(a1 + 24);
    *(a3 + 40) = *(a1 + 40);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a3 + 48) = *(a1 + 48);
    *(a3 + 64) = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    result = *(a1 + 72);
    *(a3 + 88) = *(a1 + 88);
    *(a3 + 72) = result;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    v7[1] = v3;
    v7[2] = v4;
    v7[0] = a2;
    result.n128_f64[0] = pxrInternal__aapl__pxrReserved__::SdfPathExpression::ResolveReferences(a1, v7, sub_29A3977DC, a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPathExpression::GetText(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::SdfPathExpression *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*this != *(this + 1))
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    v4[0] = &v8;
    v4[1] = &__p;
    v4[2] = a1;
    v2 = a1;
    v3 = a1;
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::WalkWithOpStack(this, v4, sub_29A397824, &v3, sub_29A3979AC, &v2, sub_29A397B2C);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_29A395F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::SdfPathExpression *this)
{
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::GetText(__p, this);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a1, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A396034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A396050(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A3960A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_29A217560(a1);
    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A15A71C(a1, v11);
    result = sub_29A218464(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 5)
  {
    sub_29A3961E0(&v17, a2, a2 + v13, v8);
    result = sub_29A218464(a1, a2 + v13, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29A3961E0(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 32;
      result = sub_29A2175CC(a1, v16);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
  return result;
}

uint64_t sub_29A3961E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A2258F0(a4, v5);
    sub_29A225948((a4 + 4), (v5 + 4));
    std::string::operator=((a4 + 8), (v5 + 8));
    a4 += 32;
    v5 += 32;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_29A39625C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 6)
  {
    sub_29A21761C(a1);
    if (a4 >> 58)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 5;
    if (v9 >> 5 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A1BF94C(a1, v11);
    result = sub_29A218624(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 6)
  {
    sub_29A3964A0(&v17, a2, a2 + v13, v8);
    result = sub_29A218624(a1, a2 + v13, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29A3964A0(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 64;
      result = sub_29A217688(a1, v16);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
  return result;
}

uint64_t sub_29A39639C(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_29A217894(&v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29A3963E8(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v4 = (a1 + 24);
  sub_29A2177C4(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

_DWORD *sub_29A396444(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_29A2176E4(&v3);
  v3 = (a1 + 8);
  sub_29A10C99C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A3964A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A2258F0(a4, v5);
    sub_29A225948((a4 + 4), (v5 + 4));
    if (a4 != v5)
    {
      sub_29A39655C(a4 + 8, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 5);
      sub_29A3966E0(a4 + 32, *(v5 + 32), *(v5 + 40), 0x8E38E38E38E38E39 * ((*(v5 + 40) - *(v5 + 32)) >> 3));
    }

    *(a4 + 56) = *(v5 + 56);
    a4 += 64;
    v5 += 64;
  }

  while (v5 != v6);
  return v6;
}

void sub_29A39655C(uint64_t a1, std::string *__str, __int128 *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_29A1DE364(a1);
    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A15A71C(a1, v11);
    v12 = sub_29A2186D0(a1, v6, a3, *(a1 + 8));
LABEL_14:
    *(a1 + 8) = v12;
    return;
  }

  v13 = *(a1 + 8);
  if (a4 > (v13 - v8) >> 5)
  {
    v14 = (v13 + __str - v8);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v15 = v6[1].__r_.__value_.__s.__data_[4];
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        *(v8 + 28) = v15;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != v14);
      v13 = *(a1 + 8);
    }

    v12 = sub_29A2186D0(a1, v14, a3, v13);
    goto LABEL_14;
  }

  if (__str != a3)
  {
    do
    {
      std::string::operator=(v8, v6);
      v16 = v6[1].__r_.__value_.__s.__data_[4];
      *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
      *(v8 + 28) = v16;
      v6 = (v6 + 32);
      v8 += 32;
    }

    while (v6 != a3);
    v13 = *(a1 + 8);
  }

  while (v13 != v8)
  {
    v17 = *(v13 - 9);
    v13 -= 4;
    if (v17 < 0)
    {
      operator delete(*v13);
    }
  }

  *(a1 + 8) = v8;
}

void sub_29A3966E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A39688C(a1);
    if (a4 > 0x38E38E38E38E38ELL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A10C514(a1, v10);
    v11 = sub_29A2187DC(a1, v6, a3, *(a1 + 8));
LABEL_15:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (0x8E38E38E38E38E39 * ((v12 - v8) >> 3) < a4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29A3968F8(v8, v15);
        v15 += 72;
        v8 += 3;
        v14 -= 72;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    v11 = sub_29A2187DC(a1, v6 + v13, a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      sub_29A3968F8(v8, v6);
      v6 += 72;
      v8 += 3;
    }

    while (v6 != a3);
    v12 = *(a1 + 8);
  }

  while (v12 != v8)
  {
    v12 -= 3;
    sub_29A21776C(a1, v12);
  }

  *(a1 + 8) = v8;
}

void sub_29A39688C(void **a1)
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
        v3 -= 72;
        sub_29A21776C(a1, v3);
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

std::string *sub_29A3968F8(std::string *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29A36CF34(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    sub_29A396970(&a1[1], *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  std::string::operator=(a1 + 2, (a2 + 48));
  return a1;
}

void sub_29A396970(uint64_t a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A396AF0(a1);
    if (a4 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    sub_29A044EF0(a1, v10);
    v11 = sub_29A218960(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v12 >> 3) < a4)
  {
    sub_29A396B5C(&v16, a2, (a2 + v12), v8);
    v11 = sub_29A218960(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29A396B5C(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 56;
      sub_29A21784C(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29A396AF0(void **a1)
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
        v3 -= 56;
        sub_29A21784C(a1, v3);
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

std::string **sub_29A396B5C(uint64_t a1, std::string **a2, std::string **a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 5;
  do
  {
    v7 = v6 - 5;
    *a4 = *(v6 - 10);
    std::string::operator=((a4 + 8), (v6 - 4));
    if (a4 != v6 - 5)
    {
      sub_29A396C00(a4 + 32, *(v6 - 1), *v6, 0xCCCCCCCCCCCCCCCDLL * ((*v6 - *(v6 - 1)) >> 3));
    }

    a4 += 56;
    v6 += 7;
  }

  while (v7 + 7 != v5);
  return v5;
}

void sub_29A396C00(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A396D70(a1);
    if (a4 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    sub_29A10E7C8(a1, v10);
    v11 = sub_29A218A0C(a1, __str, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 3) < a4)
  {
    sub_29A396DDC(&v16, __str, (__str + v12), v8);
    v11 = sub_29A218A0C(a1, __str + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29A396DDC(&v17, __str, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 40;
      sub_29A21791C(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29A396D70(void **a1)
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
        v3 -= 40;
        sub_29A21791C(a1, v3);
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

std::string *sub_29A396DDC(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    sub_29A1854E8(this[1].__r_.__value_.__r.__words, v5[1].__r_.__value_.__r.__words);
    this = (this + 40);
    v5 = (v5 + 40);
  }

  while (v5 != v6);
  return v6;
}

uint64_t *sub_29A396E60(uint64_t *result, pxrInternal__aapl__pxrReserved__::SdfPathExpression *a2, int a3)
{
  v3 = result;
  if (a2)
  {
    if (a3 == 2)
    {
      v5 = *(*result + 8);
      *v10 = *(v5 - 96);
      v11 = *(v5 - 80);
      *(v5 - 96) = 0;
      *(v5 - 88) = 0;
      *(v5 - 80) = 0;
      v12 = *(v5 - 72);
      v13 = *(v5 - 56);
      *(v5 - 72) = 0;
      *(v5 - 64) = 0;
      *(v5 - 56) = 0;
      v14 = *(v5 - 48);
      v15 = *(v5 - 32);
      *(v5 - 48) = 0;
      *(v5 - 40) = 0;
      *(v5 - 32) = 0;
      v6 = *(v5 - 24);
      v17 = *(v5 - 8);
      v16 = v6;
      *(v5 - 16) = 0;
      *(v5 - 8) = 0;
      *(v5 - 24) = 0;
      v7 = *result;
      v8 = *(*result + 8) - 96;
      sub_29A39716C(*result, v8);
      *(v7 + 8) = v8;
      pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeOp(a2, *(*v3 + 8) - 96, __p);
    }
  }

  else if (a3 == 1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeComplement((*(*result + 8) - 96), v10);
  }

  return result;
}

void sub_29A397158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

void sub_29A39716C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  v4 = (a2 + 48);
  sub_29A218CE8(&v4);
  v4 = (a2 + 24);
  sub_29A21859C(&v4);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

void sub_29A3971D4(uint64_t a1)
{
  v1 = *a1;
  (*(*(a1 + 8) + 8))(v2, **(a1 + 8));
  sub_29A39726C(v1, v2);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v7 = &v4;
  sub_29A218CE8(&v7);
  v7 = &v3;
  sub_29A21859C(&v7);
  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }
}

void sub_29A397258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39726C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A3972B8(a1, a2);
  }

  else
  {
    sub_29A3973E8(a1, a1[1], a2);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A3972B8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A0CFEE8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[96 * v2];
  *(&v16 + 1) = &v7[96 * v6];
  sub_29A3973E8(a1, v15, a2);
  *&v16 = v15 + 96;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A397464(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A3975A4(&v14);
  return v13;
}

void sub_29A3973D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3975A4(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A3973E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  result = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 72) = result;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_29A397464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A3973E8(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A39716C(a1, v5);
      v5 += 96;
    }
  }

  return sub_29A397518(v9);
}

uint64_t sub_29A397518(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A397550(a1);
  }

  return a1;
}

void sub_29A397550(uint64_t *a1)
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
      v3 -= 96;
      sub_29A39716C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A3975A4(void **a1)
{
  sub_29A3975D8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A3975D8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    sub_29A39716C(v4, i - 96);
  }
}

void sub_29A3976A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

void sub_29A3976B8(_DWORD *a1)
{
  sub_29A1E21F4(&v2, a1);
  sub_29A1E2240(&v3, a1 + 1);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>();
}

void sub_29A3977A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A396444(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3977DC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 31);
  if (v3 < 0)
  {
    if (*(a1 + 16) != 1)
    {
      return sub_29A394C1C(a1, a2);
    }

    v2 = *v2;
  }

  else if (v3 != 1)
  {
    return sub_29A394C1C(a1, a2);
  }

  if (*v2 == 95)
  {
    sub_29A218364(a2);
  }

  return sub_29A394C1C(a1, a2);
}

void sub_29A397824(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v5 = *(v3 - 8);
  v4 = *(v3 - 4);
  v6 = v3 - *a2;
  if (v6 <= 8)
  {
    v9 = 0;
    v10 = v4 == 0;
  }

  else
  {
    v7 = *a2 + v6;
    v8 = *(v7 - 16);
    if (v8 >= v5)
    {
      v14 = *(v7 - 12);
      v9 = v8 == v5 && v14 == 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = v4 == 0;
    if (v9 && !v4)
    {
      std::string::push_back(*(a1 + 16), 40);
      if (v5)
      {
        return;
      }

      v9 = 1;
LABEL_27:
      std::string::append(*(a1 + 16), "~");
      if (!v9 || v4 != 1)
      {
        return;
      }

      goto LABEL_29;
    }
  }

  if (v5)
  {
    if (v4 == 1)
    {
      v11 = *(a1 + 16);
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          v12 = " & ";
          goto LABEL_43;
        }

        if (v5 == 4)
        {
          v12 = " - ";
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 == 1)
        {
          v12 = " ";
          goto LABEL_43;
        }

        if (v5 == 2)
        {
          v12 = " + ";
LABEL_43:

          std::string::append(v11, v12);
          return;
        }
      }

      v12 = "<unknown>";
      goto LABEL_43;
    }

    if (v4 != 2 || !v9)
    {
      return;
    }

LABEL_29:
    v16 = *(a1 + 16);

    std::string::push_back(v16, 41);
    return;
  }

  if (v10)
  {
    goto LABEL_27;
  }

  if (v4 == 1 && v9)
  {
    goto LABEL_29;
  }
}

void sub_29A3979AC(std::string **a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(this, &v12);
  v4 = std::string::insert(&v12, 0, "%");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v14 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v14 >= 0)
  {
    v7 = HIBYTE(v14);
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(*a1, v6, v7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    if (*(this + 2) != 1)
    {
      goto LABEL_18;
    }

    v9 = *(this + 1);
  }

  else
  {
    v9 = this + 8;
    if (v8 != 1)
    {
      goto LABEL_18;
    }
  }

  if (*v9 == 95)
  {
    sub_29A008E78(__p, "_");
    goto LABEL_19;
  }

LABEL_18:
  std::operator+<char>();
LABEL_19:
  if (v14 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v14 >= 0)
  {
    v11 = HIBYTE(v14);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(*a1, v10, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A397AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A397B2C(std::string **a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::GetText(a2, &__p);
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

  std::string::append(*a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A397B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A397BB0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A3A1A74((a1[1] - 48), a2);
  v4 = *a1;
  for (i = a1[1]; i != v4; sub_29A397E5C(a1, i))
  {
    i -= 48;
  }

  a1[1] = v4;
}

uint64_t *sub_29A397C08(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[1] = sub_29A397C5C(a1);
  return a1;
}

void sub_29A397C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A397FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A397C5C(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  v16 = a1;
  if (v4)
  {
    v5 = sub_29A08E058(a1, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = &v5[48 * v1];
  v13 = v5;
  v14 = v6;
  *(&v15 + 1) = &v5[48 * v4];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *&v15 = v6 + 48;
  v7 = a1[1];
  v8 = &v6[*a1 - v7];
  sub_29A397D7C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_29A397F30(&v13);
  return v12;
}

void sub_29A397D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A397F30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A397D7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A397E5C(a1, v5);
      v5 += 48;
    }
  }

  return sub_29A397EA4(v9);
}

void sub_29A397E5C(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  sub_29A3A3C6C(&v4);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

uint64_t sub_29A397EA4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A397EDC(a1);
  }

  return a1;
}

void sub_29A397EDC(uint64_t *a1)
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
      v3 -= 48;
      sub_29A397E5C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A397F30(void **a1)
{
  sub_29A397F64(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A397F64(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29A397E5C(v4, i - 48);
  }
}

void sub_29A397FAC(void ***a1)
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
        v4 -= 48;
        sub_29A397E5C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A398034(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x80uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CE0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::PathExpr, PXR_INTERNAL_NS_pegtl::blank>");
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

void sub_29A398110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A398170(uint64_t a1, uint64_t *a2)
{
    ;
  }

  sub_29A398588(a1, a2);
  if ((sub_29A398954(a1, a2) & 1) == 0 && (sub_29A398D60(a1, a2) & 1) == 0)
  {
    v21 = *(a1 + 32);
    if (v21 == *(a1 + 64) || *v21 != 40)
    {
      return 0;
    }

    v4 = *(a1 + 40) + 1;
    *(a1 + 32) = v21 + 1;
    *(a1 + 40) = v4;
    ++*(a1 + 56);
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      v6 = sub_29A397C5C(a2);
    }

    else
    {
      v5[1] = 0u;
      v5[2] = 0u;
      *v5 = 0u;
      v6 = (v5 + 3);
    }

    a2[1] = v6;
    if ((sub_29A398170(a1, a2) & 1) == 0)
    {
      sub_29A398034(a1);
    }

    if ((sub_29A3A1930(a1, a2) & 1) == 0)
    {
      sub_29A3A1804(a1);
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v22 = v19;
  v26 = v20;
  if (sub_29A3A1B44(a1))
  {
    while (1)
    {
      v8 = sub_29A3A1CB4(a1);
      *(a1 + 32) = v22;
      *(a1 + 48) = v26;
      if (!v8)
      {
        break;
      }

      v23 = *(a1 + 32);
      v27 = *(a1 + 48);
        ;
      }

      v9 = *(a1 + 32);
      if (v9 == *(a1 + 64) || *v9 != 43)
      {
        *(a1 + 32) = v23;
        *(a1 + 48) = v27;
        v24 = *(a1 + 32);
        v28 = *(a1 + 48);
          ;
        }

        v11 = *(a1 + 32);
        if (v11 == *(a1 + 64) || *v11 != 38)
        {
          *(a1 + 32) = v24;
          *(a1 + 48) = v28;
          v25 = *(a1 + 32);
          v29 = *(a1 + 48);
            ;
          }

          v13 = *(a1 + 32);
          if (v13 == *(a1 + 64) || *v13 != 45)
          {
            *(a1 + 32) = v25;
            *(a1 + 48) = v29;
            v22 = *(a1 + 32);
            v26 = *(a1 + 48);
            if (!sub_29A2262B0(a1))
            {
              goto LABEL_48;
            }

              ;
            }

            sub_29A398644(a2[1] - 48, 1);
          }

          else
          {
            v14 = *(a1 + 40) + 1;
            *(a1 + 32) = v13 + 1;
            *(a1 + 40) = v14;
            ++*(a1 + 56);
            sub_29A398644(a2[1] - 48, 4);
              ;
            }
          }
        }

        else
        {
          v12 = *(a1 + 40) + 1;
          *(a1 + 32) = v11 + 1;
          *(a1 + 40) = v12;
          ++*(a1 + 56);
          sub_29A398644(a2[1] - 48, 3);
            ;
          }
        }
      }

      else
      {
        v10 = *(a1 + 40) + 1;
        *(a1 + 32) = v9 + 1;
        *(a1 + 40) = v10;
        ++*(a1 + 56);
        sub_29A398644(a2[1] - 48, 2);
          ;
        }
      }

      sub_29A398588(a1, a2);
      if ((sub_29A398954(a1, a2) & 1) == 0 && (sub_29A398D60(a1, a2) & 1) == 0)
      {
        v15 = *(a1 + 32);
        if (v15 == *(a1 + 64) || *v15 != 40)
        {
          break;
        }

        v16 = *(a1 + 40) + 1;
        *(a1 + 32) = v15 + 1;
        *(a1 + 40) = v16;
        ++*(a1 + 56);
        v17 = a2[1];
        if (v17 >= a2[2])
        {
          v18 = sub_29A397C5C(a2);
        }

        else
        {
          v17[1] = 0u;
          v17[2] = 0u;
          v18 = (v17 + 3);
          *v17 = 0u;
        }

        a2[1] = v18;
        if ((sub_29A398170(a1, a2) & 1) == 0)
        {
          sub_29A398034(a1);
        }

        if ((sub_29A3A1930(a1, a2) & 1) == 0)
        {
          sub_29A3A1804(a1);
        }
      }

      v19 = *(a1 + 32);
      v20 = *(a1 + 48);
      v22 = v19;
      v26 = v20;
      if ((sub_29A3A1B44(a1) & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    *(a1 + 32) = v22;
    *(a1 + 48) = v26;
  }

  *(a1 + 32) = v19;
  *(a1 + 48) = v20;
    ;
  }

  return 1;
}

void sub_29A39854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  *v14 = a13;
  v14[1] = a14;
  _Unwind_Resume(a1);
}

void sub_29A398558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  *(v12 + 32) = a11;
  *(v12 + 48) = a12;
  *(v12 + 32) = a9;
  *(v12 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A398588(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
    ;
  }

  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 126)
  {
    result = v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  else
  {
    v5 = *(a1 + 40) + 1;
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v5;
    ++*(a1 + 56);
    sub_29A398644(*(a2 + 8) - 48, 0);
      ;
    }
  }

  return result;
}

void sub_29A398630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  *(v12 + 32) = a11;
  *(v12 + 48) = a12;
  *(v12 + 32) = a9;
  *(v12 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A398644(uint64_t a1, int a2)
{
  v3 = a2;
  v2 = *(a1 + 8);
  if (*a1 != v2 && *(v2 - 4) <= a2)
  {
    sub_29A3986AC(a1);
  }

  sub_29A00D250(a1, &v3);
}

void sub_29A3986AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 - 4);
  *(a1 + 8) = v2 - 4;
  v4 = *(a1 + 32);
  v18 = *(v4 - 96);
  v19 = *(v4 - 80);
  *(v4 - 96) = 0;
  *(v4 - 88) = 0;
  *(v4 - 80) = 0;
  v20 = *(v4 - 72);
  v21 = *(v4 - 56);
  *(v4 - 72) = 0;
  *(v4 - 64) = 0;
  *(v4 - 56) = 0;
  v22 = *(v4 - 48);
  v23 = *(v4 - 32);
  *(v4 - 48) = 0;
  *(v4 - 40) = 0;
  *(v4 - 32) = 0;
  v5 = *(v4 - 24);
  v25 = *(v4 - 8);
  v24 = v5;
  *(v4 - 16) = 0;
  *(v4 - 8) = 0;
  *(v4 - 24) = 0;
  v6 = *(a1 + 32);
  sub_29A39716C(a1 + 24, v6 - 96);
  *(a1 + 32) = v6 - 96;
  if (v3)
  {
    *v10 = *(v6 - 192);
    v11 = *(v6 - 176);
    *(v6 - 192) = 0;
    *(v6 - 184) = 0;
    *(v6 - 176) = 0;
    v12 = *(v6 - 168);
    v13 = *(v6 - 152);
    *(v6 - 168) = 0;
    *(v6 - 160) = 0;
    *(v6 - 152) = 0;
    v14 = *(v6 - 144);
    v15 = *(v6 - 128);
    *(v6 - 144) = 0;
    *(v6 - 136) = 0;
    *(v6 - 128) = 0;
    v7 = *(v6 - 120);
    v17 = *(v6 - 104);
    v16 = v7;
    *(v6 - 112) = 0;
    *(v6 - 104) = 0;
    *(v6 - 120) = 0;
    v8 = *(a1 + 32) - 96;
    sub_29A39716C(a1 + 24, v8);
    *(a1 + 32) = v8;
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeOp(v3, v10, &v9);
  }

  pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeComplement(&v18, v10);
}

void sub_29A39891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A2174F4(va);
  sub_29A2174F4(v13 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_29A398954(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  *__dst = *(a1 + 32);
  v35 = v4;
  if (sub_29A398E00(a1))
  {
    v5 = *(a1 + 48);
    *__p = *(a1 + 32);
    v37 = v5;
    v6 = sub_29A398E60(a1);
    v7 = v37;
    *(a1 + 32) = *__p;
    *(a1 + 48) = v7;
    if ((v6 & 1) == 0)
    {
      *&v30 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v30);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v30 + 1);
      sub_29A008E78(__p, "_");
      sub_29A398ECC(*(a2 + 8) - 48, &v30, __p);
      if (SBYTE7(v37) < 0)
      {
        operator delete(__p[0]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30 + 1);
      sub_29A1DE3A4(&v30);
      return 1;
    }
  }

  v8 = v35;
  *(a1 + 32) = *__dst;
  *(a1 + 48) = v8;
  v9 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v9;
  v10 = *(a1 + 32);
  v11 = *(a1 + 64);
  if (v10 == v11 || *v10 != 37)
  {
    goto LABEL_23;
  }

  v12 = v10 + 1;
  v13 = *(a1 + 40);
  *(a1 + 32) = v10 + 1;
  *(a1 + 40) = v13 + 1;
  v14 = *(a1 + 56);
  *(a1 + 56) = v14 + 1;
  v32 = *(a1 + 40);
  v33 = v14 + 1;
  v15 = *(a1 + 48);
  *__p = *(a1 + 32);
  v37 = v15;
  if (v10 + 1 == v11 || *v12 != 47 || (*(a1 + 32) = v10 + 2, *(a1 + 40) = v13 + 2, *(a1 + 56) = v14 + 2, !sub_29A398FF4(a1)))
  {
    v16 = v37;
    *(a1 + 32) = *__p;
    *(a1 + 48) = v16;
    v17 = *(a1 + 48);
    *__dst = *(a1 + 32);
    v35 = v17;
    if (sub_29A2297B8(a1))
    {
      v18 = *(a1 + 48);
      *__p = *(a1 + 32);
      v37 = v18;
      v19 = *(a1 + 32);
      if (v19 == *(a1 + 64))
      {
LABEL_19:
        v24 = *(a1 + 32);
        if (v24 == *(a1 + 64) || *v24 != 47)
        {
          if (!sub_29A3990CC(a1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v25 = *(a1 + 40) + 1;
          *(a1 + 32) = v24 + 1;
          *(a1 + 40) = v25;
          ++*(a1 + 56);
          if ((sub_29A398FF4(a1) & 1) == 0)
          {
LABEL_22:
            *(a1 + 32) = v12;
            *(a1 + 40) = v32;
            *(a1 + 56) = v33;
LABEL_23:
            result = 0;
            v27 = v31;
            *(a1 + 32) = v30;
            *(a1 + 48) = v27;
            return result;
          }
        }

        goto LABEL_25;
      }

      do
      {
        if (*v19 != 47)
        {
          break;
        }

        v20 = *(a1 + 40) + 1;
        *(a1 + 32) = v19 + 1;
        *(a1 + 40) = v20;
        ++*(a1 + 56);
        if (!sub_29A2297B8(a1))
        {
          break;
        }

        v21 = *(a1 + 48);
        *__p = *(a1 + 32);
        v37 = v21;
        v19 = *(a1 + 32);
      }

      while (v19 != *(a1 + 64));
      v22 = *__p;
      v23 = v37;
    }

    else
    {
      v22 = *__dst;
      v23 = v35;
    }

    *(a1 + 32) = v22;
    *(a1 + 48) = v23;
    goto LABEL_19;
  }

LABEL_25:
  sub_29A02887C(__dst, v12, *(a1 + 32) - v12);
  pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(__dst, 58, __p);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__dst[0]);
  }

  v28 = BYTE7(v37);
  if (SBYTE7(v37) < 0)
  {
    v28 = __p[1];
  }

  if (v28)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v40, __p);
  }

  else
  {
    v40 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v40);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v40 + 1);
  }

  v29 = sub_29A02887C(&v38, v12, *(a1 + 32) - v12);
  pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(v29, 58, __dst);
  sub_29A398ECC(*(a2 + 8) - 48, &v40, __dst);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
  sub_29A1DE3A4(&v40);
  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_29A398CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  *(v26 + 32) = a9;
  *(v26 + 48) = a10;
  _Unwind_Resume(exception_object);
}

uint64_t sub_29A398D60(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(v6);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v4 = sub_29A399150(a1, v6);
  if (v4)
  {
    sub_29A3A16D0(*(a2 + 8) - 48, v6);
  }

  sub_29A3A1768(v6);
  return v4;
}

uint64_t sub_29A398E00(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 24357)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

uint64_t sub_29A398E60(void *a1)
{
  if (sub_29A228CB4(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 58)
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    return 1;
  }

  return 0;
}

_DWORD *sub_29A398ECC(uint64_t a1, int *a2, uint64_t a3)
{
  v7 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a2);
  v8 = a2[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a2 + 1);
  *v9 = *a3;
  v10 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeAtom(&v7, v11);
  sub_29A39726C((a1 + 24), v11);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v16 = &v13;
  sub_29A218CE8(&v16);
  v16 = &v12;
  sub_29A21859C(&v16);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A398FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A2174F4(va1);
  sub_29A396050(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A398FF4(uint64_t a1)
{
  result = sub_29A2291D4(a1);
  if (result)
  {
      ;
    }

    v4 = (a1 + 32);
    v3 = *(a1 + 32);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    for (i = *(a1 + 64); v3 != i; i = *(a1 + 64))
    {
      if (*v3 != 47)
      {
        break;
      }

      v6 = *(a1 + 40) + 1;
      *(a1 + 32) = v3 + 1;
      *(a1 + 40) = v6;
      ++*(a1 + 56);
      if (!sub_29A2291D4(a1))
      {
        break;
      }

        ;
      }

      v7 = *v4;
      v8 = *(a1 + 48);
      v3 = *(a1 + 32);
    }

    *v4 = v7;
    *(a1 + 48) = v8;

    return sub_29A3990CC(a1);
  }

  return result;
}

uint64_t sub_29A3990CC(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  if (*v1 != 58)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  result = sub_29A2291D4(a1);
  if (result)
  {
      ;
    }

    return 1;
  }

  return result;
}

uint64_t sub_29A399150(void *a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  if (sub_29A3991D4(a1, a2))
  {
    sub_29A3992D4(a1, a2);
    return 1;
  }

  if (sub_29A399570(a1, a2))
  {
    return 1;
  }

  sub_29A3997BC(a1, a2);
  if (v4)
  {
    return 1;
  }

  return sub_29A3A155C(a1, a2);
}

uint64_t sub_29A3991D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  if (v5 == *(a1 + 64) || *v5 != 47)
  {
    return 0;
  }

  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  sub_29A39924C(a2, v3);
  return 1;
}

void sub_29A399240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39924C(uint64_t a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(&v7, a2 + 1);
  v4 = pxrInternal__aapl__pxrReserved__::SdfPathPattern::SetPrefix(a1, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v4;
}

void sub_29A3992C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3992D4(void *a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  if ((sub_29A399448(a1, a2) & 1) == 0)
  {
    sub_29A39931C(a1);
  }

  sub_29A3997BC(a1, a2);
  return 1;
}

void sub_29A39931C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48AAA0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPathPatternParser::AbsPathPattern");
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

void sub_29A3993E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A399448(void *a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  if (sub_29A3994B4(a1, a2))
  {
    return 1;
  }

  v3 = a1[4];
  if (v3 != a1[8] && *v3 == 47)
  {
    v4 = a1[5] + 1;
    a1[4] = v3 + 1;
    a1[5] = v4;
    ++a1[7];
    return 1;
  }

  return 0;
}

uint64_t sub_29A3994B4(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22E0F4(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A399534(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A399528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A399534(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  appended = pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendStretchIfPossible(a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(appended);
  if ((result & 1) == 0)
  {
    return sub_29B29CC48(v4);
  }

  return result;
}

uint64_t sub_29A399570(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A3995F0(a1, a2);
  if (v4)
  {
    if (sub_29A399448(a1, a2))
    {
      sub_29A3997BC(a1, a2);
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3995E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3995F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A39963C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A39972C(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A39963C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2297B8(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A3996BC(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3996B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A3996BC(uint64_t a1, uint64_t a2)
{
  sub_29A008E78(__p, "..");
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendChild(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A399710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A39972C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v5.n128_u64[0] == *(a1 + 64) || *v5.n128_u64[0] != 47 || (v3 = *(a1 + 40) + 1, *(a1 + 32) = v5.n128_u64[0] + 1, *(a1 + 40) = v3, ++*(a1 + 56), (sub_29A39963C(a1, a2) & 1) == 0))
  {
    result = v5;
    *v2 = v5;
    v2[1] = v6;
  }

  return result;
}

void sub_29A3997B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A3997BC(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A399828(a1, a2) || (sub_29A3A0F5C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A39981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A399828(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v4 = sub_29A399874(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A3A0A48(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A399874(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A3998F4(a1, a2);
  if (v3)
  {
    sub_29A3A09A0();
  }

  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return v3;
}

void sub_29A3998E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3998F4(void *a1, uint64_t a2)
{
  if (sub_29A399954(a1, a2))
  {
    sub_29A399C48(a1, a2);
    return 1;
  }

  else
  {

    return sub_29A3A08F0(a1, a2);
  }
}

uint64_t sub_29A399954(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A3999E0(a1);
  if (v4)
  {
    sub_29A399A80(a1);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A399BE8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3999D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3999E0(void *a1)
{
  if ((sub_29A228CB4(a1) & 1) != 0 || (result = sub_29A399A30(a1), result))
  {
    do
    {
        ;
      }
    }

    while ((sub_29A399A30(a1) & 1) != 0);
    return 1;
  }

  return result;
}

uint64_t sub_29A399A30(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 63 && v2 != 42)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  return 1;
}

__n128 sub_29A399A80(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] == a1[4].n128_u64[0] || *v4.n128_u64[0] != 91 || (v2 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v4.n128_u64[0] + 1, a1[2].n128_u64[1] = v2, ++a1[3].n128_u64[1], (sub_29A399B10(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A399B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A399B10(void *a1)
{
  v2 = sub_29A399B5C(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A399B5C(void *a1)
{
  if (sub_29A228CB4(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8])
  {
    v3 = *v2 - 33;
    v4 = v3 > 0x3C;
    v5 = (1 << v3) & 0x1400000040001201;
    if (!v4 && v5 != 0)
    {
      v7 = a1[5] + 1;
      a1[4] = v2 + 1;
      a1[5] = v7;
      ++a1[7];
      return 1;
    }
  }

  return 0;
}

double sub_29A399BE8(uint64_t a1, uint64_t a2)
{
  sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  result = *&__dst;
  *(a2 + 64) = __dst;
  *(a2 + 80) = v5;
  return result;
}

uint64_t sub_29A399C48(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 123)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  sub_29A399CA8(a1, a2);
  return 1;
}

__n128 sub_29A399CA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if ((sub_29A399E54(a1, a2) & 1) == 0)
  {
    sub_29A399D18(a1);
  }

  if ((sub_29A3A077C(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A399D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A399D18(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x88uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48AAB0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::PredExpr, PXR_INTERNAL_NS_pegtl::blank>");
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

void sub_29A399DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A399E54(void *a1, uint64_t a2)
{
    ;
  }

  v4 = sub_29A399EA8(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A399EA8(void *a1, uint64_t a2)
{
  sub_29A3A0668(&v6);
  v4 = sub_29A39A040(a1, &v6);
  if (v4)
  {
    sub_29A399FCC(a1, &v6, a2);
  }

  v12 = &v11;
  sub_29A217894(&v12);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  v12 = &v6;
  sub_29A3A06F4(&v12);
  return v4;
}

void sub_29A399F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A399F64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A399F64(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_29A217894(&v3);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_29A3A06F4(&v3);
  return a1;
}

void sub_29A399FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A3A04FC(a2, v4);
  sub_29A3A05A0(a3 + 88, v4);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  v8 = &v5;
  sub_29A2177C4(&v8);
  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }
}

uint64_t sub_29A39A040(void *a1, std::string *a2)
{
  sub_29A39A098(a1, a2);
  v4 = sub_29A39A958(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A39E974(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A39A098(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
    ;
  }

  v4 = sub_29A39A114(a1, a2);
  if (v4)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A39A108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39A114(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A39A160(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A39A8E0(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A39A160(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A39A1D4(a1);
  v5 = v4;
  if (v4)
  {
    sub_29A39A28C((*(a2 + 8) - 48), 1);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A39A1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39A1D4(uint64_t a1)
{
  if (sub_29A39A220(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A39A220(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28526 || *(v1 + 2) != 116)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

void sub_29A39A28C(const void **a1, int a2)
{
  v7 = a2;
  for (i = a1[1]; *a1 != i; i = a1[1])
  {
    v5 = *(i - 1);
    if (v5 >= a2 && (v5 == 1 || v5 != a2))
    {
      break;
    }

    sub_29A39A300(a1);
  }

  sub_29A00D250(a1, &v7);
}

void sub_29A39A300(void *a1)
{
  v2 = a1[1];
  v3 = *(v2 - 4);
  a1[1] = v2 - 4;
  v4 = a1[4];
  v19 = *(v4 - 72);
  v20 = *(v4 - 56);
  *(v4 - 72) = 0;
  *(v4 - 64) = 0;
  *(v4 - 56) = 0;
  v21 = *(v4 - 48);
  v22 = *(v4 - 32);
  *(v4 - 48) = 0;
  *(v4 - 40) = 0;
  *(v4 - 32) = 0;
  v5 = *(v4 - 24);
  v24 = *(v4 - 8);
  v23 = v5;
  *(v4 - 16) = 0;
  *(v4 - 8) = 0;
  *(v4 - 24) = 0;
  v6 = a1[4];
  sub_29A21776C((a1 + 3), v6 - 72);
  a1[4] = v6 - 72;
  if (v3 == 1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::MakeNot(&v19, v13);
    sub_29A39A544(a1 + 3, v13);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v9[0] = &v15;
  }

  else
  {
    *v13 = *(v6 - 144);
    v14 = *(v6 - 128);
    *(v6 - 144) = 0;
    *(v6 - 136) = 0;
    *(v6 - 128) = 0;
    v15 = *(v6 - 120);
    v16 = *(v6 - 104);
    *(v6 - 120) = 0;
    *(v6 - 112) = 0;
    *(v6 - 104) = 0;
    v7 = *(v6 - 96);
    v18 = *(v6 - 80);
    *__p = v7;
    *(v6 - 88) = 0;
    *(v6 - 80) = 0;
    *(v6 - 96) = 0;
    v8 = a1[4] - 72;
    sub_29A21776C((a1 + 3), v8);
    a1[4] = v8;
    pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::MakeOp(v3, v13, &v19, v9);
    sub_29A39A544(a1 + 3, v9);
    if (v12 < 0)
    {
      operator delete(v11);
    }

    v25 = &v10;
    sub_29A2177C4(&v25);
    if (v9[0])
    {
      v9[1] = v9[0];
      operator delete(v9[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v9[0] = &v15;
  }

  sub_29A2177C4(v9);
  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  v13[0] = &v21;
  sub_29A2177C4(v13);
  if (v19.n128_u64[0])
  {
    v19.n128_u64[1] = v19.n128_u64[0];
    operator delete(v19.n128_u64[0]);
  }
}

void sub_29A39A50C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29A3963E8(va);
  sub_29A3963E8(va1);
  sub_29A3963E8(v2 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39A544(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A39A5DC(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v4 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v4;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A39A5DC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[72 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[72 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = *a2;
  *(v8 + 2) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 5) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(a2 + 48);
  *(v8 + 8) = *(a2 + 64);
  *(v8 + 3) = v9;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *&v18 = v8 + 72;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29A39A76C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A39A864(&v16);
  return v15;
}

void sub_29A39A758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A39A864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39A76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v8;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29A21776C(a1, v5);
      v5 += 72;
    }
  }

  return sub_29A218BD0(v10);
}

void **sub_29A39A864(void **a1)
{
  sub_29A39A898(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A39A898(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_29A21776C(v4, i - 72);
  }
}

__n128 sub_29A39A8E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A2262B0(a1))
  {
    goto LABEL_4;
  }

    ;
  }

  if ((sub_29A39A160(a1, a2) & 1) == 0)
  {
LABEL_4:
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A39A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39A958(void *a1, std::string *a2)
{
  if ((sub_29A39A9C4(a1, a2) & 1) == 0 && (sub_29A39D3E8(a1, a2) & 1) == 0 && (sub_29A39E000(a1, a2) & 1) == 0)
  {
    result = sub_29A39E070(a1, a2);
    if (!result)
    {
      return result;
    }

    sub_29A39E470(a1, a2);
  }

  return 1;
}

uint64_t sub_29A39A9C4(uint64_t a1, std::string *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A39AA34(a1, a2);
  if (v4)
  {
    sub_29A39D278(a2, 1);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A39AA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39AA34(void *a1, std::string *a2)
{
  v4 = sub_29A39AA8C(a1, a2);
  if (v4 && (sub_29A39B320(a1, a2) & 1) == 0)
  {
    sub_29A39B1F4(a1);
  }

  return v4;
}

uint64_t sub_29A39AA8C(void *a1, std::string *a2)
{
  result = sub_29A39AAF8(a1, a2);
  if (result)
  {
    v4 = a1[4];
    if (v4 == a1[8] || *v4 != 58)
    {
      return 0;
    }

    else
    {
      v5 = a1[5] + 1;
      a1[4] = v4 + 1;
      a1[5] = v5;
      ++a1[7];
      return 1;
    }
  }

  return result;
}

uint64_t sub_29A39AAF8(uint64_t a1, std::string *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A39AB78(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A39B17C(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A39AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

double sub_29A39AB78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if (!sub_29A2291D4(a1))
  {
    goto LABEL_10;
  }

    ;
  }

  v3 = *(a1 + 32);
  v7[0] = v2;
  v7[1] = v2;
  v8 = v14;
  v9 = v15;
  v10 = v3;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    v12 = *(a1 + 88);
  }

  v13 = 0;
  *&result = sub_29A39AC9C(v7).n128_u64[0];
  v6 = v4;
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    if (v4)
    {
      return result;
    }

LABEL_10:
    *(a1 + 32) = v2;
    result = *&v14;
    *(a1 + 40) = v14;
    *(a1 + 56) = v15;
    return result;
  }

  operator delete(__p[0]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_29A39AC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 32) = v21;
  *(v20 + 40) = *(v22 - 64);
  *(v20 + 56) = *(v22 - 48);
  _Unwind_Resume(exception_object);
}

__n128 sub_29A39AC9C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  sub_29A39AD04(a1);
  result = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = v4;
  return result;
}

void sub_29A39ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

double sub_29A39AD04(uint64_t a1)
{
  if ((sub_29A39AD98(a1) & 1) == 0 && (sub_29A39AE7C(a1) & 1) == 0 && (sub_29A39AF60(a1) & 1) == 0 && (sub_29A39B038(a1) & 1) == 0 && (sub_29A39B0B0(a1) & 1) == 0)
  {

    *&result = sub_29A39B128(a1).n128_u64[0];
  }

  return result;
}

uint64_t sub_29A39AD98(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A39AE10(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A39AE10(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28526 || *(v1 + 2) != 116)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A39AE7C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A39AEF4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A39AEF4(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28257 || *(v1 + 2) != 100)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A39AF60(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A39AFD8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A39AFD8(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 29295)
  {
    return 0;
  }

  v3 = a1[2] + 2;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 2;
  return 1;
}

uint64_t sub_29A39B038(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2639C8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A39B0B0(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2D558C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

__n128 sub_29A39B128(uint64_t a1)
{
  if (sub_29A2D57C8(a1))
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

void sub_29A39B17C(uint64_t a1, std::string *a2)
{
  sub_29A02887C(&__str, *a1, *(*(a1 + 32) + 8) - *a1);
  std::string::operator=(a2 + 1, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29A39B1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A39B1F4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485360;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::PredColonArgs");
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

void sub_29A39B2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39B320(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A39B36C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A39D1E8(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A39B36C(uint64_t a1, uint64_t a2)
{
  if (sub_29A39B3E0(a1, a2))
  {
    return 1;
  }

  sub_29A39BE10(a1, a2);
  if (v4)
  {
    return 1;
  }

  sub_29A39BFC4(a1, a2);
  if (v5)
  {
    return 1;
  }

  return sub_29A39C2C8(a1, a2);
}

uint64_t sub_29A39B3E0(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A39B460(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A39B8B8(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A39B454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39B460(void *a1)
{
  v1 = a1[4];
  if (v1 != a1[8] && *v1 == 45)
  {
    v2 = a1[5] + 1;
    a1[4] = v1 + 1;
    a1[5] = v2;
    ++a1[7];
  }

  return sub_29A39B49C(a1);
}

uint64_t sub_29A39B49C(void *a1)
{
  if (sub_29A39B504(a1))
  {
    return 1;
  }

  result = sub_29A236CE0(a1);
  if (result)
  {

    return sub_29A39B56C(a1);
  }

  return result;
}

uint64_t sub_29A39B504(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (sub_29A2371E0(a1))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v2 = sub_29A228CB4(a1);
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_29A39B56C(void *a1)
{
  if (sub_29A39B5CC(a1))
  {
    sub_29A39B774(a1);
    return 1;
  }

  else
  {

    return sub_29A39B82C(a1);
  }
}

uint64_t sub_29A39B5CC(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 46)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A236CE0(a1) & 1) == 0)
  {
    sub_29A39B648(a1);
  }

  return 1;
}

void sub_29A39B648(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48AAA0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::Digits");
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

void sub_29A39B714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39B774(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || (*v4 & 0xDF) != 0x45)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  sub_29A236F4C(a1);
  if ((sub_29A236CE0(a1) & 1) == 0)
  {
    sub_29A39B648(a1);
  }

  return 1;
}

void sub_29A39B820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39B82C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || (*v1 & 0xDF) != 0x45)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  sub_29A236F4C(a1);
  if ((sub_29A236CE0(a1) & 1) == 0)
  {
    sub_29A39B648(a1);
  }

  return 1;
}

void sub_29A39B8B8(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x29EDCA608];
  sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
  if ((v11 & 0x80000000) == 0)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        p_p = &__p;
        goto LABEL_12;
      }

LABEL_18:
      v8 = pxrInternal__aapl__pxrReserved__::TfStringToDouble(&__p, v3);
      goto LABEL_21;
    }

    if (__p != 28265 || BYTE2(__p) != 102)
    {
      goto LABEL_18;
    }

LABEL_19:
    v6 = 0x7FF0000000000000;
    goto LABEL_20;
  }

  if (v10 == 3 && *__p == 28265 && *(__p + 2) == 102)
  {
    goto LABEL_19;
  }

  if (v10 != 4)
  {
    goto LABEL_18;
  }

  p_p = __p;
LABEL_12:
  if (*p_p != 1718511917)
  {
    goto LABEL_18;
  }

  v6 = 0xFFF0000000000000;
LABEL_20:
  v8 = *&v6;
LABEL_21:
  v12[1] = &unk_2A2044D1B;
  *v12 = v8;
  sub_29A39BA3C(a2, v12);
  sub_29A186B14(v12);
  if (v11 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A39BA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A39BA3C(uint64_t a1, void *a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  *__p = *(a1 + 48);
  v4 = *(a1 + 64);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  sub_29A186EF4(v5, a2);
  sub_29A39BB24((a1 + 72), __p);
  sub_29A186B14(v5);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 71) < 0)
  {
    **(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 71) = 0;
  }
}

uint64_t sub_29A39BB24(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A39BB84(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    sub_29A186A3C((v3 + 24), (a2 + 24));
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A39BB84(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[40 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[40 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A186A3C(v8 + 3, a2 + 3);
  *&v18 = v8 + 40;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29A39BCC8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A39BD94(&v16);
  return v15;
}

void sub_29A39BCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A39BD94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39BCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      sub_29A186A3C((a4 + 24), (v7 + 24));
      v7 += 40;
      a4 = v13 + 40;
      v13 += 40;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      sub_29A21791C(a1, v5);
      v5 += 40;
    }
  }

  return sub_29A218AB8(v10);
}

void **sub_29A39BD94(void **a1)
{
  sub_29A39BDC8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A39BDC8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 40;
    sub_29A21791C(v4, i - 40);
  }
}

__n128 sub_29A39BE10(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A39BE8C(a1) || (v7[0] = v5, v7[1] = v6, v8 = a1 + 24, (sub_29A39BEC8(v7, a2) & 1) == 0))
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A39BE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39BE8C(void *a1)
{
  v1 = a1[4];
  if (v1 != a1[8] && *v1 == 45)
  {
    v2 = a1[5] + 1;
    a1[4] = v1 + 1;
    a1[5] = v2;
    ++a1[7];
  }

  return sub_29A236CE0(a1);
}

uint64_t sub_29A39BEC8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = 0;
  sub_29A02887C(__p, *a1, *(*(a1 + 32) + 8) - *a1);
  v4 = pxrInternal__aapl__pxrReserved__::TfStringToInt64(__p, &v7, v3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v7;
  if ((v7 & 1) == 0)
  {
    __p[0] = v4;
    __p[1] = &unk_2A2044A3B;
    sub_29A39BA3C(a2, __p);
    sub_29A186B14(__p);
  }

  return v5 ^ 1u;
}

__n128 sub_29A39BFC4(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if ((sub_29A39C048(a1) & 1) != 0 || (sub_29A39C118(a1), v4))
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A39C1D8(v8, a2);
  }

  else
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A39C03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39C048(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (sub_29A39C0B0(a1))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v2 = sub_29A228CB4(a1);
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_29A39C0B0(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1702195828)
  {
    return 0;
  }

  v3 = a1[5] + 4;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 4;
  return 1;
}

__n128 sub_29A39C118(uint64_t a1)
{
  if (sub_29A39C164(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A39C164(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1936482662 || *(v1 + 4) != 101)
  {
    return 0;
  }

  v4 = a1[5] + 5;
  a1[4] = v1 + 5;
  a1[5] = v4;
  a1[7] += 5;
  return 1;
}

void sub_29A39C1D8(uint64_t a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  sub_29A02887C(__p, *a1, *(*(a1 + 32) + 8) - *a1);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = *v3 == 116;
  v7[1] = &unk_2A20443C3;
  LOBYTE(v7[0]) = v4;
  sub_29A39BA3C(a2, v7);
  sub_29A186B14(v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A39C29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_29A186B14(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A39C2C8(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A39C348(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A39D018(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A39C33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39C348(void *a1)
{
  if ((sub_29A39C3A0(a1) & 1) == 0 && (sub_29A39C9F0(a1) & 1) == 0)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A39CF5C(a1) & 1) != 0);
  }

  return 1;
}

uint64_t sub_29A39C3A0(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 34)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A39C560(a1) & 1) == 0)
  {
    sub_29A39C41C(a1);
  }

  return 1;
}

void sub_29A39C41C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485300;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::one<''>, pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::StringChar<PXR_INTERNAL_NS_pegtl::one<''>>>");
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

void sub_29A39C500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39C560(void *a1)
{
  while (1)
  {
    v2 = a1[4];
    if (v2 != a1[8] && *v2 == 34)
    {
      break;
    }

    if ((sub_29A39C5D8(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A39C5D8(void *a1)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 92)
  {

    return sub_29A39C86C(a1);
  }

  else
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    if ((sub_29A39C7AC(a1) & 1) == 0)
    {
      sub_29A39C678(a1);
    }

    return 1;
  }
}

void sub_29A39C678(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x70uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48AAC0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::Escaped<PXR_INTERNAL_NS_pegtl::one<''>>");
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

void sub_29A39C74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39C7AC(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 34)
  {
    return sub_29A39C7F0(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

uint64_t sub_29A39C7F0(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  v3 = (((v2 - 92) >> 1) | ((v2 - 92) << 7));
  v4 = v3 > 9;
  v5 = (1 << v3) & 0x229;
  v6 = v4 || v5 == 0;
  if (v6 && v2 != 116 && v2 != 114)
  {
    return 0;
  }

  v7 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v7;
  ++a1[7];
  return 1;
}

uint64_t sub_29A39C86C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  if (!sub_29A39C988(a1))
  {
    v6 = 0;
LABEL_14:
    *v2 = v3;
    v9 = v15;
    *(v2 + 24) = v16;
    *(v2 + 8) = v9;
    return v6;
  }

  v4 = *(a1 + 32);
  v11 = v4;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
    v5 = v3;
    v4 = v11;
  }

  else
  {
    *__p = *(a1 + 72);
    v13 = *(a1 + 88);
    v5 = v3;
  }

  v14 = 0;
  if (v5 != v4 && (v8 = *v5, v7 = v5 + 1, v8 == 34) && v7 == v4)
  {
    v6 = 0;
  }

  else
  {
    v2 = 0;
    v6 = 1;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    goto LABEL_14;
  }

  return v6;
}

void sub_29A39C970(_Unwind_Exception *a1)
{
  *v2 = v3;
  *(v1 + 40) = *(v4 - 64);
  *(v1 + 56) = *(v4 - 48);
  _Unwind_Resume(a1);
}

BOOL sub_29A39C988(void *a1)
{
  v2 = sub_29A225B9C(a1);
  result = (v2 & 0xFF00000000) != 0 && (v2 - 32) < 0x10FFE0;
  if (result)
  {
    v5 = HIDWORD(v2);
    v6 = a1[5] + v5;
    a1[4] += v5;
    a1[5] = v6;
    a1[7] += v5;
  }

  return result;
}

uint64_t sub_29A39C9F0(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 39)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A39CBB0(a1) & 1) == 0)
  {
    sub_29A39CA6C(a1);
  }

  return 1;
}

void sub_29A39CA6C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xB0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485290;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::one<'\\''>, pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::StringChar<PXR_INTERNAL_NS_pegtl::one<'\\''>>>");
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

void sub_29A39CB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39CBB0(void *a1)
{
  while (1)
  {
    v2 = a1[4];
    if (v2 != a1[8] && *v2 == 39)
    {
      break;
    }

    if ((sub_29A39CC28(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A39CC28(void *a1)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 92)
  {

    return sub_29A39CE40(a1);
  }

  else
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    if ((sub_29A39CDFC(a1) & 1) == 0)
    {
      sub_29A39CCC8(a1);
    }

    return 1;
  }
}

void sub_29A39CCC8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x70uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48AAD0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::Escaped<PXR_INTERNAL_NS_pegtl::one<'\\''>>");
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

void sub_29A39CD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39CDFC(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 39)
  {
    return sub_29A39C7F0(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

uint64_t sub_29A39CE40(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  if (!sub_29A39C988(a1))
  {
    v6 = 0;
LABEL_14:
    *v2 = v3;
    v9 = v15;
    *(v2 + 24) = v16;
    *(v2 + 8) = v9;
    return v6;
  }

  v4 = *(a1 + 32);
  v11 = v4;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
    v5 = v3;
    v4 = v11;
  }

  else
  {
    *__p = *(a1 + 72);
    v13 = *(a1 + 88);
    v5 = v3;
  }

  v14 = 0;
  if (v5 != v4 && (v8 = *v5, v7 = v5 + 1, v8 == 39) && v7 == v4)
  {
    v6 = 0;
  }

  else
  {
    v2 = 0;
    v6 = 1;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    goto LABEL_14;
  }

  return v6;
}

void sub_29A39CF44(_Unwind_Exception *a1)
{
  *v2 = v3;
  *(v1 + 40) = *(v4 - 64);
  *(v1 + 56) = *(v4 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39CF5C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  result = sub_29A39CFC4(*v1);
  if (result)
  {
    v4 = a1[5] + 1;
    ++a1[4];
    a1[5] = v4;
    ++a1[7];
    return 1;
  }

  return result;
}

uint64_t sub_29A39CFC4(unsigned __int8 a1)
{
  v1 = a1;
  result = 1;
  if ((v1 - 33) > 0x3D || ((1 << (v1 - 33)) & 0x280000009000363DLL) == 0)
  {
    v3 = (v1 & 0xFFFFFFEF) == 47;
    if (v1 == 126)
    {
      v3 = 1;
    }

    return v1 == 124 || v3;
  }

  return result;
}

void sub_29A39D018(uint64_t a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x29EDCA608];
  sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
  v3 = v13;
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 < 2)
    {
      goto LABEL_20;
    }

    if (__dst != 34)
    {
      if (__dst == 39)
      {
        p_dst = &__dst;
        v5 = v13;
        goto LABEL_12;
      }

LABEL_20:
      v7 = 0;
      goto LABEL_21;
    }

    if (*(&__dst + v13 - 1) != 34)
    {
      goto LABEL_20;
    }

LABEL_18:
    v7 = 1;
    if (v13 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v12 <= 1)
  {
LABEL_15:
    v7 = 0;
LABEL_16:
    v8 = __dst;
    v3 = v12;
    goto LABEL_22;
  }

  p_dst = __dst;
  v6 = *__dst;
  if (v6 != 39)
  {
    if (v6 == 34 && *(__dst + v12 - 1) == 34)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v5 = v12;
LABEL_12:
  if (p_dst[v5 - 1] == 39)
  {
    goto LABEL_18;
  }

  v7 = 0;
  if (v13 < 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v8 = &__dst;
LABEL_22:
  pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v8, v3, v7, 0, __p);
  v14[1] = &off_2A2044DD0;
  sub_29A1B01B8(v14, __p);
  sub_29A39BA3C(a2, v14);
  sub_29A186B14(v14);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(__dst);
  }
}

void sub_29A39D19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_29A186B14(v21 - 40);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A39D1E8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v5.n128_u64[0] == *(a1 + 64) || *v5.n128_u64[0] != 44 || (v3 = *(a1 + 40) + 1, *(a1 + 32) = v5.n128_u64[0] + 1, *(a1 + 40) = v3, ++*(a1 + 56), (sub_29A39B36C(a1, a2) & 1) == 0))
  {
    result = v5;
    *v2 = v5;
    v2[1] = v6;
  }

  return result;
}

void sub_29A39D26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A39D278(uint64_t a1, int a2)
{
  sub_29A39D2F8(*(a1 + 8) - 48, a2, a1 + 24, (a1 + 72));
  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  v4 = *(a1 + 72);
  for (i = *(a1 + 80); i != v4; sub_29A21791C(a1 + 72, i))
  {
    i -= 40;
  }

  *(a1 + 80) = v4;
}

void sub_29A39D2F8(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  v5 = a2;
  *v6 = *a3;
  v7 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = *a4;
  v9 = *(a4 + 2);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::MakeCall(&v5, v10);
  sub_29A39A544((a1 + 24), v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v14 = &v11;
  sub_29A2177C4(&v14);
  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  v14 = &v8;
  sub_29A217894(&v14);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_29A39D3C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_29A3963E8(va1);
  sub_29A39639C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39D3E8(uint64_t a1, std::string *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A39D458(a1, a2);
  if (v4)
  {
    sub_29A39D278(a2, 2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A39D44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39D458(void *a1, std::string *a2)
{
  if (!sub_29A39AAF8(a1, a2) || !sub_29A39D4BC(a1))
  {
    return 0;
  }

  return sub_29A39D538(a1, a2);
}

uint64_t sub_29A39D4BC(void *a1)
{
    ;
  }

  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 40)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
    ;
  }

  return 1;
}

uint64_t sub_29A39D538(void *a1, std::string *a2)
{
  if (!sub_29A39D6C0(a1, a2))
  {
    sub_29A39D594(a1);
  }

    ;
  }

  return sub_29A39DE8C(a1);
}

void sub_29A39D594(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485360;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::PredParenArgs");
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

void sub_29A39D660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39D6C0(uint64_t a1, std::string *a2)
{
  sub_29A39D70C(a1, a2);
  if (v4)
  {
    sub_29A39DA70(a1, a2);
  }

  else
  {
    sub_29A39DE14(a1, a2);
  }

  return 1;
}

__n128 sub_29A39D70C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if (sub_29A39D78C(a1) && sub_29A39B36C(a1, a2))
  {
    do
    {
      result.n128_u64[0] = sub_29A39D978(a1, a2).n128_u64[0];
    }

    while ((v5 & 1) != 0);
  }

  else
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A39D77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39D78C(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_29A39D7EC(a1);
  if (v2)
  {
    v2 = sub_29A2272AC(a1);
  }

  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return v2 ^ 1u;
}

void sub_29A39D7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

double sub_29A39D7EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if (!sub_29A2291D4(a1))
  {
    goto LABEL_10;
  }

    ;
  }

  v3 = *(a1 + 32);
  v7[0] = v2;
  v7[1] = v2;
  v8 = v14;
  v9 = v15;
  v10 = v3;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    v12 = *(a1 + 88);
  }

  v13 = 0;
  *&result = sub_29A39D910(v7).n128_u64[0];
  v6 = v4;
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    if (v4)
    {
      return result;
    }

LABEL_10:
    *(a1 + 32) = v2;
    result = *&v14;
    *(a1 + 40) = v14;
    *(a1 + 56) = v15;
    return result;
  }

  operator delete(__p[0]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_29A39D8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 32) = v21;
  *(v20 + 40) = *(v22 - 64);
  *(v20 + 56) = *(v22 - 48);
  _Unwind_Resume(exception_object);
}

__n128 sub_29A39D910(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  sub_29A39AD04(a1);
  result = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = v4;
  return result;
}

void sub_29A39D968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39D978(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A39D9F4(a1) || !sub_29A39D78C(a1) || (sub_29A39B36C(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A39D9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39D9F4(void *a1)
{
    ;
  }

  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 44)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
    ;
  }

  return 1;
}

__n128 sub_29A39DA70(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A39D9F4(a1) || (sub_29A39DADC(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A39DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39DADC(void *a1, std::string *a2)
{
  v4 = sub_29A39DB28(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A39DDA8(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A39DB28(void *a1, std::string *a2)
{
  result = sub_29A39DB84(a1, a2);
  if (result)
  {
    result = sub_29A2272AC(a1);
    if (result)
    {
      if ((sub_29A39B36C(a1, a2) & 1) == 0)
      {
        sub_29A39DC7C(a1);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_29A39DB84(uint64_t a1, std::string *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A39AB78(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = v7;
    v9[1] = v8;
    v10 = a1 + 24;
    sub_29A39DC04(v9, a2);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A39DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A39DC04(uint64_t a1, std::string *a2)
{
  sub_29A02887C(&__str, *a1, *(*(a1 + 32) + 8) - *a1);
  std::string::operator=(a2 + 2, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29A39DC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A39DC7C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4851B0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::PredArgVal");
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

void sub_29A39DD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_29A39DDA8(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!sub_29A39D9F4(a1) || (sub_29A39DB28(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A39DE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39DE14(uint64_t a1, std::string *a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = sub_29A39DB28(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A39DDA8(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v4;
}

void sub_29A39DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39DE8C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 41)
  {
    sub_29A39DEDC(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A39DEDC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4850F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::one<')'>");
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

void sub_29A39DFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39E000(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A39AB78(a1);
  v5 = v4;
  if (v4)
  {
    sub_29A39D278(a2, 0);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A39E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39E070(uint64_t a1, uint64_t *a2)
{
  v7 = *(a1 + 32);
  if (v7 == *(a1 + 64) || *v7 != 40)
  {
    return 0;
  }

  v3 = *(a1 + 40) + 1;
  *(a1 + 32) = v7 + 1;
  *(a1 + 40) = v3;
  ++*(a1 + 56);
  v4 = a2[1];
  if (v4 >= a2[2])
  {
    v5 = sub_29A39E120(a2);
  }

  else
  {
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = (v4 + 3);
  }

  a2[1] = v5;
  return 1;
}

void sub_29A39E114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39E120(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  v16 = a1;
  if (v4)
  {
    v5 = sub_29A08E058(a1, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = &v5[48 * v1];
  v13 = v5;
  v14 = v6;
  *(&v15 + 1) = &v5[48 * v4];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *&v15 = v6 + 48;
  v7 = a1[1];
  v8 = &v6[*a1 - v7];
  sub_29A39E240(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_29A39E3F4(&v13);
  return v12;
}

void sub_29A39E22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A39E3F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39E240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A39E320(a1, v5);
      v5 += 48;
    }
  }

  return sub_29A39E368(v9);
}

void sub_29A39E320(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  sub_29A2176E4(&v4);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

uint64_t sub_29A39E368(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A39E3A0(a1);
  }

  return a1;
}

void sub_29A39E3A0(uint64_t *a1)
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
      v3 -= 48;
      sub_29A39E320(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A39E3F4(void **a1)
{
  sub_29A39E428(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A39E428(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29A39E320(v4, i - 48);
  }
}

uint64_t sub_29A39E470(void *a1, uint64_t a2)
{
  if ((sub_29A39E604(a1, a2) & 1) == 0)
  {
    sub_29A39E4C8(a1);
  }

  if ((sub_29A39E784(a1, a2) & 1) == 0)
  {
    sub_29A39E658(a1);
  }

  return 1;
}

void sub_29A39E4C8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x88uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48AAB0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::PredExpr, PXR_INTERNAL_NS_pegtl::blank>");
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

void sub_29A39E5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39E604(void *a1, uint64_t a2)
{
    ;
  }

  v4 = sub_29A39A040(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

void sub_29A39E658(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48AAE0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::PredCloseGroup");
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

void sub_29A39E724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A39E784(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || *v4 != 41)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  sub_29A39E80C(a2);
  return 1;
}

void sub_29A39E800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A39E80C(uint64_t a1)
{
  sub_29A39E8B8((*(a1 + 8) - 48), v3);
  v2 = *(a1 + 8);
  sub_29A39E320(a1, v2 - 48);
  *(a1 + 8) = v2 - 48;
  sub_29A39A544((v2 - 72), v3);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v7 = &v4;
  sub_29A2177C4(&v7);
  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_29A39E8B8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  for (i = a1[1]; v4 != i; i = a1[1])
  {
    sub_29A39A300(a1);
    v4 = *a1;
  }

  v6 = a1[4];
  *a2 = *(v6 - 72);
  *(a2 + 16) = *(v6 - 56);
  *(v6 - 72) = 0;
  *(v6 - 64) = 0;
  *(a2 + 24) = *(v6 - 48);
  *(a2 + 40) = *(v6 - 32);
  *(v6 - 56) = 0;
  *(v6 - 48) = 0;
  *(v6 - 40) = 0;
  *(v6 - 32) = 0;
  v7 = *(v6 - 24);
  *(a2 + 64) = *(v6 - 8);
  *(a2 + 48) = v7;
  *(v6 - 24) = 0;
  *(v6 - 16) = 0;
  *(v6 - 8) = 0;
  v8 = a1[3];
  for (j = a1[4]; j != v8; sub_29A21776C((a1 + 3), j))
  {
    j -= 72;
  }

  a1[4] = v8;
}

__n128 sub_29A39E974(uint64_t a1, std::string *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A39EA18(a1, a2);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  if (!v4 || !sub_29A3A0238(a1, a2) || (sub_29A39A098(a1, a2), (sub_29A39A958(a1, a2) & 1) == 0))
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A39EA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39EA18(__n128 *a1, uint64_t a2)
{
  result = sub_29A39EA74(a1);
  if (result)
  {
    sub_29A39ED28(a1);

    return sub_29A39EE68(a1, a2);
  }

  return result;
}

uint64_t sub_29A39EA74(void *a1)
{
  if ((sub_29A39EACC(a1) & 1) == 0 && (sub_29A39EC00(a1) & 1) == 0)
  {
    result = sub_29A2262B0(a1);
    if (!result)
    {
      return result;
    }

      ;
    }
  }

  return 1;
}

uint64_t sub_29A39EACC(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
    ;
  }

  sub_29A39EB48(a1);
  v3 = v2;
  if (v2)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A39EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39EB48(uint64_t a1)
{
  if (sub_29A39EB94(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A39EB94(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28257 || *(v1 + 2) != 100)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

uint64_t sub_29A39EC00(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
    ;
  }

  sub_29A39EC7C(a1);
  v3 = v2;
  if (v2)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A39EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39EC7C(uint64_t a1)
{
  if (sub_29A39ECC8(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A39ECC8(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 29295)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

uint64_t sub_29A39ED28(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
    ;
  }

  v2 = sub_29A39EDA4(a1);
  if (v2)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return v2;
}

void sub_29A39ED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39EDA4(uint64_t a1)
{
  sub_29A39A1D4(a1);
  v3 = v2;
  if (v2)
  {
    do
    {
      sub_29A39EDF0(a1);
    }

    while ((v4 & 1) != 0);
  }

  return v3;
}

__n128 sub_29A39EDF0(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (!sub_29A2262B0(a1))
  {
    goto LABEL_4;
  }

    ;
  }

  result.n128_u64[0] = sub_29A39A1D4(a1).n128_u64[0];
  if ((v3 & 1) == 0)
  {
LABEL_4:
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A39EE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39EE68(__n128 *a1, uint64_t a2)
{
  if (sub_29A39EF20(a1))
  {
    return 1;
  }

  sub_29A39FA10(a1);
  if (v4)
  {
    return 1;
  }

  sub_29A39FE88(a1);
  if (v5)
  {
    return 1;
  }

  v6 = a1[2].n128_u64[0];
  if (v6 != a1[4].n128_u64[0] && *v6 == 40)
  {
    v7 = a1[2].n128_u64[1] + 1;
    a1[2].n128_u64[0] = (v6 + 1);
    a1[2].n128_u64[1] = v7;
    ++a1[3].n128_u64[1];
    if ((sub_29A39FFAC(a1, a2) & 1) == 0)
    {
      sub_29A39E4C8(a1);
    }

    sub_29A3A0144(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_29A39EF20(__n128 *a1)
{
  sub_29A39EF78(a1);
  v3 = v2;
  if (v2 && (sub_29A39F008(a1) & 1) == 0)
  {
    sub_29A39B1F4(a1);
  }

  return v3;
}

__n128 sub_29A39EF78(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  result.n128_f64[0] = sub_29A39D7EC(a1);
  if (v3 && (v4 = *(a1 + 32), v4 != *(a1 + 64)) && *v4 == 58)
  {
    v5 = *(a1 + 40) + 1;
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v5;
    ++*(a1 + 56);
  }

  else
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A39EFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39F008(__n128 *a1)
{
  v2 = sub_29A39F054(a1);
  if (v2)
  {
    do
    {
      sub_29A39F980(a1);
    }

    while ((v3 & 1) != 0);
  }

  return v2;
}

uint64_t sub_29A39F054(__n128 *a1)
{
  sub_29A39F0D8(a1);
  if (v2)
  {
    return 1;
  }

  sub_29A39F2DC(a1);
  if (v3 & 1) != 0 || (sub_29A39C048(a1) & 1) != 0 || (sub_29A39F360(a1))
  {
    return 1;
  }

  return sub_29A39F3C8(a1);
}

__n128 sub_29A39F0D8(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] != a1[4].n128_u64[0] && *v4.n128_u64[0] == 45)
  {
    v2 = a1[2].n128_u64[1] + 1;
    a1[2].n128_u64[0] = v4.n128_u64[0] + 1;
    a1[2].n128_u64[1] = v2;
    ++a1[3].n128_u64[1];
  }

  if ((sub_29A39F15C(a1) & 1) == 0)
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A39F150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39F15C(void *a1)
{
  if (sub_29A39B504(a1))
  {
    return 1;
  }

  result = sub_29A236CE0(a1);
  if (result)
  {

    return sub_29A39F1C4(a1);
  }

  return result;
}

uint64_t sub_29A39F1C4(void *a1)
{
  if (sub_29A39B5CC(a1))
  {
    sub_29A39F224(a1);
    return 1;
  }

  else
  {

    return sub_29A39B82C(a1);
  }
}

uint64_t sub_29A39F224(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 64) || (*v4 & 0xDF) != 0x45)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  sub_29A236F4C(a1);
  if ((sub_29A236CE0(a1) & 1) == 0)
  {
    sub_29A39B648(a1);
  }

  return 1;
}

void sub_29A39F2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39F2DC(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] != a1[4].n128_u64[0] && *v4.n128_u64[0] == 45)
  {
    v2 = a1[2].n128_u64[1] + 1;
    a1[2].n128_u64[0] = v4.n128_u64[0] + 1;
    a1[2].n128_u64[1] = v2;
    ++a1[3].n128_u64[1];
  }

  if ((sub_29A236CE0(a1) & 1) == 0)
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A39F354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39F360(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (sub_29A39C164(a1))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v2 = sub_29A228CB4(a1);
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_29A39F3C8(void *a1)
{
  if ((sub_29A39F420(a1) & 1) == 0 && (sub_29A39F6D0(a1) & 1) == 0)
  {
    do
    {
        ;
      }
    }

    while ((sub_29A39CF5C(a1) & 1) != 0);
  }

  return 1;
}

uint64_t sub_29A39F420(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 34)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A39F49C(a1) & 1) == 0)
  {
    sub_29A39C41C(a1);
  }

  return 1;
}

uint64_t sub_29A39F49C(void *a1)
{
  while (1)
  {
    v2 = a1[4];
    if (v2 != a1[8] && *v2 == 34)
    {
      break;
    }

    if ((sub_29A39F514(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A39F514(void *a1)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 92)
  {

    return sub_29A39F5B4(a1);
  }

  else
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    if ((sub_29A39C7AC(a1) & 1) == 0)
    {
      sub_29A39C678(a1);
    }

    return 1;
  }
}

uint64_t sub_29A39F5B4(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  if (!sub_29A39C988(a1))
  {
    v6 = 0;
LABEL_14:
    *v2 = v3;
    v9 = v15;
    *(v2 + 24) = v16;
    *(v2 + 8) = v9;
    return v6;
  }

  v4 = *(a1 + 32);
  v11 = v4;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
    v5 = v3;
    v4 = v11;
  }

  else
  {
    *__p = *(a1 + 72);
    v13 = *(a1 + 88);
    v5 = v3;
  }

  v14 = 0;
  if (v5 != v4 && (v8 = *v5, v7 = v5 + 1, v8 == 34) && v7 == v4)
  {
    v6 = 0;
  }

  else
  {
    v2 = 0;
    v6 = 1;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    goto LABEL_14;
  }

  return v6;
}

void sub_29A39F6B8(_Unwind_Exception *a1)
{
  *v2 = v3;
  *(v1 + 40) = *(v4 - 64);
  *(v1 + 56) = *(v4 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_29A39F6D0(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 39)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A39F74C(a1) & 1) == 0)
  {
    sub_29A39CA6C(a1);
  }

  return 1;
}

uint64_t sub_29A39F74C(void *a1)
{
  while (1)
  {
    v2 = a1[4];
    if (v2 != a1[8] && *v2 == 39)
    {
      break;
    }

    if ((sub_29A39F7C4(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A39F7C4(void *a1)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 92)
  {

    return sub_29A39F864(a1);
  }

  else
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    if ((sub_29A39CDFC(a1) & 1) == 0)
    {
      sub_29A39CCC8(a1);
    }

    return 1;
  }
}

uint64_t sub_29A39F864(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  if (!sub_29A39C988(a1))
  {
    v6 = 0;
LABEL_14:
    *v2 = v3;
    v9 = v15;
    *(v2 + 24) = v16;
    *(v2 + 8) = v9;
    return v6;
  }

  v4 = *(a1 + 32);
  v11 = v4;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
    v5 = v3;
    v4 = v11;
  }

  else
  {
    *__p = *(a1 + 72);
    v13 = *(a1 + 88);
    v5 = v3;
  }

  v14 = 0;
  if (v5 != v4 && (v8 = *v5, v7 = v5 + 1, v8 == 39) && v7 == v4)
  {
    v6 = 0;
  }

  else
  {
    v2 = 0;
    v6 = 1;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    goto LABEL_14;
  }

  return v6;
}

void sub_29A39F968(_Unwind_Exception *a1)
{
  *v2 = v3;
  *(v1 + 40) = *(v4 - 64);
  *(v1 + 56) = *(v4 - 48);
  _Unwind_Resume(a1);
}

__n128 sub_29A39F980(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] == a1[4].n128_u64[0] || *v4.n128_u64[0] != 44 || (v2 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v4.n128_u64[0] + 1, a1[2].n128_u64[1] = v2, ++a1[3].n128_u64[1], (sub_29A39F054(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A39FA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39FA10(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_29A39D7EC(a1);
  if (!v2 || !sub_29A39D4BC(a1) || (sub_29A39FA8C(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A39FA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39FA8C(void *a1)
{
  if (!sub_29A39FAE8(a1))
  {
    sub_29A39D594(a1);
  }

    ;
  }

  return sub_29A39DE8C(a1);
}

uint64_t sub_29A39FAE8(uint64_t a1)
{
  sub_29A39FB34(a1);
  if (v2)
  {
    sub_29A39FC90(a1);
  }

  else
  {
    sub_29A39FE10(a1);
  }

  return 1;
}

__n128 sub_29A39FB34(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (sub_29A39FBB4(a1) && sub_29A39F054(a1))
  {
    do
    {
      result.n128_u64[0] = sub_29A39FC14(a1).n128_u64[0];
    }

    while ((v3 & 1) != 0);
  }

  else
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A39FBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39FBB4(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_29A39D7EC(a1);
  if (v2)
  {
    v2 = sub_29A2272AC(a1);
  }

  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return v2 ^ 1u;
}

void sub_29A39FC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39FC14(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (!sub_29A39D9F4(a1) || !sub_29A39FBB4(a1) || (sub_29A39F054(a1) & 1) == 0)
  {
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

void sub_29A39FC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A39FC90(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (!sub_29A39D9F4(a1) || (sub_29A39FCFC(a1) & 1) == 0)
  {
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

void sub_29A39FCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39FCFC(__n128 *a1)
{
  sub_29A39FD48(a1);
  v3 = v2;
  if (v2)
  {
    do
    {
      sub_29A39FDA4(a1);
    }

    while ((v4 & 1) != 0);
  }

  return v3;
}

void sub_29A39FD48(__n128 *a1)
{
  sub_29A39D7EC(a1);
  if (v2 && sub_29A2272AC(a1) && (sub_29A39F054(a1) & 1) == 0)
  {
    sub_29A39DC7C(a1);
  }
}

__n128 sub_29A39FDA4(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (!sub_29A39D9F4(a1) || (sub_29A39FD48(a1), (v3 & 1) == 0))
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A39FE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A39FE10(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A39FD48(a1);
  v3 = v2;
  if (v2)
  {
    do
    {
      sub_29A39FDA4(a1);
    }

    while ((v4 & 1) != 0);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v3;
}

void sub_29A39FE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

double sub_29A39FE88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if (!sub_29A2291D4(a1))
  {
    goto LABEL_10;
  }

    ;
  }

  v3 = *(a1 + 32);
  v7[0] = v2;
  v7[1] = v2;
  v8 = v14;
  v9 = v15;
  v10 = v3;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    v12 = *(a1 + 88);
  }

  v13 = 0;
  *&result = sub_29A39D910(v7).n128_u64[0];
  v6 = v4;
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    if (v4)
    {
      return result;
    }

LABEL_10:
    *(a1 + 32) = v2;
    result = *&v14;
    *(a1 + 40) = v14;
    *(a1 + 56) = v15;
    return result;
  }

  operator delete(__p[0]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_29A39FF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 32) = v21;
  *(v20 + 40) = *(v22 - 64);
  *(v20 + 56) = *(v22 - 48);
  _Unwind_Resume(exception_object);
}

uint64_t sub_29A39FFAC(__n128 *a1, uint64_t a2)
{
    ;
  }

  v4 = sub_29A3A0000(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A3A0000(__n128 *a1, uint64_t a2)
{
  sub_29A39ED28(a1);
  v4 = sub_29A3A0058(a1);
  if (v4)
  {
    do
    {
      sub_29A3A0194(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A3A0058(__n128 *a1)
{
  if (sub_29A39EF20(a1))
  {
    return 1;
  }

  sub_29A39FA10(a1);
  if (v2)
  {
    return 1;
  }

  sub_29A39FE88(a1);
  if (v3)
  {
    return 1;
  }

  v4 = a1[2].n128_u64[0];
  if (v4 != a1[4].n128_u64[0] && *v4 == 40)
  {
    v5 = a1[2].n128_u64[1] + 1;
    a1[2].n128_u64[0] = (v4 + 1);
    a1[2].n128_u64[1] = v5;
    ++a1[3].n128_u64[1];
    sub_29A3A00F4(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_29A3A00F4(void *a1)
{
  if ((sub_29A39FFAC() & 1) == 0)
  {
    sub_29A39E4C8(a1);
  }

  return sub_29A3A0144(a1);
}

uint64_t sub_29A3A0144(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 41)
  {
    sub_29A39E658(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

__n128 sub_29A3A0194(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A39EA18();
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  if (!v4 || !sub_29A39EA74(a1) || (sub_29A39ED28(a1), (sub_29A39EE68(a1, a2) & 1) == 0))
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A3A0220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A0238(uint64_t a1, uint64_t a2)
{
  if (sub_29A3A029C(a1, a2) & 1) != 0 || (sub_29A3A038C(a1, a2))
  {
    return 1;
  }

  return sub_29A3A047C(a1, a2);
}

uint64_t sub_29A3A029C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
    ;
  }

  v4 = sub_29A3A0318(a1, a2);
  if (v4)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3A030C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A0318(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A39EB48(a1);
  v5 = v4;
  if (v4)
  {
    sub_29A39A28C((*(a2 + 8) - 48), 3);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A3A0380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A038C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
    ;
  }

  v4 = sub_29A3A0408(a1, a2);
  if (v4)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3A03FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A0408(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_29A39EC7C(a1);
  v5 = v4;
  if (v4)
  {
    sub_29A39A28C((*(a2 + 8) - 48), 4);
  }

  else
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return v5;
}

void sub_29A3A0470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A047C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2262B0(a1);
  if (v4)
  {
      ;
    }

    sub_29A39A28C((*(a2 + 8) - 48), 2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A3A04F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A3A04FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A39E8B8((*(a1 + 8) - 48), a2);
  v4 = *a1;
  for (i = *(a1 + 8); i != v4; sub_29A39E320(a1, i))
  {
    i -= 48;
  }

  v5 = *(a1 + 72);
  *(a1 + 8) = v4;
  for (j = *(a1 + 80); j != v5; sub_29A21791C(a1 + 72, j))
  {
    j -= 40;
  }

  *(a1 + 80) = v5;
  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }
}

uint64_t sub_29A3A05A0(uint64_t a1, uint64_t a2)
{
  sub_29A3A0614(a1, a2);
  sub_29A396AF0((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  return a1;
}

__n128 sub_29A3A0614(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_29A3A0668(uint64_t a1)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = sub_29A39E120(a1);
  return a1;
}

void sub_29A3A06AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  sub_29A217894(&a10);
  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  a10 = v10;
  sub_29A3A06F4(&a10);
  _Unwind_Resume(a1);
}

void sub_29A3A06F4(void ***a1)
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
        v4 -= 48;
        sub_29A39E320(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A3A077C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 125)
  {
    sub_29A3A07CC(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A3A07CC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4850F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::one<'}'>");
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

void sub_29A3A0890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A3A08F0(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 123)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  sub_29A3A0950(a1, a2);
  return 1;
}

uint64_t sub_29A3A0950(void *a1, uint64_t a2)
{
  if ((sub_29A399E54(a1, a2) & 1) == 0)
  {
    sub_29A399D18(a1);
  }

  return sub_29A3A077C(a1);
}

__n128 sub_29A3A0A48(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_29A3A0AC4(a1);
  if (!v4 || !sub_29A399448(a1, a2) || (sub_29A399874(a1, a2) & 1) == 0)
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A3A0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A3A0AC4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (sub_29A3A0B20(a1))
  {
    sub_29A3A0B8C(a1);
  }

  result = v3;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return result;
}

void sub_29A3A0B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A0B20(void *a1)
{
  if (sub_29A22E0F4(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 47)
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    return 1;
  }

  return 0;
}

uint64_t sub_29A3A0B8C(__n128 *a1)
{
  if (sub_29A3A0BEC(a1))
  {
    sub_29A3A0CEC(a1);
    return 1;
  }

  else
  {

    return sub_29A3A0EAC(a1);
  }
}

uint64_t sub_29A3A0BEC(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = sub_29A3999E0(a1);
  if (v2)
  {
    sub_29A3A0C5C(a1);
  }

  else
  {
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return v2;
}

void sub_29A3A0C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A3A0C5C(__n128 *a1)
{
  v1 = a1 + 2;
  v4 = a1[2];
  v5 = a1[3];
  if (v4.n128_u64[0] == a1[4].n128_u64[0] || *v4.n128_u64[0] != 91 || (v2 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v4.n128_u64[0] + 1, a1[2].n128_u64[1] = v2, ++a1[3].n128_u64[1], (sub_29A399B10(a1) & 1) == 0))
  {
    result = v4;
    *v1 = v4;
    v1[1] = v5;
  }

  return result;
}

void sub_29A3A0CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A0CEC(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 123)
  {
    return 0;
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  sub_29A3A0D4C(a1);
  return 1;
}

__n128 sub_29A3A0D4C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if ((sub_29A3A0DBC(a1) & 1) == 0)
  {
    sub_29A399D18(a1);
  }

  if ((sub_29A3A077C(a1) & 1) == 0)
  {
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

void sub_29A3A0DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A0DBC(__n128 *a1)
{
    ;
  }

  v2 = sub_29A3A0E10(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A3A0E10(__n128 *a1)
{
  sub_29A3A0668(v4);
  v2 = sub_29A3A0000(a1, v4);
  v10 = &v9;
  sub_29A217894(&v10);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  v10 = v4;
  sub_29A3A06F4(&v10);
  return v2;
}

void sub_29A3A0E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A399F64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3A0EAC(__n128 *a1)
{
  v1 = a1[2].n128_u64[0];
  if (v1 == a1[4].n128_u64[0] || *v1 != 123)
  {
    return 0;
  }

  v2 = a1[2].n128_u64[1] + 1;
  a1[2].n128_u64[0] = (v1 + 1);
  a1[2].n128_u64[1] = v2;
  ++a1[3].n128_u64[1];
  sub_29A3A0F0C(a1);
  return 1;
}

uint64_t sub_29A3A0F0C(__n128 *a1)
{
  if ((sub_29A3A0DBC(a1) & 1) == 0)
  {
    sub_29A399D18(a1);
  }

  return sub_29A3A077C(a1);
}

uint64_t sub_29A3A0F5C(void *a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *a2)
{
  v3 = a1[4];
  if (v3 == a1[8] || *v3 != 46)
  {
    sub_29A3994B4(a1, a2);
  }

  else
  {
    v4 = a1[5] + 1;
    a1[4] = v3 + 1;
    a1[5] = v4;
    ++a1[7];
    if ((sub_29A3A1110(a1, a2) & 1) == 0)
    {
      sub_29A3A0FE4(a1);
    }
  }

  return 1;
}