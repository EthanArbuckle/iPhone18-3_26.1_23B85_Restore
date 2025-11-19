void sub_29A4D1F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  operator delete[](v14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4D1F78(uint64_t a1, uint64_t a2)
{
  __src = (*(a2 + 8) - *a2) >> 4;
  sub_29A4E5264(a1, &__src);
  return sub_29A4F78C0(a1, *a2, (*(a2 + 8) - *a2) >> 4);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WriteFieldSets(void *a1, uint64_t a2)
{
  if (((*(a1[817] + 256) << 16) | (*(a1[817] + 257) << 8)) > 0x3FFu)
  {
    sub_29A01112C(&__p, (a1[10] - a1[9]) >> 2);
    v4 = a1[9];
    v5 = a1[10];
    v6 = __p;
    if (v4 != v5)
    {
      v7 = __p;
      do
      {
        v8 = *v4++;
        *v7++ = v8;
      }

      while (v4 != v5);
    }

    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(((v14 - v6) >> 2));
    v10 = operator new[](CompressedBufferSize);
    __src = (v14 - __p) >> 2;
    sub_29A4E5264(a2, &__src);
    v12 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(__p, (v14 - __p) >> 2, v10, v11);
    __src = v12;
    sub_29A4E5264(a2, &__src);
    sub_29A4D0BB8(a2, v10, v12);
    operator delete[](v10);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  else
  {

    sub_29A4D2138(a2, (a1 + 9));
  }
}

void sub_29A4D2108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  operator delete[](v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4D2138(uint64_t a1, uint64_t a2)
{
  __src = (*(a2 + 8) - *a2) >> 2;
  sub_29A4E5264(a1, &__src);
  return sub_29A4F6CF0(a1, *a2, (*(a2 + 8) - *a2) >> 2);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WritePaths(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a1, uint64_t a2)
{
  *&v15 = (*(a1 + 13) - *(a1 + 12)) >> 3;
  sub_29A4E5264(a2, &v15);
  v4 = *(a1 + 817);
  if (((*(v4 + 256) << 16) | (*(v4 + 257) << 8)) > 0x3FFu)
  {
    v15 = 0uLL;
    *&v16 = 0;
    sub_29A4D28A8(&v15, (*(a1 + 13) - *(a1 + 12)) >> 3);
    v7 = *(a1 + 12);
    for (i = *(a1 + 13); v7 != i; v7 += 2)
    {
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v7))
      {
        v9 = *(a1 + 817);
        v18 = v7;
        v10 = sub_29A4E4F44(v9 + 80, v7, &unk_29B4D6118, &v18);
        v11 = *(&v15 + 1);
        if (*(&v15 + 1) >= v16)
        {
          v12 = sub_29A4F87A0(&v15, v7, v10 + 6);
        }

        else
        {
          sub_29A1E21F4(*(&v15 + 1), v7);
          sub_29A1E2240((v11 + 4), v7 + 1);
          *(v11 + 8) = *(v10 + 6);
          v12 = v11 + 12;
        }

        *(&v15 + 1) = v12;
      }
    }

    v13 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v15 + 1) - v15) >> 2));
    if (*(&v15 + 1) == v15)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_29A4F88E4(v15, *(&v15 + 1), v14, 1);
    sub_29A4D2984(a1, a2, &v15);
    v19 = &v15;
    sub_29A4F84FC(&v19);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    for (j = *(v4 + 96); j; j = *j)
    {
      *sub_29A4D23AC(&v15, j + 4) = *(j + 6);
    }

    v6 = sub_29A4D27C0(&v15);
    sub_29A4D243C(a1, a2, v6, 0);
    sub_29A4D280C(&v15);
    sub_29A4F7968(&v15);
  }
}

void sub_29A4D2374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a9;
  sub_29A4F84FC(&a16);
  _Unwind_Resume(a1);
}

char *sub_29A4D23AC(void *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(v7, a2 + 1);
  v7[1] = -1;
  v4 = sub_29A4F7A6C(a1, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7);
  sub_29A1DE3A4(&v6);
  return v4 + 8;
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A4D243C(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v4 = a4;
  v40 = a3;
  for (i = a3; i != v4; v40 = i)
  {
    v7 = sub_29A4F7F68(&v40);
    v8 = *(i + 3);
    if (!v8)
    {
      v8 = sub_29A4F7F68(&i);
    }

    i = v8;
    if (v8 == v7)
    {
      v11 = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v8, &__src);
      v9 = __src;
      v10 = *v40;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__src + 1);
      v11 = v9 == v10;
      sub_29A1DE3A4(&__src);
    }

    if (v7 == v4)
    {
      v12 = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v7, &__src);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v40, &v39);
      v12 = __src == v39;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v39 + 1);
      sub_29A1DE3A4(&v39);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__src + 1);
      sub_29A1DE3A4(&__src);
    }

    IsPrimPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(v40);
    if (IsPrimPropertyPath)
    {
      v14 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v40);
      v39 = v14;
      if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v39 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetElementToken(v40, &v39);
    }

    if (((*(*(a1 + 817) + 256) << 16) | (*(*(a1 + 817) + 257) << 8) | *(*(a1 + 817) + 258)) == 1)
    {
      v15 = *(v40 + 2);
      IndexForToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetIndexForToken(a1, &v39);
      if (v12)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 | v11;
      if (IsPrimPropertyPath)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      HIDWORD(__src) = v15;
      v37 = IndexForToken;
      v38 = v18 | v19;
      sub_29A4F7FA4(a2, &__src);
    }

    else
    {
      v20 = *(v40 + 2);
      v21 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetIndexForToken(a1, &v39);
      if (v12)
      {
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 | v11;
      if (IsPrimPropertyPath)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      __src = __PAIR64__(v21, v20);
      LOBYTE(v37) = v23 | v24;
      sub_29A4F8048(a2, &__src);
    }

    v25 = v12 && v11;
    if (v12 && v11)
    {
      v26 = *(*(a2 + 8) + 16);
      __src = -1;
      sub_29A4E5264(a2, &__src);
      if (!v11)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v26 = -1;
      if (!v11)
      {
LABEL_32:
        if (!v25)
        {
          goto LABEL_44;
        }

        goto LABEL_36;
      }
    }

    i = sub_29A4D243C(a1, a2, i, v4);
    if (!v25)
    {
      goto LABEL_44;
    }

LABEL_36:
    v27 = *(a2 + 8);
    v28 = v27 + 2;
    __src = v27[2];
    v30 = v27 + 4;
    v29 = v27[4];
    if (v29 > v26 || v27[6] + v29 < v26)
    {
      sub_29A4DE434(v27);
      *v28 = v26;
      v28 = v30;
    }

    *v28 = v26;
    sub_29A4E5264(a2, &__src);
    v31 = __src;
    v32 = *(a2 + 8);
    v34 = v32 + 4;
    v33 = v32[4];
    if (v33 <= __src && v32[6] + v33 >= __src)
    {
      v34 = v32 + 2;
    }

    else
    {
      sub_29A4DE434(*(a2 + 8));
      v32[2] = v31;
    }

    *v34 = v31;
LABEL_44:
    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!v12)
    {
      return i;
    }
  }

  return v4;
}

void sub_29A4D2778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4D27C0(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  if (!*(a1 + 3))
  {
    return 0;
  }

  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  return sub_29A4F7F00(a1, v2);
}

uint64_t *sub_29A4D280C(__int128 *a1)
{
  v8 = 0uLL;
  v9 = 0;
  v10 = 0;
  v4 = 0uLL;
  v11 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_29A4F818C(&v4, a1);
  sub_29A4F818C(a1, &v8);
  v2 = sub_29A4F7968(&v8);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v2) & 1) == 0)
  {
    sub_29A4F80EC(&v4);
  }

  return sub_29A4F7968(&v4);
}

void **sub_29A4D28A8(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A379A50(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[12 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29A4F85C4(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A4F8724(&v12);
  }

  return result;
}

void sub_29A4D2970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4F8724(va);
  _Unwind_Resume(a1);
}

void sub_29A4D2984(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath **a3)
{
  __src = (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  sub_29A4E5264(a2, &__src);
  __src = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_29A0A171C(&__src, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  sub_29A0A171C(&v18, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  sub_29A0A171C(&__p, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  v14 = 0;
  sub_29A4F99E8(a1, &v14, *a3, a3[1], &__src, &v18, &__p);
  CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize((0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2)));
  v7 = operator new[](CompressedBufferSize);
  v9 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(__src, (v22 - __src) >> 2, v7, v8);
  v24 = v9;
  sub_29A4E5264(a2, &v24);
  sub_29A4D0BB8(a2, v7, v9);
  v11 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v18, (v19 - v18) >> 2, v7, v10);
  v24 = v11;
  sub_29A4E5264(a2, &v24);
  sub_29A4D0BB8(a2, v7, v11);
  v13 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(__p, (v16 - __p) >> 2, v7, v12);
  v24 = v13;
  sub_29A4E5264(a2, &v24);
  sub_29A4D0BB8(a2, v7, v13);
  operator delete[](v7);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (__src)
  {
    v22 = __src;
    operator delete(__src);
  }
}

void sub_29A4D2B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WriteSpecs(uint64_t **a1, uint64_t a2)
{
  v4 = a1[817];
  v5 = (v4[256] << 16) | (v4[257] << 8);
  if ((v5 | v4[258]) == 1)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 2);
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_29A4F9C8C(&__p, v6, v7, v8);
    sub_29A4D1F78(a2, &__p);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  else if (v5 > 0x3FF)
  {
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize((0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2)));
    v10 = operator new[](CompressedBufferSize);
    sub_29A01112C(&__p, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
    __src = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
    sub_29A4E5264(a2, &__src);
    v12 = *a1;
    v13 = a1[1];
    v14 = __p;
    if (*a1 != v13)
    {
      v15 = __p;
      do
      {
        v16 = *v12;
        v12 = (v12 + 12);
        *v15++ = v16;
      }

      while (v12 != v13);
    }

    v17 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v14, (v31 - v14) >> 2, v10, v11);
    __src = v17;
    sub_29A4E5264(a2, &__src);
    sub_29A4D0BB8(a2, v10, v17);
    v19 = *a1;
    v20 = a1[1];
    v21 = __p;
    if (*a1 != v20)
    {
      v22 = __p;
      do
      {
        *v22++ = *(v19 + 1);
        v19 = (v19 + 12);
      }

      while (v19 != v20);
    }

    v23 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v21, (v31 - v21) >> 2, v10, v18);
    __src = v23;
    sub_29A4E5264(a2, &__src);
    sub_29A4D0BB8(a2, v10, v23);
    v25 = *a1;
    v26 = a1[1];
    v27 = __p;
    if (*a1 != v26)
    {
      v28 = __p;
      do
      {
        *v28++ = *(v25 + 2);
        v25 = (v25 + 12);
      }

      while (v25 != v26);
    }

    v29 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v27, (v31 - v27) >> 2, v10, v24);
    __src = v29;
    sub_29A4E5264(a2, &__src);
    sub_29A4D0BB8(a2, v10, v29);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    operator delete[](v10);
  }

  else
  {

    sub_29A4D2E80(a2, a1);
  }
}

