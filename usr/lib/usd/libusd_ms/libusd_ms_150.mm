uint64_t *sub_29AD21678(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = tbb::internal::NFS_Allocate(1uLL, 80, 0, a4);
  *a1 = v6;
  v7 = **(a2 + 8);
  __dmb(0xBu);
  *v6 = v7;
  v6[1] = a2;
  v8 = v6 + 2;
  for (i = 384; i != 704; i += 40)
  {
    v10 = *(*(a2 + 8) + i);
    __dmb(0xBu);
    *v8++ = v10;
  }

  if ((sub_29AD21704(*a1, a1 + 1, **a1) & 1) == 0)
  {
    sub_29AD21768(a1);
  }

  return a1;
}

uint64_t sub_29AD21704(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v3 = *(*(*(a1 + 8) + 8) + 128);
  __dmb(0xBu);
  if (v3 == a3)
  {
    v4 = 0;
    result = 1;
  }

  else
  {
    v6 = *(a1 + 8 * ((3 * a3) & 7) + 16);
    v7 = (*(*(*(a1 + 8) + 8) + 256) - 1) & (a3 >> 3);
    v4 = v6 + 8 * v7 + 16;
    result = (*(v6 + 8) >> v7) & 1;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_29AD21768(uint64_t *a1)
{
  do
  {
    v2 = *a1;
    v3 = **a1;
    if ((-*(*(*(*a1 + 8) + 8) + 256) | (v3 >> 3)) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v4 = &v2[(3 * v3) & 7];
      v4[2] = *v4[2];
      v2 = *a1;
    }

    *v2 = v3 + 1;
    result = sub_29AD21704(v2, a1 + 1, v3 + 1);
  }

  while (!result);
  return result;
}

uint64_t sub_29AD217D8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v13 = 0;
  v14 = 0;
  sub_29AC4FD40(&v13, a1, a3, a4);
  v11 = 0;
  v12 = 0;
  sub_29AC4FD40(&v11, a2, v5, v6);
  if (v14 == v12)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      sub_29AD21768(&v13);
      ++v8;
    }

    while (v14 != v12);
  }

  tbb::internal::NFS_Free(v11, v7);
  v11 = 0;
  tbb::internal::NFS_Free(v13, v9);
  return v8;
}

tbb::internal *sub_29AD218A8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_29AC4FD40(v15, a1, a3, a4);
  v14[0] = 0;
  v14[1] = 0;
  sub_29AC4FD40(v14, a2, v6, v7);
  sub_29AD2196C(v15, v14, a3, v8, v16);
  tbb::internal::NFS_Free(v14[0], v9);
  v14[0] = 0;
  tbb::internal::NFS_Free(v15[0], v10);
  v15[0] = 0;
  v11 = v16[2];
  tbb::internal::NFS_Free(v16[0], v12);
  return v11;
}

void sub_29AD2193C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, tbb::internal *a10, uint64_t a11, tbb::internal *a12)
{
  tbb::internal::NFS_Free(a10, a2);
  tbb::internal::NFS_Free(a12, v13);
  _Unwind_Resume(a1);
}

tbb::internal *sub_29AD2196C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v7 = a1[1];
  if (v7 == *(a2 + 8))
  {
    v10 = a3;
  }

  else
  {
    v9 = 0;
    v10 = a3;
    do
    {
      sub_29A1E21F4(v10, v7);
      sub_29A1E2240(v10 + 1, v7 + 1);
      sub_29AD21768(a1);
      v10 += 2;
      v7 = a1[1];
      v9 -= 8;
    }

    while (v7 != *(a2 + 8));
  }

  *a5 = 0;
  a5[1] = 0;
  result = sub_29AC4FD40(a5, a1, a3, a4);
  a5[2] = v10;
  return result;
}

void sub_29AD21A1C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29AD20C68(v1);
      v1 += 2;
      v3 -= 8;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t *sub_29AD21A58(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = tbb::internal::NFS_Allocate(1uLL, 80, 0, a4);
  *a1 = v6;
  v7 = **(a2 + 8);
  __dmb(0xBu);
  *v6 = v7;
  v6[1] = a2;
  v8 = v6 + 2;
  for (i = 384; i != 704; i += 40)
  {
    v10 = *(*(a2 + 8) + i);
    __dmb(0xBu);
    *v8++ = v10;
  }

  if ((sub_29AD21AE4(*a1, a1 + 1, **a1) & 1) == 0)
  {
    sub_29AD21B4C(a1);
  }

  return a1;
}

uint64_t sub_29AD21AE4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v3 = *(*(*(a1 + 8) + 8) + 128);
  __dmb(0xBu);
  if (v3 == a3)
  {
    v4 = 0;
    result = 1;
  }

  else
  {
    v6 = *(a1 + 8 * ((3 * a3) & 7) + 16);
    v7 = (*(*(*(a1 + 8) + 8) + 256) - 1) & (a3 >> 3);
    v4 = v6 + 464 * v7 + 16;
    result = (*(v6 + 8) >> v7) & 1;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_29AD21B4C(uint64_t *a1)
{
  do
  {
    v2 = *a1;
    v3 = **a1;
    if ((-*(*(*(*a1 + 8) + 8) + 256) | (v3 >> 3)) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v4 = &v2[(3 * v3) & 7];
      v4[2] = *v4[2];
      v2 = *a1;
    }

    *v2 = v3 + 1;
    result = sub_29AD21AE4(v2, a1 + 1, v3 + 1);
  }

  while (!result);
  return result;
}

uint64_t sub_29AD21BBC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v13 = 0;
  v14 = 0;
  sub_29AC4FD40(&v13, a1, a3, a4);
  v11 = 0;
  v12 = 0;
  sub_29AC4FD40(&v11, a2, v5, v6);
  if (v14 == v12)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      sub_29AD21B4C(&v13);
      ++v8;
    }

    while (v14 != v12);
  }

  tbb::internal::NFS_Free(v11, v7);
  v11 = 0;
  tbb::internal::NFS_Free(v13, v9);
  return v8;
}

tbb::internal *sub_29AD21C8C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_29AC4FD40(v15, a1, a3, a4);
  v14[0] = 0;
  v14[1] = 0;
  sub_29AC4FD40(v14, a2, v6, v7);
  sub_29AD21D50(v15, v14, a3, v8, v16);
  tbb::internal::NFS_Free(v14[0], v9);
  v14[0] = 0;
  tbb::internal::NFS_Free(v15[0], v10);
  v15[0] = 0;
  v11 = v16[2];
  tbb::internal::NFS_Free(v16[0], v12);
  return v11;
}

void sub_29AD21D20(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, tbb::internal *a10, uint64_t a11, tbb::internal *a12)
{
  tbb::internal::NFS_Free(a10, a2);
  tbb::internal::NFS_Free(a12, v13);
  _Unwind_Resume(a1);
}

tbb::internal *sub_29AD21D50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v7 = a1[1];
  if (v7 == *(a2 + 8))
  {
    v10 = a3;
  }

  else
  {
    v9 = 0;
    v10 = a3;
    do
    {
      sub_29A1E21F4(v10, v7);
      sub_29A1E2240(v10 + 1, v7 + 1);
      sub_29ABD2F88(v10 + 2, (v7 + 2));
      sub_29AD21B4C(a1);
      v10 += 116;
      v7 = a1[1];
      v9 -= 464;
    }

    while (v7 != *(a2 + 8));
  }

  *a5 = 0;
  a5[1] = 0;
  result = sub_29AC4FD40(a5, a1, a3, a4);
  a5[2] = v10;
  return result;
}

void sub_29AD21E0C(void *a1)
{
  sub_29A1DCEA8(v1);
  __cxa_begin_catch(a1);
  if (v2)
  {
    sub_29ABD37FC();
  }

  __cxa_rethrow();
}

void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_AddBindingsForPrim(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29AC1199C((a1 + 112));
  (*(*v6 + 16))(&v21);
  pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetFromParent(&v22, &v24);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v24))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v24, &v17);
    ((*v17)[2])(&v19);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v7 = v19;
    v8 = v20;
    if (v19 != v20)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetCoordSysBinding(&v24, v7, &v17);
        if (v17)
        {
          ((*v17)[4])(&v16, 0.0);
          if (!sub_29AD22C7C(&v16))
          {
            v13 = &v16;
            v9 = sub_29AD25044(a1 + 144, &v16, &unk_29B4D6118, &v13);
            v13 = v7;
            v10 = sub_29A160544((v9 + 3), v7, &unk_29B4D6118, &v13);
            v11 = v10[3];
            if (a3 && !v11)
            {
              sub_29AD22A7C(&v16, v7, &v13);
              sub_29A58C104();
            }

            v10[3] = v11 + 1;
            v12 = *v7;
            v13 = v12;
            if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v13 &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_29A1E21F4(&v14, &v16);
            sub_29A1E2240(&v15, &v16 + 1);
            sub_29AD22CBC(&v21, &v13);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
            sub_29A1DE3A4(&v14);
            if ((v13 & 7) != 0)
            {
              atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16 + 1);
          sub_29A1DE3A4(&v16);
        }

        if (v18)
        {
          sub_29A014BEC(v18);
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v17 = &v19;
    sub_29A124AB0(&v17);
    sub_29AD255F4((a1 + 184), a2, a2, &v21);
    v19 = &v21;
    sub_29AD24F70(&v19);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }
}

void sub_29AD223C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  a12 = &a17;
  sub_29AD24F70(&a12);
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_GetCoordSysPrimSource@<X0>(pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(a2);
  if (result)
  {
    goto LABEL_14;
  }

  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  if ((atomic_load_explicit(&qword_2A174C278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C278))
  {
    v15 = atomic_load(&qword_2A174C280);
    if (!v15)
    {
      v15 = sub_29AD23884();
    }

    if ((*v15 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v15 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
    }

    qword_2A174C270 = EmptyString;
    __cxa_guard_release(&qword_2A174C278);
  }

  v8 = *(qword_2A174C270 + 23) >= 0 ? qword_2A174C270 : *qword_2A174C270;
  v9 = *(Name + 23);
  v10 = v9 >= 0 ? *(Name + 23) : Name[1];
  result = strlen(v8);
  if (v10 < result || ((v11 = result, v9 >= 0) ? (v12 = Name) : (v12 = *Name), result = strncmp(v12, v8, v11), result))
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v19);
    v13 = sub_29A328A44(this + 18, &v19);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::StripNamespace(Name, &__p);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v18);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (sub_29A16039C(v13 + 3, &v18))
      {
        v14 = operator new(0x20uLL);
        *v14 = &unk_2A2086418;
        v14[1] = *(this + 14);
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
      }

      *a3 = 0;
      a3[1] = 0;
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
    return sub_29A1DE3A4(&v19);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_GetCoordSysPrimSource(this, a2, &v16);
  if (v16)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens);
    if (!v6)
    {
      v6 = sub_29AD23A44(&pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens);
    }

    v7 = *(v6 + 3);
    *a3 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v8;
      }
    }

    v9 = v17;
    a3[1] = v16;
    a3[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v9);
    }
  }

  else
  {
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v10 = sub_29AC1199C(this + 14);
    (*(*v10 + 16))(v10, a2);
    v11 = a3[1];
    if (v11)
    {
      v12 = operator new(0x18uLL);
      *v12 = &unk_2A2086668;
      *(v12 + 1) = v11;
      v13 = a3[2];
      *(v12 + 2) = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
      }

      v14 = operator new(0x20uLL);
      *v14 = &unk_2A2086770;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *(v14 + 3) = v12;
      v15 = a3[2];
      a3[1] = v12;
      a3[2] = v14;
      if (v15)
      {

        sub_29A014BEC(v15);
      }
    }
  }
}

void sub_29AD22938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::GetChildPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 24))(v6, a2);
  result = sub_29A328A44(this + 18, a2);
  if (result)
  {
    for (i = result[5]; i; i = *i)
    {
      sub_29AD22A7C(a2, i + 2, &v9);
      sub_29A377BD0(a3, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
      result = sub_29A1DE3A4(&v9);
    }
  }

  return result;
}

void sub_29AD22A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void sub_29AD22A7C(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&qword_2A174C280);
  if (!v6)
  {
    v6 = sub_29AD23884();
  }

  v13 = *v6;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *a2;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  memset(v9, 0, sizeof(v9));
  sub_29A12EF7C(v9, &v13, &v15, 2uLL);
  pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(v9, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = v9;
  sub_29A124AB0(&v12);
  for (i = 8; i != -8; i -= 8)
  {
    v8 = *(&v13 + i);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a1, &v11, a3);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29AD22CBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_29AD252E8(a1, a2);
    v5 = result;
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 16;
    *a2 = 0;
    sub_29A1DDD84((v4 + 8), (a2 + 8));
    result = sub_29A1DDDC0((v4 + 12), (a2 + 12));
  }

  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_29AD22D34(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindings(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = a3;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v6 = sub_29A2F4F50((a1 + 144), (v3 + 8));
      if (v6)
      {
        v7 = v6;
        v8 = sub_29A160470(v6 + 3, v3);
        if (v8)
        {
          v9 = v8[3];
          if (v9)
          {
            v10 = v9 - 1;
            v8[3] = v10;
            if (!v10)
            {
              if (v11)
              {
                sub_29AD22A7C((v3 + 8), v3, &v12);
                sub_29A58C104();
              }

              sub_29A41ADD8(v7 + 3, v8);
              if (!v7[6])
              {
                sub_29AD2568C((a1 + 144), v7);
              }
            }
          }

          else
          {
            LOBYTE(v13) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "Zero ref count for target prim and binding name when deleting binding.", v11, "hdsi/coordSysPrimSceneIndex.cpp", "_RemoveBindings", 360, "void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindings(const _Bindings &, SdfPathSet *const)", v13);
          }
        }

        else
        {
          LOBYTE(v13) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "No ref-counting entry for target prim and binding name when deleting binding.", v11, "hdsi/coordSysPrimSceneIndex.cpp", "_RemoveBindings", 352, "void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindings(const _Bindings &, SdfPathSet *const)", v13);
        }
      }

      else
      {
        LOBYTE(v13) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "No ref-counting entry for targeted prim when deleting binding.", v11, "hdsi/coordSysPrimSceneIndex.cpp", "_RemoveBindings", 345, "void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindings(const _Bindings &, SdfPathSet *const)", v13);
      }

      v3 += 16;
    }

    while (v3 != v4);
  }
}

void sub_29AD22F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindingsForPrim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A55CDFC(a1 + 184);
  if (a1 + 192 != v5)
  {
    v6 = v5;
    pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindings(a1, (v5 + 40), a3);
    sub_29A03AFE8((a1 + 184), v6);
    sub_29AD23BF4((v6 + 4));

    operator delete(v6);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindingsForSubtree(uint64_t result)
{
  if (*(result + 192))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_PrimsAdded(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  v18[33] = *MEMORY[0x29EDCA608];
  IsObserved = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  v6 = IsObserved;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = &v16;
  v12 = &v13;
  v13 = 0;
  if (*(a3 + 260) >= 0x11u)
  {
    v7 = *a3;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(a3 + 256);
  if (v8)
  {
    if (IsObserved)
    {
      v9 = &v12;
    }

    else
    {
      v9 = 0;
    }

    if (IsObserved)
    {
      v10 = &v15;
    }

    else
    {
      v10 = 0;
    }

    v11 = 16 * v8;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindingsForPrim(a1, v7, v9);
      pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_AddBindingsForPrim(a1, v7, v10);
      v7 += 4;
      v11 -= 16;
    }

    while (v11);
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, a3);
    if (v17)
    {
      sub_29AD2322C(&v15, v18);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v18);
      sub_29AC263E4(v18);
    }

    if (v14)
    {
      sub_29AD23364(&v12, v18);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v18);
      sub_29AC26348(v18);
    }
  }

  sub_29A1E2AEC(&v12, v13);
  sub_29A1E2AEC(&v15, v16);
}

void sub_29AD231DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13, uint64_t a14, void *a15)
{
  sub_29AC26348(&a15);
  sub_29A1E2AEC(&a9, a10);
  sub_29A1E2AEC(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_29AD2322C(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 256) = 0x1000000000;
  v4 = a1[2];
  if (v4 >= 0x11)
  {
    sub_29AC3D6F0(a2, v4);
  }

  v7 = *a1;
  v5 = a1 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens);
      if (!v8)
      {
        v8 = sub_29AD23A44(&pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens);
      }

      sub_29AC3C228(&v12, v6 + 7, v8 + 3);
      sub_29AC3D658(a2, &v12);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      sub_29A1DE3A4(&v12);
      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }
}

void sub_29AD23364(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0x1000000000;
  v4 = a1[2];
  if (v4 >= 0x11)
  {
    sub_29AC3D990(a2, v4);
  }

  v7 = *a1;
  v5 = a1 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      sub_29A1E21F4(&v11, v6 + 7);
      sub_29A1E2240(&v12, v6 + 8);
      sub_29AC3D914(a2, &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
      sub_29A1DE3A4(&v11);
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }
}

