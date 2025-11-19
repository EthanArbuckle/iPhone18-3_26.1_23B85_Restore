void sub_29A3864A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 72) = &a9;
  sub_29A1E234C((v9 - 72));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_RemoveDeadspace(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*a2 != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this))
  {
    return sub_29A389594(this + 6);
  }

  result = sub_29B29C7B8(v4);
  if (result)
  {
    return sub_29A389594(this + 6);
  }

  return result;
}

void *sub_29A38653C(void *a1, void *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, void *a4)
{
  v22 = a4;
  if (a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a1;
    do
    {
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      ++v6;
      v7 = v9;
    }

    while (v9 != a2);
  }

  v11 = sub_29A3895F0(a1, a3, v6);
  v12 = v11;
  if (v11 != a2)
  {
    v13 = 0;
    v14 = v11;
    do
    {
      v15 = v14[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v14[2];
          v10 = *v16 == v14;
          v14 = v16;
        }

        while (!v10);
      }

      ++v13;
      v14 = v16;
    }

    while (v16 != a2);
    v17 = v11;
    do
    {
      v18 = v13 >> 1;
      v22 = v17;
      sub_29A095B38(&v22, v13 >> 1);
      if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v22 + 28), a3))
      {
        v19 = v22;
        v20 = v22[1];
        if (v20)
        {
          do
          {
            v17 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v17 = v19[2];
            v10 = *v17 == v19;
            v19 = v17;
          }

          while (!v10);
        }

        v18 = v13 + ~v18;
      }

      v13 = v18;
    }

    while (v18);
  }

  return v12;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, _DWORD *a2)
{
  sub_29A388A10(&v16);
  v6 = *a2 != v16 || *(a2 + 1) != v17 || a2[4] != v18;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
  sub_29A1DE3A4(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16 + 1);
  sub_29A1DE3A4(&v16);
  if (v6)
  {
    v7 = sub_29A00911C(a1, "(", 1);
    v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2);
    v9 = sub_29A00911C(v8, ",", 1);
    v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, (a2 + 2));
    v11 = sub_29A00911C(v10, ",", 1);
    v12 = MEMORY[0x29C2C1ED0](v11, a2[4]);
    v13 = ")";
    v14 = 1;
  }

  else
  {
    v13 = "()";
    v12 = a1;
    v14 = 2;
  }

  return sub_29A00911C(v12, v13, v14);
}

_DWORD *sub_29A38681C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29A386944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  *(v18 - 40) = &a10;
  sub_29A012C90((v18 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29A386980(_DWORD *a1)
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

void sub_29A386B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail *pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail *this)
{
  *this = 2;
  sub_29A388A10(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = 2;
  sub_29A388A10(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(uint64_t a1, int a2, _DWORD *a3, __int128 *a4)
{
  *a1 = a2;
  sub_29A1E21F4((a1 + 4), a3);
  sub_29A1E2240((a1 + 8), a3 + 1);
  sub_29A1E21F4((a1 + 12), a3 + 2);
  sub_29A1E2240((a1 + 16), a3 + 3);
  *(a1 + 20) = a3[4];
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v7;
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 12) != *(a2 + 12) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v2 = *(a1 + 47);
  if (v2 >= 0)
  {
    v3 = *(a1 + 47);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = *(a2 + 47);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 32);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v6 = (a1 + 24);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 24);
  v9 = (a2 + 24);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void sub_29A386F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A386F34(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
  sub_29A1DE3A4((a1 + 12));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 8));
  sub_29A1DE3A4((a1 + 4));
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, unsigned int **a2)
{
  memset(v9, 0, sizeof(v9));
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    sub_29A3870A0(v3);
    sub_29A091654(v9, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 += 12;
  }

  pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", v9, &__p);
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

  v7 = sub_29A00911C(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v9;
  sub_29A012C90(&__p);
  return v7;
}

void sub_29A387064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  *(v18 - 40) = &a10;
  sub_29A012C90((v18 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29A3870A0(unsigned int *a1)
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

void sub_29A38729C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::SdfBatchNamespaceEdit(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit *pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::SdfBatchNamespaceEdit(pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit *this, const pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  sub_29A389700(this, *a2, *(a2 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 2));
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  sub_29A389700(this, *a2, *(a2 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 2));
  return this;
}

void *pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::SdfBatchNamespaceEdit(void *a1, _DWORD **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29A389700(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * (a2[1] - *a2));
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29A389700(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * (a2[1] - *a2));
  return a1;
}

void pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::~SdfBatchNamespaceEdit(void **this)
{
  v1 = this;
  sub_29A34700C(&v1);
}

{
  v1 = this;
  sub_29A34700C(&v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::operator=(uint64_t a1, _DWORD **a2)
{
  if (a1 != a2)
  {
    sub_29A389864(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * (a2[1] - *a2));
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::Process(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {
    v11 = *a2;
    for (i = a2[1]; i != v11; sub_29A347094(a2, i))
    {
      i -= 5;
    }

    a2[1] = v11;
  }

  v43[0] = a6;
  sub_29A388A68(v44);
  v48 = v49;
  v49[0] = 0;
  v51[0] = 0;
  v51[1] = 0;
  v49[1] = 0;
  v50 = v51;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (v12 == v13)
  {
LABEL_100:
    a5 = 1;
    goto LABEL_119;
  }

  while (1)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(v12))
    {
      IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((v12 + 2));
    }

    else
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(v12))
      {
        if (!a5)
        {
          goto LABEL_119;
        }

        sub_29A008E78(&v35, "Unsupported object type");
        pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
        sub_29A388168(a5, &v37);
        if (v42 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_116;
      }

      IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v12 + 2));
    }

    if ((IsPrimPath & 1) == 0 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 2))
    {
      if (!a5)
      {
        goto LABEL_119;
      }

      sub_29A008E78(&v35, "Path type mismatch");
      pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
      sub_29A388168(a5, &v37);
      if (v42 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_116;
    }

    NodeAtPath = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_FindOrCreateNodeAtPath(v43, v12);
    v16 = NodeAtPath ? (NodeAtPath + 32) : pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(0);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v16))
    {
      break;
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 2))
    {
      if (!a5)
      {
        goto LABEL_119;
      }

      sub_29A008E78(&v35, "Object was removed");
      pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
      sub_29A388168(a5, &v37);
      if (v42 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_116;
    }

LABEL_97:
    v12 += 5;
    if (v12 == v13)
    {
      goto LABEL_100;
    }
  }

  v17 = *(a3 + 24);
  if (!v17 || ((*(*v17 + 48))(v17, v16) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v33);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v34);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 2))
    {
      if (*v12 == *(v12 + 1) && v12[4] == -2)
      {
        v18 = 3;
        goto LABEL_95;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v12 + 2), v30);
      v19 = pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_FindOrCreateNodeAtPath(v43, v30);
      if (v19)
      {
        v20 = (v19 + 32);
      }

      else
      {
        v20 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(0);
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v20))
      {
        v21 = *(a3 + 24);
        if (v21 && ((*(*v21 + 48))(v21, v20) & 1) == 0)
        {
          if (a5)
          {
            sub_29A008E78(&v35, "New parent does not exist");
            pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
            sub_29A388168(a5, &v37);
            if (v42 < 0)
            {
              operator delete(__p);
            }

            goto LABEL_91;
          }
        }

        else
        {
          if (*v12 == *(v12 + 1))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v37, (v12 + 2), v30, v20, 1);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v12, (v12 + 2)))
          {
            if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v12 + 2), v12))
            {
              pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::GetOriginalPath(v43, (v12 + 2), &v37);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            if (!a5)
            {
              goto LABEL_93;
            }

            sub_29A008E78(&v35, "Object cannot be a descendant of itself");
            pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
            sub_29A388168(a5, &v37);
            if (v42 < 0)
            {
              operator delete(__p);
            }

            goto LABEL_91;
          }

          if (a5)
          {
            sub_29A008E78(&v35, "Object cannot be an ancestor of itself");
            pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
            sub_29A388168(a5, &v37);
            if (v42 < 0)
            {
              operator delete(__p);
            }

LABEL_91:
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40);
            sub_29A1DE3A4(&v39);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
            sub_29A1DE3A4(&v37 + 1);
            if (SHIBYTE(v36) < 0)
            {
              operator delete(v35);
            }
          }
        }
      }

      else if (a5)
      {
        sub_29A008E78(&v35, "New parent was removed");
        pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
        sub_29A388168(a5, &v37);
        if (v42 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_91;
      }

LABEL_93:
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v30 + 1);
      sub_29A1DE3A4(v30);
LABEL_94:
      v18 = 1;
      goto LABEL_95;
    }

    if ((a6 & 1) == 0)
    {
      v35 = 0uLL;
      v36 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(v12, &v35);
      v22 = *(&v35 + 1);
      for (j = v35; j != v22; j = (j + 8))
      {
        pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::GetOriginalPath(v43, j, &v32);
        if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v32) && v32 != *j)
        {
          if (a5)
          {
            sub_29A008E78(v30, "Current target was edited");
            pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, v30);
            sub_29A388168(a5, &v37);
            if (v42 < 0)
            {
              operator delete(__p);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40);
            sub_29A1DE3A4(&v39);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
            sub_29A1DE3A4(&v37 + 1);
            if (v31 < 0)
            {
              operator delete(v30[0]);
            }
          }

          goto LABEL_77;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
        sub_29A1DE3A4(&v32);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively((v12 + 2), &v35);
      v24 = *(&v35 + 1);
      for (k = v35; ; k = (k + 8))
      {
        if (k == v24)
        {
          v37 = &v35;
          sub_29A1E234C(&v37);
          goto LABEL_45;
        }

        pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::GetOriginalPath(v43, k, &v32);
        if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v32) && v32 != *k)
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
        sub_29A1DE3A4(&v32);
      }

      if (a5)
      {
        sub_29A008E78(v30, "New target was edited");
        pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, v30);
        sub_29A388168(a5, &v37);
        if (v42 < 0)
        {
          operator delete(__p);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40);
        sub_29A1DE3A4(&v39);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
        sub_29A1DE3A4(&v37 + 1);
        if (v31 < 0)
        {
          operator delete(v30[0]);
        }
      }

LABEL_77:
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
      sub_29A1DE3A4(&v32);
      v37 = &v35;
      sub_29A1E234C(&v37);
      goto LABEL_94;
    }

LABEL_45:
    v35 = 0uLL;
    v36 = 0;
    if (*(a4 + 24) && (sub_29A388AF8(&v37, v16, &v33, v12[4]), v26 = sub_29A3881FC(a4, &v37, &v35), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v39), sub_29A1DE3A4(&v38), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v37 + 1), sub_29A1DE3A4(&v37), (v26 & 1) == 0))
    {
      if (a5)
      {
        pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
        sub_29A388168(a5, &v37);
        if (v42 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::Apply(v43, v12, &v35))
      {
        if (a2)
        {
          sub_29A388250(a2, v12);
        }

        v18 = 0;
        goto LABEL_60;
      }

      if (a5)
      {
        pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
        sub_29A388168(a5, &v37);
        if (v42 < 0)
        {
          operator delete(__p);
        }

LABEL_58:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40);
        sub_29A1DE3A4(&v39);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
        sub_29A1DE3A4(&v37 + 1);
      }
    }

    v18 = 1;
LABEL_60:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

LABEL_95:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34);
    sub_29A1DE3A4(&v33);
    if (v18 != 3 && v18)
    {
      goto LABEL_118;
    }

    goto LABEL_97;
  }

  if (!a5)
  {
    goto LABEL_119;
  }

  sub_29A008E78(&v35, "Object does not exist");
  pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::SdfNamespaceEditDetail(&v37, 0, v12, &v35);
  sub_29A388168(a5, &v37);
  if (v42 < 0)
  {
    operator delete(__p);
  }

LABEL_116:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40);
  sub_29A1DE3A4(&v39);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
  sub_29A1DE3A4(&v37 + 1);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

LABEL_118:
  a5 = 0;
LABEL_119:
  sub_29A388F00(&v50, v51[0]);
  sub_29A1E2AEC(&v48, v49[0]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v47);
  sub_29A1DE3A4(&v46);
  sub_29A3883D8(&v45, 0);
  sub_29A3886A8(v44);
  return a5;
}

void sub_29A387F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, int a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_29A386F34(&a27);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a12);
  sub_29A1DCEA8(&a20);
  sub_29A38829C(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_29A388168(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A389AD0(a1, a2);
  }

  else
  {
    sub_29A389C00(a1, a1[1], a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A3881B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_29A3881FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_29A388250(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A388B5C(a1, a2);
  }

  else
  {
    sub_29A388C8C(a1, *(a1 + 8), a2);
    result = v3 + 20;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A38829C(uint64_t a1)
{
  sub_29A388F00(a1 + 72, *(a1 + 80));
  sub_29A1E2AEC(a1 + 48, *(a1 + 56));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  sub_29A3883D8((a1 + 32), 0);
  sub_29A3886A8(a1 + 8);
  return a1;
}

uint64_t sub_29A388300(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A38834C(a2, a1);
  *(a1 + 24) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 36));
  return a1;
}

uint64_t *sub_29A38834C@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a1))
  {
    TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(a1);
    sub_29A1E21F4(a2, TargetPath);
    result = sub_29A1E2240(a2 + 1, TargetPath + 1);
    v6 = 2;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a1);
    v7 = *result;
    *a2 = *result;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 = v8;
      }
    }

    v6 = 1;
  }

  a2[2] = v6;
  return result;
}

void sub_29A3883D8(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A38842C(v2, v2[1]);

    operator delete(v2);
  }
}

void sub_29A38842C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A38842C(a1, *a2);
    sub_29A38842C(a1, a2[1]);
    v4 = a2[4];
    a2[4] = 0;
    if (v4)
    {
      sub_29A388494((a2 + 4), v4);
    }

    operator delete(a2);
  }
}

void sub_29A388494(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 9);
    sub_29A1DE3A4(a2 + 8);
    sub_29A3883D8(a2 + 6, 0);
    sub_29A3886A8(a2);

    operator delete(a2);
  }
}

uint64_t sub_29A388500(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 36));
  return a1;
}

uint64_t sub_29A388574(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *(sub_29A3885FC(a1, a3) + 16) = a2;
  v6 = operator new(0x18uLL);
  v6[2] = 0;
  v6[1] = 0;
  *v6 = v6 + 1;
  *(a1 + 24) = v6;
  sub_29A1E21F4((a1 + 32), a4);
  sub_29A1E2240((a1 + 36), a4 + 1);
  return a1;
}

uint64_t sub_29A3885FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  sub_29A388644(a1, a2);
  return a1;
}

uint64_t sub_29A388644(uint64_t a1, uint64_t a2)
{
  result = sub_29A3886A8(a1);
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A204C008[v5])(&v6, a2);
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_29A3886A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (off_2A204BFF0[v2])(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

void sub_29A388704(uint64_t a1, void *a2)
{
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

_DWORD *sub_29A388720(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t **sub_29A388764(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  **result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

_DWORD *sub_29A388798(_DWORD **a1, _DWORD *a2)
{
  v3 = sub_29A1E21F4(*a1, a2) + 1;

  return sub_29A1E2240(v3, a2 + 1);
}

uint64_t sub_29A3887D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A3885FC(a1, a2);
  *(v3 + 24) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((v3 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 36));
  return a1;
}

uint64_t sub_29A38881C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(result + 8) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_29A3886A8(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_2A204C020[v4])(v6);
    }
  }

  return result;
}

uint64_t *sub_29A38888C(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 8))
  {
    result = sub_29A3886A8(*result);
    *(v1 + 8) = 0;
  }

  return result;
}

void *sub_29A3888D0(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    return sub_29A166F2C(a2, a3);
  }

  else
  {
    return sub_29A3888F0(a1, a3);
  }
}

uint64_t sub_29A3888F0(uint64_t a1, uint64_t *a2)
{
  sub_29A3886A8(a1);
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = 1;
  return a1;
}

int *sub_29A388950(_DWORD *a1, int *a2, _DWORD *a3)
{
  if (a1[2] == 2)
  {
    sub_29A2258F0(a2, a3);

    return sub_29A225948(a2 + 1, a3 + 1);
  }

  else
  {

    return sub_29A3889C4(a1, a3);
  }
}

_DWORD *sub_29A3889C4(_DWORD *a1, _DWORD *a2)
{
  sub_29A3886A8(a1);
  sub_29A1E21F4(a1, a2);
  sub_29A1E2240(a1 + 1, a2 + 1);
  a1[2] = 2;
  return a1;
}

_DWORD *sub_29A388A10(_DWORD *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a1 + 3);
  a1[4] = -1;
  return a1;
}

uint64_t sub_29A388A68(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = operator new(0x18uLL);
  *(v2 + 2) = 0;
  *(v2 + 1) = 0;
  *v2 = v2 + 8;
  *(a1 + 24) = v2;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
  sub_29A1E21F4((a1 + 32), v3);
  sub_29A1E2240((a1 + 36), v3 + 1);
  return a1;
}

