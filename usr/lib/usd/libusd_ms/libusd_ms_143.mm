void sub_29ACB3A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3E0E04(va);
  _Unwind_Resume(a1);
}

void sub_29ACB3A90(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x20uLL);
    sub_29A1601D8(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v1;
        v8 = *(v4 + v5);
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9[0] = v8;
        v9[1] = v6;
        sub_29A162678(v7, v9, v9);
        if ((v9[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
        v4 = *a1;
        v5 += 24;
      }

      while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    }
  }
}

void sub_29ACB3B94(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29ACB3BCC(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A160470(v3, a2);
    if (v4)
    {
      return (*a1 + 24 * v4[3]);
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      while ((*result ^ *a2) >= 8)
      {
        result += 3;
        if (result == v6)
        {
          return a1[1];
        }
      }
    }
  }

  return result;
}

void sub_29ACB3C4C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB3C74(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB3CA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20843B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_29ACB3CE4(_DWORD *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  a1[129] = 32;
  v4 = 16 * a2;
  if (a2 >= 0x21)
  {
    a1 = malloc(16 * a2);
    *v3 = a1;
    v3[129] = v2;
    v3[128] = v2;
    if (v2 < 0x21)
    {
      a1 = v3;
    }

    goto LABEL_6;
  }

  a1[128] = a2;
  if (a2)
  {
LABEL_6:
    bzero(a1, v4);
  }

  return v3;
}

uint64_t sub_29ACB3D5C(uint64_t a1)
{
  sub_29ACB3D9C(a1);
  if (*(a1 + 516) >= 0x21u)
  {
    free(*a1);
  }

  return a1;
}

void sub_29ACB3D9C(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 129) >= 0x21u)
  {
    v1 = *a1;
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = (v1 + 1);
    do
    {
      if (*v4)
      {
        sub_29A014BEC(*v4);
      }

      v4 += 2;
      v3 -= 16;
    }

    while (v3);
  }
}

void sub_29ACB3DFC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACB3E24@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20443C3;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACB3E50(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2084430;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACB3EA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACB3EC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB3EEC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB3F1C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2084480))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::HdRetainedSceneIndex(pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(this);
  *v1 = &unk_2A20844A8;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  return result;
}

{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(this);
  *v1 = &unk_2A20844A8;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  return result;
}

void **pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::AddPrims(uint64_t *a1, char **a2)
{
  v15[33] = *MEMORY[0x29EDCA608];
  v15[32] = 0x1000000000;
  v4 = *a2;
  v5 = a2[1];
  if (((v5 - v4) >> 5) >= 0x11)
  {
    sub_29AC3D6F0(v15, (v5 - v4) >> 5);
    v4 = *a2;
    v5 = a2[1];
  }

  if (v4 != v5)
  {
    do
    {
      v7 = (v4 + 8);
      sub_29AC4CE80(v15, v4, v4 + 1);
      v8 = *v7;
      if ((*v7 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = v7[1];
      v9 = v7[2];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v7 - 1;
      v12 = sub_29ACB41B0(a1 + 14, v11);
      if ((*v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v12 = v8;
      *(v12 + 1) = v10;
      v13 = *(v12 + 2);
      *(v12 + 2) = v9;
      if (v13)
      {
        sub_29A014BEC(v13);
      }

      v4 = (v11 + 4);
    }

    while (v11 + 4 != v5);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v15);
  return sub_29AC263E4(v15);
}

char *sub_29ACB41B0(void *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(&v7, a2 + 1);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = sub_29ACB46A8(a1, &v6);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v4 + 8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::RemovePrims(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 128);
  if (*(a2 + 132) >= 0x11u)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      sub_29ACB42D8((a1 + 14), v5);
      v5 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a2);
}

BOOL sub_29ACB42D8(pxrInternal__aapl__pxrReserved__::SdfPath *a1, unsigned int *a2)
{
  v3 = sub_29A41AA50(a1, a2);
  v5 = v3;
  if (v3)
  {
    sub_29ACB4B38(a1, &v5);
  }

  return v3 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::DirtyPrims(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v10[929] = *MEMORY[0x29EDCA608];
  v10[928] = 0x1000000000;
  v7 = v4[1856];
  if (v7 >= 0x11)
  {
    sub_29AC14D54(v10, v7);
    LODWORD(v7) = v5[1856];
  }

  if (v5[1857] >= 0x11)
  {
    v5 = *v5;
  }

  if (v7)
  {
    v8 = 464 * v7;
    do
    {
      if (sub_29A41AA50(v6 + 14, v5))
      {
        sub_29AC2C3E8(v10, v5, (v5 + 2));
      }

      v5 += 116;
      v8 -= 464;
    }

    while (v8);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v10);
  return sub_29ABD3844(v10);
}

void *pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::GetPrim@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A41AA50((a1 + 112), a2);
  if (result)
  {
    v5 = result[1];
    *a3 = v5;
    if ((v5 & 7) != 0)
    {
      v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v6;
      }
    }

    v7 = result[3];
    a3[1] = result[2];
    a3[2] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::GetChildPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_29A41AA50(this + 14, a2);
  v9 = result;
  if (result)
  {
    result = *(result + 40);
    if (result)
    {
      v9 = result;
    }

    else
    {
      result = sub_29A41AAB8(&v9);
      v9 = result;
      if (!result)
      {
        return result;
      }
    }

    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(result, &v8);
      v6 = v8;
      v7 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
      result = sub_29A1DE3A4(&v8);
      if (v6 != v7)
      {
        break;
      }

      sub_29A1E28B4(a3, v9);
      result = sub_29A41AAB8(&v9);
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_29ACB4570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void sub_29ACB4598(uint64_t *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);
}

void sub_29ACB45EC(uint64_t *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);

  operator delete(v2);
}

_DWORD *sub_29ACB4644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29ACB46A8(void *a1, unsigned int *a2)
{
  v7 = a2;
  result = sub_29ACB4808(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29ACB46FC(a1, &v5);
    return v5;
  }

  return result;
}

_DWORD *sub_29ACB46FC(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(*a2, &v13);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v13))
  {
    sub_29A1E21F4(&v8, &v13);
    sub_29A1E2240(&v9, &v14);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v4 = sub_29ACB46A8(a1, &v8);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    sub_29A1DE3A4(&v8);
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

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
  return sub_29A1DE3A4(&v13);
}

void sub_29ACB47E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29ACB4644(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void *sub_29ACB4808(void *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29ACB4928(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    result = *v7;
    while (*result != *a2)
    {
      result = result[4];
      if (!result)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      sub_29ACB4928(a1);
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v10 = operator new(0x38uLL);
    result = sub_29AC2E078(v10, *a3);
    result[5] = 0;
    result[6] = 0;
    result[4] = v8;
    *v7 = result;
    ++a1[3];
  }

  return result;
}

void sub_29ACB4928(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::_PrimEntry>::_Grow() [MappedType = pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::_PrimEntry]", 0);
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
  sub_29ACB4AC0(&v17, v5 + 1);
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

void sub_29ACB4A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29ACB4AC0(void *a1, unint64_t a2)
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

void sub_29ACB4B1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACB4B38(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_29ACB4B88(a1, *a2);
  sub_29ACB4BDC(a1, v3);

  sub_29ACB4C78(a1, v3);
}

void sub_29ACB4B88(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    sub_29ACB4D3C(a1, *(a2 + 40));

    sub_29ACB4C78(a1, v2);
  }
}

void *sub_29ACB4BDC(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (*a2 != *result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v6);
    v5 = sub_29A41AA50(a1, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
    return sub_29A41AD08(v5, a2);
  }

  return result;
}

void sub_29ACB4C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29ACB4C78(void *a1, unsigned int *a2)
{
  v2 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 32);
  }

  while (v4 != a2);
  --a1[3];
  *v3 = *(v4 + 32);
  v5 = *(v4 + 24);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(v4 + 8);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 4));
  v7 = sub_29A1DE3A4(v4);

  operator delete(v7);
}

void sub_29ACB4D3C(void *a1, uint64_t a2)
{
  (sub_29ACB4B88)();
  v4 = *(a2 + 48);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 7) != 0 && v5 != 0)
  {
    do
    {
      v7 = *(v5 + 48);
      if ((v7 & 7) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v8 = 0;
      }

      sub_29ACB4B88(a1, v5);
      sub_29ACB4C78(a1, v5);
      v5 = v8;
    }

    while (v8);
  }
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::HdRprim::HdRprim(pxrInternal__aapl__pxrReserved__::HdRprim *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *this = &unk_2A2084510;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 3);
  *(this + 2) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 5);
  sub_29ACB5868(this + 32, 3, 1);
  *(this + 57) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 408) = 0u;
  sub_29A2258F0(this + 94, a2);
  sub_29A225948(this + 95, a2 + 1);
  return this;
}

void sub_29ACB4E7C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v2);
  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdRprim::~HdRprim(pxrInternal__aapl__pxrReserved__::HdRprim *this)
{
  *this = &unk_2A2084510;
  v6 = (this + 440);
  sub_29A3E01A4(&v6);
  v2 = *(this + 54);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 53);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 52);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 51);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = (this + 384);
  sub_29ACB596C(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 95);
  sub_29A1DE3A4(this + 94);
  v6 = (this + 32);
  sub_29A0176E4(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 5);
  sub_29A1DE3A4(this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdRprim::CanSkipDirtyBitPropagationAndSync(pxrInternal__aapl__pxrReserved__::HdRprim *this, int a2)
{
  v2 = ((a2 & 0x800400) != 0) | *(this + 372);
  if (!(((a2 & 0x800400) != 0) | *(this + 372) & 1))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    if (!v4)
    {
      v4 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v3, (v4 + 256));
  }

  return (v2 & 1) == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRprim::PropagateRprimDirtyBits(pxrInternal__aapl__pxrReserved__::HdRprim *this, int a2)
{
  v2 = a2 | 0x8860;
  if ((a2 & 0x100000) == 0)
  {
    v2 = a2;
  }

  v3 = (16 * v2) & 0x100 | v2;
  if ((v3 & 0x100) != 0)
  {
    v4 = v3 | 0x860;
  }

  else
  {
    v4 = v3;
  }

  return (*(*this + 56))(this, v4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRprim::GetDrawItems(pxrInternal__aapl__pxrReserved__::HdRprim *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  Repr = pxrInternal__aapl__pxrReserved__::HdRprim::_GetRepr(this, a2);
  v5 = *Repr;
  v4 = Repr[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v4);
  }

  if (!v5)
  {
    if ((atomic_load_explicit(&qword_2A174B5A0, memory_order_acquire) & 1) == 0)
    {
      sub_29B2C6BF8();
    }

    v9[0] = "hd/rprim.cpp";
    v9[1] = "GetDrawItems";
    v9[2] = 119;
    v9[3] = "const HdRepr::DrawItemUniquePtrVector &pxrInternal__aapl__pxrReserved__::HdRprim::GetDrawItems(const TfToken &) const";
    v10 = 0;
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Rprim has no draw items for repr %s", v7);
    return &qword_2A174B5C0;
  }

  return v5;
}

__guard *pxrInternal__aapl__pxrReserved__::HdRprim::_GetRepr(pxrInternal__aapl__pxrReserved__::HdRprim *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = *(this + 55);
  v3 = *(this + 56);
  v4 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v2 != v3)
  {
    while ((v4 ^ *v2) >= 8)
    {
      v2 += 3;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v2 != *(this + 56))
  {
    return v2 + 1;
  }

  v9[0] = "hd/rprim.cpp";
  v9[1] = "_GetRepr";
  v9[2] = 182;
  v9[3] = "const HdReprSharedPtr &pxrInternal__aapl__pxrReserved__::HdRprim::_GetRepr(const TfToken &) const";
  v10 = 0;
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "_InitRepr() should be called for repr %s on prim %s.", v6, Text);
  v2 = &qword_2A174B5A8;
  if (atomic_load_explicit(&qword_2A174B5A8, memory_order_acquire))
  {
    return v2 + 1;
  }

  sub_29B2C6C70(v9);
  return v9[0];
}

uint64_t sub_29ACB52B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void **sub_29ACB52E4(void **a1)
{
  v3 = a1;
  sub_29AC9C344(&v3);
  return a1;
}

int *pxrInternal__aapl__pxrReserved__::HdRprim::SetMaterialId(pxrInternal__aapl__pxrReserved__::HdRprim *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 4, a2);

  return sub_29A225948(this + 5, a2 + 1);
}

void *pxrInternal__aapl__pxrReserved__::HdRprim::UpdateReprSelector(void *a1, uint64_t a2, unsigned int *a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsReprDirty(*a3);
  if (result)
  {
    result = (*(*a2 + 136))(&v10, a2, a1 + 47);
    if (&v10 == a1 + 51)
    {
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v7 = a1[51];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      a1[51] = v10;
      v10 = 0;
      v8 = a1[52];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      a1[52] = v11;
      v11 = 0;
      v9 = a1[53];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      a1[53] = v12;
      v12 = 0;
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a3 &= ~0x40000u;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdRprim::UpdateRenderTag(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 144))(&v5, a2, a1 + 376);
  v4 = (a1 + 432);
  if (&v5 == (a1 + 432))
  {
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v4 = v5;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateVisibility(pxrInternal__aapl__pxrReserved__::HdRprim *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsVisibilityDirty(*a3, (this + 376), a3);
  if (result)
  {
    result = (*(*a2 + 80))(a2, this + 376);
    *(this + 372) = result;
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateInstancer(pxrInternal__aapl__pxrReserved__::HdRprim *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsInstancerDirty(*a3, (this + 376), a3);
  if (result)
  {
    (*(*a2 + 264))(&v7, a2, this + 376);
    if (v7 != *(this + 1))
    {
      v6 = *(a2 + 1);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 2))
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveInstancerRprimDependency((v6 + 440), (this + 8), (this + 376));
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v7))
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::AddInstancerRprimDependency((v6 + 440), &v7, (this + 376));
      }

      sub_29A2258F0(this + 2, &v7);
      sub_29A225948(this + 3, &v7 + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7 + 1);
    return sub_29A1DE3A4(&v7);
  }

  return result;
}

void sub_29ACB56D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRprim::GetInstancerTransforms@<X0>(pxrInternal__aapl__pxrReserved__::HdRprim *this@<X0>, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A1E21F4(&v10, this + 2);
  sub_29A1E2240(&v11, this + 3);
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *(a2 + 1);
  while (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v10))
  {
    (*(*a2 + 256))(v9, a2, &v10);
    sub_29ACB5A38(a3, v9);
    Instancer = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(v6, &v10);
    if (!Instancer)
    {
      *&v9[0] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v9 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    sub_29A2258F0(&v10, (Instancer + 24));
    sub_29A225948(&v11, (Instancer + 28));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

uint64_t sub_29ACB5868(uint64_t a1, int a2, char a3)
{
  v5 = sub_29ACB58EC(a1, a2);
  sub_29A12D048((v5 + 3));
  *(a1 + 336) = 0;
  *(a1 + 340) = a3;
  *(a1 + 344) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 344));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 348));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return a1;
}