void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_PrimsDirtied(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  v19[33] = *MEMORY[0x29EDCA608];
  IsObserved = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  v6 = IsObserved;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = &v17;
  v13 = &v14;
  v14 = 0;
  if (*(a3 + 7428) >= 0x11u)
  {
    v7 = *a3;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(a3 + 7424);
  if (v8)
  {
    if (IsObserved)
    {
      v9 = &v13;
    }

    else
    {
      v9 = 0;
    }

    if (IsObserved)
    {
      v10 = &v16;
    }

    else
    {
      v10 = 0;
    }

    v11 = 464 * v8;
    do
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetDefaultLocator(IsObserved);
      IsObserved = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v7 + 2), DefaultLocator);
      if (IsObserved)
      {
        pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindingsForPrim(a1, v7, v9);
        pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_AddBindingsForPrim(a1, v7, v10);
      }

      v7 += 116;
      v11 -= 464;
    }

    while (v11);
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(a1, a3);
    if (v18)
    {
      sub_29AD2322C(&v16, v19);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v19);
      sub_29AC263E4(v19);
    }

    if (v15)
    {
      sub_29AD23364(&v13, v19);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v19);
      sub_29AC26348(v19);
    }
  }

  sub_29A1E2AEC(&v13, v14);
  sub_29A1E2AEC(&v16, v17);
}

void sub_29AD235D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13, uint64_t a14, void *a15)
{
  sub_29AC26348(&a15);
  sub_29A1E2AEC(&a9, a10);
  sub_29A1E2AEC(&a12, a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_PrimsRemoved(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  v13[17] = *MEMORY[0x29EDCA608];
  IsObserved = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  v6 = IsObserved;
  v11 = 0;
  v12 = 0;
  v10 = &v11;
  if (*(a1 + 25))
  {
    v7 = *(a3 + 128);
    v8 = *(a3 + 132) >= 0x11u ? *a3 : a3;
    if (v7)
    {
      v9 = 8 * v7;
      do
      {
        pxrInternal__aapl__pxrReserved__::HdsiCoordSysPrimSceneIndex::_RemoveBindingsForSubtree(a1);
        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
    if (v12)
    {
      sub_29AD23364(&v10, v13);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v13);
      sub_29AC26348(v13);
    }
  }

  sub_29A1E2AEC(&v10, v11);
}

void sub_29AD23730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  sub_29AC26348(va1);
  sub_29A1E2AEC(va, v5);
  _Unwind_Resume(a1);
}

void sub_29AD23760(uint64_t a1)
{
  *a1 = &unk_2A20863A0;
  sub_29AD23B98(a1 + 184, *(a1 + 192));
  sub_29AD23AD0(a1 + 144);
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v2);
  sub_29ABD4DDC();
}

void sub_29AD237F0(uint64_t a1)
{
  *a1 = &unk_2A20863A0;
  sub_29AD23B98(a1 + 184, *(a1 + 192));
  sub_29AD23AD0(a1 + 144);
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v2);
  sub_29ABD4DDC();
}

unint64_t sub_29AD23884()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "__coordSys", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "xformDependency", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174C280, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174C280);
  }

  return v0;
}

void sub_29AD239C8(_Unwind_Exception *a1)
{
  v4 = 8;
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
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType *sub_29AD23A44(atomic_ullong *a1)
{
  result = sub_29AD23A8C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType::~HdSprimTypeTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType *sub_29AD23A8C()
{
  v0 = operator new(0xC8uLL);
  pxrInternal__aapl__pxrReserved__::HdSprimTypeTokens_StaticTokenType::HdSprimTypeTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AD23AD0(uint64_t a1)
{
  sub_29AD23B0C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AD23B0C(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AD23B50(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AD23B50(_DWORD *a1)
{
  sub_29A155EF4((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AD23B98(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD23B98(a1, *a2);
    sub_29AD23B98(a1, a2[1]);
    sub_29AD23BF4((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AD23BF4(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29AD24F70(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29AD23C40(uint64_t a1)
{
  *a1 = &unk_2A2086418;
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29ABD4DDC();
}

void sub_29AD23CC4(uint64_t a1)
{
  *a1 = &unk_2A2086418;
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29ABD4DDC();
}

void sub_29AD23D4C(void *a1@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(qword_2A174C2A0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(qword_2A174C2A0);
    if (v2)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetSchemaToken(v2);
      v4 = *SchemaToken;
      v11 = v4;
      if ((v4 & 7) != 0)
      {
        v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 = v5;
        }
      }

      v6 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(SchemaToken);
      v7 = *v6;
      v12 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = *pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v6);
      v13 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A174C288 = 0;
      unk_2A174C290 = 0;
      qword_2A174C298 = 0;
      sub_29A12EF7C(&qword_2A174C288, &v11, &v14, 3uLL);
      for (i = 16; i != -8; i -= 8)
      {
        v10 = *(&v11 + i);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A174C288, &dword_299FE7000);
      __cxa_guard_release(qword_2A174C2A0);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AD23F00(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v1 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      __cxa_guard_abort(qword_2A174C2A0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AD23F78(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetSchemaToken(a1);
  if ((*SchemaToken ^ *a2) <= 7)
  {
    v28 = 0uLL;
    sub_29ABCCFA4((a1 + 24), &v26);
    v27 = v26;
    v26 = 0uLL;
    v7 = pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::Builder::SetName(&v28, &v27);
    pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::Builder::Build(&v23, v7);
    *a3 = v23;
    v23 = 0uLL;
    if (*(&v27 + 1))
    {
      sub_29A014BEC(*(&v27 + 1));
    }

    if (*(&v26 + 1))
    {
      sub_29A014BEC(*(&v26 + 1));
    }

    v8 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      return;
    }

    goto LABEL_35;
  }

  v9 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(SchemaToken);
  if ((*v9 ^ *a2) <= 7)
  {
    v10 = sub_29AC1199C((a1 + 8));
    v11 = (*(*v10 + 16))(&v23);
    v13 = *(&v23 + 1);
    v12 = v24;
    *(&v23 + 1) = 0;
    *&v24 = 0;
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v13)
    {
      v14 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(v11);
      (*(*v13 + 24))(v13, v14);
      if (!v12)
      {
        return;
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      if (!v12)
      {
        return;
      }
    }

    v8 = v12;
    goto LABEL_35;
  }

  if ((*pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v9) ^ *a2) > 7)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    return;
  }

  if ((atomic_load_explicit(qword_2A174C2C0, memory_order_acquire) & 1) == 0)
  {
    v19 = __cxa_guard_acquire(qword_2A174C2C0);
    if (v19)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v19);
      sub_29AD24300(DefaultLocator, &v23);
      xmmword_2A174C2B0 = v23;
      __cxa_atexit(sub_29AD2436C, &xmmword_2A174C2B0, &dword_299FE7000);
      __cxa_guard_release(qword_2A174C2C0);
    }
  }

  v15 = atomic_load(&qword_2A174C280);
  if (!v15)
  {
    v15 = sub_29AD23884();
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  sub_29ABE8360((a1 + 16), &v21);
  v22 = v21;
  v21 = 0uLL;
  v16 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v23, &v22);
  v17 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v16, &xmmword_2A174C2B0);
  v18 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v17, &xmmword_2A174C2B0);
  pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v18, &v26);
  v27 = v26;
  v26 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v15 + 8), &v27, &v28);
  *a3 = v28;
  v28 = 0uLL;
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  v8 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
LABEL_35:
    sub_29A014BEC(v8);
  }
}

void *sub_29AD24300@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  sub_29AD2439C(v4, a1);

  return sub_29AD247C4(a2, v4);
}

uint64_t sub_29AD2436C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t sub_29AD2439C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A2086460;
  sub_29ABD30AC((a1 + 8), a2);
  return a1;
}

void sub_29AD243F4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2086460;
  sub_29ABC3488(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AD24448(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2086460;
  sub_29ABC3488(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t *sub_29AD244CC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 56), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AD244EC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AD24640(a1);
}

unint64_t sub_29AD24504(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29AC0FB80(&v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

_DWORD *sub_29AD24628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20864A0;
  return sub_29AD2475C(a2, v2);
}

void sub_29AD24640(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit((v2 + 56), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    v3 = sub_29ABC3488(v2);

    operator delete(v3);
  }
}

uint64_t sub_29AD2468C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 56));
  if (v2 != 1)
  {
    sub_29AD246F4(*a1, &v4);
    sub_29AD24640(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AD24640(&v4);
  }

  return *a1;
}

_DWORD *sub_29AD246F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  result = sub_29ABD30AC(v4, a1);
  atomic_store(0, v4 + 14);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 14, 1u, memory_order_relaxed);
  return result;
}

_DWORD *sub_29AD2475C(void *a1, uint64_t a2)
{
  v4 = operator new(0x40uLL);
  result = sub_29ABD30AC(v4, a2);
  atomic_store(0, v4 + 14);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 14, 1u, memory_order_relaxed);
  return result;
}

void *sub_29AD247C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2086578;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AD2481C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD24838(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD24860(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD24890(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20865C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD248D4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD248FC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD2492C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086640))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD2496C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086668;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD249C8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086668;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD24A50(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = (*(**(a1 + 8) + 24))(&v13);
  if ((*pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetSchemaToken(v5) ^ *a2) > 7)
  {
    v10 = v14;
    *a3 = v13;
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29ABC3244(&v13, &v11);
    v6 = v11;
    if (v11)
    {
      v7 = operator new(0x18uLL);
      *v7 = &unk_2A20866B0;
      v7[1] = v6;
      v8 = v12;
      v7[2] = v12;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = operator new(0x20uLL);
      *v9 = &unk_2A20866F8;
      v9[1] = 0;
      v9[2] = 0;
      v9[3] = v7;
      *a3 = v7;
      a3[1] = v9;
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }
}

void sub_29AD24B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  (*(*v12 + 8))(v12);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(a1);
}

void sub_29AD24BE0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20866B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD24C3C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20866B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD24CC4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  (*(**(a1 + 8) + 24))(&v9);
  sub_29ABE1B68(&v9, &v10);
  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  if (v10)
  {
    (*(*v10 + 32))(&v8, 0.0);
    if (sub_29AD22C7C(&v8))
    {
      v5 = v11;
      *a3 = v10;
      a3[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_29AD22A7C(&v8, a2, &v6);
      sub_29ABE8360(&v6, &v9);
      *a3 = v9;
      v9 = 0uLL;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
      sub_29A1DE3A4(&v6);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
    sub_29A1DE3A4(&v8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AD24DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a11);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  _Unwind_Resume(a1);
}

void sub_29AD24E3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD24E64(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD24E94(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086748))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD24ED8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD24F00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD24F30(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20867C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD24F70(void ***a1)
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
        v4 -= 16;
        sub_29AD24FF8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AD24FF8(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));
  result = sub_29A1DE3A4((a2 + 8));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29AD25044(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29AD1D9B8(a1, v6, a4, &v22);
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

void sub_29AD25274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD2528C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AD2528C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AD23B50(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AD252E8(uint64_t a1, uint64_t *a2)
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
  v10 = *a2;
  *(&v19 + 1) = &v8[16 * v7];
  *v9 = v10;
  *a2 = 0;
  sub_29A1DDD84(v9 + 2, a2 + 2);
  sub_29A1DDDC0(v9 + 3, a2 + 3);
  *&v19 = v9 + 16;
  v11 = *(a1 + 8);
  v12 = &v9[*a1 - v11];
  sub_29AD2540C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AD25578(&v17);
  return v16;
}

void sub_29AD253F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD25578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD2540C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = v7 + 3;
      *a4 = *v7;
      v10 = (a4 + 12);
      *v8 = 0;
      v8 += 2;
      sub_29A1DDD84((a4 + 8), v7 + 2);
      sub_29A1DDDC0(v10, v9);
      a4 = v15 + 16;
      v15 += 16;
      v7 = v8;
    }

    while (v8 != a3);
    v13 = 1;
    while (v5 != a3)
    {
      sub_29AD24FF8(a1, v5);
      v5 += 16;
    }
  }

  return sub_29AD254EC(v12);
}

uint64_t sub_29AD254EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD25524(a1);
  }

  return a1;
}