void sub_29A4D2E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete[](v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4D2E80(uint64_t a1, uint64_t a2)
{
  __src = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2);
  sub_29A4E5264(a1, &__src);
  return sub_29A4F9D0C(a1, *a2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int *a6, uint64_t a7)
{
  v8 = a5;
  v34 = a7 + 272;
  while (1)
  {
    if (v8 >= (a2[1] - *a2) >> 2)
    {
      *&v36 = "usd/crateFile.cpp";
      *(&v36 + 1) = "_BuildDecompressedPathsImpl";
      *&v37 = 4541;
      *(&v37 + 1) = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(const vector<uint32_t> &, const vector<int32_t> &, const vector<int32_t> &, size_t, SdfPath, WorkDispatcher &)";
      LOBYTE(v38) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 3, "Corrupt paths encoding in crate file (index:%zu >= %zu)");
      return;
    }

    v13 = *(*a2 + 4 * v8);
    if (v13 >= (a1[13] - a1[12]) >> 3)
    {
      sub_29B2AA7C0(v8, v13, a3, a4, a5, a6);
      return;
    }

    v14 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a6);
    if (v14)
    {
      break;
    }

    v19 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v14);
    sub_29A2258F0(a6, v19);
    sub_29A225948(a6 + 1, v19 + 1);
    v20 = atomic_load(&qword_2A1742118);
    if (!v20)
    {
      v20 = sub_29A181B8C(&qword_2A1742118);
    }

    std::mutex::lock(v20);
    v21 = (a1[12] + 8 * *(*a2 + 4 * v8));
    sub_29A2258F0(v21, a6);
    sub_29A225948(v21 + 1, a6 + 1);
    std::mutex::unlock(v20);
LABEL_19:
    if (v8 >= (a4[1] - *a4) >> 2)
    {
      sub_29B2AA860();
      return;
    }

    v24 = *(*a4 + 4 * v8);
    v25 = v24 > 0;
    if (v24 > 0)
    {
      if (v8 + v24 >= (a2[1] - *a2) >> 2)
      {
        *&v36 = "usd/crateFile.cpp";
        *(&v36 + 1) = "_BuildDecompressedPathsImpl";
        *&v37 = 4596;
        *(&v37 + 1) = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(const vector<uint32_t> &, const vector<int32_t> &, const vector<int32_t> &, size_t, SdfPath, WorkDispatcher &)";
        LOBYTE(v38) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 3, "Corrupt paths jumps table in crate file (jump:%d + thisIndex:%zu >= %zu)");
        return;
      }

      *&v36 = a1;
      *(&v36 + 1) = a2;
      *&v37 = a3;
      *(&v37 + 1) = a4;
      *&v38 = v8 + v24;
      *(&v38 + 1) = a7;
      sub_29A1E21F4(&v39, a6);
      sub_29A1E2240(&v40, a6 + 1);
      v26 = *(a7 + 256);
      v41[0] = 0;
      v41[1] = v26;
      v27 = tbb::internal::allocate_additional_child_of_proxy::allocate(v41, 0x48uLL);
      *(v27 - 11) = 1;
      *v27 = &unk_2A2052650;
      v28 = v36;
      v29 = v37;
      *(v27 + 40) = v38;
      *(v27 + 24) = v29;
      *(v27 + 8) = v28;
      sub_29A1DDD84((v27 + 56), &v39);
      sub_29A1DDDC0((v27 + 60), &v40);
      *(v27 + 64) = v34;
      (***(v27 - 40))();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40);
      sub_29A1DE3A4(&v39);
LABEL_23:
      v30 = atomic_load(&qword_2A1742118);
      if (!v30)
      {
        v30 = sub_29A181B8C(&qword_2A1742118);
      }

      std::mutex::lock(v30);
      v31 = (a1[12] + 8 * *(*a2 + 4 * v8));
      sub_29A2258F0(a6, v31);
      sub_29A225948(a6 + 1, v31 + 1);
      std::mutex::unlock(v30);
      v32 = 1;
      goto LABEL_28;
    }

    v33 = v24 == 0;
    if (v24 == -1)
    {
      goto LABEL_23;
    }

    v32 = 0;
    v25 = v33;
LABEL_28:
    ++v8;
    if (!v25 && (v32 & 1) == 0)
    {
      return;
    }
  }

  if (v8 >= (a3[1] - *a3) >> 2)
  {
    sub_29B2AA814();
    return;
  }

  v15 = *(*a3 + 4 * v8);
  if (v15 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = -v15;
  }

  v17 = a1[15];
  if (v16 < (a1[16] - v17) >> 3)
  {
    v18 = (v17 + 8 * v16);
    if (v15 < 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a6, v18, &v36);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a6, v18, &v36);
    }

    v22 = atomic_load(&qword_2A1742118);
    if (!v22)
    {
      v22 = sub_29A181B8C(&qword_2A1742118);
    }

    std::mutex::lock(v22);
    v23 = (a1[12] + 8 * *(*a2 + 4 * v8));
    sub_29A2258F0(v23, &v36);
    sub_29A225948(v23 + 1, &v36 + 1);
    std::mutex::unlock(v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36 + 1);
    sub_29A1DE3A4(&v36);
    goto LABEL_19;
  }

  *&v36 = "usd/crateFile.cpp";
  *(&v36 + 1) = "_BuildDecompressedPathsImpl";
  *&v37 = 4562;
  *(&v37 + 1) = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(const vector<uint32_t> &, const vector<int32_t> &, const vector<int32_t> &, size_t, SdfPath, WorkDispatcher &)";
  LOBYTE(v38) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 3, "Failed to read _tokens, tokenIndex out of bounds");
}

void sub_29A4D3350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4D337C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadRawBytes(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this, uint64_t a2, char *a3, __sFILE *a4)
{
  if (*(this + 6752) == 1)
  {
    v8 = *(this + 843);
    v14 = (this + 6656);
    v15 = v8;
    v16 = sub_29A4CCA14();
    v13 = *(*(this + 832) + 24) + a2;
    sub_29A4F76C0(&v13, a4, a3);
  }

  else
  {
    v9 = *(this + 833);
    if (v9)
    {
      v10 = *(this + 834) + a2;

      pxrInternal__aapl__pxrReserved__::ArchPRead(v9, a4, a3, v10);
    }

    else
    {
      v11 = *(this + 837);
      v12 = *(this + 838);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = v11;
        v14 = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = 0;
        sub_29A014BEC(v12);
      }

      else
      {
        v13 = *(this + 837);
        v14 = 0;
        v15 = 0;
      }

      v15 = a2;
      sub_29A4E5308(&v13, a4, a3);
      if (v14)
      {
        sub_29A014BEC(v14);
      }
    }
  }
}

void sub_29A4D34F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4D3508(uint64_t a1, __sFILE *a2, char *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 32), a2, a3, *(a1 + 16) + *(a1 + 8));
  if (v4 != -1)
  {
    *(a1 + 16) += v4;
  }

  return v4 != -1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetIndexForToken(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = sub_29A160470(*(this + 817), a2);
  if (v2 || (sub_29B2AA8AC(v4) & 1) != 0)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 817);
  LODWORD(v8) = -1;
  v4 = sub_29A4FAA84(v3 + 40, a2, a2, &v8);
  v5 = v4;
  if (v6)
  {
    *(v4 + 10) = (*(a1 + 19) - *(a1 + 18)) >> 2;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8);
    v9 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(a1, &v8);
    sub_29A486024(a1 + 144, &v9);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return *(v5 + 10);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (BYTE6(a2) - 60 > 0xFFFFFFC4)
  {
    if (*(a1 + 6752) == 1)
    {
      v3 = a1 + 32 * BYTE6(a2) + 2216;
    }

    else
    {
      v4 = a1 + 32 * BYTE6(a2);
      v5 = v4 + 4136;
      v6 = v4 + 296;
      if (*(a1 + 6664))
      {
        v3 = v6;
      }

      else
      {
        v3 = v5;
      }
    }

    sub_29A4D3810(v3, a2, a3);
  }

  else
  {
    v7[0] = "usd/crateFile.cpp";
    v7[1] = "_UnpackValue";
    v7[2] = 4862;
    v7[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(ValueRep, VtValue *) const";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Attempted to unpack unsupported type enum value %d", BYTE6(a2));
  }
}

uint64_t sub_29A4D3810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::GetTypeid(uint64_t a1, uint64_t a2)
{
  result = &unk_2A2042020;
  switch(BYTE6(a2))
  {
    case 1:
      v3 = MEMORY[0x29EDC94A8];
      v4 = &unk_2A2042410;
      goto LABEL_58;
    case 2:
      v3 = MEMORY[0x29EDC94C8];
      v4 = &unk_2A2042440;
      goto LABEL_58;
    case 3:
      v3 = MEMORY[0x29EDC94D0];
      v4 = &unk_2A2042488;
      goto LABEL_58;
    case 4:
      v3 = MEMORY[0x29EDC94D8];
      v4 = &unk_2A20424A0;
      goto LABEL_58;
    case 5:
      v3 = MEMORY[0x29EDC9508];
      v4 = &unk_2A20424B8;
      goto LABEL_58;
    case 6:
      v3 = MEMORY[0x29EDC9510];
      v4 = &unk_2A20424D0;
      goto LABEL_58;
    case 7:
      v3 = &unk_2A2040768;
      v4 = &unk_2A2042518;
      goto LABEL_58;
    case 8:
      v3 = MEMORY[0x29EDC94C0];
      v4 = &unk_2A2042500;
      goto LABEL_58;
    case 9:
      v3 = MEMORY[0x29EDC94B8];
      v4 = &unk_2A20424E8;
      goto LABEL_58;
    case 0xA:
      v3 = &unk_2A203B0F8;
      v4 = &unk_2A2042530;
      goto LABEL_58;
    case 0xB:
      v3 = &unk_2A2040480;
      v4 = &unk_2A2042548;
      goto LABEL_58;
    case 0xC:
      v3 = &unk_2A2047388;
      v4 = &unk_2A2047398;
      goto LABEL_58;
    case 0xD:
      v3 = &unk_2A20407C8;
      v4 = &unk_2A2042290;
      goto LABEL_58;
    case 0xE:
      v3 = &unk_2A20407F8;
      v4 = &unk_2A2042278;
      goto LABEL_58;
    case 0xF:
      v3 = &unk_2A2040818;
      v4 = &unk_2A2042260;
      goto LABEL_58;
    case 0x10:
      v3 = &unk_2A2040848;
      v4 = &unk_2A2042398;
      goto LABEL_58;
    case 0x11:
      v3 = &unk_2A2040858;
      v4 = &unk_2A2042380;
      goto LABEL_58;
    case 0x12:
      v3 = &unk_2A2040868;
      v4 = &unk_2A2042368;
      goto LABEL_58;
    case 0x13:
      v3 = &unk_2A2040948;
      v4 = &unk_2A2042200;
      goto LABEL_58;
    case 0x14:
      v3 = &unk_2A2040958;
      v4 = &unk_2A20421B8;
      goto LABEL_58;
    case 0x15:
      v3 = &unk_2A2040968;
      v4 = &unk_2A2042170;
      goto LABEL_58;
    case 0x16:
      v3 = &unk_2A2040978;
      v4 = &unk_2A2042128;
      goto LABEL_58;
    case 0x17:
      v3 = &unk_2A2040988;
      v4 = &unk_2A20421E8;
      goto LABEL_58;
    case 0x18:
      v3 = &unk_2A2040998;
      v4 = &unk_2A20421A0;
      goto LABEL_58;
    case 0x19:
      v3 = &unk_2A20409A8;
      v4 = &unk_2A2042158;
      goto LABEL_58;
    case 0x1A:
      v3 = &unk_2A20409B8;
      v4 = &unk_2A2042110;
      goto LABEL_58;
    case 0x1B:
      v3 = &unk_2A20409C8;
      v4 = &unk_2A20421D0;
      goto LABEL_58;
    case 0x1C:
      v3 = &unk_2A20409D8;
      v4 = &unk_2A2042188;
      goto LABEL_58;
    case 0x1D:
      v3 = &unk_2A20409E8;
      v4 = &unk_2A2042140;
      goto LABEL_58;
    case 0x1E:
      v3 = &unk_2A20409F8;
      v4 = &unk_2A20420F8;
      goto LABEL_58;
    case 0x1F:
      return result;
    case 0x20:
      return &unk_2A2047318;
    case 0x21:
      return &unk_2A2047308;
    case 0x22:
      return &unk_2A2046F90;
    case 0x23:
      return &unk_2A20472B8;
    case 0x24:
      return &unk_2A20472C8;
    case 0x25:
      return &unk_2A20472D8;
    case 0x26:
      return &unk_2A20472E8;
    case 0x27:
      return &unk_2A20472F8;
    case 0x28:
      return &unk_2A2048EF0;
    case 0x29:
      return &unk_2A2040490;
    case 0x2A:
      return &unk_2A2049940;
    case 0x2B:
      return &unk_2A2048D60;
    case 0x2C:
      return &unk_2A20495A8;
    case 0x2D:
      return &unk_2A2049428;
    case 0x2E:
      return &unk_2A2051A10;
    case 0x2F:
      return &unk_2A204C558;
    case 0x30:
      return &unk_2A20405A0;
    case 0x31:
      return &unk_2A2046CD8;
    case 0x32:
      return &unk_2A20405B0;
    case 0x33:
      return &unk_2A2048EE0;
    case 0x34:
      return &unk_2A2044F40;
    case 0x35:
      return &unk_2A2047328;
    case 0x36:
      return &unk_2A2047338;
    case 0x37:
      return &unk_2A20472A8;
    case 0x38:
      v3 = &unk_2A20478E8;
      v4 = &unk_2A20479B0;
      goto LABEL_58;
    case 0x39:
      v3 = &unk_2A20473B0;
      v4 = &unk_2A20473C0;
LABEL_58:
      if (a2 >= 0)
      {
        result = v3;
      }

      else
      {
        result = v4;
      }

      break;
    case 0x3A:
      result = &unk_2A2049138;
      break;
    case 0x3B:
      result = &unk_2A2045250;
      break;
    default:
      result = MEMORY[0x29EDC9500];
      break;
  }

  return result;
}

