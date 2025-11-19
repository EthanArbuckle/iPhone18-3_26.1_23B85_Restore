void sub_29A4EDE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, char a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete[](__p);
  }

  sub_29A0E9CEC(&a21);
  _Unwind_Resume(a1);
}

const char *sub_29A4EDEDC(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadStrings", 0);
  }

  else
  {
    v5 = 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "STRINGS");
  if (result)
  {
    *(a2 + 16) = *(result + 2);
    result = sub_29A4EF770(a2, (a1 + 144));
  }

  if (v5)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }

  return result;
}

void sub_29A4EDFA4(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadFields", 0);
  }

  else
  {
    v5 = 0;
  }

  __sz._write = v5;
  LODWORD(__sz._ub._base) = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "FIELDS");
  if (!Section)
  {
    goto LABEL_32;
  }

  *(a2 + 16) = *(Section + 2);
  if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) <= 0x3FFu)
  {
    sub_29A4EF958(a2, (a1 + 48));
    goto LABEL_32;
  }

  __sz._seek = 0;
  if (sub_29A4EF670(a2 + 8, 0, &__sz._seek))
  {
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(__sz._seek);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(__sz._seek);
    if (CompressedBufferSize && DecompressionWorkingSpaceSize)
    {
      sub_29A4E83FC((a1 + 48), __sz._seek);
      sub_29A01112C(&__sz._r, __sz._seek);
      memset(&__sz._bf._size, 0, 32);
      v9 = sub_29A4EFACC(&__sz._bf._size, a2, *&__sz._r, ((*&__sz._flags - *&__sz._r) >> 2));
      cookie = __sz._cookie;
      __sz._cookie = 0;
      if (cookie)
      {
        operator delete[](cookie);
      }

      v11 = *&__sz._bf._size;
      *&__sz._bf._size = 0;
      if (v11)
      {
        operator delete[](v11);
      }

      if (!v9)
      {
        goto LABEL_30;
      }

      seek = __sz._seek;
      if (__sz._seek)
      {
        v13 = *&__sz._r;
        v14 = (*(a1 + 48) + 4);
        do
        {
          v15 = *v13++;
          *v14 = v15;
          v14 += 4;
          seek = (seek - 1);
        }

        while (seek);
      }

      __sz._p = 0;
      if (!sub_29A4EF670(a2 + 8, 0, &__sz))
      {
        goto LABEL_30;
      }

      v17 = *(a2 + 16);
      v16 = *(a2 + 24);
      v18 = (v16 - v17);
      p = __sz._p;
      if (v17 < 0 || (v18 & 0x8000000000000000) != 0 || __sz._p > v18)
      {
        *&__sz._bf._size = "usd/crateFile.cpp";
        *&__sz._lbfsize = "_ReadFields";
        __sz._cookie = 3965;
        __sz._close = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFields(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        LOBYTE(__sz._read) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz._bf._size, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", __sz._p, v18, v16);
LABEL_30:
        if (*&__sz._r)
        {
          *&__sz._flags = *&__sz._r;
          operator delete(*&__sz._r);
        }

        goto LABEL_32;
      }

      v20 = operator new[](__sz._p);
      if (sub_29A4D3508(a2, v20, p))
      {
        memset(&__sz._bf._size, 0, 24);
        sub_29A00BF50(&__sz._bf._size, __sz._seek);
        pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(v20, *&__sz._bf._size, __sz._p, *&__sz._lbfsize - *&__sz._bf._size);
        v21 = *&__sz._bf._size;
        if (__sz._seek)
        {
          v22 = 0;
          v23 = (*(a1 + 48) + 8);
          do
          {
            *v23 = v21[v22];
            v23 += 2;
            v22 = (v22 + 1);
          }

          while (v22 != __sz._seek);
          goto LABEL_28;
        }

        if (*&__sz._bf._size)
        {
LABEL_28:
          *&__sz._lbfsize = v21;
          operator delete(v21);
        }
      }

      operator delete[](v20);
      goto LABEL_30;
    }

    if (__sz._seek)
    {
      *&__sz._bf._size = "usd/crateFile.cpp";
      *&__sz._lbfsize = "_ReadFields";
      __sz._cookie = 3946;
      __sz._close = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFields(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      LOBYTE(__sz._read) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz._bf._size, 3, "Failed read compressed fields of size %llu.", __sz._seek);
    }
  }

LABEL_32:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }
}

void sub_29A4EE320(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadFieldSets", 0);
  }

  else
  {
    v5 = 0;
  }

  v23[1] = v5;
  v24 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "FIELDSETS");
  if (!Section)
  {
    goto LABEL_25;
  }

  *(a2 + 16) = *(Section + 2);
  if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) <= 0x3FFu)
  {
    if (!sub_29A4EFBE0(a2, (a1 + 72)))
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  v23[0] = 0;
  if (!sub_29A4EF670(a2 + 8, 0, v23))
  {
    goto LABEL_25;
  }

  CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v23[0]);
  DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v23[0]);
  if (!CompressedBufferSize || !DecompressionWorkingSpaceSize)
  {
    v20[0] = "usd/crateFile.cpp";
    v20[1] = "_ReadFieldSets";
    __p[0] = 3905;
    __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFieldSets(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Failed to read compressed fieldSets of size %llu", v23[0]);
    goto LABEL_25;
  }

  sub_29A4E8B14((a1 + 72), v23[0]);
  sub_29A01112C(&v18, v23[0]);
  *v20 = 0u;
  *__p = 0u;
  v10 = sub_29A4EFACC(v20, a2, v18, v23[0]);
  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    operator delete[](v11);
  }

  v12 = v20[0];
  v20[0] = 0;
  if (v12)
  {
    operator delete[](v12);
  }

  if (v10)
  {
    v13 = v23[0];
    v14 = v18;
    if (v23[0])
    {
      v15 = *(a1 + 72);
      v16 = v18;
      do
      {
        v17 = *v16++;
        *v15++ = v17;
        v13 = (v13 - 1);
      }

      while (v13);
    }

    else if (!v18)
    {
LABEL_7:
      v7 = *(a1 + 80);
      if (*(a1 + 72) != v7 && *(v7 - 4) != -1)
      {
        v20[0] = "usd/crateFile.cpp";
        v20[1] = "_ReadFieldSets";
        __p[0] = 3919;
        __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFieldSets(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
        v22 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Corrupt field sets in crate file");
        *(*(a1 + 80) - 4) = -1;
      }

      goto LABEL_25;
    }

    v19 = v14;
    operator delete(v14);
    goto LABEL_7;
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

LABEL_25:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }
}

void sub_29A4EE5CC(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadPaths", 0);
  }

  else
  {
    v5 = 0;
  }

  *&v25._r = v5;
  *&v25._flags = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "PATHS");
  if (!Section)
  {
    goto LABEL_20;
  }

  *(a2 + 16) = *(Section + 2);
  v25._p = 0;
  if (!sub_29A4EF670(a2 + 8, 0, &v25))
  {
    goto LABEL_20;
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v25._bf);
  v7 = (*(a1 + 6576) << 16) | (*(a1 + 6577) << 8);
  if ((v7 | *(a1 + 6578)) == 1)
  {
    sub_29A38B6A4((a1 + 96), v25._p);
    v8 = *(a1 + 96);
    v9 = *(a1 + 104);
    *&v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
    v10 = (v9 - v8) >> 3;
    if (v10 >= 1)
    {
      v11 = v10 + 1;
      do
      {
        sub_29A2258F0(v8, &v22);
        sub_29A225948(v8 + 1, &v22 + 1);
        --v11;
        v8 += 2;
      }

      while (v11 > 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
    sub_29A1DE3A4(&v22);
    v12 = *(a2 + 16);
    v22 = *a2;
    v23 = v12;
    v24 = *(a2 + 32);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21 + 1);
    sub_29A4EFD04(a1, &v22, &v25._bf, &v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
    v13 = &v21;
  }

  else
  {
    if (v7 > 0x3FF)
    {
      v19 = *(a2 + 16);
      v22 = *a2;
      v23 = v19;
      v24 = *(a2 + 32);
      sub_29A4F01D4(a1, &v22, &v25._bf, v25._p);
      goto LABEL_19;
    }

    if (v25._p > (*(a2 + 24) - *(a2 + 16)))
    {
      *&v22 = "usd/crateFile.cpp";
      *(&v22 + 1) = "_ReadPaths";
      *&v23 = 4352;
      *(&v23 + 1) = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadPaths(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      LOBYTE(v24) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 3, "Invalid number of paths in file.");
      goto LABEL_19;
    }

    sub_29A38B6A4((a1 + 96), v25._p);
    v14 = *(a1 + 96);
    v15 = *(a1 + 104);
    *&v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
    v16 = (v15 - v14) >> 3;
    if (v16 >= 1)
    {
      v17 = v16 + 1;
      do
      {
        sub_29A2258F0(v14, &v22);
        sub_29A225948(v14 + 1, &v22 + 1);
        --v17;
        v14 += 2;
      }

      while (v17 > 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
    sub_29A1DE3A4(&v22);
    v18 = *(a2 + 16);
    v22 = *a2;
    v23 = v18;
    v24 = *(a2 + 32);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20 + 1);
    sub_29A4EFF6C(a1, &v22, &v25._bf, &v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20 + 1);
    v13 = &v20;
  }

  sub_29A1DE3A4(v13);
LABEL_19:
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v25._bf);
  v5 = *&v25._r;
LABEL_20:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(*&v25._flags, v5);
  }
}

void sub_29A4EE914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(va1);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void sub_29A4EE984(uint64_t *a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadSpecs", 0);
  }

  else
  {
    v5 = 0;
  }

  v85 = v5;
  v86 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection(a1 + 818, "SPECS");
  v7 = a1 + 512;
  if (Section)
  {
    *(a2 + 16) = *(Section + 2);
    v8 = (*(a1 + 6576) << 16) | (*(a1 + 6577) << 8);
    if ((v8 | *(a1 + 6578)) == 1)
    {
      memset(&v83._seek, 0, 24);
      if (!sub_29A4F0E54(a2, &v83._seek))
      {
        if (v83._seek)
        {
          v83._write = v83._seek;
          operator delete(v83._seek);
        }

        goto LABEL_113;
      }

      sub_29A4E9F98(a1, (v83._write - v83._seek) >> 4);
      seek = v83._seek;
      write = v83._write;
      if (v83._seek != v83._write)
      {
        v11 = *a1;
        do
        {
          v12 = *(seek + 3);
          *v11 = *(seek + 4);
          *(v11 + 2) = v12;
          seek = (seek + 16);
          v11 += 12;
        }

        while (seek != write);
        seek = v83._seek;
      }

      if (seek)
      {
        v83._write = seek;
        operator delete(seek);
      }

      goto LABEL_15;
    }

    if (v8 <= 0x3FF)
    {
      if (!sub_29A4F0F78(a2, a1))
      {
        goto LABEL_113;
      }

      goto LABEL_15;
    }

    v83._cookie = 0;
    if (!sub_29A4EF670(a2 + 8, 0, &v83._cookie))
    {
      goto LABEL_113;
    }

    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v83._cookie);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v83._cookie);
    if (!CompressedBufferSize || (v42 = DecompressionWorkingSpaceSize) == 0)
    {
      v83._seek = "usd/crateFile.cpp";
      v83._write = "_ReadSpecs";
      v83._ub._base = 4010;
      *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      LOBYTE(v83._extra) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Failed to read specs of size %llu", v83._cookie);
      goto LABEL_113;
    }

    v83._bf._base = 0;
    if (!sub_29A4EF670(a2 + 8, 0, &v83._bf))
    {
      goto LABEL_113;
    }

    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    v45 = (v43 - v44);
    base = v83._bf._base;
    if (v44 < 0 || (v45 & 0x8000000000000000) != 0 || v83._bf._base > v45)
    {
      v83._seek = "usd/crateFile.cpp";
      v83._write = "_ReadSpecs";
      v83._ub._base = 4021;
      *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      LOBYTE(v83._extra) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", v83._bf._base, v45, v43);
      goto LABEL_113;
    }

    v47 = operator new[](CompressedBufferSize);
    v48 = operator new[](v42);
    v79 = 0uLL;
    v80 = 0;
    if ((base - 1) >= CompressedBufferSize)
    {
      v83._seek = "usd/crateFile.cpp";
      v83._write = "_ReadSpecs";
      v83._ub._base = 4043;
      *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      LOBYTE(v83._extra) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Failed to read pathIndexes, size > compressedBufferSize.");
    }

    else
    {
      sub_29A4D3508(a2, v47, base);
      sub_29A0A171C(&v79, v83._cookie);
      pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v47, v83._bf._base, v79, v83._cookie, v48, v49);
      sub_29A4E9F98(a1, v83._cookie);
      cookie = v83._cookie;
      if (v83._cookie)
      {
        v51 = v79;
        v52 = *a1;
        do
        {
          v53 = *v51++;
          *v52 = v53;
          v52 += 12;
          --cookie;
        }

        while (cookie);
      }

      v83._p = 0;
      if (sub_29A4EF670(a2 + 8, 0, &v83))
      {
        v55 = *(a2 + 16);
        v54 = *(a2 + 24);
        v56 = (v54 - v55);
        if (v55 < 0 || (v56 & 0x8000000000000000) != 0 || v83._p > v56)
        {
          v83._seek = "usd/crateFile.cpp";
          v83._write = "_ReadSpecs";
          v83._ub._base = 4053;
          *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
          LOBYTE(v83._extra) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", v83._p, v56, v54);
        }

        else if (v83._p - 1 >= CompressedBufferSize)
        {
          v83._seek = "usd/crateFile.cpp";
          v83._write = "_ReadSpecs";
          v83._ub._base = 4067;
          *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
          LOBYTE(v83._extra) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Failed to read fsetIndexes, size > compressedBufferSize.");
        }

        else
        {
          sub_29A4D3508(a2, v47, v83._p);
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v47, v83._p, v79, v83._cookie, v48, v57);
          v58 = v83._cookie;
          if (v83._cookie)
          {
            v59 = v79;
            v60 = (*a1 + 4);
            do
            {
              v61 = *v59++;
              *v60 = v61;
              v60 += 3;
              --v58;
            }

            while (v58);
          }

          v84 = 0;
          if (sub_29A4EF670(a2 + 8, 0, &v84))
          {
            v63 = *(a2 + 16);
            v62 = *(a2 + 24);
            v64 = v62 - v63;
            if (v63 < 0 || (v64 & 0x8000000000000000) != 0 || v84 > v64)
            {
              v83._seek = "usd/crateFile.cpp";
              v83._write = "_ReadSpecs";
              v83._ub._base = 4077;
              *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
              LOBYTE(v83._extra) = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Failed to read spec types of size %llu with remaining file size is %lld of %lld", v84, v64, v62);
            }

            else
            {
              if ((v84 - 1) < CompressedBufferSize)
              {
                sub_29A4D3508(a2, v47, v84);
                pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v47, v84, v79, v83._cookie, v48, v65);
                v66 = v5;
                v67 = v83._cookie;
                if (v83._cookie)
                {
                  v68 = 0;
                  v69 = 8;
                  do
                  {
                    v70 = *(v79 + 4 * v68);
                    if (v70 >= 0xC)
                    {
                      v83._seek = "usd/crateFile.cpp";
                      v83._write = "_ReadSpecs";
                      v83._ub._base = 4089;
                      *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
                      LOBYTE(v83._extra) = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Invalid spec type %zu", v70);
                      *(*a1 + v69) = 0;
                      v67 = v83._cookie;
                    }

                    else
                    {
                      *(*a1 + v69) = v70;
                    }

                    v68 = v68 + 1;
                    v69 += 12;
                  }

                  while (v68 != v67);
                }

                if (v79)
                {
                  *(&v79 + 1) = v79;
                  operator delete(v79);
                }

                operator delete[](v48);
                operator delete[](v47);
                v5 = v66;
                v7 = a1 + 512;
                goto LABEL_15;
              }

              v83._seek = "usd/crateFile.cpp";
              v83._write = "_ReadSpecs";
              v83._ub._base = 4096;
              *&v83._ub._size = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
              LOBYTE(v83._extra) = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v83._seek, 3, "Failed to read spectypes, size > compressedBufferSize.");
            }
          }
        }
      }
    }

    if (v79)
    {
      *(&v79 + 1) = v79;
      operator delete(v79);
    }

    operator delete[](v48);
    operator delete[](v47);
    goto LABEL_113;
  }