uint64_t *sub_29AD25524(uint64_t *result)
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
      v3 -= 16;
      result = sub_29AD24FF8(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AD25578(void **a1)
{
  sub_29AD255AC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AD255AC(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 16;
      result = sub_29AD24FF8(v4, v1 - 16);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t *sub_29AD255F4(uint64_t **a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = sub_29A38932C(a1, &v11);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    v8 = operator new(0x40uLL);
    sub_29A4B447C((v8 + 4), a3, a4);
    sub_29A00B204(a1, v11, v9, v8);
  }

  return v8;
}

uint64_t sub_29AD2568C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AD23B50(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::HdsiExtComputationDependencySceneIndex::HdsiExtComputationDependencySceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::HdsiExtComputationDependencySceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdsiExtComputationDependencySceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v100 = *MEMORY[0x29EDCA608];
  v5 = sub_29AC1199C(this + 14);
  v6 = (*(*v5 + 16))(v5, a2);
  if (!a3[1])
  {
    return;
  }

  SchemaToken = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v6);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v8)
  {
    v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v8 + 38) ^ *a3) > 7)
  {
    pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetFromParent(a3 + 1, &v88);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v88))
    {
      v86 = 0uLL;
      v87 = 0;
      v84 = 0uLL;
      v85 = 0;
      pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetExtComputationPrimvarNames(&v88, v83);
      v21 = *(&v83[0] + 1);
      for (i = *&v83[0]; i != v21; ++i)
      {
        pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetExtComputationPrimvar(&v88, i, &v81);
        pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputation(&v81, &v79);
        if (v79)
        {
          pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputationOutputName(&v81, &v78);
          if (v78)
          {
            EmptyString = atomic_load(qword_2A174C2D0);
            if (!EmptyString)
            {
              EmptyString = sub_29AD26EFC();
            }

            if ((*(EmptyString + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v23 = ((*(EmptyString + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
              v23 = EmptyString;
            }

            if ((*i & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v24 = ((*i & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v23, v24, &v97);
            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v96);
            sub_29A153214(&v86, v96);
            if ((v96[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*&v96[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (SBYTE7(v98) < 0)
            {
              operator delete(v97);
            }

            v74 = 0u;
            v75 = 0u;
            v73 = 0u;
            pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputation(&v81, &v72);
            v25 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v73, &v72);
            OutputsLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputsLocator(v25);
            (*(*v78 + 32))(&v69, 0.0);
            pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(OutputsLocator, &v69, v96);
            v27 = atomic_load(qword_2A174C2D0);
            if (!v27)
            {
              v27 = sub_29AD26EFC();
            }

            pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v96, v27, &v97);
            sub_29AD24300(&v97, &v70);
            v71 = v70;
            v70 = 0uLL;
            v28 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v25, &v71);
            DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v28);
            pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, i, &v90);
            v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
            if (!v30)
            {
              v30 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
            }

            pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&v90, v30, &v93);
            sub_29AD24300(&v93, &v67);
            v68 = v67;
            v67 = 0uLL;
            v31 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v28, &v68);
            pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v31, &v76);
            v77 = v76;
            v76 = 0uLL;
            sub_29A01729C(&v84, &v77);
            if (*(&v77 + 1))
            {
              sub_29A014BEC(*(&v77 + 1));
            }

            if (*(&v76 + 1))
            {
              sub_29A014BEC(*(&v76 + 1));
            }

            if (*(&v68 + 1))
            {
              sub_29A014BEC(*(&v68 + 1));
            }

            if (*(&v67 + 1))
            {
              sub_29A014BEC(*(&v67 + 1));
            }

            sub_29ABC3488(&v93);
            sub_29ABC3488(&v90);
            if (*(&v71 + 1))
            {
              sub_29A014BEC(*(&v71 + 1));
            }

            if (*(&v70 + 1))
            {
              sub_29A014BEC(*(&v70 + 1));
            }

            sub_29ABC3488(&v97);
            sub_29ABC3488(v96);
            if ((v69 & 7) != 0)
            {
              atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (*(&v72 + 1))
            {
              sub_29A014BEC(*(&v72 + 1));
            }

            if (*(&v75 + 1))
            {
              sub_29A014BEC(*(&v75 + 1));
            }

            if (*(&v74 + 1))
            {
              sub_29A014BEC(*(&v74 + 1));
            }

            if (*(&v73 + 1))
            {
              sub_29A014BEC(*(&v73 + 1));
            }
          }

          if (*(&v78 + 1))
          {
            sub_29A014BEC(*(&v78 + 1));
          }
        }

        if (v80)
        {
          sub_29A014BEC(v80);
        }

        if (v82)
        {
          sub_29A014BEC(v82);
        }
      }

      *&v97 = v83;
      sub_29A124AB0(&v97);
      v44 = atomic_load(qword_2A174C2D0);
      if (!v44)
      {
        v44 = sub_29AD26EFC();
      }

      sub_29A1D8028(&v86, (v44 + 24));
      sub_29AD27324();
      sub_29A017F80(&v84, &xmmword_2A174C380);
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((*(&v86 + 1) - v86) >> 3, v86, v84, &v97);
      v63 = v97;
      *&v97 = &v84;
      sub_29A0176E4(&v97);
      *&v97 = &v86;
      sub_29A124AB0(&v97);
      v43 = v63;
    }

    else
    {
      if ((atomic_load_explicit(qword_2A174C370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A174C370))
      {
        v61 = atomic_load(qword_2A174C2D0);
        if (!v61)
        {
          v61 = sub_29AD26EFC();
        }

        sub_29AD27324();
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v61 + 24), &xmmword_2A174C380, &v97);
        xmmword_2A174C360 = v97;
        __cxa_atexit(sub_29ABE5FF4, &xmmword_2A174C360, &dword_299FE7000);
        __cxa_guard_release(qword_2A174C370);
      }

      v43 = xmmword_2A174C360;
      if (*(&xmmword_2A174C360 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A174C360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        *(&v43 + 1) = 0;
      }
    }

    if (!v89)
    {
      goto LABEL_156;
    }

    v62 = v43;
    sub_29A014BEC(v89);
  }

  else
  {
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v73 = 0uLL;
    *&v74 = 0;
    v9 = atomic_load(qword_2A174C2D0);
    if (!v9)
    {
      v9 = sub_29AD26EFC();
    }

    sub_29A1D8028(&v90, (v9 + 32));
    if ((atomic_load_explicit(qword_2A174C2F0, memory_order_acquire) & 1) == 0)
    {
      v47 = __cxa_guard_acquire(qword_2A174C2F0);
      if (v47)
      {
        v98 = 0u;
        v99 = 0u;
        v97 = 0u;
        InputValuesLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValuesLocator(v47);
        sub_29AD24300(InputValuesLocator, &v86);
        v93 = v86;
        v86 = 0uLL;
        v49 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(&v97, &v93);
        sub_29AD26DA4();
        v50 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v49, &xmmword_2A174C300);
        pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v50, v96);
        xmmword_2A174C2E0 = v96[0];
        v96[0] = 0uLL;
        if (*(&v93 + 1))
        {
          sub_29A014BEC(*(&v93 + 1));
        }

        if (*(&v86 + 1))
        {
          sub_29A014BEC(*(&v86 + 1));
        }

        sub_29ABF2F5C(&v97);
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C2E0, &dword_299FE7000);
        __cxa_guard_release(qword_2A174C2F0);
      }
    }

    v84 = xmmword_2A174C2E0;
    if (*(&xmmword_2A174C2E0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A174C2E0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A01729C(&v73, &v84);
    if (*(&v84 + 1))
    {
      sub_29A014BEC(*(&v84 + 1));
    }

    pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(a3 + 1, &v88);
    pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputations(&v88, &v81);
    pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v81, &v86);
    v11 = *(&v86 + 1);
    for (j = v86; j != v11; ++j)
    {
      sub_29ACC6A10(&v81, j, &v84);
      pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputation(&v84, v83);
      if (*&v83[0])
      {
        pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputationOutputName(&v84, &v79);
        if (v79)
        {
          v12 = atomic_load(qword_2A174C2D0);
          if (!v12)
          {
            v12 = sub_29AD26EFC();
          }

          if ((*(v12 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v13 = ((*(v12 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
            v13 = v12;
          }

          if ((*j & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v14 = ((*j & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v13, v14, &v97);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v96);
          sub_29A153214(&v90, v96);
          if ((v96[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*&v96[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (SBYTE7(v98) < 0)
          {
            operator delete(v97);
          }

          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v15 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v93, v83);
          v16 = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputsLocator(v15);
          (*(*v79 + 32))(&v71, 0.0);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v16, &v71, v96);
          v17 = atomic_load(qword_2A174C2D0);
          if (!v17)
          {
            v17 = sub_29AD26EFC();
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v96, v17, &v97);
          sub_29AD24300(&v97, &v72);
          v76 = v72;
          v72 = 0uLL;
          v18 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v15, &v76);
          sub_29AD26DA4();
          v19 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v18, &xmmword_2A174C300);
          pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v19, &v77);
          v78 = v77;
          v77 = 0uLL;
          sub_29A01729C(&v73, &v78);
          if (*(&v78 + 1))
          {
            sub_29A014BEC(*(&v78 + 1));
          }

          if (*(&v77 + 1))
          {
            sub_29A014BEC(*(&v77 + 1));
          }

          if (*(&v76 + 1))
          {
            sub_29A014BEC(*(&v76 + 1));
          }

          if (*(&v72 + 1))
          {
            sub_29A014BEC(*(&v72 + 1));
          }

          sub_29ABC3488(&v97);
          sub_29ABC3488(v96);
          if ((v71 & 7) != 0)
          {
            atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (*(&v95 + 1))
          {
            sub_29A014BEC(*(&v95 + 1));
          }

          if (*(&v94 + 1))
          {
            sub_29A014BEC(*(&v94 + 1));
          }

          if (*(&v93 + 1))
          {
            sub_29A014BEC(*(&v93 + 1));
          }
        }

        if (v80)
        {
          sub_29A014BEC(v80);
        }
      }

      if (*(&v83[0] + 1))
      {
        sub_29A014BEC(*(&v83[0] + 1));
      }

      if (*(&v84 + 1))
      {
        sub_29A014BEC(*(&v84 + 1));
      }
    }

    *&v97 = &v86;
    sub_29A124AB0(&v97);
    pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputs(&v88, &v79);
    pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v79, &v86);
    v33 = *(&v86 + 1);
    for (k = v86; k != v33; k = (k + 8))
    {
      v34 = atomic_load(qword_2A174C2D0);
      if (!v34)
      {
        v34 = sub_29AD26EFC();
      }

      if ((*(v34 + 6) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v35 = ((*(v34 + 6) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v34 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
        v35 = v34;
      }

      if ((*k & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v36 = ((*k & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v36 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v35, v36, &v97);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v96);
      sub_29A153214(&v90, v96);
      if ((v96[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v96[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SBYTE7(v98) < 0)
      {
        operator delete(v97);
      }

      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      sub_29AD26DA4();
      v37 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(&v93, &xmmword_2A174C300);
      v38 = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputsLocator(v37);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v38, k, v96);
      v39 = atomic_load(qword_2A174C2D0);
      if (!v39)
      {
        v39 = sub_29AD26EFC();
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v96, v39, &v97);
      sub_29AD24300(&v97, &v77);
      v78 = v77;
      v77 = 0uLL;
      v40 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v37, &v78);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v40, v83);
      v84 = v83[0];
      v83[0] = 0uLL;
      sub_29A01729C(&v73, &v84);
      if (*(&v84 + 1))
      {
        sub_29A014BEC(*(&v84 + 1));
      }

      if (*(&v83[0] + 1))
      {
        sub_29A014BEC(*(&v83[0] + 1));
      }

      if (*(&v78 + 1))
      {
        sub_29A014BEC(*(&v78 + 1));
      }

      if (*(&v77 + 1))
      {
        sub_29A014BEC(*(&v77 + 1));
      }

      sub_29ABC3488(&v97);
      sub_29ABC3488(v96);
      if (*(&v95 + 1))
      {
        sub_29A014BEC(*(&v95 + 1));
      }

      if (*(&v94 + 1))
      {
        sub_29A014BEC(*(&v94 + 1));
      }

      if (*(&v93 + 1))
      {
        sub_29A014BEC(*(&v93 + 1));
      }
    }

    *&v97 = &v86;
    sub_29A124AB0(&v97);
    v41 = atomic_load(qword_2A174C2D0);
    if (!v41)
    {
      v41 = sub_29AD26EFC();
    }

    sub_29A1D8028(&v90, (v41 + 56));
    if ((atomic_load_explicit(qword_2A174C330, memory_order_acquire) & 1) == 0)
    {
      v51 = __cxa_guard_acquire(qword_2A174C330);
      if (v51)
      {
        v98 = 0u;
        v99 = 0u;
        v97 = 0u;
        InputComputationsLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputationsLocator(v51);
        sub_29AD24300(InputComputationsLocator, &v86);
        v93 = v86;
        v86 = 0uLL;
        v53 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(&v97, &v93);
        v54 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v53);
        sub_29AD24300(v54, v83);
        v84 = v83[0];
        v83[0] = 0uLL;
        v55 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v53, &v84);
        pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v55, v96);
        xmmword_2A174C320 = v96[0];
        v96[0] = 0uLL;
        if (*(&v84 + 1))
        {
          sub_29A014BEC(*(&v84 + 1));
        }

        if (*(&v83[0] + 1))
        {
          sub_29A014BEC(*(&v83[0] + 1));
        }

        if (*(&v93 + 1))
        {
          sub_29A014BEC(*(&v93 + 1));
        }

        if (*(&v86 + 1))
        {
          sub_29A014BEC(*(&v86 + 1));
        }

        sub_29ABF2F5C(&v97);
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C320, &dword_299FE7000);
        __cxa_guard_release(qword_2A174C330);
      }
    }

    sub_29A017F80(&v73, &xmmword_2A174C320);
    v42 = atomic_load(qword_2A174C2D0);
    if (!v42)
    {
      v42 = sub_29AD26EFC();
    }

    sub_29A1D8028(&v90, (v42 + 64));
    if ((atomic_load_explicit(qword_2A174C350, memory_order_acquire) & 1) == 0)
    {
      v56 = __cxa_guard_acquire(qword_2A174C350);
      if (v56)
      {
        v98 = 0u;
        v99 = 0u;
        v97 = 0u;
        v57 = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputsLocator(v56);
        sub_29AD24300(v57, &v86);
        v93 = v86;
        v86 = 0uLL;
        v58 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(&v97, &v93);
        v59 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v58);
        sub_29AD24300(v59, v83);
        v84 = v83[0];
        v83[0] = 0uLL;
        v60 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v58, &v84);
        pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v60, v96);
        xmmword_2A174C340 = v96[0];
        v96[0] = 0uLL;
        if (*(&v84 + 1))
        {
          sub_29A014BEC(*(&v84 + 1));
        }

        if (*(&v83[0] + 1))
        {
          sub_29A014BEC(*(&v83[0] + 1));
        }

        if (*(&v93 + 1))
        {
          sub_29A014BEC(*(&v93 + 1));
        }

        if (*(&v86 + 1))
        {
          sub_29A014BEC(*(&v86 + 1));
        }

        sub_29ABF2F5C(&v97);
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C340, &dword_299FE7000);
        __cxa_guard_release(qword_2A174C350);
      }
    }

    sub_29A017F80(&v73, &xmmword_2A174C340);
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v91 - v90) >> 3, v90, v73, &v97);
    v62 = v97;
    if (v80)
    {
      sub_29A014BEC(v80);
    }

    if (v82)
    {
      sub_29A014BEC(v82);
    }

    if (v89)
    {
      sub_29A014BEC(v89);
    }

    *&v97 = &v73;
    sub_29A0176E4(&v97);
    *&v97 = &v90;
    sub_29A124AB0(&v97);
  }

  v43 = v62;
LABEL_156:
  v64 = v43;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v64, &v65);
  sub_29AD26B8C(&v65, (a3 + 1), &v66);
  v45 = v66;
  v66 = 0uLL;
  v46 = a3[2];
  *(a3 + 1) = v45;
  if (v46)
  {
    sub_29A014BEC(v46);
    if (*(&v66 + 1))
    {
      sub_29A014BEC(*(&v66 + 1));
    }
  }

  if (*(&v65 + 1))
  {
    sub_29A014BEC(*(&v65 + 1));
  }

  if (*(&v64 + 1))
  {
    sub_29A014BEC(*(&v64 + 1));
  }
}

void sub_29AD26618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, uint64_t a55, uint64_t a56, std::__shared_weak_count *a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66)
  {
    sub_29A014BEC(a66);
  }

  if (a54)
  {
    sub_29A014BEC(a54);
  }

  sub_29ABF2F5C((v67 - 160));
  __cxa_guard_abort(qword_2A174C350);
  if (a42)
  {
    sub_29A014BEC(a42);
  }

  if (a44)
  {
    sub_29A014BEC(a44);
  }

  if (a57)
  {
    sub_29A014BEC(a57);
  }

  *(v67 - 160) = &a29;
  sub_29A0176E4((v67 - 160));
  *(v67 - 160) = &a58;
  sub_29A124AB0((v67 - 160));
  sub_29AC2B620(v66);
  _Unwind_Resume(a1);
}

void sub_29AD26B8C(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  v7 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, &v7, a2);
  sub_29ABDE960(a3, v6);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD26C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v11)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AD26C2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdsiExtComputationDependencySceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdsiExtComputationDependencySceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void sub_29AD26CD8(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AD26D3C(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AD26DA4()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(qword_2A174C310, memory_order_acquire) & 1) == 0)
  {
    v0 = __cxa_guard_acquire(qword_2A174C310);
    if (v0)
    {
      OutputsLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputsLocator(v0);
      v2 = atomic_load(qword_2A174C2D0);
      if (!v2)
      {
        v2 = sub_29AD26EFC();
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(OutputsLocator, (v2 + 8), v5);
      v3 = atomic_load(qword_2A174C2D0);
      if (!v3)
      {
        v3 = sub_29AD26EFC();
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v5, v3, v6);
      sub_29AD24300(v6, &v4);
      xmmword_2A174C300 = v4;
      v4 = 0uLL;
      sub_29ABC3488(v6);
      sub_29ABC3488(v5);
      __cxa_atexit(sub_29AD2436C, &xmmword_2A174C300, &dword_299FE7000);
      __cxa_guard_release(qword_2A174C310);
    }
  }
}

void sub_29AD26EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29ABC3488(va1);
  sub_29ABC3488(va);
  __cxa_guard_abort(qword_2A174C310);
  _Unwind_Resume(a1);
}

unint64_t sub_29AD26EFC()
{
  v34 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "value", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "__all__", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "primvarExtComputationDependency_", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "extComputationPrimvarsDependenciesDependency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "extComputationInputValuesDependency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "extComputationInputDependency_", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "extComputationOutputDependency_", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "extComputationInputComputationsDependenciesDependency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "extComputationOutputsDependenciesDependency", 0);
  v1 = v0 + 9;
  v2 = *v0;
  v25 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v3;
    }
  }

  v4 = v0[1];
  v26 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v5;
    }
  }

  v6 = v0[2];
  v27 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v7;
    }
  }

  v8 = v0[3];
  v28 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v9;
    }
  }

  v10 = v0[4];
  v29 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v11;
    }
  }

  v12 = v0[5];
  v30 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v13;
    }
  }

  v14 = v0[6];
  v31 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v15;
    }
  }

  v16 = v0[7];
  v32 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v17;
    }
  }

  v18 = v0[8];
  v33 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v19;
    }
  }

  *v1 = 0;
  v0[10] = 0;
  v0[11] = 0;
  sub_29A12EF7C(v1, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v21 = *(&v25 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v22 = 0;
  atomic_compare_exchange_strong(qword_2A174C2D0, &v22, v0);
  if (v22)
  {
    v23 = sub_29A7FB35C(v0);
    operator delete(v23);
    return atomic_load(qword_2A174C2D0);
  }

  return v0;
}

void sub_29AD271C8(_Unwind_Exception *a1)
{
  v4 = 64;
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
      v6 = v1[8];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[7];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[6];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[5];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[4];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[3];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[2];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[1];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void sub_29AD27324()
{
  if ((atomic_load_explicit(&qword_2A174C390, memory_order_acquire) & 1) == 0)
  {
    v0 = __cxa_guard_acquire(&qword_2A174C390);
    if (v0)
    {
      memset(v9, 0, sizeof(v9));
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetDefaultLocator(v0);
      sub_29AD24300(DefaultLocator, &v7);
      v8 = v7;
      v7 = 0uLL;
      v2 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v9, &v8);
      v3 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v2);
      sub_29AD24300(v3, &v5);
      v6 = v5;
      v5 = 0uLL;
      v4 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v2, &v6);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v4, &v10);
      xmmword_2A174C380 = v10;
      v10 = 0uLL;
      if (*(&v6 + 1))
      {
        sub_29A014BEC(*(&v6 + 1));
      }

      if (*(&v5 + 1))
      {
        sub_29A014BEC(*(&v5 + 1));
      }

      if (*(&v8 + 1))
      {
        sub_29A014BEC(*(&v8 + 1));
      }

      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }

      sub_29ABF2F5C(v9);
      __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C380, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174C390);
    }
  }
}