void sub_29ACB58D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void *sub_29ACB58EC(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    bzero(v4, 16 * a2);
    a1[1] = &v4[16 * a2];
  }

  return a1;
}

void sub_29ACB596C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      sub_29ACB59F4(v1, v3 - 64);
    }

    v1[1] = v2;

    operator delete(v4);
  }
}

void sub_29ACB59F4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 40);
  sub_29A124AB0(&v2);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29ACB5A38(uint64_t a1, __int128 *a2)
{
  if (!*(a1 + 8))
  {
    v3 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      if (*(a1 + 24))
      {
        v6 = a1;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      v8 = (v4 + (v3 << 7));
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[3];
      v8[2] = a2[2];
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
      v12 = a2[4];
      v13 = a2[5];
      v14 = a2[7];
      v8[6] = a2[6];
      v8[7] = v14;
      v8[4] = v12;
      v8[5] = v13;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B2C6D54(a1, v3, a2);
  }

  sub_29B2C6CD8(a1);
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this)
{
  *this = &unk_2A2084578;
  *(this + 8) = 0u;
  *(this + 6) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  sub_29A34A4F0(this + 7, 1uLL, v2);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  return this;
}

void sub_29ACB5B78(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2C6E04((v1 + 16));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a3, char a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  *this = &unk_2A2084578;
  v6 = *a2;
  *(this + 1) = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *a3;
  *(this + 2) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(a3 + 1);
  *(this + 3) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a3 + 2);
  *(this + 4) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 40) = a4;
  v10 = *a5;
  *(this + 6) = *a5;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 6) &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  sub_29A34A4F0(this + 7, 1uLL, v11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  return this;
}

void sub_29ACB5CF8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 48);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2C6E04(v2);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, char a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6)
{
  v6 = a4;
  *this = &unk_2A2084578;
  v8 = *a2;
  *(this + 1) = *a2;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *a3;
  *(this + 2) = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(a3 + 1);
  *(this + 3) = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(a3 + 2);
  *(this + 4) = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 40) = a5;
  v12 = *a6;
  *(this + 6) = *a6;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 6) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a4))
  {
    v15[0] = "hd/rprimCollection.cpp";
    v15[1] = "HdRprimCollection";
    v15[2] = 49;
    v15[3] = "pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(const TfToken &, const HdReprSelector &, const SdfPath &, BOOL, const TfToken &)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v15, 1, "Root path must be absolute");
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v13);
  }

  sub_29A1E28B4(this + 56, v6);
  return this;
}

void sub_29ACB5ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v12 + 3;
  sub_29A1E234C(&a10);
  a10 = v12;
  sub_29A1E234C(&a10);
  v14 = *(v10 + 48);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29ABEC7EC(v11);
  v15 = *(v10 + 8);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  *(this + 8) = 0u;
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 5) = 0u;
  v5 = this + 80;
  *this = &unk_2A2084578;
  *(this + 24) = 0u;
  v6 = (this + 24);
  *(this + 4) = 0u;
  *(this + 12) = 0;
  sub_29A166F2C(this + 1, a2 + 1);
  sub_29A166F2C(this + 2, a2 + 2);
  sub_29A166F2C(v6, a2 + 3);
  sub_29A166F2C(this + 4, a2 + 4);
  *(this + 40) = *(a2 + 40);
  if (this != a2)
  {
    sub_29A324D54(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
    sub_29A324D54(v5, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  }

  sub_29A166F2C(v4, a2 + 6);
  return this;
}

void sub_29ACB6038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  sub_29A1E234C(va);
  if ((*v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2C6E04((v2 + 16));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this)
{
  *this = &unk_2A2084578;
  v7 = (this + 80);
  sub_29A1E234C(&v7);
  v7 = (this + 56);
  sub_29A1E234C(&v7);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(this);

  operator delete(v1);
}

__n128 pxrInternal__aapl__pxrReserved__::HdRprimCollection::CreateInverseCollection@<Q0>(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this@<X0>, pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a2, this);
  result = *(v2 + 5);
  v4 = *(v2 + 56);
  *(v2 + 56) = result;
  *(v2 + 5) = v4;
  v5 = *(v2 + 9);
  *(v2 + 9) = *(v2 + 12);
  *(v2 + 12) = v5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetRootPaths(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v18 = *a2;
  v19 = v6;
  while (v5 != v6)
  {
    v7 = sub_29A391CE4(&v18, a2, a3);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(*v7))
    {
      v16[0] = "hd/rprimCollection.cpp";
      v16[1] = "SetRootPaths";
      v16[2] = 93;
      v16[3] = "void pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetRootPaths(const SdfPathVector &)";
      v17 = 0;
      v14 = sub_29A391CE4(&v18, v8, v9);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*v14);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Root path must be absolute (<%s>)", Text);
      return;
    }

    sub_29A1FABF8(&v18);
    v5 = v18;
    v6 = v19;
  }

  if (a1 + 56 != a2)
  {
    sub_29A324D54(a1 + 56, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = 126 - 2 * __clz((v11 - v10) >> 3);
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_29A24ED30(v10, v11, v16, v13, 1);
}

void pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetRootPath(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
  {
    v5 = *(this + 7);
    for (i = *(this + 8); i != v5; sub_29A1E230C(this + 56, i))
    {
      i -= 2;
    }

    *(this + 8) = v5;

    sub_29A1E28B4(this + 56, a2);
  }

  else
  {
    v6[0] = "hd/rprimCollection.cpp";
    v6[1] = "SetRootPath";
    v6[2] = 106;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetRootPath(const SdfPath &)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Root path must be absolute");
  }
}

void pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetExcludePaths(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v18 = *a2;
  v19 = v6;
  while (v5 != v6)
  {
    v7 = sub_29A391CE4(&v18, a2, a3);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(*v7))
    {
      v16[0] = "hd/rprimCollection.cpp";
      v16[1] = "SetExcludePaths";
      v16[2] = 119;
      v16[3] = "void pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetExcludePaths(const SdfPathVector &)";
      v17 = 0;
      v14 = sub_29A391CE4(&v18, v8, v9);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*v14);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Exclude path must be absolute (<%s>)", Text);
      return;
    }

    sub_29A1FABF8(&v18);
    v5 = v18;
    v6 = v19;
  }

  if (a1 + 80 != a2)
  {
    sub_29A324D54(a1 + 80, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = 126 - 2 * __clz((v11 - v10) >> 3);
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_29A24ED30(v10, v11, v16, v13, 1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdRprimCollection::ComputeHash(pxrInternal__aapl__pxrReserved__::HdRprimCollection *this)
{
  v2 = 0;
  v3 = 0;
  sub_29AC06A04(&v2, this + 1, this + 2, this + 40, this + 56, this + 80, this + 6);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdRprimCollection::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) ^ *(a1 + 8)) > 7)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::HdReprSelector::operator==((a1 + 16), (a2 + 16));
  if (result)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }

    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a2 + 56);
    if (v5 - v6 != *(a2 + 64) - v7)
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

    v9 = *(a1 + 80);
    v8 = *(a1 + 88);
    v10 = *(a2 + 80);
    if (v8 - v9 == *(a2 + 88) - v10)
    {
      while (v9 != v8)
      {
        if (*v9 != *v10)
        {
          return 0;
        }

        v9 += 8;
        ++v10;
      }

      return (*(a2 + 48) ^ *(a1 + 48)) < 8uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::hash_value(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC06A04(&v3, this + 1, this + 2, this + 40, this + 56, this + 80, this + 6);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

void pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType::~HdSampleFilterSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType::HdSampleFilterSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "sampleFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "resource", 0);
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

void sub_29ACB68AC(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetResource(pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
  }

  v5 = *(v4 + 1);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACB6B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::Builder::SetResource(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens))
    {
      sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
  if (!result)
  {
    return sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B610))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174B5D8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174B5D8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174B610);
  }

  return &unk_2A174B5D8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetResourceLocator(pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B650, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B650);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdSampleFilterSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B5D8, (v3 + 8), dword_2A174B618);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B618, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B650);
    }
  }

  return dword_2A174B618;
}

pxrInternal__aapl__pxrReserved__::HdSceneDelegate *pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  *this = &unk_2A20845A8;
  *(this + 1) = a2;
  sub_29A1E21F4(this + 4, a3);
  sub_29A1E2240(this + 5, a3 + 1);
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((this + 16)))
  {
    v9[0] = "hd/sceneDelegate.cpp";
    v9[1] = "HdSceneDelegate";
    v9[2] = 25;
    v9[3] = "pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(HdRenderIndex *, const SdfPath &)";
    v10 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Scene Delegate Id must be an absolute path: %s", Text);
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath((this + 16), v7, v9);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *this)
{
  *this = &unk_2A20845A8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 5);
  sub_29A1DE3A4(this + 4);
}

{
  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdSceneDelegate::IsEnabled(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdOptionTokens);
  if (!v3)
  {
    v3 = sub_29AC8FE08(&pxrInternal__aapl__pxrReserved__::HdOptionTokens);
  }

  return (*v3 ^ *a2) < 8uLL;
}

pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetRenderTag@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
  if (!result)
  {
    result = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
  }

  v5 = *result;
  *a1 = *result;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v6;
    }
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetSubdivTags@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

int64x2_t pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetExtent@<Q0>(uint64_t a1@<X8>)
{
  *a1 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a1 + 16) = xmmword_29B43C5A0;
  result = vdupq_n_s64(0xC7EFFFFFE0000000);
  *(a1 + 32) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneDelegate::SampleTransform(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _OWORD *a5)
{
  if (!a3)
  {
    return 0;
  }

  *a4 = 0;
  (*(*a1 + 72))(v11);
  v6 = v11[5];
  a5[4] = v11[4];
  a5[5] = v6;
  v7 = v11[7];
  a5[6] = v11[6];
  a5[7] = v7;
  v8 = v11[1];
  *a5 = v11[0];
  a5[1] = v8;
  v9 = v11[3];
  a5[2] = v11[2];
  a5[3] = v9;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneDelegate::SamplePrimvar(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4, float *a5, pxrInternal__aapl__pxrReserved__::VtValue *a6)
{
  v8[2] = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 0;
  }

  *a5 = 0.0;
  (*(*this + 120))(v8);
  sub_29A18606C(a6, v8);
  sub_29A186B14(v8);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneDelegate::SampleIndexedPrimvar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v8[2] = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 0;
  }

  *a5 = 0;
  (*(*a1 + 128))(v8);
  sub_29A18606C(a6, v8);
  sub_29A186B14(v8);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetReprSelector(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetCategories@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetInstanceCategories(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetInstanceIndices@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetInstancerId@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetInstancerPrototypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneDelegate::SampleInstancerTransform(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _OWORD *a5)
{
  if (!a3)
  {
    return 0;
  }

  *a4 = 0;
  (*(*a1 + 256))(v11);
  v6 = v11[5];
  a5[4] = v11[4];
  a5[5] = v6;
  v7 = v11[7];
  a5[6] = v11[6];
  a5[7] = v7;
  v8 = v11[1];
  *a5 = v11[0];
  a5[1] = v8;
  v9 = v11[3];
  a5[2] = v11[2];
  a5[3] = v9;
  return 1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetScenePrimPath@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, (a1 + 16), v6, 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetScenePrimPaths@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = (a3[1] - *a3) >> 2;
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v10, a2, (a1 + 16), v8, 1);
  sub_29A34A4F0(a4, v7, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  return sub_29A1DE3A4(&v10);
}

void sub_29ACB75C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetMaterialId@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

double pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetRenderBufferDescriptor@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_29B6C2BB0;
  *(a1 + 16) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetVolumeFieldDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetExtComputationSceneInputNames(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetExtComputationInputDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetExtComputationOutputDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetPrimvarDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetExtComputationPrimvarDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneDelegate::SampleExtComputationInput(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4, float *a5, pxrInternal__aapl__pxrReserved__::VtValue *a6)
{
  v8[2] = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 0;
  }

  *a5 = 0.0;
  (*(*this + 376))(v8);
  sub_29A18606C(a6, v8);
  sub_29A186B14(v8);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetExtComputationKernel(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSceneDelegate::GetTaskRenderTags(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_29ACB7794(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens);
  if (!v2)
  {
    v2 = sub_29ACB7924(&pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens);
  }

  v3 = *v2;
  *a1 = *v2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = 0;
  *(a1 + 12) = vdup_n_s32(0x3E3851ECu);
  *(a1 + 20) = 1043878380;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens);
  if (!v4)
  {
    v4 = sub_29ACB7924(&pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens);
  }

  v5 = *(v4 + 5);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 32));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 80));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 128));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 176));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 224));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 272));
  return a1;
}