LABEL_15:
  v78 = v5;
  v13 = sub_29A4EA5F4(&v83._seek, 0, 0.0, 0.5);
  memset(&v83._cookie, 0, 24);
  v14 = *a1;
  v15 = a1[1];
  if (*a1 == v15)
  {
    v5 = v78;
    goto LABEL_112;
  }

  v77 = v7;
  v16 = (v14 + 8);
  v17 = *a1;
  do
  {
    v18 = *(v16 - 2);
    v19 = a1[12];
    if (v18 >= (a1[13] - v19) >> 3)
    {
      v20 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v13);
    }

    else
    {
      v20 = (v19 + 8 * v18);
    }

    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v20))
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec at index %zu has empty path", v21, v22, 0xAAAAAAAAAAAAAAABLL * (&v14[-*a1] >> 2));
      v13 = sub_29A091654(&v83._cookie, &v79);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79);
      }

      v23 = v16;
      goto LABEL_47;
    }

    v23 = (v17 + 8);
    if (*v16 && *v16 < 12)
    {
      v13 = sub_29A4EA798(&v83._seek, v20, v20);
      if (v24)
      {
        goto LABEL_48;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v20, &v83._bf);
      p_bf = &v83._bf;
      if (*(&v83._lbfsize + 7) < 0)
      {
        p_bf = v83._bf._base;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec <%s> repeated", v25, v26, p_bf);
      v13 = sub_29A091654(&v83._cookie, &v79);
      if ((SHIBYTE(v80) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v28 = v79;
      goto LABEL_44;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v20, &v83._bf);
    if (*(&v83._lbfsize + 7) >= 0)
    {
      v31 = &v83._bf;
    }

    else
    {
      v31 = v83._bf._base;
    }

    v32 = *v16;
    if (*v16)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("invalid spec type value %d", v29, v30, *v16);
      p = &v83;
      if (*(&v83._file + 5) < 0)
      {
        p = v83._p;
      }
    }

    else
    {
      p = "unknown spec type";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec <%s> has %s", v29, v30, v31, p);
    v13 = sub_29A091654(&v83._cookie, &v79);
    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
      if (!v32)
      {
        goto LABEL_45;
      }

LABEL_42:
      if ((*(&v83._file + 5) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v28 = v83._p;
LABEL_44:
      operator delete(v28);
      goto LABEL_45;
    }

    if (v32)
    {
      goto LABEL_42;
    }

LABEL_45:
    if (*(&v83._lbfsize + 7) < 0)
    {
      operator delete(v83._bf._base);
    }

LABEL_47:
    *v23 = 0;
LABEL_48:
    v17 += 12;
    v34 = v16 + 1;
    v16 += 3;
    v14 += 12;
  }

  while (v34 != v15);
  v5 = v78;
  if (v83._cookie != v83._close)
  {
    v36 = *a1;
    v35 = a1[1];
    if (*a1 == v35)
    {
      v38 = v77;
    }

    else
    {
      v37 = (v36 + 12);
      v38 = v77;
      while (*(v37 - 1))
      {
        v39 = v37 == v35;
        v37 = (v37 + 12);
        if (v39)
        {
          goto LABEL_101;
        }
      }

      v36 = v37 - 12;
      if ((v37 - 12) != v35 && v37 != v35)
      {
        do
        {
          if (*(v37 + 2))
          {
            v71 = *v37;
            *(v36 + 2) = *(v37 + 2);
            *v36 = v71;
            v36 += 12;
          }

          v37 = (v37 + 12);
        }

        while (v37 != v35);
        v35 = a1[1];
      }
    }

    if (v36 != v35)
    {
      a1[1] = v36;
    }

LABEL_101:
    v72 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v83._close - v83._cookie) >> 3));
    if (v83._close == v83._cookie)
    {
      v73 = 0;
    }

    else
    {
      v73 = v72;
    }

    sub_29A4EABA8(v83._cookie, v83._close, &v83._bf, v73, 1);
    v74 = sub_29A3475E4(v83._cookie, v83._close, &v83._bf);
    sub_29A33C380(&v83._cookie, v74, v83._close);
    *&v79 = "usd/crateFile.cpp";
    *(&v79 + 1) = "_ReadSpecs";
    v80 = 4160;
    v81 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
    v82 = 0;
    v75 = (a1 + 840);
    if (*(v38 + 2647) < 0)
    {
      v75 = *v75;
    }

    pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v83._cookie, &v83._bf);
    if (*(&v83._lbfsize + 7) >= 0)
    {
      v76 = &v83._bf;
    }

    else
    {
      v76 = v83._bf._base;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v79, 3, "Corrupt asset @%s@ - ignoring invalid specs: %s.", v75, v76);
    if (*(&v83._lbfsize + 7) < 0)
    {
      operator delete(v83._bf._base);
    }

    v5 = v85;
  }

LABEL_112:
  *&v79 = &v83._cookie;
  sub_29A012C90(&v79);
  *&v79 = &v83._write;
  sub_29A36B394(&v79);
LABEL_113:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v86, v5);
  }
}

void sub_29A4EF390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete[](v40);
  operator delete[](v39);
  sub_29A0E9CEC(v41 - 104);
  _Unwind_Resume(a1);
}

BOOL sub_29A4EF4FC(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A4E7D40(&__p, v16);
  v7 = sub_29A4EF620(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A4DFDC4(a2, __p, v12, (v12 - __p) >> 5);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4EF604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4EF620(uint64_t a1, __sFILE *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 32), a2, (32 * a3), *(a1 + 16) + *(a1 + 8));
  if (v4 != -1)
  {
    *(a1 + 16) += v4;
  }

  return v4 != -1;
}

BOOL sub_29A4EF670(uint64_t a1, int a2, __sFILE *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 24), a3, 8, *(a1 + 8) + *a1);
  if (v4 != -1)
  {
    *(a1 + 8) += v4;
  }

  return v4 != -1;
}

uint64_t sub_29A4EF6CC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4E7ED4(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4EF75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A4EF770(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::TokenIndex]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A4E8380(&__p, v16);
  v7 = sub_29A4EF894(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4EF878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4EF894(uint64_t a1, __sFILE *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 32), a2, (4 * a3), *(a1 + 16) + *(a1 + 8));
  if (v4 != -1)
  {
    *(a1 + 16) += v4;
  }

  return v4 != -1;
}

void sub_29A4EF8E4(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *a3)
{
  *v5 = 0u;
  *__p = 0u;
  sub_29A4EFACC(v5, a1, a2, a3);
  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  v4 = v5[0];
  v5[0] = 0;
  if (v4)
  {
    operator delete[](v4);
  }
}

BOOL sub_29A4EF958(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Field]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A4E85D4(&__p, v16);
  v7 = sub_29A4EFA7C(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4EFA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4EFA7C(uint64_t a1, __sFILE *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 32), a2, (16 * a3), *(a1 + 16) + *(a1 + 8));
  if (v4 != -1)
  {
    *(a1 + 16) += v4;
  }

  return v4 != -1;
}

BOOL sub_29A4EFACC(uint64_t a1, uint64_t a2, _DWORD *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *a4)
{
  sub_29A4E8A78(a1, a4);
  v18 = 0;
  result = sub_29A4EF670(a2 + 8, 0, &v18);
  if (result)
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v11 = v9 - v10;
    v12 = *(a1 + 8);
    v13 = v18;
    if (v12 < v18)
    {
      v13 = *(a1 + 8);
    }

    if (v11 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = (v9 - v10);
    }

    v18 = v14;
    if (v12 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4D3508(a2, *a1, v14);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(*a1, v18, a3, a4, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, Int = unsigned int]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AAE84();
    }

    return 0;
  }

  return result;
}

BOOL sub_29A4EFBE0(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::FieldIndex]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A4E8C78(&__p, v16);
  v7 = sub_29A4EF894(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4EFCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4EFD04(void *a1, __int128 *a2, uint64_t a3, int *a4)
{
  do
  {
    *&v28[1] = -1;
    if (!sub_29A4F0690(a2 + 8, 0, v28))
    {
      break;
    }

    v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4);
    if (v8)
    {
      v9 = a1[15];
      if (v28[2] < ((a1[16] - v9) >> 3) && v28[1] < ((a1[13] - a1[12]) >> 3))
      {
        v10 = (v9 + 8 * v28[2]);
        if ((v29 & 4) != 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a4, v10, &v19);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a4, v10, &v19);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29B2AAF14();
      return;
    }

    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
    sub_29A2258F0(a4, v11);
    sub_29A225948(a4 + 1, v11 + 1);
    v12 = a1[12];
    if (v28[1] >= ((a1[13] - v12) >> 3))
    {
      sub_29B2AAECC();
      return;
    }

    v13 = (v12 + 8 * v28[1]);
    sub_29A2258F0(v13, a4);
    sub_29A225948(v13 + 1, a4 + 1);
    v14 = v29;
    if (v29)
    {
      if ((v29 & 2) != 0)
      {
        v27 = 0;
        if (!sub_29A4EF670(a2 + 8, 0, &v27))
        {
          return;
        }

        v15 = a2[1];
        v20 = *a2;
        v21 = v15;
        v22 = *(a2 + 4);
        v19 = a1;
        v23 = v27;
        v24 = a3;
        sub_29A1E21F4(&v25, a4);
        sub_29A1E2240(&v26, a4 + 1);
        v16 = sub_29A4F06E4(a3, &v19);
        (***(v16 - 40))(*(v16 - 40), v16, v16 - 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
        sub_29A1DE3A4(&v25);
      }

      v17 = a1[12];
      if (v28[1] >= ((a1[13] - v17) >> 3))
      {
        sub_29B2AAF5C();
        return;
      }

      v18 = (v17 + 8 * v28[1]);
      sub_29A2258F0(a4, v18);
      sub_29A225948(a4 + 1, v18 + 1);
    }
  }

  while ((v14 & 3) != 0);
}

void sub_29A4EFF6C(void *a1, __int128 *a2, uint64_t a3, int *a4)
{
  do
  {
    v28 = -1;
    if (!sub_29A4F0A04(a2 + 8, 0, &v28))
    {
      break;
    }

    v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4);
    if (v8)
    {
      v9 = a1[15];
      if (HIDWORD(v28) < ((a1[16] - v9) >> 3) && v28 < ((a1[13] - a1[12]) >> 3))
      {
        v10 = (v9 + 8 * HIDWORD(v28));
        if ((v29 & 4) != 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a4, v10, &v19);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a4, v10, &v19);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29B2AAFEC();
      return;
    }

    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
    sub_29A2258F0(a4, v11);
    sub_29A225948(a4 + 1, v11 + 1);
    v12 = a1[12];
    if (v28 >= ((a1[13] - v12) >> 3))
    {
      sub_29B2AAFA4();
      return;
    }

    v13 = (v12 + 8 * v28);
    sub_29A2258F0(v13, a4);
    sub_29A225948(v13 + 1, a4 + 1);
    v14 = v29;
    if (v29)
    {
      if ((v29 & 2) != 0)
      {
        v27 = 0;
        if (!sub_29A4EF670(a2 + 8, 0, &v27))
        {
          return;
        }

        v15 = a2[1];
        v20 = *a2;
        v21 = v15;
        v22 = *(a2 + 4);
        v19 = a1;
        v23 = v27;
        v24 = a3;
        sub_29A1E21F4(&v25, a4);
        sub_29A1E2240(&v26, a4 + 1);
        v16 = sub_29A4F0A58(a3, &v19);
        (***(v16 - 40))(*(v16 - 40), v16, v16 - 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
        sub_29A1DE3A4(&v25);
      }

      v17 = a1[12];
      if (v28 >= ((a1[13] - v17) >> 3))
      {
        sub_29B2AB034();
        return;
      }

      v18 = (v17 + 8 * v28);
      sub_29A2258F0(a4, v18);
      sub_29A225948(a4 + 1, v18 + 1);
    }
  }

  while ((v14 & 3) != 0);
}

void sub_29A4F01D4(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::WorkDispatcher *a3, unint64_t a4)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  if (sub_29A4EF670(a2 + 8, 0, &v30))
  {
    *v28 = 0u;
    *__p = 0u;
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v30);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v30);
    if (CompressedBufferSize && DecompressionWorkingSpaceSize)
    {
      sub_29A0A171C(&v37, v30);
      if (sub_29A4EFACC(v28, a2, v37, v30))
      {
        v10 = v37;
        if (v37 == v38)
        {
          v11 = 0;
LABEL_13:
          if (v11 + 1 < a4)
          {
            v23 = "usd/crateFile.cpp";
            v24 = "_ReadCompressedPaths";
            v25 = 4480;
            v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
            v27 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths. numPaths = %llu too large for max index = %llu", a4, v11);
          }

          else if (v30 > a4)
          {
            v23 = "usd/crateFile.cpp";
            v24 = "_ReadCompressedPaths";
            v25 = 4486;
            v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
            v27 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths. numEncodedPaths %llu > numPaths = %llu", v30, a4);
          }

          else
          {
            sub_29A38B6A4((a1 + 96), a4);
            v13 = *(a1 + 96);
            v14 = *(a1 + 104);
            v23 = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23 + 1);
            v15 = (v14 - v13) >> 3;
            if (v15 >= 1)
            {
              v16 = v15 + 1;
              do
              {
                sub_29A2258F0(v13, &v23);
                sub_29A225948(v13 + 1, &v23 + 1);
                --v16;
                v13 += 2;
              }

              while (v16 > 1);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
            sub_29A1DE3A4(&v23);
            sub_29A0A171C(&v34, v30);
            if (sub_29A4F0D40(v28, a2, v34, v30))
            {
              v17 = v34;
              if (v34 == v35)
              {
LABEL_26:
                sub_29A0A171C(&v31, v30);
                if (sub_29A4F0D40(v28, a2, v31, v30))
                {
                  v22 = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
                  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(a1, &v37, &v34, &v31, 0, &v22, a3);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
                  sub_29A1DE3A4(&v22);
                  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(a3);
                }
              }

              else
              {
                v18 = (*(a1 + 128) - *(a1 + 120)) >> 3;
                while (1)
                {
                  LODWORD(v19) = *v17;
                  v19 = *v17 >= 0 ? v19 : -v19;
                  if (v18 <= v19)
                  {
                    break;
                  }

                  if (++v17 == v35)
                  {
                    goto LABEL_26;
                  }
                }

                v23 = "usd/crateFile.cpp";
                v24 = "_ReadCompressedPaths";
                v25 = 4507;
                v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
                v27 = 0;
                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Corrupt path element token index in crate file (%d >= %zu)", v19, v18);
              }
            }
          }
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = *v10;
            if (v12 >= a4)
            {
              break;
            }

            if (v11 <= v12)
            {
              v11 = *v10;
            }

            if (++v10 == v38)
            {
              goto LABEL_13;
            }
          }

          v23 = "usd/crateFile.cpp";
          v24 = "_ReadCompressedPaths";
          v25 = 4470;
          v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
          v27 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Corrupt path index in crate file (%u >= %zu)", v12, a4);
        }
      }
    }

    else
    {
      v23 = "usd/crateFile.cpp";
      v24 = "_ReadCompressedPaths";
      v25 = 4457;
      v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>]";
      v27 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths of size %llu", v30);
    }

    v20 = __p[0];
    __p[0] = 0;
    if (v20)
    {
      operator delete[](v20);
    }

    v21 = v28[0];
    v28[0] = 0;
    if (v21)
    {
      operator delete[](v21);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_29A4F05D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_29A4E8A34(&a17);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  v25 = *(v23 - 96);
  if (v25)
  {
    *(v23 - 88) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 72);
  if (v26)
  {
    *(v23 - 64) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4F0658(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29A1DE3A4((a1 + 64));
  return a1;
}

BOOL sub_29A4F0690(uint64_t a1, int a2, __sFILE *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 24), a3, 0x10, *(a1 + 8) + *a1);
  if (v4 != -1)
  {
    *(a1 + 8) += v4;
  }

  return v4 != -1;
}

uint64_t sub_29A4F06E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v10[0] = 0;
  v10[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v10, 0x58uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A2052338;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  *(v5 + 8) = *a2;
  *(v5 + 56) = v7;
  *(v5 + 40) = v6;
  *(v5 + 24) = v8;
  sub_29A1DDD84((v5 + 72), (a2 + 64));
  sub_29A1DDDC0((v5 + 76), (a2 + 68));
  *(v5 + 80) = a1 + 272;
  return v5;
}

uint64_t sub_29A4F0790(uint64_t a1)
{
  *a1 = &unk_2A2052338;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 76));
  sub_29A1DE3A4((a1 + 72));
  return a1;
}