void sub_29AD27444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29ABF2F5C(va);
  __cxa_guard_abort(&qword_2A174C390);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSiExtComputationPrimvarPruningSceneIndex::HdSiExtComputationPrimvarPruningSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSiExtComputationPrimvarPruningSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::HdSiExtComputationPrimvarPruningSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!result)
  {
    result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(result + 7) ^ *a3) < 8)
  {
    goto LABEL_10;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!result)
  {
    result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(result + 10) ^ *a3) < 8)
  {
    goto LABEL_10;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!result)
  {
    result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(result + 13) ^ *a3) <= 7)
  {
LABEL_10:
    v8 = a3[1];
    if (v8)
    {
      v9 = operator new(0x20uLL);
      *v9 = &unk_2A20868D8;
      v9[1] = v8;
      v10 = a3[2];
      v9[2] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v9[3] = *(this + 14);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSiExtComputationPrimvarPruningSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdSiExtComputationPrimvarPruningSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSiExtComputationPrimvarPruningSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v13 = *MEMORY[0x29EDCA608];
  v12 = 0x1000000000;
  v7 = v4[1856];
  if (v7 >= 0x11)
  {
    sub_29AC14D54(v11, v7);
    LODWORD(v7) = v5[1856];
  }

  if (v5[1857] >= 0x11u)
  {
    v5 = *v5;
  }

  if (v7)
  {
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetDefaultLocator(v3);
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(DefaultLocator);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::ReplacePrefix((v5 + 2), v10);
    sub_29AC2C3E8(v11, v5, v10);
    sub_29ABD3178();
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v11);
  return sub_29ABD3844(v11);
}

void sub_29AD279B0(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AD27A14(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void *sub_29AD27A7C@<X0>(void *a1@<X8>)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2086920;
  *a1 = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A2086968;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  a1[1] = result;
  return result;
}

void sub_29AD27AF4(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType *sub_29AD27BD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  v4 = *a2;
  v3 = a2[1];
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  if (!result)
  {
    result = sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  }

  if (v4 != v3)
  {
    while ((*v4 ^ *result) >= 8)
    {
      if (++v4 == v3)
      {
        v4 = v3;
        break;
      }
    }
  }

  v6 = a2[1];
  if (v4 != v6)
  {
    v7 = *a2;
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!result)
    {
      result = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    if (v7 != v6)
    {
      while ((*v7 ^ *result) >= 8)
      {
        if (++v7 == v6)
        {
          goto LABEL_15;
        }
      }

      v6 = v7;
    }

LABEL_15:
    if (v6 == a2[1])
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      return sub_29A1D8028(a2, v8);
    }
  }

  return result;
}

void sub_29AD27D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AD27D2C(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  (*(**(a1 + 8) + 24))(&v22);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  if ((*v6 ^ *a2) <= 7)
  {
    v7 = *(a1 + 8);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens))
    {
      sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
    }

    (*(*v7 + 24))(&v23, v7);
    sub_29ABC3244(&v23, &v20);
    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = v9;
        v19 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_29A014BEC(v10);
        sub_29A014BEC(v10);
      }

      else
      {
        v18 = v20;
        v19 = 0;
      }

      pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetExtComputationPrimvarNames(&v18, &v23);
      v11 = v23;
      v17[0] = &v23;
      sub_29A124AB0(v17);
      if (v11 != *(&v11 + 1))
      {
        sub_29ABC3244(&v22, v17);
        v12 = operator new(0x40uLL);
        v14 = v17[0];
        v13 = v17[1];
        *v12 = &unk_2A20869E0;
        v12[1] = v14;
        v12[2] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
        }

        v15 = v21;
        v12[3] = v20;
        v12[4] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12[5] = *(a1 + 24);
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
      }

      if (v19)
      {
        sub_29A014BEC(v19);
      }
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  if (!v16)
  {
    v16 = sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  }

  if ((*v16 ^ *a2) > 7)
  {
    *a3 = v22;
    v22 = 0uLL;
  }

  else
  {
    sub_29AD27A7C(&v23);
    *a3 = v23;
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }
}

void sub_29AD280B4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void sub_29AD281A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void sub_29AD281D0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_29AD281E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD28210(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD28240(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20869B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD28280(void *a1)
{
  *a1 = &unk_2A20869E0;
  v1 = a1[7];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void sub_29AD282FC(void *a1)
{
  *a1 = &unk_2A20869E0;
  v1 = a1[7];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void sub_29AD2837C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**(a1 + 8) + 16))(&v6);
  (*(**(a1 + 24) + 16))(&v4);
  sub_29A1D7F98(a2, ((v5 - v4) >> 3) + v7 - v6);
  sub_29A372808(a2, a2[1], v6, v7, v7 - v6);
  sub_29A372808(a2, a2[1], v4, v5, (v5 - v4) >> 3);
  v8 = &v4;
  sub_29A124AB0(&v8);
  v4 = &v6;
  sub_29A124AB0(&v4);
}

void sub_29AD28478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  *(v2 - 24) = va;
  sub_29A124AB0((v2 - 24));
  va_copy(v4, va1);
  sub_29A124AB0(va);
  sub_29A124AB0(va1);
  _Unwind_Resume(a1);
}

void sub_29AD284C8(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (!*a3)
  {
    v6 = a3[1];
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    (*(**(a1 + 24) + 24))(&v18);
    sub_29ABC3244(&v18, &v16);
    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    v7 = v16;
    if (v16)
    {
      v8 = operator new(0x30uLL);
      v9 = v8;
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v8 = &unk_2A2086A78;
      v8[1] = v7;
      v12 = v17;
      v8[2] = v17;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *a2;
      v8[3] = *a2;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v8[3] &= 0xFFFFFFFFFFFFFFF8;
      }

      v8[4] = v10;
      v8[5] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v16)
      {
        *&v18 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
        *(&v18 + 1) = "_ExtCompPrimvarDataSource";
        v19 = 533;
        v20 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtCompPrimvarDataSource::_ExtCompPrimvarDataSource(const HdContainerDataSourceHandle &, const TfToken &, _ExtComputationContextSharedPtr)";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Invalid container data source input provided.");
        sub_29AD27A7C(&v18);
        v15 = v9[2];
        *(v9 + 1) = v18;
        if (v15)
        {
          sub_29A014BEC(v15);
        }
      }

      v14 = operator new(0x20uLL);
      *v14 = &unk_2A2086B80;
      v14[1] = 0;
      v14[2] = 0;
      v14[3] = v9;
      if (v11)
      {
        sub_29A014BEC(v11);
      }

      *a3 = v9;
      a3[1] = v14;
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (!v7)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

void sub_29AD286DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = *(v10 + 5);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = *(v10 + 3);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(v10 + 2);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  operator delete(v10);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(a1);
}

void sub_29AD287A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2086A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AD287F8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086A78;
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD28878(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086A78;
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v5);
}

void sub_29AD288FC(void *a1@<X8>)
{
  v1 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(qword_2A174C3B0, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(qword_2A174C3B0);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v5 = *v4;
      v13 = v5;
      if ((v5 & 7) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
        {
          v13 = v6;
        }
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v7)
      {
        v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v8 = *(v7 + 3);
      v14 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v9)
      {
        v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v10 = *(v9 + 4);
      v15 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A174C398 = 0;
      unk_2A174C3A0 = 0;
      qword_2A174C3A8 = 0;
      sub_29A12EF7C(&qword_2A174C398, &v13, &v16, 3uLL);
      for (i = 16; i != -8; i -= 8)
      {
        v12 = *(&v13 + i);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A174C398, &dword_299FE7000);
      __cxa_guard_release(qword_2A174C3B0);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AD28B94(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v6 + 3) ^ *a2) < 8)
  {
    goto LABEL_7;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v7 + 4) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v9)
    {
      v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    if ((*v9 ^ *a2) > 7)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      v10 = operator new(0x30uLL);
      v11 = v10;
      v12 = a1[4];
      v13 = a1[5];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = a1[1];
      v14 = a1[2];
      *v10 = &unk_2A2086AC0;
      v10[1] = v15;
      v10[2] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = a1[3];
      v10[3] = v16;
      if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10[3] &= 0xFFFFFFFFFFFFFFF8;
      }

      v10[4] = v12;
      v10[5] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!a1[1])
      {
        *&v19 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
        *(&v19 + 1) = "_SampledExtCompPrimvarDataSource";
        v20 = 461;
        v21 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_SampledExtCompPrimvarDataSource::_SampledExtCompPrimvarDataSource(const HdContainerDataSourceHandle &, const TfToken &, _ExtComputationContextSharedPtr)";
        v22 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Invalid container data source input provided.");
        sub_29AD27A7C(&v19);
        v18 = v11[2];
        *(v11 + 1) = v19;
        if (v18)
        {
          sub_29A014BEC(v18);
        }
      }

      v17 = operator new(0x20uLL);
      *v17 = &unk_2A2086B08;
      v17[1] = 0;
      v17[2] = 0;
      v17[3] = v11;
      if (v13)
      {
        sub_29A014BEC(v13);
      }

      *a3 = v11;
      a3[1] = v17;
    }
  }

  else
  {
LABEL_7:
    v8 = *(*a1[1] + 24);

    v8();
  }
}

void sub_29AD28DE4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 5);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(v1 + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(v1 + 2);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_29AD28E7C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086AC0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD28EFC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086AC0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v5);
}