void sub_29ACB7890(_Unwind_Exception *exception_object)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *sub_29ACB7924(atomic_ullong *a1)
{
  result = sub_29ACB796C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType::~HdModelDrawModeTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *sub_29ACB796C()
{
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType::HdModelDrawModeTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType::~HdSceneGlobalsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType::HdSceneGlobalsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "sceneGlobals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "activeRenderPassPrim", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "activeRenderSettingsPrim", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "startTimeCode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "endTimeCode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "currentFrame", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACB7C6C(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetFromSceneIndex(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = sub_29AC1199C(a1);
    v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
    (*(*v3 + 16))(&v5, v3, v4);
    pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetFromParent(&v6, a2);
    if (v7)
    {
      sub_29A014BEC(v7);
    }

    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v5 = "hd/sceneGlobalsSchema.cpp";
    v6 = "GetFromSceneIndex";
    v7 = 41;
    v8 = "static HdSceneGlobalsSchema pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetFromSceneIndex(const HdSceneIndexBaseRefPtr &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Invalid input scene index provided.");
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29ACB7E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens))
    {
      sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetActiveRenderPassPrim(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetActiveRenderSettingsPrim(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetStartTimeCode(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetEndTimeCode(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetCurrentFrame(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  v50 = *MEMORY[0x29EDCA608];
  v11 = &v46;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  v46 = 0u;
  v12 = v48;
  if (*a1)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    }

    v11 = v47;
    v12 = v48 + 1;
    sub_29A166F2C(v48, v14 + 1);
    v16 = *a1;
    v15 = a1[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(&v46 + 1);
    *&v46 = v16;
    *(&v46 + 1) = v15;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (*a2)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    }

    sub_29A166F2C(v12, v19 + 2);
    ++v18;
    v21 = *a2;
    v20 = a2[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v11 + 1);
    *v11 = v21;
    *(v11 + 1) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  if (*a3)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    }

    sub_29A166F2C(v48 + v18, v23 + 3);
    v24 = v18 + 1;
    v25 = &v47[v18 - 1];
    v27 = *a3;
    v26 = a3[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v25[1];
    *v25 = v27;
    v25[1] = v26;
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v24 = v18;
  }

  if (*a4)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    }

    sub_29A166F2C(v48 + v24, v29 + 4);
    v30 = v24 + 1;
    v31 = &v47[v24 - 1];
    v33 = *a4;
    v32 = a4[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = v31[1];
    *v31 = v33;
    v31[1] = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  else
  {
    v30 = v24;
  }

  if (*a5)
  {
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    if (!v35)
    {
      v35 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    }

    sub_29A166F2C(v48 + v30, v35 + 5);
    v36 = v30 + 1;
    v37 = &v47[v30 - 1];
    v39 = *a5;
    v38 = a5[1];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v37[1];
    *v37 = v39;
    v37[1] = v38;
    if (v40)
    {
      sub_29A014BEC(v40);
    }
  }

  else
  {
    v36 = v30;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v36, v48, &v46, &v45);
  *a6 = v45;
  for (i = 72; i != -8; i -= 16)
  {
    v42 = *(&v47[-1] + i);
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
    v44 = *(v48 + j);
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACB85F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v22 = 72;
  while (1)
  {
    v23 = *(&a11 + v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v22 -= 16;
    if (v22 == -8)
    {
      v24 = 32;
      while (1)
      {
        v25 = *(&a21 + v24);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v24 -= 8;
        if (v24 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::Builder::SetActiveRenderPassPrim(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::Builder::SetActiveRenderSettingsPrim(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::Builder::SetStartTimeCode(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::Builder::SetEndTimeCode(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::Builder::SetCurrentFrame(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  if (!result)
  {
    return sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B690))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174B658, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174B658, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174B690);
  }

  return &unk_2A174B658;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetActiveRenderPassPrimLocator(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B6D0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B6D0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B658, (v3 + 8), dword_2A174B698);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B698, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B6D0);
    }
  }

  return dword_2A174B698;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetActiveRenderSettingsPrimLocator(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B710, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B710);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B658, (v3 + 16), dword_2A174B6D8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B6D8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B710);
    }
  }

  return dword_2A174B6D8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetStartTimeCodeLocator(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B750, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B750);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B658, (v3 + 24), dword_2A174B718);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B718, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B750);
    }
  }

  return dword_2A174B718;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetEndTimeCodeLocator(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B790, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B790);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B658, (v3 + 32), dword_2A174B758);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B758, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B790);
    }
  }

  return dword_2A174B758;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetCurrentFrameLocator(pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B7D0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B7D0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACB8CBC(&pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B658, (v3 + 40), dword_2A174B798);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B798, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B7D0);
    }
  }

  return dword_2A174B798;
}

pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType *sub_29ACB8CBC(atomic_ullong *a1)
{
  result = sub_29ACB8D04();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType::~HdSceneGlobalsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType *sub_29ACB8D04()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType::HdSceneGlobalsSchemaTokens_StaticTokenType(v0);
  return v0;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6EAF19 & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry*> &)::isInitializing, 1u))
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
      v8 = operator new(0x28uLL);
      *v8 = 0u;
      v8[1] = 0u;
      *(v8 + 8) = 1065353216;
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29ACB8F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      v2 = sub_29A180AC4(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

double pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *this)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A2084778;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 45) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *this)
{
  *this = &unk_2A2084778;
  v2 = (this + 80);
  sub_29A1601D8(this + 13, 0);
  v4 = v2;
  sub_29A124AB0(&v4);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v4 = (this + 24);
  sub_29A38A7B4(&v4);
  sub_29A0F6078(this + 2, v3);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::AddObserver(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 24);
  if (sub_29A4282B8(*(a1 + 24), *(a1 + 32), a2) == *(a1 + 32))
  {
    sub_29ACB91FC(v3, a2);
  }

  else
  {
    v4[0] = "hd/sceneIndex.cpp";
    v4[1] = "AddObserver";
    v4[2] = 50;
    v4[3] = "void pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::AddObserver(const HdSceneIndexObserverPtr &)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Observer is already registered");
  }
}

uint64_t sub_29ACB91FC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ACB9CC0(a1, a2);
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

atomic_uint *pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::RemoveObserver(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  result = sub_29A4282B8(*(a1 + 24), *(a1 + 32), a2);
  v5 = *(v3 + 8);
  if (result != v5)
  {
    v6 = result;
    if (*(a1 + 48))
    {
      return sub_29B2C6F74(result, a1);
    }

    else
    {
      if (result + 4 != v5)
      {
        do
        {
          v7 = v6 + 16;
          sub_29B29119C(v6, v6 + 16);
          v8 = v6 + 32;
          v6 += 16;
        }

        while (v8 != v5);
        v6 = v7;
      }

      return sub_29A38A808(v3, v6);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_RemoveExpiredObservers(uint64_t this)
{
  if (!*(this + 48))
  {
    v1 = this;
    v3 = *(this + 24);
    v4 = *(this + 32);
    v2 = this + 24;
    if (v3 != v4)
    {
      while (1)
      {
        v5 = sub_29B2C6E2C(v3);
        if (!(v6 & 1 | v5))
        {
          break;
        }

        v3 += 16;
        if (v3 == v4)
        {
          v3 = v4;
          goto LABEL_6;
        }
      }

      if (v3 != v4)
      {
        for (i = v3 + 16; i != v4; i += 16)
        {
          v8 = sub_29B2C6E2C(i);
          if (v9 & 1 | v8)
          {
            sub_29B29119C(v3, i);
            v3 += 16;
          }
        }
      }
    }

LABEL_6:
    this = sub_29A641AA4(v2, v3, *(v1 + 32));
    *(v1 + 52) = 0;
  }

  return this;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 256))
  {
    v2 = result;
    v10 = result;
    ++*(result + 12);
    v3 = result[4] - result[3];
    if (v3)
    {
      v4 = 0;
      v5 = v3 >> 4;
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      do
      {
        v7 = v2[3];
        v8 = sub_29B2C6E2C(v7 + v4);
        if (v9 & 1 | v8)
        {
          sub_29ACB94B8(v7 + v4);
        }

        *(v2 + 52) = 1;
        v4 += 16;
        --v6;
      }

      while (v6);
    }

    return sub_29ACB9C74(&v10);
  }

  return result;
}

void sub_29ACB94A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACB9C74(va);
  _Unwind_Resume(a1);
}

void sub_29ACB94B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2C6FE4();
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 128))
  {
    v2 = result;
    v10 = result;
    ++*(result + 12);
    v3 = result[4] - result[3];
    if (v3)
    {
      v4 = 0;
      v5 = v3 >> 4;
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      do
      {
        v7 = v2[3];
        v8 = sub_29B2C6E2C(v7 + v4);
        if (v9 & 1 | v8)
        {
          sub_29ACB94B8(v7 + v4);
        }

        *(v2 + 52) = 1;
        v4 += 16;
        --v6;
      }

      while (v6);
    }

    return sub_29ACB9C74(&v10);
  }

  return result;
}

void sub_29ACB95E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACB9C74(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 7424))
  {
    v2 = result;
    v10 = result;
    ++*(result + 12);
    v3 = result[4] - result[3];
    if (v3)
    {
      v4 = 0;
      v5 = v3 >> 4;
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      do
      {
        v7 = v2[3];
        v8 = sub_29B2C6E2C(v7 + v4);
        if (v9 & 1 | v8)
        {
          sub_29ACB94B8(v7 + v4);
        }

        *(v2 + 52) = 1;
        v4 += 16;
        --v6;
      }

      while (v6);
    }

    return sub_29ACB9C74(&v10);
  }

  return result;
}

void sub_29ACB96D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACB9C74(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRenamed(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 256))
  {
    v2 = result;
    v10 = result;
    ++*(result + 12);
    v3 = result[4] - result[3];
    if (v3)
    {
      v4 = 0;
      v5 = v3 >> 4;
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      do
      {
        v7 = v2[3];
        v8 = sub_29B2C6E2C(v7 + v4);
        if (v9 & 1 | v8)
        {
          sub_29ACB94B8(v7 + v4);
        }

        *(v2 + 52) = 1;
        v4 += 16;
        --v6;
      }

      while (v6);
    }

    return sub_29ACB9C74(&v10);
  }

  return result;
}

void sub_29ACB97C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACB9C74(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::SystemMessage(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v7)
  {
    (*(*v7 + 40))(v12);
    v8 = v12[0];
    v9 = v12[1];
    while (v8 != v9)
    {
      v10 = sub_29AC1199C(v8);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::SystemMessage(v10, a2, a3);
      ++v8;
    }

    v13 = v12;
    sub_29AC262C4(&v13);
    v6 = *a1;
  }

  return (*(v6 + 32))(a1, a2, a3);
}

void sub_29ACB9904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29AC262C4(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::GetDisplayName(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    v2 = *(this + 8);
    if (v2)
    {
      sub_29A008D14(a2, *(this + 7), v2);
      return;
    }
  }

  else if (*(this + 79))
  {
    *a2 = *(this + 56);
    *(a2 + 16) = *(this + 9);
    return;
  }

  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*(*this - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL), a2);
}

uint64_t sub_29ACB9988(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 3;
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10[0] = v6;
    v10[1] = v5;
    v7 = sub_29A162678(v4, v10, v10);
    if ((v10[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return *a1 + 8 * v7[3];
    }
  }

  else
  {
    result = sub_29A372B90(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A1D8028(a1, a2);
  sub_29ACB9E98(a1);
  return a1[1] - 8;
}

uint64_t sub_29ACB9A8C(uint64_t a1, void *a2)
{
  v4 = sub_29A372B90(a1, a2);
  if (*(a1 + 8) == v4)
  {
    return 0;
  }

  sub_29ACB9F80(a1, &v4);
  return 1;
}

void *pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::GetTags@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_29AC65AD4(a2, v2, v3, v3 - v2);
}

atomic_uint **pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry::RegisterNamedSceneIndex(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = a2;
  v4 = sub_29ACBA034(a1, a2, &unk_29B4D6118, &v6);
  v4[5] = *a3;
  return sub_29B28FD1C(v4 + 6, (a3 + 8));
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry::GetRegisteredNames@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_29A0925E4(a2, *(this + 3));
  v5 = *(this + 2);
  if (v5)
  {
    do
    {
      v6 = sub_29B2C6E8C((v5 + 5));
      if (v7 & 1 | v6)
      {
        sub_29A070BA0(a2);
      }

      result = sub_29A1FF608(this, v5);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_29ACB9C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSceneIndexNameRegistry::GetNamedSceneIndex@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = sub_29A5DAB7C(a1, a2);
  if (result)
  {
    return sub_29B2C7058(result, a1, a3);
  }

  *a3 = 0;
  return result;
}

uint64_t *sub_29ACB9C74(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v2 + 48) - 1;
  *(v2 + 48) = v3;
  if (!v3 && *(v2 + 52) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_RemoveExpiredObservers(v2);
  }

  return a1;
}

uint64_t sub_29ACB9CC0(uint64_t *a1, __int128 *a2)
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
  sub_29ACB9DDC(a1, *a1, v11, v12);
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

void sub_29ACB9DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB9DDC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

  return sub_29ACB9E60(v6);
}

uint64_t sub_29ACB9E60(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A38A904(a1);
  }

  return a1;
}

void sub_29ACB9E98(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x39)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 8uLL);
      sub_29A1601D8(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A160544(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29ACB9F68(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29ACB9F80(void *a1, uint64_t **a2)
{
  result = a1[3];
  if (result)
  {
    result = sub_29AC0FCC4(result, *a2);
  }

  v5 = a1[1];
  v6 = *a2;
  if (*a2 != (v5 - 8))
  {
    v7 = *v6;
    *v6 = *(v5 - 8);
    *(v5 - 8) = v7;
    result = a1[3];
    if (result)
    {
      v8 = *a2;
      v9 = (*a2 - *a1) >> 3;
      v14 = v8;
      result = sub_29A160544(result, v8, &unk_29B4D6118, &v14);
      result[3] = v9;
    }
  }

  v10 = a1[1];
  v13 = *(v10 - 8);
  v11 = v10 - 8;
  v12 = v13;
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a1[1] = v11;
  return result;
}

const void **sub_29ACBA034(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A18197C(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
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
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29ACBA288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A181A20(va, 0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::HdSceneIndexAdapterSceneDelegate(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, void *a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v6 = pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(a1, a3, a4);
  *v6 = &unk_2A20847E8;
  *(v6 + 3) = &unk_2A20849C8;
  *(v6 + 4) = 0;
  sub_29ACCB1D8(v6 + 40, 8uLL, v7);
  *(a1 + 75) = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29ACBA524(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 && atomic_fetch_add_explicit(a16 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a16 + 8))(a16);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v26 + 1144);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29ABD3178();
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::~HdSceneIndexAdapterSceneDelegate(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this)
{
  *this = &unk_2A20847E8;
  *(this + 3) = &unk_2A20849C8;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveSubtree(*(this + 1), (this + 16), this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::~HdSceneIndexAdapterSceneDelegate(this);
}

void non-virtual thunk topxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::~HdSceneIndexAdapterSceneDelegate(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::~HdSceneIndexAdapterSceneDelegate((this - 24));
}

{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::~HdSceneIndexAdapterSceneDelegate((this - 24));
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  v15 = pthread_self();
  v6 = sub_29ACBA8C8(this + 40, &v15);
  v7 = v6;
  if (*v6 != *a2)
  {
    sub_29A2258F0(v6, a2);
    sub_29A225948(v7 + 1, a2 + 1);
    v8 = sub_29AC1199C(this + 75);
    (*(*v8 + 16))(&v15);
    v9 = v7 + 2;
    if (&v15 != (v7 + 2))
    {
      if ((*v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v9 = v15;
      v15 = 0;
    }

    v10 = v16;
    v16 = 0uLL;
    v11 = *(v7 + 3);
    *(v7 + 1) = v10;
    if (v11)
    {
      sub_29A014BEC(v11);
      if (*(&v16 + 1))
      {
        sub_29A014BEC(*(&v16 + 1));
      }
    }

    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = *(v7 + 1);
  *a3 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v13;
    }
  }

  v14 = *(v7 + 3);
  a3[1] = *(v7 + 2);
  a3[2] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_29ACBA8C8(uint64_t a1, uint64_t *a2)
{
  sub_29ACCB5E4(a1, a2, &v23);
  v4 = v23;
  if (v23)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v23 + 1) == a1 + 16;
  }

  if (v5)
  {
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v8 + 1);
    v9 = 0;
    v10 = 0;
    v6 = *a2;
    v11 = 0;
    v12 = v6;
    sub_29AC2C6C0(&v13, &v8);
    v17 = v12;
    sub_29AC2C6C0(&v18, &v13);
    sub_29ACCB930(a1, &v17, 0, &v22);
    v23 = v22;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
    sub_29A1DE3A4(&v18);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
    sub_29A1DE3A4(&v8);
    v4 = v23;
  }

  return v4 + 16;
}

void sub_29ACBAA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_29ACC8518(&a18);
  sub_29ACCB588(&a13);
  sub_29AC2B53C(&a9);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_PrimAdded(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v48 = *MEMORY[0x29EDCA608];
  sub_29A1E21F4(&v44, a2);
  sub_29A1E2240(&v45, a2 + 1);
  v6 = sub_29A42F6CC(this + 76, &v44);
  v7 = v6;
  if (v6)
  {
    v8 = v6 + 1;
    if ((v6[1] ^ *a3) <= 7)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v9)
      {
        v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v9 + 42) ^ *a3) > 7)
      {
        v14 = 1;
        goto LABEL_48;
      }
    }

    IsRprimTypeSupported = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsRprimTypeSupported(*(this + 1), v7 + 1);
    v11 = *(this + 1);
    if (IsRprimTypeSupported)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveRprim(v11, &v44);
    }

    else
    {
      IsSprimTypeSupported = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v11, v7 + 1);
      v13 = *(this + 1);
      if (IsSprimTypeSupported)
      {
        pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveSprim(v13, (v7 + 1), &v44);
      }

      if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(v13, v7 + 1))
      {
        pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveBprim(*(this + 1), (v7 + 1), &v44);
      }

      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v15)
      {
        v15 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v15 + 21) ^ *v8) > 7)
      {
        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v16)
        {
          v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        if ((*(v16 + 6) ^ *v8) <= 7)
        {
          v17 = *(this + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v44, v46);
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty((v17 + 440), v46, 0x100);
          sub_29A1DCEA8(v46);
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveInstancer(*(this + 1), &v44);
      }
    }
  }

  v18 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsRprimTypeSupported(*(this + 1), a3);
  v19 = *(this + 1);
  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertRprim(v19, a3, this, &v44);
  }

  else
  {
    v20 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v19, a3);
    v21 = *(this + 1);
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSprim(v21, a3, this, &v44);
    }

    if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(v21, a3))
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertBprim(*(this + 1), a3, this, &v44);
    }

    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v22)
    {
      v22 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v22 + 21) ^ *a3) > 7)
    {
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v23)
      {
        v23 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v23 + 6) ^ *a3) > 7)
      {
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v25)
        {
          v25 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        if ((*(v25 + 42) ^ *a3) <= 7)
        {
          pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, &v44, v46);
          sub_29ACBB144(v46, this, &v44, &v42);
          if (v47)
          {
            sub_29A014BEC(v47);
          }

          if ((v46[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v46[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v42)
          {
            pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertTask(*(this + 1), this, &v44, &v42);
          }

          if (v43)
          {
            sub_29A014BEC(v43);
          }
        }
      }

      else
      {
        v24 = *(this + 1);
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v44, v46);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty((v24 + 440), v46, 0x100);
        sub_29A1DCEA8(v46);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertInstancer(*(this + 1), this, &v44);
    }
  }

  if (!v7)
  {
    v26 = sub_29ACBB370(this + 76, &v44);
    sub_29A166F2C(v26, a3);
    goto LABEL_70;
  }

  v14 = 0;