uint64_t sub_29A4D3D58(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[758] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC94A8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2052698;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2052728;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 41);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20527B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 281);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2052838;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 521);
  return sub_29A4E5688(&v7);
}

void sub_29A4D3EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D3F18(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[759] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC94C8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20528B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2052938;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 45);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20529B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 285);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2052A38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 525);
  return sub_29A4E5688(&v7);
}

void sub_29A4D40B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D40D8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[760] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2052AB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2052B38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 49);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2052BB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 289);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2052C38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 529);
  return sub_29A4E5688(&v7);
}

void sub_29A4D4274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D4298(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[761] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC94D8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2052CB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2052D38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 53);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2052DB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 293);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2052E38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 533);
  return sub_29A4E5688(&v7);
}

void sub_29A4D4434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D4458(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[762] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC9508] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2052EB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2052F38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 57);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2052FB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 297);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053038;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 537);
  return sub_29A4E5688(&v7);
}

void sub_29A4D45F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D4618(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[763] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC9510] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20530B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053138;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 61);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20531B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 301);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053238;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 541);
  return sub_29A4E5688(&v7);
}

void sub_29A4D47B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D47D8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[764] = v2;
  sub_29A008E78(__p, (0x800000029B4858B0 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20532B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053338;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 65);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20533B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 305);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053438;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 545);
  return sub_29A4E5688(&v7);
}

void sub_29A4D4978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D499C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[765] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC94C0] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20534B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053538;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 69);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20535B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 309);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053638;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 549);
  return sub_29A4E5688(&v7);
}

void sub_29A4D4B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D4B5C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[766] = v2;
  sub_29A008E78(__p, (*(MEMORY[0x29EDC94B8] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20536B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053738;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 73);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20537B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 313);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053838;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 553);
  return sub_29A4E5688(&v7);
}

void sub_29A4D4CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D4D1C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[767] = v2;
  sub_29A008E78(__p, (0x800000029B4C54E8 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20538B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053938;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 77);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20539B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 317);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053A38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 557);
  return sub_29A4E5688(&v7);
}

void sub_29A4D4EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D4EE0(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[768] = v2;
  sub_29A008E78(__p, (0x800000029B48B3C4 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2053AB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053B38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 81);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053BB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 321);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053C38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 561);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D50A4(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[769] = v2;
  sub_29A008E78(__p, (0x800000029B484676 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2053CB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053D38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 85);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053DB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 325);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053E38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 565);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D5268(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[773] = v2;
  sub_29A008E78(__p, (0x800000029B6EBD6ELL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2053EB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2053F38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 101);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2053FB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 341);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054038;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 581);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D542C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[774] = v2;
  sub_29A008E78(__p, (0x800000029B6EBD3ELL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20540B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054138;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 105);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20541B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 345);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054238;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 585);
  return sub_29A4E5688(&v7);
}

void sub_29A4D55CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D55F0(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[775] = v2;
  sub_29A008E78(__p, (0x800000029B6EBD0ELL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20542B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054338;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 109);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20543B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 349);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054438;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 589);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D57B4(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[776] = v2;
  sub_29A008E78(__p, (0x800000029B4C5C4ALL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20544B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054538;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 113);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20545B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 353);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054638;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 593);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D5978(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[777] = v2;
  sub_29A008E78(__p, (0x800000029B4C5A90 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20546B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054738;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 117);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20547B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 357);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054838;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 597);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D5B3C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[778] = v2;
  sub_29A008E78(__p, (0x800000029B705508 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20548B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054938;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 121);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20549B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 361);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054A38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 601);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D5D00(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[779] = v2;
  sub_29A008E78(__p, (0x800000029B704E38 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2054AB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054B38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 125);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054BB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 365);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054C38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 605);
  return sub_29A4E5688(&v7);
}

void sub_29A4D5EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D5EC4(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[780] = v2;
  sub_29A008E78(__p, (0x800000029B4C5C7ALL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2054CB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054D38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 129);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054DB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 369);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054E38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 609);
  return sub_29A4E5688(&v7);
}

void sub_29A4D6064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D6088(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[781] = v2;
  sub_29A008E78(__p, (0x800000029B4C5E78 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2054EB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2054F38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 133);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2054FB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 373);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055038;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 613);
  return sub_29A4E5688(&v7);
}

void sub_29A4D6228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D624C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[782] = v2;
  sub_29A008E78(__p, (0x800000029B4C5FCCLL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20550B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055138;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 137);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20551B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 377);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055238;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 617);
  return sub_29A4E5688(&v7);
}

void sub_29A4D63EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D6410(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[783] = v2;
  sub_29A008E78(__p, (0x800000029B704BE4 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20552B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055338;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 141);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20553B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 381);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055438;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 621);
  return sub_29A4E5688(&v7);
}

void sub_29A4D65B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D65D4(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[784] = v2;
  sub_29A008E78(__p, (0x800000029B6EBCDELL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20554B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055538;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 145);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20555B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 385);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055638;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 625);
  return sub_29A4E5688(&v7);
}

void sub_29A4D6774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D6798(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[785] = v2;
  sub_29A008E78(__p, (0x800000029B4DAD90 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20556B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055738;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 149);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20557B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 389);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055838;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 629);
  return sub_29A4E5688(&v7);
}

void sub_29A4D6938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D695C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[786] = v2;
  sub_29A008E78(__p, (0x800000029B70508CLL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20558B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055938;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 153);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20559B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 393);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055A38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 633);
  return sub_29A4E5688(&v7);
}

void sub_29A4D6AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D6B20(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[787] = v2;
  sub_29A008E78(__p, (0x800000029B704990 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2055AB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055B38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 157);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055BB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 397);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055C38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 637);
  return sub_29A4E5688(&v7);
}

void sub_29A4D6CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D6CE4(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[770] = v2;
  sub_29A008E78(__p, (0x800000029B47CEE0 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2055CB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055D38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 89);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055DB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 329);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055E38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 569);
  return sub_29A4E5688(&v7);
}

void sub_29A4D6E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D6EA8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[771] = v2;
  sub_29A008E78(__p, (0x800000029B4E166ALL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2055EB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2055F38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 93);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2055FB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 333);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056038;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 573);
  return sub_29A4E5688(&v7);
}

void sub_29A4D7048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D706C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[772] = v2;
  sub_29A008E78(__p, (0x800000029B7194FCLL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20560B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056138;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 97);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20561B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 337);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056238;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 577);
  return sub_29A4E5688(&v7);
}

void sub_29A4D720C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D7230(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[788] = v2;
  sub_29A008E78(__p, (0x800000029B4C5D74 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20562B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056338;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 161);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20563B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 401);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056438;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 641);
  return sub_29A4E5688(&v7);
}

void sub_29A4D73D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D73F4(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[789] = v2;
  sub_29A008E78(__p, (0x800000029B48A348 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20564B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056538;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 165);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20565B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 405);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056638;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 645);
  return sub_29A4E5688(&v7);
}

void sub_29A4D7594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D75B8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[790] = v2;
  sub_29A008E78(__p, (0x800000029B48A38ALL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20566B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056738;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 169);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20567B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 409);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056838;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 649);
  return sub_29A4E5688(&v7);
}

void sub_29A4D7758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D777C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[791] = v2;
  sub_29A008E78(__p, (0x800000029B4857D6 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20568B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056938;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 173);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20569B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 413);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056A38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 653);
  return sub_29A4E5688(&v7);
}

void sub_29A4D791C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D7940(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[792] = v2;
  sub_29A008E78(__p, (0x800000029B48C5B0 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2056AB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056B38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 177);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056BB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 417);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056C38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 657);
  return sub_29A4E5688(&v7);
}

void sub_29A4D7AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D7B04(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[793] = v2;
  sub_29A008E78(__p, (0x800000029B48444FLL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2056CB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056D38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 181);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056DB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 421);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056E38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 661);
  return sub_29A4E5688(&v7);
}

void sub_29A4D7CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D7CC8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[794] = v2;
  sub_29A008E78(__p, (0x800000029B484481 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2056EB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2056F38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 185);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2056FB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 425);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057038;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 665);
  return sub_29A4E5688(&v7);
}

void sub_29A4D7E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D7E8C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[795] = v2;
  sub_29A008E78(__p, (0x800000029B4844B3 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20570B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057138;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 189);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20571B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 429);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057238;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 669);
  return sub_29A4E5688(&v7);
}

void sub_29A4D802C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D8050(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[796] = v2;
  sub_29A008E78(__p, (0x800000029B4844E5 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20572B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057338;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 193);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20573B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 433);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057438;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 673);
  return sub_29A4E5688(&v7);
}

void sub_29A4D81F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D8214(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[797] = v2;
  sub_29A008E78(__p, (0x800000029B4855AFLL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20574B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057538;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 197);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20575B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 437);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057638;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 677);
  return sub_29A4E5688(&v7);
}

void sub_29A4D83B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D83D8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[798] = v2;
  sub_29A008E78(__p, (0x800000029B4856D0 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20576B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057738;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 201);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20577B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 441);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057838;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 681);
  return sub_29A4E5688(&v7);
}

void sub_29A4D8578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D859C(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[799] = v2;
  sub_29A008E78(__p, (0x800000029B485F65 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20578B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057938;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 205);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20579B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 445);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057A38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 685);
  return sub_29A4E5688(&v7);
}

void sub_29A4D873C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D8760(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[800] = v2;
  sub_29A008E78(__p, (0x800000029B48554ELL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2057AB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057B38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 209);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057BB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 449);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057C38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 689);
  return sub_29A4E5688(&v7);
}

void sub_29A4D8900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D8924(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[801] = v2;
  sub_29A008E78(__p, (0x800000029B4D68A2 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2057CB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057D38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 213);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057DB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 453);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057E38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 693);
  return sub_29A4E5688(&v7);
}

void sub_29A4D8AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D8AE8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[802] = v2;
  sub_29A008E78(__p, (0x800000029B485763 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2057EB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2057F38;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 217);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2057FB8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 457);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058038;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 697);
  return sub_29A4E5688(&v7);
}