void sub_29A4F07E0(_DWORD *a1)
{
  *a1 = &unk_2A2052338;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 19);
  sub_29A1DE3A4(a1 + 18);

  operator delete(a1);
}

uint64_t sub_29A4F0840(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F08E4(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 80));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F08D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4F08E4(uint64_t a1)
{
  v2 = *a1;
  sub_29A4E9AAC(&v10, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateFile::CrateFile::Open", "_ReadPaths");
  v7 = *(a1 + 8);
  v9 = *(a1 + 32);
  v3 = *(a1 + 56);
  v8 = *(a1 + 48);
  sub_29A1E21F4(&v5, (a1 + 64));
  sub_29A1E2240(&v6, (a1 + 68));
  sub_29A4EFD04(v2, &v7, v3, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  result = sub_29A1DE3A4(&v5);
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

void sub_29A4F09B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(v2 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F09CC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29A1DE3A4((a1 + 64));
  return a1;
}

BOOL sub_29A4F0A04(uint64_t a1, int a2, __sFILE *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 24), a3, 0xC, *(a1 + 8) + *a1);
  if (v4 != -1)
  {
    *(a1 + 8) += v4;
  }

  return v4 != -1;
}

uint64_t sub_29A4F0A58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v10[0] = 0;
  v10[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v10, 0x58uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A2052380;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  *(v5 + 8) = *a2;
  *(v5 + 56) = v7;
  *(v5 + 40) = v6;
  *(v5 + 24) = v8;
  sub_29A1DDD84((v5 + 72), (a2 + 64));
  sub_29A1DDDC0((v5 + 76), (a2 + 68));
  *(v5 + 80) = a1 + 272;
  return v5;
}

uint64_t sub_29A4F0B04(uint64_t a1)
{
  *a1 = &unk_2A2052380;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 76));
  sub_29A1DE3A4((a1 + 72));
  return a1;
}

void sub_29A4F0B54(_DWORD *a1)
{
  *a1 = &unk_2A2052380;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 19);
  sub_29A1DE3A4(a1 + 18);

  operator delete(a1);
}

uint64_t sub_29A4F0BB4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F0C58(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 80));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F0C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4F0C58(uint64_t a1)
{
  v2 = *a1;
  sub_29A4E9AAC(&v10, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateFile::CrateFile::Open", "_ReadPaths");
  v7 = *(a1 + 8);
  v9 = *(a1 + 32);
  v3 = *(a1 + 56);
  v8 = *(a1 + 48);
  sub_29A1E21F4(&v5, (a1 + 64));
  sub_29A1E2240(&v6, (a1 + 68));
  sub_29A4EFF6C(v2, &v7, v3, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  result = sub_29A1DE3A4(&v5);
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

void sub_29A4F0D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(v2 - 48);
  _Unwind_Resume(a1);
}

BOOL sub_29A4F0D40(uint64_t a1, uint64_t a2, _DWORD *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *a4)
{
  sub_29A4E8A78(a1, a4);
  v18 = 0;
  result = sub_29A4EF670(a2 + 8, 0, &v18);
  if (result)
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v11 = v9 - v10;
    v12 = *(a1 + 8);
    v13 = v18;
    if (v12 < v18)
    {
      v13 = *(a1 + 8);
    }

    if (v11 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = (v9 - v10);
    }

    v18 = v14;
    if (v12 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4D3508(a2, *a1, v14);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(*a1, v18, a3, a4, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, Int = int]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AB07C();
    }

    return 0;
  }

  return result;
}

BOOL sub_29A4F0E54(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Spec_0_0_1]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A4EA108(&__p, v16);
  v7 = sub_29A4EFA7C(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F0F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4F0F78(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Spec]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A4EA41C(&__p, v16);
  v7 = sub_29A4F10A8(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A4EA498(a2, __p, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 2));
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F108C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4F10A8(uint64_t a1, __sFILE *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 32), a2, (12 * a3), *(a1 + 16) + *(a1 + 8));
  if (v4 != -1)
  {
    *(a1 + 16) += v4;
  }

  return v4 != -1;
}

void sub_29A4F10FC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a1 + 24) = *(a2 + 16);
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  if (sub_29A4F327C(a1, __p))
  {
    *a3 = *__p;
    *(a3 + 16) = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29A4F1170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4F118C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 6544);
  v5 = *(a1 + 6552);
  if (v4 != v5)
  {
    v15 = v2;
    v16 = v3;
    v6 = -1;
    v7 = -1;
    do
    {
      v8 = *(v4 + 16);
      if (v8 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = *(v4 + 16);
      }

      if (v6 == -1)
      {
        v6 = *(v4 + 16);
      }

      else
      {
        v6 = v9;
      }

      v10 = *(v4 + 24) + v8;
      if (v10 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      if (v7 == -1)
      {
        v7 = v10;
      }

      else
      {
        v7 = v11;
      }

      v4 += 32;
    }

    while (v4 != v5);
    v12 = v6 == -1 || v7 == -1;
    if (!v12 && (*(**(a2 + 8) + 16))(*(a2 + 8)) < v7 - v6)
    {
      v13[0] = "usd/crateFile.cpp";
      v13[1] = "_PrefetchStructuralSections";
      v13[2] = 3867;
      v13[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PrefetchStructuralSections(Reader) const [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v14 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 3, "Usd crate file corrupt, table of contents section size error");
    }
  }
}

void sub_29A4F127C(uint64_t a1, uint64_t a2)
{
  v53[9] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadTokens", 0);
  }

  else
  {
    v5 = 0;
  }

  v45 = v5;
  v46 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "TOKENS");
  if (!Section)
  {
    goto LABEL_47;
  }

  v7 = (a2 + 8);
  v8 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  v9 = *(Section + 2);
  if (v8 > v9 && (v9 & 0x8000000000000000) == 0)
  {
    *(a2 + 24) = v9;
    v44 = 0;
    if ((sub_29A4E5308((a2 + 8), &v44, 8uLL) & 1) == 0)
    {
      goto LABEL_47;
    }

    __p = 0;
    if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) > 0x3FFu)
    {
      __sz = 0;
      if ((sub_29A4E5308((a2 + 8), &__sz, 8uLL) & 1) == 0)
      {
        goto LABEL_46;
      }

      v42 = 0;
      if ((sub_29A4E5308((a2 + 8), &v42, 8uLL) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (!__sz || !v42)
      {
        v47 = "usd/crateFile.cpp";
        v48 = "_ReadTokens";
        v49 = 4233;
        v50 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
        v51 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Usd crate file corrupt, tokens section is empty");
        goto LABEL_46;
      }

      v26 = (*(**v7 + 16))();
      v27 = *(a2 + 24);
      v28 = v26 - v27;
      v29 = v42;
      if (v27 < 0 || (v28 & 0x8000000000000000) != 0 || v42 > v28)
      {
        v47 = "usd/crateFile.cpp";
        v48 = "_ReadTokens";
        v49 = 4239;
        v50 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
        v51 = 0;
        v36 = (*(**v7 + 16))();
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Failed to read tokens size %llu with remaining file size is %lld of %lld", v29, v28, v36);
        goto LABEL_46;
      }

      CompressedBufferSize = pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize(__sz);
      v31 = v42;
      if (!CompressedBufferSize || CompressedBufferSize < v42)
      {
        v47 = "usd/crateFile.cpp";
        v48 = "_ReadTokens";
        v49 = 4246;
        v50 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
        v51 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Failed to read tokens. Corrupt compression data. Compressed size %llu, uncompressed size %llu", v42, __sz);
        goto LABEL_46;
      }

      v32 = __sz;
      v14 = operator new[](__sz);
      __p = v14;
      v33 = operator new[](v31);
      sub_29A4E5308(v7, v33, v31);
      pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(v33, v14, v42, __sz);
      v15 = &v14[v32];
      v16 = __sz;
      operator delete[](v33);
    }

    else
    {
      __sz = 0;
      if ((sub_29A4E5308((a2 + 8), &__sz, 8uLL) & 1) == 0)
      {
        goto LABEL_46;
      }

      v10 = (*(**v7 + 16))();
      v11 = *(a2 + 24);
      v12 = v10 - v11;
      v13 = __sz;
      if (v11 < 0 || (v12 & 0x8000000000000000) != 0 || __sz > v12)
      {
        v47 = "usd/crateFile.cpp";
        v48 = "_ReadTokens";
        v49 = 4217;
        v50 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
        v51 = 0;
        v35 = (*(**v7 + 16))();
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Failed to read tokens size %llu with remaining file size being %lld of %lld", v13, v12, v35);
        goto LABEL_46;
      }

      v14 = operator new[](__sz);
      __p = v14;
      sub_29A4E5308(v7, v14, v13);
      v15 = &v14[v13];
      v16 = __sz;
    }

    if (v14 != v15 && *(v15 - 1))
    {
      v47 = "usd/crateFile.cpp";
      v48 = "_ReadTokens";
      v49 = 4261;
      v50 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v51 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Tokens section not null-terminated in crate file");
      *(v15 - 1) = 0;
    }

    v17 = v44;
    if (v44 - 1 >= v16)
    {
      v47 = "usd/crateFile.cpp";
      v48 = "_ReadTokens";
      v49 = 4271;
      v50 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v51 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Failed to read tokens. Corrupt data. Data size %llu, num tokens %llu", v16, v44);
      __p = 0;
    }

    else
    {
      v18 = *(a1 + 120);
      v19 = *(a1 + 128);
      v20 = a1 + 120;
      if (v19 != v18)
      {
        do
        {
          v22 = *(v19 - 8);
          v19 -= 8;
          v21 = v22;
          if ((v22 & 7) != 0)
          {
            atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        while (v19 != v18);
        v17 = v44;
      }

      *(a1 + 128) = v18;
      sub_29A3275DC((a1 + 120), v17);
      v14[v16 - 1] = 0;
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v47);
      v23 = 0;
      if (v14 < v15 && v44)
      {
        v23 = 0;
        v24 = __p;
        while (v14 - v24 < v16)
        {
          __sz = 0;
          v38 = v52;
          v25 = tbb::internal::allocate_additional_child_of_proxy::allocate(&__sz, 0x28uLL);
          *(v25 - 11) = 1;
          *v25 = &unk_2A20523C8;
          v25[1] = v20;
          v25[2] = v23;
          v25[3] = v14;
          v25[4] = v53;
          (***(v25 - 5))();
          v14 += strlen(v14) + 1;
          ++v23;
          if (v14 >= v15 || v23 == v44)
          {
            goto LABEL_29;
          }
        }

        __sz = "usd/crateFile.cpp";
        v38 = "_ReadTokens";
        v39 = 4305;
        v40 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
        v41 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz, 3, "Failed read tokens, buffer overflow.");
      }

      else
      {
LABEL_29:
        pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v47);
        if (v23 != v44)
        {
          __sz = "usd/crateFile.cpp";
          v38 = "_ReadTokens";
          v39 = 4315;
          v40 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
          v41 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__sz, 3, "Crate file claims %zu tokens, found %zu", v44, v23);
        }

        sub_29A4E7DB8(&__p);
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v47);
      v14 = __p;
      __p = 0;
      if (!v14)
      {
        goto LABEL_46;
      }
    }

    operator delete[](v14);
LABEL_46:
    v5 = v45;
    goto LABEL_47;
  }

  v47 = "usd/crateFile.cpp";
  v48 = "_ReadTokens";
  v49 = 4191;
  v50 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadTokens(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
  v51 = 0;
  v34 = (*(**v7 + 16))();
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Usd crate file corrupt, tokens section is possibly truncatedat offset %lld but file size is %lld", v9, v34);
LABEL_47:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v46, v5);
  }
}

void sub_29A4F19B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, char a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete[](__p);
  }

  sub_29A0E9CEC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F1A5C(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadStrings", 0);
  }

  else
  {
    v5 = 0;
  }

  result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "STRINGS");
  if (result)
  {
    *(a2 + 24) = *(result + 16);
    result = sub_29A4F343C(a2, (a1 + 144));
  }

  if (v5)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }

  return result;
}

void sub_29A4F1B24(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadFields", 0);
  }

  else
  {
    v5 = 0;
  }

  v31[1] = v5;
  v32 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "FIELDS");
  if (!Section)
  {
    goto LABEL_32;
  }

  *(a2 + 24) = *(Section + 2);
  if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) <= 0x3FFu)
  {
    sub_29A4F35C4(a2, (a1 + 48));
    goto LABEL_32;
  }

  v31[0] = 0;
  if (sub_29A4E5308((a2 + 8), v31, 8uLL))
  {
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v31[0]);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v31[0]);
    if (CompressedBufferSize && DecompressionWorkingSpaceSize)
    {
      sub_29A4E83FC((a1 + 48), v31[0]);
      sub_29A01112C(&v26, v31[0]);
      *v28 = 0u;
      *__p = 0u;
      v9 = sub_29A4F36D8(v28, a2, v26, ((v27 - v26) >> 2));
      v10 = __p[0];
      __p[0] = 0;
      if (v10)
      {
        operator delete[](v10);
      }

      v11 = v28[0];
      v28[0] = 0;
      if (v11)
      {
        operator delete[](v11);
      }

      if (!v9)
      {
        goto LABEL_30;
      }

      v12 = v31[0];
      if (v31[0])
      {
        v13 = v26;
        v14 = (*(a1 + 48) + 4);
        do
        {
          v15 = *v13++;
          *v14 = v15;
          v14 += 4;
          v12 = (v12 - 1);
        }

        while (v12);
      }

      __sz = 0;
      if ((sub_29A4E5308((a2 + 8), &__sz, 8uLL) & 1) == 0)
      {
        goto LABEL_30;
      }

      v16 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v17 = *(a2 + 24);
      v18 = v16 - v17;
      v19 = __sz;
      if (v17 < 0 || (v18 & 0x8000000000000000) != 0 || __sz > v18)
      {
        v28[0] = "usd/crateFile.cpp";
        v28[1] = "_ReadFields";
        __p[0] = 3965;
        __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFields(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
        v30 = 0;
        v24 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v28, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", v19, v18, v24);
LABEL_30:
        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }

        goto LABEL_32;
      }

      v20 = operator new[](__sz);
      if (sub_29A4E5308((a2 + 8), v20, v19))
      {
        v28[0] = 0;
        v28[1] = 0;
        __p[0] = 0;
        sub_29A00BF50(v28, v31[0]);
        pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(v20, v28[0], __sz, v28[1] - v28[0]);
        v21 = v28[0];
        if (v31[0])
        {
          v22 = 0;
          v23 = (*(a1 + 48) + 8);
          do
          {
            *v23 = v21[v22];
            v23 += 2;
            v22 = (v22 + 1);
          }

          while (v22 != v31[0]);
          goto LABEL_28;
        }

        if (v28[0])
        {
LABEL_28:
          v28[1] = v21;
          operator delete(v21);
        }
      }

      operator delete[](v20);
      goto LABEL_30;
    }

    if (v31[0])
    {
      v28[0] = "usd/crateFile.cpp";
      v28[1] = "_ReadFields";
      __p[0] = 3946;
      __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFields(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v30 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v28, 3, "Failed read compressed fields of size %llu.", v31[0]);
    }
  }

LABEL_32:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }
}

void sub_29A4F1EF4(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadFieldSets", 0);
  }

  else
  {
    v5 = 0;
  }

  v23[1] = v5;
  v24 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "FIELDSETS");
  if (!Section)
  {
    goto LABEL_25;
  }

  *(a2 + 24) = *(Section + 2);
  if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) <= 0x3FFu)
  {
    if ((sub_29A4F37E0(a2, (a1 + 72)) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  v23[0] = 0;
  if ((sub_29A4E5308((a2 + 8), v23, 8uLL) & 1) == 0)
  {
    goto LABEL_25;
  }

  CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v23[0]);
  DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v23[0]);
  if (!CompressedBufferSize || !DecompressionWorkingSpaceSize)
  {
    v20[0] = "usd/crateFile.cpp";
    v20[1] = "_ReadFieldSets";
    __p[0] = 3905;
    __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFieldSets(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Failed to read compressed fieldSets of size %llu", v23[0]);
    goto LABEL_25;
  }

  sub_29A4E8B14((a1 + 72), v23[0]);
  sub_29A01112C(&v18, v23[0]);
  *v20 = 0u;
  *__p = 0u;
  v10 = sub_29A4F36D8(v20, a2, v18, v23[0]);
  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    operator delete[](v11);
  }

  v12 = v20[0];
  v20[0] = 0;
  if (v12)
  {
    operator delete[](v12);
  }

  if (v10)
  {
    v13 = v23[0];
    v14 = v18;
    if (v23[0])
    {
      v15 = *(a1 + 72);
      v16 = v18;
      do
      {
        v17 = *v16++;
        *v15++ = v17;
        v13 = (v13 - 1);
      }

      while (v13);
    }

    else if (!v18)
    {
LABEL_7:
      v7 = *(a1 + 80);
      if (*(a1 + 72) != v7 && *(v7 - 4) != -1)
      {
        v20[0] = "usd/crateFile.cpp";
        v20[1] = "_ReadFieldSets";
        __p[0] = 3919;
        __p[1] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadFieldSets(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
        v22 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Corrupt field sets in crate file");
        *(*(a1 + 80) - 4) = -1;
      }

      goto LABEL_25;
    }

    v19 = v14;
    operator delete(v14);
    goto LABEL_7;
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

LABEL_25:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5 != 0, v5);
  }
}