void sub_29AD28F80(void *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v111 = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  v7 = a1[2];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v72 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    sub_29A014BEC(v7);
  }

  else
  {
    v72 = 0;
  }

  v71 = v6;
  pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputation(&v71, &v69);
  pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputationOutputName(&v71, &v67);
  if (v69 && v67)
  {
    (*(*v69 + 32))(&v66, 0.0);
    (*(*v67 + 32))(&v65, 0.0);
    v8 = a1[4];
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v93 = 0u;
    v94 = 0u;
    v95 = 1065353216;
    memset(v91, 0, sizeof(v91));
    v92 = 1065353216;
    sub_29AD2A19C(v8, &v66, v91, &v93);
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v9 = v94;
    if (v94)
    {
      do
      {
        while (*(v9 + 24) != *(v9 + 32))
        {
          v9 = *v9;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        sub_29AD2A65C(&v108, (v9 + 16));
        v9 = sub_29AD2BDCC(&v93, v9);
      }

      while (v9);
LABEL_11:
      while (*(&v110 + 1))
      {
        v10 = (*(v108.i64[1] + ((v110 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v110 & 0x1FF));
        sub_29A1E21F4(v86, v10);
        sub_29A1E2240(v86 + 1, v10 + 1);
        sub_29AD2A700(&v108);
        sub_29A1E28B4(&v88, v86);
        for (i = v94; i; i = sub_29AD2BDCC(&v93, i))
        {
          while (1)
          {
            v12 = sub_29A362DD4(*(i + 24), *(i + 32), v86);
            sub_29A362D50(i + 24, v12, *(i + 32));
            if (*(i + 24) == *(i + 32))
            {
              break;
            }

            i = *i;
            if (!i)
            {
              goto LABEL_17;
            }
          }

          sub_29AD2A65C(&v108, (i + 16));
        }

LABEL_17:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v86 + 1);
        sub_29A1DE3A4(v86);
      }
    }

    v63 = a1;
    v64 = a2;
    sub_29AD2BE28(&v108);
    memset(v86, 0, sizeof(v86));
    v87 = 1065353216;
    v13 = v88;
    for (j = v89; v13 != j; v13 += 2)
    {
      v108.i64[0] = v13;
      v15 = sub_29AD2BF68(v91, v13, &unk_29B4D6118, &v108);
      v16 = v15[3];
      v17 = v15[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v84 = v16;
        v85 = v17;
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_29A014BEC(v17);
        sub_29A014BEC(v17);
      }

      else
      {
        v84 = v15[3];
        v85 = 0;
      }

      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValues(&v84, &v82);
      pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v82, &v108);
      v18 = v108.i64[1];
      for (k = v108.i64[0]; k != v18; ++k)
      {
        sub_29AC0BF38(&v82, k, &v100);
        if (v100)
        {
          (*(v100->i64[0] + 16))(&v105, a3);
          v76 = k;
          v20 = sub_29AC1E77C(v86, k, &unk_29B4D6118, &v76);
          sub_29A18606C(v20 + 3, &v105);
          sub_29A186B14(&v105);
        }

        if (v101)
        {
          sub_29A014BEC(v101);
        }
      }

      v100 = &v108;
      sub_29A124AB0(&v100);
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetOutputs(&v84, &v80);
      pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v80, &v108);
      v21 = v108;
      v100 = &v108;
      sub_29A124AB0(&v100);
      if (v21.i64[0] != v21.i64[1])
      {
        pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HdExtComputationContextInternal(&v108);
        pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v82, &v105);
        v23 = v105;
        v22 = v106;
        while (v23 != v22)
        {
          if (sub_29A160470(v86, v23))
          {
            v24 = sub_29A160470(v86, v23);
            if (v24)
            {
              pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::SetInputValue(&v108, v23, (v24 + 3));
            }

            sub_29A0F26E4("unordered_map::at: key not found");
          }

          v100 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
          v101 = "_ExecuteComputationNetwork";
          v102 = 352;
          v103 = "TokenValuePairs pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtComputationContext::_ExecuteComputationNetwork(const SdfPath &, const Time &)";
          v104 = 0;
          v25 = *v23 & 0xFFFFFFFFFFFFFFF8;
          if (v25)
          {
            v26 = (v25 + 16);
            if (*(v25 + 39) < 0)
            {
              v26 = *v26;
            }
          }

          else
          {
            v26 = "";
          }

          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Couldn't find input %s for computation %s.", v28, v26, Text);
          v23 = (v23 + 8);
        }

        v100 = &v105;
        sub_29A124AB0(&v100);
        pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputations(&v84, &v78);
        v105 = 0;
        v106 = 0;
        v107 = 0;
        pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v78, &v100);
        v30 = v100;
        v29 = v101;
        while (v30 != v29)
        {
          sub_29ACC6A10(&v78, v30, &v76);
          pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputationOutputName(&v76, &v96);
          if (v96)
          {
            (*(*v96 + 32))(v99, 0.0);
            v31 = v106;
            if (v106 >= v107)
            {
              v106 = sub_29AD2C258(&v105, v30, v99);
              if ((v99[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((v99[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else
            {
              v32 = *v30;
              *v106 = *v30;
              if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *v31 &= 0xFFFFFFFFFFFFFFF8;
              }

              *(v31 + 1) = v99[0];
              v106 = (v31 + 16);
            }
          }

          if (v97)
          {
            sub_29A014BEC(v97);
          }

          if (v77)
          {
            sub_29A014BEC(v77);
          }

          ++v30;
        }

        v76 = &v100;
        sub_29A124AB0(&v76);
        if (v79)
        {
          sub_29A014BEC(v79);
        }

        v33 = v106;
        if (v105 != v106)
        {
          v34 = (v105 + 8);
          do
          {
            if (sub_29A160470(v86, v34))
            {
              v35 = sub_29A160470(v86, v34);
              if (v35)
              {
                pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::SetInputValue(&v108, (v34 - 1), (v35 + 3));
              }

              sub_29A0F26E4("unordered_map::at: key not found");
            }

            v100 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
            v101 = "_ExecuteComputationNetwork";
            v102 = 373;
            v103 = "TokenValuePairs pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtComputationContext::_ExecuteComputationNetwork(const SdfPath &, const Time &)";
            v104 = 0;
            v37 = *(v34 - 1) & 0xFFFFFFFFFFFFFFF8;
            if (v37)
            {
              v38 = (v37 + 16);
              if (*(v37 + 39) < 0)
              {
                v38 = *v38;
              }
            }

            else
            {
              v38 = "";
            }

            v39 = *v34 & 0xFFFFFFFFFFFFFFF8;
            if (v39)
            {
              v40 = (v39 + 16);
              if (*(v39 + 39) < 0)
              {
                v40 = *v40;
              }
            }

            else
            {
              v40 = "";
            }

            v41 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Couldn't find input %s (sourceCompOutput %s) for computation %s.", v42, v38, v40, v41);
            v36 = (v34 + 1);
            v34 += 2;
          }

          while (v36 != v33);
        }

        pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetCpuCallback(&v84, &v96);
        if (v96)
        {
          (*(*v96 + 32))(&v78, 0.0);
          if (v78)
          {
            (*(*v78 + 16))(v78, &v108);
            if (pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HasComputationError(&v108))
            {
              v100 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
              v101 = "_ExecuteComputationNetwork";
              v102 = 405;
              v103 = "TokenValuePairs pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtComputationContext::_ExecuteComputationNetwork(const SdfPath &, const Time &)";
              v104 = 0;
              v43 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Error invoking computation %s.\n", v44, v43);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v80, &v76);
              v49 = v76;
              v50 = v77;
              if (v76 != v77)
              {
                v51 = *v13;
                v52 = v66;
                do
                {
                  v99[1] = 0;
                  if (pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetOutputValue(&v108, v49, v99))
                  {
                    if (v51 == v52)
                    {
                      sub_29AD2C394(&v100, v49, v99);
                      sub_29A31E728(&v73, &v100);
                      sub_29A186B14(&v101);
                      if ((v100 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }
                    }

                    else
                    {
                      v98 = v49;
                      v55 = sub_29AC1E77C(v86, v49, &unk_29B4D6118, &v98);
                      sub_29A1854E8(v55 + 3, v99);
                    }
                  }

                  else
                  {
                    v100 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
                    v101 = "_ExecuteComputationNetwork";
                    v102 = 419;
                    v103 = "TokenValuePairs pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtComputationContext::_ExecuteComputationNetwork(const SdfPath &, const Time &)";
                    v104 = 0;
                    v53 = *v49 & 0xFFFFFFFFFFFFFFF8;
                    if (v53)
                    {
                      v54 = (v53 + 16);
                      if (*(v53 + 39) < 0)
                      {
                        v54 = *v54;
                      }
                    }

                    else
                    {
                      v54 = "";
                    }

                    v56 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Did not find computed output %s for computation %s.\n", v57, v54, v56);
                  }

                  sub_29A186B14(v99);
                  ++v49;
                }

                while (v49 != v50);
              }

              v100 = &v76;
              sub_29A124AB0(&v100);
            }
          }

          else
          {
            v100 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
            v101 = "_ExecuteComputationNetwork";
            v102 = 394;
            v103 = "TokenValuePairs pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtComputationContext::_ExecuteComputationNetwork(const SdfPath &, const Time &)";
            v104 = 0;
            v47 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Invalid CPU callback for %s", v48, v47);
          }

          if (v79)
          {
            sub_29A014BEC(v79);
          }
        }

        else
        {
          v100 = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
          v101 = "_ExecuteComputationNetwork";
          v102 = 387;
          v103 = "TokenValuePairs pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtComputationContext::_ExecuteComputationNetwork(const SdfPath &, const Time &)";
          v104 = 0;
          v45 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13);
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v100, "Could not find CPU callback data source for %s", v46, v45);
        }

        if (v97)
        {
          sub_29A014BEC(v97);
        }

        v100 = &v105;
        sub_29A40DADC(&v100);
        pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal(&v108);
      }

      if (v81)
      {
        sub_29A014BEC(v81);
      }

      if (v83)
      {
        sub_29A014BEC(v83);
      }

      if (v85)
      {
        sub_29A014BEC(v85);
      }
    }

    sub_29AC1E22C(v86);
    v108.i64[0] = &v88;
    sub_29A1E234C(&v108);
    sub_29AD2C40C(v91);
    sub_29AD2C48C(&v93);
    v60 = v73;
    v59 = v74;
    if (v73 == v74)
    {
LABEL_110:
      v108.i64[0] = "hdsi/extComputationPrimvarPruningSceneIndex.cpp";
      v108.i64[1] = "GetComputedValue";
      *&v109 = 106;
      *(&v109 + 1) = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ExtComputationContext::GetComputedValue(const TfToken &, const SdfPath &, const TfToken &, const Time &)";
      LOBYTE(v110) = 0;
      v61 = v63[3] & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v108, "Did not find computed value for primvar %s", v58, v62);
      v64[1] = 0;
    }

    else
    {
      while (1)
      {
        sub_29A328648(v108.i64, v60);
        if ((v65 ^ v108.i64[0]) <= 7)
        {
          break;
        }

        sub_29A186B14(&v108.i64[1]);
        if ((v108.i8[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v108.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v60 += 3;
        if (v60 == v59)
        {
          goto LABEL_110;
        }
      }

      sub_29A186EF4(v64, &v108.i64[1]);
      sub_29A186B14(&v108.i64[1]);
      if ((v108.i8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v108.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v108.i64[0] = &v73;
    sub_29A321878(&v108);
    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v66 + 1);
    sub_29A1DE3A4(&v66);
  }

  else
  {
    a2[1] = 0;
  }

  if (v68)
  {
    sub_29A014BEC(v68);
  }

  if (v70)
  {
    sub_29A014BEC(v70);
  }

  if (v72)
  {
    sub_29A014BEC(v72);
  }
}

void sub_29AD29B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void **a51)
{
  *(v51 - 240) = v51 - 200;
  sub_29A124AB0((v51 - 240));
  pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal((v51 - 176));
  if (a32)
  {
    sub_29A014BEC(a32);
  }

  if (a34)
  {
    sub_29A014BEC(a34);
  }

  if (a36)
  {
    sub_29A014BEC(a36);
  }

  sub_29AC1E22C(&a37);
  a37 = &a42;
  sub_29A1E234C(&a37);
  sub_29AD2C40C(&a45);
  sub_29AD2C48C(&a51);
  a51 = &a23;
  sub_29A321878(&a51);
  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a16);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a22)
  {
    sub_29A014BEC(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AD29E6C(void *a1, void *a2, float a3, float a4)
{
  v9 = a1[1];
  v8 = a1[2];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v8);
    sub_29A014BEC(v8);
  }

  else
  {
    v24 = 0;
  }

  v23 = v9;
  pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputation(&v23, &v21);
  if (v21)
  {
    (*(*v21 + 32))(&v20, 0.0);
    v10 = a1[4];
    __src = 0u;
    v35 = 0u;
    v36 = 1065353216;
    v31 = 0u;
    v32 = 0u;
    v33 = 1065353216;
    sub_29AD2A19C(v10, &v20, &__src, &v31);
    sub_29AD2C48C(&v31);
    v31 = 0uLL;
    *&v32 = 0;
    v11 = v35;
    if (v35)
    {
      do
      {
        v12 = v11[3];
        v13 = v11[4];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = v12;
          v30 = v13;
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_29A014BEC(v13);
          sub_29A014BEC(v13);
        }

        else
        {
          v29 = v11[3];
          v30 = 0;
        }

        pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputValues(&v29, &v27);
        pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v27, v26);
        v14 = v26[0];
        v15 = v26[1];
        while (v14 != v15)
        {
          sub_29AC0BF38(&v27, v14, &v25);
          if (v25)
          {
            sub_29A017F80(&v31, &v25);
          }

          if (*(&v25 + 1))
          {
            sub_29A014BEC(*(&v25 + 1));
          }

          ++v14;
        }

        *&v25 = v26;
        sub_29A124AB0(&v25);
        if (v28)
        {
          sub_29A014BEC(v28);
        }

        if (v30)
        {
          sub_29A014BEC(v30);
        }

        v11 = *v11;
      }

      while (v11);
      v17 = *(&v31 + 1);
      v16 = v31;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval((v17 - v16) >> 4, v16, a2, a3, a4);
    v26[0] = &v31;
    sub_29A0176E4(v26);
    sub_29AD2C40C(&__src);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20 + 1);
    sub_29A1DE3A4(&v20);
  }

  else
  {
    LODWORD(__src) = 0;
    sub_29ACCE29C(a2, &__src, &__src + 4, 1uLL);
    MergedContributingSampleTimesForInterval = 0;
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AD2A0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AD2A19C(uint64_t *a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    sub_29B2C8010(&v30);
  }

  if (!a4)
  {
    sub_29B2C805C(&v30);
  }

  sub_29A1E21F4(v39, a2);
  sub_29A1E2240(v39 + 1, a2 + 1);
  sub_29AD2A76C(&v30, v39, 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v39 + 1);
  sub_29A1DE3A4(v39);
  while (v33)
  {
    v8 = (*(v30.i64[1] + ((v32 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v32 & 0x1FF));
    sub_29A1E21F4(&v28, v8);
    sub_29A1E2240(&v29, v8 + 1);
    sub_29AD2A700(&v30);
    if (!sub_29A2F4F50(a4, &v28))
    {
      v9 = sub_29AC1199C(a1);
      (*(*v9 + 16))(&v25);
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetFromParent(&v26, &v23);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v23))
      {
        pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v23, v39);
        *&v21 = &v28;
        v10 = sub_29AD2BF68(a3, &v28, &unk_29B4D6118, &v21);
        v11 = v39[0];
        v39[0] = 0uLL;
        v12 = v10[4];
        *(v10 + 3) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
          if (*(&v39[0] + 1))
          {
            sub_29A014BEC(*(&v39[0] + 1));
          }
        }

        *&v39[0] = &v28;
        v13 = sub_29AD2AC54(a4, &v28, &unk_29B4D6118, v39);
        pxrInternal__aapl__pxrReserved__::HdExtComputationSchema::GetInputComputations(&v23, &v19);
        v21 = 0uLL;
        v22 = 0;
        pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v19, v39);
        v15 = *(&v39[0] + 1);
        for (i = *&v39[0]; i != v15; ++i)
        {
          sub_29ACC6A10(&v19, i, &v37);
          pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::GetSourceComputation(&v37, &v35);
          if (v35)
          {
            (*(*v35 + 32))(&v34, 0.0);
            sub_29A377BD0(&v21, &v34);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34 + 1);
            sub_29A1DE3A4(&v34);
          }

          if (v36)
          {
            sub_29A014BEC(v36);
          }

          if (v38)
          {
            sub_29A014BEC(v38);
          }
        }

        v37 = v39;
        sub_29A124AB0(&v37);
        sub_29A1E23D4(v13 + 3);
        *(v13 + 3) = v21;
        v13[5] = v22;
        v22 = 0;
        v21 = 0uLL;
        *&v39[0] = &v21;
        sub_29A1E234C(v39);
        if (v20)
        {
          sub_29A014BEC(v20);
        }

        v16 = (v30.i64[1] + 8 * ((v32 + v33) >> 9));
        if (v31 == v30.i64[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = *v16 + 8 * ((v32 + v33) & 0x1FF);
        }

        sub_29AD2AEF8(&v30, v16, v17, v13[3], v13[4], (v13[4] - v13[3]) >> 3);
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }

      if (v27)
      {
        sub_29A014BEC(v27);
      }

      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
    sub_29A1DE3A4(&v28);
  }

  return sub_29AD2BE28(&v30);
}

_DWORD *sub_29AD2A65C(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = ((v5 - v4) << 6) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == *(a1 + 40) + *(a1 + 32))
  {
    sub_29AD2BC18(a1);
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = *(a1 + 40) + *(a1 + 32);
    v8 = (*(v4 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
  }

  v9 = sub_29A1E21F4(v8, a2);
  result = sub_29A1E2240(v9 + 1, a2 + 1);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_29AD2A700(int64x2_t *a1)
{
  sub_29A1E230C(a1, (*(a1->i64[1] + ((a1[2].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[2].i64[0] & 0x1FF)));
  a1[2] = vaddq_s64(a1[2], xmmword_29B487130);

  return sub_29A10FF8C(a1, 1);
}

_OWORD *sub_29AD2A76C(_OWORD *a1, _DWORD *a2, uint64_t a3)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_29AD2A7B8(a1, a2, (8 * a3) >> 3);
  return a1;
}

void *sub_29AD2A7B8(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = *(a1 + 40) + *(a1 + 32);
  v10 = v8 - v9;
  if (a3 > v10)
  {
    sub_29AD2A904(a1, a3 - v10);
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *(a1 + 32) + *(a1 + 40);
  }

  v11 = (v6 + 8 * (v9 >> 9));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 8 * (v9 & 0x1FF);
    v13 = v12;
  }

  v21[0] = v11;
  v21[1] = v13;
  result = sub_29AD2ABF0(v21, a3);
  if (v12 != v15)
  {
    v16 = result;
    v17 = v15;
    do
    {
      if (v11 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v11 + 4096;
      }

      if (v12 == v18)
      {
        v18 = v12;
      }

      else
      {
        v19 = v12;
        do
        {
          sub_29A1E21F4(v19, a2);
          result = sub_29A1E2240(v19 + 1, a2 + 1);
          v19 += 2;
          a2 += 2;
        }

        while (v19 != v18);
      }

      *(a1 + 40) += (v18 - v12) >> 3;
      if (v11 == v16)
      {
        break;
      }

      v20 = v11[1];
      ++v11;
      v12 = v20;
    }

    while (v20 != v17);
  }

  return result;
}

void sub_29AD2A904(void **a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = (v6 - (v7 << 9)); v7; --v7)
    {
      v15 = a1[1];
      *&v29 = *v15;
      a1[1] = v15 + 1;
      sub_29A0D6614(a1, &v29);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 <= (v9 >> 3) - (v3 >> 3))
    {
      if (v8)
      {
        while (a1[3] != a1[2])
        {
          *&v29 = operator new(0x1000uLL);
          sub_29A0D6614(a1, &v29);
          --v5;
          if (!--v8)
          {
            goto LABEL_23;
          }
        }

        do
        {
          *&v29 = operator new(0x1000uLL);
          sub_29A0D671C(a1, &v29);
          if (a1[2] - a1[1] == 8)
          {
            v26 = 511;
          }

          else
          {
            v26 = 512;
          }

          v16 = a1[4] + v26;
          a1[4] = v16;
          --v8;
        }

        while (v8);
        v7 = v5;
      }

      else
      {
LABEL_23:
        v16 = a1[4];
      }

      for (a1[4] = (v16 - (v7 << 9)); v7; --v7)
      {
        v27 = a1[1];
        *&v29 = *v27;
        a1[1] = v27 + 1;
        sub_29A0D6614(a1, &v29);
      }
    }

    else
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v31 = a1;
      if (v12)
      {
        v14 = sub_29A00C9BC(a1, v12);
      }

      else
      {
        v14 = 0;
      }

      v17 = v7 << 9;
      *&v29 = v14;
      *(&v29 + 1) = &v14[8 * v13];
      *&v30 = *(&v29 + 1);
      *(&v30 + 1) = &v14[8 * v12];
      do
      {
        v28 = operator new(0x1000uLL);
        sub_29A0D6828(&v29, &v28);
        --v8;
      }

      while (v8);
      if (v6 >= 0x200)
      {
        v18 = a1[1];
        do
        {
          sub_29A0D6828(&v29, v18);
          v18 = a1[1] + 8;
          a1[1] = v18;
          --v7;
        }

        while (v7);
      }

      v19 = a1[2];
      for (i = -7 - v19; ; i += 8)
      {
        v21 = a1[1];
        if (v19 == v21)
        {
          break;
        }

        sub_29A0D6930(&v29, --v19);
      }

      v22 = *a1;
      v23 = v29;
      v24 = v30;
      *&v29 = *a1;
      *(&v29 + 1) = v21;
      v25 = *(a1 + 1);
      *a1 = v23;
      *(a1 + 1) = v24;
      v30 = v25;
      a1[4] = a1[4] - v17;
      if (v19 != v25)
      {
        *&v30 = v25 + (-(v25 + i) & 0xFFFFFFFFFFFFFFF8);
      }

      if (v22)
      {
        operator delete(v22);
      }
    }
  }
}

void sub_29AD2AB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AD2ABF0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