void sub_29A4D8C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D8CAC(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[803] = v2;
  sub_29A008E78(__p, (0x800000029B497921 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20580B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2058138;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 221);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20581B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 461);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058238;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 701);
  return sub_29A4E5688(&v7);
}

void sub_29A4D8E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D8E70(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[804] = v2;
  sub_29A008E78(__p, (0x800000029B48CC82 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20582B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2058338;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 225);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20583B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 465);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058438;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 705);
  return sub_29A4E5688(&v7);
}

void sub_29A4D9010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D9034(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[805] = v2;
  sub_29A008E78(__p, (0x800000029B43C2EFLL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A20584B8;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2058538;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 229);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058670;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 469);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20586F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 709);
  return sub_29A4E5688(&v7);
}

void sub_29A4D91D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D91F8(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[806] = v2;
  sub_29A008E78(__p, (0x800000029B483DF0 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2058770;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A20587F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 233);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058870;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 473);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20588F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 713);
  return sub_29A4E5688(&v7);
}

void sub_29A4D9398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D93BC(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[807] = v2;
  sub_29A008E78(__p, (0x800000029B43C313 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2058970;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A20589F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 237);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058A70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 477);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058AF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 717);
  return sub_29A4E5688(&v7);
}

void sub_29A4D955C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D9580(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[808] = v2;
  sub_29A008E78(__p, (0x800000029B4D9210 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2058B70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2058BF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 241);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058C70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 481);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058CF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 721);
  return sub_29A4E5688(&v7);
}

void sub_29A4D9720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D9744(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[809] = v2;
  sub_29A008E78(__p, (0x800000029B4812A2 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2058D70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2058DF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 245);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058E70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 485);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2058EF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 725);
  return sub_29A4E5688(&v7);
}

void sub_29A4D98E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D9908(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[810] = v2;
  sub_29A008E78(__p, (0x800000029B484517 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2058F70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2058FF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 249);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059070;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 489);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20590F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 729);
  return sub_29A4E5688(&v7);
}

void sub_29A4D9AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D9ACC(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[811] = v2;
  sub_29A008E78(__p, (0x800000029B484552 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2059170;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A20591F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 253);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059270;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 493);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20592F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 733);
  return sub_29A4E5688(&v7);
}

void sub_29A4D9C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D9C90(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[812] = v2;
  sub_29A008E78(__p, (0x800000029B485722 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2059370;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A20593F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 257);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059470;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 497);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20594F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 737);
  return sub_29A4E5688(&v7);
}

void sub_29A4D9E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4D9E54(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[813] = v2;
  sub_29A008E78(__p, (0x800000029B485816 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2059570;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A20595F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 261);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059670;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 501);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20596F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 741);
  return sub_29A4E5688(&v7);
}

void sub_29A4D9FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DA018(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[814] = v2;
  sub_29A008E78(__p, (0x800000029B4846EALL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2059770;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A20597F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 265);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059870;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 505);
  sub_29A4E5688(&v7);
  v7 = &unk_2A20598F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 745);
  return sub_29A4E5688(&v7);
}

void sub_29A4DA1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DA1DC(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[815] = v2;
  sub_29A008E78(__p, (0x800000029B48566ELL & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2059970;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A20599F0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 269);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059A70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 509);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059AF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 749);
  return sub_29A4E5688(&v7);
}

void sub_29A4DA37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DA3A0(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x10uLL);
  *v2 = 0;
  v2[1] = 0;
  a1[816] = v2;
  sub_29A008E78(__p, (0x800000029B481625 & 0x7FFFFFFFFFFFFFFFLL));
  v7 = __p;
  v3 = sub_29A4FAE7C(a1 + 27, __p, &unk_29B4D6118, &v7);
  v7 = &unk_2A2059B70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FB420(&v7, (v3 + 32));
  sub_29A4DAD34(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &unk_2A2059BF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 273);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059C70;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 513);
  sub_29A4E5688(&v7);
  v7 = &unk_2A2059CF0;
  v8 = a1;
  v9 = v2;
  v10 = &v7;
  sub_29A4FC3C0(&v7, a1 + 753);
  return sub_29A4E5688(&v7);
}

void sub_29A4DA544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_IsKnownSection(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this, const char *a2)
{
  v3 = 0;
  do
  {
    v4 = strcmp((&off_29F2959F8)[v3], this);
    if (!v4)
    {
      break;
    }

    v5 = v3 == 10;
    v3 += 2;
  }

  while (!v5);
  return v4 == 0;
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyField(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  if ((atomic_load_explicit(&qword_2A1742318, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AA8F8();
  }

  return &unk_2A1742340;
}

uint64_t *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  if ((atomic_load_explicit(&qword_2A1742320, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AA950();
  }

  return &qword_2A1742350;
}

uint64_t *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  if ((atomic_load_explicit(&qword_2A1742330, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AA9C8();
  }

  return &qword_2A1742328;
}

double pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Spec::Spec(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  result = *(a2 + 4);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

{
  v2 = *(a2 + 12);
  result = *(a2 + 4);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

double pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Spec_0_0_1::Spec_0_0_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  result = *a2;
  *(a1 + 4) = *a2;
  *(a1 + 12) = v2;
  return result;
}

{
  v2 = *(a2 + 8);
  result = *a2;
  *(a1 + 4) = *a2;
  *(a1 + 12) = v2;
  return result;
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section::_Section(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section *this, const char *__s, uint64_t a3, uint64_t a4)
{
  *(this + 2) = a3;
  *(this + 3) = a4;
  *this = 0;
  *(this + 1) = 0;
  if (strlen(__s) < 0x10 || (sub_29B2AAA3C(v7) & 1) != 0)
  {
    strcpy(this, __s);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::operator<<(void *a1, uint64_t a2)
{
  v4 = sub_29A00911C(a1, "ValueRep enum=", 14);
  MEMORY[0x29C2C1ED0](v4, BYTE6(a2));
  if (a2 < 0)
  {
    sub_29A00911C(a1, " (array)", 8);
  }

  sub_29A00911C(a1, " payload=", 9);

  JUMPOUT(0x29C2C1F40);
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::operator<<(void *a1, uint64_t a2)
{
  v3 = sub_29A00911C(a1, "TimeSamples with ", 17);
  v4 = MEMORY[0x29C2C1F00](v3, (*(*(a2 + 8) + 8) - **(a2 + 8)) >> 3);

  return sub_29A00911C(v4, " samples", 8);
}

uint64_t sub_29A4DA884(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29A4DA8B8(a1 + 16, v3);
  return a1;
}

uint64_t sub_29A4DA8B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = *v3;
  *v3 = 0;
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
      tbb::internal::deallocate_via_handler_v3(v5, a2);
    }

    while (v4);
    v3 = *(a1 + 16);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  tbb::internal::deallocate_via_handler_v3(v3, a2);
  return a1;
}

atomic_ullong **sub_29A4DA910(atomic_ullong **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(0x258uLL);
  v9 = sub_29A4DA970(v8, a2, a3, a4);
  *a1 = v9;
  atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  return a1;
}

void *sub_29A4DA970(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v5 + a3;
  if (a4 == -1)
  {
    v7 = v6;
  }

  else
  {
    v7 = a4;
  }

  a1[4] = v7;
  sub_29A4DA9F0((a1 + 5), 8uLL, &v9);
  return a1;
}

uint64_t sub_29A4DA9F0(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x38);
  v5[6] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

void sub_29A4DAB48(void **a1, void *a2)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A4DA884(v2 + 40, a2);
    sub_29A0D8AA8(v2 + 8, 0);

    operator delete(v2);
  }
}

void **sub_29A4DABB4(void **a1)
{
  sub_29A4CABC8(a1);
  sub_29A4DAB48(a1, v2);
  return a1;
}

void sub_29A4DABE8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A4DAC3C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A4DAC3C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 64;
    do
    {
      if (*(v4 + 4) != -1)
      {
        sub_29A4DACE4(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 64;
    }

    while (!v5);
  }

  a1[1] = v3;
}

uint64_t sub_29A4DACA4(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A4DACE4(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

void sub_29A4DACE4(uint64_t a1)
{
  sub_29A4DAD34(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t sub_29A4DAD34(uint64_t a1)
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

unint64_t sub_29A4DADB4()
{
  v0 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_MMAP_PREFETCH_KB);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  v1 = *v0;
  v2 = sub_29A4CA1A0() + (v1 << 10) - 1;
  v3 = (sub_29A4DAE4C() & v2) >> 10;
  if (v1 != v3)
  {
    fprintf(*MEMORY[0x29EDCA610], "Rounded USDC_MMAP_PREFETCH_KB value %d to %d", v1, v3);
  }

  return v3;
}

uint64_t sub_29A4DAE4C()
{
  if ((atomic_load_explicit(&qword_2A1742148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742148))
  {
    qword_2A1742140 = ~(sub_29A4CA1A0() - 1);
    __cxa_guard_release(&qword_2A1742148);
  }

  return qword_2A1742140;
}

uint64_t sub_29A4DAEC8(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v27[9] = *MEMORY[0x29EDCA608];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 192) = 1065353216;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 232), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 248) = *(a4 + 2);
    *(a1 + 232) = v7;
  }

  if ((*(a2 + 6743) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 6728))
    {
      goto LABEL_6;
    }
  }

  else if (*(a2 + 6743))
  {
LABEL_6:
    LOBYTE(v8) = *(a2 + 6578);
    *(a1 + 256) = *(a2 + 6576);
    goto LABEL_9;
  }

  v9 = sub_29A4DB478();
  *(a1 + 256) = v9;
  v8 = HIWORD(v9);
LABEL_9:
  *(a1 + 258) = v8;
  sub_29A4DB510(a1 + 264, *a3);
  *(a1 + 752) = *a3;
  *a3 = 0u;
  *(a1 + 792) = 0;
  *(a1 + 776) = 0u;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v25);
  v23 = 0;
  v24 = v26;
  v10 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v23, 0x20uLL);
  *(v10 - 11) = 1;
  *v10 = &unk_2A2051DA8;
  v10[1] = a1;
  v10[2] = a2;
  v10[3] = v27;
  (***(v10 - 5))();
  v23 = 0;
  v24 = v26;
  v11 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v23, 0x20uLL);
  *(v11 - 11) = 1;
  *v11 = &unk_2A2051DF0;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = v27;
  (***(v11 - 5))();
  v23 = 0;
  v24 = v26;
  v12 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v23, 0x20uLL);
  *(v12 - 11) = 1;
  *v12 = &unk_2A2051E38;
  v12[1] = a1;
  v12[2] = a2;
  v12[3] = v27;
  (***(v12 - 5))();
  v23 = 0;
  v24 = v26;
  v13 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v23, 0x20uLL);
  *(v13 - 11) = 1;
  *v13 = &unk_2A2051E80;
  v13[1] = a1;
  v13[2] = a2 + 72;
  v13[3] = v27;
  (***(v13 - 5))();
  v23 = 0;
  v24 = v26;
  v14 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v23, 0x20uLL);
  *(v14 - 11) = 1;
  *v14 = &unk_2A2051EC8;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = v27;
  (***(v14 - 5))();
  v23 = 0;
  v24 = v26;
  v15 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v23, 0x20uLL);
  *(v15 - 11) = 1;
  *v15 = &unk_2A2051F10;
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = v27;
  (***(v15 - 5))();
  v16 = *(a2 + 6544);
  v17 = *(a2 + 6552);
  if (v16 != v17)
  {
    for (i = v16 + 32; i != v17; i += 32)
    {
      if (*(i + 16) < *(v16 + 16))
      {
        v16 = i;
      }
    }
  }

  if (v16 == v17)
  {
    v19 = 88;
  }

  else
  {
    v19 = *(v16 + 16);
  }

  v20 = *(a1 + 296);
  if (v20 <= v19 && *(a1 + 312) + v20 >= v19)
  {
    v21 = (a1 + 280);
  }

  else
  {
    sub_29A4DE434(a1 + 264);
    v21 = (a1 + 296);
    *(a1 + 280) = v19;
  }

  *v21 = v19;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v25);
  return a1;
}