void sub_29A388AD0(_Unwind_Exception *a1)
{
  sub_29A3883D8((v1 + 24), 0);
  sub_29A3886A8(v1);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A388AF8(_DWORD *a1, _DWORD *a2, _DWORD *a3, int a4)
{
  v8 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v8 + 1, a2 + 1);
  sub_29A1E21F4(a1 + 2, a3);
  sub_29A1E2240(a1 + 3, a3 + 1);
  a1[4] = a4;
  return a1;
}

uint64_t sub_29A388B5C(uint64_t a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A0BE284(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[20 * v2];
  *(&v16 + 1) = &v7[20 * v6];
  sub_29A388C8C(a1, v15, a2);
  *&v16 = v15 + 20;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29A388CE8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A388E84(&v14);
  return v13;
}

void sub_29A388C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A388E84(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A388C8C(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240(a2 + 1, a3 + 1);
  sub_29A1E21F4(a2 + 2, a3 + 2);
  result = sub_29A1E2240(a2 + 3, a3 + 3);
  a2[4] = a3[4];
  return result;
}

uint64_t sub_29A388CE8(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
      sub_29A388D9C(a1, a4, v7);
      v7 += 5;
      a4 = v12 + 5;
      v12 += 5;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A347094(a1, v5);
      v5 += 5;
    }
  }

  return sub_29A388DF8(v9);
}

_DWORD *sub_29A388D9C(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0(a2 + 1, a3 + 1);
  sub_29A1DDD84(a2 + 2, a3 + 2);
  result = sub_29A1DDDC0(a2 + 3, a3 + 3);
  a2[4] = a3[4];
  return result;
}

uint64_t sub_29A388DF8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A388E30(a1);
  }

  return a1;
}