LABEL_48:
  sub_29A166F2C(v7 + 1, a3);
  v40 = 0;
  v41 = 0;
  sub_29ABEC600(v7 + 2, &v40);
  if (v41)
  {
    sub_29A014BEC(v41);
  }

  v38 = 0;
  v39 = 0;
  sub_29ABEC600(v7 + 4, &v38);
  if (v39)
  {
    sub_29A014BEC(v39);
    if ((v14 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  else if (!v14)
  {
    goto LABEL_70;
  }

  if ((atomic_load_explicit(&qword_2A174B9A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B9A0))
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v46);
    v42 = v46;
    v43 = 1;
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A174B7D8, &v42);
    sub_29ABC3488(v46);
    __cxa_atexit(sub_29ABE62AC, &unk_2A174B7D8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174B9A0);
  }

  if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsRprimTypeSupported(*(this + 1), a3))
  {
    v28 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::RprimLocatorSetToDirtyBits(a3, &unk_2A174B7D8, v27);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty((*(this + 1) + 440), &v44, v28);
  }

  else if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(*(this + 1), a3))
  {
    v30 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::SprimLocatorSetToDirtyBits(a3, &unk_2A174B7D8, v29);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkSprimDirty((*(this + 1) + 440), &v44, v30);
  }

  else if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(*(this + 1), a3))
  {
    v32 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::BprimLocatorSetToDirtyBits(a3, &unk_2A174B7D8, v31);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkBprimDirty((*(this + 1) + 440), &v44, v32);
  }

  else
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v33)
    {
      v33 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v33 + 21) ^ *a3) > 7)
    {
      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v35)
      {
        v35 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v35 + 6) ^ *a3) <= 7)
      {
        v36 = *(this + 1);
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v44, v46);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty((v36 + 440), v46, 0x100);
        sub_29A1DCEA8(v46);
      }
    }

    else
    {
      v34 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::InstancerLocatorSetToDirtyBits(a3, &unk_2A174B7D8, v31);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkInstancerDirty((*(this + 1) + 440), &v44, v34);
    }
  }

LABEL_70:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v45);
  return sub_29A1DE3A4(&v44);
}

void sub_29ACBB05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  sub_29ABC3488(va1);
  __cxa_guard_abort(&qword_2A174B9A0);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29ACBB144(uint64_t a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetFromParent((a1 + 8), &v19);
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetFactory(&v19, &v17);
  if (v17)
  {
    (*(*v17 + 32))(&v10, 0.0);
    if (v10)
    {
      (**v10)(v10, a2, a3);
      if (!*a4)
      {
        v12 = "hd/sceneIndexAdapterSceneDelegate.cpp";
        v13 = "_CreateTask";
        v14 = 228;
        v15 = "HdTaskSharedPtr pxrInternal__aapl__pxrReserved__::_CreateTask(const HdSceneIndexPrim &, HdSceneDelegate *const, const SdfPath &)";
        v16 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "When adding task %s in HdSceneIndexAdapterSceneDelegate: No task from factory in HdLegacyTaskSchema.", Text);
      }
    }

    else
    {
      v12 = "hd/sceneIndexAdapterSceneDelegate.cpp";
      v13 = "_CreateTask";
      v14 = 220;
      v15 = "HdTaskSharedPtr pxrInternal__aapl__pxrReserved__::_CreateTask(const HdSceneIndexPrim &, HdSceneDelegate *const, const SdfPath &)";
      v16 = 0;
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "When adding task %s in HdSceneIndexAdapterSceneDelegate: No factory in HdLegacyTaskSchema.", v9);
      *a4 = 0;
      a4[1] = 0;
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  else
  {
    v12 = "hd/sceneIndexAdapterSceneDelegate.cpp";
    v13 = "_CreateTask";
    v14 = 212;
    v15 = "HdTaskSharedPtr pxrInternal__aapl__pxrReserved__::_CreateTask(const HdSceneIndexPrim &, HdSceneDelegate *const, const SdfPath &)";
    v16 = 0;
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "When adding task %s in HdSceneIndexAdapterSceneDelegate: No factory data source in HdLegacyTaskSchema.", v8);
    *a4 = 0;
    a4[1] = 0;
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }
}

void sub_29ACBB314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  v21 = *(v18 + 8);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  v22 = *(v19 - 40);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29ACBB370(void *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(&v7, a2 + 1);
  v8 = 0;
  v9 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v4 = sub_29ACCBB54(a1, &v6);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v4 + 8;
}

void sub_29ACBB45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29ACCB420(va1);
  sub_29ABDDC88(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::PrimsAdded(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *a1, uint64_t a2, uint64_t **a3)
{
  sub_29ACBB4F0(a1 + 40);
  if (*(a3 + 65) >= 0x11u)
  {
    v5 = *a3;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a3 + 64);
  if (v6)
  {
    v7 = &v5[2 * v6];
    do
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_PrimAdded(a1, v5, (v5 + 1));
      v5 += 2;
    }

    while (v5 != v7);
    if (*(a3 + 64))
    {
      *(a1 + 648) = 0;
    }
  }
}

void sub_29ACBB4F0(uint64_t a1)
{
  sub_29ACC8428(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::PrimsRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29ACBB4F0(a1 + 40);
  v5 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v6 = *a3;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = 8 * v5;
    while (1)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(v6))
      {
        pxrInternal__aapl__pxrReserved__::HdRenderIndex::_Clear(*(a1 + 8));
      }

      *&v23 = 0;
      v8 = sub_29A42F6CC((a1 + 608), v6);
      *&v23 = v8;
      if (!v8)
      {
        goto LABEL_33;
      }

      v9 = v8;
      v22 = v8;
      v10 = v8[7];
      if (v10)
      {
        break;
      }

      v10 = sub_29A42FB34(&v22);
      v22 = v10;
      if (v10)
      {
        goto LABEL_12;
      }

LABEL_14:
      IsRprimTypeSupported = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsRprimTypeSupported(*(a1 + 8), v9 + 1);
      v14 = *(a1 + 8);
      if (IsRprimTypeSupported)
      {
        pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveRprim(v14, v6);
      }

      else
      {
        IsSprimTypeSupported = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v14, v9 + 1);
        v16 = *(a1 + 8);
        if (IsSprimTypeSupported)
        {
          pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveSprim(v16, (v9 + 1), v6);
        }

        if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(v16, v9 + 1))
        {
          pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveBprim(*(a1 + 8), (v9 + 1), v6);
        }

        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v17)
        {
          v17 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        if ((*(v17 + 21) ^ v9[1]) > 7)
        {
          v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v18)
          {
            v18 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v18 + 6) ^ v9[1]) > 7)
          {
            v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v20)
            {
              v20 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*(v20 + 42) ^ v9[1]) <= 7)
            {
              pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveTask(*(a1 + 8), v6);
            }
          }

          else
          {
            v19 = *(a1 + 8);
            pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v6, &v21);
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty((v19 + 440), &v21, 0x100);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
            sub_29A1DE3A4(&v21);
          }
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveInstancer(*(a1 + 8), v6);
        }
      }

      sub_29ACBB848((a1 + 608), &v23);
LABEL_33:
      v6 = (v6 + 8);
      v7 -= 8;
      if (!v7)
      {
        if (*(a3 + 128))
        {
          *(a1 + 648) = 0;
        }

        return;
      }
    }

    v22 = v10;
LABEL_12:
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v10, &v21);
    v11 = v21;
    v12 = *v23;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
    sub_29A1DE3A4(&v21);
    if (v11 == v12)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveSubtree(*(a1 + 8), v6, a1);
    }

    goto LABEL_14;
  }
}

void sub_29ACBB848(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_29ACCC150(a1, *a2);
  sub_29ACCC1A4(a1, v3);

  sub_29ACCC240(a1, v3);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29ACBB4F0(a1 + 40);
  if (*(a3 + 7428) >= 0x11u)
  {
    v5 = *a3;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a3 + 7424);
  if (v6)
  {
    v7 = 464 * v6;
    do
    {
      v8 = sub_29A42F6CC((a1 + 608), v5);
      if (v8)
      {
        v9 = v8;
        if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsRprimTypeSupported(*(a1 + 8), v8 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::operator==();
        }

        if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(*(a1 + 8), v9 + 1))
        {
          v11 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::SprimLocatorSetToDirtyBits((v9 + 1), (v5 + 2), v10);
          if (v11)
          {
            v11 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkSprimDirty((*(a1 + 8) + 440), v5, v11);
          }
        }

        else if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(*(a1 + 8), v9 + 1))
        {
          v11 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::BprimLocatorSetToDirtyBits((v9 + 1), (v5 + 2), v16);
          if (v11)
          {
            v11 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkBprimDirty((*(a1 + 8) + 440), v5, v11);
          }
        }

        else
        {
          v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v17)
          {
            v17 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v17 + 21) ^ v9[1]) > 7)
          {
            v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v18)
            {
              v18 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*(v18 + 6) ^ v9[1]) > 7)
            {
              v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
              if (!v11)
              {
                v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
              }

              if ((*(v11 + 42) ^ v9[1]) <= 7)
              {
                v11 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::TaskLocatorSetToDirtyBits((v5 + 2), v15);
                if (v11)
                {
                  pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkTaskDirty((*(a1 + 8) + 440), v5, v11);
                }
              }
            }

            else
            {
              v19 = *(a1 + 8);
              pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v5, &v24);
              pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty((v19 + 440), &v24, 0x100);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
              v11 = sub_29A1DE3A4(&v24);
            }
          }

          else
          {
            v11 = pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::InstancerLocatorSetToDirtyBits((v9 + 1), (v5 + 2), v16);
            if (v11)
            {
              v11 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkInstancerDirty((*(a1 + 8) + 440), v5, v11);
            }
          }
        }

        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v11);
        v13 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v5 + 2), DefaultLocator);
        if (v13)
        {
          v22 = 0;
          v23 = 0;
          sub_29ABEC600(v9 + 2, &v22);
          v13 = v23;
          if (v23)
          {
            sub_29A014BEC(v23);
          }
        }

        v14 = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetDefaultLocator(v13);
        if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v5 + 2), v14))
        {
          v20 = 0;
          v21 = 0;
          sub_29ABEC600(v9 + 4, &v20);
          if (v21)
          {
            sub_29A014BEC(v21);
          }
        }
      }

      v5 += 116;
      v7 -= 464;
    }

    while (v7);
  }
}