void *sub_29AD2AC54(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29A41B66C(a1, v6, a4, &v22);
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

void sub_29AD2AE84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD2AE9C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AD2AE9C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A55B1D0(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29AD2AEF8(uint64_t a1, char *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = *(a1 + 32);
  v11 = v10 >> 9;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = (v12 + 8 * (v10 >> 9));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = ((a3 - *a2) >> 3) + ((a2 - v14) << 6) - ((v15 - *v14) >> 3);
  }

  v17 = *(a1 + 40);
  if (v16 >= v17 - v16)
  {
    v20 = ((v13 - v12) << 6) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      sub_29AD2A904(a1, a6 - v22);
      v17 = *(a1 + 40);
      v12 = *(a1 + 8);
      v13 = *(a1 + 16);
      v21 = *(a1 + 32) + v17;
    }

    v23 = (v12 + 8 * (v21 >> 9));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + 8 * (v21 & 0x1FF));
    }

    v65.n128_u64[0] = v12 + 8 * (v21 >> 9);
    v65.n128_u64[1] = v24;
    v26 = v17 - v16;
    if (v17 - v16 < v6)
    {
      if (v26 >= v6 >> 1)
      {
        v27 = v6;
      }

      else
      {
        v27 = 0;
      }

      if (v26 >= v6 >> 1)
      {
        v28 = a5;
      }

      else
      {
        v28 = a4;
      }

      v29 = v26 - v27;
      v30 = &v28[8 * v29];
      if (v30 != a5)
      {
        v31 = &v28[8 * v29];
        do
        {
          sub_29A1E21F4(v24, v31);
          sub_29A1E2240(v24 + 1, v31 + 1);
          v24 += 2;
          if ((v24 - *v23) == 4096)
          {
            v32 = v23[1];
            ++v23;
            v24 = v32;
          }

          v31 += 8;
          ++*(a1 + 40);
        }

        while (v31 != a5);
      }

      a5 = v30;
      v6 = v26;
    }

    if (v6)
    {
      v33 = sub_29AD2B6AC(&v65, v6);
      v35 = v33;
      v36 = v34;
      v37 = v65.n128_i64[1];
      if (v65.n128_u64[1] != v34)
      {
        v62 = v34;
        v64 = v33;
        do
        {
          sub_29A1DDD84(v24, v36);
          sub_29A1DDDC0(v24 + 1, v36 + 1);
          v24 += 2;
          if ((v24 - *v23) == 4096)
          {
            v38 = v23[1];
            ++v23;
            v24 = v38;
          }

          v36 += 2;
          if ((v36 - *v35) == 4096)
          {
            v39 = v35[1];
            ++v35;
            v36 = v39;
          }

          ++*(a1 + 40);
          v37 = v65.n128_i64[1];
        }

        while (v36 != v65.n128_u64[1]);
        v36 = v62;
        v35 = v64;
      }

      if (v6 >= v26)
      {
        v42 = v65.n128_u64[0];
      }

      else
      {
        v40 = sub_29AD2B6AC(&v65, v26);
        sub_29AD2B968(v40, v41, v35, v36, v65.n128_u64[0], v65.n128_i64[1], &v66);
        v37 = v67.n128_i64[1];
        v42 = v67.n128_u64[0];
        v65 = v67;
      }

      sub_29AD2BB28(a4, a5, v42, v37, &v66);
    }
  }

  else
  {
    if (a6 > v10)
    {
      sub_29AD2B3AC(a1, a6 - v10);
      v10 = *(a1 + 32);
      v12 = *(a1 + 8);
      v13 = *(a1 + 16);
      v11 = v10 >> 9;
    }

    v18 = (v12 + 8 * v11);
    if (v13 == v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = (*v18 + 8 * (v10 & 0x1FF));
    }

    v65.n128_u64[0] = v12 + 8 * v11;
    v65.n128_u64[1] = v19;
    if (v6 <= v16)
    {
LABEL_52:
      if (!v6)
      {
        goto LABEL_65;
      }

      goto LABEL_53;
    }

    if (v16 >= v6 >> 1)
    {
      v25 = &a4[8 * (v6 - v16)];
    }

    else
    {
      v25 = &a5[-8 * v16];
    }

    if (v25 == a4)
    {
      a4 = v25;
      v6 = v16;
      goto LABEL_52;
    }

    v56 = v16;
    v57 = v25;
    do
    {
      if (v19 == *v18)
      {
        v58 = *--v18;
        v19 = (v58 + 4096);
      }

      v59 = v19;
      v19 -= 2;
      sub_29A1E21F4(v19, v57 - 2);
      sub_29A1E2240(v59 - 1, v57 - 1);
      *(a1 + 32) = vaddq_s64(*(a1 + 32), xmmword_29B435730);
      v57 -= 8;
    }

    while (v57 != a4);
    a4 = v25;
    v16 = v56;
    v6 = v56;
    if (v56)
    {
LABEL_53:
      v43 = sub_29AD2ABF0(&v65, v6);
      v45 = v43;
      v46 = v65.n128_u64[1];
      v63 = v44;
      if (v65.n128_u64[1] != v44)
      {
        v61 = v16;
        v60 = v43;
        v47 = v44;
        do
        {
          if (v19 == *v18)
          {
            v48 = *--v18;
            v19 = (v48 + 4096);
          }

          if (v47 == *v45)
          {
            v49 = *--v45;
            v47 = v49 + 4096;
          }

          sub_29A1DDD84(v19 - 2, (v47 - 8));
          sub_29A1DDDC0(v19 - 1, (v47 - 4));
          *(a1 + 32) = vaddq_s64(*(a1 + 32), xmmword_29B435730);
          v46 = v65.n128_u64[1];
          v47 -= 8;
          v19 -= 2;
        }

        while (v47 != v65.n128_u64[1]);
        v45 = v60;
        v16 = v61;
      }

      if (v6 >= v16)
      {
        v52 = v65.n128_u64[0];
      }

      else
      {
        v50 = sub_29AD2ABF0(&v65, v16);
        v66 = v65;
        sub_29AD2B714(v45, v63, v50, v51, &v66);
        v46 = v66.n128_u64[1];
        v52 = v66.n128_u64[0];
        v65 = v66;
      }

      sub_29AD2B890(a4, a5, v52, v46, &v66);
    }
  }

LABEL_65:
  v53 = *(a1 + 8);
  if (*(a1 + 16) == v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(v53 + 8 * (*(a1 + 32) >> 9)) + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  v66.n128_u64[0] = v53 + 8 * (*(a1 + 32) >> 9);
  v66.n128_u64[1] = v54;
  return sub_29AD2ABF0(&v66, v16);
}

void sub_29AD2B3AC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 6) - 1;
  }

  if ((v6 & 0x1FF) != 0)
  {
    v8 = (v6 >> 9) + 1;
  }

  else
  {
    v8 = v6 >> 9;
  }

  v9 = *(a1 + 32);
  v10 = v7 - (*(a1 + 40) + v9);
  if (v8 >= v10 >> 9)
  {
    v11 = v10 >> 9;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 9)
  {
    for (*(a1 + 32) = v9 + (v11 << 9); v11; --v11)
    {
      v18 = *(a1 + 16);
      *&v30 = *(v18 - 8);
      *(a1 + 16) = v18 - 8;
      sub_29A0D671C(a1, &v30);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = *(a1 + 24) - *a1;
    if (v8 - v11 <= (v13 >> 3) - (v5 >> 3))
    {
      if (v12)
      {
        while (v3 != *a1)
        {
          *&v30 = operator new(0x1000uLL);
          sub_29A0D671C(a1, &v30);
          v3 = *(a1 + 8);
          if (*(a1 + 16) - v3 == 8)
          {
            v19 = 511;
          }

          else
          {
            v19 = 512;
          }

          v9 = v19 + *(a1 + 32);
          *(a1 + 32) = v9;
          --v8;
          if (!--v12)
          {
            goto LABEL_32;
          }
        }

        do
        {
          *&v30 = operator new(0x1000uLL);
          sub_29A0D6614(a1, &v30);
          --v12;
        }

        while (v12);
        v9 = *(a1 + 32);
        v11 = v8;
      }

LABEL_32:
      for (*(a1 + 32) = v9 + (v11 << 9); v11; --v11)
      {
        v20 = *(a1 + 16);
        *&v30 = *(v20 - 8);
        *(a1 + 16) = v20 - 8;
        sub_29A0D671C(a1, &v30);
      }
    }

    else
    {
      v14 = v4 == v3;
      v15 = v8 << 9;
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v16 = v12 + (v5 >> 3);
      }

      else
      {
        v16 = v13 >> 2;
      }

      v32 = a1;
      if (v16)
      {
        v17 = sub_29A00C9BC(a1, v16);
      }

      else
      {
        v17 = 0;
      }

      v21 = v15 - v14;
      *&v30 = v17;
      *(&v30 + 1) = v17;
      *&v31 = v17;
      *(&v31 + 1) = &v17[8 * v16];
      do
      {
        v29 = operator new(0x1000uLL);
        sub_29A0D6828(&v30, &v29);
        --v12;
      }

      while (v12);
      v22 = *(a1 + 16);
      if (v10 >= 0x200)
      {
        do
        {
          sub_29A0D6828(&v30, (v22 - 8));
          v22 = *(a1 + 16) - 8;
          *(a1 + 16) = v22;
          --v11;
        }

        while (v11);
      }

      v23 = *(a1 + 8);
      if (v23 != v22)
      {
        do
        {
          sub_29A0D6828(&v30, v23++);
          v22 = *(a1 + 16);
        }

        while (v23 != v22);
        v23 = *(a1 + 8);
      }

      v24 = *a1;
      v25 = v30;
      v26 = v31;
      *&v30 = *a1;
      *(&v30 + 1) = v23;
      v27 = *(a1 + 24);
      v28 = *(a1 + 32);
      *a1 = v25;
      *(a1 + 16) = v26;
      *&v31 = v22;
      *(&v31 + 1) = v27;
      *(a1 + 32) = v21 + v28;
      if (v22 != v23)
      {
        *&v31 = v22 + ((v23 - v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      if (v24)
      {
        operator delete(v24);
      }
    }
  }
}

void sub_29AD2B638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AD2B6AC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = ((*(a1 + 8) - *result) >> 3) - a2;
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

double sub_29AD2B714(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = *(a5 + 8);
    for (i = *a1 + 4096; ; i = v12 + 4096)
    {
      sub_29AD2B7B8(a2, i, v7, v8, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      *(a5 + 8) = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  sub_29AD2B7B8(a2, a4, v7, v8, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

void sub_29AD2B7B8(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v5 = a3;
  i = a1;
  if (a1 != a2)
  {
    v9 = *a3 - a4 + 4096;
    if ((a2 - a1) >> 3 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = (a2 - a1) >> 3;
    }

    for (i = sub_29A31BE88(&v14, a1, a1 + 8 * v10); i != a2; i = sub_29A31BE88(&v14, i, i + 8 * v12))
    {
      ++v5;
      v12 = (a2 - i) >> 3;
      if (v12 >= 512)
      {
        v12 = 512;
      }
    }

    a4 = v11;
    if (*v5 + 4096 == v11)
    {
      v13 = v5[1];
      ++v5;
      a4 = v13;
    }
  }

  *a5 = i;
  a5[1] = v5;
  a5[2] = a4;
}

void sub_29AD2B890(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, int *a4@<X4>, char **a5@<X8>)
{
  v5 = a3;
  i = a1;
  if (a1 != a2)
  {
    v9 = *a3 - a4 + 4096;
    if ((a2 - a1) >> 3 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = (a2 - a1) >> 3;
    }

    for (i = sub_29A23E240(&v16, a1, &a1[8 * v10], a4); i != a2; i = sub_29A23E240(&v16, i, &i[8 * v14], v12))
    {
      v13 = *(v5 + 1);
      v5 += 8;
      v12 = v13;
      v14 = (a2 - i) >> 3;
      if (v14 >= 512)
      {
        v14 = 512;
      }
    }

    a4 = v11;
    if ((*v5 + 4096) == v11)
    {
      v15 = *(v5 + 1);
      v5 += 8;
      a4 = v15;
    }
  }

  *a5 = i;
  a5[1] = v5;
  a5[2] = a4;
}

__n128 sub_29AD2B968@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_29AD2BA38(v16, v18, v13, v14, &v21);
      v14 = v22.n128_i64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  sub_29AD2BA38(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

uint64_t sub_29AD2BA38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v5 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v9 = a4 - *a3;
    if ((a2 - a1) >> 3 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = (a2 - a1) >> 3;
    }

    v11 = a2 - 8 * v10;
    result = sub_29A23E1BC(&v17, v11, a2);
    if (v11 != a1)
    {
      do
      {
        --v5;
        v14 = (v11 - a1) >> 3;
        if (v14 >= 512)
        {
          v14 = 512;
        }

        v15 = v11 - 8 * v14;
        result = sub_29A23E1BC(&v17, v15, v11);
        v11 = v15;
      }

      while (v15 != a1);
    }

    a4 = v13;
    if (*v5 + 4096 == v13)
    {
      v16 = v5[1];
      ++v5;
      a4 = v16;
    }
  }

  *a5 = v8;
  a5[1] = v5;
  a5[2] = a4;
  return result;
}

uint64_t sub_29AD2BB28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v5 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v9 = a4 - *a3;
    if ((a2 - a1) >> 3 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = (a2 - a1) >> 3;
    }

    v11 = a2 - 8 * v10;
    result = sub_29AC606B4(&v19, v11, a2, a4);
    if (v11 != a1)
    {
      do
      {
        v15 = *--v5;
        v14 = v15;
        v16 = (v11 - a1) >> 3;
        if (v16 >= 512)
        {
          v16 = 512;
        }

        v17 = v11 - 8 * v16;
        result = sub_29AC606B4(&v19, v17, v11, v14 + 4096);
        v11 = v17;
      }

      while (v17 != a1);
    }

    a4 = v13;
    if (*v5 + 4096 == v13)
    {
      v18 = v5[1];
      ++v5;
      a4 = v18;
    }
  }

  *a5 = v8;
  a5[1] = v5;
  a5[2] = a4;
  return result;
}

void sub_29AD2BC18(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29AD2BD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AD2BDCC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A55B1D0(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29AD2BE28(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = *v6 + 8 * (v5 & 0x1FF);
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        sub_29A1E230C(a1, v7);
        v7 += 8;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 512;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_29A0D6E48(a1);
}

void *sub_29AD2BF68(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29AC90CB8(a1, v6, a4, &v22);
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

void sub_29AD2C198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD2C1B0(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AD2C1B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AD2C20C(v2 + 16);
    }

    operator delete(v2);
  }
}

_DWORD *sub_29AD2C20C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AD2C258(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v4)
  {
    v4 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    v10 = sub_29A017BD4(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[16 * v3];
  v19 = v10;
  v20 = v11;
  *(&v21 + 1) = &v10[16 * v9];
  v12 = *a2;
  *v11 = *a2;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v11 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v11 + 1) = *a3;
  *a3 = 0;
  *&v21 = v11 + 16;
  v13 = *(a1 + 8);
  v14 = &v11[*a1 - v13];
  sub_29A40DC90(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29A40DDD8(&v19);
  return v18;
}

void sub_29AD2C380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A40DDD8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AD2C394(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a3);
  return a1;
}

uint64_t sub_29AD2C40C(uint64_t a1)
{
  sub_29AD2C448(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AD2C448(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AD2C20C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AD2C48C(uint64_t a1)
{
  sub_29AD2C4C8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AD2C4C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A55B1D0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AD2C510(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD2C538(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD2C568(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086B58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD2C5AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD2C5D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD2C604(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086BD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD2C648(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD2C670(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD2C6A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086C48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD2C6E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD2C70C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD2C73C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086CC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType::~HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "toMesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "axisToTransform", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AD2C8F8(_Unwind_Exception *a1)
{
  v3 = 8;
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
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AD2CB0C(uint64_t a1, const void *a2)
{
  v4 = v2[22];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = v2[21];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = v2[20];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = v2[19];
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AC113C4(v2, a2);
}

void sub_29AD2CBC0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABC562C(&v4, &v6);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    if (v6)
    {
      (*(*v6 + 32))(v6, 0.0);
    }

    else
    {
      *a2 = 0;
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_29AD2CC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v255 = *MEMORY[0x29EDCA608];
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(&v227);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v7 + 3) ^ v227) <= 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v8)
    {
      v8 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((*v8 ^ *(this + 20)) <= 7)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v9)
      {
        v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v10 = *(v9 + 7);
      *a3 = v10;
      if ((v10 & 7) != 0)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v11;
        }
      }

      if ((atomic_load_explicit(qword_2A174C3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A174C3D0))
      {
        sub_29ABDD064(&v250);
        xmmword_2A174C3C0 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C3C0, &dword_299FE7000);
        __cxa_guard_release(qword_2A174C3D0);
      }

      if ((atomic_load_explicit(&qword_2A174C3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C3F0))
      {
        sub_29AD30FF4(&v250);
        xmmword_2A174C3E0 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C3E0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174C3F0);
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v12)
      {
        v12 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      if ((atomic_load_explicit(&qword_2A174C588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C588))
      {
        v170 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v170)
        {
          v170 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource((v170 + 96), &unk_2A174C578);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174C578, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174C588);
      }

      if ((atomic_load_explicit(&qword_2A174C5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C5A0))
      {
        v171 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v171)
        {
          v171 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource((v171 + 72), &unk_2A174C590);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174C590, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174C5A0);
      }

      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v13 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetRole(&v250, &unk_2A174C578);
      v14 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetInterpolation(v13, &unk_2A174C590);
      v15 = operator new(0x18uLL);
      v16 = v228;
      *v15 = &unk_2A2086D60;
      *(v15 + 8) = v16;
      if (*(&v16 + 1))
      {
        atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v17 = operator new(0x20uLL);
      *v17 = &unk_2A2086DB0;
      v17[1] = 0;
      v17[2] = 0;
      v17[3] = v15;
      *&v244 = v15;
      *(&v244 + 1) = v17;
      v18 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetPrimvarValue(v14, &v244);
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::Build(v18, &v248);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v254 + 1))
      {
        sub_29A014BEC(*(&v254 + 1));
      }

      if (*(&v253 + 1))
      {
        sub_29A014BEC(*(&v253 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v12 + 1, v249, &v239);
      v215 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      v243 = v215;
      sub_29ABE8360(a2, &v250);
      v244 = v250;
      if ((atomic_load_explicit(qword_2A174C600, memory_order_acquire) & 1) == 0)
      {
        v172 = __cxa_guard_acquire(qword_2A174C600);
        if (v172)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetDefaultLocator(v172);
          sub_29AD24300(DefaultLocator, &v250);
          xmmword_2A174C5F0 = v250;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174C5F0, &dword_299FE7000);
          __cxa_guard_release(qword_2A174C600);
        }
      }

      if ((atomic_load_explicit(&qword_2A174C620, memory_order_acquire) & 1) == 0)
      {
        v174 = __cxa_guard_acquire(&qword_2A174C620);
        if (v174)
        {
          PointsLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPointsLocator(v174);
          v176 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v176)
          {
            v176 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(PointsLocator, v176, &v250);
          sub_29AD24300(&v250, &v239);
          xmmword_2A174C610 = v239;
          v239 = 0uLL;
          sub_29ABC3488(&v250);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174C610, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174C620);
        }
      }

      v19 = atomic_load(&qword_2A174C628);
      if (!v19)
      {
        v19 = sub_29AD31A0C();
      }

      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v20 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v250, &v244);
      v21 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v20, &xmmword_2A174C5F0);
      v22 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v21, &xmmword_2A174C610);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v22, &v248);
      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v19 + 24), v249, &v239);
      v216 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v23 = *(&v244 + 1);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v238 = v216;
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetSchemaToken(v23);
      v25 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSchemaToken(SchemaToken);
      v26 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v25);
      v27 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v26);
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &xmmword_2A174C3C0, v25, &xmmword_2A174C3E0, v26, &v243, v27, &v238, &v244);
      v250 = v244;
      v244 = 0uLL;
      v251 = v228;
      if (*(&v228 + 1))
      {
        atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v244 + 1))
        {
          sub_29A014BEC(*(&v244 + 1));
        }
      }

      *&v239 = 2;
      sub_29AD313DC(&v239, &v250, &v244);
      *(a3 + 8) = v244;
      for (i = 24; i != -8; i -= 16)
      {
        v29 = *(&v250 + i);
        if (v29)
        {
          sub_29A014BEC(v29);
        }
      }