uint64_t *sub_29A388E30(uint64_t *result)
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
      v3 -= 5;
      result = sub_29A347094(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A388E84(void **a1)
{
  sub_29A388EB8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A388EB8(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 20;
      result = sub_29A347094(v4, (v1 - 20));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29A388F00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A388F00(a1, *a2);
    sub_29A388F00(a1, a2[1]);
    sub_29A388F5C((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29A388F5C(uint64_t a1)
{
  sub_29A082B84(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A388FA8(uint64_t a1, uint64_t a2)
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
    v6 = sub_29A38902C(*(v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_29A38902C(a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_29A38902C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 == -1 || v5 < v4)
  {
    return 1;
  }

  if (v5 > v4)
  {
    return 0;
  }

  v8[1] = v2;
  v8[2] = v3;
  v8[0] = &v7;
  return (off_2A204C048[v5])(v8, a1, a2);
}

uint64_t *sub_29A3890E0(uint64_t **a1, void *a2)
{
  v4 = operator new(0x28uLL);
  v9 = v4;
  v10[0] = a1;
  v10[1] = 1;
  v4[4] = *a2;
  v5 = sub_29A3891A4(a1, &v8, v4 + 4);
  v6 = *v5;
  if (*v5)
  {
    v9 = 0;
    sub_29A38922C(v10, v4);
  }

  else
  {
    sub_29A00B204(a1, v8, v5, v4);
    return v9;
  }

  return v6;
}

void *sub_29A3891A4(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_29A38902C(*a3, v4[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_29A38902C(v7[4], *a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_29A38922C(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 32;
    v4 = *(__p + 4);
    *(__p + 4) = 0;
    if (v4)
    {
      sub_29A388494(v3, v4);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_29A389294(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v9);
  result = *v6;
  if (!*v6)
  {
    sub_29A3893B4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t sub_29A38932C(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  *a2 = a1 + 8;
  return a1 + 8;
}

_DWORD *sub_29A3893B4@<X0>(uint64_t a1@<X0>, _DWORD **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  sub_29A1E21F4(v6 + 8, v7);
  result = sub_29A1E2240(v6 + 9, v7 + 1);
  *(v6 + 6) = 0;
  *(v6 + 7) = 0;
  *(v6 + 5) = v6 + 12;
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_29A389424(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_29A03AFE8(a1, v4);
      sub_29A388F5C((v4 + 4));
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

uint64_t *sub_29A38948C(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v9);
  result = *v6;
  if (!*v6)
  {
    sub_29A389524(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_DWORD *sub_29A389524@<X0>(uint64_t a1@<X0>, _DWORD **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  sub_29A1DDD84(v6 + 8, v7);
  result = sub_29A1DDDC0(v6 + 9, v7 + 1);
  *(v6 + 6) = 0;
  *(v6 + 7) = 0;
  *(v6 + 5) = v6 + 12;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29A389594(uint64_t **a1)
{
  v2 = sub_29A1EF6EC(a1);
  if (a1 + 1 == v2)
  {
    return 0;
  }

  v3 = v2;
  sub_29A03AFE8(a1, v2);
  sub_29A1E26CC(v3 + 7);
  operator delete(v3);
  return 1;
}

void *sub_29A3895F0(void *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = result;
    sub_29A095B38(&v3, a3 >> 1);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

uint64_t *sub_29A389698(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_29A03AFE8(a1, v4);
      sub_29A1E26CC(v4 + 7);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void *sub_29A389700(void *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A389788(result, a4);
    result = sub_29A3897D0(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A389768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A34700C(&a9);
  _Unwind_Resume(a1);
}

char *sub_29A389788(void *a1, unint64_t a2)
{
  if (a2 >= 0xCCCCCCCCCCCCCCDLL)
  {
    sub_29A00C9A4();
  }

  result = sub_29A0BE284(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[20 * v4];
  return result;
}

_DWORD *sub_29A3897D0(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A388C8C(a1, v4, v6);
      v6 += 5;
      v4 = v12 + 5;
      v12 += 5;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A388DF8(v9);
  return v4;
}

_DWORD *sub_29A389864(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 2) < a4)
  {
    sub_29A3899D4(a1);
    if (a4 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 2);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 2) >= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A389788(a1, v10);
    result = sub_29A3897D0(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 2) < a4)
  {
    sub_29A389A40(&v16, a2, (a2 + v12), v8);
    result = sub_29A3897D0(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29A389A40(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 5;
      result = sub_29A347094(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29A3899D4(void *a1)
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
        v3 -= 5;
        sub_29A347094(a1, v3);
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

_DWORD *sub_29A389A40(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
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
    sub_29A225948(a4 + 1, v5 + 1);
    sub_29A2258F0(a4 + 2, v5 + 2);
    sub_29A225948(a4 + 3, v5 + 3);
    a4[4] = v5[4];
    a4 += 5;
    v5 += 5;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_29A389AD0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[48 * v2];
  *(&v16 + 1) = &v7[48 * v6];
  sub_29A389C00(a1, v15, a2);
  *&v16 = v15 + 48;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A389C7C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A389E20(&v14);
  return v13;
}

void sub_29A389BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A389E20(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A389C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  sub_29A1DDD84((a2 + 4), (a3 + 4));
  sub_29A1DDDC0((a2 + 8), (a3 + 8));
  sub_29A1DDD84((a2 + 12), (a3 + 12));
  sub_29A1DDDC0((a2 + 16), (a3 + 16));
  *(a2 + 20) = *(a3 + 20);
  result = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = result;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_29A389C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29A389C00(a1, a4, v7);
      v7 += 48;
      a4 = v12 + 48;
      v12 += 48;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A389D30(a1, v5);
      v5 += 48;
    }
  }

  return sub_29A389D94(v9);
}

_DWORD *sub_29A389D30(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 16));
  sub_29A1DE3A4((a2 + 12));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 8));

  return sub_29A1DE3A4((a2 + 4));
}

uint64_t sub_29A389D94(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A389DCC(a1);
  }

  return a1;
}

uint64_t *sub_29A389DCC(uint64_t *result)
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
      v3 -= 48;
      result = sub_29A389D30(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A389E20(void **a1)
{
  sub_29A389E54(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A389E54(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 48;
      result = sub_29A389D30(v4, v1 - 48);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t *sub_29A389E9C()
{
  v1 = nullsub_235;
  v1 = nullsub_236;
  v1 = nullsub_237;
  v1 = nullsub_238;
  v1 = nullsub_239;
  v1 = nullsub_240;
  v1 = nullsub_241;
  v1 = nullsub_242;
  v1 = nullsub_243;
  v1 = nullsub_244;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfNotice::BaseLayersDidChange::GetLayers@<X0>(uint64_t **this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A38A1A8(a2, 0x34F72C234F72C235 * (((*this)[1] - **this) >> 3));
  v7 = (*this)[1];
  v13 = **this;
  v14 = v7;
  while (v13 != v14)
  {
    v8 = sub_29A38A264(&v13, v5, v6);
    v9 = sub_29B293A0C(*v8);
    if (v10 & 1 | v9)
    {
      v12 = sub_29A38A264(&v13, v10, v11);
      sub_29A38A29C(a2, *v12);
    }

    result = sub_29A38A2F4(&v13);
  }

  return result;
}

uint64_t *sub_29A38A1A8(uint64_t *result, unint64_t a2)
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
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A38A848(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A0ED41C(&v12);
  }

  return result;
}

void sub_29A38A250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

void *sub_29A38A264(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B29C800(result, a2, a3);
  }

  return result;
}

uint64_t sub_29A38A29C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A38A938(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

void *sub_29A38A2F4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>, pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::operator++() [T = const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>, pxrInternal__aapl__pxrReserved__::SdfChangeList>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 232;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfNotice::LayerIdentifierDidChange::LayerIdentifierDidChange(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_2A204C070;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  return a1;
}

void sub_29A38A418(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::Base::~Base(pxrInternal__aapl__pxrReserved__::SdfNotice::Base *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayersDidChange::~LayersDidChange(pxrInternal__aapl__pxrReserved__::SdfNotice::LayersDidChange *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayersDidChangeSentPerLayer::~LayersDidChangeSentPerLayer(pxrInternal__aapl__pxrReserved__::SdfNotice::LayersDidChangeSentPerLayer *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayerInfoDidChange::~LayerInfoDidChange(pxrInternal__aapl__pxrReserved__::SdfNotice::LayerInfoDidChange *this)
{
  *this = &unk_2A204C090;
  v1 = *(this + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  *this = &unk_2A204C090;
  v1 = *(this + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  *this = &unk_2A204C090;
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v3);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayerIdentifierDidChange::~LayerIdentifierDidChange(void **this)
{
  *this = &unk_2A204C070;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  pxrInternal__aapl__pxrReserved__::SdfNotice::LayerIdentifierDidChange::~LayerIdentifierDidChange(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidReplaceContent::~LayerDidReplaceContent(pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidReplaceContent *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidReloadContent::~LayerDidReloadContent(pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidReloadContent *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidSaveLayerToFile::~LayerDidSaveLayerToFile(pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidSaveLayerToFile *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDirtinessChanged::~LayerDirtinessChanged(pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDirtinessChanged *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::SdfNotice::LayerMutenessChanged::~LayerMutenessChanged(void **this)
{
  *this = &unk_2A204C0B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  pxrInternal__aapl__pxrReserved__::SdfNotice::LayerMutenessChanged::~LayerMutenessChanged(this);

  operator delete(v1);
}

void sub_29A38A7B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A38A808(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29A38A808(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result != a2)
  {
    result = sub_29B29C85C();
  }

  *(a1 + 8) = a2;
  return result;
}

uint64_t sub_29A38A848(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4++ = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      v4 += 16;
    }

    while (v4 != a3);
    v9 = a4;
    v7 = 1;
    if (a2 != a3)
    {
      sub_29B28D194();
    }
  }

  return sub_29A38A8CC(v6);
}

uint64_t sub_29A38A8CC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A38A904(a1);
  }

  return a1;
}

uint64_t sub_29A38A904(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  result = *v1;
  if (*v1 != *v2)
  {
    return sub_29B29C85C();
  }

  return result;
}

uint64_t sub_29A38A938(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[16 * v7];
  v10 = *a2;
  *v9 = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1u, memory_order_relaxed);
  }

  *&v19 = v9 + 16;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29A38A848(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A0ED41C(&v17);
  return v16;
}

void sub_29A38AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A38AA54()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2047358, 0, 0, 0, 1, 1, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2047D60, 0, 0, 0, 40, 0, 0);
}

void sub_29A38AACC()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20471A0, 0, 0, 0, 8, 0, 0);
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2048EF0, 0, 0, 0, 24, 0, 0);
  v1 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v0);
  sub_29A008E78(__p, "vector<SdfPath>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v0, v1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A38AB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(_DWORD *a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v4 + 1);
  sub_29A0ECEEC(&v13, "Sdf", "SdfPath::SdfPath(string)");
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    v5 = *(a2 + 8);
    if (v5 >= 0x401)
    {
      v6 = 0;
      v7 = *a2;
      do
      {
        v8 = *v7++;
        if (v8 == 47)
        {
          ++v6;
        }

        --v5;
      }

      while (v5);
      if (v6 > 0x200)
      {
        goto LABEL_9;
      }
    }
  }

  if ((pxrInternal__aapl__pxrReserved__::Sdf_ParsePath(a2, a1, &__p) & 1) == 0)
  {
LABEL_9:
    v10[0] = "sdf/path.cpp";
    v10[1] = "SdfPath";
    v10[2] = 138;
    v10[3] = "pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(const std::string &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v10, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return a1;
}

void sub_29A38AC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A0E9CEC(v20 - 32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v19 + 1);
  sub_29A1DE3A4(v19);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if ((atomic_load_explicit(&qword_2A173F9E8, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C8C4();
  }

  return &qword_2A173F9E0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if ((atomic_load_explicit(&qword_2A173F978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F978))
  {
    v2 = operator new(8uLL);
    AbsoluteRootNode = pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetAbsoluteRootNode(v2);
    sub_29A392268(v2, AbsoluteRootNode, 0);
    qword_2A173F970 = v2;
    __cxa_guard_release(&qword_2A173F978);
  }

  return qword_2A173F970;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if ((atomic_load_explicit(&qword_2A173F988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F988))
  {
    v2 = operator new(8uLL);
    RelativeRootNode = pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetRelativeRootNode(v2);
    sub_29A392268(v2, RelativeRootNode, 0);
    qword_2A173F980 = v2;
    __cxa_guard_release(&qword_2A173F988);
  }

  return qword_2A173F980;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {
    v2 = *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this) + 12);
  }

  else
  {
    v2 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    v3 = *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1) + 12);
  }

  else
  {
    v3 = 0;
  }

  return v3 + v2;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this);
  if (result)
  {
    return *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this) + 15) & 1;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this);
  if (result)
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    return *(Ptr + 15) & (*(Ptr + 12) == 0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this);
  if (result)
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    return *(Ptr + 14) == 1 || *this == *pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(Ptr);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this);
  if (result)
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    if (*(Ptr + 14) == 1)
    {
      return 1;
    }

    v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(Ptr);
    return *this == *v4 || *this == *pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    if (!result)
    {
      return result;
    }

    if (*(result + 15))
    {
      return *(result + 12) == 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    v2 = *(result + 14);
    return v2 == 3 || v2 == 6;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    return *(result + 14) == 3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsNamespacedPropertyPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    v2 = result;
    v3 = *(result + 14);
    if (v3 == 6 || v3 == 3)
    {
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_IsNamespacedImpl(result);
      if (result)
      {
        v5 = *(v2 + 14);
        return v5 == 3 || v5 == 6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  if (result)
  {
    return *(result + 14) == 2;
  }

  return result;
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimOrPrimVariantSelectionPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  if (result)
  {
    if (result[14] - 1 >= 2)
    {
      return (*this == *pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(result));
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  if (result)
  {
    return (*(result + 15) >> 1) & 1;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::ContainsTargetPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    return (*(result + 15) >> 2) & 1;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsRelationalAttributePath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    return *(result + 14) == 6;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    return *(result + 14) == 4;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    return *(result + 14) == 5;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperArgPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    return *(result + 14) == 7;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsExpressionPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (result)
  {
    return *(result + 14) == 8;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::GetAsToken@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, void *a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this);
  if (result)
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);

    return pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetPathAsToken(Ptr, v6, v7);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, uint64_t a2@<X8>)
{
  AsToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetAsToken(this, &v6);
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    result = ((v6 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  if (result[23] < 0)
  {
    result = sub_29A008D14(a2, *result, *(result + 1));
  }

  else
  {
    v5 = *result;
    *(a2 + 16) = *(result + 2);
    *a2 = v5;
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);

    return pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetPathToken(Ptr, v3, v4);
  }

  else
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v6)
    {
      v6 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    return (v6 + 88);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPath::GetString(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  Token = pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(this);
  if ((*Token & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    return ((*Token & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  return pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Token);
}

const char *pxrInternal__aapl__pxrReserved__::SdfPath::GetText(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  v1 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(this) & 0xFFFFFFFFFFFFFFF8;
  if (!v1)
  {
    return "";
  }

  result = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(this, a2, 0);
}

void sub_29A38B5C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(this, a3, a2);
}

void sub_29A38B624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, unint64_t a3)
{
  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
  if (a3 - 1 >= PathElementCount)
  {
    v7 = PathElementCount;
  }

  else
  {
    v7 = a3;
  }

  sub_29A38B6A4(a2, v7);
  v8 = *a2;
  v9 = (*(a2 + 8) - *a2) >> 3;

  return pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(a1, v8, v9);
}

{
  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
  if (PathElementCount < a3)
  {
    a3 = PathElementCount;
  }

  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a1 + 1);
  if (v8 && a3)
  {
    v9 = v8;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(Ptr);
    if (Ptr)
    {
      atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(v9);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(Ptr);
    if (Ptr)
    {
      atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(0);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

void **sub_29A38B6A4(void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        v3 -= 8;
        result = sub_29A1E230C(v2, v3);
      }

      *(v2 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return sub_29A393EB4(result, v5);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::GetAncestorsRange@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, this) + 1;

  return sub_29A1E2240(v3, this + 1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPath::GetName(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
  if ((*NameToken & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    return ((*NameToken & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  return pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(NameToken);
}

pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  }

  else
  {
    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
    {
      goto LABEL_22;
    }

    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  }

  v3 = Ptr[14];
  if (v3 <= 2)
  {
    if (Ptr[14])
    {
      if (v3 == 1)
      {
        return (Ptr + 16);
      }

      if (v3 != 2)
      {
        goto LABEL_22;
      }

      return pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::_GetNameImpl(Ptr);
    }

    else
    {
      v7 = Ptr[15];
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (v7)
      {
        if (!result)
        {

          return sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }
      }

      else
      {
        if (!result)
        {
          result = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        return (result + 8);
      }
    }
  }

  else
  {
    if (Ptr[14] <= 6u)
    {
      if (v3 != 3 && v3 != 6)
      {
LABEL_22:
        v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v6)
        {
          v6 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        return (v6 + 88);
      }

      return (Ptr + 16);
    }

    if (v3 == 7)
    {
      return (Ptr + 16);
    }

    if (v3 != 8)
    {
      goto LABEL_22;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v5)
    {
      v5 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    return (v5 + 64);
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfPath::GetElementString@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetElementToken(this, &v6);
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    result = ((v6 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  if (result[23] < 0)
  {
    result = sub_29A008D14(a2, *result, *(result + 1));
  }

  else
  {
    v5 = *result;
    *(a2 + 16) = *(result + 2);
    *a2 = v5;
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPath::GetElementToken(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, atomic_uint **a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  }

  else
  {
    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
    {
LABEL_7:
      *a2 = 0;
      return;
    }

    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  }

  if (Ptr->__r_.__value_.__s.__data_[14] == 1)
  {
    v5 = Ptr->__r_.__value_.__r.__words[2];
    *a2 = v5;
    if ((v5 & 7) != 0)
    {
      v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 = v6;
      }
    }
  }

  else
  {
    if (!Ptr->__r_.__value_.__s.__data_[14])
    {
      goto LABEL_7;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_GetElementImpl(Ptr, a2);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, v11);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v11, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
    return sub_29A1DE3A4(v11);
  }

  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (Ptr && *(Ptr + 14) == 3)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, v11);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(v11, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
    return sub_29A1DE3A4(v11);
  }

  v7 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (v7 && *(v7 + 14) == 6)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, v11);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute(v11, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
    return sub_29A1DE3A4(v11);
  }

  v11[0] = "sdf/path.cpp";
  v11[1] = "ReplaceName";
  v11[2] = 470;
  v11[3] = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(const TfToken &) const";
  v12 = 0;
  v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(this) & 0xFFFFFFFFFFFFFFF8;
  if (v9)
  {
    v10 = (v9 + 16);
    if (*(v9 + 39) < 0)
    {
      v10 = *v10;
    }
  }

  else
  {
    v10 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "%s is not a prim, property, or relational attribute path", v10);
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
}

void sub_29A38BD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, _DWORD *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
    {
      Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
      Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(*Ptr);
      sub_29A1E21F4(a2, this);
      sub_29A1E2240(a2 + 1, &Handle);
      return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&Handle);
    }

    v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    v7 = v6;
    if (v6[15])
    {
      goto LABEL_27;
    }

    if (v6 == pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetRelativeRootNode(v6))
    {
      goto LABEL_30;
    }

    v8 = v7[14];
    if (v8 <= 2)
    {
      if (v7[14])
      {
        if (v8 != 1)
        {
          if (v8 == 2)
          {
            NameImpl = pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::_GetNameImpl(v7);
            goto LABEL_24;
          }

          goto LABEL_37;
        }

        goto LABEL_23;
      }

      v14 = v7[15];
      NameImpl = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (v14)
      {
        if (!NameImpl)
        {
          NameImpl = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }
      }

      else
      {
        if (!NameImpl)
        {
          NameImpl = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        NameImpl = (NameImpl + 8);
      }
    }

    else
    {
      if (v7[14] <= 6u)
      {
        if (v8 != 3 && v8 != 6)
        {
          goto LABEL_37;
        }

LABEL_23:
        NameImpl = (v7 + 16);
        goto LABEL_24;
      }

      if (v8 == 7)
      {
        goto LABEL_23;
      }

      if (v8 != 8)
      {
LABEL_37:
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v15)
        {
          v15 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        NameImpl = (v15 + 88);
        goto LABEL_24;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (!v10)
      {
        v10 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      NameImpl = (v10 + 64);
    }

LABEL_24:
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v11)
    {
      v16 = NameImpl;
      v11 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      NameImpl = v16;
    }

    if ((*(v11 + 6) ^ *NameImpl) >= 8)
    {
LABEL_27:
      v12 = *v7;

      return sub_29A392268(a2, v12, 0);
    }

LABEL_30:
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v13)
    {
      v13 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrim(v7, v13 + 6, &v19, sub_29A3922C4, &v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17);
    sub_29A1DDD84(a2, &v18);
    sub_29A1DDDC0(a2 + 1, &v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
    return sub_29A1DE3A4(&v18);
  }

  sub_29A1E21F4(a2, this);

  return sub_29A1E2240(a2 + 1, this + 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _DWORD *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    return sub_29B29C940(a2, this, a3);
  }

  v6 = off_2A1B71A90();
  v7 = *v6;
  if (!*v6)
  {
    v17 = v6;
    v7 = off_2A1B71AA8();
    *v17 = sub_29A394050(v7);
  }

  v8 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v9 = bswap64(0x9E3779B97F4A7C55 * (((v8 + (*this >> 8) + (v8 + (*this >> 8)) * (v8 + (*this >> 8))) >> 1) + (*this >> 8)));
  v10 = 1;
  while (1)
  {
    v11 = v7 + 16 * (v9 & 0x3FFF);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator==(v11, this) && (*a2 ^ *(v11 + 8)) <= 7)
    {
      break;
    }

    v12 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v11);
    v14 = v10-- != 0;
    ++v9;
    if (!v12 || !v14)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v21);
      goto LABEL_13;
    }
  }

  sub_29A1E21F4(v21, (v11 + 4));
LABEL_13:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = v21[0];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v21);
  v24 = v22;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(v21);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v23))
  {
    sub_29A1DDD84(a3, &v23);
    sub_29A1DDDC0(a3 + 1, &v24);
  }

  else
  {
    v21[0] = this;
    v21[1] = a2;
    v21[2] = &v22;
    v22 = 0;
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrim(Ptr, a2, v21, sub_29A3922CC, &v20);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v20))
    {
      goto LABEL_16;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v18)
    {
      v18 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    if ((*(v18 + 6) ^ *a2) > 7)
    {
LABEL_16:
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
      sub_29A1DDD84(a3, &v20);
      sub_29A1DDDC0(a3 + 1, &v19);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, a3);
    }

    sub_29A1DE3A4(&v20);
    sub_29A38D42C(&v22);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  return sub_29A1DE3A4(&v23);
}

void sub_29A38C2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, int a15)
{
  sub_29A1DE3A4(&a10);
  sub_29A38D42C(&a14);
  sub_29A1DCEA8(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
    v19 = "sdf/path.cpp";
    v20 = "AppendProperty";
    v21 = 933;
    v22 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(const TfToken &) const";
    v23 = 0;
    v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

    v15 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(this) & 0xFFFFFFFFFFFFFFF8;
    if (v15)
    {
      v16 = (v15 + 16);
      if (*(v15 + 39) < 0)
      {
        v16 = *v16;
      }
    }

    else
    {
      v16 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v19, "Can only append a property '%s' to a prim path (%s)", v14, v13, v16);
  }

  else
  {
    v18 = 0;
    v19 = this;
    v20 = a2;
    v21 = &v18;
    v6 = off_2A1B71AC0();
    v7 = *v6;
    if (!*v6)
    {
      sub_29B29CA20(v6, v24);
      v7 = v24[0];
    }

    v8 = 1;
    v9 = bswap64(2135587925 * (*a2 & 0xFFF8)) >> 54;
    while (1)
    {
      v10 = *(v7 + 16 * (v9 & 0x3FF));
      if ((v10 ^ *a2) <= 7)
      {
        break;
      }

      if (v10)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      --v8;
      LOWORD(v9) = v9 + 1;
      if (v11)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17);
        goto LABEL_13;
      }
    }

    sub_29A1E2240(&v17, (v7 + 16 * (v9 & 0x3FF) + 8));
LABEL_13:
    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrimProperty(a2, &v19, sub_29A39283C, v24);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17))
    {
      sub_29A2258F0(a3, this);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
    sub_29A38D42C(&v18);
  }
}

void ***pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _DWORD *a3@<X8>)
{
  v9[0] = this;
  v9[1] = a2;
  v9[2] = &v10;
  v10 = 0;
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateRelationalAttribute(Ptr, a2, v9, sub_29A392F60, &v8);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8))
  {
    sub_29A1E21F4(a3, this);
    sub_29A1E2240(a3 + 1, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  return sub_29A38D42C(&v10);
}

void sub_29A38C71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A38D42C(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1);
  if ((Ptr & 1) != 0 && (Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1)) != 0 && (*(Ptr + 15) & 4) != 0)
  {
    while ((*(Ptr + 14) & 0xFE) != 4)
    {
      Ptr = *Ptr;
      if (!Ptr)
      {
        goto LABEL_6;
      }
    }

    return (Ptr + 16);
  }

  else
  {
LABEL_6:
    pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(Ptr);
    return &qword_2A173F9E0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(uint64_t a1, uint64_t a2)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((a1 + 4));
    if (result)
    {
      v5 = result;
      if ((*(result + 15) & 4) != 0)
      {
        while ((*(v5 + 14) & 0xFE) != 4)
        {
          v5 = *v5;
          if (!v5)
          {
            return result;
          }
        }

        while (1)
        {
          v6 = *(v5 + 14);
          if (v6 == 4 || v6 == 5)
          {
            v7 = (v5 + 16);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(result);
            v7 = &qword_2A173F9E0;
          }

          sub_29A1E28B4(a2, v7);
          result = pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(v7, a2);
          v5 = *v5;
          if (!v5 || (*(v5 + 15) & 4) == 0)
          {
            break;
          }

          while ((*(v5 + 14) & 0xFE) != 4)
          {
            v5 = *v5;
            if (!v5)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

std::string *pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(this);
  if (result)
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    if (*(Ptr + 14) == 2)
    {
      v6 = *(Ptr + 16);
    }

    else
    {
      Ptr = pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_GetEmptyVariantSelection(Ptr);
      v6 = Ptr;
    }

    if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Ptr);
    }

    v8 = std::string::operator=(a2, EmptyString);
    if ((v6[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v9 = ((v6[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
    }

    return std::string::operator=((a2 + 24), v9);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(pxrInternal__aapl__pxrReserved__::SdfPath *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this);
    if (result)
    {
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1))
      {
        if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator!=(this, a2))
        {
          result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1);
          if (!result)
          {
            return result;
          }

          Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
          v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a2 + 1);
          if (Ptr && Ptr != v6)
          {
            do
            {
              Ptr = *Ptr;
              if (Ptr)
              {
                v7 = Ptr == v6;
              }

              else
              {
                v7 = 1;
              }
            }

            while (!v7);
          }

          return Ptr == v6;
        }
      }

      else
      {
        v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
        Ptr = v8;
        if ((*(v8 + 15) & 1) != 0 && *a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8))
        {
          return 1;
        }

        v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2);
        v9 = *(v6 + 12);
        v10 = *(Ptr + 12);
        if (v10 >= v9)
        {
          if (v10 > v9)
          {
            do
            {
              Ptr = *Ptr;
              --v10;
            }

            while (v10 > v9);
          }

          return Ptr == v6;
        }
      }

      return 0;
    }
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, _DWORD *a2@<X8>)
{
  for (i = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this); i; i = *i)
  {
    if (*(i + 14) == 1)
    {
      break;
    }
  }

  return sub_29A392268(a2, i, 0);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimOrPrimVariantSelectionPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, _DWORD *a2@<X8>)
{
  for (i = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this); i; i = *i)
  {
    if (*(i + 14) - 1 < 2)
    {
      break;
    }
  }

  return sub_29A392268(a2, i, 0);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, _DWORD *a2@<X8>)
{
  if (*this == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this))
  {
    sub_29A1E21F4(a2, this);

    return sub_29A1E2240(a2 + 1, this + 1);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(this, a2);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, int *a2@<X8>)
{
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  if (Ptr && (*(Ptr + 15) & 2) != 0)
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    v8 = v5;
    if (v5)
    {
      do
      {
        if (*(v5 + 14) != 2)
        {
          sub_29A0A71C8(&__p, &v8);
          v5 = v8;
        }

        v5 = *v5;
        v8 = v5;
      }

      while (v5);
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

    sub_29A392268(a2, *(v6 - 1), 0);
    if (v10 - 1 != __p)
    {
      sub_29A38CCFC(a2, *(v10 - 2), &v7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    sub_29A225948(a2 + 1, this + 1);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_29A1E21F4(a2, this);

    sub_29A1E2240(a2 + 1, this + 1);
  }
}

void sub_29A38CCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A38CCFC(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v3 = this;
  v5 = *(a2 + 14);
  if (v5 > 4)
  {
    if (*(a2 + 14) > 6u)
    {
      if (v5 == 7)
      {
        v13 = (a2 + 16);

        pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(this, v13, a3);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression(this, a3);
      }
    }

    else if (v5 == 5)
    {
      v11 = (a2 + 16);

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(this, v11, a3);
    }

    else
    {
      if (v5 != 6)
      {
        goto LABEL_35;
      }

      v8 = (a2 + 16);

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute(this, v8, a3);
    }
  }

  else if (*(a2 + 14) > 2u)
  {
    if (v5 == 3)
    {
      v12 = (a2 + 16);

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(this, v12, a3);
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_35;
      }

      v9 = (a2 + 16);

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(this, v9, a3);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = *(a2 + 16);
        if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          this = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
          v7 = this;
        }

        if ((v6[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((v6[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(v3, v7, EmptyString, a3);
        return;
      }

LABEL_35:
      v16[0] = "sdf/path.cpp";
      v16[1] = "_AppendNode";
      v16[2] = 667;
      v16[3] = "SdfPath pxrInternal__aapl__pxrReserved__::_AppendNode(const SdfPath &, const Sdf_PathNode *)";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Unexpected node type %i", v5);
      pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v14);
      sub_29A1E21F4(a3, &qword_2A173F9E0);
      sub_29A1E2240(a3 + 1, &qword_2A173F9E0 + 1);
      return;
    }

    v10 = (a2 + 16);

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(this, v10, a3);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(this);
  if (*this == qword_2A173F9E0)
  {
    v31 = "sdf/path.cpp";
    v32 = "AppendPath";
    v33 = 700;
    v34 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(const SdfPath &) const";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "Cannot append to invalid path");
LABEL_19:
    pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v7);
    sub_29A1E21F4(a3, &qword_2A173F9E0);
    sub_29A1E2240(a3 + 1, &qword_2A173F9E0 + 1);
    return;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v6);
  if (*a2 == qword_2A173F9E0)
  {
    v31 = "sdf/path.cpp";
    v32 = "AppendPath";
    v33 = 705;
    v34 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(const SdfPath &) const";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(this, &v28);
    if (v30 >= 0)
    {
      v8 = &v28;
    }

    else
    {
      v8 = v28;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "Cannot append invalid path to <%s>", v8);
LABEL_17:
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    goto LABEL_19;
  }

  IsAbsolutePath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2);
  if (IsAbsolutePath)
  {
    v31 = "sdf/path.cpp";
    v32 = "AppendPath";
    v33 = 710;
    v34 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(const SdfPath &) const";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(a2, &v28);
    v10 = SHIBYTE(v30);
    v11 = v28;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(this, __p);
    if (v10 >= 0)
    {
      v13 = &v28;
    }

    else
    {
      v13 = v11;
    }

    if (v27 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v31, "Cannot append absolute path <%s> to another path <%s>.", v12, v13, v14);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_17;
  }

  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(IsAbsolutePath))
  {
    sub_29A1E21F4(a3, this);

    sub_29A1E2240(a3 + 1, this + 1);
    return;
  }

  v15 = *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this) + 14);
  v16 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1);
  v18 = v15 > 2u || v16;
  if (v18 == 1)
  {
    v31 = "sdf/path.cpp";
    v32 = "AppendPath";
    v33 = 722;
    v34 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(const SdfPath &) const";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v31, "Cannot append a path to another path that is not a root or a prim path.", v17);
    goto LABEL_19;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  for (__p[0] = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a2 + 1); __p[0]; __p[0] = *__p[0])
  {
    sub_29A0A71C8(&v28, __p);
  }

  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2);
  for (i = Ptr; ; i = *__p[0])
  {
    __p[0] = i;
    RelativeRootNode = pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetRelativeRootNode(Ptr);
    if (i == RelativeRootNode)
    {
      break;
    }

    sub_29A0A71C8(&v28, __p);
  }

  if (*(*(v29 - 1) + 14) == 3 && *this == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(RelativeRootNode))
  {
    v31 = "sdf/path.cpp";
    v32 = "AppendPath";
    v33 = 743;
    v34 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(const SdfPath &) const";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v31, "Cannot append a property path to the absolute root path.", v22);
    pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v23);
    sub_29A1E21F4(a3, &qword_2A173F9E0);
    sub_29A1E2240(a3 + 1, &qword_2A173F9E0 + 1);
LABEL_38:
    v24 = v28;
    goto LABEL_42;
  }

  sub_29A1E21F4(a3, this);
  sub_29A1E2240(a3 + 1, this + 1);
  v24 = v28;
  v25 = v29;
  if (v29 != v28)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v28);
    if (*a3 != qword_2A173F9E0)
    {
      sub_29A38CCFC(a3, *(v25 - 1), &v31);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    goto LABEL_38;
  }

LABEL_42:
  if (v24)
  {
    v29 = v24;
    operator delete(v24);
  }
}

void sub_29A38D3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_29A38D42C(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        if (*v3 == 1)
        {
          v6 = "sdf/path.cpp";
          v7 = "~_DeferredDiagnostics";
          v8 = 65;
          v9 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DeferredDiagnostics::~_DeferredDiagnostics()";
          v10 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v6, 1, v3 + 1);
        }

        else if (*v3 == 6)
        {
          v6 = "sdf/path.cpp";
          v7 = "~_DeferredDiagnostics";
          v8 = 62;
          v9 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DeferredDiagnostics::~_DeferredDiagnostics()";
          v10 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v6, (v3 + 8));
        }

        v3 += 32;
      }

      while (v3 != v4);
    }
  }

  sub_29A3927F8(a1, 0);
  return a1;
}

void ***pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v11 = 0;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = &v11;
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrimVariantSelection(Ptr, &v8, &v7, v10, sub_29A392A64, &v9);
  sub_29A1DDD84(a4, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
  sub_29A1DE3A4(&v9);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29A38D42C(&v11);
}

void sub_29A38D5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A38D42C((v10 - 40));
  _Unwind_Resume(a1);
}

void ***pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  v9[0] = this;
  v9[1] = a2;
  v9[2] = &v10;
  v10 = 0;
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateTarget(Ptr, a2, v9, sub_29A392C48, &v8);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8))
  {
    sub_29A1E21F4(a3, this);
    sub_29A1E2240(a3 + 1, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  return sub_29A38D42C(&v10);
}

void sub_29A38D720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A38D42C(va);
  _Unwind_Resume(a1);
}

void ***pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  v9[0] = this;
  v9[1] = a2;
  v9[2] = &v10;
  v10 = 0;
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateMapper(Ptr, a2, v9, sub_29A393194, &v8);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8))
  {
    sub_29A1E21F4(a3, this);
    sub_29A1E2240(a3 + 1, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  return sub_29A38D42C(&v10);
}

void sub_29A38D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A38D42C(va);
  _Unwind_Resume(a1);
}

void ***pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _DWORD *a3@<X8>)
{
  v9[0] = this;
  v9[1] = a2;
  v9[2] = &v10;
  v10 = 0;
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateMapperArg(Ptr, a2, v9, sub_29A393548, &v8);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8))
  {
    sub_29A1E21F4(a3, this);
    sub_29A1E2240(a3 + 1, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  return sub_29A38D42C(&v10);
}

void sub_29A38D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A38D42C(va);
  _Unwind_Resume(a1);
}

void ***pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, _DWORD *a2@<X8>)
{
  v7[0] = this;
  v7[1] = &v8;
  v8 = 0;
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreateExpression(Ptr, v7, sub_29A393764, &v6);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6))
  {
    sub_29A1E21F4(a2, this);
    sub_29A1E2240(a2 + 1, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }

  return sub_29A38D42C(&v8);
}

void sub_29A38D9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A38D42C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementString(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, int *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v4);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a1, &v4, a2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {
    sub_29B29CAFC(EmptyString, a3);
    return;
  }

  v7 = *(EmptyString + 23);
  v8 = EmptyString;
  if (v7 < 0)
  {
    v8 = *EmptyString;
  }

  v9 = *v8;
  if (v9 == 91)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v7 = EmptyString[1];
    }

    std::string::basic_string(&v47, EmptyString, 1uLL, v7 - 2, &v49);
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v48, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(this, &v48, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v48 + 1);
    goto LABEL_18;
  }

  if (v9 != 46)
  {
    if (v9 != 123)
    {

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(this, a2, a3);
      return;
    }

    pxrInternal__aapl__pxrReserved__::TfStringTokenize(EmptyString, "{=}", &v47);
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v47.__r_.__value_.__l.__size_ - v47.__r_.__value_.__r.__words[0]) >> 3);
    if (v26 == 1)
    {
      v27 = 0;
    }

    else
    {
      if (v26 != 2)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v25);
        sub_29A1E21F4(a3, &qword_2A173F9E0);
        sub_29A1E2240(a3 + 1, &qword_2A173F9E0 + 1);
LABEL_78:
        v48 = &v47;
        sub_29A012C90(&v48);
        return;
      }

      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v48);
      v27 = v48;
    }

    v28 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v48);
    if ((v48 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v29 = (v48 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
      v29 = v28;
    }

    v30 = (v27 & 0xFFFFFFFFFFFFFFF8);
    if ((v27 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v31 = (v30 + 4);
    }

    else
    {
      v31 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(this, v29, v31, a3);
    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_78;
  }

  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (Ptr)
  {
    v11 = *(Ptr + 14);
    if (v11 == 6 || v11 == 3)
    {
      if ((atomic_load_explicit(&qword_2A173F9A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F9A8))
      {
        v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v32)
        {
          v32 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        if ((*(v32 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v33 = ((*(v32 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v33 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
        }

        v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v36)
        {
          v36 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        if ((*(v36 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v37 = ((*(v36 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v37 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v36);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v33, v37, &v47);
        v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v40)
        {
          v40 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        if ((*(v40 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v41 = ((*(v40 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v41 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v40);
        }

        v42 = *(v41 + 23);
        if (v42 >= 0)
        {
          v43 = v41;
        }

        else
        {
          v43 = *v41;
        }

        if (v42 >= 0)
        {
          v44 = *(v41 + 23);
        }

        else
        {
          v44 = v41[1];
        }

        v45 = std::string::append(&v47, v43, v44);
        v46 = *&v45->__r_.__value_.__l.__data_;
        unk_2A173F9A0 = *(&v45->__r_.__value_.__l + 2);
        xmmword_2A173F990 = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A173F990, &dword_299FE7000);
        __cxa_guard_release(&qword_2A173F9A8);
      }

      if ((atomic_load_explicit(&qword_2A173F9C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F9C8))
      {
        v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v34)
        {
          v34 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        if ((*(v34 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v35 = ((*(v34 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v35 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
        }

        v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v38)
        {
          v38 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        if ((*(v38 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v39 = ((*(v38 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v39 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v35, v39, &qword_2A173F9B0);
        __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A173F9B0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A173F9C8);
      }

      v12 = *(EmptyString + 23);
      if (v12 >= 0)
      {
        v13 = *(EmptyString + 23);
      }

      else
      {
        v13 = EmptyString[1];
      }

      v14 = qword_2A173F9B8;
      if (byte_2A173F9C7 >= 0)
      {
        v14 = byte_2A173F9C7;
      }

      if (v13 == v14)
      {
        v15 = v12 >= 0 ? EmptyString : *EmptyString;
        v16 = byte_2A173F9C7 >= 0 ? &qword_2A173F9B0 : qword_2A173F9B0;
        if (!memcmp(v15, v16, v13))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression(this, a3);
          return;
        }
      }

      v17 = byte_2A173F9A7;
      v18 = byte_2A173F9A7 >= 0 ? &xmmword_2A173F990 : xmmword_2A173F990;
      v19 = strlen(v18);
      if (v13 >= v19)
      {
        v20 = v19;
        v21 = v12 >= 0 ? EmptyString : *EmptyString;
        if (!strncmp(v21, v18, v20))
        {
          if ((v17 & 0x80u) == 0)
          {
            v24 = v17;
          }

          else
          {
            v24 = *(&xmmword_2A173F990 + 1);
          }

          std::string::basic_string(&v47, EmptyString, v24, v13 + ~v24, &v49);
          pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v48, &v47);
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(this, &v48, a3);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v48 + 1);
LABEL_18:
          sub_29A1DE3A4(&v48);
          return;
        }
      }
    }
  }

  std::string::basic_string(&v47, EmptyString, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v49);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v48);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v22 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if (v22 && *(v22 + 14) == 5)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(this, &v48, a3);
  }

  else
  {
    v23 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
    if (v23 && *(v23 + 14) == 4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute(this, &v48, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(this, &v48, a3);
    }
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A38E0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A173F9A8);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::_ReplacePrimPrefix(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, int *a4@<X8>)
{
  v33 = *MEMORY[0x29EDCA608];
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  v9 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2);
  v10 = *(v9 + 12);
  v11 = *(Ptr + 12);
  if (v11 >= v10)
  {
    v12 = v9;
    v13 = v11 - v10;
    memset(v32, 0, sizeof(v32));
    if ((v11 - v10) < 0x11)
    {
      v15 = 0;
      v16 = v32;
    }

    else
    {
      if (v13 >> 61)
      {
        v14 = -1;
      }

      else
      {
        v14 = 8 * v13;
      }

      v15 = operator new[](v14);
      v16 = v15;
    }

    if (v11 <= v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13;
      v18 = v16;
      v19 = v13;
      do
      {
        *v18++ = Ptr;
        Ptr = *Ptr;
        --v19;
      }

      while (v19);
    }

    if (Ptr != v12)
    {
      sub_29A1E21F4(a4, this);
      sub_29A1E2240(a4 + 1, this + 1);
      if (!v15)
      {
        return;
      }

      goto LABEL_18;
    }

    sub_29A1E21F4(a4, a3);
    sub_29A1E2240(a4 + 1, a3 + 1);
    if (!v17)
    {
      sub_29A225948(a4 + 1, this + 1);
      if (!v15)
      {
        return;
      }

LABEL_18:
      operator delete[](v15);
      return;
    }

    v20 = (v16 - 1);
    v21 = 8 * v17;
    v22 = *&v20[v21];
    if (*(v22 + 14) != 1)
    {
      sub_29A38CCFC(a4, v22, v30);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    v23 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a4);
    v24 = *&v20[v21];
    v25 = v24[14];
    if (v25 <= 2)
    {
      if (v24[14])
      {
        if (v25 != 1)
        {
          if (v25 == 2)
          {
            NameImpl = pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::_GetNameImpl(v24);
            goto LABEL_38;
          }

          goto LABEL_43;
        }

        goto LABEL_37;
      }

      v28 = v24[15];
      NameImpl = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (v28)
      {
        if (!NameImpl)
        {
          NameImpl = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }
      }

      else
      {
        if (!NameImpl)
        {
          NameImpl = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        ++NameImpl;
      }
    }

    else
    {
      if (v24[14] <= 6u)
      {
        if (v25 != 3 && v25 != 6)
        {
          goto LABEL_43;
        }

LABEL_37:
        NameImpl = (v24 + 16);
        goto LABEL_38;
      }

      if (v25 == 7)
      {
        goto LABEL_37;
      }

      if (v25 != 8)
      {
LABEL_43:
        v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v29)
        {
          v29 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        NameImpl = (v29 + 88);
        goto LABEL_38;
      }

      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (!v27)
      {
        v27 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      NameImpl = (v27 + 64);
    }

LABEL_38:
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrim(v23, NameImpl, &v31, sub_29A3938FC, v30);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29A1E21F4(a4, this);

  sub_29A1E2240(a4 + 1, this + 1);
}

void sub_29A38E504(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1);
  if (v2)
  {
    operator delete[](v2);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::_ReplaceTargetPathPrefixes(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, pxrInternal__aapl__pxrReserved__::SdfPath *a4@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  if ((*(Ptr + 15) & 4) != 0)
  {
    v9 = Ptr;
    memset(v21, 0, sizeof(v21));
    v10 = *(Ptr + 12);
    if (v10 < 0x11)
    {
      v11 = 0;
      v12 = v21;
    }

    else
    {
      v11 = operator new[](8 * v10);
      v12 = v11;
    }

    v13 = 0;
    while ((*(v9 + 15) & 4) != 0)
    {
      v14 = v13 + 1;
      *(v12 + v13) = v9;
      v9 = *v9;
      ++v13;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v14 = v13;
LABEL_13:
    v15 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    sub_29A392268(a4, v15, v9);
    if (v14)
    {
      v16 = *(v12 + v14 - 1);
      v17 = *(v16 + 14);
      if (v17 != 3)
      {
        if (v17 != 4)
        {
          if (v17 == 5)
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v18, (v16 + 16), a2, a3, 1);
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(a4, &v18, v19);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          sub_29A38CCFC(a4, v16, v19);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v18, (v16 + 16), a2, a3, 1);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(a4, &v18, v19);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrimProperty((v16 + 16), &v20, sub_29A393904, v19);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (v11)
    {
      operator delete[](v11);
    }
  }

  else
  {
    sub_29A1E21F4(a4, this);

    sub_29A1E2240(a4 + 1, this + 1);
  }
}

void sub_29A38E820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  if (v11)
  {
    operator delete[](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a4@<X2>, int a5@<W3>)
{
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this) || *a3 == *a4)
  {
    sub_29A1E21F4(a1, this);
    v10 = a1 + 1;
    v11 = this + 4;
LABEL_15:

    return sub_29A1E2240(v10, v11);
  }

  v12 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a3);
  if (!v12 || !(v12 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v12);
    a4 = &qword_2A173F9E0;
    goto LABEL_14;
  }

  if (*this == *a3)
  {
LABEL_14:
    sub_29A1E21F4(a1, a4);
    v10 = a1 + 1;
    v11 = a4 + 4;
    goto LABEL_15;
  }

  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  v14 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a3 + 1))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::_ReplacePrimPrefix(this, a3, a4, &v16);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (v14)
  {
    if (Ptr == pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a3))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::_ReplacePropPrefix(this, a3, a4, a5, &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (a5 && (*(v14 + 15) & 4) != 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::_ReplaceTargetPathPrefixes(this, a3, a4, &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  sub_29A1E21F4(a1, this);
  sub_29A1E2240(a1 + 1, this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  return sub_29A1DE3A4(&v17);
}

void sub_29A38EB0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::_ReplacePropPrefix(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::SdfPath *a5@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  v11 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a2 + 1);
  v12 = *(v11 + 12);
  v13 = *(Ptr + 12);
  if (v13 >= v12)
  {
    v14 = v11;
    v27 = a4;
    v15 = a2;
    v16 = a3;
    v17 = v13 - v12;
    memset(v31, 0, sizeof(v31));
    if ((v13 - v12) < 0x11)
    {
      __p = 0;
      v19 = v31;
    }

    else
    {
      if (v17 >> 61)
      {
        v18 = -1;
      }

      else
      {
        v18 = 8 * v17;
      }

      __p = operator new[](v18);
      v19 = __p;
    }

    if (v13 <= v12)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
      v21 = v19;
      v22 = v17;
      do
      {
        *v21++ = Ptr;
        Ptr = *Ptr;
        --v22;
      }

      while (v22);
    }

    if (Ptr == v14)
    {
      sub_29A1E21F4(a5, v16);
      sub_29A1E2240(a5 + 1, v16 + 1);
      if (v20)
      {
        v24 = v19[v20 - 1];
        v25 = *(v24 + 14);
        if (v25 != 5)
        {
          if (v25 != 4)
          {
            if (v25 == 3)
            {
              pxrInternal__aapl__pxrReserved__::Sdf_PathNode::FindOrCreatePrimProperty((v24 + 16), &v30, sub_29A39390C, v29);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            sub_29A38CCFC(a5, v24, v29);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          if (v27)
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v28, (v24 + 16), v15, v16, 1);
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(a5, &v28, v29);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          sub_29A38CCFC(a5, v24, v29);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        if (v27)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v28, (v24 + 16), v15, v16, 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(a5, &v28, v29);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        sub_29A38CCFC(a5, v24, v29);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }

    else if (v27 && (v23 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1)) != 0 && (*(v23 + 15) & 4) != 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::_ReplaceTargetPathPrefixes(this, v15, v16, a5);
    }

    else
    {
      sub_29A1E21F4(a5, this);
      sub_29A1E2240(a5 + 1, this + 1);
    }

    if (__p)
    {
      operator delete[](__p);
    }
  }

  else if (a4 && (*(Ptr + 15) & 4) != 0)
  {

    pxrInternal__aapl__pxrReserved__::SdfPath::_ReplaceTargetPathPrefixes(this, a2, a3, a5);
  }

  else
  {
    sub_29A1E21F4(a5, this);

    sub_29A1E2240(a5 + 1, this + 1);
  }
}

void sub_29A38EF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, int a10, char a11)
{
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

int *pxrInternal__aapl__pxrReserved__::SdfPath::GetCommonPrefix@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1) && !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator!=(this, a2))
    {
      Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
      v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a2 + 1);
      v9 = 0;
    }

    else
    {
      Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
      v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2);
      v9 = 1;
    }

    v10 = *(Ptr + 12);
    v11 = *(v8 + 12);
    if (v10 <= v11)
    {
      if (v10 < v11)
      {
        do
        {
          v8 = *v8;
          --v11;
        }

        while (v11 > v10);
      }
    }

    else
    {
      do
      {
        Ptr = *Ptr;
        --v10;
      }

      while (v10 > v11);
    }

    while (Ptr != v8)
    {
      Ptr = *Ptr;
      v8 = *v8;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
    if (v9)
    {

      return sub_29A38F1DC(a3, Ptr);
    }

    else
    {
      sub_29A2258F0(a3, this);

      return sub_29A38F23C(a3 + 1, Ptr);
    }
  }

  else
  {
    v13[0] = "sdf/path.cpp";
    v13[1] = "GetCommonPrefix";
    v13[2] = 1460;
    v13[3] = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::GetCommonPrefix(const SdfPath &) const";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "GetCommonPrefix(): invalid path.", v6);
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

int *sub_29A38F1DC(int *a1, uint64_t a2)
{
  Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(a2);
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(&Handle, a1);
  sub_29A1DE3A4(&Handle);
  return a1;
}

int *sub_29A38F23C(int *a1, uint64_t a2)
{
  Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(&Handle, a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&Handle);
  return a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::RemoveCommonSuffix@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, char a3@<W2>, _DWORD *a4@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this) || !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2) || (v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1), v8 != pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1)))
  {

    return sub_29A23E7D8(a4, this, a2);
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
  {
LABEL_18:
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
    v17 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2);
    v18 = *(Ptr + 12);
    if (v18 >= 2)
    {
      while (1)
      {
        if (*(v17 + 12) < 2u)
        {
          v18 = 1;
          goto LABEL_26;
        }

        if ((sub_29A38F694(Ptr, v17) & 1) == 0)
        {
          break;
        }

        Ptr = *Ptr;
        v17 = *v17;
        v18 = *(Ptr + 12);
        if (v18 <= 1)
        {
          goto LABEL_26;
        }
      }

      Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(Ptr);
      atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
      v24 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(0);
      v20 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(v17);
      atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
      v21 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(0);
      sub_29A393914(a4, &Handle, &v20);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
      sub_29A1DE3A4(&v20);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
      return sub_29A1DE3A4(&Handle);
    }

LABEL_26:
    if (v18 && (a3 & 1) == 0 && *(v17 + 12) && (sub_29A38F694(Ptr, v17) & 1) != 0)
    {
      Ptr = *Ptr;
      v17 = *v17;
      Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(Ptr);
      if (!Ptr)
      {
        goto LABEL_34;
      }
    }

    else
    {
      Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(Ptr);
    }

    atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
LABEL_34:
    v24 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(0);
    v20 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(v17);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
    }

    v21 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(0);
    sub_29A393914(a4, &Handle, &v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
    sub_29A1DE3A4(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
    return sub_29A1DE3A4(&Handle);
  }

  v10 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
  v11 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a2 + 1);
  v12 = v11;
  v13 = v10 != 0;
  v14 = v11 != 0;
  if (!v10 || !v11)
  {
LABEL_16:
    if (v13 || v14)
    {
      v22 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(v10);
      sub_29A1E21F4(&Handle, this);
      sub_29A1E2240(&v24, &v22);
      v19 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(v12);
      sub_29A1E21F4(&v20, a2);
      sub_29A1E2240(&v21, &v19);
      sub_29A393914(a4, &Handle, &v20);
      sub_29A1DCEA8(&v20);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DCEA8(&Handle);
      return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
    }

    goto LABEL_18;
  }

  while ((sub_29A38F694(v10, v12) & 1) != 0)
  {
    v10 = *v10;
    v12 = *v12;
    v13 = v10 != 0;
    v14 = v12 != 0;
    if (v10)
    {
      v15 = v12 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_16;
    }
  }

  v22 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(v10);
  sub_29A1E21F4(&Handle, this);
  sub_29A1E2240(&v24, &v22);
  v19 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(v12);
  sub_29A1E21F4(&v20, a2);
  sub_29A1E2240(&v21, &v19);
  sub_29A393914(a4, &Handle, &v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  sub_29A1DE3A4(&Handle);
  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
}

uint64_t sub_29A38F694(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 14);
  if (v4 != *(a2 + 14))
  {
    v5 = 0;
    return v5 & 1;
  }

  if (*(a1 + 14) <= 3u)
  {
    if (*(a1 + 14) > 1u)
    {
      if (v4 == 2)
      {
        v7 = vmovn_s64(vcgtq_u64(vdupq_n_s64(8uLL), veorq_s8(**(a2 + 16), **(a1 + 16))));
        v5 = v7.i8[0] & v7.i8[4];
        return v5 & 1;
      }

      goto LABEL_13;
    }

    if (*(a1 + 14))
    {
LABEL_13:
      v5 = (*(a2 + 16) ^ *(a1 + 16)) < 8uLL;
      return v5 & 1;
    }

    v6 = ((*(a2 + 15) ^ *(a1 + 15)) & 1) == 0;
  }

  else
  {
    if (*(a1 + 14) > 5u)
    {
      if (v4 != 6 && v4 != 7)
      {
        if (v4 == 8)
        {
          v5 = 1;
        }

        else
        {
          v11 = v2;
          v12 = v3;
          v9[0] = "sdf/pathNode.h";
          v9[1] = "Compare";
          v9[2] = 647;
          v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_PathNode::Compare(const Sdf_PathNode &) const [Comp = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_NodeEqual]";
          v10 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Unhandled Sdf_PathNode::NodeType enumerant");
          v5 = 0;
        }

        return v5 & 1;
      }

      goto LABEL_13;
    }

    v6 = *(a1 + 16) == *(a2 + 16);
  }

  v5 = v6;
  return v5 & 1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceTargetPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {
    v25[0] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v25);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v25 + 1);
    v6 = *a2;
    v7 = v25[0];
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v25 + 1);
    sub_29A1DE3A4(v25);
    if (v6 == v7)
    {
      v25[0] = "sdf/path.cpp";
      v25[1] = "ReplaceTargetPath";
      v25[2] = 1594;
      v25[3] = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceTargetPath(const SdfPath &) const";
      v26 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v25, "ReplaceTargetPath(): invalid new target path.", v8);
      *a3 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
      return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
    }

    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 1))
    {
      goto LABEL_16;
    }

    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
    v11 = *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1) + 14);
    if (v11 <= 5)
    {
      if (v11 == 4)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, v25);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(v25, a2, a3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v25 + 1);
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_16;
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, v25);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(v25, a2, a3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v25 + 1);
      }

      v14 = v25;
      return sub_29A1DE3A4(v14);
    }

    if (v11 != 6)
    {
      if (v11 != 7)
      {
        if (v11 == 8)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v23);
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceTargetPath(v25, &v23, a2);
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression(v25, a3);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v25 + 1);
          sub_29A1DE3A4(v25);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
LABEL_51:
          v14 = &v23;
          return sub_29A1DE3A4(v14);
        }

LABEL_16:
        sub_29A1E21F4(a3, this);
        return sub_29A1E2240(a3 + 1, this + 1);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v23);
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceTargetPath(v25, &v23, a2);
      v13 = Ptr[14];
      if (v13 <= 2)
      {
        if (!Ptr[14])
        {
          v20 = Ptr[15];
          NameImpl = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
          if (v20)
          {
            if (!NameImpl)
            {
              NameImpl = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
            }
          }

          else
          {
            if (!NameImpl)
            {
              NameImpl = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
            }

            NameImpl = (NameImpl + 8);
          }

          goto LABEL_50;
        }

        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_64;
          }

          NameImpl = pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::_GetNameImpl(Ptr);
LABEL_50:
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(v25, NameImpl, a3);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v25 + 1);
          sub_29A1DE3A4(v25);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
          goto LABEL_51;
        }
      }

      else if (Ptr[14] > 6u)
      {
        if (v13 != 7)
        {
          if (v13 == 8)
          {
            v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
            if (!v18)
            {
              v18 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
            }

            NameImpl = (v18 + 64);
            goto LABEL_50;
          }

          goto LABEL_64;
        }
      }

      else if (v13 != 3 && v13 != 6)
      {
LABEL_64:
        v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v22)
        {
          v22 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        NameImpl = (v22 + 88);
        goto LABEL_50;
      }

      NameImpl = (Ptr + 16);
      goto LABEL_50;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v23);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceTargetPath(v25, &v23, a2);
    v12 = Ptr[14];
    if (v12 <= 2)
    {
      if (!Ptr[14])
      {
        v19 = Ptr[15];
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (v19)
        {
          if (!v15)
          {
            v15 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
          }
        }

        else
        {
          if (!v15)
          {
            v15 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
          }

          v15 = (v15 + 8);
        }

        goto LABEL_43;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
LABEL_61:
          v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
          if (!v21)
          {
            v21 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
          }

          v15 = (v21 + 88);
          goto LABEL_43;
        }

        v15 = pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::_GetNameImpl(Ptr);
LABEL_43:
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute(v25, v15, a3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v25 + 1);
        sub_29A1DE3A4(v25);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
        goto LABEL_51;
      }
    }

    else if (Ptr[14] > 6u)
    {
      if (v12 != 7)
      {
        if (v12 == 8)
        {
          v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
          if (!v17)
          {
            v17 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
          }

          v15 = (v17 + 64);
          goto LABEL_43;
        }

        goto LABEL_61;
      }
    }

    else if (v12 != 3 && v12 != 6)
    {
      goto LABEL_61;
    }

    v15 = (Ptr + 16);
    goto LABEL_43;
  }

  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
}

void sub_29A38FCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  __p = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&__p + 1);
  v6 = *a2;
  v7 = __p;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p + 1);
  sub_29A1DE3A4(&__p);
  if (v6 == v7)
  {
    __p = "sdf/path.cpp";
    v20 = "MakeAbsolutePath";
    v21 = 1628;
    v22 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(const SdfPath &) const";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MakeAbsolutePath(): anchor is the empty path.", v8);
    return;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a2) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(a2) & 1) == 0)
    {
      __p = "sdf/path.cpp";
      v20 = "MakeAbsolutePath";
      v21 = 1641;
      v22 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(const SdfPath &) const";
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MakeAbsolutePath() requires a prim path as an argument.", v10);
      return;
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this))
      {
        sub_29A2258F0(a3, this);
        sub_29A225948(a3 + 1, this + 1);
      }

      else
      {
        Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
        v13 = *(Ptr + 12);
        if ((v13 & 0x8000000000000000) != 0)
        {
          __p = "sdf/path.cpp";
          v20 = "MakeAbsolutePath";
          v21 = 1660;
          v22 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(const SdfPath &) const";
          v23 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MakeAbsolutePath() found an invalid element count.", v12);
          return;
        }

        v14 = Ptr;
        sub_29A39410C(&__p, v13);
        if (v13)
        {
          v15 = 8 * v13 - 8;
          do
          {
            *(__p + v15) = v14;
            v14 = *v14;
            v15 -= 8;
          }

          while (v15 != -8);
        }

        sub_29A2258F0(a3, a2);
        sub_29A225948(a3 + 1, a2 + 1);
        if (__p != v20)
        {
          sub_29A38CCFC(a3, *__p, &v18);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        if (__p)
        {
          v20 = __p;
          operator delete(__p);
        }
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a3))
      {
        sub_29A225948(a3 + 1, this + 1);
        TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(a3);
        if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(TargetPath))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a3, &__p);
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(&v18, TargetPath, &__p);
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceTargetPath(a3, &v18, &v17);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }
  }

  else
  {
    __p = "sdf/path.cpp";
    v20 = "MakeAbsolutePath";
    v21 = 1634;
    v22 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(const SdfPath &) const";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MakeAbsolutePath() requires an absolute path as an argument.", v9);
  }
}