void sub_29A4DB3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A4DE7C0(va);
  sub_29A4DE848(v7);
  sub_29A0EB570(v6);
  sub_29A4DE8D0(v5);
  sub_29A0EB4E8(v4);
  sub_29A155EF4(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DB478()
{
  if ((atomic_load_explicit(&qword_2A1742338, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AAA88();
  }

  return word_2A1742310 | (byte_2A1742312 << 16);
}

void *sub_29A4DB4BC(void *a1)
{
  sub_29A4DC550((a1 + 56));
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher((a1 + 13));
  sub_29A4DC5D0(a1 + 10);
  sub_29A4DC728(a1 + 7);
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

uint64_t sub_29A4DB510(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = operator new[](0x80000uLL);
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2A2051BE0;
  v4 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v3);
  *(a1 + 64) = v4;
  bzero(v4, 0x2C0uLL);
  *(*(a1 + 64) + 256) = vdupq_n_s64(0x10uLL);
  *(a1 + 56) = &unk_2A2051B70;
  *(a1 + 80) = &unk_2A2051C90;
  v6 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v5);
  *(a1 + 88) = v6;
  bzero(v6, 0x2C0uLL);
  *(*(a1 + 88) + 256) = xmmword_29B497AA0;
  *(a1 + 80) = &unk_2A2051C20;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher((a1 + 104));
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A2051CD0;
  v7[1] = a1 + 104;
  v7[2] = a1;
  *(a1 + 472) = v7;
  *(a1 + 480) = 0;
  v8 = 7;
  do
  {
    __p[0] = operator new[](0x80000uLL);
    __p[1] = 0;
    v9 = *(a1 + 64);
    add = atomic_fetch_add((v9 + 128), 1uLL);
    sub_29A17282C((v9 + 40 * ((3 * add) & 7) + 384), __p, add, (a1 + 56), sub_29A4DC540);
    v11 = __p[0];
    __p[0] = 0;
    if (v11)
    {
      operator delete[](v11);
    }

    --v8;
  }

  while (v8);
  return a1;
}

void sub_29A4DB6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v12);
  sub_29A4DC5D0(v11);
  sub_29A4DC728(v10);
  v14 = *(v9 + 40);
  *(v9 + 40) = 0;
  if (v14)
  {
    operator delete[](v14);
  }

  _Unwind_Resume(a1);
}

void sub_29A4DB75C(void *a1)
{
  v1 = sub_29A4DC728(a1);

  operator delete(v1);
}