void sub_29A4F21A0(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadPaths", 0);
  }

  else
  {
    v5 = 0;
  }

  v35 = v5;
  v36 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection((a1 + 6544), "PATHS");
  if (!Section)
  {
    goto LABEL_28;
  }

  *(a2 + 24) = *(Section + 2);
  v34 = 0;
  if ((sub_29A4E5308((a2 + 8), &v34, 8uLL) & 1) == 0)
  {
    goto LABEL_28;
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v37);
  v7 = (*(a1 + 6576) << 16) | (*(a1 + 6577) << 8);
  if ((v7 | *(a1 + 6578)) == 1)
  {
    sub_29A38B6A4((a1 + 96), v34);
    v8 = *(a1 + 96);
    v9 = *(a1 + 104);
    v28[0] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v28);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v28 + 1);
    v10 = (v9 - v8) >> 3;
    if (v10 >= 1)
    {
      v11 = v10 + 1;
      do
      {
        sub_29A2258F0(v8, v28);
        sub_29A225948(v8 + 1, v28 + 1);
        --v11;
        v8 += 2;
      }

      while (v11 > 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
    sub_29A1DE3A4(v28);
    v31 = *a2;
    v12 = *(a2 + 16);
    v32 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *(a2 + 24);
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v30);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v30 + 1);
    sub_29A4F38F4(a1, &v31, v37, &v30);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30 + 1);
    sub_29A1DE3A4(&v30);
    v13 = v32;
    if (!v32)
    {
      goto LABEL_27;
    }
  }

  else if (v7 > 0x3FF)
  {
    v21 = *a2;
    v20 = *(a2 + 16);
    v22 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(a2 + 24);
    sub_29A4F3E34(a1, &v21, v37, v34);
    v13 = v22;
    if (!v22)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    if (v34 > v14 - *(a2 + 24))
    {
      v28[0] = "usd/crateFile.cpp";
      v28[1] = "_ReadPaths";
      v28[2] = 4352;
      v28[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadPaths(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v28, 3, "Invalid number of paths in file.");
      goto LABEL_27;
    }

    sub_29A38B6A4((a1 + 96), v34);
    v15 = *(a1 + 96);
    v16 = *(a1 + 104);
    v28[0] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v28);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v28 + 1);
    v17 = (v16 - v15) >> 3;
    if (v17 >= 1)
    {
      v18 = v17 + 1;
      do
      {
        sub_29A2258F0(v15, v28);
        sub_29A225948(v15 + 1, v28 + 1);
        --v18;
        v15 += 2;
      }

      while (v18 > 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
    sub_29A1DE3A4(v28);
    v25 = *a2;
    v19 = *(a2 + 16);
    v26 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = *(a2 + 24);
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24 + 1);
    sub_29A4F3B94(a1, &v25, v37, &v24);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
    sub_29A1DE3A4(&v24);
    v13 = v26;
    if (!v26)
    {
      goto LABEL_27;
    }
  }

  sub_29A014BEC(v13);
LABEL_27:
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v37);
  v5 = v35;
LABEL_28:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v36, v5);
  }
}

void sub_29A4F2578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&a33);
  sub_29A0E9CEC(&a31);
  _Unwind_Resume(a1);
}

void sub_29A4F2610(uint64_t *a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("_ReadSpecs", 0);
  }

  else
  {
    v5 = 0;
  }

  v98 = v5;
  v99 = v5 != 0;
  Section = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection(a1 + 818, "SPECS");
  if (Section)
  {
    *(a2 + 24) = *(Section + 2);
    v7 = (*(a1 + 6576) << 16) | (*(a1 + 6577) << 8);
    if ((v7 | *(a1 + 6578)) == 1)
    {
      __p = 0;
      v93 = 0;
      v94 = 0;
      if ((sub_29A4F4AD8(a2, &__p) & 1) == 0)
      {
        if (__p)
        {
          v93 = __p;
          operator delete(__p);
        }

        goto LABEL_113;
      }

      sub_29A4E9F98(a1, (v93 - __p) >> 4);
      v8 = __p;
      v9 = v93;
      if (__p != v93)
      {
        v10 = *a1;
        do
        {
          v11 = *(v8 + 3);
          *v10 = *(v8 + 4);
          *(v10 + 2) = v11;
          v8 += 16;
          v10 += 12;
        }

        while (v8 != v9);
        v8 = __p;
      }

      if (v8)
      {
        v93 = v8;
        operator delete(v8);
      }

      goto LABEL_15;
    }

    if (v7 <= 0x3FF)
    {
      if ((sub_29A4F4BEC(a2, a1) & 1) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_15;
    }

    v89 = 0;
    if ((sub_29A4E5308((a2 + 8), &v89, 8uLL) & 1) == 0)
    {
      goto LABEL_113;
    }

    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v89);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v89);
    if (!CompressedBufferSize || (v41 = DecompressionWorkingSpaceSize) == 0)
    {
      __p = "usd/crateFile.cpp";
      v93 = "_ReadSpecs";
      v94 = 4010;
      v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v96 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read specs of size %llu", v89);
      goto LABEL_113;
    }

    v88.__r_.__value_.__r.__words[0] = 0;
    if ((sub_29A4E5308((a2 + 8), &v88, 8uLL) & 1) == 0)
    {
      goto LABEL_113;
    }

    v42 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v43 = *(a2 + 24);
    v44 = v42 - v43;
    v45 = v88.__r_.__value_.__r.__words[0];
    if (v43 < 0 || (v44 & 0x8000000000000000) != 0 || v88.__r_.__value_.__r.__words[0] > v44)
    {
      __p = "usd/crateFile.cpp";
      v93 = "_ReadSpecs";
      v94 = 4021;
      v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v96 = 0;
      v78 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", v45, v44, v78);
      goto LABEL_113;
    }

    v46 = operator new[](CompressedBufferSize);
    v47 = operator new[](v41);
    v82 = 0uLL;
    v83 = 0;
    if (v45 - 1 >= CompressedBufferSize)
    {
      __p = "usd/crateFile.cpp";
      v93 = "_ReadSpecs";
      v94 = 4043;
      v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v96 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read pathIndexes, size > compressedBufferSize.");
    }

    else
    {
      sub_29A4E5308((a2 + 8), v46, v45);
      sub_29A0A171C(&v82, v89);
      pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v46, v88.__r_.__value_.__l.__data_, v82, v89, v47, v48);
      sub_29A4E9F98(a1, v89);
      v49 = v89;
      if (v89)
      {
        v50 = v82;
        v51 = *a1;
        do
        {
          v52 = *v50++;
          *v51 = v52;
          v51 += 12;
          v49 = (v49 - 1);
        }

        while (v49);
      }

      v86[0] = 0;
      if (sub_29A4E5308((a2 + 8), v86, 8uLL))
      {
        v53 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v54 = *(a2 + 24);
        v55 = (v53 - v54);
        v56 = v86[0];
        if (v54 < 0 || (v55 & 0x8000000000000000) != 0 || v86[0] > v55)
        {
          __p = "usd/crateFile.cpp";
          v93 = "_ReadSpecs";
          v94 = 4053;
          v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
          v96 = 0;
          v79 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read fields of size %llu with remaining file size is %lld of %lld", v56, v55, v79);
        }

        else if (v86[0] - 1 >= CompressedBufferSize)
        {
          __p = "usd/crateFile.cpp";
          v93 = "_ReadSpecs";
          v94 = 4067;
          v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
          v96 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read fsetIndexes, size > compressedBufferSize.");
        }

        else
        {
          sub_29A4E5308((a2 + 8), v46, v86[0]);
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v46, v86[0], v82, v89, v47, v57);
          v58 = v89;
          if (v89)
          {
            v59 = v82;
            v60 = (*a1 + 4);
            do
            {
              v61 = *v59++;
              *v60 = v61;
              v60 += 3;
              v58 = (v58 - 1);
            }

            while (v58);
          }

          v97 = 0;
          if (sub_29A4E5308((a2 + 8), &v97, 8uLL))
          {
            v62 = (*(**(a2 + 8) + 16))(*(a2 + 8));
            v63 = *(a2 + 24);
            v64 = v62 - v63;
            v65 = v97;
            if (v63 < 0 || (v64 & 0x8000000000000000) != 0 || v97 > v64)
            {
              __p = "usd/crateFile.cpp";
              v93 = "_ReadSpecs";
              v94 = 4077;
              v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
              v96 = 0;
              v80 = (*(**(a2 + 8) + 16))(*(a2 + 8));
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read spec types of size %llu with remaining file size is %lld of %lld", v65, v64, v80);
            }

            else
            {
              if ((v97 - 1) < CompressedBufferSize)
              {
                sub_29A4E5308((a2 + 8), v46, v97);
                pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(v46, v97, v82, v89, v47, v66);
                v67 = v5;
                v68 = v89;
                if (v89)
                {
                  v69 = 0;
                  v70 = 8;
                  do
                  {
                    v71 = *(v82 + 4 * v69);
                    if (v71 >= 0xC)
                    {
                      __p = "usd/crateFile.cpp";
                      v93 = "_ReadSpecs";
                      v94 = 4089;
                      v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
                      v96 = 0;
                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Invalid spec type %zu", v71);
                      *(*a1 + v70) = 0;
                      v68 = v89;
                    }

                    else
                    {
                      *(*a1 + v70) = v71;
                    }

                    v69 = (v69 + 1);
                    v70 += 12;
                  }

                  while (v69 != v68);
                }

                if (v82)
                {
                  *(&v82 + 1) = v82;
                  operator delete(v82);
                }

                operator delete[](v47);
                operator delete[](v46);
                v5 = v67;
                goto LABEL_15;
              }

              __p = "usd/crateFile.cpp";
              v93 = "_ReadSpecs";
              v94 = 4096;
              v95 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
              v96 = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read spectypes, size > compressedBufferSize.");
            }
          }
        }
      }
    }

    if (v82)
    {
      *(&v82 + 1) = v82;
      operator delete(v82);
    }

    operator delete[](v47);
    operator delete[](v46);
    goto LABEL_113;
  }

LABEL_15:
  v81 = v5;
  v12 = sub_29A4EA5F4(&__p, 0, 0.0, 0.5);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v13 = *a1;
  v14 = a1[1];
  if (*a1 == v14)
  {
    goto LABEL_112;
  }

  v15 = (v13 + 8);
  v16 = *a1;
  do
  {
    v17 = *(v15 - 2);
    v18 = a1[12];
    if (v17 >= (a1[13] - v18) >> 3)
    {
      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v12);
    }

    else
    {
      v19 = (v18 + 8 * v17);
    }

    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v19))
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec at index %zu has empty path", v20, v21, 0xAAAAAAAAAAAAAAABLL * (&v13[-*a1] >> 2));
      v12 = sub_29A091654(&v89, &v82);
      if (SHIBYTE(v83) < 0)
      {
        operator delete(v82);
      }

      v22 = v15;
      goto LABEL_47;
    }

    v22 = (v16 + 8);
    if (*v15 && *v15 < 12)
    {
      v12 = sub_29A4EA798(&__p, v19, v19);
      if (v23)
      {
        goto LABEL_48;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v19, &v88);
      v26 = &v88;
      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v88.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec <%s> repeated", v24, v25, v26);
      v12 = sub_29A091654(&v89, &v82);
      if ((SHIBYTE(v83) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v27 = v82;
      goto LABEL_44;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v19, &v88);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v88;
    }

    else
    {
      v30 = v88.__r_.__value_.__r.__words[0];
    }

    v31 = *v15;
    if (*v15)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("invalid spec type value %d", v28, v29, *v15);
      v32 = v86;
      if (v87 < 0)
      {
        v32 = v86[0];
      }
    }

    else
    {
      v32 = "unknown spec type";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("spec <%s> has %s", v28, v29, v30, v32);
    v12 = sub_29A091654(&v89, &v82);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(v82);
      if (!v31)
      {
        goto LABEL_45;
      }

LABEL_42:
      if ((v87 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v27 = v86[0];
LABEL_44:
      operator delete(v27);
      goto LABEL_45;
    }

    if (v31)
    {
      goto LABEL_42;
    }

LABEL_45:
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

LABEL_47:
    *v22 = 0;
LABEL_48:
    v16 += 12;
    v33 = v15 + 1;
    v15 += 3;
    v13 += 12;
  }

  while (v33 != v14);
  v5 = v81;
  if (v89 != v90)
  {
    v35 = *a1;
    v34 = a1[1];
    if (*a1 == v34)
    {
      v37 = a1 + 512;
    }

    else
    {
      v36 = (v35 + 12);
      v37 = a1 + 512;
      while (*(v36 - 1))
      {
        v38 = v36 == v34;
        v36 = (v36 + 12);
        if (v38)
        {
          goto LABEL_101;
        }
      }

      v35 = v36 - 12;
      if ((v36 - 12) != v34 && v36 != v34)
      {
        do
        {
          if (*(v36 + 2))
          {
            v72 = *v36;
            *(v35 + 2) = *(v36 + 2);
            *v35 = v72;
            v35 += 12;
          }

          v36 = (v36 + 12);
        }

        while (v36 != v34);
        v34 = a1[1];
      }
    }

    if (v35 != v34)
    {
      a1[1] = v35;
    }

LABEL_101:
    v73 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3));
    if (v90 == v89)
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    sub_29A4EABA8(v89, v90, &v88, v74, 1);
    v75 = sub_29A3475E4(v89, v90, &v88);
    sub_29A33C380(&v89, v75, v90);
    *&v82 = "usd/crateFile.cpp";
    *(&v82 + 1) = "_ReadSpecs";
    v83 = 4160;
    v84 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadSpecs(Reader) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
    v85 = 0;
    v76 = (a1 + 840);
    if (*(v37 + 2647) < 0)
    {
      v76 = *v76;
    }

    pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v89, &v88);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = &v88;
    }

    else
    {
      v77 = v88.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v82, 3, "Corrupt asset @%s@ - ignoring invalid specs: %s.", v76, v77);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v5 = v98;
  }

LABEL_112:
  *&v82 = &v89;
  sub_29A012C90(&v82);
  *&v82 = &v93;
  sub_29A36B394(&v82);
LABEL_113:
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v99, v5);
  }
}