void sub_29A39006C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, void *__p, uint64_t a13)
{
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&__p);
  sub_29A1DCEA8(v13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, char **a2@<X1>, int *a3@<X8>)
{
  v25 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v25);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25 + 1);
  v6 = *a2;
  v7 = v25;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
  sub_29A1DE3A4(&v25);
  if (v6 == v7)
  {
    v25 = "sdf/path.cpp";
    v26 = "MakeRelativePath";
    v27 = 1712;
    v28 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(const SdfPath &) const";
    v29 = 0;
    v9 = "MakeRelativePath(): anchor is the invalid path.";
LABEL_12:
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v25, v9, v8);
    goto LABEL_13;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
  {
    v25 = "sdf/path.cpp";
    v26 = "MakeRelativePath";
    v27 = 1718;
    v28 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(const SdfPath &) const";
    v29 = 0;
    v9 = "MakeRelativePath() requires an absolute path as an argument.";
    goto LABEL_12;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a2) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(a2) & 1) == 0)
  {
    v25 = "sdf/path.cpp";
    v26 = "MakeRelativePath";
    v27 = 1727;
    v28 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(const SdfPath &) const";
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(a2, &__p);
    if (v24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v25, "MakeRelativePath() requires a prim, prim variant selection, or absolute root path as an anchor (got '%s').", v15, p_p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_13;
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {
LABEL_13:
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
    return;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(this, a2, &v25);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(&v25, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
    sub_29A1DE3A4(&v25);
    return;
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  v10 = *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this) + 12);
  v11 = *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2) + 12);
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  v12 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2);
  v14 = v12;
  if (v10 <= v11)
  {
    if (v10 < v11)
    {
      v17 = v11 - v10;
      v18 = v17;
      do
      {
        v14 = *v14;
        --v18;
      }

      while (v18);
      goto LABEL_27;
    }

    if (v10 != v11)
    {
      v25 = "sdf/path.cpp";
      v26 = "MakeRelativePath";
      v27 = 1774;
      v28 = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(const SdfPath &) const";
      v29 = 0;
      v30 = 4;
      pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(&v25, "Failed axiom: ' %s '", v13, "thisCount == anchorCount");
    }
  }

  else
  {
    do
    {
      sub_29A0A71C8(&__p, &Ptr);
      Ptr = *Ptr;
      --v10;
    }

    while (v10 > v11);
  }

  v17 = 0;