void sub_29ACBBBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetMeshTopology(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdMeshTopology *a3@<X8>)
{
  sub_29A0ECEEC(&v29, "hd", "virtual HdMeshTopology pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetMeshTopology(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v26);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetFromParent(&v27, &v24);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetTopology(&v24, &v22);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v22))
  {
    pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetFaceVertexCounts(&v22, &v20);
    pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetFaceVertexIndices(&v22, &v18);
    if (v20 && v18)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v6)
      {
        v6 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v7 = *(v6 + 1);
      v17 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionScheme(&v24, v15);
      if (*&v15[0])
      {
        (*(**&v15[0] + 32))(&v13, 0.0);
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 = v13;
      }

      if (*(&v15[0] + 1))
      {
        sub_29A014BEC(*(&v15[0] + 1));
      }

      v16 = 0;
      memset(v15, 0, sizeof(v15));
      pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetHoleIndices(&v22, &v10);
      if (v10)
      {
        (*(*v10 + 32))(&v13, 0.0);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      if (v11)
      {
        sub_29A014BEC(v11);
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v8)
      {
        v8 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v9 = *(v8 + 14);
      v12 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetOrientation(&v22, &v13);
      if (v13)
      {
        (*(*v13 + 32))(&v10, 0.0);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v12 = v10;
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }

      (*(*v20 + 32))(&v13, 0.0);
      (*(*v18 + 32))(&v10, 0.0);
      pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3, &v17, &v12, &v13, &v10, v15, 0);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v30, v29);
  }
}

void sub_29ACBC224(uint64_t a1, uint64_t *a2, atomic_uint **a3, const void *a4)
{
  if (!a4)
  {
    sub_29B2C70F4(&v30);
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v7 = sub_29AC1199C(a2);
  (*(*v7 + 24))(&v48);
  v8 = v48;
  for (i = v49; v8 != i; v8 += 2)
  {
    v10 = sub_29AC1199C(a2);
    (*(*v10 + 16))(&v45);
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v11)
    {
      v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v11 + 6) ^ v45) <= 7 && v46 != 0)
    {
      pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetFromParent(&v46, &v43);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v43))
      {
        pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetType(&v43, &v41);
        if (v41)
        {
          (*(*v41 + 32))(&v40, 0.0);
          pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetIndices(&v43, &v39);
          if ((atomic_load_explicit(&qword_2A174B9D8, memory_order_acquire) & 1) == 0)
          {
            sub_29B2C7140();
          }

          if (v39)
          {
            (*(*v39 + 32))(&v36, 0.0);
          }

          else
          {
            v36 = xmmword_2A174BA30;
            v37 = unk_2A174BA40;
            v38 = qword_2A174BA50;
            if (qword_2A174BA50)
            {
              v13 = (qword_2A174BA50 - 16);
              if (*(&v37 + 1))
              {
                v13 = *(&v37 + 1);
              }

              atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
            }
          }

          pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetFromParent(&v46, &v30);
          if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v30))
          {
            goto LABEL_26;
          }

          pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetVisibility(&v30, &v55);
          v14 = v55;
          if (v55)
          {
            v4 = (*(*v55 + 32))(v55, 0.0);
          }

          if (v56)
          {
            sub_29A014BEC(v56);
          }

          if (!v14)
          {
LABEL_26:
            v4 = 1;
          }

          if (*(&v30 + 1))
          {
            sub_29A014BEC(*(&v30 + 1));
          }

          if (v4)
          {
            pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetFromParent(&v46, &v30);
            if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v30))
            {
              pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetMaterialBinding(&v30, a3, &v55);
              if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v55))
              {
                pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::GetPath(&v55, &v53);
                if (v53)
                {
                  (*(*v53 + 32))(&v35, 0.0);
                  if (v54)
                  {
                    sub_29A014BEC(v54);
                  }

                  if (v56)
                  {
                    sub_29A014BEC(v56);
                  }

                  v15 = 0;
LABEL_58:
                  v23 = *(&v30 + 1);
                  if (*(&v30 + 1))
                  {
                    sub_29A014BEC(*(&v30 + 1));
                  }

                  if (v15)
                  {
                    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v23);
                    sub_29A1E21F4(&v35, v24);
                    sub_29A1E2240(&v35 + 1, v24 + 1);
                  }

                  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v35))
                  {
                    LODWORD(v30) = 0;
                    sub_29A1E21F4(&v30 + 1, v8);
                    sub_29A1E2240(&v30 + 2, v8 + 1);
                    sub_29A1E21F4(&v30 + 3, &v35);
                    sub_29A1E2240(&v31, &v35 + 1);
                    v32 = v36;
                    v33 = v37;
                    v34 = v38;
                    if (v38)
                    {
                      v25 = (v38 - 16);
                      if (*(&v33 + 1))
                      {
                        v25 = *(&v33 + 1);
                      }

                      atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
                    }

                    sub_29ACC86E8(&v50, &v30);
                    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v35 + 1);
                  sub_29A1DE3A4(&v35);
LABEL_69:
                  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
                }

                if (v54)
                {
                  sub_29A014BEC(v54);
                }
              }

              if (v56)
              {
                sub_29A014BEC(v56);
              }
            }

            v15 = 1;
            goto LABEL_58;
          }

          if (a4)
          {
            if (v16)
            {
              v17 = v16;
              v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
              if (!v18)
              {
                v18 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
              }

              if ((*(v18 + 3) ^ v40) <= 7)
              {
                sub_29ACC8574(v17 + 56, &v36, &v30);
                sub_29A27CF04(v17 + 28, &v30);
                pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
              }

              v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
              if (!v22)
              {
                v22 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
              }

              if ((*(v22 + 4) ^ v40) <= 7)
              {
                sub_29ACC8574(v17 + 51, &v36, &v30);
                sub_29A27CF04((v17 + 51), &v30);
                pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
              }
            }

            else
            {
              if (v19)
              {
                v20 = v19;
                v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
                if (!v21)
                {
                  v21 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
                }

                if ((*(v21 + 5) ^ v40) <= 7)
                {
                  sub_29ACC8574(v20 + 19, &v36, &v30);
                  sub_29A27CF04((v20 + 19), &v30);
                  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
                }

                v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
                if (!v26)
                {
                  v26 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
                }

                if ((*(v26 + 4) ^ v40) <= 7)
                {
                  sub_29ACC8574(v20 + 14, &v36, &v30);
                  sub_29A27CF04(v20 + 7, &v30);
                  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
                }
              }
            }
          }

          goto LABEL_69;
        }

        if (v42)
        {
          sub_29A014BEC(v42);
        }
      }

      if (v44)
      {
        sub_29A014BEC(v44);
      }
    }

    if (v47)
    {
      sub_29A014BEC(v47);
    }

    if ((v45 & 7) != 0)
    {
      atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *&v30 = &v48;
  sub_29A1E234C(&v30);
  if (a4)
  {
    if (v27)
    {
      v28 = (v27 + 384);
      if (v28 != &v50)
      {
        sub_29AC52FEC(v28, v50, v51, (v51 - v50) >> 6);
      }
    }
  }

  *&v30 = &v50;
  sub_29AC5346C(&v30);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetDoubleSided(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v14, "hd", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetDoubleSided(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v11);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetFromParent(&v12, &v9);
  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v9))
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v5)
    {
      v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v5 + 10) ^ v11) < 8)
    {
      LOBYTE(a2) = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDoubleSided(&v9, &v7);
  v4 = v7;
  if (v7)
  {
    LOBYTE(a2) = (*(*v7 + 32))(v7, 0.0);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (!v4)
  {
LABEL_11:
    LOBYTE(a2) = 0;
  }

LABEL_12:
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return a2 & 1;
}

void sub_29ACBCC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtent(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, double *a3@<X8>)
{
  sub_29A0ECEEC(&v23, "hd", "virtual GfRange3d pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtent(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v20);
  pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetFromParent(&v21, &v18);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v18))
  {
    pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMin(&v18, &v16);
    if (v16)
    {
      v3 = (*(*v16 + 32))(v16, 0.0);
      v5 = v12;
      v4 = v13;
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMax(&v18, &v16);
    if (v16)
    {
      v6 = (*(*v16 + 32))(v16, 0.0);
      v7 = v14;
      v8 = v15;
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  else
  {
    v6 = -3.40282347e38;
    v3 = 3.40282347e38;
    v5 = 0x47EFFFFFE0000000;
    v4 = 0x47EFFFFFE0000000;
    v7 = 0xC7EFFFFFE0000000;
    v8 = 0xC7EFFFFFE0000000;
  }

  *a3 = v3;
  *(a3 + 1) = v5;
  *(a3 + 2) = v4;
  a3[3] = v6;
  *(a3 + 4) = v7;
  *(a3 + 5) = v8;
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v24, v23);
  }
}

void sub_29ACBCE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  if (a6)
  {
    sub_29A014BEC(a6);
  }

  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if ((a7 & 7) != 0)
  {
    atomic_fetch_add_explicit((a7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetVisible(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v13, "hd", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetVisible(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v10);
  pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetFromParent(&v11, &v8);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v8))
  {
    pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetVisibility(&v8, &v6);
    if (v6)
    {
      v4 = (*(*v6 + 32))(v6, 0.0);
    }

    else
    {
      v4 = 1;
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    v4 = 1;
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v4;
}

void sub_29ACBD024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetRenderTag(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  sub_29A0ECEEC(&v19, "hd", "virtual TfToken pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetRenderTag(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v16);
  pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetFromParent(&v17, &v14);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v14))
  {
    pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetPurpose(&v14, &v12);
    if (v12)
    {
      (*(*v12 + 32))(v12, 0.0);
    }

    else
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      if (!v9)
      {
        v9 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      }

      v10 = *v9;
      *a3 = *v9;
      if ((v10 & 7) != 0)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 = v11;
        }
      }
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }

  else
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v6)
    {
      v6 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    v7 = *v6;
    *a3 = *v6;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v8;
      }
    }
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }
}

void sub_29ACBD22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetSubdivTags(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v19, "hd", "virtual PxOsdSubdivTags pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetSubdivTags(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v16);
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetFromParent(&v17, &v14);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v14))
  {
    pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionTags(&v14, &v12);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v12))
    {
      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetFaceVaryingLinearInterpolation(&v12, v6);
      if (*&v6[0])
      {
        (*(**&v6[0] + 32))(&v11, 0.0);
        sub_29A166F2C((a3 + 8), &v11);
        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if (*(&v6[0] + 1))
      {
        sub_29A014BEC(*(&v6[0] + 1));
      }

      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetInterpolateBoundary(&v12, v6);
      if (*&v6[0])
      {
        (*(**&v6[0] + 32))(&v10, 0.0);
        sub_29A166F2C(a3, &v10);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if (*(&v6[0] + 1))
      {
        sub_29A014BEC(*(&v6[0] + 1));
      }

      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetTriangleSubdivisionRule(&v12, v6);
      if (*&v6[0])
      {
        (*(**&v6[0] + 32))(&v9, 0.0);
        sub_29A166F2C((a3 + 24), &v9);
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if (*(&v6[0] + 1))
      {
        sub_29A014BEC(*(&v6[0] + 1));
      }

      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCornerIndices(&v12, &v7);
      if (v7)
      {
        (*(*v7 + 32))(v6, 0.0);
        sub_29A27CF04((a3 + 152), v6);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }

      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCornerSharpnesses(&v12, &v7);
      if (v7)
      {
        (*(*v7 + 32))(v6, 0.0);
        sub_29A41712C((a3 + 192), v6);
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }

      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCreaseIndices(&v12, &v7);
      if (v7)
      {
        (*(*v7 + 32))(v6, 0.0);
        sub_29A27CF04((a3 + 32), v6);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }

      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCreaseLengths(&v12, &v7);
      if (v7)
      {
        (*(*v7 + 32))(v6, 0.0);
        sub_29A27CF04((a3 + 72), v6);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }

      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCreaseSharpnesses(&v12, &v7);
      if (v7)
      {
        (*(*v7 + 32))(v6, 0.0);
        sub_29A41712C((a3 + 112), v6);
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetBasisCurvesTopology(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a3@<X8>)
{
  sub_29A0ECEEC(&v31, "hd", "virtual HdBasisCurvesTopology pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetBasisCurvesTopology(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v28);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetFromParent(&v29, &v26);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetTopology(&v26, &v24);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v24))
  {
    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetCurveVertexCounts(&v24, &v22);
    if (v22)
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetCurveIndices(&v24, &v19);
      if (v19)
      {
        (*(*v19 + 32))(&v18, 0.0);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v6)
      {
        v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v7 = *(v6 + 6);
      v17 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetBasis(&v24, &v16);
      if (v16)
      {
        (*(*v16 + 32))(&v18, 0.0);
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 = v18;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v8)
      {
        v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v9 = *(v8 + 44);
      v15 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetType(&v24, &v14);
      if (v14)
      {
        (*(*v14 + 32))(&v18, 0.0);
        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v15 = v18;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v10)
      {
        v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v11 = *(v10 + 53);
      v13 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetWrap(&v24, &v12);
      if (v12)
      {
        (*(*v12 + 32))(&v18, 0.0);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v13 = v18;
      }

      (*(*v22 + 32))(&v18, 0.0);
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3, &v15, &v17, &v13, &v18, v20);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3);
    if (v23)
    {
      sub_29A014BEC(v23);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }

  if (v30)
  {
    sub_29A014BEC(v30);
  }

  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v31)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v32, v31);
  }
}

void sub_29ACBDCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a26)
  {
    sub_29A014BEC(a26);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCategories(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v14, "hd", "virtual VtArray<TfToken> pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCategories(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v11);
  if ((atomic_load_explicit(&qword_2A174B9C8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C71A8();
  }

  pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::GetFromParent(&v12, &v9);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v9))
  {
    pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::GetIncludedCategoryNames(&v9, a3);
  }

  else
  {
    v6 = *algn_2A174B9F0;
    *a3 = xmmword_2A174B9E0;
    *(a3 + 16) = v6;
    v7 = qword_2A174BA00;
    *(a3 + 32) = qword_2A174BA00;
    if (v7)
    {
      v8 = (v7 - 16);
      if (*(a3 + 24))
      {
        v8 = *(a3 + 24);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

void sub_29ACBDFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetVolumeFieldDescriptors(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29A0ECEEC(&v22, "hd", "virtual HdVolumeFieldDescriptorVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetVolumeFieldDescriptors(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v19);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetFromParent(&v20, &v17);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v17))
  {
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v17, &v9);
    ((*v9)[2])(&v15);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    v6 = v15;
    for (i = v16; v6 != i; ++v6)
    {
      pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetVolumeFieldBinding(&v17, v6, &v13);
      if (v13)
      {
        v9 = 0;
        v10 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
        sub_29A166F2C(&v9, v6);
        (*(*v13 + 32))(&v8, 0.0);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }
    }

    v9 = &v15;
    sub_29A124AB0(&v9);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }
}

void sub_29ACBE2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  sub_29ABF537C(&a17);
  if (a24)
  {
    sub_29A014BEC(a24);
  }

  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v24 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACBE388(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ACCC388(a1, a2);
  }

  else
  {
    sub_29ACCC4B8(a1, a1[1], a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29ACBE3D4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetMaterialId(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  sub_29A0ECEEC(&v17, "hd", "virtual SdfPath pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetMaterialId(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v14);
  pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetFromParent(&v15, &v12);
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(this[1]);
  (*(*RenderDelegate + 280))(&v11);
  pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetMaterialBinding(&v12, &v11, &v9);
  pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::GetPath(&v9, &v7);
  if (v7)
  {
    (*(*v7 + 32))(v7, 0.0);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }
}

void sub_29ACBE5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v18 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCoordSysBindings(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A0ECEEC(&v20, "hd", "virtual HdIdVectorSharedPtr pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCoordSysBindings(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v17);
  pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetFromParent(&v18, &v15);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15))
  {
    v6 = operator new(0x18uLL);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    sub_29ACCC748(a3, v6);
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v15, &v11);
    ((*v11)[2])(&v13);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    v7 = v13;
    for (i = v14; v7 != i; ++v7)
    {
      pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetCoordSysBinding(&v15, v7, &v11);
      if (v11)
      {
        v9 = *a3;
        ((*v11)[4])(&v10, 0.0);
        sub_29A377BD0(v9, &v10);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
        sub_29A1DE3A4(&v10);
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }
    }

    v11 = &v13;
    sub_29A124AB0(&v11);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }
}

void sub_29ACBE83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  v23 = *(v20 + 8);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v21 - 64);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetRenderBufferDescriptor(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v18, "hd", "virtual HdRenderBufferDescriptor pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetRenderBufferDescriptor(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v15);
  *a3 = xmmword_29B6C2BB0;
  *(a3 + 16) = 0;
  pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetFromParent(&v16, &v13);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v13))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDimensions(&v13, &v11);
    if (v11)
    {
      *a3 = (*(*v11 + 32))(v11, 0.0);
      *(a3 + 8) = v6;
    }

    pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetFormat(&v13, &v9);
    if (v9)
    {
      *(a3 + 12) = (*(*v9 + 32))(v9, 0.0);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetMultiSampled(&v13, &v7);
    if (v7)
    {
      *(a3 + 16) = (*(*v7 + 32))(v7, 0.0);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    if (v10)
    {
      sub_29A014BEC(v10);
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

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v19, v18);
  }
}

void sub_29ACBEAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v20 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::_ToDictionary(pxrInternal__aapl__pxrReserved__::HdContainerSchema *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v12[2] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(a1, v11);
  v4 = v11[0];
  v5 = v11[1];
  while (v4 != v5)
  {
    sub_29AC0BF38(a1, v4, &v9);
    if (v9)
    {
      v6 = (*(*v9 + 2))(v12, 0.0);
      if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
      }

      v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, EmptyString);
      sub_29A18606C(v8, v12);
      sub_29A186B14(v12);
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }

    ++v4;
  }

  v9 = v11;
  sub_29A124AB0(&v9);
}

void pxrInternal__aapl__pxrReserved__::_ToDictionary(uint64_t *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29ABCD3B8(&v6, &v4);
  pxrInternal__aapl__pxrReserved__::_ToDictionary(&v6, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29ACBED28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetMaterialResource(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v17, "hd", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetMaterialResource(const SdfPath &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v14);
  pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetFromParent(&v15, &v12);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v12))
  {
    RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(this[1]);
    (*(*RenderDelegate + 296))(v11);
    pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetMaterialNetwork(&v12, v11, &v9);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v9))
    {
      v7[0] = v9;
      v7[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29ACBEFB4(v7, &v8);
      *(a3 + 8) = &off_2A2084B60;
      sub_29ACCCBF8();
    }

    *(a3 + 8) = 0;
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    v8 = v11;
    sub_29A124AB0(&v8);
  }

  else
  {
    *(a3 + 8) = 0;
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }
}

void sub_29ACBEF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  sub_29ABE8884(&a11);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  a11 = &a20;
  sub_29A124AB0(&a11);
  v22 = *(v20 - 88);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  v23 = *(v20 - 64);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v20 - 80);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v20 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACBEFB4@<X0>(pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema *a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(a1, v26);
  if (*&v26[0])
  {
    if ((atomic_load_explicit(&qword_2A174B9C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B9C0))
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A174B9B8, "includeDisconnectedNodes");
      __cxa_atexit(sub_29A424A8C, &unk_2A174B9B8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B9C0);
    }

    (*(**&v26[0] + 24))(&v10);
    sub_29ABCD328(&v10, &v20);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v20)
    {
      (v20->__on_zero_shared_weak)(v20, 0.0);
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  if (*(&v26[0] + 1))
  {
    sub_29A014BEC(*(&v26[0] + 1));
  }

  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0u;
  *a2 = a2 + 8;
  *(a2 + 40) = 0u;
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetNodes(a1, &v24);
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetTerminals(a1, &v22);
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v22, &v20);
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetConfig(a1, &v18);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v18))
  {
    v16 = v18;
    v17 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::_ToDictionary(&v16, &v10);
    v4 = v10;
    v10 = 0;
    sub_29A184A10((a2 + 48), v4);
    sub_29A184A10(&v10, 0);
    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  v5 = v20;
  for (i = v21; v5 != i; v5 = (v5 + 8))
  {
    sub_29ACC9560(v26);
    sub_29AC0EFF0(&v22, v5, &v14);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v14))
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::GetUpstreamNodePath(&v14, &v10);
      (*(*v10 + 4))(&v13, 0.0);
      v7 = v11;
      if (v11)
      {
        sub_29A014BEC(v11);
      }

      if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v13 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v12, EmptyString);
      sub_29A1E28B4(a2 + 24, &v12);
      v10 = &v5->__vftable;
      sub_29ACC95BC();
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v10 = &v20;
  sub_29A124AB0(&v10);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  return sub_29A43A24C(v26);
}