void sub_29A4F310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete[](v40);
  operator delete[](v39);
  sub_29A0E9CEC(v41 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F327C(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AB0C4();
    return 0;
  }

  sub_29A4E7D40(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 32 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A4DFDC4(a2, __p, v12, (v12 - __p) >> 5);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F3374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4F3398(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4E7ED4(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F3428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F343C(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AB138();
    return 0;
  }

  sub_29A4E8380(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 4 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F3534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4F3550(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *a3)
{
  *v5 = 0u;
  *__p = 0u;
  sub_29A4F36D8(v5, a1, a2, a3);
  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  v4 = v5[0];
  v5[0] = 0;
  if (v4)
  {
    operator delete[](v4);
  }
}

uint64_t sub_29A4F35C4(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AB1AC();
    return 0;
  }

  sub_29A4E85D4(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 16 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F36BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4F36D8(uint64_t a1, uint64_t a2, _DWORD *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  sub_29A4E8A78(a1, this);
  v14 = 0;
  result = sub_29A4E5308((a2 + 8), &v14, 8uLL);
  if (result)
  {
    v9 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v10 = *(a2 + 24);
    v11 = *(a1 + 8);
    v12 = v14;
    if (v11 < v14)
    {
      v12 = *(a1 + 8);
    }

    if (v9 - v10 < v12)
    {
      v12 = (v9 - v10);
    }

    v14 = v12;
    if (v11 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4E5308((a2 + 8), *a1, v12);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(*a1, v14, a3, this, *(a1 + 16), v13);
          return 1;
        }

        return result;
      }

      sub_29B2AB220();
    }

    else
    {
      sub_29B2AB294();
    }

    return 0;
  }

  return result;
}

uint64_t sub_29A4F37E0(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AB2DC();
    return 0;
  }

  sub_29A4E8C78(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 4 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A36CF34(a2, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F38D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4F38F4(void *a1, __int128 *a2, uint64_t a3, int *a4)
{
  do
  {
    v31 = -1;
    if (!sub_29A4E5308(a2 + 1, v30, 0x10uLL))
    {
      break;
    }

    v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4);
    if (v8)
    {
      v9 = a1[15];
      if (HIDWORD(v31) < ((a1[16] - v9) >> 3) && v31 < ((a1[13] - a1[12]) >> 3))
      {
        v10 = (v9 + 8 * HIDWORD(v31));
        if ((v32 & 4) != 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a4, v10, &v21);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a4, v10, &v21);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29B2AB398();
      return;
    }

    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
    sub_29A2258F0(a4, v11);
    sub_29A225948(a4 + 1, v11 + 1);
    v12 = a1[12];
    if (v31 >= ((a1[13] - v12) >> 3))
    {
      sub_29B2AB350();
      return;
    }

    v13 = (v12 + 8 * v31);
    sub_29A2258F0(v13, a4);
    sub_29A225948(v13 + 1, a4 + 1);
    v14 = v32;
    if (v32)
    {
      if ((v32 & 2) != 0)
      {
        v29 = 0;
        if (!sub_29A4E5308(a2 + 1, &v29, 8uLL))
        {
          return;
        }

        v21 = a1;
        v22 = *a2;
        v15 = *(a2 + 2);
        v23 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(a2 + 3);
        v25 = v29;
        v26 = a3;
        sub_29A1E21F4(&v27, a4);
        sub_29A1E2240(&v28, a4 + 1);
        v16 = *(a3 + 256);
        v33[0] = 0;
        v33[1] = v16;
        v17 = tbb::internal::allocate_additional_child_of_proxy::allocate(v33, 0x50uLL);
        v18 = sub_29A4F42FC(v17, &v21, a3 + 272);
        (***(v18 - 40))(*(v18 - 40), v17, v17 - 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28);
        sub_29A1DE3A4(&v27);
        if (v23)
        {
          sub_29A014BEC(v23);
        }
      }

      v19 = a1[12];
      if (v31 >= ((a1[13] - v19) >> 3))
      {
        sub_29B2AB3E0();
        return;
      }

      v20 = (v19 + 8 * v31);
      sub_29A2258F0(a4, v20);
      sub_29A225948(a4 + 1, v20 + 1);
    }
  }

  while ((v14 & 3) != 0);
}

void sub_29A4F3B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4F42B8(va);
  _Unwind_Resume(a1);
}

void sub_29A4F3B94(void *a1, __int128 *a2, uint64_t a3, int *a4)
{
  do
  {
    v30 = -1;
    if (!sub_29A4E5308(a2 + 1, &v30, 0xCuLL))
    {
      break;
    }

    v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4);
    if (v8)
    {
      v9 = a1[15];
      if (HIDWORD(v30) < ((a1[16] - v9) >> 3) && v30 < ((a1[13] - a1[12]) >> 3))
      {
        v10 = (v9 + 8 * HIDWORD(v30));
        if ((v31 & 4) != 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a4, v10, &v21);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(a4, v10, &v21);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29B2AB470();
      return;
    }

    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
    sub_29A2258F0(a4, v11);
    sub_29A225948(a4 + 1, v11 + 1);
    v12 = a1[12];
    if (v30 >= ((a1[13] - v12) >> 3))
    {
      sub_29B2AB428();
      return;
    }

    v13 = (v12 + 8 * v30);
    sub_29A2258F0(v13, a4);
    sub_29A225948(v13 + 1, a4 + 1);
    v14 = v31;
    if (v31)
    {
      if ((v31 & 2) != 0)
      {
        v29 = 0;
        if (!sub_29A4E5308(a2 + 1, &v29, 8uLL))
        {
          return;
        }

        v21 = a1;
        v22 = *a2;
        v15 = *(a2 + 2);
        v23 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(a2 + 3);
        v25 = v29;
        v26 = a3;
        sub_29A1E21F4(&v27, a4);
        sub_29A1E2240(&v28, a4 + 1);
        v16 = *(a3 + 256);
        v32[0] = 0;
        v32[1] = v16;
        v17 = tbb::internal::allocate_additional_child_of_proxy::allocate(v32, 0x50uLL);
        v18 = sub_29A4F4688(v17, &v21, a3 + 272);
        (***(v18 - 40))(*(v18 - 40), v17, v17 - 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28);
        sub_29A1DE3A4(&v27);
        if (v23)
        {
          sub_29A014BEC(v23);
        }
      }

      v19 = a1[12];
      if (v30 >= ((a1[13] - v19) >> 3))
      {
        sub_29B2AB4B8();
        return;
      }

      v20 = (v19 + 8 * v30);
      sub_29A2258F0(a4, v20);
      sub_29A225948(a4 + 1, v20 + 1);
    }
  }

  while ((v14 & 3) != 0);
}

void sub_29A4F3E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4F4644(va);
  _Unwind_Resume(a1);
}

void sub_29A4F3E34(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::WorkDispatcher *a3, unint64_t a4)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  if (sub_29A4E5308((a2 + 8), &v30, 8uLL))
  {
    *v28 = 0u;
    *__p = 0u;
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v30);
    DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v30);
    if (CompressedBufferSize && DecompressionWorkingSpaceSize)
    {
      sub_29A0A171C(&v37, v30);
      if (sub_29A4F36D8(v28, a2, v37, v30))
      {
        v10 = v37;
        if (v37 == v38)
        {
          v11 = 0;
LABEL_13:
          if (v11 + 1 < a4)
          {
            v23 = "usd/crateFile.cpp";
            v24 = "_ReadCompressedPaths";
            v25 = 4480;
            v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
            v27 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths. numPaths = %llu too large for max index = %llu", a4, v11);
          }

          else if (v30 > a4)
          {
            v23 = "usd/crateFile.cpp";
            v24 = "_ReadCompressedPaths";
            v25 = 4486;
            v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
            v27 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths. numEncodedPaths %llu > numPaths = %llu", v30, a4);
          }

          else
          {
            sub_29A38B6A4((a1 + 96), a4);
            v13 = *(a1 + 96);
            v14 = *(a1 + 104);
            v23 = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23 + 1);
            v15 = (v14 - v13) >> 3;
            if (v15 >= 1)
            {
              v16 = v15 + 1;
              do
              {
                sub_29A2258F0(v13, &v23);
                sub_29A225948(v13 + 1, &v23 + 1);
                --v16;
                v13 += 2;
              }

              while (v16 > 1);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
            sub_29A1DE3A4(&v23);
            sub_29A0A171C(&v34, v30);
            if (sub_29A4F49D0(v28, a2, v34, v30))
            {
              v17 = v34;
              if (v34 == v35)
              {
LABEL_26:
                sub_29A0A171C(&v31, v30);
                if (sub_29A4F49D0(v28, a2, v31, v30))
                {
                  v22 = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
                  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(a1, &v37, &v34, &v31, 0, &v22, a3);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
                  sub_29A1DE3A4(&v22);
                  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(a3);
                }
              }

              else
              {
                v18 = (*(a1 + 128) - *(a1 + 120)) >> 3;
                while (1)
                {
                  LODWORD(v19) = *v17;
                  v19 = *v17 >= 0 ? v19 : -v19;
                  if (v18 <= v19)
                  {
                    break;
                  }

                  if (++v17 == v35)
                  {
                    goto LABEL_26;
                  }
                }

                v23 = "usd/crateFile.cpp";
                v24 = "_ReadCompressedPaths";
                v25 = 4507;
                v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
                v27 = 0;
                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Corrupt path element token index in crate file (%d >= %zu)", v19, v18);
              }
            }
          }
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = *v10;
            if (v12 >= a4)
            {
              break;
            }

            if (v11 <= v12)
            {
              v11 = *v10;
            }

            if (++v10 == v38)
            {
              goto LABEL_13;
            }
          }

          v23 = "usd/crateFile.cpp";
          v24 = "_ReadCompressedPaths";
          v25 = 4470;
          v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
          v27 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Corrupt path index in crate file (%u >= %zu)", v12, a4);
        }
      }
    }

    else
    {
      v23 = "usd/crateFile.cpp";
      v24 = "_ReadCompressedPaths";
      v25 = 4457;
      v26 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadCompressedPaths(Reader, WorkDispatcher &, uint64_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>]";
      v27 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 3, "Failed to read compressed paths of size %llu", v30);
    }

    v20 = __p[0];
    __p[0] = 0;
    if (v20)
    {
      operator delete[](v20);
    }

    v21 = v28[0];
    v28[0] = 0;
    if (v21)
    {
      operator delete[](v21);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_29A4F4238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_29A4E8A34(&a17);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  v25 = *(v23 - 96);
  if (v25)
  {
    *(v23 - 88) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 72);
  if (v26)
  {
    *(v23 - 64) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4F42B8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
  sub_29A1DE3A4((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t sub_29A4F42FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  *a1 = &unk_2A2052410;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 40);
  sub_29A1DDD84((a1 + 64), (a2 + 56));
  sub_29A1DDDC0((a1 + 68), (a2 + 60));
  *(a1 + 72) = a3;
  return a1;
}

uint64_t sub_29A4F4394(uint64_t a1)
{
  *a1 = &unk_2A2052410;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29A1DE3A4((a1 + 64));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void sub_29A4F43F0(void *a1)
{
  *a1 = &unk_2A2052410;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 17);
  sub_29A1DE3A4(a1 + 16);
  v2 = *(a1 + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  operator delete(a1);
}

uint64_t sub_29A4F445C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F4500(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 72));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F44EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4F4500(uint64_t a1)
{
  v2 = *a1;
  sub_29A4E9AAC(&v13, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateFile::CrateFile::Open", "_ReadPaths");
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 40);
    *(&v10 + 1) = v4;
    v11 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a1 + 40);
    *(&v10 + 1) = *(a1 + 16);
    v11 = 0;
  }

  *&v10 = v3;
  v12 = v6;
  v7 = *(a1 + 48);
  sub_29A1E21F4(&v8, (a1 + 56));
  sub_29A1E2240(&v9, (a1 + 60));
  sub_29A4F38F4(v2, &v10, v7, &v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }
}

void sub_29A4F4610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, std::__shared_weak_count *);
  v9 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F4644(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
  sub_29A1DE3A4((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t sub_29A4F4688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  *a1 = &unk_2A2052458;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 40);
  sub_29A1DDD84((a1 + 64), (a2 + 56));
  sub_29A1DDDC0((a1 + 68), (a2 + 60));
  *(a1 + 72) = a3;
  return a1;
}

uint64_t sub_29A4F4720(uint64_t a1)
{
  *a1 = &unk_2A2052458;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29A1DE3A4((a1 + 64));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void sub_29A4F477C(void *a1)
{
  *a1 = &unk_2A2052458;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 17);
  sub_29A1DE3A4(a1 + 16);
  v2 = *(a1 + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  operator delete(a1);
}

uint64_t sub_29A4F47E8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F488C(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 72));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F4878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4F488C(uint64_t a1)
{
  v2 = *a1;
  sub_29A4E9AAC(&v13, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateFile::CrateFile::Open", "_ReadPaths");
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 40);
    *(&v10 + 1) = v4;
    v11 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a1 + 40);
    *(&v10 + 1) = *(a1 + 16);
    v11 = 0;
  }

  *&v10 = v3;
  v12 = v6;
  v7 = *(a1 + 48);
  sub_29A1E21F4(&v8, (a1 + 56));
  sub_29A1E2240(&v9, (a1 + 60));
  sub_29A4F3B94(v2, &v10, v7, &v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }
}

void sub_29A4F499C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, std::__shared_weak_count *);
  v9 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F49D0(uint64_t a1, uint64_t a2, _DWORD *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  sub_29A4E8A78(a1, this);
  v14 = 0;
  result = sub_29A4E5308((a2 + 8), &v14, 8uLL);
  if (result)
  {
    v9 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v10 = *(a2 + 24);
    v11 = *(a1 + 8);
    v12 = v14;
    if (v11 < v14)
    {
      v12 = *(a1 + 8);
    }

    if (v9 - v10 < v12)
    {
      v12 = (v9 - v10);
    }

    v14 = v12;
    if (v11 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4E5308((a2 + 8), *a1, v12);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::DecompressFromBuffer(*a1, v14, a3, this, *(a1 + 16), v13);
          return 1;
        }

        return result;
      }

      sub_29B2AB500();
    }

    else
    {
      sub_29B2AB574();
    }

    return 0;
  }

  return result;
}

uint64_t sub_29A4F4AD8(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AB5BC();
    return 0;
  }

  sub_29A4EA108(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 16 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F4BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4F4BEC(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AB630();
    return 0;
  }

  sub_29A4EA41C(&__p, v13);
  v7 = sub_29A4E5308((a1 + 8), __p, 12 * v13);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A4EA498(a2, __p, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 2));
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A4F4CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4F4D10(pxrInternal__aapl__pxrReserved__ *a1)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v3 = *(DetachedDispatcher + 256);
    v9[0] = 0;
    v9[1] = v3;
    v4 = tbb::internal::allocate_additional_child_of_proxy::allocate(v9, 0x28uLL);
    *(v4 - 11) = 1;
    *v4 = &unk_2A20524A0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = v7;
    v5 = v8;
    v7 = 0uLL;
    v8 = 0;
    *(v4 + 24) = v5;
    *(v4 + 32) = DetachedDispatcher + 272;
    v6 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v6);
  }

  else
  {
    sub_29A4F4E34();
  }

  v9[0] = &v7;
  sub_29A1E234C(v9);
}

void sub_29A4F4E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

void sub_29A4F4E34()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

uint64_t sub_29A4F4ED4(uint64_t a1)
{
  *a1 = &unk_2A20524A0;
  v3 = (a1 + 8);
  sub_29A1E234C(&v3);
  return a1;
}

void sub_29A4F4F2C(char *a1)
{
  *a1 = &unk_2A20524A0;
  v2 = (a1 + 8);
  sub_29A1E234C(&v2);
  operator delete(a1);
}

uint64_t sub_29A4F4F88(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F4E34();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F5018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4F502C(pxrInternal__aapl__pxrReserved__ *a1)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v3 = *(DetachedDispatcher + 256);
    v9[0] = 0;
    v9[1] = v3;
    v4 = tbb::internal::allocate_additional_child_of_proxy::allocate(v9, 0x28uLL);
    *(v4 - 11) = 1;
    *v4 = &unk_2A20524E8;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = v7;
    v5 = v8;
    v7 = 0uLL;
    v8 = 0;
    *(v4 + 24) = v5;
    *(v4 + 32) = DetachedDispatcher + 272;
    v6 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v6);
  }

  else
  {
    sub_29A4F5150();
  }

  v9[0] = &v7;
  sub_29A124AB0(v9);
}

void sub_29A4F5134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  _Unwind_Resume(a1);
}

void sub_29A4F5150()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

uint64_t sub_29A4F51F0(uint64_t a1)
{
  *a1 = &unk_2A20524E8;
  v3 = (a1 + 8);
  sub_29A124AB0(&v3);
  return a1;
}

void sub_29A4F5248(char *a1)
{
  *a1 = &unk_2A20524E8;
  v2 = (a1 + 8);
  sub_29A124AB0(&v2);
  operator delete(a1);
}