LABEL_27:
  v19 = Ptr;
  while (v19 != v14)
  {
    sub_29A0A71C8(&__p, &Ptr);
    ++v17;
    v19 = *Ptr;
    Ptr = *Ptr;
    v14 = *v14;
  }

  v20 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v12);
  sub_29A1E21F4(a3, v20);
  sub_29A1E2240(a3 + 1, v20 + 1);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v25);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (v23 != __p)
  {
    sub_29A38CCFC(a3, *(v23 - 1), &v25);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29A225948(a3 + 1, this + 1);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_29A3904C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsValidIdentifier(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  v3 = v2 >= 0 ? a1 : *a1;
  v10 = v3;
  v11 = &v3[v1];
  LODWORD(v4) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v10);
  v5 = (v4 - 57344) >= 0xFFFFF800 || v4 >= 0x110000;
  v4 = v5 ? 65533 : v4;
  if (v4 != 95 && !pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(v4))
  {
    return 0;
  }

  sub_29A3909EC(&v10);
  if (v10 >= v11)
  {
    return 1;
  }

  do
  {
    LODWORD(v6) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v10);
    if ((v6 - 57344) >= 0xFFFFF800 || v6 >= 0x110000)
    {
      v6 = 65533;
    }

    else
    {
      v6 = v6;
    }

    IsUtf8CodePointXidContinue = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidContinue(v6);
    if (!IsUtf8CodePointXidContinue)
    {
      break;
    }

    sub_29A3909EC(&v10);
  }

  while (v10 < v11);
  return IsUtf8CodePointXidContinue;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::IsValidNamespacedIdentifier(size_t *__s)
{
  v1 = __s;
  v2 = *(__s + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(__s + 23))
    {
      goto LABEL_6;
    }

    return 0;
  }

  v2 = __s[1];
  if (!v2)
  {
    return 0;
  }

  v1 = *__s;
  do
  {
LABEL_6:
    v3 = memchr(v1, 58, v2);
    if (v3)
    {
      v4 = v3 - v1;
    }

    else
    {
      v4 = -1;
    }

    if (v4)
    {
      v5 = v4 == v2 - 1;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    if (v5)
    {
      break;
    }

    if (v2 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v2;
    }

    v13 = v1;
    v14 = &v1[v7];
    LODWORD(v8) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v13);
    if ((v8 - 57344) >= 0xFFFFF800 || v8 >= 0x110000)
    {
      v8 = 65533;
    }

    else
    {
      v8 = v8;
    }

    if (v8 != 95 && !pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(v8))
    {
      return 0;
    }

    while (1)
    {
      sub_29A3909EC(&v13);
      if (v13 >= v14)
      {
        break;
      }

      LODWORD(v10) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v13);
      if ((v10 - 57344) >= 0xFFFFF800 || v10 >= 0x110000)
      {
        v10 = 65533;
      }

      else
      {
        v10 = v10;
      }

      if (!pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidContinue(v10))
      {
        return 0;
      }
    }

    if (v4 == -1)
    {
      break;
    }

    if (v2 <= v4)
    {
      sub_29A0F26E4("string_view::substr");
    }

    v1 += v4 + 1;
    v2 -= v4 + 1;
  }

  while (v2);
  return v6;
}