void sub_29ACBF41C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A174B9C0);
  v3 = *(v1 - 136);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCameraParamValue(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t *a4@<X8>)
{
  v53 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v47, "hd", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetCameraParamValue(const SdfPath &, const TfToken &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v44);
  if (!v45)
  {
    a4[1] = 0;
    goto LABEL_100;
  }

  pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetFromParent(&v45, &v42);
  IsDefined = pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v42);
  if (!IsDefined)
  {
    a4[1] = 0;
    goto LABEL_98;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsDefined);
  }

  v10 = std::string::find(EmptyString, 58, 0);
  if (v10 == -1)
  {
    v12 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(0xFFFFFFFFFFFFFFFFLL);
    sub_29ABD30AC(v52, v12);
  }

  else
  {
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
    }

    pxrInternal__aapl__pxrReserved__::TfStringTokenize(v11, ":", __p);
    v36 = 0uLL;
    *&v37 = 0;
    sub_29A1D7F98(&v36, 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3));
    v13 = __p[0];
    v14 = __p[1];
    while (v13 != v14)
    {
      sub_29AAE768C(&v36);
      v13 += 24;
    }

    v40 = __p;
    sub_29A012C90(&v40);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v52, (*(&v36 + 1) - v36) >> 3, v36);
    __p[0] = &v36;
    sub_29A124AB0(__p);
  }

  if (!v52[12])
  {
    goto LABEL_36;
  }

  pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetNamespacedProperties(&v42, &v50);
  pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v50, &v40);
  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(v52, &v40, __p);
  sub_29ABE3F04(__p, &v36);
  if (__p[1])
  {
    sub_29A014BEC(__p[1]);
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }

  if (v51)
  {
    sub_29A014BEC(v51);
  }

  v15 = v36;
  if (!v36)
  {
    if (*(&v36 + 1))
    {
      sub_29A014BEC(*(&v36 + 1));
    }

    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v42, &v40);
    pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(v52, &v40, __p);
    sub_29ABE3F04(__p, &v36);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    if (v41)
    {
      sub_29A014BEC(v41);
    }

    v15 = v36;
    if (!v36)
    {
      if (*(&v36 + 1))
      {
        sub_29A014BEC(*(&v36 + 1));
      }

LABEL_36:
      v16 = *a3;
      v39 = v16;
      if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v39 &= 0xFFFFFFFFFFFFFFF8;
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v17)
      {
        v17 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      if ((*(v17 + 7) ^ *a3) <= 7)
      {
        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
        if (!v18)
        {
          v18 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
        }

        sub_29A166F2C(&v39, v18 + 8);
      }

      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v42, __p);
      (*(*__p[0] + 24))(&v36);
      sub_29ABE3F04(&v36, &v40);
      if (*(&v36 + 1))
      {
        sub_29A014BEC(*(&v36 + 1));
      }

      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }

      if (v40)
      {
        (*(*v40 + 2))(&v50, 0.0);
        v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
        if (!v19)
        {
          v19 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
        }

        if ((*(v19 + 1) ^ *a3) > 7)
        {
          v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v26)
          {
            v26 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          if ((*(v26 + 7) ^ *a3) > 7)
          {
            v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
            if (!v29)
            {
              v29 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
            }

            if ((*(v29 + 7) ^ *a3) <= 7)
            {
              memset(__p, 0, sizeof(__p));
              if (sub_29A197328(&v50))
              {
                if ((v51 & 4) != 0)
                {
                  v30 = (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(&v50);
                }

                else
                {
                  v30 = v50;
                }

                v31 = *(v30 + 16);
                v36 = *v30;
                v37 = v31;
                v32 = *(v30 + 32);
                v38 = v32;
                if (v32)
                {
                  v33 = (v32 - 1);
                  if (*(&v37 + 1))
                  {
                    v33 = *(&v37 + 1);
                  }

                  atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
                }

                sub_29AB8E75C(__p, v36);
                if (v36)
                {
                  v34 = v38;
                  v35 = 32 * v36;
                  do
                  {
                    sub_29A4D0C64(__p, v34);
                    v34 += 2;
                    v35 -= 32;
                  }

                  while (v35);
                }

                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
              }

              a4[1] = &off_2A2084CD0;
              sub_29ACCD154();
            }

            sub_29A186EF4(a4, &v50);
          }

          else
          {
            if (sub_29A3FD314(&v50))
            {
              if ((v51 & 4) != 0)
              {
                v27 = (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(&v50);
              }

              else
              {
                v27 = &v50;
              }

              v28 = *v27;
            }

            else
            {
              v28 = 0;
            }

            a4[1] = &off_2A20821D0 + 1;
            *a4 = v28;
          }
        }

        else
        {
          v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v20)
          {
            v20 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          v21 = *(v20 + 19);
          *&v36 = v21;
          if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *&v36 = v36 & 0xFFFFFFFFFFFFFFF8;
          }

          if (sub_29A1FA710(&v50))
          {
            if ((v51 & 4) != 0)
            {
              v22 = (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(&v50);
            }

            else
            {
              v22 = &v50;
            }

            sub_29A166F2C(&v36, v22);
          }

          v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v23)
          {
            v23 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          v24 = v36;
          v25 = (*(v23 + 19) ^ v36) > 7;
          a4[1] = &off_2A2084C18 + 3;
          *a4 = v25;
          if ((v24 & 7) != 0)
          {
            atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        sub_29A186B14(&v50);
      }

      else
      {
        a4[1] = 0;
      }

      if (v41)
      {
        sub_29A014BEC(v41);
      }

      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_97;
    }
  }

  (*(*v36 + 16))(v15, 0.0);
  if (*(&v36 + 1))
  {
    sub_29A014BEC(*(&v36 + 1));
  }

LABEL_97:
  sub_29ABC3488(v52);
LABEL_98:
  if (v43)
  {
    sub_29A014BEC(v43);
  }

LABEL_100:
  if (v46)
  {
    sub_29A014BEC(v46);
  }

  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v47)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v48, v47);
  }
}

void sub_29ACBFCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  sub_29A186B14(v25 - 128);
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29ABC3488(v25 - 112);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(&a22);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetLightParamValue(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v13);
  v5 = v14;
  if (!v14)
  {
    *(a3 + 8) = 0;
    goto LABEL_18;
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens))
  {
    sub_29ABEE510(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
  }

  (*(*v5 + 24))(&v9, v5);
  sub_29ABC3244(&v9, &v11);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v11)
  {
    (*(*v11 + 24))(&v7);
    sub_29ABE3F04(&v7, &v9);
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    if (v9)
    {
      (*(*v9 + 16))(v9, 0.0);
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      goto LABEL_16;
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  *(a3 + 8) = 0;
LABEL_16:
  if (v12)
  {
    sub_29A014BEC(v12);
  }

LABEL_18:
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACBFFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetImageShaderValue(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetFromParent((a2 + 8), &v23);
  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v23))
  {
    goto LABEL_29;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v7 + 1) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetEnabled(&v23, &v16);
    v8 = v16;
    if (v16)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v9 + 2) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetPriority(&v23, &v16);
    v8 = v16;
    if (v16)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v10 + 3) ^ *a3) > 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    if ((*(v11 + 4) ^ *a3) > 7)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v13)
      {
        v13 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      if ((*(v13 + 5) ^ *a3) > 7)
      {
        goto LABEL_29;
      }

      pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetMaterialNetwork(&v23, &v19);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v19))
      {
        RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 8));
        (*(*RenderDelegate + 296))(v18);
        v15[0] = v19;
        v15[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29ACBEFB4(v15, &v16);
        *(a4 + 8) = &off_2A2084B60;
        sub_29ACCCBF8();
      }

      v12 = v20;
      if (!v20)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetConstants(&v23, &v16);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      v21 = v16;
      v22 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::_ToDictionary(&v21, v18);
      *(a4 + 8) = &off_2A2042030;
      sub_29A187864(a4, v18);
      sub_29A184A10(v18, 0);
      if (v22)
      {
        sub_29A014BEC(v22);
      }

      goto LABEL_17;
    }

LABEL_27:
    v12 = v17;
    if (!v17)
    {
LABEL_29:
      *(a4 + 8) = 0;
      goto LABEL_30;
    }

LABEL_28:
    sub_29A014BEC(v12);
    goto LABEL_29;
  }

  pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetFilePath(&v23, &v16);
  v8 = v16;
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_16:
  (*(*v16 + 16))(v8, 0.0);
LABEL_17:
  if (v17)
  {
    sub_29A014BEC(v17);
  }

LABEL_30:
  if (v24)
  {
    sub_29A014BEC(v24);
  }
}

void sub_29ACC03B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_29ABE8884(&a11);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  a11 = &a18;
  sub_29A124AB0(&a11);
  v20 = *(v18 - 72);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  v21 = *(v18 - 40);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetPrimvarDescriptors(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  sub_29A0ECEEC(&v23, "hd", "virtual HdPrimvarDescriptorVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetPrimvarDescriptors(const SdfPath &, HdInterpolation)");
  v8 = sub_29A42F6CC(a1 + 76, a2);
  v9 = v8;
  if (v8)
  {
    sub_29ABEC66C(v8 + 2, &v21);
    if (v21)
    {
      v10 = (v21 + 24 * a3);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_29ACCD1CC(a4, *v10, v10[1], (v10[1] - *v10) >> 5);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(a1, a2, &v18);
      if (v19)
      {
        pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_ComputePrimvarDescriptors(&v19, &v16);
        v14 = v16;
        v15 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = sub_29AC2C55C(v9 + 2, &v21, &v14);
        if (v15)
        {
          sub_29A014BEC(v15);
        }

        v12 = &v21;
        if (v11)
        {
          v12 = &v16;
        }

        v13 = (*v12 + 24 * a3);
        a4[1] = 0;
        a4[2] = 0;
        *a4 = 0;
        sub_29ACCD1CC(a4, *v13, v13[1], (v13[1] - *v13) >> 5);
        if (v17)
        {
          sub_29A014BEC(v17);
        }
      }

      else
      {
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v24, v23);
  }
}

void sub_29ACC061C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A0E9CEC(v18 - 64);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_ComputePrimvarDescriptors(uint64_t *a1@<X1>, void *a2@<X8>)
{
  if (*a1 || (sub_29B2C7200(v30, a2) & 1) != 0)
  {
    memset(v29, 0, sizeof(v29));
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(a1, &v27);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v27))
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvarNames(&v27, &v25);
      v4 = v25;
      for (i = v26; v4 != i; ++v4)
      {
        pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&v27, v4, &v23);
        if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v23))
        {
          pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetInterpolation(&v23, &v21);
          if (v21)
          {
            (*(*v21 + 32))(&v15, 0.0);
            v7 = sub_29ACC0AD0(&v15);
            pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetRole(&v23, &v16);
            if (v16)
            {
              (*(*v16 + 32))(&v14, 0.0);
              v8 = v14;
            }

            else
            {
              v8 = 0;
            }

            if (v17)
            {
              sub_29A014BEC(v17);
            }

            IsIndexed = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::IsIndexed(&v23);
            v12 = *v4;
            v16 = v12;
            if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v16 &= 0xFFFFFFFFFFFFFFF8;
            }

            LODWORD(v17) = v7;
            v18 = v8;
            if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v18 &= 0xFFFFFFFFFFFFFFF8;
            }

            LOBYTE(v19) = IsIndexed;
            sub_29ACC0C2C(v29 + 24 * v7, &v16);
            if ((v18 & 7) != 0)
            {
              atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v8 & 7) != 0)
            {
              atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v16 = "hd/sceneIndexAdapterSceneDelegate.cpp";
            v17 = "_ComputePrimvarDescriptors";
            v18 = 1795;
            v19 = "std::shared_ptr<HdSceneIndexAdapterSceneDelegate::_PrimCacheEntry::PrimvarDescriptorsArray> pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_ComputePrimvarDescriptors(const HdContainerDataSourceHandle &)";
            v20 = 0;
            v9 = *v4 & 0xFFFFFFFFFFFFFFF8;
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

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v16, "HdSceneIndexAdapterSceneDelegate: Skipping primvar '%s' due to missing interpolation data source", v6, v10);
          }

          if (v22)
          {
            sub_29A014BEC(v22);
          }
        }

        if (v24)
        {
          sub_29A014BEC(v24);
        }
      }

      v16 = &v25;
      sub_29A124AB0(&v16);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }

    sub_29ACCD65C(v29, a2);
    for (j = 120; j != -24; j -= 24)
    {
      v16 = v29 + j;
      sub_29ABEE9FC(&v16);
    }
  }
}