LABEL_403:
      if (*(&v238 + 1))
      {
        sub_29A014BEC(*(&v238 + 1));
      }

      if (*(&v243 + 1))
      {
        sub_29A014BEC(*(&v243 + 1));
      }

      goto LABEL_407;
    }
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v30)
  {
    v30 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v30 + 2) ^ v227) <= 7)
  {
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v31)
    {
      v31 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((*v31 ^ *(this + 19)) <= 7)
    {
      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v32)
      {
        v32 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v33 = *(v32 + 7);
      *a3 = v33;
      if ((v33 & 7) != 0)
      {
        v34 = (v33 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v34;
        }
      }

      if ((atomic_load_explicit(qword_2A174C640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A174C640))
      {
        sub_29ABDD064(&v250);
        xmmword_2A174C630 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C630, &dword_299FE7000);
        __cxa_guard_release(qword_2A174C640);
      }

      if ((atomic_load_explicit(&qword_2A174C660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C660))
      {
        sub_29AD31CD4(&v250);
        xmmword_2A174C650 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174C650, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174C660);
      }

      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v35)
      {
        v35 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      if ((atomic_load_explicit(&qword_2A174C7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C7F8))
      {
        v177 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v177)
        {
          v177 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource((v177 + 96), &unk_2A174C7E8);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174C7E8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174C7F8);
      }

      if ((atomic_load_explicit(&qword_2A174C810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C810))
      {
        v178 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v178)
        {
          v178 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource((v178 + 72), &unk_2A174C800);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174C800, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174C810);
      }

      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v36 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetRole(&v250, &unk_2A174C7E8);
      v37 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetInterpolation(v36, &unk_2A174C800);
      v38 = operator new(0x18uLL);
      v39 = v228;
      *v38 = &unk_2A2086E28;
      *(v38 + 8) = v39;
      if (*(&v39 + 1))
      {
        atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v40 = operator new(0x20uLL);
      *v40 = &unk_2A2086E78;
      v40[1] = 0;
      v40[2] = 0;
      v40[3] = v38;
      *&v244 = v38;
      *(&v244 + 1) = v40;
      v41 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetPrimvarValue(v37, &v244);
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::Build(v41, &v248);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v254 + 1))
      {
        sub_29A014BEC(*(&v254 + 1));
      }

      if (*(&v253 + 1))
      {
        sub_29A014BEC(*(&v253 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v35 + 1, v249, &v239);
      v217 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      v243 = v217;
      sub_29ABE8360(a2, &v250);
      v244 = v250;
      if ((atomic_load_explicit(qword_2A174C8F0, memory_order_acquire) & 1) == 0)
      {
        v179 = __cxa_guard_acquire(qword_2A174C8F0);
        if (v179)
        {
          v180 = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetDefaultLocator(v179);
          sub_29AD24300(v180, &v250);
          xmmword_2A174C8E0 = v250;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174C8E0, &dword_299FE7000);
          __cxa_guard_release(qword_2A174C8F0);
        }
      }

      if ((atomic_load_explicit(&qword_2A174C910, memory_order_acquire) & 1) == 0)
      {
        v181 = __cxa_guard_acquire(&qword_2A174C910);
        if (v181)
        {
          v182 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPointsLocator(v181);
          v183 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v183)
          {
            v183 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v182, v183, &v250);
          sub_29AD24300(&v250, &v239);
          xmmword_2A174C900 = v239;
          v239 = 0uLL;
          sub_29ABC3488(&v250);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174C900, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174C910);
        }
      }

      v42 = atomic_load(&qword_2A174C628);
      if (!v42)
      {
        v42 = sub_29AD31A0C();
      }

      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v43 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v250, &v244);
      v44 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v43, &xmmword_2A174C8E0);
      v45 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v44, &xmmword_2A174C900);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v45, &v248);
      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v42 + 24), v249, &v239);
      v218 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v46 = *(&v244 + 1);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v238 = v218;
      v47 = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetSchemaToken(v46);
      v48 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSchemaToken(v47);
      v49 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v48);
      v50 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v49);
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v47, &xmmword_2A174C630, v48, &xmmword_2A174C650, v49, &v243, v50, &v238, &v244);
      v250 = v244;
      v244 = 0uLL;
      v251 = v228;
      if (*(&v228 + 1))
      {
        atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v244 + 1))
        {
          sub_29A014BEC(*(&v244 + 1));
        }
      }

      *&v239 = 2;
      sub_29AD313DC(&v239, &v250, &v244);
      *(a3 + 8) = v244;
      for (j = 24; j != -8; j -= 16)
      {
        v52 = *(&v250 + j);
        if (v52)
        {
          sub_29A014BEC(v52);
        }
      }

      goto LABEL_403;
    }

    v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v53)
    {
      v53 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((v53[1] ^ *(this + 19)) <= 7)
    {
      v54 = v227;
      *a3 = v227;
      if ((v54 & 7) != 0)
      {
        v55 = (v54 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v55;
        }
      }

      v250 = 0u;
      v251 = 0u;
      v56 = operator new(0x18uLL);
      v57 = v228;
      *v56 = &unk_2A2086EF0;
      *(v56 + 8) = v57;
      if (*(&v57 + 1))
      {
        atomic_fetch_add_explicit((*(&v57 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v58 = operator new(0x20uLL);
      *v58 = &unk_2A2086F40;
      v58[1] = 0;
      v58[2] = 0;
      v58[3] = v56;
      *&v244 = v56;
      *(&v244 + 1) = v58;
      v59 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(&v250, &v244);
      pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v59, &v243);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      sub_29ABE8360(a2, &v250);
      v244 = v250;
      if ((atomic_load_explicit(qword_2A174CA30, memory_order_acquire) & 1) == 0)
      {
        v191 = __cxa_guard_acquire(qword_2A174CA30);
        if (v191)
        {
          v192 = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetDefaultLocator(v191);
          sub_29AD24300(v192, &v250);
          xmmword_2A174CA20 = v250;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174CA20, &dword_299FE7000);
          __cxa_guard_release(qword_2A174CA30);
        }
      }

      if ((atomic_load_explicit(qword_2A174CA50, memory_order_acquire) & 1) == 0)
      {
        v193 = __cxa_guard_acquire(qword_2A174CA50);
        if (v193)
        {
          v194 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v193);
          v195 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
          if (!v195)
          {
            v195 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v194, (v195 + 8), &v250);
          sub_29AD24300(&v250, &v239);
          xmmword_2A174CA40 = v239;
          v239 = 0uLL;
          sub_29ABC3488(&v250);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174CA40, &dword_299FE7000);
          __cxa_guard_release(qword_2A174CA50);
        }
      }

      v60 = atomic_load(&qword_2A174C628);
      if (!v60)
      {
        v60 = sub_29AD31A0C();
      }

      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v61 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v250, &v244);
      v62 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v61, &xmmword_2A174CA20);
      v63 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v62, &xmmword_2A174CA40);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v63, &v248);
      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v60 + 32), v249, &v239);
      v219 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v238 = v219;
      v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
      if (!v64)
      {
        v64 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
      }

      v239 = v243;
      v243 = 0uLL;
      v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      if (!v65)
      {
        v65 = sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v64, &v239, v65, &v238, &v244);
      v250 = v244;
      v244 = 0uLL;
      v251 = v228;
      if (*(&v228 + 1))
      {
        atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v244 + 1))
        {
          sub_29A014BEC(*(&v244 + 1));
        }
      }

      if (*(&v239 + 1))
      {
        sub_29A014BEC(*(&v239 + 1));
      }

      *&v239 = 2;
      sub_29AD313DC(&v239, &v250, &v244);
      *(a3 + 8) = v244;
      for (k = 24; k != -8; k -= 16)
      {
        v67 = *(&v250 + k);
        if (v67)
        {
          sub_29A014BEC(v67);
        }
      }

      goto LABEL_403;
    }
  }

  v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v68)
  {
    v68 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v68 + 4) ^ v227) <= 7)
  {
    v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v69)
    {
      v69 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((*v69 ^ *(this + 21)) <= 7)
    {
      v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v70)
      {
        v70 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v71 = *(v70 + 7);
      *a3 = v71;
      if ((v71 & 7) != 0)
      {
        v72 = (v71 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v72;
        }
      }

      if ((atomic_load_explicit(qword_2A174CA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A174CA70))
      {
        sub_29ABDD064(&v250);
        xmmword_2A174CA60 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174CA60, &dword_299FE7000);
        __cxa_guard_release(qword_2A174CA70);
      }

      if ((atomic_load_explicit(&qword_2A174CA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174CA90))
      {
        sub_29AD334BC(&v250);
        xmmword_2A174CA80 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174CA80, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174CA90);
      }

      v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v73)
      {
        v73 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      if ((atomic_load_explicit(&qword_2A174CC28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174CC28))
      {
        v184 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v184)
        {
          v184 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource((v184 + 96), &unk_2A174CC18);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174CC18, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174CC28);
      }

      if ((atomic_load_explicit(&qword_2A174CC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174CC40))
      {
        v185 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v185)
        {
          v185 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource((v185 + 72), &unk_2A174CC30);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174CC30, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174CC40);
      }

      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v74 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetRole(&v250, &unk_2A174CC18);
      v75 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetInterpolation(v74, &unk_2A174CC30);
      v76 = operator new(0x18uLL);
      v77 = v228;
      *v76 = &unk_2A2086FB8;
      *(v76 + 8) = v77;
      if (*(&v77 + 1))
      {
        atomic_fetch_add_explicit((*(&v77 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v78 = operator new(0x20uLL);
      *v78 = &unk_2A2087008;
      v78[1] = 0;
      v78[2] = 0;
      v78[3] = v76;
      *&v244 = v76;
      *(&v244 + 1) = v78;
      v79 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetPrimvarValue(v75, &v244);
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::Build(v79, &v248);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v254 + 1))
      {
        sub_29A014BEC(*(&v254 + 1));
      }

      if (*(&v253 + 1))
      {
        sub_29A014BEC(*(&v253 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v73 + 1, v249, &v239);
      v220 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      v243 = v220;
      sub_29ABE8360(a2, &v250);
      v244 = v250;
      if ((atomic_load_explicit(qword_2A174CDA0, memory_order_acquire) & 1) == 0)
      {
        v186 = __cxa_guard_acquire(qword_2A174CDA0);
        if (v186)
        {
          v187 = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetDefaultLocator(v186);
          sub_29AD24300(v187, &v250);
          xmmword_2A174CD90 = v250;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174CD90, &dword_299FE7000);
          __cxa_guard_release(qword_2A174CDA0);
        }
      }

      if ((atomic_load_explicit(&qword_2A174CDC0, memory_order_acquire) & 1) == 0)
      {
        v188 = __cxa_guard_acquire(&qword_2A174CDC0);
        if (v188)
        {
          v189 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPointsLocator(v188);
          v190 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v190)
          {
            v190 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v189, v190, &v250);
          sub_29AD24300(&v250, &v239);
          xmmword_2A174CDB0 = v239;
          v239 = 0uLL;
          sub_29ABC3488(&v250);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174CDB0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174CDC0);
        }
      }

      v80 = atomic_load(&qword_2A174C628);
      if (!v80)
      {
        v80 = sub_29AD31A0C();
      }

      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v81 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v250, &v244);
      v82 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v81, &xmmword_2A174CD90);
      v83 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v82, &xmmword_2A174CDB0);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v83, &v248);
      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v80 + 24), v249, &v239);
      v221 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v84 = *(&v244 + 1);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v238 = v221;
      v85 = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(v84);
      v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      if (!v86)
      {
        v86 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      }

      v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v87)
      {
        v87 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      v88 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      if (!v88)
      {
        v88 = sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v85, &xmmword_2A174CA60, v86, &xmmword_2A174CA80, v87, &v243, v88, &v238, &v244);
      v250 = v244;
      v244 = 0uLL;
      v251 = v228;
      if (*(&v228 + 1))
      {
        atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v244 + 1))
        {
          sub_29A014BEC(*(&v244 + 1));
        }
      }

      *&v239 = 2;
      sub_29AD313DC(&v239, &v250, &v244);
      *(a3 + 8) = v244;
      for (m = 24; m != -8; m -= 16)
      {
        v90 = *(&v250 + m);
        if (v90)
        {
          sub_29A014BEC(v90);
        }
      }

      goto LABEL_403;
    }

    v91 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v91)
    {
      v91 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((v91[1] ^ *(this + 21)) <= 7)
    {
      v92 = v227;
      *a3 = v227;
      if ((v92 & 7) != 0)
      {
        v93 = (v92 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v93, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v93;
        }
      }

      v250 = 0u;
      v251 = 0u;
      v94 = operator new(0x18uLL);
      v95 = v228;
      *v94 = &unk_2A2087080;
      *(v94 + 8) = v95;
      if (*(&v95 + 1))
      {
        atomic_fetch_add_explicit((*(&v95 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v96 = operator new(0x20uLL);
      *v96 = &unk_2A20870D0;
      v96[1] = 0;
      v96[2] = 0;
      v96[3] = v94;
      *&v244 = v94;
      *(&v244 + 1) = v96;
      v97 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(&v250, &v244);
      pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v97, &v243);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      sub_29ABE8360(a2, &v250);
      v244 = v250;
      if ((atomic_load_explicit(qword_2A174CEA0, memory_order_acquire) & 1) == 0)
      {
        v203 = __cxa_guard_acquire(qword_2A174CEA0);
        if (v203)
        {
          v204 = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetDefaultLocator(v203);
          sub_29AD24300(v204, &v250);
          xmmword_2A174CE90 = v250;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174CE90, &dword_299FE7000);
          __cxa_guard_release(qword_2A174CEA0);
        }
      }

      if ((atomic_load_explicit(qword_2A174CEC0, memory_order_acquire) & 1) == 0)
      {
        v205 = __cxa_guard_acquire(qword_2A174CEC0);
        if (v205)
        {
          v206 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v205);
          v207 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
          if (!v207)
          {
            v207 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v206, (v207 + 8), &v250);
          sub_29AD24300(&v250, &v239);
          xmmword_2A174CEB0 = v239;
          v239 = 0uLL;
          sub_29ABC3488(&v250);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174CEB0, &dword_299FE7000);
          __cxa_guard_release(qword_2A174CEC0);
        }
      }

      v98 = atomic_load(&qword_2A174C628);
      if (!v98)
      {
        v98 = sub_29AD31A0C();
      }

      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v99 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v250, &v244);
      v100 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v99, &xmmword_2A174CE90);
      v101 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v100, &xmmword_2A174CEB0);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v101, &v248);
      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v98 + 32), v249, &v239);
      v222 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v238 = v222;
      v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
      if (!v102)
      {
        v102 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
      }

      v239 = v243;
      v243 = 0uLL;
      v103 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      if (!v103)
      {
        v103 = sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v102, &v239, v103, &v238, &v244);
      v250 = v244;
      v244 = 0uLL;
      v251 = v228;
      if (*(&v228 + 1))
      {
        atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v244 + 1))
        {
          sub_29A014BEC(*(&v244 + 1));
        }
      }

      if (*(&v239 + 1))
      {
        sub_29A014BEC(*(&v239 + 1));
      }

      *&v239 = 2;
      sub_29AD313DC(&v239, &v250, &v244);
      *(a3 + 8) = v244;
      for (n = 24; n != -8; n -= 16)
      {
        v105 = *(&v250 + n);
        if (v105)
        {
          sub_29A014BEC(v105);
        }
      }

      goto LABEL_403;
    }
  }

  v106 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v106)
  {
    v106 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v106 + 14) ^ v227) <= 7)
  {
    v107 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v107)
    {
      v107 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((*v107 ^ *(this + 23)) <= 7)
    {
      v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v108)
      {
        v108 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v109 = *(v108 + 7);
      *a3 = v109;
      if ((v109 & 7) != 0)
      {
        v110 = (v109 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v110;
        }
      }

      if ((atomic_load_explicit(qword_2A174CEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A174CEE0))
      {
        sub_29ABDD064(&v250);
        xmmword_2A174CED0 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174CED0, &dword_299FE7000);
        __cxa_guard_release(qword_2A174CEE0);
      }

      if ((atomic_load_explicit(&qword_2A174CF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174CF00))
      {
        sub_29AD34CF4(&v250);
        xmmword_2A174CEF0 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174CEF0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174CF00);
      }

      v111 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v111)
      {
        v111 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      if ((atomic_load_explicit(&qword_2A174D098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D098))
      {
        v196 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v196)
        {
          v196 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource((v196 + 96), &unk_2A174D088);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174D088, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174D098);
      }

      if ((atomic_load_explicit(&qword_2A174D0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D0B0))
      {
        v197 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v197)
        {
          v197 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource((v197 + 72), &unk_2A174D0A0);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174D0A0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174D0B0);
      }

      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v112 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetRole(&v250, &unk_2A174D088);
      v113 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetInterpolation(v112, &unk_2A174D0A0);
      v114 = operator new(0x18uLL);
      v115 = v228;
      *v114 = &unk_2A2087148;
      *(v114 + 8) = v115;
      if (*(&v115 + 1))
      {
        atomic_fetch_add_explicit((*(&v115 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v116 = operator new(0x20uLL);
      *v116 = &unk_2A2087198;
      v116[1] = 0;
      v116[2] = 0;
      v116[3] = v114;
      *&v244 = v114;
      *(&v244 + 1) = v116;
      v117 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetPrimvarValue(v113, &v244);
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::Build(v117, &v248);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v254 + 1))
      {
        sub_29A014BEC(*(&v254 + 1));
      }

      if (*(&v253 + 1))
      {
        sub_29A014BEC(*(&v253 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v111 + 1, v249, &v239);
      v223 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      v243 = v223;
      sub_29ABE8360(a2, &v250);
      v244 = v250;
      if ((atomic_load_explicit(qword_2A174D110, memory_order_acquire) & 1) == 0)
      {
        v198 = __cxa_guard_acquire(qword_2A174D110);
        if (v198)
        {
          v199 = pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetDefaultLocator(v198);
          sub_29AD24300(v199, &v250);
          xmmword_2A174D100 = v250;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174D100, &dword_299FE7000);
          __cxa_guard_release(qword_2A174D110);
        }
      }

      if ((atomic_load_explicit(qword_2A174D130, memory_order_acquire) & 1) == 0)
      {
        v200 = __cxa_guard_acquire(qword_2A174D130);
        if (v200)
        {
          v201 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPointsLocator(v200);
          v202 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v202)
          {
            v202 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v201, v202, &v250);
          sub_29AD24300(&v250, &v239);
          xmmword_2A174D120 = v239;
          v239 = 0uLL;
          sub_29ABC3488(&v250);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174D120, &dword_299FE7000);
          __cxa_guard_release(qword_2A174D130);
        }
      }

      v118 = atomic_load(&qword_2A174C628);
      if (!v118)
      {
        v118 = sub_29AD31A0C();
      }

      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v119 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v250, &v244);
      v120 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v119, &xmmword_2A174D100);
      v121 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v120, &xmmword_2A174D120);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v121, &v248);
      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v118 + 24), v249, &v239);
      v224 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v238 = v224;
      v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
      if (!v122)
      {
        v122 = sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
      }

      v123 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      if (!v123)
      {
        v123 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      }

      v124 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v124)
      {
        v124 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      v125 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      if (!v125)
      {
        v125 = sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v122, &xmmword_2A174CED0, v123, &xmmword_2A174CEF0, v124, &v243, v125, &v238, &v244);
      v250 = v244;
      v244 = 0uLL;
      v251 = v228;
      if (*(&v228 + 1))
      {
        atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v244 + 1))
        {
          sub_29A014BEC(*(&v244 + 1));
        }
      }

      *&v239 = 2;
      sub_29AD313DC(&v239, &v250, &v244);
      *(a3 + 8) = v244;
      for (ii = 24; ii != -8; ii -= 16)
      {
        v127 = *(&v250 + ii);
        if (v127)
        {
          sub_29A014BEC(v127);
        }
      }

      goto LABEL_403;
    }
  }

  v128 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v128)
  {
    v128 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*v128 ^ v227) <= 7)
  {
    v129 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v129)
    {
      v129 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((*v129 ^ *(this + 18)) <= 7)
    {
      v130 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v130)
      {
        v130 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v131 = *(v130 + 7);
      *a3 = v131;
      if ((v131 & 7) != 0)
      {
        v132 = (v131 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v132, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v132;
        }
      }

      if ((atomic_load_explicit(qword_2A174D150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A174D150))
      {
        sub_29ABDD064(&v250);
        xmmword_2A174D140 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174D140, &dword_299FE7000);
        __cxa_guard_release(qword_2A174D150);
      }

      if ((atomic_load_explicit(&qword_2A174D170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D170))
      {
        sub_29AD355F0(&v250);
        xmmword_2A174D160 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174D160, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174D170);
      }

      v133 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v133)
      {
        v133 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      if ((atomic_load_explicit(&qword_2A174D308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D308))
      {
        v208 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v208)
        {
          v208 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource((v208 + 96), &unk_2A174D2F8);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174D2F8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174D308);
      }

      if ((atomic_load_explicit(&qword_2A174D320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D320))
      {
        v209 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v209)
        {
          v209 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource((v209 + 72), &unk_2A174D310);
        __cxa_atexit(sub_29AD30FC4, &unk_2A174D310, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174D320);
      }

      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v134 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetRole(&v250, &unk_2A174D2F8);
      v135 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetInterpolation(v134, &unk_2A174D310);
      v136 = operator new(0x18uLL);
      v137 = v228;
      *v136 = &unk_2A2087210;
      *(v136 + 8) = v137;
      if (*(&v137 + 1))
      {
        atomic_fetch_add_explicit((*(&v137 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v138 = operator new(0x20uLL);
      *v138 = &unk_2A2087260;
      v138[1] = 0;
      v138[2] = 0;
      v138[3] = v136;
      *&v244 = v136;
      *(&v244 + 1) = v138;
      v139 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetPrimvarValue(v135, &v244);
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::Build(v139, &v248);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v254 + 1))
      {
        sub_29A014BEC(*(&v254 + 1));
      }

      if (*(&v253 + 1))
      {
        sub_29A014BEC(*(&v253 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v133 + 1, v249, &v239);
      v225 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      v243 = v225;
      sub_29ABE8360(a2, &v250);
      v244 = v250;
      if ((atomic_load_explicit(qword_2A174D480, memory_order_acquire) & 1) == 0)
      {
        v210 = __cxa_guard_acquire(qword_2A174D480);
        if (v210)
        {
          v211 = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetDefaultLocator(v210);
          sub_29AD24300(v211, &v250);
          xmmword_2A174D470 = v250;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174D470, &dword_299FE7000);
          __cxa_guard_release(qword_2A174D480);
        }
      }

      if ((atomic_load_explicit(qword_2A174D4A0, memory_order_acquire) & 1) == 0)
      {
        v212 = __cxa_guard_acquire(qword_2A174D4A0);
        if (v212)
        {
          v213 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPointsLocator(v212);
          v214 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v214)
          {
            v214 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v213, v214, &v250);
          sub_29AD24300(&v250, &v239);
          xmmword_2A174D490 = v239;
          v239 = 0uLL;
          sub_29ABC3488(&v250);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174D490, &dword_299FE7000);
          __cxa_guard_release(qword_2A174D4A0);
        }
      }

      v140 = atomic_load(&qword_2A174C628);
      if (!v140)
      {
        v140 = sub_29AD31A0C();
      }

      v251 = 0u;
      v252 = 0u;
      v250 = 0u;
      v141 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v250, &v244);
      v142 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v141, &xmmword_2A174D470);
      v143 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v142, &xmmword_2A174D490);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v143, &v248);
      v249[0] = v248;
      v248 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v140 + 24), v249, &v239);
      v226 = v239;
      v239 = 0uLL;
      if (*(&v249[0] + 1))
      {
        sub_29A014BEC(*(&v249[0] + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      if (*(&v252 + 1))
      {
        sub_29A014BEC(*(&v252 + 1));
      }

      if (*(&v251 + 1))
      {
        sub_29A014BEC(*(&v251 + 1));
      }

      if (*(&v250 + 1))
      {
        sub_29A014BEC(*(&v250 + 1));
      }

      v144 = *(&v244 + 1);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v238 = v226;
      v145 = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(v144);
      v146 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      if (!v146)
      {
        v146 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      }

      v147 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v147)
      {
        v147 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      v148 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      if (!v148)
      {
        v148 = sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v145, &xmmword_2A174D140, v146, &xmmword_2A174D160, v147, &v243, v148, &v238, &v244);
      v250 = v244;
      v244 = 0uLL;
      v251 = v228;
      if (*(&v228 + 1))
      {
        atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v244 + 1))
        {
          sub_29A014BEC(*(&v244 + 1));
        }
      }

      *&v239 = 2;
      sub_29AD313DC(&v239, &v250, &v244);
      *(a3 + 8) = v244;
      for (jj = 24; jj != -8; jj -= 16)
      {
        v150 = *(&v250 + jj);
        if (v150)
        {
          sub_29A014BEC(v150);
        }
      }

      goto LABEL_403;
    }
  }

  v151 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v151)
  {
    v151 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v152 = v227;
  if ((*(v151 + 12) ^ v227) <= 7)
  {
    v153 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    if (!v153)
    {
      v153 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
    }

    if ((*v153 ^ *(this + 22)) < 8)
    {
      v154 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v154)
      {
        v154 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v155 = *(v154 + 7);
      *a3 = v155;
      if ((v155 & 7) != 0)
      {
        v156 = (v155 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v156, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v156;
        }
      }

      if ((atomic_load_explicit(&qword_2A174D4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D4C0))
      {
        sub_29ABDD064(&v250);
        xmmword_2A174D4B0 = v250;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174D4B0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174D4C0);
      }

      Topology = pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::GenerateTopology(&v250);
      v158 = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDefaultLocator(Topology);
      v159 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      if (!v159)
      {
        v159 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v158, (v159 + 8), v249);
      pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(v249, &v228, &v244);
      sub_29ABCD328(&v244, &v248);
      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      sub_29ABF4FA0(&v251, &v237);
      v238 = v237;
      v237 = 0uLL;
      v160 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexCounts(&v239, &v238);
      sub_29ABF4FA0(&v253 + 8, &v235);
      v236 = v235;
      v235 = 0uLL;
      v161 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexIndices(v160, &v236);
      v162 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
      if (!v162)
      {
        v162 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
      }

      sub_29ABCCFA4(v162 + 6, &v233);
      v234 = v233;
      v233 = 0uLL;
      v163 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetOrientation(v161, &v234);
      pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::Build(v163, &v243);
      v164 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(&v244, &v243);
      v230 = v250;
      if ((v250 & 7) != 0)
      {
        v165 = v250 & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v250 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v230 = v165;
        }
      }

      sub_29ABCCFA4(&v230, &v231);
      v232 = v231;
      v231 = 0uLL;
      v166 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionScheme(v164, &v232);
      v167 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(v166, &v248);
      pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::Build(v167, &v229);
      if (*(&v232 + 1))
      {
        sub_29A014BEC(*(&v232 + 1));
      }

      if (*(&v231 + 1))
      {
        sub_29A014BEC(*(&v231 + 1));
      }

      if ((v230 & 7) != 0)
      {
        atomic_fetch_add_explicit((v230 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (*(&v243 + 1))
      {
        sub_29A014BEC(*(&v243 + 1));
      }

      if (*(&v234 + 1))
      {
        sub_29A014BEC(*(&v234 + 1));
      }

      if (*(&v233 + 1))
      {
        sub_29A014BEC(*(&v233 + 1));
      }

      if (*(&v236 + 1))
      {
        sub_29A014BEC(*(&v236 + 1));
      }

      if (*(&v235 + 1))
      {
        sub_29A014BEC(*(&v235 + 1));
      }

      if (*(&v238 + 1))
      {
        sub_29A014BEC(*(&v238 + 1));
      }

      if (*(&v237 + 1))
      {
        sub_29A014BEC(*(&v237 + 1));
      }

      if (*(&v242 + 1))
      {
        sub_29A014BEC(*(&v242 + 1));
      }

      if (*(&v241 + 1))
      {
        sub_29A014BEC(*(&v241 + 1));
      }

      if (*(&v240 + 1))
      {
        sub_29A014BEC(*(&v240 + 1));
      }

      if (*(&v239 + 1))
      {
        sub_29A014BEC(*(&v239 + 1));
      }

      if (*(&v247 + 1))
      {
        sub_29A014BEC(*(&v247 + 1));
      }

      if (*(&v246 + 1))
      {
        sub_29A014BEC(*(&v246 + 1));
      }

      if (*(&v245 + 1))
      {
        sub_29A014BEC(*(&v245 + 1));
      }

      if (*(&v244 + 1))
      {
        sub_29A014BEC(*(&v244 + 1));
      }

      if (*(&v248 + 1))
      {
        sub_29A014BEC(*(&v248 + 1));
      }

      sub_29ABC3488(v249);
      sub_29AB72E30();
    }

    v152 = v227;
  }

  *a3 = v152;
  if ((v152 & 7) != 0)
  {
    v168 = (v152 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v168, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v168;
    }
  }

  v169 = *(&v228 + 1);
  *(a3 + 8) = v228;
  *(a3 + 16) = v169;
  if (v169)
  {
    atomic_fetch_add_explicit((v169 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_407:
  if (*(&v228 + 1))
  {
    sub_29A014BEC(*(&v228 + 1));
  }

  if ((v227 & 7) != 0)
  {
    atomic_fetch_add_explicit((v227 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD2FFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  __cxa_guard_abort(&qword_2A174D4F0);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((*v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndex::_PrimsAdded(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1))
  {
    __p = 0;
    v35 = 0;
    v36 = 0;
    v37[0] = 0;
    if (!*(a3 + 256))
    {
      goto LABEL_69;
    }

    v5 = 0;
    do
    {
      if (*(a3 + 260) >= 0x11u)
      {
        v6 = *a3;
      }

      else
      {
        v6 = a3;
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v7)
      {
        v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v7 + 3) ^ *(v6 + 16 * v5 + 8)) <= 7)
      {
        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        if (!v8)
        {
          v8 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        }

        if ((*v8 ^ a1[20]) < 8)
        {
          goto LABEL_58;
        }
      }

      v9 = v37[0];
      if (*(a3 + 260) >= 0x11u)
      {
        v10 = *a3;
      }

      else
      {
        v10 = a3;
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v11)
      {
        v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v11 + 2) ^ *(v10 + 16 * v9 + 8)) <= 7)
      {
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        if (!v12)
        {
          v12 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        }

        if ((*v12 ^ a1[19]) < 8)
        {
          goto LABEL_58;
        }
      }

      v13 = v37[0];
      if (*(a3 + 260) >= 0x11u)
      {
        v14 = *a3;
      }

      else
      {
        v14 = a3;
      }

      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v15)
      {
        v15 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v15 + 4) ^ *(v14 + 16 * v13 + 8)) <= 7)
      {
        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        if (!v16)
        {
          v16 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        }

        if ((*v16 ^ a1[21]) < 8)
        {
          goto LABEL_58;
        }
      }

      v17 = v37[0];
      if (*(a3 + 260) >= 0x11u)
      {
        v18 = *a3;
      }

      else
      {
        v18 = a3;
      }

      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v19)
      {
        v19 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v19 + 14) ^ *(v18 + 16 * v17 + 8)) <= 7)
      {
        v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        if (!v20)
        {
          v20 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        }

        if ((*v20 ^ a1[23]) < 8)
        {
          goto LABEL_58;
        }
      }

      v21 = v37[0];
      if (*(a3 + 260) >= 0x11u)
      {
        v22 = *a3;
      }

      else
      {
        v22 = a3;
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v23)
      {
        v23 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*v23 ^ *(v22 + 16 * v21 + 8)) <= 7)
      {
        v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        if (!v24)
        {
          v24 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        }

        if ((*v24 ^ a1[18]) < 8)
        {
          goto LABEL_58;
        }
      }

      v25 = v37[0];
      if (*(a3 + 260) >= 0x11u)
      {
        v26 = *a3;
      }

      else
      {
        v26 = a3;
      }

      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v27)
      {
        v27 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v27 + 12) ^ *(v26 + 16 * v25 + 8)) <= 7)
      {
        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        if (!v28)
        {
          v28 = sub_29AD37010(&pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens);
        }

        if ((*v28 ^ a1[22]) <= 7)
        {
LABEL_58:
          sub_29A018094(&__p, v37);
        }
      }

      v5 = v37[0] + 1;
      v37[0] = v5;
    }

    while (v5 < *(a3 + 256));
    if (__p == v35)
    {
LABEL_69:
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, a3);
    }

    else
    {
      sub_29AD12CB8(v37, a3);
      v29 = __p;
      v30 = v35;
      if (__p != v35)
      {
        do
        {
          v31 = *v29;
          v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v32)
          {
            v32 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if (v38 >= 0x11)
          {
            v33 = v37[0];
          }

          else
          {
            v33 = v37;
          }

          sub_29A166F2C(&v33[2 * v31 + 1], v32 + 7);
          ++v29;
        }

        while (v29 != v30);
      }

      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v37);
      sub_29AC263E4(v37);
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }
  }
}