void pxrInternal__aapl__pxrReserved__::SdfPath::TokenizeIdentifier(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  if (!v4)
  {
    v4 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  }

  v5 = *(v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  if (v5)
  {
    v6 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v6 = *v6;
    }
  }

  else
  {
    v6 = "";
  }

  v7 = *v6;
  v8 = a1[23];
  if (v8 < 0)
  {
    v8 = *(a1 + 1);
    if (!v8)
    {
      return;
    }

    v10 = *a1;
    v9 = *(*a1 + v8 - 1);
  }

  else
  {
    if (!a1[23])
    {
      return;
    }

    v9 = a1[v8 - 1];
    v10 = a1;
  }

  if (v9 != v7)
  {
    v24 = v10;
    v25 = v10 + v8;
    LODWORD(v11) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v24);
    v12 = (v11 - 57344) >= 0xFFFFF800 || v11 >= 0x110000;
    v11 = v12 ? 65533 : v11;
    if (v11 == 95 || (pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(v11) & 1) != 0)
    {
      v13 = a1[23];
      if ((v13 & 0x80u) == 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a1 + 1);
      }

      if (v13)
      {
        v15 = 0;
        do
        {
          v16 = *v14++;
          if (v16 == v7)
          {
            ++v15;
          }

          --v13;
        }

        while (v13);
        v17 = v15 + 1;
      }

      else
      {
        v17 = 1;
      }

      sub_29A0925E4(a2, v17);
      sub_29A3909EC(&v24);
      while (1)
      {
        if (v24 >= v25)
        {
          sub_29A0D2BE0(__p, v10, v24, &v24[-v10]);
          sub_29A091654(a2, __p);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

        if (pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v24) == 58)
        {
          sub_29A0D2BE0(__p, v10, v24, &v24[-v10]);
          sub_29A091654(a2, __p);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }

          v10 = *sub_29A3909EC(&v24);
          LODWORD(v18) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v24);
          if ((v18 - 57344) >= 0xFFFFF800 || v18 >= 0x110000)
          {
            v18 = 65533;
          }

          else
          {
            v18 = v18;
          }

          if (v18 == 95)
          {
            goto LABEL_54;
          }

          IsUtf8CodePointXidStart = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(v18);
        }

        else
        {
          LODWORD(v21) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v24);
          if ((v21 - 57344) >= 0xFFFFF800 || v21 >= 0x110000)
          {
            v21 = 65533;
          }

          else
          {
            v21 = v21;
          }

          IsUtf8CodePointXidStart = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidContinue(v21);
        }

        if ((IsUtf8CodePointXidStart & 1) == 0)
        {
          *__p = *a2;
          *a2 = 0;
          *(a2 + 8) = 0;
          v23 = *(a2 + 16);
          *(a2 + 16) = 0;
          v27 = v23;
          v28 = __p;
          sub_29A012C90(&v28);
          return;
        }

LABEL_54:
        sub_29A3909EC(&v24);
      }
    }
  }
}

unint64_t *sub_29A3909EC(unint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (*result >= v1)
  {
    goto LABEL_3;
  }

  v3 = *v2;
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  if ((v3 & 0xE0) == 0xC0)
  {
    v4 = 2;
  }

  else if ((v3 & 0xF0) == 0xE0)
  {
    v4 = 3;
  }

  else
  {
    if ((v3 & 0xF8) != 0xF0)
    {
LABEL_3:
      *result = (v2 + 1);
      return result;
    }

    v4 = 4;
  }

  v5 = v2 + 1;
  *result = v5;
  do
  {
    if (v5 >= v1)
    {
      break;
    }

    if (*v5 > -65)
    {
      break;
    }

    *result = ++v5;
    --v4;
  }

  while (v4 > 1u);
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPath::TokenizeIdentifierAsTokens(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::TokenizeIdentifier(a1, &v8);
  sub_29A394184(a2, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  if (v9 != v8)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
    do
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10);
      v6 = *a2;
      v7 = v10;
      v10 = *(*a2 + v3);
      *(v6 + v3) = v7;
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 24;
      v3 += 8;
      --v5;
    }

    while (v5);
  }

  v10 = &v8;
  sub_29A012C90(&v10);
}

void sub_29A390B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A012C90(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(std::string **a1@<X0>, std::string *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_7:
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v8)
    {
      v8 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    v9 = *(v8 + 10) & 0xFFFFFFFFFFFFFFF8;
    if (v9)
    {
      v10 = (v9 + 16);
      if (*(v9 + 39) < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringJoin(v10, a1, a2);
  }

  else
  {
    v6 = *a1;
    while (1)
    {
      size = HIBYTE(v6->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) != 0)
      {
        size = v6->__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        break;
      }

      if (++v6 == v5)
      {
        goto LABEL_7;
      }
    }

    memset(v17, 0, sizeof(v17));
    sub_29A0925E4(v17, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
    v12 = *a1;
    v11 = a1[1];
    while (v12 != v11)
    {
      v13 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
      if ((v13 & 0x80u) != 0)
      {
        v13 = v12->__r_.__value_.__l.__size_;
      }

      if (v13)
      {
        sub_29A070BA0(v17);
      }

      ++v12;
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v14)
    {
      v14 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    v15 = *(v14 + 10) & 0xFFFFFFFFFFFFFFF8;
    if (v15)
    {
      v16 = (v15 + 16);
      if (*(v15 + 39) < 0)
      {
        v16 = *v16;
      }
    }

    else
    {
      v16 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringJoin(v16, v17, a2);
    v18 = v17;
    sub_29A012C90(&v18);
  }
}

void sub_29A390D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A012C90(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(void *a1@<X0>, std::string *a2@<X8>)
{
  memset(v12, 0, sizeof(v12));
  v4 = sub_29A0925E4(v12, (a1[1] - *a1) >> 3);
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 3;
    do
    {
      v8 = *(*a1 + 8 * v6);
      if (v8)
      {
        if ((v8 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
        }

        sub_29A070BA0(v12);
      }

      ++v6;
    }

    while (v7 != v6);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  if (!v9)
  {
    v9 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  }

  v10 = *(v9 + 10) & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::TfStringJoin(v11, v12, a2);
  v13 = v12;
  sub_29A012C90(&v13);
}

void sub_29A390E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A012C90(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 23);
  v6 = a1[1];
  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = *(a2 + 23);
  if (v7)
  {
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    if (v8)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (!v10)
      {
        v10 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      v11 = *(v10 + 10) & 0xFFFFFFFFFFFFFFF8;
      if (v11)
      {
        v12 = (v11 + 16);
        if (*(v11 + 39) < 0)
        {
          v12 = *v12;
        }
      }

      else
      {
        v12 = "";
      }

      if (*(a1 + 23) >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = a1[1];
      }

      v15 = strlen(v12);
      p_p = &__p;
      sub_29A022DE0(&__p, v14 + v15);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v14)
      {
        if (*(a1 + 23) >= 0)
        {
          v17 = a1;
        }

        else
        {
          v17 = *a1;
        }

        memmove(p_p, v17, v14);
      }

      if (v15)
      {
        memmove(p_p + v14, v12, v15);
      }

      p_p->__r_.__value_.__s.__data_[v14 + v15] = 0;
      v18 = *(a2 + 23);
      if (v18 >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      if (v18 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = *(a2 + 8);
      }

      v21 = std::string::append(&__p, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      *(a3 + 16) = *(&v21->__r_.__value_.__l + 2);
      *a3 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

    if ((v5 & 0x80000000) == 0)
    {
      *a3 = *a1;
      v13 = a1[2];
      goto LABEL_17;
    }

    v23 = *a1;
  }

  else
  {
    if ((v8 & 0x80) == 0)
    {
      *a3 = *a2;
      v13 = *(a2 + 16);
LABEL_17:
      *(a3 + 16) = v13;
      return;
    }

    v23 = *a2;
    v6 = *(a2 + 8);
  }

  sub_29A008D14(a3, v23, v6);
}

void sub_29A391054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    this = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
    v6 = this;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(v6, EmptyString, a3);
}

std::string *pxrInternal__aapl__pxrReserved__::SdfPath::StripNamespace@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  if (!v4)
  {
    v4 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
  }

  v5 = *(v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  if (v5)
  {
    v6 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v6 = *v6;
    }
  }

  else
  {
    v6 = "";
  }

  result = std::string::rfind(this, *v6, 0xFFFFFFFFFFFFFFFFLL);
  if (result != -1)
  {
    return std::string::basic_string(a2, this, result->__r_.__value_.__r.__words + 1, 0xFFFFFFFFFFFFFFFFLL, &v10);
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;

    return sub_29A008D14(a2, v8, size);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *&this->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = this->__r_.__value_.__r.__words[2];
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPath::StripNamespace(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, uint64_t a2@<X8>)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::StripNamespace(EmptyString, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A391238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace@<D0>(const std::string *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A173F9D8, memory_order_acquire) & 1) == 0)
  {
    v19 = a2;
    v20 = __cxa_guard_acquire(&qword_2A173F9D8);
    a2 = v19;
    if (v20)
    {
      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      if (!v21)
      {
        v21 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
      }

      v22 = *(v21 + 10) & 0xFFFFFFFFFFFFFFF8;
      if (v22)
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

      byte_2A173F9D0 = *v23;
      __cxa_guard_release(&qword_2A173F9D8);
      a2 = v19;
    }
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    size = a1->__r_.__value_.__l.__size_;
    if (v8 >= 0)
    {
      v10 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = a1->__r_.__value_.__l.__size_;
    }

    v11 = strlen(v7);
    if (v10 < v11 || (v8 >= 0 ? (v12 = a1) : (v12 = a1->__r_.__value_.__r.__words[0]), strncmp(v12, v7, v11)))
    {
LABEL_17:
      if (v8 < 0)
      {
        v13 = a1->__r_.__value_.__r.__words[0];
        v14 = a3;
        v15 = size;
LABEL_22:
        sub_29A008D14(v14, v13, v15);
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (v7[v6 - 1] == byte_2A173F9D0)
    {
      v17 = a1;
      v18 = v6;
    }

    else
    {
      if (v12[v6] != byte_2A173F9D0)
      {
        goto LABEL_17;
      }

      v18 = v6 + 1;
      v17 = a1;
    }

    std::string::basic_string(&v25, v17, v18, 0xFFFFFFFFFFFFFFFFLL, &v26);
    *&v16 = v25.__r_.__value_.__r.__words[0];
    *a3 = v25;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    return *&v16;
  }

  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v13 = a1->__r_.__value_.__r.__words[0];
    v15 = a1->__r_.__value_.__l.__size_;
    v14 = a3;
    goto LABEL_22;
  }

LABEL_20:
  v16 = *&a1->__r_.__value_.__l.__data_;
  *&a3->__r_.__value_.__l.__data_ = *&a1->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = a1->__r_.__value_.__r.__words[2];
LABEL_23:
  a3[1].__r_.__value_.__s.__data_[0] = 0;
  return *&v16;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::_LessThanInternal(pxrInternal__aapl__pxrReserved__::SdfPath *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a2);
  v7 = *(Ptr + 15);
  if ((v7 ^ *(v6 + 15)))
  {
    return v7 & 1;
  }

  if (Ptr == v6)
  {
    v16 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);
    v17 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a2 + 1);
    if (!v16 || !v17)
    {
      LOBYTE(v7) = v16 == 0;
      return v7 & 1;
    }

    return sub_29A391640(v16, v17);
  }

  else
  {
    v7 = *(Ptr + 12);
    v8 = *(v6 + 12);
    if (*(Ptr + 12))
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (*(Ptr + 12))
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == 0;
      }

      LOBYTE(v7) = !v10;
      return v7 & 1;
    }

    if ((v8 - v7) < 0)
    {
      v12 = v7 - v8;
      while (Ptr)
      {
        Ptr = *Ptr;
        if (!--v12)
        {
          goto LABEL_23;
        }
      }

      v18 = "sdf/path.cpp";
      v19 = "_LessThanCompareNodes";
      v20 = 2109;
      v21 = "BOOL pxrInternal__aapl__pxrReserved__::_LessThanCompareNodes(const Sdf_PathNode *, const Sdf_PathNode *)";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Left path node is null");
      goto LABEL_31;
    }

    if (v8 != v7)
    {
      v11 = v8 - v7 + 1;
      while (v6)
      {
        v6 = *v6;
        if (--v11 <= 1)
        {
          goto LABEL_23;
        }
      }

      v18 = "sdf/path.cpp";
      v19 = "_LessThanCompareNodes";
      v20 = 2119;
      v21 = "BOOL pxrInternal__aapl__pxrReserved__::_LessThanCompareNodes(const Sdf_PathNode *, const Sdf_PathNode *)";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Right path node is null");
LABEL_31:
      LOBYTE(v7) = 0;
      return v7 & 1;
    }

LABEL_23:
    if (Ptr == v6)
    {
      LOBYTE(v7) = v7 < v8;
      return v7 & 1;
    }

    do
    {
      v13 = Ptr;
      v14 = v6;
      v6 = *v6;
      Ptr = *Ptr;
    }

    while (Ptr != v6);

    return sub_29A393970(v13, v14);
  }
}

uint64_t sub_29A391640(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 6);
  v3 = *(a2 + 6);
  if (*(a1 + 6))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (*(a1 + 6))
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }

    return !v5;
  }

  else
  {
    if ((v3 - v2) < 0)
    {
      v8 = v2 - v3;
      while (a1)
      {
        a1 = *a1;
        if (!--v8)
        {
          goto LABEL_21;
        }
      }

      v11 = "sdf/path.cpp";
      v12 = "_LessThanCompareNodes";
      v13 = 2109;
      v14 = "BOOL pxrInternal__aapl__pxrReserved__::_LessThanCompareNodes(const Sdf_PathNode *, const Sdf_PathNode *)";
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Left path node is null");
      return 0;
    }

    if (v3 != v2)
    {
      v7 = v3 - v2 + 1;
      while (a2)
      {
        a2 = *a2;
        if (--v7 <= 1)
        {
          goto LABEL_21;
        }
      }

      v11 = "sdf/path.cpp";
      v12 = "_LessThanCompareNodes";
      v13 = 2119;
      v14 = "BOOL pxrInternal__aapl__pxrReserved__::_LessThanCompareNodes(const Sdf_PathNode *, const Sdf_PathNode *)";
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Right path node is null");
      return 0;
    }

LABEL_21:
    if (a1 == a2)
    {
      return v2 < v3;
    }

    else
    {
      do
      {
        v9 = a1;
        v10 = a2;
        a2 = *a2;
        a1 = *a1;
      }

      while (a1 != a2);

      return sub_29A393970(v9, v10);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(this);
  v4 = *(String + 23);
  if (v4 >= 0)
  {
    v5 = String;
  }

  else
  {
    v5 = *String;
  }

  if (v4 >= 0)
  {
    v6 = *(String + 23);
  }

  else
  {
    v6 = String[1];
  }

  return sub_29A00911C(a1, v5, v6);
}

void pxrInternal__aapl__pxrReserved__::SdfPath::GetConciseRelativePaths(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  memset(v43, 0, sizeof(v43));
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v6 = *(a1 + 8);
  v27 = *a1;
  v28 = v6;
  v39 = 0;
  while (v27 != v28)
  {
    v7 = sub_29A391CE4(&v27, a2, a3);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(*v7))
    {
      v32 = "sdf/path.cpp";
      v33 = "GetConciseRelativePaths";
      v34 = 2186;
      v35 = "static SdfPathVector pxrInternal__aapl__pxrReserved__::SdfPath::GetConciseRelativePaths(const SdfPathVector &)";
      v36 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v32, "argument to GetConciseRelativePaths contains a relative path.", v9);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
    }

    v10 = sub_29A391CE4(&v27, v8, v9);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(*v10, &v32);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v32, &v44);
    sub_29A1E28B4(v43, &v32);
    v11 = sub_29A1E28B4(&v40, &v44);
    v12 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v11);
    if (v44 == *v12)
    {
      sub_29A1E28B4(&v37, &v32);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(&v32, &v44, &v30);
      sub_29A377BD0(&v37, &v30);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31);
      sub_29A1DE3A4(&v30);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v44 + 1);
    sub_29A1DE3A4(&v44);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
    sub_29A1DE3A4(&v32);
    sub_29A1FABF8(&v27);
  }

  do
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v13 = v37;
    if (v38 == v37)
    {
      v22 = 0;
      v21 = 0;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = (v38 - v37) >> 3;
      do
      {
        v17 = 0;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        while (v14 == v17 || *(v13 + 8 * v14) != *(v13 + 8 * v17) || *(v43[0] + 8 * v14) == *(v43[0] + 8 * v17))
        {
          if (v16 == ++v17)
          {
            sub_29A1E28B4(&v32, (v40 + 8 * v14));
            sub_29A1E28B4(&v27, (v37 + 8 * v14));
            goto LABEL_21;
          }
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v40 + 8 * v14), &v44);
        v18 = sub_29A1E28B4(&v32, &v44);
        v19 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v18);
        v20 = v43[0] + 8 * v14;
        if (v44 == *v19)
        {
          sub_29A1E21F4(&v30, (v43[0] + 8 * v14));
          sub_29A1E2240(&v31, (v20 + 4));
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath((v43[0] + 8 * v14), &v44, &v30);
        }

        sub_29A377BD0(&v27, &v30);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31);
        sub_29A1DE3A4(&v30);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v44 + 1);
        sub_29A1DE3A4(&v44);
        v15 = 1;