void sub_29ACC09B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, std::__shared_weak_count *a26, char a27)
{
  if (a26)
  {
    sub_29A014BEC(a26);
  }

  for (i = 120; i != -24; i -= 24)
  {
    a25 = (&a27 + i);
    sub_29ABEE9FC(&a25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ACC0AD0(void *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v2 + 6) ^ *a1) < 8)
  {
    return 0;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v4 + 7) ^ *a1) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v5 + 8) ^ *a1) < 8)
  {
    return 2;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v6 + 9) ^ *a1) < 8)
  {
    return 3;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v7 + 10) ^ *a1) < 8)
  {
    return 4;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v8 + 11) ^ *a1) >= 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_29ACC0C2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ACCD3D8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationPrimvarDescriptors(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  sub_29A0ECEEC(&v23, "hd", "virtual HdExtComputationPrimvarDescriptorVector pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::GetExtComputationPrimvarDescriptors(const SdfPath &, HdInterpolation)");
  v8 = sub_29A42F6CC(a1 + 76, a2);
  v9 = v8;
  if (v8)
  {
    sub_29ABEC66C(v8 + 4, &v21);
    if (v21)
    {
      v10 = (v21 + 24 * a3);
      a4->n128_u64[0] = 0;
      a4->n128_u64[1] = 0;
      a4[1].n128_u64[0] = 0;
      sub_29ACCD7C0(a4, *v10, v10[1], (v10[1] - *v10) >> 6);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(a1, a2, &v18);
      if (v19)
      {
        pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_ComputeExtCmpPrimvarDescriptors(&v19, &v16);
        v14 = v16;
        v15 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = sub_29AC2C55C(v9 + 4, &v21, &v14);
        if (v15)
        {
          sub_29A014BEC(v15);
        }

        v12 = &v21;
        if (v11)
        {
          v12 = &v16;
        }

        v13 = (*v12 + 24 * a3);
        a4->n128_u64[1] = 0;
        a4[1].n128_u64[0] = 0;
        a4->n128_u64[0] = 0;
        sub_29ACCD7C0(a4, *v13, v13[1], (v13[1] - *v13) >> 6);
        if (v17)
        {
          sub_29A014BEC(v17);
        }
      }

      else
      {
        a4->n128_u64[0] = 0;
        a4->n128_u64[1] = 0;
        a4[1].n128_u64[0] = 0;
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  else
  {
    a4->n128_u64[0] = 0;
    a4->n128_u64[1] = 0;
    a4[1].n128_u64[0] = 0;
  }

  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v24, v23);
  }
}

void sub_29ACC0E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A0E9CEC(v18 - 64);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_ComputeExtCmpPrimvarDescriptors(uint64_t *a1@<X1>, void *a2@<X8>)
{
  if (*a1 || (sub_29B2C726C(v29, a2) & 1) != 0)
  {
    memset(v28, 0, 144);
    pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetFromParent(a1, &v26);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v26))
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetExtComputationPrimvarNames(&v26, &v24);
      v3 = v24;
      for (i = v25; v3 != i; ++v3)
      {
        pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchema::GetExtComputationPrimvar(&v26, v3, &v22);
        if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v22))
        {
          pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetInterpolation(&v22, &v20);
          if (v20)
          {
            (*(*v20 + 32))(&v19, 0.0);
            v5 = sub_29ACC0AD0(&v19);
            v18 = 0;
            pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetRole(&v22, &v9);
            if (v9.n128_u64[0])
            {
              (*(*v9.n128_u64[0] + 32))(&v14, 0.0);
              if ((v18 & 7) != 0)
              {
                atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v18 = v14;
            }

            if (v9.n128_u64[1])
            {
              sub_29A014BEC(v9.n128_u64[1]);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v16);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17);
            pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputation(&v22, &v9);
            if (v9.n128_u64[0])
            {
              (*(*v9.n128_u64[0] + 32))(&v14, 0.0);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            if (v9.n128_u64[1])
            {
              sub_29A014BEC(v9.n128_u64[1]);
            }

            v15 = 0;
            pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetSourceComputationOutputName(&v22, &v9);
            if (v9.n128_u64[0])
            {
              (*(*v9.n128_u64[0] + 32))(&v14, 0.0);
              if ((v15 & 7) != 0)
              {
                atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v15 = v14;
            }

            if (v9.n128_u64[1])
            {
              sub_29A014BEC(v9.n128_u64[1]);
            }

            pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::GetValueType(&v22, &v9);
            if (v9.n128_u64[0])
            {
              *&v14 = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], 0.0);
              *(&v14 + 1) = v6;
            }

            if (v9.n128_u64[1])
            {
              sub_29A014BEC(v9.n128_u64[1]);
            }

            sub_29ACCA3F8(&v9, v3, v5, &v18, &v16, &v15, &v14);
            sub_29ACC1444(&v28[24 * v5], &v9);
            if ((v13 & 7) != 0)
            {
              atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
            sub_29A1DE3A4(&v11);
            if ((v10 & 7) != 0)
            {
              atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v9.n128_u8[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v9.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
            sub_29A1DE3A4(&v16);
            if ((v18 & 7) != 0)
            {
              atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v19 & 7) != 0)
            {
              atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          if (v21)
          {
            sub_29A014BEC(v21);
          }
        }

        if (v23)
        {
          sub_29A014BEC(v23);
        }
      }

      v9.n128_u64[0] = &v24;
      sub_29A124AB0(&v9);
    }

    if (v27)
    {
      sub_29A014BEC(v27);
    }

    sub_29ACCDCF8(v28, a2);
    for (j = 120; j != -24; j -= 24)
    {
      v9.n128_u64[0] = &v28[j];
      sub_29ABF15A8(&v9);
    }
  }
}

void sub_29ACC12E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, char a33)
{
  if (a32)
  {
    sub_29A014BEC(a32);
  }

  for (i = 120; i != -24; i -= 24)
  {
    a10 = (&a33 + i);
    sub_29ABF15A8(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ACC1444(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ACCDA40(a1, a2);
  }

  else
  {
    sub_29ACCDB50(a1, *(a1 + 8), a2);
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29ACC1490(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 32));
  sub_29A1DE3A4((a1 + 28));
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::Get(pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X2>, uint64_t a4@<X8>)
{
  v85 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v80, "hd", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::Get(const SdfPath &, const TfToken &)");
  pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetInputPrim(this, a2, &v77);
  if (!v78)
  {
LABEL_48:
    *(a4 + 8) = 0;
    goto LABEL_49;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v9)
  {
    v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v9 + 35) ^ v77) <= 7)
  {
    v10 = (*this + 320);
LABEL_10:
    (*v10)(this, a2, a3);
    goto LABEL_49;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v11)
  {
    v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v11 + 17) ^ v77) <= 7)
  {
    v10 = (*this + 328);
    goto LABEL_10;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v12)
  {
    v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v12 + 18) ^ v77) <= 7)
  {
    v13 = v78;
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v14)
    {
      v14 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    (*(*v13 + 24))(&v64, v13, v14 + 144);
    sub_29ABC3244(&v64, &__p);
    if (v65)
    {
      sub_29A014BEC(v65);
    }

    if (!__p.__r_.__value_.__r.__words[0])
    {
      goto LABEL_46;
    }

    (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
    sub_29ABE3F04(&v83, &v64);
    if (v84)
    {
      sub_29A014BEC(v84);
    }

    v15 = v64;
    if (v64)
    {
      goto LABEL_244;
    }

LABEL_44:
    if (v65)
    {
      sub_29A014BEC(v65);
    }

LABEL_46:
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }

    goto LABEL_48;
  }

  if (pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeIsVolumeField(&v77, v8))
  {
    v16 = v78;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens))
    {
      sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    (*(*v16 + 24))(&v64, v16);
    sub_29ABC3244(&v64, &__p);
    if (v65)
    {
      sub_29A014BEC(v65);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
      sub_29ABE3F04(&v83, &v64);
      if (v84)
      {
        sub_29A014BEC(v84);
      }

      v15 = v64;
      if (!v64)
      {
        *(a4 + 8) = 0;
        goto LABEL_84;
      }

LABEL_244:
      (*(*v64 + 16))(v15, 0.0);
LABEL_84:
      if (v65)
      {
        sub_29A014BEC(v65);
      }

      goto LABEL_86;
    }

    *(a4 + 8) = 0;
    goto LABEL_86;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v18)
  {
    v18 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v18 + 39) ^ v77) <= 7)
  {
    v19 = v78;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens))
    {
      sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    (*(*v19 + 24))(&v64, v19);
    sub_29ABC3244(&v64, &__p);
    if (v65)
    {
      sub_29A014BEC(v65);
    }

    if (!__p.__r_.__value_.__r.__words[0])
    {
      goto LABEL_46;
    }

    (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
    sub_29ABE3F04(&v83, &v64);
    if (v84)
    {
      sub_29A014BEC(v84);
    }

    v15 = v64;
    if (v64)
    {
      goto LABEL_244;
    }

    goto LABEL_44;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v21)
  {
    v21 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v22 = v77;
  if ((*(v21 + 40) ^ v77) > 7)
  {
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v25)
    {
      v25 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v25 + 23) ^ v77) > 7)
    {
      v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v29)
      {
        v29 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v29 + 24) ^ v77) > 7)
      {
        v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v32)
        {
          v32 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        if ((*(v32 + 25) ^ v77) > 7)
        {
          v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          if (!v35)
          {
            v35 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
          }

          if ((*(v35 + 26) ^ v77) > 7)
          {
            v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v37)
            {
              v37 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*(v37 + 3) ^ v77) <= 7)
            {
              v38 = v78;
              if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens))
              {
                sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
              }

              (*(*v38 + 24))(&v64, v38);
              sub_29ABC3244(&v64, &__p);
              if (v65)
              {
                sub_29A014BEC(v65);
              }

              if (__p.__r_.__value_.__r.__words[0])
              {
                (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
                sub_29ABE3F04(&v83, &v64);
                if (v84)
                {
                  sub_29A014BEC(v84);
                }

                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__p.__r_.__value_.__l.__size_);
              }
            }

            v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v40)
            {
              v40 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*(v40 + 14) ^ v77) <= 7)
            {
              v41 = v78;
              if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens))
              {
                sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
              }

              (*(*v41 + 24))(&v64, v41);
              sub_29ABC3244(&v64, &__p);
              if (v65)
              {
                sub_29A014BEC(v65);
              }

              if (__p.__r_.__value_.__r.__words[0])
              {
                (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
                sub_29ABE3F04(&v83, &v64);
                if (v84)
                {
                  sub_29A014BEC(v84);
                }

                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__p.__r_.__value_.__l.__size_);
              }
            }

            v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v43)
            {
              v43 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*(v43 + 4) ^ v77) <= 7)
            {
              v44 = v78;
              if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens))
              {
                sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
              }

              (*(*v44 + 24))(&v64, v44);
              sub_29ABC3244(&v64, &__p);
              if (v65)
              {
                sub_29A014BEC(v65);
              }

              if (__p.__r_.__value_.__r.__words[0])
              {
                (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
                sub_29ABE3F04(&v83, &v64);
                if (v84)
                {
                  sub_29A014BEC(v84);
                }

                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__p.__r_.__value_.__l.__size_);
              }
            }

            v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v46)
            {
              v46 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*(v46 + 2) ^ v77) <= 7)
            {
              v47 = v78;
              if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens))
              {
                sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
              }

              (*(*v47 + 24))(&v64, v47);
              sub_29ABC3244(&v64, &__p);
              if (v65)
              {
                sub_29A014BEC(v65);
              }

              if (__p.__r_.__value_.__r.__words[0])
              {
                (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
                sub_29ABE3F04(&v83, &v64);
                if (v84)
                {
                  sub_29A014BEC(v84);
                }

                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__p.__r_.__value_.__l.__size_);
              }
            }

            v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v49)
            {
              v49 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*v49 ^ v77) <= 7)
            {
              v50 = v78;
              if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens))
              {
                sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
              }

              (*(*v50 + 24))(&v64, v50);
              sub_29ABC3244(&v64, &__p);
              if (v65)
              {
                sub_29A014BEC(v65);
              }

              if (__p.__r_.__value_.__r.__words[0])
              {
                (*(*__p.__r_.__value_.__l.__data_ + 24))(&v83);
                sub_29ABE3F04(&v83, &v64);
                if (v84)
                {
                  sub_29A014BEC(v84);
                }

                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__p.__r_.__value_.__l.__size_);
              }
            }

            v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            if (!v52)
            {
              v52 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
            }

            if ((*(v52 + 20) ^ v77) <= 7)
            {
              if ((atomic_load_explicit(&qword_2A174B9B0, memory_order_acquire) & 1) == 0)
              {
                v59 = __cxa_guard_acquire(&qword_2A174B9B0);
                if (v59)
                {
                  v83 = *pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetSchemaToken(v59);
                  if ((v83 & 7) != 0 && (atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v83 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
                  if (!v60)
                  {
                    v60 = sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
                  }

                  v61 = *(v60 + 1);
                  v84 = v61;
                  if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v84 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  v64 = 0;
                  v65 = 0;
                  v66 = 0;
                  sub_29A12EF7C(&v64, &v83, &v85, 2uLL);
                  pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(&v64, &__p);
                  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A174B9A8);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  v82 = &v64;
                  sub_29A124AB0(&v82);
                  for (i = 8; i != -8; i -= 8)
                  {
                    v63 = *(&v83 + i);
                    if ((v63 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }
                  }

                  __cxa_atexit(sub_29A424A8C, &qword_2A174B9A8, &dword_299FE7000);
                  __cxa_guard_release(&qword_2A174B9B0);
                }
              }

              if ((qword_2A174B9A8 ^ *a3) <= 7)
              {
                pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetFromParent(&v78, &v64);
                pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetName(&v64, &__p);
                if (v65)
                {
                  sub_29A014BEC(v65);
                }

                if (__p.__r_.__value_.__r.__words[0])
                {
                  (*(*__p.__r_.__value_.__l.__data_ + 16))(__p.__r_.__value_.__r.__words[0], 0.0);
                  goto LABEL_86;
                }

                if (__p.__r_.__value_.__l.__size_)
                {
                  sub_29A014BEC(__p.__r_.__value_.__l.__size_);
                }
              }
            }

            pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(&v78, &__p);
            if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&__p))
            {
              pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&__p, &v64);
              pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetPrimvar(&v64, a3, 0, a4);
              if (v65)
              {
                sub_29A014BEC(v65);
              }

              if (*(a4 + 8))
              {
                goto LABEL_86;
              }

              sub_29A186B14(a4);
            }

            if (__p.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(__p.__r_.__value_.__l.__size_);
            }

            pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetFromParent(&v78, &__p);
            if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&__p))
            {
              v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v53)
              {
                v53 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }

              if ((*(v53 + 55) ^ *a3) <= 7)
              {
                pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetParameters(&__p, &v64);
                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }

              v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v54)
              {
                v54 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }

              if ((*(v54 + 12) ^ *a3) <= 7)
              {
                pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetCollection(&__p, &v64);
                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }

              v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v55)
              {
                v55 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }

              if ((*(v55 + 70) ^ *a3) <= 7)
              {
                pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchema::GetRenderTags(&__p, &v64);
                v15 = v64;
                if (v64)
                {
                  goto LABEL_244;
                }

                if (v65)
                {
                  sub_29A014BEC(v65);
                }
              }
            }

            if (__p.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(__p.__r_.__value_.__l.__size_);
            }

            v56 = v78;
            if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens))
            {
              sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
            }

            (*(*v56 + 24))(&v64, v56);
            sub_29AC3C124(&v64, &__p);
            if (v65)
            {
              sub_29A014BEC(v65);
            }

            if (!__p.__r_.__value_.__r.__words[0])
            {
              goto LABEL_46;
            }

            v58 = (*(*__p.__r_.__value_.__l.__data_ + 32))(__p.__r_.__value_.__r.__words[0], 0.0);
            if (!v58)
            {
              goto LABEL_46;
            }

            (*(*v58 + 120))(v58, a2, a3);