uint64_t sub_29A4F52A4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F5150();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F5334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4F5348(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  __p = *a1;
  v3 = *(a1 + 2);
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v6 = *(DetachedDispatcher + 256);
    v10[0] = 0;
    v10[1] = v6;
    v7 = tbb::internal::allocate_additional_child_of_proxy::allocate(v10, 0x28uLL);
    *(v7 - 11) = 1;
    *v7 = &unk_2A2052530;
    v7[1] = v1;
    v7[2] = v2;
    v7[3] = v3;
    v7[4] = DetachedDispatcher + 272;
    v8 = (***(v7 - 5))();
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v8);
  }

  else
  {
    sub_29A4F5468();
    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_29A4F544C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4F5468()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

void *sub_29A4F5508(void *a1)
{
  *a1 = &unk_2A2052530;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29A4F5558(void *__p)
{
  *__p = &unk_2A2052530;
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A4F55B8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F5468();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F5648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F565C(uint64_t *a1)
{
  v1 = sub_29A155CF8(v7, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29A4F579C(DetachedDispatcher, v7);
    v5 = (***(v4 - 5))(*(v4 - 5), v4, (v4 - 1));
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29A4F56FC();
  }

  return sub_29A4E57E8(v7);
}

void sub_29A4F56E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4E57E8(va);
  _Unwind_Resume(a1);
}

void sub_29A4F56FC()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

void *sub_29A4F579C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x38uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A2052578;
  sub_29A155CF8((v5 + 1), a2);
  v5[6] = a1 + 272;
  return v5;
}

void *sub_29A4F5820(void *a1)
{
  *a1 = &unk_2A2052578;
  sub_29A4E57E8((a1 + 1));
  return a1;
}

void sub_29A4F5864(void *a1)
{
  *a1 = &unk_2A2052578;
  sub_29A4E57E8((a1 + 1));

  operator delete(a1);
}

uint64_t sub_29A4F58B8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F56FC();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F5948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4F595C(uint64_t a1)
{
  v1 = sub_29A4F5A14(v6, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29A4F5B68(DetachedDispatcher, v6);
    v5 = (***(v4 - 5))(*(v4 - 5), v4, (v4 - 1));
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29A4F5AC8();
  }

  v8 = &v7;
  sub_29A4DABE8(&v8);
}

void sub_29A4F59F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 24) = &a11;
  sub_29A4DABE8((v11 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F5A14(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = (a2 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  if (v5 == *(a1 + 16))
  {
    v5 = sub_29A4E55C8();
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *a2 = 0;
  sub_29A4DAC3C(v4);
  v6 = sub_29A4E55C8();
  *(a2 + 72) = 0;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return a1;
}

void sub_29A4F5AC8()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

void *sub_29A4F5B68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x60uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20525C0;
  sub_29A4F5A14((v5 + 1), a2);
  v5[11] = a1 + 272;
  return v5;
}

uint64_t sub_29A4F5BEC(uint64_t a1)
{
  *a1 = &unk_2A20525C0;
  v3 = (a1 + 16);
  sub_29A4DABE8(&v3);
  return a1;
}

void sub_29A4F5C44(char *a1)
{
  *a1 = &unk_2A20525C0;
  v2 = (a1 + 16);
  sub_29A4DABE8(&v2);
  operator delete(a1);
}

uint64_t sub_29A4F5CA0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F5AC8();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 88));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F5D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F5D44(uint64_t a1)
{
  v5 = (a1 + 776);
  sub_29A4DE71C(&v5);
  v2 = *(a1 + 760);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A4DC550(a1 + 712);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher((a1 + 368));
  sub_29A4DC5D0((a1 + 344));
  sub_29A4DC728((a1 + 320));
  v3 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v5 = (a1 + 200);
  sub_29A4DE7C0(&v5);
  sub_29A4DE848(a1 + 160);
  sub_29A0EB570(a1 + 120);
  sub_29A4DE8D0(a1 + 80);
  sub_29A0EB4E8(a1 + 40);
  return sub_29A155EF4(a1);
}

void *sub_29A4F5E00(uint64_t a1, char *a2, void *a3, void *a4)
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

  v23 = a1;
  if (v10)
  {
    v11 = sub_29A10E224(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v19 = v11;
  v20 = &v11[40 * v4];
  v21 = v20;
  v22 = &v11[40 * v10];
  v12 = sub_29A008E78(v20, a2);
  v12[3] = *a3;
  v12[4] = *a4;
  v13 = v21 + 40;
  v14 = *(a1 + 8) - *a1;
  v15 = &v20[-v14];
  memcpy(&v20[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v22;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  sub_29A121378(&v19);
  return v13;
}

void sub_29A4F5F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A121378(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F5F40(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A4F60E4(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A4F60AC();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x666666666666667)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 34) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A4F6084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A108030(va);
  _Unwind_Resume(a1);
}

void *sub_29A4F60AC()
{
  if ((atomic_load_explicit(&qword_2A14F80C0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AB6A4();
  }

  return &unk_2A14F8098;
}

void *sub_29A4F60E4(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A10E7C8(a1, a2);
    v4 = a1[1];
    v5 = v4 + 40 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 40;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A4F6170(uint64_t *a1, double *a2, uint64_t a3, uint64_t **a4)
{
  v7 = 0.0;
  if (*a2 != 0.0)
  {
    v7 = *a2;
  }

  v8 = bswap64(0x9E3779B97F4A7C55 * *&v7);
  v9 = *a1;
  v10 = a1[4];
  v11 = v8 & *a1;
  result = v10 + 40 * v11;
  if (*(result + 4) < 0)
  {
    v13 = 0;
LABEL_9:
    while (sub_29A4F631C(a1, v13))
    {
      v14 = a1[4];
      v11 = v8 & *a1;
      if (*(v14 + 40 * v11 + 4) < 0)
      {
        v13 = 0;
      }

      else
      {
        LOWORD(v13) = 0;
        do
        {
          v13 = (v13 + 1);
          v11 = (v11 + 1) & *a1;
        }

        while (v13 <= *(v14 + 40 * v11 + 4));
      }
    }

    v15 = a1[4] + 40 * v11;
    if (*(v15 + 4) == -1)
    {
      *(v15 + 8) = **a4;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 16) = 0;
      *v15 = v8;
      *(v15 + 4) = v13;
    }

    else
    {
      sub_29A4F63F0(a1, v11, v13, v8, a3, a4);
    }

    ++a1[6];
    return a1[4] + 40 * v11;
  }

  else
  {
    LOWORD(v13) = 0;
    while (*(result + 8) != *a2)
    {
      v13 = (v13 + 1);
      v11 = (v11 + 1) & v9;
      result = v10 + 40 * v11;
      if (v13 > *(result + 4))
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_29A4F631C(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A4F6438(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A4F6438(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A4F63F0(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, uint64_t **a6)
{
  v6 = **a6;
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_29A4F6620(a1, a2, a3, a4, &v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_29A4F6438(uint64_t a1, unint64_t a2)
{
  sub_29A4F5F40(&v9, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v10[4];
    v6 = v3 + 1;
    do
    {
      if (*(v6 - 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v8 = *v6;
          if (*v6 == 0.0)
          {
            v8 = 0.0;
          }

          v7 = bswap64(0x9E3779B97F4A7C55 * *&v8);
        }

        else
        {
          v7 = *(v6 - 2);
        }

        sub_29A4F6568(&v9, v9 & v7, 0, v7, v6);
      }

      v6 += 5;
    }

    while (v6 - 1 != v4);
  }

  v10[5] = *(a1 + 48);
  sub_29A10A4B4(&v9, a1);
  v11 = v10;
  sub_29A108030(&v11);
}

void sub_29A4F6548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = &a11;
  sub_29A108030(&a20);
  _Unwind_Resume(a1);
}

__n128 sub_29A4F6568(void *a1, uint64_t a2, __int16 a3, int a4, void *a5)
{
  while (1)
  {
    v5 = a1[4] + 40 * a2;
    v6 = *(v5 + 4);
    if (v6 >= a3)
    {
      goto LABEL_4;
    }

    v7 = *a5;
    if (v6 == -1)
    {
      break;
    }

    *a5 = *(v5 + 8);
    *(v5 + 8) = v7;
    v8 = a5[1];
    a5[1] = *(v5 + 16);
    *(v5 + 16) = v8;
    v9 = a5[2];
    a5[2] = *(v5 + 24);
    *(v5 + 24) = v9;
    v10 = a5[3];
    a5[3] = *(v5 + 32);
    *(v5 + 32) = v10;
    *(v5 + 4) = a3;
    LODWORD(v10) = *v5;
    *v5 = a4;
    a3 = v6;
    a4 = v10;
LABEL_4:
    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  *(v5 + 8) = v7;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  result = *(a5 + 1);
  *(v5 + 16) = result;
  *(v5 + 32) = a5[3];
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = 0;
  *v5 = a4;
  *(v5 + 4) = a3;
  return result;
}

__n128 sub_29A4F6620(uint64_t *a1, uint64_t a2, __int16 a3, int a4, void *a5)
{
  v5 = a1[4] + 40 * a2;
  v6 = *a5;
  *a5 = *(v5 + 8);
  *(v5 + 8) = v6;
  v7 = a5[1];
  a5[1] = *(v5 + 16);
  *(v5 + 16) = v7;
  v8 = a5[2];
  a5[2] = *(v5 + 24);
  *(v5 + 24) = v8;
  v9 = a5[3];
  a5[3] = *(v5 + 32);
  *(v5 + 32) = v9;
  v10 = *(v5 + 4);
  *(v5 + 4) = a3;
  v11 = *v5;
  *v5 = a4;
  v12 = *a1;
  v13 = (a2 + 1) & *a1;
  v14 = v10 + 1;
  v15 = a1[4];
  v16 = (v15 + 40 * v13);
  v17 = &v16->n128_u16[2];
  for (i = v16->n128_u16[2]; i != 0xFFFF; i = v16->n128_u16[2])
  {
    if (v14 <= i)
    {
      i = v14;
    }

    else
    {
      if (v14 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      v19 = *a5;
      *a5 = v16->n128_u64[1];
      v16->n128_u64[1] = v19;
      v20 = a5[1];
      a5[1] = v16[1].n128_u64[0];
      v16[1].n128_u64[0] = v20;
      v21 = a5[2];
      a5[2] = v16[1].n128_u64[1];
      v16[1].n128_u64[1] = v21;
      v22 = a5[3];
      a5[3] = v16[2].n128_u64[0];
      v16[2].n128_u64[0] = v22;
      *v17 = v14;
      v23 = v16->n128_u32[0];
      v16->n128_u32[0] = v11;
      v15 = a1[4];
      v11 = v23;
    }

    v13 = (v13 + 1) & v12;
    v14 = i + 1;
    v16 = (v15 + 40 * v13);
    v17 = &v16->n128_u16[2];
  }

  v16->n128_u64[1] = *a5;
  v16[1].n128_u64[1] = 0;
  v16[2].n128_u64[0] = 0;
  v16[1].n128_u64[0] = 0;
  result = *(a5 + 1);
  v16[1] = result;
  v16[2].n128_u64[0] = a5[3];
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = 0;
  v16->n128_u32[0] = v11;
  v16->n128_u16[2] = v14;
  return result;
}

char *sub_29A4F677C(uint64_t a1, const char **a2, uint64_t *a3, int *a4)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v9 >= v8)
  {
    v11 = (v9 - *a1) >> 5;
    if ((v11 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v12 = v8 - *a1;
    v13 = v12 >> 4;
    if (v12 >> 4 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = sub_29A10CB10(a1, v14);
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section::_Section(&v15[32 * v11], *a2, *a3, *a4);
    v10 = v18 + 32;
    v19 = *(a1 + 8) - *a1;
    v20 = v18 - v19;
    memcpy(v18 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v10;
    *(a1 + 16) = &v15[32 * v17];
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section::_Section(*(a1 + 8), *a2, *a3, *a4);
    v10 = (v9 + 32);
    *(a1 + 8) = v9 + 32;
  }

  *(a1 + 8) = v10;
  return v10 - 32;
}

void sub_29A4F6894(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4F68B8(void *a1, uint64_t a2)
{
  __p = ((a1[16] - a1[15]) >> 3);
  v4 = sub_29A4E5264(a2, &__p);
  if (((*(a1[817] + 256) << 16) | (*(a1[817] + 257) << 8)) > 0x3FFu)
  {
    __p = 0;
    __dst = 0;
    v26 = 0;
    v10 = a1[15];
    v9 = a1[16];
    if (v10 == v9)
    {
      v14 = 0;
    }

    else
    {
      do
      {
        if ((*v10 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*v10 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
        }

        v12 = *(EmptyString + 23);
        if (v12 < 0)
        {
          v13 = EmptyString;
          EmptyString = *EmptyString;
          v12 = v13[1];
        }

        v4 = sub_29A4F6AE8(&__p, __dst, EmptyString, EmptyString + v12 + 1, v12 + 1);
        ++v10;
      }

      while (v10 != v9);
      v14 = __dst - __p;
    }

    __src = v14;
    sub_29A4E5264(a2, &__src);
    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize((__dst - __p));
    v22 = operator new[](CompressedBufferSize);
    v23 = pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(__p, v22, __dst - __p);
    __src = v23;
    sub_29A4E5264(a2, &__src);
    sub_29A4D0BB8(a2, v22, v23);
    operator delete[](v22);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = a1[15];
    v6 = a1[16];
    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v4 = (*v5 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v4 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
        }

        v8 = *(v4 + 23);
        if (v8 < 0)
        {
          v8 = *(v4 + 8);
        }

        v7 += v8 + 1;
        ++v5;
      }

      while (v5 != v6);
    }

    __p = v7;
    v15 = sub_29A4E5264(a2, &__p);
    v17 = a1[15];
    v16 = a1[16];
    while (v17 != v16)
    {
      if ((*v17 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v18 = ((*v17 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
      }

      v19 = v18[23];
      if (v19 < 0)
      {
        v20 = v18;
        v18 = *v18;
        v19 = *(v20 + 1);
      }

      v15 = sub_29A4D0BB8(a2, v18, v19 + 1);
      ++v17;
    }
  }
}

void sub_29A4F6AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A4F6AE8(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v17 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v22 = &__dst[a5];
      v23 = &v10[-a5];
      v24 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v25 = *v23++;
          *v24++ = v25;
        }

        while (v23 != v10);
      }

      *(a1 + 8) = v24;
      if (v10 != v22)
      {
        memmove(&__dst[a5], __dst, v10 - v22);
      }

      v26 = v5;
      v27 = __src;
      v28 = a5;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = &a4[__dst] - __src;
        v20 = *(a1 + 8);
        do
        {
          v21 = *v18++;
          *v20++ = v21;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v29 = &__dst[a5];
      v30 = (v19 - a5);
      v31 = v19;
      if (v19 - a5 < v10)
      {
        do
        {
          v32 = *v30++;
          *v31++ = v32;
        }

        while (v30 != v10);
      }

      *(a1 + 8) = v31;
      if (v20 != v29)
      {
        memmove(&__dst[a5], __dst, v19 - v29);
      }

      v26 = v5;
      v27 = __src;
      v28 = v10 - v5;
    }

    memmove(v26, v27, v28);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_29A00C9A4();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  memcpy(&v13[v16], __src, a5);
  memcpy(&v13[v16 + a5], v5, v10 - v5);
  *(a1 + 8) = v5;
  memcpy(v16, v11, v5 - v11);
  *a1 = v16;
  *(a1 + 8) = &v13[v16 + a5 + v10 - v5];
  *(a1 + 16) = v16 + v15;
  if (v11)
  {
    operator delete(v11);
  }

  return &v13[v16];
}

uint64_t sub_29A4F6CF0(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 4 * a3;
  if (4 * a3)
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

uint64_t sub_29A4F6D98(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A040BCC(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[56 * v3];
  *(&v18 + 1) = &v9[56 * v8];
  sub_29A4F6EE8(v17, a2, a3);
  *&v18 = v17 + 7;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_29A4F6FB4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A4F711C(&v16);
  return v15;
}

void sub_29A4F6ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4F711C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4F6EE8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *a3;
  v6 = a3[1];
  a1[2] = v6;
  a1[1] = v7;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 24), 1u, memory_order_relaxed);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_29A1D128C(a1 + 3, a3[2], a3[3], (a3[3] - a3[2]) >> 4);
  a1[6] = a3[5];
  return a1;
}

void sub_29A4F6F88(_Unwind_Exception *a1)
{
  sub_29A22B614(v2);
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4F6FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v7;
      *v7 = 0;
      *(a4 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      v8 = *(v7 + 48);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = v8;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29A4E4AB4(a1, v5);
      v5 += 56;
    }
  }

  return sub_29A4F7090(v10);
}

uint64_t sub_29A4F7090(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4F70C8(a1);
  }

  return a1;
}

void sub_29A4F70C8(uint64_t *a1)
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
      v3 -= 56;
      sub_29A4E4AB4(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A4F711C(void **a1)
{
  sub_29A4F7150(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A4F7150(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29A4E4AB4(v4, i - 56);
  }
}

uint64_t sub_29A4F7198(uint64_t a1, uint64_t *a2)
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_29A328648(v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29A321F84(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A3220F0(&v14);
  return v13;
}

void sub_29A4F72B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3220F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4F72C8(uint64_t *a1, _DWORD *a2, int *a3, uint64_t a4, uint64_t a5, __n128 *a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v7)
  {
    v7 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v14 = 0x333333333333333;
  }

  else
  {
    v14 = v7;
  }

  v25 = a1;
  if (v14)
  {
    v15 = sub_29A09AEA8(a1, v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = v15;
  v23 = &v15[80 * v6];
  *(&v24 + 1) = &v15[80 * v14];
  sub_29A4F742C(a1, v23, a2, a3, a4, a5, a6);
  *&v24 = v23 + 80;
  v16 = a1[1];
  v17 = &v23[*a1 - v16];
  sub_29A4F749C(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_29A4F7644(&v22);
  return v21;
}

void sub_29A4F7418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4F7644(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A4F742C(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4, uint64_t a5, uint64_t a6, __n128 *a7)
{
  v7 = *a4;
  *a2 = *a3;
  *(a2 + 4) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 8) = *a5;
  *(a2 + 24) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = *a6;
  *(a2 + 48) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = *a7;
  *(a2 + 56) = *a7;
  *(a2 + 72) = a7[1].n128_u64[0];
  a7->n128_u64[0] = 0;
  a7->n128_u64[1] = 0;
  a7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_29A4F749C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      sub_29A4F7550(a1, a4, v7);
      v7 += 80;
      a4 = v12 + 10;
      v12 += 10;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A4E5790(a1, v5);
      v5 += 80;
    }
  }

  return sub_29A4F75B8(v9);
}

__n128 sub_29A4F7550(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  *(a2 + 1) = *(a3 + 8);
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  *(a2 + 2) = *(a3 + 32);
  a2[6] = *(a3 + 48);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  a2[7] = 0;
  a2[8] = 0;
  a2[9] = 0;
  result = *(a3 + 56);
  *(a2 + 7) = result;
  a2[9] = *(a3 + 72);
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_29A4F75B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4F75F0(a1);
  }

  return a1;
}

void sub_29A4F75F0(uint64_t *a1)
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
      v3 -= 80;
      sub_29A4E5790(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A4F7644(void **a1)
{
  sub_29A4F7678(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A4F7678(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    sub_29A4E5790(v4, i - 80);
  }
}

uint64_t sub_29A4F76C0(uint64_t a1, void *__dst, size_t __n)
{
  v5 = *a1;
  v6 = **(a1 + 8);
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  if (v8 > *a1 || *a1 + __n > v8 + v7)
  {
    v24 = "usd/crateFile.cpp";
    v25 = "Read";
    v26 = 606;
    v27 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<const pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>::Read(void *, size_t) [FileMappingPtr = const pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *]";
    v28 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 3, "Read out-of-bounds: %zd bytes at offset %td in a mapping of length %zd", __n, v5 - v8, v7);
    memset(__dst, 153, __n);
    return 0;
  }

  if (*(a1 + 16))
  {
    v20 = sub_29A4CE69C(v8);
    v21 = sub_29A4CE69C(*a1);
    v22 = sub_29A4CE69C(*a1 + __n - 1);
    memset((*(a1 + 16) + v21 - v20), 1, v22 - v21 + 1);
    v5 = *a1;
    v23 = **(a1 + 8);
    v8 = *(v23 + 24);
    v7 = *(v23 + 32);
  }

  v11 = v7 - (v5 - v8);
  if (v11 < __n || ((v11 | (v5 - v8)) & 0x8000000000000000) != 0)
  {
    v24 = "usd/crateFile.cpp";
    v25 = "Read";
    v26 = 624;
    v27 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<const pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>::Read(void *, size_t) [FileMappingPtr = const pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *]";
    v28 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 3, "Failed to read %zu bytes, remaining file size is %lld of %lld", __n, v7 - (v5 - v8), v7);
    return 0;
  }

  if (*(a1 + 24))
  {
    v12 = sub_29A4DAE4C() & v8;
    v13 = *(a1 + 24);
    v14 = *a1 - v12;
    v15 = v14 / (v13 << 10) * (v13 << 10);
    v16 = *a1 - v14 % (v13 << 10);
    v17 = v8 - v12 + *(**(a1 + 8) + 32);
    v18 = (v13 << 10) * ((v14 + __n) / (v13 << 10)) + (v13 << 10);
    if (v18 < v17)
    {
      v17 = v18;
    }

    pxrInternal__aapl__pxrReserved__::ArchMemAdvise(v16, v17 - v15, 1);
    v5 = *a1;
  }

  memcpy(__dst, v5, __n);
  *a1 += __n;
  return 1;
}

uint64_t sub_29A4F78C0(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 16 * a3;
  if (16 * a3)
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

uint64_t *sub_29A4F7968(uint64_t *a1)
{
  sub_29A4F79A0(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29A4F79A0(uint64_t *a1)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v8 = sub_29A1DE3A4(v6);
          operator delete(v8);
          v6 = v7;
        }

        while (v7);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

_DWORD *sub_29A4F7A2C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A4F7A6C(void *a1, _DWORD *a2)
{
  v7 = a2;
  result = sub_29A4F7BA8(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29A4F7AC0(a1, &v5);
    return v5;
  }

  return result;
}

_DWORD *sub_29A4F7AC0(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(*a2, &v10);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v10))
  {
    sub_29A1E21F4(&v8, &v10);
    sub_29A1E2240(v9, &v11);
    v9[1] = -1;
    v4 = sub_29A4F7A6C(a1, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v9);
    sub_29A1DE3A4(&v8);
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = v5 | 1;
    }

    else
    {
      v6 = v4;
    }

    *(v3 + 4) = v6;
    *(v4 + 24) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

void sub_29A4F7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13)
{
  sub_29A4F7A2C(&a11);
  sub_29A1DCEA8(&a13);
  _Unwind_Resume(a1);
}

void *sub_29A4F7BA8(void *a1, unsigned int *a2, _DWORD **a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29A4F7CF0(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    v9 = *v7;
    while (*v9 != *a2)
    {
      v9 = v9[2];
      if (!v9)
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
      sub_29A4F7CF0(a1);
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v9 = operator new(0x28uLL);
    v10 = *a3;
    v11 = sub_29A1E21F4(v9, v10);
    sub_29A1E2240(v11 + 1, v10 + 1);
    *(v9 + 2) = v10[2];
    v9[3] = 0;
    v9[4] = 0;
    v9[2] = v8;
    *v7 = v9;
    ++a1[3];
  }

  return v9;
}

void sub_29A4F7CF0(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::PathIndex>::_Grow() [MappedType = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::PathIndex]", 0);
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
  sub_29A4F7E88(&v17, v5 + 1);
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
          v13 = *(v11 + 2);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          v15 = v17;
          *(v11 + 2) = *(v17 + 8 * v14);
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

void sub_29A4F7E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29A4F7E88(void *a1, unint64_t a2)
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

void sub_29A4F7EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4F7F00(void *a1, unsigned int *a2)
{
  if (!a1[3])
  {
    return 0;
  }

  for (result = *(*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4])); result; result = result[2])
  {
    if (*result == *a2)
    {
      break;
    }
  }

  return result;
}

unint64_t sub_29A4F7F68(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  for (i = *(*a1 + 32); ; i = *(result + 32))
  {
    result = i & 0xFFFFFFFFFFFFFFF8;
    if ((i & 7) != 0 && result != 0)
    {
      break;
    }

    if (result)
    {
      v4 = (i & 7) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29A4F7FA4(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 16;
  do
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = v6 - v5 + 0x80000;
    if (v4 >= v7)
    {
      v8 = v6 - v5 + 0x80000;
    }

    else
    {
      v8 = v4;
    }

    v9 = v5 - v6;
    if ((v8 + v9) > v3[6])
    {
      v3[6] = v8 + v9;
    }

    result = memcpy((v3[5] + v9), __src, v8);
    v3[2] += v8;
    if (v7 <= v4)
    {
      result = sub_29A4DE434(v3);
    }

    __src += v8;
    v4 -= v8;
  }

  while (v4);
  return result;
}

uint64_t sub_29A4F8048(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 12;
  do
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = v6 - v5 + 0x80000;
    if (v4 >= v7)
    {
      v8 = v6 - v5 + 0x80000;
    }

    else
    {
      v8 = v4;
    }

    v9 = v5 - v6;
    if ((v8 + v9) > v3[6])
    {
      v3[6] = v8 + v9;
    }

    result = memcpy((v3[5] + v9), __src, v8);
    v3[2] += v8;
    if (v7 <= v4)
    {
      result = sub_29A4DE434(v3);
    }

    __src += v8;
    v4 -= v8;
  }

  while (v4);
  return result;
}

uint64_t *sub_29A4F80EC(__int128 *a1)
{
  v1 = sub_29A4F82A4(v7, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29A4F8320(DetachedDispatcher, v7);
    v5 = (***(v4 - 5))(*(v4 - 5), v4, (v4 - 1));
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29A4F8204();
  }

  return sub_29A4F7968(v7);
}

void sub_29A4F8178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4F7968(va);
  _Unwind_Resume(a1);
}

__int128 *sub_29A4F818C(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 2);
    v4 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    v7 = *a1;
    *a1 = v4;
    v8 = *(a1 + 2);
    *(a1 + 2) = v3;
    v9 = *(a1 + 24);
    *(a1 + 24) = v5;
    sub_29A4F7968(&v7);
  }

  return a1;
}

void sub_29A4F8204()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

uint64_t sub_29A4F82A4(uint64_t a1, __int128 *a2)
{
  v5 = 0uLL;
  v6 = 0;
  v7 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_29A4F818C(a1, a2);
  sub_29A4F818C(a2, &v5);
  sub_29A4F7968(&v5);
  return a1;
}

void sub_29A4F8304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4F7968(va);
  sub_29A4F7968(v2);
  _Unwind_Resume(a1);
}

void *sub_29A4F8320(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x38uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A2052608;
  sub_29A4F82A4((v5 + 1), a2);
  v5[6] = a1 + 272;
  return v5;
}

void *sub_29A4F83C0(void *a1)
{
  *a1 = &unk_2A2052608;
  sub_29A4F7968(a1 + 1);
  return a1;
}

void sub_29A4F8404(uint64_t *a1)
{
  *a1 = &unk_2A2052608;
  sub_29A4F7968(a1 + 1);

  operator delete(a1);
}

uint64_t sub_29A4F8458(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4F8204();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4F84E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4F84FC(void ***a1)
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
        v4 -= 3;
        sub_29A4F8584(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A4F8584(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29A4F85C4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1DDD84(v4, v8);
      sub_29A1DDDC0(v4 + 1, v8 + 1);
      v4[2] = v8[2];
      v8 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      sub_29A4F8584(a1, v6);
      v6 += 3;
    }
  }

  return sub_29A4F8698(v10);
}

uint64_t sub_29A4F8698(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4F86D0(a1);
  }

  return a1;
}

uint64_t *sub_29A4F86D0(uint64_t *result)
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
      v3 -= 3;
      result = sub_29A4F8584(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A4F8724(void **a1)
{
  sub_29A4F8758(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A4F8758(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 12;
      result = sub_29A4F8584(v4, (v1 - 12));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A4F87A0(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v8 = 0x1555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = sub_29A379A50(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[12 * v3];
  v17 = v9;
  v18 = v10;
  *(&v19 + 1) = &v9[12 * v8];
  sub_29A1E21F4(v10, a2);
  sub_29A1E2240(v10 + 1, a2 + 1);
  *(v10 + 2) = *a3;
  *&v19 = v10 + 12;
  v11 = *(a1 + 8);
  v12 = &v10[*a1 - v11];
  sub_29A4F85C4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A4F8724(&v17);
  return v16;
}

void sub_29A4F88D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4F8724(va);
  _Unwind_Resume(a1);
}

char *sub_29A4F88E4(char *result, char *a2, uint64_t a3, char a4)
{
  v4 = result;
  v5 = a2 - result;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 2);
  v7 = v6 - 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29A4F9454();
      case 4:
        sub_29A4F9590();
      case 5:
        sub_29A4F9670();
    }
  }

  else
  {
    if (v6 < 2)
    {
      return result;
    }

    if (v6 == 2)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  if (v5 <= 287)
  {
    if (a4)
    {
      if (result != a2 && result + 12 != a2)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
      }
    }

    else if (result != a2 && result + 12 != a2)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  else
  {
    if (a3)
    {
      if (v5 >= 0x601)
      {
        sub_29A4F9454();
      }

      sub_29A4F9454();
    }

    if (result != a2)
    {
      v8 = v7 >> 1;
      for (i = v7 >> 1; ; --i)
      {
        v10 = i;
        if (v8 >= i)
        {
          break;
        }

        if (!v10)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(result);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v4 + 1);
          if ((0xAAAAAAAAAAAAAAABLL * (v5 >> 2)) > 2)
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }

      if (2 * i + 2 < v6)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  return result;
}

uint64_t sub_29A4F9794(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_29A4F9454();
      case 4:
        sub_29A4F9590();
      case 5:
        sub_29A4F9670();
    }

LABEL_11:
    sub_29A4F9454();
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    goto LABEL_11;
  }

  return 1;
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A4F99E8(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a1, void *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, void *a5, void *a6, uint64_t *a7)
{
  while (a3 != a4)
  {
    v12 = a3;
    while (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v12, a3))
    {
      v12 = (v12 + 12);
      if (v12 == a4)
      {
        v12 = a4;
        break;
      }
    }

    v13 = (a3 + 12);
    if ((a3 + 12) == v12)
    {
      v16 = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v13, &v28);
      v14 = v28;
      v15 = *a3;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28 + 1);
      v16 = v14 == v15;
      sub_29A1DE3A4(&v28);
    }

    if (v12 == a4)
    {
      v17 = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v12, &v28);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v27);
      v17 = v28 == v27;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
      sub_29A1DE3A4(&v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28 + 1);
      sub_29A1DE3A4(&v28);
    }

    IsPrimPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(a3);
    if (IsPrimPropertyPath)
    {
      v19 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a3);
      v28 = v19;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v28 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetElementToken(a3, &v28);
    }

    v20 = (*a2)++;
    *(*a5 + 4 * v20) = *(a3 + 2);
    IndexForToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetIndexForToken(a1, &v28);
    if (IsPrimPropertyPath)
    {
      v22 = -IndexForToken;
    }

    else
    {
      v22 = IndexForToken;
    }

    *(*a6 + 4 * v20) = v22;
    if (v16)
    {
      a3 = sub_29A4F99E8(a1, a2, v13, a4, a5);
      if (v17)
      {
        *(*a7 + 4 * v20) = *a2 - v20;
      }

      else
      {
        *(*a7 + 4 * v20) = -1;
      }
    }

    else
    {
      v23 = *a7;
      if (v17)
      {
        *(v23 + 4 * v20) = 0;
      }

      else
      {
        *(v23 + 4 * v20) = -2;
      }

      a3 = (a3 + 12);
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!v17)
    {
      return a3;
    }
  }

  return a4;
}

void sub_29A4F9C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A4F9C8C(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *(a2 + 2);
      v9 = *a2;
      a2 = (a2 + 12);
      *(v7 + 4) = v9;
      *(v7 + 12) = v8;
      v7 += 16;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A4F9CF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4F9D0C(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 12 * a3;
  if (12 * a3)
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

uint64_t sub_29A4F9DB8(uint64_t a1)
{
  *a1 = &unk_2A2052650;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
  sub_29A1DE3A4((a1 + 56));
  return a1;
}

void sub_29A4F9E08(_DWORD *a1)
{
  *a1 = &unk_2A2052650;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 15);
  sub_29A1DE3A4(a1 + 14);

  operator delete(a1);
}

uint64_t sub_29A4F9E68(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v11);
  v2 = *(a1 + 8);
  sub_29A4E9AAC(&v14, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateFile::CrateFile::Open", "_ReadPaths");
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_29A1E21F4(&v12, (a1 + 56));
  sub_29A1E2240(&v13, (a1 + 60));
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BuildDecompressedPathsImpl(v2, v3, v4, v5, v6, &v12, *(a1 + 48));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
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
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v11, *(a1 + 64));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v11);
  return 0;
}

void sub_29A4F9FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, char a12)
{
  sub_29A1DCEA8(&a10);
  sub_29A0E9CEC(&a12);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A4F9FCC(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4)
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

  sub_29A4FA214(a1, v6, a3, a4, &v22);
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

void sub_29A4FA1FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4E5208(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4FA214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x20uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  sub_29A1E21F4(v10 + 4, a3);
  result = sub_29A1E2240(v10 + 5, a3 + 1);
  *(v10 + 6) = *a4;
  *(a5 + 16) = 1;
  return result;
}

void *sub_29A4FA290(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = sub_29A4DDA24(v29, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      result = *v13;
      if (*v13)
      {
        do
        {
          v15 = result[1];
          if (v15 == v10)
          {
            v17 = result[2];
            v16 = result[3];
            if (v16 - v17 == *(a2 + 8) - *a2)
            {
              if (v17 == v16)
              {
                return result;
              }

              for (i = *a2; *v17 == *i; ++i)
              {
                v17 += 4;
                if (v17 == v16)
                {
                  return result;
                }
              }
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

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A4FA520(a1, v10, a3, a4, v29);
  v19 = (*(a1 + 24) + 1);
  v20 = *(a1 + 32);
  if (!v11 || (v20 * v11) < v19)
  {
    v21 = 1;
    if (v11 >= 3)
    {
      v21 = (v11 & (v11 - 1)) != 0;
    }

    v22 = v21 | (2 * v11);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_29A019AA0(a1, v24);
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

  v25 = *a1;
  v26 = *(*a1 + 8 * v4);
  if (v26)
  {
    result = v29[0];
    *v29[0] = *v26;
    *v26 = result;
  }

  else
  {
    v27 = v29[0];
    *v29[0] = *(a1 + 16);
    *(a1 + 16) = v27;
    *(v25 + 8 * v4) = a1 + 16;
    result = v29[0];
    if (*v29[0])
    {
      v28 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v28 >= v11)
        {
          v28 %= v11;
        }
      }

      else
      {
        v28 &= v11 - 1;
      }

      *(*a1 + 8 * v28) = v29[0];
      result = v29[0];
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A4FA4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A4DDB04(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4FA520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = 0;
  result = sub_29A4DDA88(v10 + 2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(v10 + 10) = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A4FA5B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A4DDB04(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A4FA5CC(uint64_t a1, uint64_t a2, _OWORD *a3, _DWORD *a4)
{
  v8 = *(a2 + 4);
  v9 = bswap64(0x9E3779B97F4A7C55 * v8);
  v10 = *(a2 + 8);
  v11 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (v10 + ((v9 + v10 + (v9 + v10) * (v9 + v10)) >> 1))));
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
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
      v4 = v11 & (v12 - 1);
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        do
        {
          v16 = v15[1];
          if (v16 == v11)
          {
            if (*(v15 + 5) == v8 && v15[3] == v10)
            {
              return v15;
            }
          }

          else
          {
            if (v13.u32[0] > 1uLL)
            {
              if (v16 >= v12)
              {
                v16 %= v12;
              }
            }

            else
            {
              v16 &= v12 - 1;
            }

            if (v16 != v4)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  v15 = operator new(0x28uLL);
  *v15 = 0;
  v15[1] = v11;
  *(v15 + 1) = *a3;
  *(v15 + 8) = *a4;
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
    *v15 = *v25;
LABEL_42:
    *v25 = v15;
    goto LABEL_43;
  }

  *v15 = *(a1 + 16);
  *(a1 + 16) = v15;
  *(v24 + 8 * v4) = a1 + 16;
  if (*v15)
  {
    v26 = *(*v15 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v26 >= v12)
      {
        v26 %= v12;
      }
    }

    else
    {
      v26 &= v12 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return v15;
}

void *sub_29A4FA83C(uint64_t a1, void *a2, uint64_t *a3, _DWORD *a4)
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

  sub_29A41A5E0(a1, v6, a3, a4, &v22);
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

void sub_29A4FAA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29A4FAA84(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
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

  sub_29A4FAD28(a1, v11, a3, a4, &v29);
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

void sub_29A4FAD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A4FAD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  result = operator new(0x30uLL);
  v11 = result;
  *a5 = result;
  a5[1] = a1;
  a5[2] = 0;
  *result = 0;
  result[1] = a2;
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *a3, *(a3 + 8));
  }

  else
  {
    *(result + 1) = *a3;
    result[4] = *(a3 + 16);
  }

  *(v11 + 10) = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A4FADC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4FADE4(void *a1, const void **a2, uint64_t a3)
{
  v4 = *a1 & a3;
  v5 = a1[4];
  v6 = v5 + (v4 << 6);
  if (*(v6 + 4) < 0)
  {
    return v5 + (a1[5] << 6);
  }

  LOWORD(v8) = 0;
  while (!sub_29A0EC4B8(a1, (v6 + 8), a2))
  {
    v4 = *a1 & (v4 + 1);
    v8 = (v8 + 1);
    v5 = a1[4];
    v6 = v5 + (v4 << 6);
    if (v8 > *(v6 + 4))
    {
      return v5 + (a1[5] << 6);
    }
  }

  return a1[4] + (v4 << 6);
}

uint64_t sub_29A4FAE7C(uint64_t *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(&v17, a2);
  v9 = *a1 & v8;
  v10 = a1[4] + (v9 << 6);
  if (*(v10 + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v11) = 0;
  while (!sub_29A0EC4B8(a1, (v10 + 8), a2))
  {
    v9 = *a1 & (v9 + 1);
    v11 = (v11 + 1);
    v10 = a1[4] + (v9 << 6);
    if (v11 > *(v10 + 4))
    {
      while (sub_29A4FB008(a1, v11))
      {
        v12 = a1[4];
        v9 = v8 & *a1;
        if (*(v12 + (v9 << 6) + 4) < 0)
        {
LABEL_7:
          v11 = 0;
        }

        else
        {
          LOWORD(v11) = 0;
          do
          {
            v11 = (v11 + 1);
            v9 = (v9 + 1) & *a1;
          }

          while (v11 <= *(v12 + (v9 << 6) + 4));
        }
      }

      v13 = a1[4] + (v9 << 6);
      if (*(v13 + 4) == -1)
      {
        v14 = *a4;
        v15 = **a4;
        *(v13 + 24) = *(*a4 + 2);
        *(v13 + 8) = v15;
        *(v14 + 1) = 0;
        *(v14 + 2) = 0;
        *v14 = 0;
        *(v13 + 56) = 0;
        *v13 = v8;
        *(v13 + 4) = v11;
      }

      else
      {
        sub_29A4FB0DC(a1, v9, v11, v8, a3, a4);
      }

      ++a1[6];
      return a1[4] + (v9 << 6);
    }
  }

  return a1[4] + (v9 << 6);
}

uint64_t sub_29A4FB008(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A4FB170(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A4FB170(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A4FB0DC(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, _OWORD **a6)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v6 = *a6;
  v7 = *(*a6 + 2);
  *__p = **a6;
  v9 = v7;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v10[3] = 0;
  sub_29A4FB684(a1, a2, a3, a4, __p);
  sub_29A4DAD34(v10);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A4FB170(uint64_t a1, unint64_t a2)
{
  sub_29A4E5468(&v7, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v8[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v6 = sub_29A12A708(&v9, (v3 + 1));
        }

        else
        {
          v6 = *v3;
        }

        sub_29A4FB26C(&v7, v7 & v6, 0, v6, v3 + 1);
      }

      v3 += 8;
    }

    while (v3 != v4);
  }

  v8[5] = *(a1 + 48);
  sub_29A10A4B4(&v7, a1);
  v9 = v8;
  sub_29A4DABE8(&v9);
}

void sub_29A4FB24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 56) = &a11;
  sub_29A4DABE8((v11 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_29A4FB26C(void *a1, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  while (1)
  {
    v10 = a1[4] + (a2 << 6);
    v11 = *(v10 + 4);
    if (v11 >= a3)
    {
      goto LABEL_4;
    }

    if (v11 == -1)
    {
      break;
    }

    v12 = *a5;
    *&v19 = a5[1];
    *(&v19 + 7) = *(a5 + 15);
    v13 = *(a5 + 23);
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    v14 = *(v10 + 24);
    *a5 = *(v10 + 8);
    a5[2] = v14;
    *(v10 + 23) = *(&v19 + 7);
    *(v10 + 8) = v12;
    *(v10 + 16) = v19;
    *(v10 + 31) = v13;
    sub_29A4FB420(a5 + 3, (v10 + 32));
    v15 = *(v10 + 4);
    *(v10 + 4) = a3;
    v16 = *v10;
    *v10 = a4;
    a3 = v15;
    a4 = v16;
LABEL_4:
    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  v17 = *a5;
  *(v10 + 24) = a5[2];
  *(v10 + 8) = v17;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  result = sub_29A4FB3A0(v10 + 32, (a5 + 3));
  *v10 = a4;
  *(v10 + 4) = a3;
  return result;
}

uint64_t sub_29A4FB3A0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_29A4FB420(void *result, void *a2)
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

void sub_29A4FB678(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A4FB684(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  v10 = (a1[4] + (a2 << 6));
  v11 = a5 + 1;
  v12 = *a5;
  *&v31 = a5[1];
  *(&v31 + 7) = *(a5 + 15);
  v13 = *(a5 + 23);
  a5[2] = 0;
  a5[1] = 0;
  *a5 = 0;
  v14 = *(v10 + 3);
  *a5 = *(v10 + 2);
  a5[2] = v14;
  *(v10 + 23) = *(&v31 + 7);
  *(v10 + 1) = v12;
  *(v10 + 2) = v31;
  *(v10 + 31) = v13;
  sub_29A4FB420(a5 + 3, v10 + 4);
  v15 = *(v10 + 2);
  *(v10 + 2) = a3;
  v16 = *v10;
  *v10 = a4;
  v17 = *a1;
  v18 = *a1 & (a2 + 1);
  v19 = v15 + 1;
  v20 = a1[4];
  v21 = (v20 + (v18 << 6));
  v23 = (v21 + 1);
  for (i = *(v21 + 2); i != 0xFFFF; i = *(v21 + 2))
  {
    if (v19 > i)
    {
      if (v19 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      v24 = *a5;
      *(&v32 + 7) = *(v11 + 7);
      *&v32 = *v11;
      v25 = *(a5 + 23);
      a5[1] = 0;
      a5[2] = 0;
      *a5 = 0;
      v26 = *(v21 + 3);
      *a5 = *(v21 + 2);
      a5[2] = v26;
      *(v21 + 1) = v24;
      *(v21 + 2) = v32;
      *(v21 + 23) = *(&v32 + 7);
      *(v21 + 31) = v25;
      sub_29A4FB420(a5 + 3, v21 + 4);
      v27 = *v23;
      *v23 = v19;
      v28 = *v21;
      *v21 = v16;
      v17 = *a1;
      v20 = a1[4];
      v19 = v27;
      v16 = v28;
    }

    v18 = v17 & (v18 + 1);
    ++v19;
    v21 = (v20 + (v18 << 6));
    v23 = (v21 + 1);
  }

  v29 = *a5;
  *(v21 + 3) = a5[2];
  *(v21 + 2) = v29;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  result = sub_29A4FB3A0((v21 + 8), (a5 + 3));
  *v21 = v16;
  *(v21 + 2) = v19;
  return result;
}

__n128 sub_29A4FB884(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052698;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FB8D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052698;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FB914(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052708))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A4FB960(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v4 = this;
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = v4[1];
  if (IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    else
    {
      v10 = *v4;
    }

    return sub_29A4FBA18(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return *v4 | 0x4001000000000000;
  }
}

unint64_t sub_29A4FBA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8001000000000000;
  v18 = 0x8001000000000000;
  if (*a4)
  {
    v11 = *(a1 + 8);
    v10 = (a1 + 8);
    v9 = v11;
    if (!v11)
    {
      v12 = operator new(0x28uLL);
      *v12 = 0u;
      v12[1] = 0u;
      *(v12 + 8) = 1065353216;
      sub_29A4DFEF0(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A4FBC18(v9, a4, a4, &v18);
    if (v14)
    {
      v15 = *(a2 + 6536);
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v16 = *(v15 + 256);
        v20[0] = a2;
        v20[1] = a3;
        v17 = sub_29A4FBB98(v20, 8);
        if (((v16 | (v16 << 16)) & 0xFFFF00u) > 0x6FF)
        {
          __src = *a4;
          sub_29A4E5264(v20, &__src);
        }

        else
        {
          LODWORD(__src) = *a4;
          sub_29A4FBF2C(v20, &__src);
        }

        sub_29A4D0BB8(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8001000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A4D0BB8(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

uint64_t sub_29A4FBB98(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = (v2[2] + a2 - 1) & -a2;
  v4 = v2[4];
  if (v4 > v3 || (v5 = v2[6] + v4, v6 = v2 + 2, v5 < v3))
  {
    sub_29A4DE434(*(a1 + 8));
    v2[2] = v3;
    v6 = v2 + 4;
  }

  *v6 = v3;
  return v2[2];
}

void *sub_29A4FBC18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  LOBYTE(v32) = 1;
  v31 = v9;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v31, *(a2 + 32), v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v31);
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
          if (Overlay::__operatorEqualsEquals((i + 2), a2))
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

  v17 = operator new(0x40uLL);
  i = v17;
  v32 = a1;
  v33 = 1;
  *v17 = 0;
  *(v17 + 1) = v10;
  v18 = *(a3 + 16);
  *(v17 + 1) = *a3;
  *(v17 + 2) = v18;
  v19 = *(a3 + 32);
  *(v17 + 6) = v19;
  if (v19)
  {
    v20 = (v19 - 16);
    if (*(v17 + 5))
    {
      v20 = *(v17 + 5);
    }

    atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
  }

  *(v17 + 7) = *a4;
  v21 = (*(a1 + 24) + 1);
  v22 = *(a1 + 32);
  if (!v11 || (v22 * v11) < v21)
  {
    v23 = 1;
    if (v11 >= 3)
    {
      v23 = (v11 & (v11 - 1)) != 0;
    }

    v24 = v23 | (2 * v11);
    v25 = vcvtps_u32_f32(v21 / v22);
    if (v24 <= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    sub_29A019AA0(a1, v26);
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

  v27 = *a1;
  v28 = *(*a1 + 8 * v4);
  if (v28)
  {
    *i = *v28;
LABEL_42:
    *v28 = i;
    goto LABEL_43;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v27 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v29 = *(*i + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v29 >= v11)
      {
        v29 %= v11;
      }
    }

    else
    {
      v29 &= v11 - 1;
    }

    v28 = (*a1 + 8 * v29);
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return i;
}

void sub_29A4FBED0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A4FBF2C(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 4;
  do
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = v6 - v5 + 0x80000;
    if (v4 >= v7)
    {
      v8 = v6 - v5 + 0x80000;
    }

    else
    {
      v8 = v4;
    }

    v9 = v5 - v6;
    if ((v8 + v9) > v3[6])
    {
      v3[6] = v8 + v9;
    }

    result = memcpy((v3[5] + v9), __src, v8);
    v3[2] += v8;
    if (v7 <= v4)
    {
      result = sub_29A4DE434(v3);
    }

    __src += v8;
    v4 -= v8;
  }

  while (v4);
  return result;
}

__n128 sub_29A4FBFD8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052728;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FC024(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

char *sub_29A4FC054(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = 0;
  v11[3] = v8;
  v11[4] = v9;
  return sub_29A4FC0EC(v5, v11, v3, v4);
}

uint64_t sub_29A4FC0A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052798))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_29A4FC0EC(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A4FC188(a1, v7, a3, v9);
    sub_29A3F8EDC(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  v9[0].n128_u8[0] = a3 & 1;
  return sub_29A3F8E60(a4, v9);
}

void sub_29A4FC188(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    if (&v15 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  a2[2] = v5;
  v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v7 <= 0x4FF)
  {
    LODWORD(v15) = 0;
    if (!sub_29A4FC36C((a2 + 1), 0, &v15))
    {
      return;
    }

    v8 = a2[1];
    v5 = a2[2];
    v10 = a2[3];
    v9 = a2[4];
    goto LABEL_9;
  }

  v8 = a2[1];
  v10 = a2[3];
  v9 = a2[4];
  v18 = 0;
  if (v7 <= 0x6FF)
  {
LABEL_9:
    LODWORD(v15) = 0;
    v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v15, 4, v5 + v8);
    if (v11 == -1)
    {
      return;
    }

    v12 = v15;
    v18 = v15;
    goto LABEL_13;
  }

  v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v18, 8, v5 + v8);
  if (v11 == -1)
  {
    return;
  }

  v12 = v18;
LABEL_13:
  v13 = v11 + v5;
  v14 = v10 - v13;
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || v12 > v14)
  {
    *&v15 = "usd/crateFile.cpp";
    *(&v15 + 1) = "_ReadUncompressedArray";
    *&v16 = 2226;
    *(&v16 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = BOOL]";
    LOBYTE(v17) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, v12, v10 - v13, v10);
  }

  else
  {
    v19 = 0;
    *&v15 = &v19;
    sub_29A20CFDC(a4, v12, &v15);
    sub_29A20D1F0(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), *a4, v13 + v8);
  }
}