LABEL_21:
        ++v14;
        v13 = v37;
        v16 = (v38 - v37) >> 3;
      }

      while (v14 < v16);
      v21 = v32;
      v22 = v33;
    }

    sub_29A324D54(&v40, v21, v22, (v22 - v21) >> 3);
    sub_29A324D54(&v37, v27, v28, (v28 - v27) >> 3);
    v44 = &v27;
    sub_29A1E234C(&v44);
    v27 = &v32;
    sub_29A1E234C(&v27);
  }

  while ((v15 & 1) != 0);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v24 = v40;
  if (v41 != v40)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      if (*(v24 + 8 * v26) == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v23))
      {
        v23 = sub_29A1E28B4(a4, (*a1 + v25));
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath((*a1 + v25), (v40 + v25), &v32);
        sub_29A377BD0(a4, &v32);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
        v23 = sub_29A1DE3A4(&v32);
      }

      ++v26;
      v24 = v40;
      v25 += 8;
    }

    while (v26 < (v41 - v40) >> 3);
  }

  v32 = &v37;
  sub_29A1E234C(&v32);
  v32 = &v40;
  sub_29A1E234C(&v32);
  v32 = v43;
  sub_29A1E234C(&v32);
}

void sub_29A391BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  a14 = &a19;
  sub_29A1E234C(&a14);
  a14 = &a22;
  sub_29A1E234C(&a14);
  a14 = (v22 - 96);
  sub_29A1E234C(&a14);
  _Unwind_Resume(a1);
}

void *sub_29A391CE4(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B29CB94(result, a2, a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::RemoveDescendentPaths(int **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_29A24ED30(v2, v3, &v14, v5, 1);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = v6 + 8;
      if (v6 + 8 == v7)
      {
        v6 = v7;
        return sub_29A362D50(a1, v6, a1[1]);
      }

      HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v6 + 8), v6);
      v6 = v8;
    }

    while (!HasPrefix);
    v10 = (v8 - 8);
    if (v8 + 8 != v7)
    {
      v11 = v8 + 12;
      do
      {
        if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v11 - 4), v10))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v12 = v11 + 4;
        v11 += 8;
      }

      while (v12 != v7);
    }

    v6 = v10 + 8;
  }

  return sub_29A362D50(a1, v6, a1[1]);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPath::RemoveAncestorPaths(int **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_29A24ED30(v2, v3, &v14, v5, 1);
  v7 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    v8 = v6 + 2;
    while (v8 - 4 != v7)
    {
      HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v8 - 4), (v8 - 6));
      v8 -= 2;
      if (HasPrefix)
      {
        v10 = v8 - 4;
        if (v8 - 4 != v7)
        {
          do
          {
            v11 = v10 - 2;
            if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v8 - 2), (v10 - 2)))
            {
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            v10 -= 2;
          }

          while (v11 != v7);
        }

        v12 = (v8 - 2);
        return sub_29A362D50(a1, v7, v12);
      }
    }
  }

  v12 = v7;
  return sub_29A362D50(a1, v7, v12);
}

void *sub_29A391F3C(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (!a1[2])
  {
    return a1 + 1;
  }

  v7 = a1 + 1;
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  v8 = a1 + 1;
  if (v7 != *a1)
  {
    v9 = *v7;
    if (*v7)
    {
      do
      {
        v8 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v8 = v7[2];
        v10 = *v8 == v7;
        v7 = v8;
      }

      while (v10);
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (v8 + 28)))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetCommonPrefix(a2, (v8 + 28), &v12);
      v8 = sub_29A391F3C(a1, &v12, 0, a4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      sub_29A1DE3A4(&v12);
    }
  }

  return v8;
}

void sub_29A392080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPathAncestorsRange::iterator::operator++(_DWORD *a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1))
    {
      v2 = *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a1 + 1);
      Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
    }

    else
    {
      if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1) || *(pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1) + 12) < 2u)
      {
        v2 = 0;
        Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(0);
        goto LABEL_9;
      }

      v2 = 0;
      Ptr = *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
    }

    Handle = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(Ptr);
    if (Ptr)
    {
      atomic_fetch_add_explicit((Ptr + 8), 1u, memory_order_relaxed);
    }

LABEL_9:
    v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(v2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a1;
}

char *pxrInternal__aapl__pxrReserved__::Sdf_PathGetDebuggerPathText(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this))
  {
    return "";
  }

  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(this);
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(this + 1);

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNode::GetDebugText(Ptr, v4, v5);
}

_DWORD *sub_29A392268(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(a2);
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  a1[1] = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(a3);
  return a1;
}

uint64_t sub_29A3922CC(uint64_t a1)
{
  v2 = *a1;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(*a1) || (IsPrimVariantSelectionPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(v2), (IsPrimVariantSelectionPath & 1) != 0) || *v2 == *pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(IsPrimVariantSelectionPath))
  {
    v4 = *(a1 + 8);
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v5)
    {
      v5 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    if ((*(v5 + 6) ^ *v4) >= 8)
    {
      if (sub_29A39252C(*(a1 + 8)))
      {
        return 1;
      }

      sub_29B29CBF0(a1, (a1 + 8));
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = **(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = (v8 + 16);
      if (*(v8 + 39) < 0)
      {
        v9 = *v9;
      }
    }

    else
    {
      v9 = "";
    }

    v10 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(v2) & 0xFFFFFFFFFFFFFFF8;
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

    v12 = sub_29A392798(v7);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot append child '%s' to path '%s'.", v13, v14, v9, v11);
    v15 = v12[1];
    v16 = v12[2];
    if (v15 >= v16)
    {
      v18 = (v15 - *v12) >> 5;
      v19 = v18 + 1;
      if ((v18 + 1) >> 59)
      {
        sub_29A00C9A4();
      }

      v20 = v16 - *v12;
      if (v20 >> 4 > v19)
      {
        v19 = v20 >> 4;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFE0)
      {
        v21 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v34[4] = v12;
      if (v21)
      {
        v22 = sub_29A10CB10(v12, v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v22[32 * v18];
      v24 = &v22[32 * v21];
      *v23 = 6;
      v25 = *__p;
      *(v23 + 3) = v33;
      *(v23 + 8) = v25;
      __p[1] = 0;
      v33 = 0;
      __p[0] = 0;
      v26 = v23 + 32;
      v27 = v12[1] - *v12;
      v28 = &v23[-v27];
      memcpy(&v23[-v27], *v12, v27);
      v29 = *v12;
      *v12 = v28;
      v34[0] = v29;
      v34[1] = v29;
      v12[1] = v26;
      v34[2] = v29;
      v30 = v12[2];
      v12[2] = v24;
      v34[3] = v30;
      sub_29A1595C4(v34);
      v31 = SHIBYTE(v33);
      v12[1] = v26;
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *v15 = 6;
      v17 = *__p;
      *(v15 + 3) = v33;
      *(v15 + 8) = v17;
      v12[1] = v15 + 32;
    }
  }

  return 0;
}

void sub_29A392510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A39252C(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v2 = EmptyString[23];
  if (v2 < 0)
  {
    v3 = EmptyString;
    EmptyString = *EmptyString;
    v2 = *(v3 + 1);
    if (!v2)
    {
      return 0;
    }
  }

  else if (!EmptyString[23])
  {
    return 0;
  }

  v10 = EmptyString;
  v11 = &EmptyString[v2];
  LODWORD(v4) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v10);
  if ((v4 - 57344) >= 0xFFFFF800 || v4 >= 0x110000)
  {
    v4 = 65533;
  }

  else
  {
    v4 = v4;
  }

  if (v4 != 95 && !pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(v4))
  {
    return 0;
  }

  sub_29A3909EC(&v10);
  if (v10 >= v11)
  {
    return 1;
  }

  do
  {
    LODWORD(v6) = pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(&v10);
    if ((v6 - 57344) >= 0xFFFFF800 || v6 >= 0x110000)
    {
      v6 = 65533;
    }

    else
    {
      v6 = v6;
    }

    IsUtf8CodePointXidContinue = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidContinue(v6);
    if (!IsUtf8CodePointXidContinue)
    {
      break;
    }

    sub_29A3909EC(&v10);
  }

  while (v10 < v11);
  return IsUtf8CodePointXidContinue;
}

void sub_29A392628(void ***a1, void *a2)
{
  v3 = sub_29A392798(a1);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid prim name '%s'", v4, v5, *a2);
  v6 = v3[1];
  v7 = v3[2];
  if (v6 >= v7)
  {
    v8 = (v6 - *v3) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v7 - *v3;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v22[4] = v3;
    if (v11)
    {
      v12 = sub_29A10CB10(v3, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[32 * v8];
    v14 = &v12[32 * v11];
    *v13 = 6;
    *(v13 + 3) = v21;
    *(v13 + 8) = *__p;
    v15 = v13 + 32;
    v16 = v3[1] - *v3;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *v3, v16);
    v18 = *v3;
    *v3 = v17;
    v22[0] = v18;
    v22[1] = v18;
    v3[1] = v15;
    v22[2] = v18;
    v19 = v3[2];
    v3[2] = v14;
    v22[3] = v19;
    sub_29A1595C4(v22);
    v3[1] = v15;
  }

  else
  {
    *v6 = 6;
    *(v6 + 3) = v21;
    *(v6 + 8) = *__p;
    v3[1] = v6 + 32;
  }
}

void sub_29A39277C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29A392798(void ***a1)
{
  result = *a1;
  if (!result)
  {
    v3 = operator new(0x18uLL);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    v4 = 0;
    sub_29A3927F8(a1, v3);
    sub_29A3927F8(&v4, 0);
    return *a1;
  }

  return result;
}

void sub_29A3927F8(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    sub_29A156170(&v3);
    operator delete(v2);
  }
}

uint64_t sub_29A39283C(uint64_t a1)
{
  v2 = *a1;
  if ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidNamespacedIdentifier(EmptyString);
  if (result)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(v2))
    {
      return 1;
    }

    IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(v2);
    if (IsPrimPath || *v2 == *pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(IsPrimPath))
    {
      return 1;
    }

    else
    {
      v6 = *(a1 + 16);
      v7 = **(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v7)
      {
        v8 = (v7 + 16);
        if (*(v7 + 39) < 0)
        {
          v8 = *v8;
        }
      }

      else
      {
        v8 = "";
      }

      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(v2) & 0xFFFFFFFFFFFFFFF8;
      if (v9)
      {
        v10 = (v9 + 16);
        if (*(v9 + 39) < 0)
        {
          v10 = *v10;
        }
      }

      else
      {
        v10 = "";
      }

      v11 = sub_29A392798(v6);
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Can only append a property '%s' to a prim path (%s)", v12, v13, v8, v10);
      v14 = v11[1];
      v15 = v11[2];
      if (v14 >= v15)
      {
        v17 = (v14 - *v11) >> 5;
        v18 = v17 + 1;
        if ((v17 + 1) >> 59)
        {
          sub_29A00C9A4();
        }

        v19 = v15 - *v11;
        if (v19 >> 4 > v18)
        {
          v18 = v19 >> 4;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFE0)
        {
          v20 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        v33[4] = v11;
        if (v20)
        {
          v21 = sub_29A10CB10(v11, v20);
        }

        else
        {
          v21 = 0;
        }

        v22 = &v21[32 * v17];
        v23 = &v21[32 * v20];
        *v22 = 6;
        v24 = *__p;
        *(v22 + 3) = v32;
        *(v22 + 8) = v24;
        __p[1] = 0;
        v32 = 0;
        __p[0] = 0;
        v25 = v22 + 32;
        v26 = v11[1] - *v11;
        v27 = &v22[-v26];
        memcpy(&v22[-v26], *v11, v26);
        v28 = *v11;
        *v11 = v27;
        v33[0] = v28;
        v33[1] = v28;
        v11[1] = v25;
        v33[2] = v28;
        v29 = v11[2];
        v11[2] = v23;
        v33[3] = v29;
        sub_29A1595C4(v33);
        v30 = SHIBYTE(v32);
        v11[1] = v25;
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *v14 = 6;
        v16 = *__p;
        *(v14 + 3) = v32;
        *(v14 + 8) = v16;
        v11[1] = v14 + 32;
      }

      return 0;
    }
  }

  return result;
}

void sub_29A392A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_29A392A64(uint64_t a1)
{
  v2 = *a1;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimOrPrimVariantSelectionPath(*a1);
  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 8);
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    v7 = a1 + 16;
    v6 = *(a1 + 16);
    v5 = *(v7 + 8);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v8 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(v2) & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = (v8 + 16);
      if (*(v8 + 39) < 0)
      {
        v9 = *v9;
      }
    }

    else
    {
      v9 = "";
    }

    v10 = sub_29A392798(v5);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot append variant selection %s = %s to <%s>; can only append a variant selection to a prim or prim variant selection path.", v11, v12, v4, v6, v9);
    v13 = v10[1];
    v14 = v10[2];
    if (v13 >= v14)
    {
      v16 = (v13 - *v10) >> 5;
      v17 = v16 + 1;
      if ((v16 + 1) >> 59)
      {
        sub_29A00C9A4();
      }

      v18 = v14 - *v10;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      v33[4] = v10;
      if (v19)
      {
        v20 = sub_29A10CB10(v10, v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[32 * v16];
      v22 = &v20[32 * v19];
      *v21 = 1;
      v23 = *__p;
      *(v21 + 3) = v32;
      *(v21 + 8) = v23;
      __p[1] = 0;
      v32 = 0;
      __p[0] = 0;
      v24 = v21 + 32;
      v25 = v10[1] - *v10;
      v26 = &v21[-v25];
      memcpy(&v21[-v25], *v10, v25);
      v27 = *v10;
      *v10 = v26;
      v33[0] = v27;
      v33[1] = v27;
      v10[1] = v24;
      v33[2] = v27;
      v28 = v10[2];
      v10[2] = v22;
      v33[3] = v28;
      sub_29A1595C4(v33);
      v29 = SHIBYTE(v32);
      v10[1] = v24;
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *v13 = 1;
      v15 = *__p;
      *(v13 + 3) = v32;
      *(v13 + 8) = v15;
      v10[1] = v13 + 32;
    }
  }

  return v3;
}