LABEL_86:
            if (__p.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(__p.__r_.__value_.__l.__size_);
            }

            goto LABEL_49;
          }

          v68[0] = v77;
          if ((v77 & 7) != 0)
          {
            v36 = v77 & 0xFFFFFFFFFFFFFFF8;
            if ((atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v68[0] = v36;
            }
          }

          v68[1] = v78;
          v69 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::HdSceneIndexAdapterSceneDelegate::_GetImageShaderValue(this, v68, a3, a4);
          if (v69)
          {
            sub_29A014BEC(v69);
          }

          v28 = v68[0];
        }

        else
        {
          v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
          if (!v33)
          {
            v33 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
          }

          if ((*(v33 + 1) ^ *a3) > 7)
          {
            goto LABEL_48;
          }

          v70[0] = v77;
          if ((v77 & 7) != 0)
          {
            v34 = v77 & 0xFFFFFFFFFFFFFFF8;
            if ((atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v70[0] = v34;
            }
          }

          v70[1] = v78;
          v71 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29ACC4088(v70, a4);
          if (v71)
          {
            sub_29A014BEC(v71);
          }

          v28 = v70[0];
        }
      }

      else
      {
        v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
        if (!v30)
        {
          v30 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
        }

        if ((*(v30 + 1) ^ *a3) > 7)
        {
          goto LABEL_48;
        }

        v72[0] = v77;
        if ((v77 & 7) != 0)
        {
          v31 = v77 & 0xFFFFFFFFFFFFFFF8;
          if ((atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v72[0] = v31;
          }
        }

        v72[1] = v78;
        v73 = v79;
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29ACC3E54(v72, a4);
        if (v73)
        {
          sub_29A014BEC(v73);
        }

        v28 = v72[0];
      }
    }

    else
    {
      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
      if (!v26)
      {
        v26 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
      }

      if ((*(v26 + 1) ^ *a3) > 7)
      {
        goto LABEL_48;
      }

      v74[0] = v77;
      if ((v77 & 7) != 0)
      {
        v27 = v77 & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v74[0] = v27;
        }
      }

      v74[1] = v78;
      v75 = v79;
      if (v79)
      {
        atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29ACC3C20(v74, a4);
      if (v75)
      {
        sub_29A014BEC(v75);
      }

      v28 = v74[0];
    }

    if ((v28 & 7) == 0)
    {
      goto LABEL_49;
    }

    v24 = (v28 & 0xFFFFFFFFFFFFFFF8);
LABEL_129:
    atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_release);
    goto LABEL_49;
  }

  v76[0] = v77;
  if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76[0] = v22 & 0xFFFFFFFFFFFFFFF8;
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v79;
  v76[1] = v78;
  v76[2] = v79;
  if (v79)
  {
    atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29ACC2AD8(v76, a3, a4);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if ((v22 & 7) != 0)
  {
    v24 = (v22 & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_129;
  }

LABEL_49:
  if (v79)
  {
    sub_29A014BEC(v79);
  }

  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v80)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v81, v80);
  }
}

void sub_29ACC2884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 88);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174B9B0);
  v32 = *(v29 - 120);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v33 = *(v29 - 136);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v29 - 112);
  _Unwind_Resume(a1);
}

void sub_29ACC2AD8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens))
  {
    sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  (*(*v5 + 24))(&v46, v5);
  sub_29ABC3244(&v46, &v42);
  if (v47)
  {
    sub_29A014BEC(v47);
  }

  v7 = v42;
  v8 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v40 = v7;
    v41 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v8);
    sub_29A014BEC(v8);
  }

  else
  {
    v40 = v42;
    v41 = 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v40))
  {
    goto LABEL_188;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v9)
  {
    v9 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*(v9 + 1) ^ *a2) <= 7)
  {
    v67 = 0;
    pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetNamespacedSettings(&v40, &v46);
    if (v46)
    {
      pxrInternal__aapl__pxrReserved__::_ToDictionary(&v46, &v61);
      *(a3 + 8) = &off_2A2042030;
      sub_29A187864(a3, &v61);
      sub_29A184A10(&v61, 0);
      if (v47)
      {
        sub_29A014BEC(v47);
      }

      sub_29A184A10(&v67, 0);
      goto LABEL_189;
    }

    if (v47)
    {
      sub_29A014BEC(v47);
    }

    sub_29A184A10(&v67, 0);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v10)
  {
    v10 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*v10 ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetActive(&v40, &v46);
    if (v46)
    {
      v11 = (*(*v46 + 4))(v46, 0.0);
      *(a3 + 8) = &unk_2A20443C3;
      *a3 = v11;
      goto LABEL_24;
    }

    if (v47)
    {
      sub_29A014BEC(v47);
    }
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v13)
  {
    v13 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*(v13 + 2) ^ *a2) > 7)
  {
LABEL_155:
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v26)
    {
      v26 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v26 + 3) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetIncludedPurposes(&v40, &v67);
      if (v67)
      {
        (*(*v67 + 32))(&v46, 0.0);
        *(a3 + 8) = off_2A2047A80;
        sub_29A18ECC8(a3, &v46);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }

      if (v68)
      {
        sub_29A014BEC(v68);
      }
    }

    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v27)
    {
      v27 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v27 + 4) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetMaterialBindingPurposes(&v40, &v67);
      if (v67)
      {
        (*(*v67 + 32))(&v46, 0.0);
        *(a3 + 8) = off_2A2047A80;
        sub_29A18ECC8(a3, &v46);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }

      if (v68)
      {
        sub_29A014BEC(v68);
      }
    }

    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v28)
    {
      v28 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v28 + 5) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderingColorSpace(&v40, &v46);
      if (v46)
      {
        (*(*v46 + 4))(&v67, 0.0);
        v29 = v67;
        *a3 = v67;
        *(a3 + 8) = &off_2A2044E88 + 1;
        if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *a3 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v67 & 7) != 0)
        {
          atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_24:
        v12 = v47;
        if (!v47)
        {
          goto LABEL_189;
        }

LABEL_167:
        sub_29A014BEC(v12);
        goto LABEL_189;
      }

      if (v47)
      {
        sub_29A014BEC(v47);
      }
    }

    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v30)
    {
      v30 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v30 + 6) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetShutterInterval(&v40, &v46);
      if (v46)
      {
        v31 = (*(*v46 + 4))(v46, 0.0);
        v33 = v32;
        *(a3 + 8) = &off_2A20426D0 + 2;
        v34 = operator new(0x18uLL);
        *v34 = v31;
        *(v34 + 1) = v33;
        atomic_store(0, v34 + 4);
        *a3 = v34;
        atomic_fetch_add_explicit(v34 + 4, 1u, memory_order_relaxed);
        goto LABEL_24;
      }

      if (v47)
      {
        sub_29A014BEC(v47);
      }
    }

LABEL_188:
    *(a3 + 8) = 0;
    goto LABEL_189;
  }

  pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProducts(&v40, &v38);
  if (!pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v38))
  {
    if (v39)
    {
      sub_29A014BEC(v39);
    }

    goto LABEL_155;
  }

  v35 = v38;
  v36 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NumElements = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v35);
  memset(v37, 0, sizeof(v37));
  sub_29ACCA484(v37, NumElements);
  if (NumElements)
  {
    for (i = 0; i != NumElements; ++i)
    {
      sub_29AC0DDFC(&v35, &v57);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v57))
      {
        v44 = v57;
        v45 = v58;
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v46);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v46 + 1);
        memset(v48, 0, sizeof(v48));
        v47 = 0u;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v49);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v50);
        v51 = 0;
        v52 = 0;
        v53 = xmmword_29B480F70;
        v56 = 0;
        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetPath(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetType(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          if ((v47 & 7) != 0)
          {
            atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *&v47 = v61;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetName(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          if ((BYTE8(v47) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(&v47 + 1) = v61;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetResolution(&v44, &v67);
        if (v67)
        {
          v48[0] = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetRenderVars(&v44, &v63);
        if (pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v63))
        {
          v59 = v63;
          v60 = v64;
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v59);
          v61 = 0uLL;
          v62 = 0;
          sub_29ACCA870(&v61, v16);
          if (v16)
          {
            for (j = 0; j != v16; ++j)
            {
              sub_29AC0DDFC(&v59, &v71);
              if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v71))
              {
                v65 = v71;
                v66 = v72;
                if (v72)
                {
                  atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v67);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v67 + 1);
                v70 = 0u;
                v69 = 0u;
                v68 = 0u;
                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetPath(&v65, &v74);
                if (v74)
                {
                  (*(*v74 + 32))(&v73, 0.0);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetDataType(&v65, &v74);
                if (v74)
                {
                  (*(*v74 + 32))(&v73, 0.0);
                  if ((v68 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  *&v68 = v73;
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetSourceName(&v65, &v74);
                if (v74)
                {
                  v18 = (*(*v74 + 32))(&v73, 0.0);
                  v19 = (v73 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((v73 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
                  std::string::operator=((&v68 + 8), v19);
                  if ((v73 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetSourceType(&v65, &v74);
                if (v74)
                {
                  (*(*v74 + 32))(&v73, 0.0);
                  if ((v70 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  *&v70 = v73;
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::GetNamespacedSettings(&v65, &v74);
                if (v74)
                {
                  pxrInternal__aapl__pxrReserved__::_ToDictionary(&v74, &v73);
                  v20 = v73;
                  v73 = 0;
                  sub_29A184A10(&v70 + 1, v20);
                  sub_29A184A10(&v73, 0);
                }

                if (v75)
                {
                  sub_29A014BEC(v75);
                }

                sub_29ACCA958(&v61, &v67);
                sub_29A184A10(&v70 + 1, 0);
                if ((v70 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (SHIBYTE(v69) < 0)
                {
                  operator delete(*(&v68 + 1));
                }

                if ((v68 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v67 + 1);
                sub_29A1DE3A4(&v67);
                if (v66)
                {
                  sub_29A014BEC(v66);
                }
              }

              if (v72)
              {
                sub_29A014BEC(v72);
              }
            }
          }

          sub_29AC98530(&v48[1]);
          *&v48[1] = v61;
          v48[3] = v62;
          v62 = 0;
          v61 = 0uLL;
          v67 = &v61;
          sub_29AC97ABC(&v67);
          if (v60)
          {
            sub_29A014BEC(v60);
          }
        }

        if (v64)
        {
          sub_29A014BEC(v64);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetCameraPrim(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetPixelAspectRatio(&v44, &v67);
        if (v67)
        {
          v50[1] = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetAspectRatioConformPolicy(&v44, &v67);
        if (v67)
        {
          (*(*v67 + 32))(&v61, 0.0);
          if ((v51 & 7) != 0)
          {
            atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v51 = v61;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetApertureSize(&v44, &v67);
        if (v67)
        {
          LODWORD(v52) = (*(*v67 + 32))(v67, 0.0);
          HIDWORD(v52) = v21;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDataWindowNDC(&v44, &v67);
        if (v67)
        {
          LODWORD(v53) = (*(*v67 + 32))(v67, 0.0);
          *(&v53 + 4) = __PAIR64__(v23, v22);
          HIDWORD(v53) = v24;
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDisableMotionBlur(&v44, &v67);
        if (v67)
        {
          v54 = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDisableDepthOfField(&v44, &v67);
        if (v67)
        {
          v55 = (*(*v67 + 32))(v67, 0.0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetNamespacedSettings(&v44, &v67);
        if (v67)
        {
          pxrInternal__aapl__pxrReserved__::_ToDictionary(&v67, &v61);
          v25 = v61;
          *&v61 = 0;
          sub_29A184A10(&v56, v25);
          sub_29A184A10(&v61, 0);
        }

        if (v68)
        {
          sub_29A014BEC(v68);
        }

        sub_29ACCA560(v37, &v46);
        sub_29AC97A08(&v46);
        if (v45)
        {
          sub_29A014BEC(v45);
        }
      }

      if (v58)
      {
        sub_29A014BEC(v58);
      }
    }
  }

  *(a3 + 8) = &off_2A2084A30;
  sub_29ACCB0C8(a3, v37);
  v46 = v37;
  sub_29AC97984(&v46);
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  v12 = v39;
  if (v39)
  {
    goto LABEL_167;
  }

LABEL_189:
  if (v41)
  {
    sub_29A014BEC(v41);
  }

  if (v43)
  {
    sub_29A014BEC(v43);
  }
}