uint64_t sub_29A4DB7E4(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

void sub_29A4DB82C(void *a1)
{
  v1 = sub_29A4DC5D0(a1);

  operator delete(v1);
}

uint64_t sub_29A4DB8BC(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

__n128 sub_29A4DB90C(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2051CD0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A4DB960(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2051CD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4DB9A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2051D88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A4DB9EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 256);
  v8[0] = 0;
  v8[1] = v5;
  v6 = tbb::internal::allocate_additional_child_of_proxy::allocate(v8, 0x20uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A2051D50;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v4 + 272;
  return (***(v6 - 5))();
}

uint64_t sub_29A4DBAB0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v11);
  v2 = *(a1 + 8);
  v3 = atomic_load(*(a1 + 16));
  sub_29A4DBB9C(*(v2 + 8));
  v4 = v3;
  atomic_compare_exchange_strong(*(a1 + 16), &v4, 0);
  if (v4 != v3)
  {
    do
    {
      sub_29A4DBB9C(*(v2 + 8));
      v5 = v4;
      atomic_compare_exchange_strong(*(a1 + 16), &v5, 0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v8 = v11;
  v9 = atomic_load((v7 + 144));
  if (v8 < v9 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v11, v7))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v11, *(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v11);
  return 0;
}

void sub_29A4DBB84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4DBB9C(uint64_t a1)
{
  v14 = 0;
  v15 = 0;
  for (__src = operator new[](0x80000uLL); sub_29A4DBF20(a1 + 80, &__src); sub_29A17282C((v6 + 40 * ((3 * add) & 7) + 384), &__src, add, (a1 + 56), sub_29A4DC540))
  {
    if (*a1 == 1)
    {
      v2 = *(a1 + 24);
      v4 = __src;
      v3 = v14;
      v5 = v15;
      pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v23);
      if ((*(*v2 + 24))(v2, v4, v3, v5) != v3)
      {
        memset(&v22, 0, sizeof(v22));
        if (!sub_29A4CC99C(&v23))
        {
          v16 = 0;
          __dst = 0;
          v18 = 0;
          v8 = sub_29A0FE7E0(&v23, 0);
          if (v8 != sub_29A11477C())
          {
            sub_29A070BA0(&v16);
          }

          MEMORY[0x29C2C1A60](&v22, ": ");
          pxrInternal__aapl__pxrReserved__::TfStringJoin("; ", &v16, &__p);
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

          std::string::append(&v22, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p.__r_.__value_.__r.__words[0] = &v16;
          sub_29A012C90(&__p);
        }

        v16 = "usd/crateFile.cpp";
        __dst = "WriteToAsset";
        v18 = 183;
        v19 = "int64_t pxrInternal__aapl__pxrReserved__::WriteToAsset(ArWritableAsset *, const void *, int64_t, int64_t)";
        v20 = 0;
        v11 = &v22;
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = v22.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed writing usdc data%s", v11);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }

      pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v23);
    }

    else if (v14 >= 1)
    {
      __dst = 0;
      v18 = 0;
      v19 = 0;
      sub_29A1B2C78(&__dst, v14);
      LODWORD(v16) = v15;
      memcpy(__dst, __src, v14);
      sub_29A4DBEE0(*(a1 + 8), &v16);
      if (__dst)
      {
        v18 = __dst;
        operator delete(__dst);
      }
    }

    v14 = 0;
    v6 = *(a1 + 64);
    add = atomic_fetch_add((v6 + 128), 1uLL);
  }

  v12 = __src;
  __src = 0;
  if (v12)
  {
    operator delete[](v12);
  }
}

void sub_29A4DBE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  a18 = &a13;
  sub_29A012C90(&a18);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark((v29 - 88));
  if (a10)
  {
    operator delete[](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4DBEE0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A4DC1C4(a1, a2);
  }

  else
  {
    sub_29A4DC16C(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

BOOL sub_29A4DBF20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    v7 = v6 - v5;
    v8 = v7 > 0;
LABEL_3:
    if (v7 < 1)
    {
      return 0;
    }

    while (1)
    {
      v9 = v5;
      atomic_compare_exchange_strong(v4, &v9, v5 + 1);
      if (v9 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        v11 = v4[16];
        __dmb(0xBu);
        v7 = v11 - add_explicit;
        v5 = add_explicit;
        goto LABEL_3;
      }
    }

    if (sub_29A4DBFE0(&v4[5 * ((3 * v5) & 7) + 48], a2, v5, a1))
    {
      return v8;
    }
  }
}

BOOL sub_29A4DBFE0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFF8;
  v9 = a1[1];
  __dmb(0xBu);
  if (v9 != (a3 & 0xFFFFFFFFFFFFFFF8))
  {
    while (1)
    {
      v12 = a1[1];
      __dmb(0xBu);
      if (v12 == v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v10 = a1[3];
  __dmb(0xBu);
  if (v10 == v8)
  {
    while (1)
    {
      v11 = a1[3];
      __dmb(0xBu);
      if (v11 != v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v13 = *a1;
  __dmb(0xBu);
  v14 = *(a4 + 8);
  v15 = *(v14 + 256) - 1;
  v16 = v15 & (a3 >> 3);
  if (v16 == v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v20[0] = v8 + 8;
  v20[1] = a1;
  v20[2] = v17;
  v20[3] = a4;
  v18 = *(v13 + 8) & (1 << v16);
  if (v18)
  {
    sub_29A4DC0FC(a1, a2, v13, v16);
  }

  else
  {
    atomic_fetch_add((v14 + 272), 0xFFFFFFFFFFFFFFFFLL);
  }

  sub_29A172748(v20);
  return v18 != 0;
}

void sub_29A4DC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 24 * a4;
  v7 = *(v5 + 16);
  v6 = v5 + 16;
  *v6 = 0;
  v8 = *a2;
  *a2 = v7;
  if (v8)
  {
    operator delete[](v8);
  }

  *(a2 + 8) = *(v6 + 8);
  v9 = *v6;
  *v6 = 0;
  if (v9)
  {

    operator delete[](v9);
  }
}

void *sub_29A4DC16C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  result = sub_29A4DC2E8((v3 + 8), *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t sub_29A4DC1C4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v16 = v8;
  v17 = v9;
  *&v18 = v9;
  *(&v18 + 1) = &v8[32 * v7];
  *v9 = *a2;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  sub_29A4DC2E8(v9 + 1, *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
  *&v18 = v18 + 32;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_29A4DC364(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A4DC4A8(&v16);
  return v15;
}

void sub_29A4DC2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4DC4A8(va);
  _Unwind_Resume(a1);
}

void *sub_29A4DC2E8(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = sub_29A0101E8(result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A4DC348(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DC364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
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
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_29A4DC428(v9);
}

uint64_t sub_29A4DC428(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4DC460(a1);
  }

  return a1;
}

void sub_29A4DC460(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t sub_29A4DC4A8(uint64_t a1)
{
  sub_29A4DC4E0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A4DC4E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void *sub_29A4DC540(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t sub_29A4DC550(uint64_t a1)
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

uint64_t sub_29A4DC5D0(void *a1)
{
  *a1 = &unk_2A2051C20;
  sub_29A4DC630(a1);
  sub_29A171EEC(a1);

  return sub_29A4DC6DC(a1, v2);
}

void sub_29A4DC630(uint64_t a1)
{
  __p[1] = 0;
  __p[2] = 0;
  __p[0] = operator new[](0x80000uLL);
  while (1)
  {
    v2 = *(a1 + 8);
    v3 = v2[16];
    __dmb(0xBu);
    v4 = *v2;
    __dmb(0xBu);
    v5 = v2[16];
    __dmb(0xBu);
    if (v3 == v5)
    {
      v6 = v2[34];
      __dmb(0xBu);
      if (v3 == v6 + v4)
      {
        break;
      }
    }

    sub_29A4DBF20(a1, __p);
  }

  v7 = __p[0];
  __p[0] = 0;
  if (v7)
  {
    operator delete[](v7);
  }
}

void sub_29A4DC6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DC6DC(uint64_t a1, void *a2)
{
  *a1 = &unk_2A2051C90;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

uint64_t sub_29A4DC728(void *a1)
{
  *a1 = &unk_2A2051B70;
  sub_29A4DC788(a1);
  sub_29A171EEC(a1);

  return sub_29A4DC830(a1, v2);
}

void sub_29A4DC788(uint64_t a1)
{
  __p[0] = operator new[](0x80000uLL);
  __p[1] = 0;
  while (1)
  {
    v2 = *(a1 + 8);
    v3 = v2[16];
    __dmb(0xBu);
    v4 = *v2;
    __dmb(0xBu);
    v5 = v2[16];
    __dmb(0xBu);
    if (v3 == v5)
    {
      v6 = v2[34];
      __dmb(0xBu);
      if (v3 == v6 + v4)
      {
        break;
      }
    }

    sub_29A4DC87C(a1, __p);
  }

  v7 = __p[0];
  __p[0] = 0;
  if (v7)
  {
    operator delete[](v7);
  }
}

void sub_29A4DC814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DC830(uint64_t a1, void *a2)
{
  *a1 = &unk_2A2051BE0;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

BOOL sub_29A4DC87C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    v7 = v6 - v5;
    v8 = v7 > 0;
LABEL_3:
    if (v7 < 1)
    {
      return 0;
    }

    while (1)
    {
      v9 = v5;
      atomic_compare_exchange_strong(v4, &v9, v5 + 1);
      if (v9 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        v11 = v4[16];
        __dmb(0xBu);
        v7 = v11 - add_explicit;
        v5 = add_explicit;
        goto LABEL_3;
      }
    }

    if (sub_29A4DC93C(&v4[5 * ((3 * v5) & 7) + 48], a2, v5, a1))
    {
      return v8;
    }
  }
}

BOOL sub_29A4DC93C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFF8;
  v9 = a1[1];
  __dmb(0xBu);
  if (v9 != (a3 & 0xFFFFFFFFFFFFFFF8))
  {
    while (1)
    {
      v12 = a1[1];
      __dmb(0xBu);
      if (v12 == v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v10 = a1[3];
  __dmb(0xBu);
  if (v10 == v8)
  {
    while (1)
    {
      v11 = a1[3];
      __dmb(0xBu);
      if (v11 != v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v13 = *a1;
  __dmb(0xBu);
  v14 = *(a4 + 8);
  v15 = *(v14 + 256) - 1;
  v16 = v15 & (a3 >> 3);
  if (v16 == v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v20[0] = v8 + 8;
  v20[1] = a1;
  v20[2] = v17;
  v20[3] = a4;
  v18 = *(v13 + 8) & (1 << v16);
  if (v18)
  {
    sub_29A4DCA58(a1, a2, v13, v16);
  }

  else
  {
    atomic_fetch_add((v14 + 272), 0xFFFFFFFFFFFFFFFFLL);
  }

  sub_29A172748(v20);
  return v18 != 0;
}

void sub_29A4DCA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 16 * a4;
  v7 = *(v5 + 16);
  v6 = (v5 + 16);
  *v6 = 0;
  v8 = *a2;
  *a2 = v7;
  if (v8)
  {
    operator delete[](v8);
  }

  v9 = *v6;
  *(a2 + 8) = v6[1];
  *v6 = 0;
  if (v9)
  {

    operator delete[](v9);
  }
}

uint64_t sub_29A4DCAC8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4DCB6C((a1 + 8));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4DCB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4DCB6C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 6544);
  v3 = *(v1 + 6552);
  if (v2 != v3)
  {
    v5 = *a1;
    do
    {
      v6 = 0;
      do
      {
        v7 = strcmp((&off_29F2959F8)[v6], v2);
        if (!v7)
        {
          break;
        }

        v8 = v6 == 10;
        v6 += 2;
      }

      while (!v8);
      if (v7)
      {
        sub_29A4DCC90(v2, a1[1], &__p);
        v9 = *(v5 + 208);
        if (v9 >= *(v5 + 216))
        {
          v11 = sub_29A4DCD08(v5 + 200, v2, &__p, (v2 + 24));
          v12 = __p;
          *(v5 + 208) = v11;
          __p = 0;
          if (v12)
          {
            operator delete[](v12);
          }
        }

        else
        {
          sub_29A008E78(*(v5 + 208), v2);
          v10 = *(v2 + 24);
          *(v9 + 24) = __p;
          *(v9 + 32) = v10;
          *(v5 + 208) = v9 + 40;
        }
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void sub_29A4DCC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  *(v10 + 208) = v11;
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4DCC90(uint64_t a1@<X1>, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2@<X2>, __sFILE **a3@<X8>)
{
  v6 = *(a1 + 24);
  v7 = operator new[](v6);
  *a3 = v7;
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadRawBytes(a2, *(a1 + 16), v6, v7);
}

void sub_29A4DCCF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete[](v2);
  _Unwind_Resume(a1);
}

void *sub_29A4DCD08(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v10 = 0x666666666666666;
  }

  else
  {
    v10 = v5;
  }

  v25 = a1;
  if (v10)
  {
    v11 = sub_29A10E224(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v21 = v11;
  v22 = &v11[40 * v4];
  v23 = v22;
  v24 = &v11[40 * v10];
  v12 = sub_29A008E78(v22, a2);
  v13 = *a3;
  *a3 = 0;
  v14 = *a4;
  v12[3] = v13;
  v12[4] = v14;
  v15 = v23 + 40;
  v16 = *(a1 + 8) - *a1;
  v17 = &v22[-v16];
  memcpy(&v22[-v16], *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = v15;
  v19 = *(a1 + 16);
  *(a1 + 16) = v24;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  sub_29A4DCE48(&v21);
  return v15;
}

void sub_29A4DCE34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4DCE48(va);
  _Unwind_Resume(a1);
}

void **sub_29A4DCE48(void **a1)
{
  sub_29A4DCE7C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A4DCE7C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 40;
    sub_29A4DCEC4(v4, i - 40);
  }
}

void sub_29A4DCEC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t sub_29A4DCF24(void *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v10);
  v2 = *(a1[2] + 96);
  if (*(a1[2] + 104) != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    do
    {
      v11 = (v2 + v3);
      *(sub_29A4E4F44(v5 + 80, (v2 + v3), &unk_29B4D6118, &v11) + 6) = v4++;
      v2 = *(a1[2] + 96);
      v3 += 8;
    }

    while (v4 != (*(a1[2] + 104) - v2) >> 3);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v10;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v10, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v10, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v10);
  return 0;
}

void sub_29A4DD01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DD03C(void *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v10);
  v2 = *(a1[2] + 48);
  if (*(a1[2] + 56) != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    do
    {
      v11 = (v2 + v3);
      *(sub_29A4DD14C(v5 + 120, v2 + v3, &unk_29B4D6118, &v11) + 8) = v4++;
      v2 = *(a1[2] + 48);
      v3 += 16;
    }

    while (v4 != (*(a1[2] + 56) - v2) >> 4);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v10;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v10, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v10, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v10);
  return 0;
}

void sub_29A4DD134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void *sub_29A4DD14C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v7 = *(a2 + 4);
  v8 = bswap64(0x9E3779B97F4A7C55 * v7);
  v9 = *(a2 + 8);
  v10 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (v9 + ((v8 + v9 + (v8 + v9) * (v8 + v9)) >> 1))));
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = v10 & (v11 - 1);
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v10)
          {
            if (*(v14 + 5) == v7 && v14[3] == v9)
            {
              return v14;
            }
          }

          else
          {
            if (v12.u32[0] > 1uLL)
            {
              if (v15 >= v11)
              {
                v15 %= v11;
              }
            }

            else
            {
              v15 &= v11 - 1;
            }

            if (v15 != v4)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v14 = operator new(0x28uLL);
  *v14 = 0;
  v14[1] = v10;
  *(v14 + 1) = **a4;
  *(v14 + 8) = -1;
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    *v14 = *v24;
LABEL_42:
    *v24 = v14;
    goto LABEL_43;
  }

  *v14 = *(a1 + 16);
  *(a1 + 16) = v14;
  *(v23 + 8 * v4) = a1 + 16;
  if (*v14)
  {
    v25 = *(*v14 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v25 >= v11)
      {
        v25 %= v11;
      }
    }

    else
    {
      v25 &= v11 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return v14;
}

uint64_t sub_29A4DD3BC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4DD460((a1 + 8));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4DD44C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4DD460(uint64_t *a1)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  v2 = *a1;
  v1 = a1[1];
  v4 = *v1;
  v3 = v1[1];
  if (v4 != v3)
  {
    v6 = v4;
    while (*v6 != -1)
    {
      v6 += 4;
      if (v6 == v3)
      {
        v6 = v3;
        break;
      }
    }

    if (v4 != v3)
    {
      do
      {
        sub_29A4DD5AC(&__p, v4, v6, (v6 - v4) >> 2);
        v7 = *a1[1];
        p_p = &__p;
        *(sub_29A4DD6E8(v2 + 160, &__p, &unk_29B4D6118, &p_p) + 10) = &v4[-v7] >> 2;
        v4 = v6 + 4;
        v8 = *(a1[1] + 8);
        v6 = v4;
        if (v4 != v8)
        {
          v6 = v4;
          v9 = v4;
          while (*v9 != -1)
          {
            v9 += 4;
            v6 += 4;
            if (v9 == v8)
            {
              v6 = *(a1[1] + 8);
              break;
            }
          }
        }
      }

      while (v8 != v4);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_29A4DD58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4DD5AC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 2)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 2)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 4;
          *v18 = v19;
          v18 += 4;
          v17 += 4;
        }

        while (v16 != a3);
      }

      i = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0111A4(v7, v11);
    for (i = v7[1]; v6 != a3; i += 4)
    {
      v13 = *v6;
      v6 += 4;
      *i = v13;
    }
  }

  v7[1] = i;
  return result;
}

void *sub_29A4DD6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_29A4DDA24(v28, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
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

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      result = *v12;
      if (*v12)
      {
        do
        {
          v14 = result[1];
          if (v14 == v9)
          {
            v16 = result[2];
            v15 = result[3];
            if (v15 - v16 == *(a2 + 8) - *a2)
            {
              if (v16 == v15)
              {
                return result;
              }

              for (i = *a2; *v16 == *i; ++i)
              {
                v16 += 4;
                if (v16 == v15)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v14 >= v10)
              {
                v14 %= v10;
              }
            }

            else
            {
              v14 &= v10 - 1;
            }

            if (v14 != v4)
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

  sub_29A4DD980(a1, v9, a4, v28);
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
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

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    result = v28[0];
    *v28[0] = *v25;
    *v25 = result;
  }

  else
  {
    v26 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v26;
    *(v24 + 8 * v4) = a1 + 16;
    result = v28[0];
    if (*v28[0])
    {
      v27 = *(*v28[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v27 >= v10)
        {
          v27 %= v10;
        }
      }

      else
      {
        v27 &= v10 - 1;
      }

      *(*a1 + 8 * v27) = v28[0];
      result = v28[0];
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A4DD95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A4DDB04(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4DD980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = 0;
  result = sub_29A4DDA88(v8 + 2, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 2);
  *(v8 + 10) = -1;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A4DDA08(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A4DDB04(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_29A4DDA24(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 == *a2)
  {
    v10 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v4 >> 2;
    do
    {
      v9 = *v2++;
      v8 = v9;
      if (v6)
      {
        v5 = v8 + ((v5 + v8 + (v5 + v8) * (v5 + v8)) >> 1);
      }

      else
      {
        v5 = v8;
      }

      v6 = 1;
      --v7;
    }

    while (v7);
    v10 = 0x9E3779B97F4A7C55 * v5;
  }

  return bswap64(v10);
}

void *sub_29A4DDA88(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A4DDAE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4DDB04(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    if (v3)
    {
      __p[3] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29A4DDB70(void *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v10);
  v2 = *(a1[2] + 120);
  if (*(a1[2] + 128) != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    do
    {
      v11 = (v2 + v3);
      *(sub_29A4DDC80(v5, (v2 + v3), &unk_29B4D6118, &v11) + 6) = v4++;
      v2 = *(a1[2] + 120);
      v3 += 8;
    }

    while (v4 != (*(a1[2] + 128) - v2) >> 3);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v10;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v10, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v10, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v10);
  return 0;
}

void sub_29A4DDC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void *sub_29A4DDC80(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
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

  sub_29A4DDEC8(a1, v6, a4, &v22);
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

void sub_29A4DDEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4DDEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x20uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = **a3;
  result[2] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 6) = -1;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A4DDF58(void *a1)
{
  EmptyToken = pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v18);
  v3 = a1[2];
  v4 = v3[18];
  v5 = v3[19];
  if (v5 != v4)
  {
    v6 = 0;
    v7 = a1[1];
    do
    {
      if (v6 >= ((v5 - v4) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
        EmptyString = &qword_2A1742350;
      }

      else
      {
        v8 = *(v4 + 4 * v6);
        v10 = v3 + 15;
        v9 = v3[15];
        if (v8 >= (v10[1] - v9) >> 3)
        {
          EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
          v11 = &qword_2A1742328;
        }

        else
        {
          v11 = (v9 + 8 * v8);
        }

        v12 = *v11 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          EmptyString = (v12 + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
        }
      }

      v19 = EmptyString;
      EmptyToken = sub_29A4DE0CC(v7 + 40, EmptyString, &unk_29B4D6118, &v19);
      *(EmptyToken + 10) = v6++;
      v3 = a1[2];
      v4 = v3[18];
      v5 = v3[19];
    }

    while (v6 != (v5 - v4) >> 2);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v15 = v18;
  v16 = atomic_load((v14 + 144));
  if (v15 < v16 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v18, v14))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v18, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v18);
  return 0;
}

void sub_29A4DE0B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

const void **sub_29A4DE0CC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A4DE380(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A4DE35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4DE380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  a4[1] = a1;
  *a4 = result;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  *(v9 + 10) = -1;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A4DE418(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_29A4DE434(_BOOL8 result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = *(result + 40);
    *(result + 40) = 0;
    __p[0] = v4;
    __p[1] = v2;
    __p[2] = v3;
    v5 = *(result + 88);
    add = atomic_fetch_add((v5 + 128), 1uLL);
    sub_29A4DE568((v5 + 40 * ((3 * add) & 7) + 384), __p, add, (result + 80), sub_29A4DE550);
    v7 = __p[0];
    __p[0] = 0;
    if (v7)
    {
      operator delete[](v7);
    }

    if (!atomic_fetch_add(v1 + 60, 1uLL))
    {
      v8 = v1[59];
      if (!v8)
      {
        sub_29A0DDCB0();
      }

      (*(*v8 + 48))(v8);
    }

    for (result = sub_29A4DC87C((v1 + 7), (v1 + 5)); !result; result = sub_29A4DC87C((v1 + 7), (v1 + 5)))
    {
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait((v1 + 13));
    }
  }

  v1[4] = v1[2];
  return result;
}

void sub_29A4DE534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A4DE550(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *a1 = v2;
  result = *(a2 + 1);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A4DE568(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, uint64_t))
{
  v9 = a3 & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(a4[1] + 256) - 1) & (a3 >> 3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*a4 + 16))(a4);
    *v11 = 0;
    v11[1] = 0;
  }

  v12 = a1[3];
  __dmb(0xBu);
  if (v12 != v9)
  {
    sub_29A172A58(a1, a1 + 3, v9, a4[1]);
  }

  if (v11)
  {
    sub_29A0EB5BC(&v16, (a1 + 4));
    v13 = a1[2];
    __dmb(0xBu);
    if (v13 < 2)
    {
      __dmb(0xBu);
      *a1 = v11;
    }

    else
    {
      *v13 = v11;
    }

    __dmb(0xBu);
    a1[2] = v11;
    v14 = v16;
    if (v16)
    {
      __dmb(0xBu);
      *v14 = 0;
    }
  }

  else
  {
    v11 = a1[2];
    __dmb(0xBu);
  }

  result = a5(&v11[3 * v10 + 2], a2);
  v11[1] |= 1 << v10;
  atomic_fetch_add(a1 + 3, 8uLL);
  return result;
}

void sub_29A4DE6B0(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_fetch_add((*(v1 + 8) + 272), 1uLL);
  sub_29A1729DC(v2, v3);
}

void sub_29A4DE71C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A4DE770(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A4DE770(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_29A4DE7C0(void ***a1)
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
        v4 -= 40;
        sub_29A4DCEC4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A4DE848(uint64_t a1)
{
  sub_29A4DE884(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4DE884(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A4DE8D0(uint64_t a1)
{
  sub_29A4DE90C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4DE90C(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4DE950(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A4DE950(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A4DE990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[9] = *MEMORY[0x29EDCA608];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 200) = 0;
  v6 = a1 + 200;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  if ((*(a2 + 6743) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 6728))
    {
      goto LABEL_3;
    }
  }

  else if (*(a2 + 6743))
  {
LABEL_3:
    v7 = *(a2 + 6578);
    *(a1 + 256) = *(a2 + 6576);
    *(a1 + 258) = v7;
    goto LABEL_6;
  }

  v8 = sub_29A4DB478();
  *(v6 + 56) = v8;
  *(v6 + 58) = BYTE2(v8);
LABEL_6:
  sub_29A4DEF18(a1 + 264, a1 + 776);
  *(a1 + 752) = 0u;
  *(a1 + 768) = a3;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 776) = 0;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v24);
  v22 = 0;
  v23 = v25;
  v9 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v22, 0x20uLL);
  *(v9 - 11) = 1;
  *v9 = &unk_2A2052020;
  v9[1] = a1;
  v9[2] = a2;
  v9[3] = v26;
  (***(v9 - 5))();
  v22 = 0;
  v23 = v25;
  v10 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v22, 0x20uLL);
  *(v10 - 11) = 1;
  *v10 = &unk_2A2052068;
  v10[1] = a1;
  v10[2] = a2;
  v10[3] = v26;
  (***(v10 - 5))();
  v22 = 0;
  v23 = v25;
  v11 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v22, 0x20uLL);
  *(v11 - 11) = 1;
  *v11 = &unk_2A20520B0;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = v26;
  (***(v11 - 5))();
  v22 = 0;
  v23 = v25;
  v12 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v22, 0x20uLL);
  *(v12 - 11) = 1;
  *v12 = &unk_2A20520F8;
  v12[1] = a1;
  v12[2] = a2 + 72;
  v12[3] = v26;
  (***(v12 - 5))();
  v22 = 0;
  v23 = v25;
  v13 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v22, 0x20uLL);
  *(v13 - 11) = 1;
  *v13 = &unk_2A2052140;
  v13[1] = a1;
  v13[2] = a2;
  v13[3] = v26;
  (***(v13 - 5))();
  v22 = 0;
  v23 = v25;
  v14 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v22, 0x20uLL);
  *(v14 - 11) = 1;
  *v14 = &unk_2A2052188;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = v26;
  (***(v14 - 5))();
  v15 = *(a2 + 6544);
  v16 = *(a2 + 6552);
  if (v15 != v16)
  {
    for (i = v15 + 32; i != v16; i += 32)
    {
      if (*(i + 16) < *(v15 + 16))
      {
        v15 = i;
      }
    }
  }

  if (v15 == v16)
  {
    v18 = 88;
  }

  else
  {
    v18 = *(v15 + 16);
  }

  v19 = *(a1 + 296);
  if (v19 <= v18 && *(a1 + 312) + v19 >= v18)
  {
    v20 = (a1 + 280);
  }

  else
  {
    sub_29A4DE434(a1 + 264);
    v20 = (a1 + 296);
    *(a1 + 280) = v18;
  }

  *v20 = v18;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v24);
  return a1;
}

void sub_29A4DEE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(va);
  sub_29A4DE71C(va);
  v11 = *(v4 + 760);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  sub_29A4DB4BC((v4 + 264));
  if (*(v4 + 255) < 0)
  {
    operator delete(*v9);
  }

  sub_29A4DE7C0(va);
  sub_29A4DE848(v8);
  sub_29A0EB570(v7);
  sub_29A4DE8D0(v6);
  sub_29A0EB4E8(v5);
  sub_29A155EF4(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DEF18(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = operator new[](0x80000uLL);
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2A2051BE0;
  v4 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v3);
  *(a1 + 64) = v4;
  bzero(v4, 0x2C0uLL);
  *(*(a1 + 64) + 256) = vdupq_n_s64(0x10uLL);
  *(a1 + 56) = &unk_2A2051B70;
  *(a1 + 80) = &unk_2A2051C90;
  v6 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v5);
  *(a1 + 88) = v6;
  bzero(v6, 0x2C0uLL);
  *(*(a1 + 88) + 256) = xmmword_29B497AA0;
  *(a1 + 80) = &unk_2A2051C20;
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher((a1 + 104));
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A2051F58;
  v7[1] = a1 + 104;
  v7[2] = a1;
  *(a1 + 472) = v7;
  *(a1 + 480) = 0;
  v8 = 7;
  do
  {
    __p[0] = operator new[](0x80000uLL);
    __p[1] = 0;
    v9 = *(a1 + 64);
    add = atomic_fetch_add((v9 + 128), 1uLL);
    sub_29A17282C((v9 + 40 * ((3 * add) & 7) + 384), __p, add, (a1 + 56), sub_29A4DC540);
    v11 = __p[0];
    __p[0] = 0;
    if (v11)
    {
      operator delete[](v11);
    }

    --v8;
  }

  while (v8);
  return a1;
}

void sub_29A4DF0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v12);
  sub_29A4DC5D0(v11);
  sub_29A4DC728(v10);
  v14 = *(v9 + 40);
  *(v9 + 40) = 0;
  if (v14)
  {
    operator delete[](v14);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A4DF160(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2051F58;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A4DF1B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2051F58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4DF1F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052000))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A4DF240(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 256);
  v8[0] = 0;
  v8[1] = v5;
  v6 = tbb::internal::allocate_additional_child_of_proxy::allocate(v8, 0x20uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A2051FC8;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v4 + 272;
  return (***(v6 - 5))();
}

uint64_t sub_29A4DF304(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v11);
  v2 = *(a1 + 8);
  v3 = atomic_load(*(a1 + 16));
  sub_29A4DBB9C(*(v2 + 8));
  v4 = v3;
  atomic_compare_exchange_strong(*(a1 + 16), &v4, 0);
  if (v4 != v3)
  {
    do
    {
      sub_29A4DBB9C(*(v2 + 8));
      v5 = v4;
      atomic_compare_exchange_strong(*(a1 + 16), &v5, 0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v8 = v11;
  v9 = atomic_load((v7 + 144));
  if (v8 < v9 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v11, v7))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v11, *(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v11);
  return 0;
}

void sub_29A4DF3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DF3F8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4DF49C((a1 + 8));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4DF488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4DF49C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 6544);
  v3 = *(v1 + 6552);
  if (v2 != v3)
  {
    v5 = *a1;
    do
    {
      v6 = 0;
      do
      {
        v7 = strcmp((&off_29F2959F8)[v6], v2);
        if (!v7)
        {
          break;
        }

        v8 = v6 == 10;
        v6 += 2;
      }

      while (!v8);
      if (v7)
      {
        sub_29A4DCC90(v2, a1[1], &__p);
        v9 = *(v5 + 208);
        if (v9 >= *(v5 + 216))
        {
          v11 = sub_29A4DCD08(v5 + 200, v2, &__p, (v2 + 24));
          v12 = __p;
          *(v5 + 208) = v11;
          __p = 0;
          if (v12)
          {
            operator delete[](v12);
          }
        }

        else
        {
          sub_29A008E78(*(v5 + 208), v2);
          v10 = *(v2 + 24);
          *(v9 + 24) = __p;
          *(v9 + 32) = v10;
          *(v5 + 208) = v9 + 40;
        }
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void sub_29A4DF598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  *(v10 + 208) = v11;
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DF5C8(void *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v10);
  v2 = *(a1[2] + 96);
  if (*(a1[2] + 104) != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    do
    {
      v11 = (v2 + v3);
      *(sub_29A4E4F44(v5 + 80, (v2 + v3), &unk_29B4D6118, &v11) + 6) = v4++;
      v2 = *(a1[2] + 96);
      v3 += 8;
    }

    while (v4 != (*(a1[2] + 104) - v2) >> 3);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v10;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v10, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v10, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v10);
  return 0;
}

void sub_29A4DF6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DF6E0(void *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v10);
  v2 = *(a1[2] + 48);
  if (*(a1[2] + 56) != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    do
    {
      v11 = (v2 + v3);
      *(sub_29A4DD14C(v5 + 120, v2 + v3, &unk_29B4D6118, &v11) + 8) = v4++;
      v2 = *(a1[2] + 48);
      v3 += 16;
    }

    while (v4 != (*(a1[2] + 56) - v2) >> 4);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v10;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v10, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v10, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v10);
  return 0;
}

void sub_29A4DF7D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DF7F8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4DF89C((a1 + 8));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4DF888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4DF89C(uint64_t *a1)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  v2 = *a1;
  v1 = a1[1];
  v4 = *v1;
  v3 = v1[1];
  if (v4 != v3)
  {
    v6 = v4;
    while (*v6 != -1)
    {
      v6 += 4;
      if (v6 == v3)
      {
        v6 = v3;
        break;
      }
    }

    if (v4 != v3)
    {
      do
      {
        sub_29A4DD5AC(&__p, v4, v6, (v6 - v4) >> 2);
        v7 = *a1[1];
        p_p = &__p;
        *(sub_29A4DD6E8(v2 + 160, &__p, &unk_29B4D6118, &p_p) + 10) = &v4[-v7] >> 2;
        v4 = v6 + 4;
        v8 = *(a1[1] + 8);
        v6 = v4;
        if (v4 != v8)
        {
          v6 = v4;
          v9 = v4;
          while (*v9 != -1)
          {
            v9 += 4;
            v6 += 4;
            if (v9 == v8)
            {
              v6 = *(a1[1] + 8);
              break;
            }
          }
        }
      }

      while (v8 != v4);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_29A4DF9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4DF9F0(void *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v10);
  v2 = *(a1[2] + 120);
  if (*(a1[2] + 128) != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    do
    {
      v11 = (v2 + v3);
      *(sub_29A4DDC80(v5, (v2 + v3), &unk_29B4D6118, &v11) + 6) = v4++;
      v2 = *(a1[2] + 120);
      v3 += 8;
    }

    while (v4 != (*(a1[2] + 128) - v2) >> 3);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v10;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v10, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v10, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v10);
  return 0;
}

void sub_29A4DFAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DFB08(void *a1)
{
  EmptyToken = pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v18);
  v3 = a1[2];
  v4 = v3[18];
  v5 = v3[19];
  if (v5 != v4)
  {
    v6 = 0;
    v7 = a1[1];
    do
    {
      if (v6 >= ((v5 - v4) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
        EmptyString = &qword_2A1742350;
      }

      else
      {
        v8 = *(v4 + 4 * v6);
        v10 = v3 + 15;
        v9 = v3[15];
        if (v8 >= (v10[1] - v9) >> 3)
        {
          EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
          v11 = &qword_2A1742328;
        }

        else
        {
          v11 = (v9 + 8 * v8);
        }

        v12 = *v11 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          EmptyString = (v12 + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
        }
      }

      v19 = EmptyString;
      EmptyToken = sub_29A4DE0CC(v7 + 40, EmptyString, &unk_29B4D6118, &v19);
      *(EmptyToken + 10) = v6++;
      v3 = a1[2];
      v4 = v3[18];
      v5 = v3[19];
    }

    while (v6 != (v5 - v4) >> 2);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v15 = v18;
  v16 = atomic_load((v14 + 144));
  if (v15 < v16 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v18, v14))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v18, a1[3]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v18);
  return 0;
}

void sub_29A4DFC64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4DFC7C(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }

    *(a1 + 4) = -1;
  }

  return a1;
}

uint64_t sub_29A4DFCC4(uint64_t a1, uint64_t a2)
{
  __src = (*(a2 + 8) - *a2) >> 5;
  sub_29A4E5264(a1, &__src);
  return sub_29A4DFD1C(a1, *a2, (*(a2 + 8) - *a2) >> 5);
}

uint64_t sub_29A4DFD1C(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 32 * a3;
  if (32 * a3)
  {
    v5 = *(result + 8);
    do
    {
      v6 = v5[2];
      v7 = v5[4];
      v8 = v7 - v6 + 0x80000;
      if (v3 >= v8)
      {
        v9 = v7 - v6 + 0x80000;
      }

      else
      {
        v9 = v3;
      }

      v10 = v6 - v7;
      if ((v9 + v10) > v5[6])
      {
        v5[6] = v9 + v10;
      }

      result = memcpy((v5[5] + v10), __src, v9);
      v5[2] += v9;
      if (v8 <= v3)
      {
        result = sub_29A4DE434(v5);
      }

      __src += v9;
      v3 -= v9;
    }

    while (v3);
  }

  return result;
}

void *sub_29A4DFDC4(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 5)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 5)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 4;
    if (v8 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A15A71C(v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

void sub_29A4DFEF0(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4DFF2C(v3);

    operator delete(v4);
  }
}

void **sub_29A4DFF2C(void **a1)
{
  sub_29A4DFF68(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4DFF68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }
}

void sub_29A4DFFAC(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4DFFE8(v3);

    operator delete(v4);
  }
}

void **sub_29A4DFFE8(void **a1)
{
  sub_29A4E0024(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0024(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }
}

void sub_29A4E0068(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E00A4(v3);

    operator delete(v4);
  }
}

void **sub_29A4E00A4(void **a1)
{
  sub_29A4E00E0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E00E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }
}

void sub_29A4E0124(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0160(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0160(void **a1)
{
  sub_29A4E019C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E019C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }
}

void sub_29A4E01E0(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E021C(v3);

    operator delete(v4);
  }
}

void **sub_29A4E021C(void **a1)
{
  sub_29A4E0258(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0258(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }
}

void sub_29A4E029C(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E02D8(v3);

    operator delete(v4);
  }
}

void **sub_29A4E02D8(void **a1)
{
  sub_29A4E0314(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0314(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }
}

void sub_29A4E0358(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0394(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0394(void **a1)
{
  sub_29A4E03D0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E03D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }
}

void sub_29A4E0414(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0450(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0450(void **a1)
{
  sub_29A4E048C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E048C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }
}

void sub_29A4E04D0(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E050C(v3);

    operator delete(v4);
  }
}

void **sub_29A4E050C(void **a1)
{
  sub_29A4E0548(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0548(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }
}

void sub_29A4E058C(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E05C8(v3);

    operator delete(v4);
  }
}

void **sub_29A4E05C8(void **a1)
{
  sub_29A4E0604(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0604(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }
}

void sub_29A4E0648(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0684(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0684(void **a1)
{
  sub_29A4E06C0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E06C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }
}

void sub_29A4E0704(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0740(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E0740(uint64_t a1)
{
  sub_29A4E077C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E077C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A216064(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E07C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E07FC(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E07FC(uint64_t a1)
{
  sub_29A4E0838(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0838(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A00B454((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E087C(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E08B8(v3);

    operator delete(v4);
  }
}

void **sub_29A4E08B8(void **a1)
{
  sub_29A4E08F4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E08F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }
}

void sub_29A4E0938(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0974(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0974(void **a1)
{
  sub_29A4E09B0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E09B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }
}

void sub_29A4E09F4(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0A30(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0A30(void **a1)
{
  sub_29A4E0A6C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0A6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }
}

void sub_29A4E0AB0(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0AEC(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0AEC(void **a1)
{
  sub_29A4E0B28(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0B28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }
}

void sub_29A4E0B6C(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0BA8(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0BA8(void **a1)
{
  sub_29A4E0BE4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0BE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }
}

void sub_29A4E0C28(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0C64(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0C64(void **a1)
{
  sub_29A4E0CA0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0CA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }
}

void sub_29A4E0CE4(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0D20(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0D20(void **a1)
{
  sub_29A4E0D5C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0D5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }
}

void sub_29A4E0DA0(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0DDC(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0DDC(void **a1)
{
  sub_29A4E0E18(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0E18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }
}

void sub_29A4E0E5C(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0E98(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0E98(void **a1)
{
  sub_29A4E0ED4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0ED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }
}

void sub_29A4E0F18(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E0F54(v3);

    operator delete(v4);
  }
}

void **sub_29A4E0F54(void **a1)
{
  sub_29A4E0F90(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E0F90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }
}

void sub_29A4E0FD4(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1010(v3);

    operator delete(v4);
  }
}

void **sub_29A4E1010(void **a1)
{
  sub_29A4E104C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E104C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }
}

void sub_29A4E1090(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E10CC(v3);

    operator delete(v4);
  }
}

void **sub_29A4E10CC(void **a1)
{
  sub_29A4E1108(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1108(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }
}

void sub_29A4E114C(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1188(v3);

    operator delete(v4);
  }
}

void **sub_29A4E1188(void **a1)
{
  sub_29A4E11C4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E11C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }
}

void sub_29A4E1208(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1244(v3);

    operator delete(v4);
  }
}

void **sub_29A4E1244(void **a1)
{
  sub_29A4E1280(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1280(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }
}

void sub_29A4E12C4(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1300(v3);

    operator delete(v4);
  }
}

void **sub_29A4E1300(void **a1)
{
  sub_29A4E133C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E133C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }
}

void sub_29A4E1380(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E13BC(v3);

    operator delete(v4);
  }
}

void **sub_29A4E13BC(void **a1)
{
  sub_29A4E13F8(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E13F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }
}

void sub_29A4E143C(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1478(v3);

    operator delete(v4);
  }
}

void **sub_29A4E1478(void **a1)
{
  sub_29A4E14B4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E14B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }
}

void sub_29A4E14F8(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1534(v3);

    operator delete(v4);
  }
}

void **sub_29A4E1534(void **a1)
{
  sub_29A4E1570(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1570(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }
}

void sub_29A4E15B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E15F0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E15F0(uint64_t a1)
{
  sub_29A4E162C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E162C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E1670(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E1670(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 8 * *a1;
        do
        {
          sub_29A184A10(v5++, 0);
          v6 -= 8;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 2);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E170C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1748(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E1748(uint64_t a1)
{
  sub_29A4E1784(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1784(uint64_t a1, void ***a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A184A10(v2 + 2, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E17CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1808(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E1808(uint64_t a1)
{
  sub_29A4E1844(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1844(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E1888(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E1888(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 0;
        v7 = 152 * *a1;
        do
        {
          v8 = (v5 + v6 + 128);
          sub_29A124AB0(&v8);
          v8 = (v5 + v6 + 104);
          sub_29A124AB0(&v8);
          v8 = (v5 + v6 + 80);
          sub_29A124AB0(&v8);
          v8 = (v5 + v6 + 56);
          sub_29A124AB0(&v8);
          v8 = (v5 + v6 + 32);
          sub_29A124AB0(&v8);
          v8 = (v5 + v6 + 8);
          sub_29A124AB0(&v8);
          v6 += 152;
        }

        while (v7 != v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_29A4E1994(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E19D0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E19D0(uint64_t a1)
{
  sub_29A4E1A0C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1A0C(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E1A50(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E1A50(void **a1)
{
  v2 = a1 + 16;
  sub_29A124AB0(&v2);
  v2 = a1 + 13;
  sub_29A124AB0(&v2);
  v2 = a1 + 10;
  sub_29A124AB0(&v2);
  v2 = a1 + 7;
  sub_29A124AB0(&v2);
  v2 = a1 + 4;
  sub_29A124AB0(&v2);
  v2 = a1 + 1;
  sub_29A124AB0(&v2);
}

void sub_29A4E1AD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4E1B14(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4E1B14(uint64_t a1)
{
  sub_29A4E1B50(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4E1B50(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4E1B94(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4E1B94(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 0;
        v7 = 152 * *a1;
        do
        {
          v8 = (v5 + v6 + 128);
          sub_29A012C90(&v8);
          v8 = (v5 + v6 + 104);
          sub_29A012C90(&v8);
          v8 = (v5 + v6 + 80);
          sub_29A012C90(&v8);
          v8 = (v5 + v6 + 56);
          sub_29A012C90(&v8);
          v8 = (v5 + v6 + 32);
          sub_29A012C90(&v8);
          v8 = (v5 + v6 + 8);
          sub_29A012C90(&v8);
          v6 += 152;
        }

        while (v7 != v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}