void sub_29A392C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A392C48(uint64_t a1)
{
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((*a1 + 4));
  if (Ptr)
  {
    v3 = Ptr[14];
    if (v3 == 3 || v3 == 6)
    {
      v5 = *(a1 + 8);
      pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(Ptr);
      if (*v5 != qword_2A173F9E0)
      {
        return 1;
      }

      v6 = sub_29A392798(*(a1 + 16));
      sub_29A392E7C("Target path cannot be invalid.", &__p);
      v7 = v6[1];
      v8 = v6[2];
      if (v7 < v8)
      {
        goto LABEL_18;
      }

      v9 = (v7 - *v6) >> 5;
      v10 = v9 + 1;
      if ((v9 + 1) >> 59)
      {
        sub_29A00C9A4();
      }

      v11 = v8 - *v6;
      if (v11 >> 4 > v10)
      {
        v10 = v11 >> 4;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v12 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      v30 = v6;
      if (v12)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  v6 = sub_29A392798(*(a1 + 16));
  sub_29A392E7C("Can only append a target to a property path.", &__p);
  v7 = v6[1];
  v14 = v6[2];
  if (v7 >= v14)
  {
    v9 = (v7 - *v6) >> 5;
    v16 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v17 = v14 - *v6;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v16;
    }

    v30 = v6;
    if (v12)
    {
LABEL_16:
      v13 = sub_29A10CB10(v6, v12);
      goto LABEL_29;
    }

LABEL_28:
    v13 = 0;
LABEL_29:
    v19 = &v13[32 * v9];
    v20 = &v13[32 * v12];
    *v19 = 6;
    v21 = *&__p.__r_.__value_.__l.__data_;
    *(v19 + 3) = *(&__p.__r_.__value_.__l + 2);
    *(v19 + 8) = v21;
    memset(&__p, 0, sizeof(__p));
    v22 = v19 + 32;
    v23 = v6[1] - *v6;
    v24 = &v19[-v23];
    memcpy(&v19[-v23], *v6, v23);
    v25 = *v6;
    *v6 = v24;
    v29[0] = v25;
    v29[1] = v25;
    v6[1] = v22;
    v29[2] = v25;
    v26 = v6[2];
    v6[2] = v20;
    v29[3] = v26;
    sub_29A1595C4(v29);
    v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v6[1] = v22;
    if (v27 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 0;
  }

LABEL_18:
  *v7 = 6;
  v15 = *&__p.__r_.__value_.__l.__data_;
  *(v7 + 3) = *(&__p.__r_.__value_.__l + 2);
  *(v7 + 8) = v15;
  v6[1] = v7 + 32;
  return 0;
}

void sub_29A392E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A392E7C(char *__s@<X0>, std::string *a2@<X8>)
{
  sub_29A008E78(v7, __s);
  sub_29A008E78(v5, "%%");
  sub_29A008E78(__p, "%");
  pxrInternal__aapl__pxrReserved__::TfStringReplace(v7, v5, __p, a2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_29A392F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A392F60(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  v2 = *a1;
  if ((**(a1 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((**(a1 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsValidNamespacedIdentifier(EmptyString))
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v2 + 4));
    if (Ptr && *(Ptr + 14) == 4)
    {
      return 1;
    }

    v6 = sub_29A392798(*(a1 + 2));
    sub_29A392E7C("Can only append a relational attribute to a target path.", &__p);
    v7 = v6[1];
    v14 = v6[2];
    if (v7 < v14)
    {
      goto LABEL_18;
    }

    v9 = (v7 - *v6) >> 5;
    v16 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v17 = v14 - *v6;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v16;
    }

    v29 = v6;
    if (!v12)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v6 = sub_29A392798(*(a1 + 2));
  sub_29A392E7C("Invalid property name.", &__p);
  v7 = v6[1];
  v8 = v6[2];
  if (v7 >= v8)
  {
    v9 = (v7 - *v6) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v11 = v8 - *v6;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v29 = v6;
    if (!v12)
    {
LABEL_26:
      v13 = 0;
LABEL_27:
      v18 = &v13[32 * v9];
      v19 = &v13[32 * v12];
      *v18 = 6;
      v20 = *&__p.__r_.__value_.__l.__data_;
      *(v18 + 3) = *(&__p.__r_.__value_.__l + 2);
      *(v18 + 8) = v20;
      memset(&__p, 0, sizeof(__p));
      v21 = v18 + 32;
      v22 = v6[1] - *v6;
      v23 = &v18[-v22];
      memcpy(&v18[-v22], *v6, v22);
      v24 = *v6;
      *v6 = v23;
      v28[0] = v24;
      v28[1] = v24;
      v6[1] = v21;
      v28[2] = v24;
      v25 = v6[2];
      v6[2] = v19;
      v28[3] = v25;
      sub_29A1595C4(v28);
      v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v6[1] = v21;
      if (v26 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return 0;
    }

LABEL_16:
    v13 = sub_29A10CB10(v6, v12);
    goto LABEL_27;
  }

LABEL_18:
  *v7 = 6;
  v15 = *&__p.__r_.__value_.__l.__data_;
  *(v7 + 3) = *(&__p.__r_.__value_.__l + 2);
  *(v7 + 8) = v15;
  v6[1] = v7 + 32;
  return 0;
}

void sub_29A393174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A393194(pxrInternal__aapl__pxrReserved__::SdfPath **a1)
{
  v2 = *a1;
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(*a1 + 1);
  if (!Ptr || ((v4 = Ptr[14], v4 != 3) ? (v5 = v4 == 6) : (v5 = 1), !v5))
  {
    v17 = a1[1];
    v18 = a1[2];
    v19 = v61;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v17, v61);
    if (v62 < 0)
    {
      v19 = v61[0];
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v2, v59);
    v20 = v60;
    v21 = v59[0];
    v24 = sub_29A392798(v18);
    v25 = v59;
    if (v20 < 0)
    {
      v25 = v21;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannnot append mapper '%s' to non-property path <%s>.", v22, v23, v19, v25);
    v26 = v24[1];
    v27 = v24[2];
    if (v26 >= v27)
    {
      v29 = (v26 - *v24) >> 5;
      v30 = v29 + 1;
      if ((v29 + 1) >> 59)
      {
        sub_29A00C9A4();
      }

      v31 = v27 - *v24;
      if (v31 >> 4 > v30)
      {
        v30 = v31 >> 4;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFE0)
      {
        v32 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      v69 = v24;
      if (v32)
      {
        v33 = sub_29A10CB10(v24, v32);
      }

      else
      {
        v33 = 0;
      }

      v35 = &v33[32 * v29];
      v36 = &v33[32 * v32];
      *v35 = 6;
      v37 = *__p;
      *(v35 + 3) = v64;
      *(v35 + 8) = v37;
      __p[1] = 0;
      v64 = 0;
      __p[0] = 0;
      v38 = v35 + 32;
      v39 = v24[1] - *v24;
      v40 = &v35[-v39];
      memcpy(&v35[-v39], *v24, v39);
      v41 = *v24;
      *v24 = v40;
      v65 = v41;
      v66 = v41;
      v24[1] = v38;
      v67 = v41;
      v42 = v24[2];
      v24[2] = v36;
      v68 = v42;
      sub_29A1595C4(&v65);
      v43 = SHIBYTE(v64);
      v24[1] = v38;
      if (v43 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *v26 = 6;
      v28 = *__p;
      *(v26 + 3) = v64;
      *(v26 + 8) = v28;
      v24[1] = v26 + 32;
    }

    if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v44 = v59[0];
    goto LABEL_33;
  }

  v6 = a1[1];
  pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(Ptr);
  if (*v6 != qword_2A173F9E0)
  {
    return 1;
  }

  v7 = a1[2];
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v2, v61);
  v8 = v62;
  v9 = v61[0];
  v12 = sub_29A392798(v7);
  if (v8 >= 0)
  {
    v13 = v61;
  }

  else
  {
    v13 = v9;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot append an empty mapper target path to <%s>", v10, v11, v13);
  v14 = v12[1];
  v15 = v12[2];
  if (v14 >= v15)
  {
    v45 = (v14 - *v12) >> 5;
    v46 = v45 + 1;
    if ((v45 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v47 = v15 - *v12;
    if (v47 >> 4 > v46)
    {
      v46 = v47 >> 4;
    }

    if (v47 >= 0x7FFFFFFFFFFFFFE0)
    {
      v48 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v48 = v46;
    }

    v69 = v12;
    if (v48)
    {
      v49 = sub_29A10CB10(v12, v48);
    }

    else
    {
      v49 = 0;
    }

    v50 = &v49[32 * v45];
    v51 = &v49[32 * v48];
    *v50 = 6;
    v52 = *__p;
    *(v50 + 3) = v64;
    *(v50 + 8) = v52;
    __p[1] = 0;
    v64 = 0;
    __p[0] = 0;
    v53 = v50 + 32;
    v54 = v12[1] - *v12;
    v55 = &v50[-v54];
    memcpy(&v50[-v54], *v12, v54);
    v56 = *v12;
    *v12 = v55;
    v65 = v56;
    v66 = v56;
    v12[1] = v53;
    v67 = v56;
    v57 = v12[2];
    v12[2] = v51;
    v68 = v57;
    sub_29A1595C4(&v65);
    v58 = SHIBYTE(v64);
    v12[1] = v53;
    if ((v58 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v44 = __p[0];
LABEL_33:
    operator delete(v44);
    goto LABEL_44;
  }

  *v14 = 6;
  v16 = *__p;
  *(v14 + 3) = v64;
  *(v14 + 8) = v16;
  v12[1] = v14 + 32;
LABEL_44:
  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  return 0;
}

void sub_29A3934E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A393548(uint64_t *a1)
{
  v2 = *a1;
  if (sub_29A39252C(a1[1]))
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr((v2 + 4));
    if (Ptr && *(Ptr + 14) == 5)
    {
      return 1;
    }

    v5 = sub_29A392798(a1[2]);
    sub_29A392E7C("Can only append a mapper arg to a mapper path.", &__p);
    v6 = v5[1];
    v13 = v5[2];
    if (v6 < v13)
    {
      goto LABEL_15;
    }

    v8 = (v6 - *v5) >> 5;
    v15 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v16 = v13 - *v5;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v15;
    }

    v28 = v5;
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v5 = sub_29A392798(a1[2]);
  sub_29A392E7C("Invalid arg name.", &__p);
  v6 = v5[1];
  v7 = v5[2];
  if (v6 >= v7)
  {
    v8 = (v6 - *v5) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v7 - *v5;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v28 = v5;
    if (!v11)
    {
LABEL_23:
      v12 = 0;
LABEL_24:
      v17 = &v12[32 * v8];
      v18 = &v12[32 * v11];
      *v17 = 6;
      v19 = *&__p.__r_.__value_.__l.__data_;
      *(v17 + 3) = *(&__p.__r_.__value_.__l + 2);
      *(v17 + 8) = v19;
      memset(&__p, 0, sizeof(__p));
      v20 = v17 + 32;
      v21 = v5[1] - *v5;
      v22 = &v17[-v21];
      memcpy(&v17[-v21], *v5, v21);
      v23 = *v5;
      *v5 = v22;
      v27[0] = v23;
      v27[1] = v23;
      v5[1] = v20;
      v27[2] = v23;
      v24 = v5[2];
      v5[2] = v18;
      v27[3] = v24;
      sub_29A1595C4(v27);
      v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v5[1] = v20;
      if (v25 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return 0;
    }

LABEL_13:
    v12 = sub_29A10CB10(v5, v11);
    goto LABEL_24;
  }

LABEL_15:
  *v6 = 6;
  v14 = *&__p.__r_.__value_.__l.__data_;
  *(v6 + 3) = *(&__p.__r_.__value_.__l + 2);
  *(v6 + 8) = v14;
  v5[1] = v6 + 32;
  return 0;
}

void sub_29A393744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A393764(void ****a1)
{
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(*a1 + 1);
  if (Ptr)
  {
    v3 = *(Ptr + 14);
    if (v3 == 3 || v3 == 6)
    {
      return 1;
    }
  }

  v6 = sub_29A392798(a1[1]);
  sub_29A392E7C("Can only append an expression to a property path.", &__p);
  v7 = v6[1];
  v8 = v6[2];
  if (v7 >= v8)
  {
    v10 = (v7 - *v6) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v12 = v8 - *v6;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v25[4] = v6;
    if (v13)
    {
      v14 = sub_29A10CB10(v6, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[32 * v10];
    v16 = &v14[32 * v13];
    *v15 = 6;
    v17 = *&__p.__r_.__value_.__l.__data_;
    *(v15 + 3) = *(&__p.__r_.__value_.__l + 2);
    *(v15 + 8) = v17;
    memset(&__p, 0, sizeof(__p));
    v18 = v15 + 32;
    v19 = v6[1] - *v6;
    v20 = &v15[-v19];
    memcpy(&v15[-v19], *v6, v19);
    v21 = *v6;
    *v6 = v20;
    v25[0] = v21;
    v25[1] = v21;
    v6[1] = v18;
    v25[2] = v21;
    v22 = v6[2];
    v6[2] = v16;
    v25[3] = v22;
    sub_29A1595C4(v25);
    v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v6[1] = v18;
    if (v23 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v7 = 6;
    v9 = *&__p.__r_.__value_.__l.__data_;
    *(v7 + 3) = *(&__p.__r_.__value_.__l + 2);
    *(v7 + 8) = v9;
    v6[1] = v7 + 32;
  }

  return 0;
}

void sub_29A3938E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A393914(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v6 + 1, a2 + 1);
  sub_29A1DDD84(a1 + 2, a3);
  sub_29A1DDDC0(a1 + 3, a3 + 1);
  return a1;
}

uint64_t sub_29A393970(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[14];
  v3 = a2[14];
  v4 = v2 >= v3;
  if (v2 != v3)
  {
    return !v4;
  }

  if (a1[14] > 3u)
  {
    if (a1[14] > 5u)
    {
      if (v2 != 6 && v2 != 7)
      {
        if (v2 != 8)
        {
          v32[0] = "sdf/pathNode.h";
          v32[1] = "Compare";
          v32[2] = 647;
          v32[3] = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_PathNode::Compare(const Sdf_PathNode &) const [Comp = pxrInternal__aapl__pxrReserved__::Sdf_PathNode::LessThan]";
          v33 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v32, 1, "Unhandled Sdf_PathNode::NodeType enumerant");
        }

        return 0;
      }

      goto LABEL_12;
    }

    if (v2 == 4)
    {
      v12 = (a1 + 16);
      v13 = (a2 + 16);
      if (*(a1 + 2) == *(a2 + 2))
      {
        return 0;
      }

      if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12) || !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v13))
      {
        if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12))
        {
          return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v13);
        }

        return 0;
      }
    }

    else
    {
      v12 = (a1 + 16);
      v13 = (a2 + 16);
      if (*(a1 + 2) == *(a2 + 2))
      {
        return 0;
      }

      if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12) || !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v13))
      {
        if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12))
        {
          return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v13);
        }

        return 0;
      }
    }

    return pxrInternal__aapl__pxrReserved__::SdfPath::_LessThanInternal(v12, v13, v14);
  }

  if (a1[14] <= 1u)
  {
    if (a1[14])
    {
      goto LABEL_12;
    }

    v4 = __PAIR64__((a1[15] & 1) == 0, a2[15] & 1) != 0;
    return !v4;
  }

  if (v2 == 2)
  {
    v16 = *(a1 + 2);
    v17 = *(a2 + 2);

    return sub_29A393C0C(v16, v17);
  }

LABEL_12:
  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  if (v5 && v6)
  {
    if (v5 == v6)
    {
      return 0;
    }

    v7 = v5 & 0xFFFFFFFFFFFFFFF8;
    v8 = v6 & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v7 + 8);
    v10 = *(v8 + 8);
    if (v9 < v10)
    {
      return 1;
    }

    if (v9 != v10)
    {
      return 0;
    }

    v20 = *(v8 + 16);
    v18 = v8 + 16;
    v19 = v20;
    v21 = *(v18 + 23);
    v24 = *(v7 + 16);
    v22 = v7 + 16;
    v23 = v24;
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
      v27 = v23;
    }

    if (v21 >= 0)
    {
      v28 = *(v18 + 23);
    }

    else
    {
      v28 = *(v18 + 8);
    }

    if (v21 >= 0)
    {
      v29 = v18;
    }

    else
    {
      v29 = v19;
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
    if (v31)
    {
      return v31 < 0;
    }

    else
    {
      return v26 < v28;
    }
  }

  else
  {
    if (v5)
    {
      v15 = 1;
    }

    else
    {
      v15 = v6 == 0;
    }

    return !v15;
  }
}