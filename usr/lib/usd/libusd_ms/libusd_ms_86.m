void sub_29A509DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A509E3C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20535B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A509E88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20535B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A509EC0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053618))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float sub_29A509F0C(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v10[0] = *a1;
  v10[1] = v8;
  v10[2] = v6;
  v10[3] = v7;
  v11 = sub_29A4CCA14();
  return sub_29A509F8C(v5, v10, v3, v4);
}

float sub_29A509F8C(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A50A024(a1, v7, a3, v9);
    sub_29A18E668(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3F9CEC(a4, v9);
}

void sub_29A50A024(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v57 = 0;
    __dst = 0u;
    v56 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(a2 + 8, &__dst, 4uLL))
    {
      return;
    }

    v7 = a2[1];
    v44 = *a2;
    v45 = v7;
    v46 = *(a2 + 4);
    goto LABEL_13;
  }

  v8 = a2[1];
  v44 = *a2;
  v45 = v8;
  v46 = *(a2 + 4);
  if (v6 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
LABEL_13:
    *__p = v44;
    v53 = v45;
    v54 = v46;
    if ((atomic_load_explicit(&qword_2A17421D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17421D8))
    {
      v43 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v43)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17421D0 = *v43;
      __cxa_guard_release(&qword_2A17421D8);
    }

    v47 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&__p[1], &v47, 8uLL))
      {
        return;
      }

      v11 = v47;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&__p[1], &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v11 = __dst;
      v47 = __dst;
    }

    v14 = 4 * v11;
    v15 = __p[1];
    if (byte_2A17421D0 == 1 && v14 >= 0x800 && (__p[1] & 3) == 0)
    {
      v16 = sub_29A4FCB64(&__p[1], __p[1], 4 * v11, v11);
      if (v16)
      {
        *&v56 = 0;
        *(&v56 + 1) = v16;
        v57 = v15;
        __dst = v47;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v56 = 2282;
      *(&v56 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
      LOBYTE(v57) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v14);
      sub_29A18E1D4(a4);
      return;
    }

    v17 = __p[1] - *(*v53 + 24);
    v18 = *(*v53 + 32) - v17;
    if ((v17 & 0x8000000000000000) != 0 || (v18 & 0x8000000000000000) != 0 || (v11 <= v18 ? (v19 = v14 > v18) : (v19 = 1), v19))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v56 = 2290;
      *(&v56 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
      LOBYTE(v57) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld");
      return;
    }

    LODWORD(v51) = 0;
    *&__dst = &v51;
    sub_29A18E224(a4, v11, &__dst, v10);
    sub_29A18E624(a4);
    v20 = *(a4 + 32);
    v21 = 4 * *a4;
    v22 = &__p[1];
LABEL_46:
    sub_29A4E7A0C(v22, v20, v21);
    return;
  }

  v51 = 0;
  if (v6 > 0x6FF)
  {
    if (!sub_29A4E7A0C(&v44 + 8, &v51, 8uLL))
    {
      return;
    }

    v13 = v51;
  }

  else
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v44 + 8, &__dst, 4uLL))
    {
      return;
    }

    v13 = __dst;
    v51 = __dst;
  }

  if (v13 <= 0xF)
  {
    v23 = *(&v44 + 1) - *(*v45 + 24);
    v24 = *(*v45 + 32) - v23;
    if (v23 < 0 || (v24 & 0x8000000000000000) != 0 || (v13 <= v24 ? (v25 = 4 * v13 > v24) : (v25 = 1), v25))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v56 = 2460;
      *(&v56 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
      LOBYTE(v57) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LODWORD(__p[0]) = 0;
    *&__dst = __p;
    sub_29A18E224(a4, v13, &__dst, v12);
    sub_29A18E624(a4);
    v20 = *(a4 + 32);
    v21 = 4 * v51;
    v22 = &v44 + 1;
    goto LABEL_46;
  }

  v50 = 0;
  if (!sub_29A4E7A0C(&v44 + 8, &v50, 1uLL))
  {
    return;
  }

  if (v50 == 116)
  {
    v49 = 0;
    if (!sub_29A4E7A0C(&v44 + 8, &v49, 4uLL))
    {
      return;
    }

    v32 = *(&v44 + 1) - *(*v45 + 24);
    v33 = *(*v45 + 32) - v32;
    if (v32 < 0 || (v33 & 0x8000000000000000) != 0 || (v33 >= v49 ? (v34 = 4 * v49 > v33) : (v34 = 1), v34))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v56 = 2498;
      *(&v56 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
      LOBYTE(v57) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    sub_29A0121C0(__p, v49);
    sub_29A4E7A0C(&v44 + 8, __p[0], __p[1] - __p[0]);
    if ((sub_29A4FF180(v51) & 1) == 0)
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v56 = 2506;
      *(&v56 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
      LOBYTE(v57) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed uints", v51);
      goto LABEL_74;
    }

    sub_29A01112C(&v47, v51);
    sub_29A4E842C(&v44, v47, ((v48 - v47) >> 2));
    v58 = 0;
    *&__dst = &v58;
    sub_29A18E224(a4, v51, &__dst, v35);
    sub_29A18E624(a4);
    v36 = v47;
    v37 = v48;
    if (v47 == v48)
    {
LABEL_69:
      if (!v36)
      {
LABEL_74:
        v28 = __p[0];
        if (!__p[0])
        {
          return;
        }

        __p[1] = __p[0];
        goto LABEL_76;
      }
    }

    else
    {
      v38 = *(a4 + 32);
      v39 = v49;
      v40 = v47;
      v41 = __p[0];
      while (1)
      {
        v42 = *v40;
        if (v42 >= v39)
        {
          break;
        }

        *v38++ = v41[v42];
        if (++v40 == v37)
        {
          goto LABEL_69;
        }
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v56 = 2516;
      *(&v56 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
      LOBYTE(v57) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to index lut with index %u, out of bounds access", v42);
      v36 = v47;
      if (!v47)
      {
        goto LABEL_74;
      }
    }

    v48 = v36;
    operator delete(v36);
    goto LABEL_74;
  }

  if (v50 != 105)
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v56 = 2524;
    *(&v56 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
    LOBYTE(v57) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Corrupt data stream detected reading compressed array in <%s>");
    return;
  }

  if ((sub_29A4FF180(v51) & 1) == 0)
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v56 = 2480;
    *(&v56 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = float]";
    LOBYTE(v57) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed ints");
    return;
  }

  sub_29A011440(&__dst, v51);
  LODWORD(v47) = 0;
  __p[0] = &v47;
  sub_29A18E224(a4, v51, __p, v26);
  sub_29A18E624(a4);
  v27 = *(a4 + 32);
  sub_29A4FF964(&v44, __dst, ((*(&__dst + 1) - __dst) >> 2));
  v29 = *(&__dst + 1);
  v28 = __dst;
  if (__dst != *(&__dst + 1))
  {
    v30 = __dst;
    do
    {
      v31 = *v30++;
      *v27++ = v31;
    }

    while (v30 != v29);
  }

  if (v28)
  {
    *(&__dst + 1) = v28;
LABEL_76:
    operator delete(v28);
  }
}

__n128 sub_29A50A834(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053638;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50A880(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50A8B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053698))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A50A904(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A50A9B0(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A50A98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

float sub_29A50A9B0(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v5 = a3;
  if (a3 < 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v9 = *a2;
    v8 = *(a2 + 2);
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a2 + 3);
    sub_29A50AAA0(a1, &v9, a3, v12);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A18E668(a4, v12);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v12[0].n128_u32[0] = v5;
  return sub_29A3F9CEC(a4, v12);
}

void sub_29A50AAA0(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    if (&v65 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  a2[3] = (a3 & 0xFFFFFFFFFFFFLL);
  v7 = *a2;
  v8 = ((*a2)[6576] << 16) | ((*a2)[6577] << 8);
  if (v8 <= 0x4FF)
  {
    LODWORD(v65) = 0;
    if (!sub_29A4E5308(a2 + 1, &v65, 4uLL))
    {
      return;
    }

    v7 = *a2;
  }

  v10 = a2[1];
  v9 = a2[2];
  v52 = v7;
  v53 = v10;
  v54 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[3];
  v55 = v11;
  if (v8 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
    __p = v7;
    v62 = v53;
    v63 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v55;
    }

    v64 = v11;
    v56 = 0;
    if (v8 > 0x6FF)
    {
      if (!sub_29A4E5308(&v62, &v56, 8uLL))
      {
        goto LABEL_31;
      }
    }

    else
    {
      LODWORD(v65) = 0;
      if (!sub_29A4E5308(&v62, &v65, 4uLL))
      {
        goto LABEL_31;
      }

      v56 = v65;
    }

    v14 = (*(*v62 + 16))(v62);
    v16 = v14 - v64;
    v17 = v56;
    v18 = 4 * v56;
    if ((v64 & 0x8000000000000000) != 0 || (v16 & 0x8000000000000000) != 0 || (v56 <= v16 ? (v19 = v18 > v16) : (v19 = 1), v19))
    {
      *&v65 = "usd/crateFile.cpp";
      *(&v65 + 1) = "_ReadUncompressedArray";
      *&v66 = 2226;
      *(&v66 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = float]";
      LOBYTE(v67) = 0;
      v48 = (*(*v62 + 16))(v62);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v65, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v17, v18, v16, v48);
    }

    else
    {
      LODWORD(v60) = 0;
      *&v65 = &v60;
      sub_29A18E224(a4, v56, &v65, v15);
      sub_29A18E624(a4);
      sub_29A4E5308(&v62, *(a4 + 32), 4 * *a4);
    }

LABEL_31:
    if (v63)
    {
      sub_29A014BEC(v63);
    }

    goto LABEL_80;
  }

  v60 = 0;
  if (v8 > 0x6FF)
  {
    if (!sub_29A4E5308(&v53, &v60, 8uLL))
    {
      goto LABEL_80;
    }

    v13 = v60;
  }

  else
  {
    LODWORD(v65) = 0;
    if (!sub_29A4E5308(&v53, &v65, 4uLL))
    {
      goto LABEL_80;
    }

    v13 = v65;
    v60 = v65;
  }

  if (v13 <= 0xF)
  {
    v20 = (*(*v53 + 16))(v53);
    v22 = v20 - v55;
    v23 = v60;
    v24 = 4 * v60;
    if ((v55 & 0x8000000000000000) != 0 || (v22 & 0x8000000000000000) != 0 || (v60 <= v22 ? (v25 = v24 > v22) : (v25 = 1), v25))
    {
      *&v65 = "usd/crateFile.cpp";
      *(&v65 + 1) = "_ReadPossiblyCompressedArray";
      *&v66 = 2460;
      *(&v66 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = float]";
      LOBYTE(v67) = 0;
      v49 = (*(*v53 + 16))(v53);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v65, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld", v23, v24, v22, v49);
    }

    else
    {
      LODWORD(__p) = 0;
      *&v65 = &__p;
      sub_29A18E224(a4, v60, &v65, v21);
      sub_29A18E624(a4);
      sub_29A4E5308(&v53, *(a4 + 32), 4 * v60);
    }

    goto LABEL_80;
  }

  v59 = 0;
  if (sub_29A4E5308(&v53, &v59, 1uLL))
  {
    if (v59 != 116)
    {
      if (v59 != 105)
      {
        *&v65 = "usd/crateFile.cpp";
        *(&v65 + 1) = "_ReadPossiblyCompressedArray";
        *&v66 = 2524;
        *(&v66 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = float]";
        LOBYTE(v67) = 0;
        v47 = v52 + 6720;
        if (v52[6743] < 0)
        {
          v47 = *v47;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v65, 3, "Corrupt data stream detected reading compressed array in <%s>", v47);
        goto LABEL_80;
      }

      v26 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = sub_29A4FF180(v60);
      if (v26)
      {
        sub_29A014BEC(v26);
      }

      if ((v27 & 1) == 0)
      {
        *&v65 = "usd/crateFile.cpp";
        *(&v65 + 1) = "_ReadPossiblyCompressedArray";
        *&v66 = 2480;
        *(&v66 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = float]";
        LOBYTE(v67) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v65, 3, "Failed to read %llu compressed ints", v60);
        goto LABEL_80;
      }

      sub_29A011440(&v65, v60);
      LODWORD(v56) = 0;
      __p = &v56;
      sub_29A18E224(a4, v60, &__p, v28);
      sub_29A18E624(a4);
      v29 = *(a4 + 32);
      sub_29A500168(&v52, v65, ((*(&v65 + 1) - v65) >> 2));
      v31 = *(&v65 + 1);
      v30 = v65;
      if (v65 != *(&v65 + 1))
      {
        v32 = v65;
        do
        {
          v33 = *v32++;
          *v29++ = v33;
        }

        while (v32 != v31);
      }

      if (!v30)
      {
        goto LABEL_80;
      }

      *(&v65 + 1) = v30;
LABEL_79:
      operator delete(v30);
      goto LABEL_80;
    }

    v58 = 0;
    if (!sub_29A4E5308(&v53, &v58, 4uLL))
    {
      goto LABEL_80;
    }

    v34 = (*(*v53 + 16))(v53);
    v35 = v34 - v55;
    v36 = v58;
    if ((v55 & 0x8000000000000000) == 0 && (v35 & 0x8000000000000000) == 0 && v35 >= v58 && 4 * v58 <= v35)
    {
      sub_29A0121C0(&__p, v58);
      sub_29A4E5308(&v53, __p, v62 - __p);
      v37 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = sub_29A4FF180(v60);
      if (v37)
      {
        sub_29A014BEC(v37);
      }

      if ((v38 & 1) == 0)
      {
        *&v65 = "usd/crateFile.cpp";
        *(&v65 + 1) = "_ReadPossiblyCompressedArray";
        *&v66 = 2506;
        *(&v66 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = float]";
        LOBYTE(v67) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v65, 3, "Failed to read %llu compressed uints", v60);
        goto LABEL_77;
      }

      sub_29A01112C(&v56, v60);
      sub_29A4F3550(&v52, v56, ((v57 - v56) >> 2));
      v68 = 0;
      *&v65 = &v68;
      sub_29A18E224(a4, v60, &v65, v39);
      sub_29A18E624(a4);
      v40 = v56;
      v41 = v57;
      if (v56 == v57)
      {
LABEL_70:
        if (!v40)
        {
LABEL_77:
          v30 = __p;
          if (!__p)
          {
            goto LABEL_80;
          }

          v62 = __p;
          goto LABEL_79;
        }
      }

      else
      {
        v42 = *(a4 + 32);
        v43 = v58;
        v44 = v56;
        v45 = __p;
        while (1)
        {
          v46 = *v44;
          if (v46 >= v43)
          {
            break;
          }

          *v42++ = v45[v46];
          if (++v44 == v41)
          {
            goto LABEL_70;
          }
        }

        *&v65 = "usd/crateFile.cpp";
        *(&v65 + 1) = "_ReadPossiblyCompressedArray";
        *&v66 = 2516;
        *(&v66 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = float]";
        LOBYTE(v67) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v65, 3, "Failed to index lut with index %u, out of bounds access", v46);
        v40 = v56;
        if (!v56)
        {
          goto LABEL_77;
        }
      }

      v57 = v40;
      operator delete(v40);
      goto LABEL_77;
    }

    v50 = 4 * v58;
    *&v65 = "usd/crateFile.cpp";
    *(&v65 + 1) = "_ReadPossiblyCompressedArray";
    *&v66 = 2498;
    *(&v66 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = float]";
    LOBYTE(v67) = 0;
    v51 = (*(*v53 + 16))(v53);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v65, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld", v36, v50, v35, v51);
  }

LABEL_80:
  if (v54)
  {
    sub_29A014BEC(v54);
  }
}

void sub_29A50B240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A50B308(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20536B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50B354(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20536B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50B398(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A50B3E4(uint64_t *a1, void *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v4 = this;
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(v4 + 1);
  if (IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      v10 = COERCE_DOUBLE((*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4));
    }

    else
    {
      v10 = *v4;
    }

    return sub_29A50B540(a1, a2, a3, *&v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v20[0] = a2;
    v20[1] = a3;
    v12 = *v4;
    if (fabs(*v4) <= 3.40282347e38 && *v4 == v12)
    {
      return LODWORD(v12) | 0x4009000000000000;
    }

    else
    {
      v14 = *a1;
      if (!*a1)
      {
        v15 = operator new(0x28uLL);
        *v15 = 0u;
        v15[1] = 0u;
        *(v15 + 8) = 1065353216;
        sub_29A160214(a1, v15);
        v14 = *a1;
      }

      v19 = 0;
      v16 = sub_29A50BDCC(v14, v4, v4, &v19);
      v17 = v16;
      if (v18)
      {
        *(v16 + 3) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x9000000000000;
        sub_29A4E5264(v20, v4);
      }

      return *(v17 + 3);
    }
  }
}

unint64_t sub_29A50B540(uint64_t a1, void *a2, double *a3, uint64_t a4)
{
  v50[0] = a2;
  v50[1] = a3;
  result = 0x8009000000000000;
  v49 = 0x8009000000000000;
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
      sub_29A4E04D0(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A50BAA4(v9, a4, a4, &v49);
    if (v14)
    {
      v15 = a2[817];
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v16 = *(v15 + 256);
        *&v56 = a2;
        *(&v56 + 1) = a3;
        v17 = (v16 | (v16 << 16)) & 0xFFFF00;
        if (v17 >= 0x600 && (v18 = *a4, *a4 > 0xFuLL))
        {
          v21 = *(a4 + 32);
          v22 = &v21[v18];
          v23 = 8 * v18;
          v24 = v21;
          while (1)
          {
            v25 = *v24;
            if (*v24 < -2147483650.0 || v25 > 2147483650.0 || v25 != v25)
            {
              break;
            }

            ++v24;
            v23 -= 8;
            if (!v23)
            {
              v26 = *(a3 + 2);
              if (v17 > 0x6FF)
              {
                v53 = *a4;
                sub_29A4E5264(&v56, &v53);
              }

              else
              {
                LODWORD(v53) = *a4;
                sub_29A4FBF2C(&v56, &v53);
              }

              sub_29A011440(&v53, *a4);
              if (*a4)
              {
                v33 = *(a4 + 32);
                v34 = v53;
                v35 = 8 * *a4;
                do
                {
                  v36 = *v33++;
                  *v34++ = v36;
                  v35 -= 8;
                }

                while (v35);
              }

              LOBYTE(__p[0]) = 105;
              sub_29A506C88(&v56, __p);
              v37 = v53;
              v38 = (v54 - v53) >> 2;
              *__p = v56;
              CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v38);
              v40 = operator new[](CompressedBufferSize);
              v42 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v37, v38, v40, v41);
              *&v57 = v42;
              sub_29A4E5264(__p, &v57);
              sub_29A4D0BB8(__p, v40, v42);
              v20 = v26 & 0xFFFFFFFFFFFFLL | 0xA009000000000000;
              operator delete[](v40);
              goto LABEL_52;
            }
          }

          v53 = 0;
          v54 = 0;
          v55 = 0;
          v27 = v18 >> 2;
          if (v27 >= 0x400)
          {
            v28 = 1024;
          }

          else
          {
            v28 = v27;
          }

          __p[0] = 0;
          __p[1] = 0;
          v52 = 0;
          do
          {
            v29 = *v21;
            *&v57 = *v21;
            v30 = v53;
            if (v53 != v54)
            {
              while (*v30 != v29)
              {
                if (++v30 == v54)
                {
                  v30 = v54;
                  break;
                }
              }
            }

            LODWORD(__src) = (v30 - v53) >> 3;
            sub_29A00D250(__p, &__src);
            if (__src == (v54 - v53) >> 3)
            {
              if (v28 == __src)
              {
                v54 = v53;
                __p[1] = __p[0];
                goto LABEL_39;
              }

              sub_29A08B03C(&v53, &v57);
            }

            ++v21;
          }

          while (v21 != v22);
          if (v53 != v54)
          {
            v31 = *(*(&v56 + 1) + 16);
            if (v17 > 0x6FF)
            {
              *&v57 = *a4;
              sub_29A4E5264(&v56, &v57);
            }

            else
            {
              LODWORD(v57) = *a4;
              sub_29A4FBF2C(&v56, &v57);
            }

            LOBYTE(v57) = 116;
            sub_29A506C88(&v56, &v57);
            LODWORD(v57) = (v54 - v53) >> 3;
            sub_29A4FBF2C(&v56, &v57);
            sub_29A502120(&v56, v53, (v54 - v53) >> 3);
            v43 = __p[0];
            v44 = (__p[1] - __p[0]) >> 2;
            v57 = v56;
            v45 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v44);
            v46 = operator new[](v45);
            v48 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v43, v44, v46, v47);
            __src = v48;
            sub_29A4E5264(&v57, &__src);
            sub_29A4D0BB8(&v57, v46, v48);
            v20 = v31 & 0xFFFFFFFFFFFFLL | 0xA009000000000000;
            operator delete[](v46);
            goto LABEL_50;
          }

LABEL_39:
          v57 = v56;
          v32 = sub_29A4FBB98(&v57, 8);
          if (v17 > 0x6FF)
          {
            __src = *a4;
            sub_29A4E5264(&v57, &__src);
          }

          else
          {
            LODWORD(__src) = *a4;
            sub_29A4FBF2C(&v57, &__src);
          }

          sub_29A502120(&v57, *(a4 + 32), *a4);
          v20 = v32 & 0xFFFFFFFFFFFFLL | 0x8009000000000000;
LABEL_50:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

LABEL_52:
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }
        }

        else
        {
          v53 = a2;
          v54 = a3;
          v19 = sub_29A4FBB98(&v53, 8);
          if (v17 > 0x6FF)
          {
            __p[0] = *a4;
            sub_29A4E5264(&v53, __p);
          }

          else
          {
            LODWORD(__p[0]) = *a4;
            sub_29A4FBF2C(&v53, __p);
          }

          v20 = v19 & 0xFFFFFFFFFFFFLL | 0x8009000000000000;
          sub_29A502120(&v53, *(a4 + 32), *a4);
        }

        v13[7] = v20;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v50, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v53) = 1;
        sub_29A4FBF2C(v50, &v53);
        LODWORD(v53) = *a4;
        sub_29A4FBF2C(v50, &v53);
        sub_29A502120(v50, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void sub_29A50BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A50BAA4(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  if (*a2)
  {
    v10 = a2[4];
    v11 = *a2;
    do
    {
      v12 = *v10++;
      v13 = v12;
      if (v12 == 0.0)
      {
        v13 = 0.0;
      }

      v9 = *&v13 + ((v9 + *&v13 + (v9 + *&v13) * (v9 + *&v13)) >> 1);
      --v11;
    }

    while (v11);
    v9 *= 0x9E3779B97F4A7C55;
  }

  v14 = bswap64(v9);
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    v17 = v16.u32[0];
    if (v16.u32[0] > 1uLL)
    {
      v4 = v14;
      if (v14 >= v15)
      {
        v4 = v14 % v15;
      }
    }

    else
    {
      v4 = (v15 - 1) & v14;
    }

    v18 = *(*a1 + 8 * v4);
    if (v18)
    {
      for (i = *v18; i; i = *i)
      {
        v20 = i[1];
        if (v20 == v14)
        {
          if (Overlay::__operatorEqualsEquals(i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v17 > 1)
          {
            if (v20 >= v15)
            {
              v20 %= v15;
            }
          }

          else
          {
            v20 &= v15 - 1;
          }

          if (v20 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v21 = operator new(0x40uLL);
  i = v21;
  *v21 = 0;
  *(v21 + 1) = v14;
  v22 = *(a3 + 16);
  *(v21 + 1) = *a3;
  *(v21 + 2) = v22;
  v23 = *(a3 + 32);
  *(v21 + 6) = v23;
  if (v23)
  {
    v24 = (v23 - 16);
    if (*(v21 + 5))
    {
      v24 = *(v21 + 5);
    }

    atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
  }

  *(v21 + 7) = *a4;
  v25 = (*(a1 + 24) + 1);
  v26 = *(a1 + 32);
  if (!v15 || (v26 * v15) < v25)
  {
    v27 = 1;
    if (v15 >= 3)
    {
      v27 = (v15 & (v15 - 1)) != 0;
    }

    v28 = v27 | (2 * v15);
    v29 = vcvtps_u32_f32(v25 / v26);
    if (v28 <= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    sub_29A019AA0(a1, v30);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v4 = v14 % v15;
      }

      else
      {
        v4 = v14;
      }
    }

    else
    {
      v4 = (v15 - 1) & v14;
    }
  }

  v31 = *a1;
  v32 = *(*a1 + 8 * v4);
  if (v32)
  {
    *i = *v32;
LABEL_48:
    *v32 = i;
    goto LABEL_49;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v31 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v33 = *(*i + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v33 >= v15)
      {
        v33 %= v15;
      }
    }

    else
    {
      v33 &= v15 - 1;
    }

    v32 = (*a1 + 8 * v33);
    goto LABEL_48;
  }

LABEL_49:
  ++*(a1 + 24);
  return i;
}

void sub_29A50BD70(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

double *sub_29A50BDCC(uint64_t a1, double *a2, double *a3, double *a4)
{
  v8 = 0.0;
  if (*a2 != 0.0)
  {
    v8 = *a2;
  }

  v9 = bswap64(0x9E3779B97F4A7C55 * *&v8);
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = *(v13 + 1);
          if (v14 == v9)
          {
            if (v13[2] == *a2)
            {
              return v13;
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

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v13 = operator new(0x20uLL);
  *v13 = 0.0;
  *(v13 + 1) = v9;
  v13[2] = *a3;
  v13[3] = *a4;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *v13 = *v22;
LABEL_40:
    *v22 = v13;
    goto LABEL_41;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v21 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v23 = *(*v13 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return v13;
}

__n128 sub_29A50C02C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053738;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50C078(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A50C0A8(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A50C140(v5, v11, v3, v4);
}

uint64_t sub_29A50C0F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053798))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A50C140(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A50C20C(a1, v7, a3, v9);
    sub_29A1900CC(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  v9[0].n128_u64[0] = 0;
  if (a3 >> 62)
  {
    v9[0].n128_f64[0] = *&a3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 8, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3F9EAC(a4, v9[0].n128_f64);
}

void sub_29A50C20C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    memset(&v48._read, 0, 40);
    if (&v48._read != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(v48._read) = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &v48._read))
    {
      return;
    }

    v7 = a2[1];
    v45 = *a2;
    v46 = v7;
    v8 = *(a2 + 4);
    v47 = v8;
    v9 = *(&v45 + 1);
    v10 = *(&v7 + 1);
    v11 = v7;
    goto LABEL_14;
  }

  v12 = a2[1];
  v45 = *a2;
  v46 = v12;
  v47 = *(a2 + 4);
  if (v6 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
    v9 = *(&v45 + 1);
    v10 = *(&v46 + 1);
    v11 = v46;
    v8 = v47;
    v48._p = 0;
    if (v6 > 0x6FF)
    {
      v14 = pxrInternal__aapl__pxrReserved__::ArchPRead(v47, &v48, 8, v46 + *(&v45 + 1));
      if (v14 == -1)
      {
        return;
      }

      p = v48._p;
      goto LABEL_21;
    }

LABEL_14:
    LODWORD(v48._read) = 0;
    v14 = pxrInternal__aapl__pxrReserved__::ArchPRead(v8, &v48._read, 4, v11 + v9);
    if (v14 == -1)
    {
      return;
    }

    p = LODWORD(v48._read);
    v48._p = LODWORD(v48._read);
LABEL_21:
    v19 = v14 + v11;
    v20 = v10 - v19;
    if (v19 < 0 || (v20 & 0x8000000000000000) != 0 || p > v20 || 8 * p > v20)
    {
      v48._read = "usd/crateFile.cpp";
      v48._seek = "_ReadUncompressedArray";
      v48._write = 2226;
      v48._ub._base = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = double]";
      LOBYTE(v48._ub._size) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v48._read, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    v48._bf._base = 0;
    v48._read = &v48._bf;
    sub_29A18FD48(a4, p, &v48._read);
    sub_29A190088(a4);
    v21 = *(a4 + 32);
    v22 = (8 * *a4);
    v23 = v19 + v9;
    v24 = v8;
LABEL_26:
    pxrInternal__aapl__pxrReserved__::ArchPRead(v24, v21, v22, v23);
    return;
  }

  v48._close = 0;
  if (v6 > 0x6FF)
  {
    v25 = pxrInternal__aapl__pxrReserved__::ArchPRead(v47, &v48._close, 8, v46 + *(&v45 + 1));
    if (v25 == -1)
    {
      return;
    }

    v17 = v46 + v25;
    *&v46 = v46 + v25;
    close = v48._close;
  }

  else
  {
    LODWORD(v48._read) = 0;
    v16 = pxrInternal__aapl__pxrReserved__::ArchPRead(v47, &v48._read, 4, v46 + *(&v45 + 1));
    if (v16 == -1)
    {
      return;
    }

    v17 = v46 + v16;
    *&v46 = v46 + v16;
    close = LODWORD(v48._read);
    v48._close = LODWORD(v48._read);
  }

  if (close <= 0xF)
  {
    v26 = *(&v46 + 1) - v17;
    if (v17 < 0 || (v26 & 0x8000000000000000) != 0 || close > v26 || 8 * close > v26)
    {
      v48._read = "usd/crateFile.cpp";
      v48._seek = "_ReadPossiblyCompressedArray";
      v48._write = 2460;
      v48._ub._base = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = double]";
      LOBYTE(v48._ub._size) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v48._read, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    v48._bf._base = 0;
    v48._read = &v48._bf;
    sub_29A18FD48(a4, close, &v48._read);
    sub_29A190088(a4);
    v21 = *(a4 + 32);
    v22 = (8 * v48._close);
    v24 = v47;
    v23 = v46 + *(&v45 + 1);
    goto LABEL_26;
  }

  HIBYTE(v48._cookie) = 0;
  v27 = pxrInternal__aapl__pxrReserved__::ArchPRead(v47, (&v48._cookie + 7), 1, v17 + *(&v45 + 1));
  if (v27 != -1)
  {
    v28 = v46 + v27;
    *&v46 = v46 + v27;
    if (HIBYTE(v48._cookie) != 116)
    {
      if (HIBYTE(v48._cookie) != 105)
      {
        v48._read = "usd/crateFile.cpp";
        v48._seek = "_ReadPossiblyCompressedArray";
        v48._write = 2524;
        v48._ub._base = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = double]";
        LOBYTE(v48._ub._size) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v48._read, 3, "Corrupt data stream detected reading compressed array in <%s>");
        return;
      }

      if ((sub_29A4FF180(v48._close) & 1) == 0)
      {
        v48._read = "usd/crateFile.cpp";
        v48._seek = "_ReadPossiblyCompressedArray";
        v48._write = 2480;
        v48._ub._base = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = double]";
        LOBYTE(v48._ub._size) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v48._read, 3, "Failed to read %llu compressed ints");
        return;
      }

      sub_29A011440(&v48._read, v48._close);
      v48._p = 0;
      v48._bf._base = &v48;
      sub_29A18FD48(a4, v48._close, &v48._bf);
      sub_29A190088(a4);
      v29 = *(a4 + 32);
      sub_29A4FF1B8(&v45, v48._read, ((v48._seek - v48._read) >> 2));
      read = v48._read;
      seek = v48._seek;
      if (v48._read != v48._seek)
      {
        v32 = v48._read;
        do
        {
          v33 = *v32;
          v32 = (v32 + 4);
          *v29++ = v33;
        }

        while (v32 != seek);
      }

      if (read)
      {
        v48._seek = read;
LABEL_66:
        operator delete(read);
        return;
      }

      return;
    }

    LODWORD(v48._cookie) = 0;
    v34 = pxrInternal__aapl__pxrReserved__::ArchPRead(v47, &v48._cookie, 4, v28 + *(&v45 + 1));
    if (v34 == -1)
    {
      return;
    }

    *&v46 = v46 + v34;
    v35 = *(&v46 + 1) - v46;
    if ((v46 & 0x8000000000000000) != 0 || (v35 & 0x8000000000000000) != 0 || (v35 >= LODWORD(v48._cookie) ? (v36 = 8 * LODWORD(v48._cookie) > v35) : (v36 = 1), v36))
    {
      v48._read = "usd/crateFile.cpp";
      v48._seek = "_ReadPossiblyCompressedArray";
      v48._write = 2498;
      v48._ub._base = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = double]";
      LOBYTE(v48._ub._size) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v48._read, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    sub_29A0124A0(&v48._bf._base, LODWORD(v48._cookie));
    v37 = pxrInternal__aapl__pxrReserved__::ArchPRead(v47, v48._bf._base, (*&v48._bf._size - v48._bf._base), v46 + *(&v45 + 1));
    if (v37 != -1)
    {
      *&v46 = v46 + v37;
    }

    if (sub_29A4FF180(v48._close))
    {
      sub_29A01112C(&v48, v48._close);
      sub_29A4EF8E4(&v45, v48._p, ((*&v48._r - v48._p) >> 2));
      v48._extra = 0;
      v48._read = &v48._extra;
      sub_29A18FD48(a4, v48._close, &v48._read);
      sub_29A190088(a4);
      v38 = v48._p;
      v39 = *&v48._r;
      if (v48._p == *&v48._r)
      {
LABEL_59:
        if (!v38)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v40 = *(a4 + 32);
        cookie = v48._cookie;
        v42 = v48._p;
        base = v48._bf._base;
        while (1)
        {
          v44 = *v42;
          if (v44 >= cookie)
          {
            break;
          }

          *v40++ = *&base[8 * v44];
          v42 += 4;
          if (v42 == v39)
          {
            goto LABEL_59;
          }
        }

        v48._read = "usd/crateFile.cpp";
        v48._seek = "_ReadPossiblyCompressedArray";
        v48._write = 2516;
        v48._ub._base = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = double]";
        LOBYTE(v48._ub._size) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v48._read, 3, "Failed to index lut with index %u, out of bounds access", v44);
        v38 = v48._p;
        if (!v48._p)
        {
LABEL_64:
          read = v48._bf._base;
          if (v48._bf._base)
          {
            *&v48._bf._size = v48._bf._base;
            goto LABEL_66;
          }

          return;
        }
      }

      *&v48._r = v38;
      operator delete(v38);
      goto LABEL_64;
    }

    v48._read = "usd/crateFile.cpp";
    v48._seek = "_ReadPossiblyCompressedArray";
    v48._write = 2506;
    v48._ub._base = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = double]";
    LOBYTE(v48._ub._size) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v48._read, 3, "Failed to read %llu compressed uints", v48._close);
    goto LABEL_64;
  }
}

void sub_29A50C888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A50C904(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20537B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50C950(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20537B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50C988(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A50C9D4(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v10[0] = *a1;
  v10[1] = v8;
  v10[2] = v6;
  v10[3] = v7;
  v11 = sub_29A4CCA14();
  return sub_29A50CA54(v5, v10, v3, v4);
}

double sub_29A50CA54(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 32);
    sub_29A50CB40(a1, v8, a3, &v10);
    sub_29A1900CC(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  *&v8[0] = 0;
  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    *v8 = *&a3;
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 8uLL);
  }

  return sub_29A3F9EAC(a4, v8);
}

void sub_29A50CB40(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v53 = 0;
    __dst = 0u;
    v52 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(a2 + 8, &__dst, 4uLL))
    {
      return;
    }

    v7 = a2[1];
    v40 = *a2;
    v41 = v7;
    v42 = *(a2 + 4);
    goto LABEL_13;
  }

  v8 = a2[1];
  v40 = *a2;
  v41 = v8;
  v42 = *(a2 + 4);
  if (v6 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
LABEL_13:
    *__p = v40;
    v49 = v41;
    v50 = v42;
    if ((atomic_load_explicit(&qword_2A17421E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17421E8))
    {
      v39 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v39)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17421E0 = *v39;
      __cxa_guard_release(&qword_2A17421E8);
    }

    v54 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&__p[1], &v54, 8uLL))
      {
        return;
      }

      v10 = v54;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&__p[1], &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v10 = __dst;
      v54 = __dst;
    }

    v12 = 8 * v10;
    v13 = __p[1];
    if (byte_2A17421E0 == 1 && v12 >= 0x800 && (__p[1] & 7) == 0)
    {
      v14 = sub_29A4FCB64(&__p[1], __p[1], 8 * v10, v10);
      if (v14)
      {
        *&v52 = 0;
        *(&v52 + 1) = v14;
        v53 = v13;
        __dst = v54;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v52 = 2282;
      *(&v52 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
      LOBYTE(v53) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v12);
      sub_29A18FCF8(a4);
      return;
    }

    v15 = __p[1] - *(*v49 + 24);
    v16 = *(*v49 + 32) - v15;
    if ((v15 & 0x8000000000000000) != 0 || (v16 & 0x8000000000000000) != 0 || (v10 <= v16 ? (v17 = v12 > v16) : (v17 = 1), v17))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v52 = 2290;
      *(&v52 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
      LOBYTE(v53) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld");
      return;
    }

    v43 = 0;
    *&__dst = &v43;
    sub_29A18FD48(a4, v10, &__dst);
    sub_29A190088(a4);
    v18 = *(a4 + 32);
    v19 = 8 * *a4;
    v20 = &__p[1];
LABEL_46:
    sub_29A4E7A0C(v20, v18, v19);
    return;
  }

  v47 = 0;
  if (v6 > 0x6FF)
  {
    if (!sub_29A4E7A0C(&v40 + 8, &v47, 8uLL))
    {
      return;
    }

    v11 = v47;
  }

  else
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v40 + 8, &__dst, 4uLL))
    {
      return;
    }

    v11 = __dst;
    v47 = __dst;
  }

  if (v11 <= 0xF)
  {
    v21 = *(&v40 + 1) - *(*v41 + 24);
    v22 = *(*v41 + 32) - v21;
    if (v21 < 0 || (v22 & 0x8000000000000000) != 0 || (v11 <= v22 ? (v23 = 8 * v11 > v22) : (v23 = 1), v23))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v52 = 2460;
      *(&v52 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
      LOBYTE(v53) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    __p[0] = 0;
    *&__dst = __p;
    sub_29A18FD48(a4, v11, &__dst);
    sub_29A190088(a4);
    v18 = *(a4 + 32);
    v19 = 8 * v47;
    v20 = &v40 + 1;
    goto LABEL_46;
  }

  v46 = 0;
  if (!sub_29A4E7A0C(&v40 + 8, &v46, 1uLL))
  {
    return;
  }

  if (v46 == 116)
  {
    v45 = 0;
    if (!sub_29A4E7A0C(&v40 + 8, &v45, 4uLL))
    {
      return;
    }

    v29 = *(&v40 + 1) - *(*v41 + 24);
    v30 = *(*v41 + 32) - v29;
    if (v29 < 0 || (v30 & 0x8000000000000000) != 0 || (v30 >= v45 ? (v31 = 8 * v45 > v30) : (v31 = 1), v31))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v52 = 2498;
      *(&v52 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
      LOBYTE(v53) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    sub_29A0124A0(__p, v45);
    sub_29A4E7A0C(&v40 + 8, __p[0], __p[1] - __p[0]);
    if ((sub_29A4FF180(v47) & 1) == 0)
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v52 = 2506;
      *(&v52 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
      LOBYTE(v53) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed uints", v47);
      goto LABEL_74;
    }

    sub_29A01112C(&v43, v47);
    sub_29A4E842C(&v40, v43, (v44 - v43));
    v54 = 0;
    *&__dst = &v54;
    sub_29A18FD48(a4, v47, &__dst);
    sub_29A190088(a4);
    v32 = v43;
    v33 = v44;
    if (v43 == v44)
    {
LABEL_69:
      if (!v32)
      {
LABEL_74:
        v25 = __p[0];
        if (!__p[0])
        {
          return;
        }

        __p[1] = __p[0];
        goto LABEL_76;
      }
    }

    else
    {
      v34 = *(a4 + 32);
      v35 = v45;
      v36 = v43;
      v37 = __p[0];
      while (1)
      {
        v38 = *v36;
        if (v38 >= v35)
        {
          break;
        }

        *v34++ = v37[v38];
        if (++v36 == v33)
        {
          goto LABEL_69;
        }
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v52 = 2516;
      *(&v52 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
      LOBYTE(v53) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to index lut with index %u, out of bounds access", v38);
      v32 = v43;
      if (!v43)
      {
        goto LABEL_74;
      }
    }

    v44 = v32;
    operator delete(v32);
    goto LABEL_74;
  }

  if (v46 != 105)
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v52 = 2524;
    *(&v52 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
    LOBYTE(v53) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Corrupt data stream detected reading compressed array in <%s>");
    return;
  }

  if ((sub_29A4FF180(v47) & 1) == 0)
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v52 = 2480;
    *(&v52 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = double]";
    LOBYTE(v53) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed ints");
    return;
  }

  sub_29A011440(&__dst, v47);
  v43 = 0;
  __p[0] = &v43;
  sub_29A18FD48(a4, v47, __p);
  sub_29A190088(a4);
  v24 = *(a4 + 32);
  sub_29A4FF964(&v40, __dst, ((*(&__dst + 1) - __dst) >> 2));
  v26 = *(&__dst + 1);
  v25 = __dst;
  if (__dst != *(&__dst + 1))
  {
    v27 = __dst;
    do
    {
      v28 = *v27++;
      *v24++ = v28;
    }

    while (v27 != v26);
  }

  if (v25)
  {
    *(&__dst + 1) = v25;
LABEL_76:
    operator delete(v25);
  }
}

__n128 sub_29A50D350(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053838;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50D39C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50D3D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A50D420(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A50D4CC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A50D4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A50D4CC(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v11 = *a2;
    v6 = *(a2 + 2);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 3);
    sub_29A50D61C(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A1900CC(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  v14[0].n128_u64[0] = 0;
  v8 = *a2;
  v5 = *(a2 + 2);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if (!(a3 >> 62))
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v8 + 1, v14, 8uLL);
    v5 = v9;
    if (!v9)
    {
      return sub_29A3F9EAC(a4, v14[0].n128_f64);
    }

    goto LABEL_13;
  }

  v14[0].n128_f64[0] = *&a3;
  if (v5)
  {
LABEL_13:
    sub_29A014BEC(v5);
  }

  return sub_29A3F9EAC(a4, v14[0].n128_f64);
}

void sub_29A50D5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A50D61C(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    if (&v60 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  a2[3] = (a3 & 0xFFFFFFFFFFFFLL);
  v7 = *a2;
  v8 = ((*a2)[6576] << 16) | ((*a2)[6577] << 8);
  if (v8 <= 0x4FF)
  {
    LODWORD(v60) = 0;
    if (!sub_29A4E5308(a2 + 1, &v60, 4uLL))
    {
      return;
    }

    v7 = *a2;
  }

  v10 = a2[1];
  v9 = a2[2];
  v47 = v7;
  v48 = v10;
  v49 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[3];
  v50 = v11;
  if (v8 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
    __p = v7;
    v57 = v48;
    v58 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v50;
    }

    v59 = v11;
    v63 = 0;
    if (v8 > 0x6FF)
    {
      if (!sub_29A4E5308(&v57, &v63, 8uLL))
      {
        goto LABEL_31;
      }
    }

    else
    {
      LODWORD(v60) = 0;
      if (!sub_29A4E5308(&v57, &v60, 4uLL))
      {
        goto LABEL_31;
      }

      v63 = v60;
    }

    v14 = (*(*v57 + 16))(v57);
    v15 = v14 - v59;
    v16 = v63;
    if ((v59 & 0x8000000000000000) != 0 || (v15 & 0x8000000000000000) != 0 || (v63 <= v15 ? (v17 = 8 * v63 > v15) : (v17 = 1), v17))
    {
      *&v60 = "usd/crateFile.cpp";
      *(&v60 + 1) = "_ReadUncompressedArray";
      *&v61 = 2226;
      *(&v61 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = double]";
      LOBYTE(v62) = 0;
      v43 = (*(*v57 + 16))(v57);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v60, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v16, 8 * v16, v15, v43);
    }

    else
    {
      v51 = 0;
      *&v60 = &v51;
      sub_29A18FD48(a4, v63, &v60);
      sub_29A190088(a4);
      sub_29A4E5308(&v57, *(a4 + 32), 8 * *a4);
    }

LABEL_31:
    if (v58)
    {
      sub_29A014BEC(v58);
    }

    goto LABEL_80;
  }

  v55 = 0;
  if (v8 > 0x6FF)
  {
    if (!sub_29A4E5308(&v48, &v55, 8uLL))
    {
      goto LABEL_80;
    }

    v13 = v55;
  }

  else
  {
    LODWORD(v60) = 0;
    if (!sub_29A4E5308(&v48, &v60, 4uLL))
    {
      goto LABEL_80;
    }

    v13 = v60;
    v55 = v60;
  }

  if (v13 <= 0xF)
  {
    v18 = (*(*v48 + 16))(v48);
    v19 = v18 - v50;
    v20 = v55;
    v21 = 8 * v55;
    if ((v50 & 0x8000000000000000) != 0 || (v19 & 0x8000000000000000) != 0 || (v55 <= v19 ? (v22 = v21 > v19) : (v22 = 1), v22))
    {
      *&v60 = "usd/crateFile.cpp";
      *(&v60 + 1) = "_ReadPossiblyCompressedArray";
      *&v61 = 2460;
      *(&v61 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = double]";
      LOBYTE(v62) = 0;
      v44 = (*(*v48 + 16))(v48);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v60, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld", v20, v21, v19, v44);
    }

    else
    {
      __p = 0;
      *&v60 = &__p;
      sub_29A18FD48(a4, v55, &v60);
      sub_29A190088(a4);
      sub_29A4E5308(&v48, *(a4 + 32), 8 * v55);
    }

    goto LABEL_80;
  }

  v54 = 0;
  if (sub_29A4E5308(&v48, &v54, 1uLL))
  {
    if (v54 != 116)
    {
      if (v54 != 105)
      {
        *&v60 = "usd/crateFile.cpp";
        *(&v60 + 1) = "_ReadPossiblyCompressedArray";
        *&v61 = 2524;
        *(&v61 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = double]";
        LOBYTE(v62) = 0;
        v42 = v47 + 6720;
        if (v47[6743] < 0)
        {
          v42 = *v42;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v60, 3, "Corrupt data stream detected reading compressed array in <%s>", v42);
        goto LABEL_80;
      }

      v23 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = sub_29A4FF180(v55);
      if (v23)
      {
        sub_29A014BEC(v23);
      }

      if ((v24 & 1) == 0)
      {
        *&v60 = "usd/crateFile.cpp";
        *(&v60 + 1) = "_ReadPossiblyCompressedArray";
        *&v61 = 2480;
        *(&v61 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = double]";
        LOBYTE(v62) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v60, 3, "Failed to read %llu compressed ints", v55);
        goto LABEL_80;
      }

      sub_29A011440(&v60, v55);
      v51 = 0;
      __p = &v51;
      sub_29A18FD48(a4, v55, &__p);
      sub_29A190088(a4);
      v25 = *(a4 + 32);
      sub_29A500168(&v47, v60, ((*(&v60 + 1) - v60) >> 2));
      v27 = *(&v60 + 1);
      v26 = v60;
      if (v60 != *(&v60 + 1))
      {
        v28 = v60;
        do
        {
          v29 = *v28++;
          *v25++ = v29;
        }

        while (v28 != v27);
      }

      if (!v26)
      {
        goto LABEL_80;
      }

      *(&v60 + 1) = v26;
LABEL_79:
      operator delete(v26);
      goto LABEL_80;
    }

    v53 = 0;
    if (!sub_29A4E5308(&v48, &v53, 4uLL))
    {
      goto LABEL_80;
    }

    v30 = (*(*v48 + 16))(v48);
    v31 = v30 - v50;
    v32 = v53;
    if ((v50 & 0x8000000000000000) == 0 && (v31 & 0x8000000000000000) == 0 && v31 >= v53 && 8 * v53 <= v31)
    {
      sub_29A0124A0(&__p, v53);
      sub_29A4E5308(&v48, __p, v57 - __p);
      v33 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = sub_29A4FF180(v55);
      if (v33)
      {
        sub_29A014BEC(v33);
      }

      if ((v34 & 1) == 0)
      {
        *&v60 = "usd/crateFile.cpp";
        *(&v60 + 1) = "_ReadPossiblyCompressedArray";
        *&v61 = 2506;
        *(&v61 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = double]";
        LOBYTE(v62) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v60, 3, "Failed to read %llu compressed uints", v55);
        goto LABEL_77;
      }

      sub_29A01112C(&v51, v55);
      sub_29A4F3550(&v47, v51, (v52 - v51));
      v63 = 0;
      *&v60 = &v63;
      sub_29A18FD48(a4, v55, &v60);
      sub_29A190088(a4);
      v35 = v51;
      v36 = v52;
      if (v51 == v52)
      {
LABEL_70:
        if (!v35)
        {
LABEL_77:
          v26 = __p;
          if (!__p)
          {
            goto LABEL_80;
          }

          v57 = __p;
          goto LABEL_79;
        }
      }

      else
      {
        v37 = *(a4 + 32);
        v38 = v53;
        v39 = v51;
        v40 = __p;
        while (1)
        {
          v41 = *v39;
          if (v41 >= v38)
          {
            break;
          }

          *v37++ = v40[v41];
          if (++v39 == v36)
          {
            goto LABEL_70;
          }
        }

        *&v60 = "usd/crateFile.cpp";
        *(&v60 + 1) = "_ReadPossiblyCompressedArray";
        *&v61 = 2516;
        *(&v61 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = double]";
        LOBYTE(v62) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v60, 3, "Failed to index lut with index %u, out of bounds access", v41);
        v35 = v51;
        if (!v51)
        {
          goto LABEL_77;
        }
      }

      v52 = v35;
      operator delete(v35);
      goto LABEL_77;
    }

    v45 = 8 * v53;
    *&v60 = "usd/crateFile.cpp";
    *(&v60 + 1) = "_ReadPossiblyCompressedArray";
    *&v61 = 2498;
    *(&v61 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = double]";
    LOBYTE(v62) = 0;
    v46 = (*(*v48 + 16))(v48);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v60, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld", v32, v45, v31, v46);
  }

LABEL_80:
  if (v49)
  {
    sub_29A014BEC(v49);
  }
}

void sub_29A50DDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A50DE84(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20538B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50DED0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20538B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50DF14(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A50DF60(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(this + 1);
  if (IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v10 = *this;
    }

    return sub_29A50E024(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v12 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v12 = *this;
    }

    return pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(a2, v12) | 0x400A000000000000;
  }
}

unint64_t sub_29A50E024(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x800A000000000000;
  v18 = 0x800A000000000000;
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
      sub_29A4E058C(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A50E1B4(v9, a4, a4, &v18);
    if (v14)
    {
      v15 = *(a2 + 817);
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

        sub_29A50E4C8(*(a4 + 32), (*(a4 + 32) + 24 * *a4), v20);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x800A000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A50E4C8(*(a4 + 32), (*(a4 + 32) + 24 * *a4), v19);
      }
    }

    return v13[7];
  }

  return result;
}

uint64_t *sub_29A50E1B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  LOBYTE(v32) = 1;
  v31 = v9;
  sub_29A1C5CF0(&v31, *(a2 + 32), v9);
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
          if (Overlay::__operatorEqualsEquals(i + 2, a2))
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

void sub_29A50E46C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A50E4C8(unsigned __int8 *a1, unsigned __int8 *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      __src = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a3, v5);
      sub_29A4FBF2C(a3, &__src);
      v5 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

__n128 sub_29A50E53C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50E588(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A50E5B8(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = v8;
  v10[4] = v9;
  sub_29A50E650(v5, v10, v3, v4);
}

uint64_t sub_29A50E604(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A50E650(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v6 = *(a2 + 16);
    v9 = *a2;
    v10 = v6;
    v11 = *(a2 + 32);
    sub_29A50E744(a1, &v9, a3, &v12);
    sub_29A3FA510(a4, &v12);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v5 = *(a2 + 16);
  v12 = *a2;
  v13 = v5;
  v14 = *(a2 + 32);
  sub_29A50EE14(&v12, a3, &v9);
  *__p = v9;
  v8 = v10;
  sub_29A230004(a4, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A50E744(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(v18) = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &v18))
    {
      return;
    }

    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    v17 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v15 = *a2;
  v16 = v8;
  v17 = *(a2 + 4);
  v21 = 0;
  if (v6 <= 0x6FF)
  {
LABEL_9:
    LODWORD(v18) = 0;
    v9 = pxrInternal__aapl__pxrReserved__::ArchPRead(v17, &v18, 4, v16 + *(&v15 + 1));
    if (v9 == -1)
    {
      return;
    }

    v10 = v9 + v16;
    *&v16 = v9 + v16;
    v11 = v18;
    v21 = v18;
    goto LABEL_13;
  }

  v12 = pxrInternal__aapl__pxrReserved__::ArchPRead(v17, &v21, 8, v16 + *(&v15 + 1));
  if (v12 == -1)
  {
    return;
  }

  v10 = v12 + v16;
  *&v16 = v12 + v16;
  v11 = v21;
LABEL_13:
  v13 = *(&v16 + 1) - v10;
  if (v10 < 0 || (v13 & 0x8000000000000000) != 0 || (v11 <= v13 ? (v14 = 24 * v11 > v13) : (v14 = 1), v14))
  {
    *&v18 = "usd/crateFile.cpp";
    *(&v18 + 1) = "_ReadUncompressedArray";
    *&v19 = 2226;
    *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = std::string]";
    LOBYTE(v20) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v11, 24 * v11, v13, *(&v16 + 1));
  }

  else
  {
    sub_29A50E938(a4, v11);
    sub_29A214388(a4);
    sub_29A50E99C(&v15, *(a4 + 32), *a4);
  }
}

void sub_29A50E938(unint64_t *a1, unint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  v4 = __p;
  sub_29A50EAD0(a1, a2, &v4);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A50E980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A50E99C(uint64_t *a1, std::string *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  _C[0] = -1;
  result = sub_29A4FC36C((a1 + 1), 0, _C);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      v8 = *a1;
      v9 = *(*a1 + 144);
      if (_C[0] >= ((*(*a1 + 152) - v9) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(result);
        v15 = &qword_2A1742350;
      }

      else
      {
        v10 = *(v9 + 4 * _C[0]);
        v12 = v8 + 120;
        v11 = *(v8 + 120);
        if (v10 >= (*(v12 + 8) - v11) >> 3)
        {
          result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(result);
          v13 = &qword_2A1742328;
        }

        else
        {
          v13 = (v11 + 8 * v10);
        }

        v14 = *v13 & 0xFFFFFFFFFFFFFFF8;
        v15 = v14 ? (v14 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      }

      std::string::operator=(a2, v15);
      if (a3 - 1 == v7)
      {
        break;
      }

      ++a2;
      _C[0] = -1;
      result = sub_29A4FC36C((a1 + 1), 0, _C);
      ++v7;
      if (!result)
      {
        return (v7 >= a3);
      }
    }

    return 1;
  }

  return result;
}

void sub_29A50EAD0(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v30 = &v7[24 * a2];
            v31 = 24 * v3 - 24 * a2;
            do
            {
              if (v30[23] < 0)
              {
                operator delete(*v30);
              }

              v30 += 24;
              v31 -= 24;
            }

            while (v31);
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 1) < a2)
            {
              v7 = sub_29A214158(a1, a2);
              sub_29A2142B4(v9, (v9 + 24 * v3), v7);
            }

            v10 = 0;
            v11 = &v7[24 * v3];
            v12 = 24 * v3;
            v13 = *a3;
            v14 = v12 - 24 * a2;
            v15 = v11;
            do
            {
              if (*(v13 + 23) < 0)
              {
                sub_29A008D14(v15, *v13, *(v13 + 1));
              }

              else
              {
                v16 = *v13;
                *(v15 + 2) = *(v13 + 2);
                *v15 = v16;
              }

              v15 += 24;
              v10 -= 24;
            }

            while (v14 != v10);
          }

          goto LABEL_40;
        }

        v7 = a1[4];
      }

      v21 = v7;
      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a1;
      }

      v7 = sub_29A214158(a1, a2);
      sub_29A2142B4(v21, (v21 + 24 * v22), v7);
      if (v3 < a2)
      {
        v23 = 0;
        v24 = &v7[24 * v3];
        v25 = 24 * v3;
        v26 = *a3;
        v27 = v25 - 24 * a2;
        v28 = v24;
        do
        {
          if (*(v26 + 23) < 0)
          {
            sub_29A008D14(v28, *v26, *(v26 + 1));
          }

          else
          {
            v29 = *v26;
            *(v28 + 2) = *(v26 + 2);
            *v28 = v29;
          }

          v28 += 24;
          v23 -= 24;
        }

        while (v27 != v23);
      }

      goto LABEL_40;
    }

    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v7 = sub_29A214158(a1, a2);
      v17 = 0;
      v18 = *a3;
      do
      {
        v19 = &v7[v17];
        if (*(v18 + 23) < 0)
        {
          sub_29A008D14(v19, *v18, *(v18 + 1));
        }

        else
        {
          v20 = *v18;
          *(v19 + 2) = *(v18 + 2);
          *v19 = v20;
        }

        v17 += 24;
      }

      while (24 * a2 != v17);
LABEL_40:
      if (v7 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
      }

      *a1 = a2;
      return;
    }
  }

  sub_29A213F24(a1);
}

void sub_29A50ED54(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_29A50EE14(uint64_t *EmptyToken@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *EmptyToken;
  v5 = *(*EmptyToken + 144);
  if (a2 >= ((*(*EmptyToken + 152) - v5) >> 2))
  {
    if ((atomic_load_explicit(&qword_2A14F80D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F80D0))
    {
      v17 = operator new(0x18uLL);
      sub_29A008E78(v17, "");
      off_2A14F80C8 = v17;
      __cxa_guard_release(&qword_2A14F80D0);
    }

    v18[0] = "usd/crateFile.cpp";
    v18[1] = "GetUninlinedValue";
    v18[2] = 1350;
    v18[3] = "T pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::GetUninlinedValue(uint32_t) const [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = std::string]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 3, "Failed to get string for index %u", a2);
    if (*(off_2A14F80C8 + 23) < 0)
    {
      sub_29A008D14(a3, *off_2A14F80C8, *(off_2A14F80C8 + 1));
      return;
    }

    v12 = *off_2A14F80C8;
    v13 = *(off_2A14F80C8 + 2);
    goto LABEL_9;
  }

  v6 = *(v5 + 4 * a2);
  v8 = v4 + 120;
  v7 = *(v4 + 120);
  if (v6 >= (*(v8 + 8) - v7) >> 3)
  {
    EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
    v9 = &qword_2A1742328;
  }

  else
  {
    v9 = (v7 + 8 * v6);
  }

  v10 = *v9 & 0xFFFFFFFFFFFFFFF8;
  if (v10)
  {
    EmptyString = (v10 + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
  }

  if ((*(EmptyString + 23) & 0x80000000) == 0)
  {
    v12 = *EmptyString;
    v13 = EmptyString[2];
LABEL_9:
    *(a3 + 16) = v13;
    *a3 = v12;
    return;
  }

  v14 = *EmptyString;
  v15 = EmptyString[1];

  sub_29A008D14(a3, v14, v15);
}

void sub_29A50EF9C(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A14F80D0);
  _Unwind_Resume(a1);
}

__n128 sub_29A50EFCC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20539B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50F018(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20539B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50F050(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A50F09C(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v9[0] = *a1;
  v9[1] = v8;
  v9[2] = v6;
  v9[3] = v7;
  v10 = sub_29A4CCA14();
  sub_29A50F11C(v5, v9, v3, v4);
}

void sub_29A50F11C(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v6 = *(a2 + 16);
    v9 = *a2;
    v10 = v6;
    v11 = *(a2 + 32);
    sub_29A50F210(a1, &v9, a3, &v12);
    sub_29A3FA510(a4, &v12);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v5 = *(a2 + 16);
  v12 = *a2;
  v13 = v5;
  v14 = *(a2 + 32);
  sub_29A50F534(&v12, a3, &v9);
  *__p = v9;
  v8 = v10;
  sub_29A230004(a4, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A50F210(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v19 = 0;
    __dst = 0u;
    v18 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(a2 + 8, &__dst, 4uLL))
    {
      return;
    }

    v7 = a2[1];
    v14 = *a2;
    v15 = v7;
    v16 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v14 = *a2;
  v15 = v8;
  v16 = *(a2 + 4);
  v20 = 0;
  if (v6 <= 0x6FF)
  {
LABEL_9:
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v14 + 8, &__dst, 4uLL))
    {
      return;
    }

    v9 = __dst;
    v20 = __dst;
    goto LABEL_13;
  }

  if (!sub_29A4E7A0C(&v14 + 8, &v20, 8uLL))
  {
    return;
  }

  v9 = v20;
LABEL_13:
  v10 = *(*v15 + 32);
  v11 = *(&v14 + 1) - *(*v15 + 24);
  v12 = v10 - v11;
  if (v11 < 0 || (v12 & 0x8000000000000000) != 0 || (v9 <= v12 ? (v13 = 24 * v9 > v12) : (v13 = 1), v13))
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadUncompressedArray";
    *&v18 = 2226;
    *(&v18 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = std::string]";
    LOBYTE(v19) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v9, 24 * v9, v12, v10);
  }

  else
  {
    sub_29A50E938(a4, v9);
    sub_29A214388(a4);
    sub_29A50F400(&v14, *(a4 + 32), *a4);
  }
}

uint64_t sub_29A50F400(uint64_t *a1, std::string *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  __dst = -1;
  result = sub_29A4E7A0C((a1 + 1), &__dst, 4uLL);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      v8 = *a1;
      v9 = *(*a1 + 144);
      if (__dst >= ((*(*a1 + 152) - v9) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(result);
        v15 = &qword_2A1742350;
      }

      else
      {
        v10 = *(v9 + 4 * __dst);
        v12 = v8 + 120;
        v11 = *(v8 + 120);
        if (v10 >= (*(v12 + 8) - v11) >> 3)
        {
          result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(result);
          v13 = &qword_2A1742328;
        }

        else
        {
          v13 = (v11 + 8 * v10);
        }

        v14 = *v13 & 0xFFFFFFFFFFFFFFF8;
        v15 = v14 ? (v14 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      }

      std::string::operator=(a2, v15);
      if (a3 - 1 == v7)
      {
        break;
      }

      ++a2;
      __dst = -1;
      result = sub_29A4E7A0C((a1 + 1), &__dst, 4uLL);
      ++v7;
      if (!result)
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

void sub_29A50F534(uint64_t *EmptyToken@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *EmptyToken;
  v5 = *(*EmptyToken + 144);
  if (a2 >= ((*(*EmptyToken + 152) - v5) >> 2))
  {
    if ((atomic_load_explicit(&qword_2A14F80E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F80E0))
    {
      v17 = operator new(0x18uLL);
      sub_29A008E78(v17, "");
      off_2A14F80D8 = v17;
      __cxa_guard_release(&qword_2A14F80E0);
    }

    v18[0] = "usd/crateFile.cpp";
    v18[1] = "GetUninlinedValue";
    v18[2] = 1350;
    v18[3] = "T pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::GetUninlinedValue(uint32_t) const [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = std::string]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 3, "Failed to get string for index %u", a2);
    if (*(off_2A14F80D8 + 23) < 0)
    {
      sub_29A008D14(a3, *off_2A14F80D8, *(off_2A14F80D8 + 1));
      return;
    }

    v12 = *off_2A14F80D8;
    v13 = *(off_2A14F80D8 + 2);
    goto LABEL_9;
  }

  v6 = *(v5 + 4 * a2);
  v8 = v4 + 120;
  v7 = *(v4 + 120);
  if (v6 >= (*(v8 + 8) - v7) >> 3)
  {
    EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
    v9 = &qword_2A1742328;
  }

  else
  {
    v9 = (v7 + 8 * v6);
  }

  v10 = *v9 & 0xFFFFFFFFFFFFFFF8;
  if (v10)
  {
    EmptyString = (v10 + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
  }

  if ((*(EmptyString + 23) & 0x80000000) == 0)
  {
    v12 = *EmptyString;
    v13 = EmptyString[2];
LABEL_9:
    *(a3 + 16) = v13;
    *a3 = v12;
    return;
  }

  v14 = *EmptyString;
  v15 = EmptyString[1];

  sub_29A008D14(a3, v14, v15);
}

void sub_29A50F6BC(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A14F80E0);
  _Unwind_Resume(a1);
}

__n128 sub_29A50F6EC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053A38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50F738(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053A38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50F770(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053A98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A50F7BC(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A50F868(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A50F844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A50F868(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v12 = *a2;
    v6 = *(a2 + 2);
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 3);
    sub_29A50F9C4(a1, &v12, a3, &v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A3FA510(a4, &v15);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  v7 = *a2;
  v5 = *(a2 + 2);
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 3);
  sub_29A50FD80(&v7, a3, &v15);
  *__p = v15;
  v11 = v16;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  sub_29A230004(a4, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A50F9C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (&v20 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = *a2;
  v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v7 <= 0x4FF)
  {
    LODWORD(v20) = 0;
    if (!sub_29A4E5308(a2 + 1, &v20, 4uLL))
    {
      return;
    }

    v6 = *a2;
  }

  v8 = a2[1];
  v9 = a2[2];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = a2[3];
    v16 = v6;
    v17 = v8;
    v18 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = a2[3];
    v16 = v6;
    v17 = v8;
    v18 = 0;
  }

  v19 = v10;
  v23 = 0;
  if (v7 > 0x6FF)
  {
    if (sub_29A4E5308(&v17, &v23, 8uLL))
    {
LABEL_15:
      v11 = (*(*v17 + 16))(v17);
      v12 = v11 - v19;
      v13 = v23;
      if (v19 < 0 || (v12 & 0x8000000000000000) != 0 || (v23 <= v12 ? (v14 = 24 * v23 > v12) : (v14 = 1), v14))
      {
        *&v20 = "usd/crateFile.cpp";
        *(&v20 + 1) = "_ReadUncompressedArray";
        *&v21 = 2226;
        *(&v21 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = std::string]";
        LOBYTE(v22) = 0;
        v15 = (*(*v17 + 16))(v17);
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v13, 24 * v13, v12, v15);
      }

      else
      {
        sub_29A50E938(a4, v23);
        sub_29A214388(a4);
        sub_29A50FC4C(&v16, *(a4 + 32), *a4);
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
    if (sub_29A4E5308(&v17, &v20, 4uLL))
    {
      v23 = v20;
      goto LABEL_15;
    }
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

uint64_t sub_29A50FC4C(void *a1, std::string *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v16 = -1;
  result = sub_29A4E5308(a1 + 1, &v16, 4uLL);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      v8 = *a1;
      v9 = *(*a1 + 144);
      if (v16 >= ((*(*a1 + 152) - v9) >> 2))
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(result);
        v15 = &qword_2A1742350;
      }

      else
      {
        v10 = *(v9 + 4 * v16);
        v12 = v8 + 120;
        v11 = *(v8 + 120);
        if (v10 >= (*(v12 + 8) - v11) >> 3)
        {
          result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(result);
          v13 = &qword_2A1742328;
        }

        else
        {
          v13 = (v11 + 8 * v10);
        }

        v14 = *v13 & 0xFFFFFFFFFFFFFFF8;
        v15 = v14 ? (v14 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      }

      std::string::operator=(a2, v15);
      if (a3 - 1 == v7)
      {
        break;
      }

      ++a2;
      v16 = -1;
      result = sub_29A4E5308(a1 + 1, &v16, 4uLL);
      ++v7;
      if (!result)
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

void sub_29A50FD80(uint64_t *EmptyToken@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *EmptyToken;
  v5 = *(*EmptyToken + 144);
  if (a2 >= ((*(*EmptyToken + 152) - v5) >> 2))
  {
    if ((atomic_load_explicit(&qword_2A14F80F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F80F0))
    {
      v17 = operator new(0x18uLL);
      sub_29A008E78(v17, "");
      off_2A14F80E8 = v17;
      __cxa_guard_release(&qword_2A14F80F0);
    }

    v18[0] = "usd/crateFile.cpp";
    v18[1] = "GetUninlinedValue";
    v18[2] = 1350;
    v18[3] = "T pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>::GetUninlinedValue(uint32_t) const [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream, T = std::string]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 3, "Failed to get string for index %u", a2);
    if (*(off_2A14F80E8 + 23) < 0)
    {
      sub_29A008D14(a3, *off_2A14F80E8, *(off_2A14F80E8 + 1));
      return;
    }

    v12 = *off_2A14F80E8;
    v13 = *(off_2A14F80E8 + 2);
    goto LABEL_9;
  }

  v6 = *(v5 + 4 * a2);
  v8 = v4 + 120;
  v7 = *(v4 + 120);
  if (v6 >= (*(v8 + 8) - v7) >> 3)
  {
    EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
    v9 = &qword_2A1742328;
  }

  else
  {
    v9 = (v7 + 8 * v6);
  }

  v10 = *v9 & 0xFFFFFFFFFFFFFFF8;
  if (v10)
  {
    EmptyString = (v10 + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
  }

  if ((*(EmptyString + 23) & 0x80000000) == 0)
  {
    v12 = *EmptyString;
    v13 = EmptyString[2];
LABEL_9:
    *(a3 + 16) = v13;
    *a3 = v12;
    return;
  }

  v14 = *EmptyString;
  v15 = EmptyString[1];

  sub_29A008D14(a3, v14, v15);
}

void sub_29A50FF08(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A14F80F0);
  _Unwind_Resume(a1);
}

__n128 sub_29A50FF38(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053AB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50FF84(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053AB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A50FFC8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A510014(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v4 = this;
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(v4 + 1);
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

    return sub_29A5100D8(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(a2, v4) | 0x400B000000000000;
  }
}

unint64_t sub_29A5100D8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x800B000000000000;
  v18 = 0x800B000000000000;
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
      sub_29A4E0648(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A510260(v9, a4, a4, &v18);
    if (v14)
    {
      v15 = *(a2 + 817);
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

        sub_29A51057C(*(a4 + 32), (*(a4 + 32) + 8 * *a4), v20);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x800B000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A51057C(*(a4 + 32), (*(a4 + 32) + 8 * *a4), v19);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A510260(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  if (*a2)
  {
    v10 = a2[4];
    v11 = *a2;
    do
    {
      v12 = *v10++;
      v9 = (v12 & 0xFFFFFFFFFFFFFFF8) + (((v12 & 0xFFFFFFFFFFFFFFF8) + v9 + ((v12 & 0xFFFFFFFFFFFFFFF8) + v9) * ((v12 & 0xFFFFFFFFFFFFFFF8) + v9)) >> 1);
      --v11;
    }

    while (v11);
    v9 *= 0x9E3779B97F4A7C55;
  }

  v13 = bswap64(v9);
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    v16 = v15.u32[0];
    if (v15.u32[0] > 1uLL)
    {
      v4 = v13;
      if (v13 >= v14)
      {
        v4 = v13 % v14;
      }
    }

    else
    {
      v4 = (v14 - 1) & v13;
    }

    v17 = *(*a1 + 8 * v4);
    if (v17)
    {
      for (i = *v17; i; i = *i)
      {
        v19 = i[1];
        if (v19 == v13)
        {
          if (Overlay::__operatorEqualsEquals(i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v16 > 1)
          {
            if (v19 >= v14)
            {
              v19 %= v14;
            }
          }

          else
          {
            v19 &= v14 - 1;
          }

          if (v19 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v20 = operator new(0x40uLL);
  i = v20;
  *v20 = 0;
  *(v20 + 1) = v13;
  v21 = *(a3 + 16);
  *(v20 + 1) = *a3;
  *(v20 + 2) = v21;
  v22 = *(a3 + 32);
  *(v20 + 6) = v22;
  if (v22)
  {
    v23 = (v22 - 16);
    if (*(v20 + 5))
    {
      v23 = *(v20 + 5);
    }

    atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
  }

  *(v20 + 7) = *a4;
  v24 = (*(a1 + 24) + 1);
  v25 = *(a1 + 32);
  if (!v14 || (v25 * v14) < v24)
  {
    v26 = 1;
    if (v14 >= 3)
    {
      v26 = (v14 & (v14 - 1)) != 0;
    }

    v27 = v26 | (2 * v14);
    v28 = vcvtps_u32_f32(v24 / v25);
    if (v27 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    sub_29A019AA0(a1, v29);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v4 = v13 % v14;
      }

      else
      {
        v4 = v13;
      }
    }

    else
    {
      v4 = (v14 - 1) & v13;
    }
  }

  v30 = *a1;
  v31 = *(*a1 + 8 * v4);
  if (v31)
  {
    *i = *v31;
LABEL_46:
    *v31 = i;
    goto LABEL_47;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v30 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v32 = *(*i + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v32 >= v14)
      {
        v32 %= v14;
      }
    }

    else
    {
      v32 &= v14 - 1;
    }

    v31 = (*a1 + 8 * v32);
    goto LABEL_46;
  }

LABEL_47:
  ++*(a1 + 24);
  return i;
}

void sub_29A510520(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A51057C(pxrInternal__aapl__pxrReserved__::TfToken *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      __src = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(*a3, v5);
      sub_29A4FBF2C(a3, &__src);
      v5 = (v5 + 8);
    }

    while (v5 != a2);
  }

  return a3;
}

__n128 sub_29A5105F0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053B38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51063C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_29A51066C(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A510704(v5, v11, v3, v4);
}

uint64_t sub_29A5106B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053B98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A510704(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v7 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v7;
    v10 = *(a2 + 32);
    sub_29A5107FC(a1, v9, a3, &v11);
    sub_29A3FA72C(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  v8 = 0;
  v5 = *(a2 + 16);
  v11 = *a2;
  v12 = v5;
  v13 = *(a2 + 32);
  sub_29A510B14(&v11, a3, v9);
  v8 = *&v9[0];
  result = sub_29A3FA69C(a4, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A5107FC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(v18) = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &v18))
    {
      return;
    }

    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    v17 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v15 = *a2;
  v16 = v8;
  v17 = *(a2 + 4);
  v21 = 0;
  if (v6 <= 0x6FF)
  {
LABEL_9:
    LODWORD(v18) = 0;
    v9 = pxrInternal__aapl__pxrReserved__::ArchPRead(v17, &v18, 4, v16 + *(&v15 + 1));
    if (v9 == -1)
    {
      return;
    }

    v10 = v9 + v16;
    *&v16 = v9 + v16;
    v11 = v18;
    v21 = v18;
    goto LABEL_13;
  }

  v12 = pxrInternal__aapl__pxrReserved__::ArchPRead(v17, &v21, 8, v16 + *(&v15 + 1));
  if (v12 == -1)
  {
    return;
  }

  v10 = v12 + v16;
  *&v16 = v12 + v16;
  v11 = v21;
LABEL_13:
  v13 = *(&v16 + 1) - v10;
  if (v10 < 0 || (v13 & 0x8000000000000000) != 0 || (v11 <= v13 ? (v14 = 8 * v11 > v13) : (v14 = 1), v14))
  {
    *&v18 = "usd/crateFile.cpp";
    *(&v18 + 1) = "_ReadUncompressedArray";
    *&v19 = 2226;
    *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::TfToken]";
    LOBYTE(v20) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v11, 8 * v11, v13, *(&v16 + 1));
  }

  else
  {
    sub_29A5109EC(a4, v11);
    sub_29A215100(a4);
    sub_29A510A4C(&v15, *(a4 + 32), *a4);
  }
}

uint64_t *sub_29A5109EC(uint64_t *a1, unint64_t a2)
{
  v3 = 0;
  v4 = &v3;
  result = sub_29A214DD8(a1, a2, &v4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

BOOL sub_29A510A4C(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    _C[0] = -1;
    v6 = 0;
    if (sub_29A4FC36C(a1 + 8, 0, _C))
    {
      v7 = 1;
      do
      {
        v8 = *(*a1 + 120);
        if (_C[0] >= ((*(*a1 + 128) - v8) >> 3))
        {
          break;
        }

        sub_29A166F2C(a2, (v8 + 8 * _C[0]));
        if (a3 == v7)
        {
          return 1;
        }

        ++a2;
        v6 = v7 >= a3;
        _C[0] = -1;
        ++v7;
      }

      while (sub_29A4FC36C(a1 + 8, 0, _C));
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void sub_29A510B14(uint64_t a1@<X0>, unsigned int a2@<W1>, atomic_uint **a3@<X8>)
{
  v4 = *(*a1 + 120);
  if (a2 >= ((*(*a1 + 128) - v4) >> 3))
  {
    if ((atomic_load_explicit(&qword_2A14F8100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8100))
    {
      v8 = operator new(8uLL);
      *v8 = 0;
      off_2A14F80F8 = v8;
      __cxa_guard_release(&qword_2A14F8100);
    }

    v9[0] = "usd/crateFile.cpp";
    v9[1] = "GetUninlinedValue";
    v9[2] = 1361;
    v9[3] = "T pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::GetUninlinedValue(uint32_t) const [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 3, "Failed to get token for index %u", a2);
    v5 = *off_2A14F80F8;
  }

  else
  {
    v5 = *(v4 + 8 * a2);
  }

  *a3 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v6;
    }
  }
}

__n128 sub_29A510C34(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053BB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A510C80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A510CB8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053C18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A510D04(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v10[0] = *a1;
  v10[1] = v8;
  v10[2] = v6;
  v10[3] = v7;
  v11 = sub_29A4CCA14();
  return sub_29A510D84(v5, v10, v3, v4);
}

uint64_t *sub_29A510D84(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v7 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v7;
    v10 = *(a2 + 32);
    sub_29A510E7C(a1, v9, a3, &v11);
    sub_29A3FA72C(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  v8 = 0;
  v5 = *(a2 + 16);
  v11 = *a2;
  v12 = v5;
  v13 = *(a2 + 32);
  sub_29A511130(&v11, a3, v9);
  v8 = *&v9[0];
  result = sub_29A3FA69C(a4, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A510E7C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v19 = 0;
    __dst = 0u;
    v18 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(a2 + 8, &__dst, 4uLL))
    {
      return;
    }

    v7 = a2[1];
    v14 = *a2;
    v15 = v7;
    v16 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v14 = *a2;
  v15 = v8;
  v16 = *(a2 + 4);
  v20 = 0;
  if (v6 <= 0x6FF)
  {
LABEL_9:
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v14 + 8, &__dst, 4uLL))
    {
      return;
    }

    v9 = __dst;
    v20 = __dst;
    goto LABEL_13;
  }

  if (!sub_29A4E7A0C(&v14 + 8, &v20, 8uLL))
  {
    return;
  }

  v9 = v20;
LABEL_13:
  v10 = *(*v15 + 32);
  v11 = *(&v14 + 1) - *(*v15 + 24);
  v12 = v10 - v11;
  if (v11 < 0 || (v12 & 0x8000000000000000) != 0 || (v9 <= v12 ? (v13 = 8 * v9 > v12) : (v13 = 1), v13))
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadUncompressedArray";
    *&v18 = 2226;
    *(&v18 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::TfToken]";
    LOBYTE(v19) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v9, 8 * v9, v12, v10);
  }

  else
  {
    sub_29A5109EC(a4, v9);
    sub_29A215100(a4);
    sub_29A511068(&v14, *(a4 + 32), *a4);
  }
}

BOOL sub_29A511068(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    __dst = -1;
    v6 = 0;
    if (sub_29A4E7A0C(a1 + 8, &__dst, 4uLL))
    {
      v7 = 1;
      do
      {
        v8 = *(*a1 + 120);
        if (__dst >= ((*(*a1 + 128) - v8) >> 3))
        {
          break;
        }

        sub_29A166F2C(a2, (v8 + 8 * __dst));
        if (a3 == v7)
        {
          return 1;
        }

        ++a2;
        v6 = v7 >= a3;
        __dst = -1;
        ++v7;
      }

      while (sub_29A4E7A0C(a1 + 8, &__dst, 4uLL));
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void sub_29A511130(uint64_t a1@<X0>, unsigned int a2@<W1>, atomic_uint **a3@<X8>)
{
  v4 = *(*a1 + 120);
  if (a2 >= ((*(*a1 + 128) - v4) >> 3))
  {
    if ((atomic_load_explicit(&qword_2A14F8110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8110))
    {
      v8 = operator new(8uLL);
      *v8 = 0;
      off_2A14F8108 = v8;
      __cxa_guard_release(&qword_2A14F8110);
    }

    v9[0] = "usd/crateFile.cpp";
    v9[1] = "GetUninlinedValue";
    v9[2] = 1361;
    v9[3] = "T pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::GetUninlinedValue(uint32_t) const [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 3, "Failed to get token for index %u", a2);
    v5 = *off_2A14F8108;
  }

  else
  {
    v5 = *(v4 + 8 * a2);
  }

  *a3 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v6;
    }
  }
}

__n128 sub_29A511250(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053C38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51129C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5112D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A511320(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A5113CC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5113A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A5113CC(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v12 = *a2;
    v7 = *(a2 + 2);
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 3);
    sub_29A511530(a1, &v12, a3, v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A3FA72C(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  v8 = *a2;
  v5 = *(a2 + 2);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  sub_29A51187C(&v8, a3, v15);
  v11 = v15[0].n128_u64[0];
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  result = sub_29A3FA69C(a4, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A511530(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (&v20 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = *a2;
  v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v7 <= 0x4FF)
  {
    LODWORD(v20) = 0;
    if (!sub_29A4E5308(a2 + 1, &v20, 4uLL))
    {
      return;
    }

    v6 = *a2;
  }

  v8 = a2[1];
  v9 = a2[2];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = a2[3];
    v16 = v6;
    v17 = v8;
    v18 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = a2[3];
    v16 = v6;
    v17 = v8;
    v18 = 0;
  }

  v19 = v10;
  v23 = 0;
  if (v7 > 0x6FF)
  {
    if (sub_29A4E5308(&v17, &v23, 8uLL))
    {
LABEL_15:
      v11 = (*(*v17 + 16))(v17);
      v12 = v11 - v19;
      v13 = v23;
      if (v19 < 0 || (v12 & 0x8000000000000000) != 0 || (v23 <= v12 ? (v14 = 8 * v23 > v12) : (v14 = 1), v14))
      {
        *&v20 = "usd/crateFile.cpp";
        *(&v20 + 1) = "_ReadUncompressedArray";
        *&v21 = 2226;
        *(&v21 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::TfToken]";
        LOBYTE(v22) = 0;
        v15 = (*(*v17 + 16))(v17);
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v13, 8 * v13, v12, v15);
      }

      else
      {
        sub_29A5109EC(a4, v23);
        sub_29A215100(a4);
        sub_29A5117B4(&v16, *(a4 + 32), *a4);
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
    if (sub_29A4E5308(&v17, &v20, 4uLL))
    {
      v23 = v20;
      goto LABEL_15;
    }
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

BOOL sub_29A5117B4(void *a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    v10 = -1;
    v6 = 0;
    if (sub_29A4E5308(a1 + 1, &v10, 4uLL))
    {
      v7 = 1;
      do
      {
        v8 = *(*a1 + 120);
        if (v10 >= ((*(*a1 + 128) - v8) >> 3))
        {
          break;
        }

        sub_29A166F2C(a2, (v8 + 8 * v10));
        if (a3 == v7)
        {
          return 1;
        }

        ++a2;
        v6 = v7 >= a3;
        v10 = -1;
        ++v7;
      }

      while (sub_29A4E5308(a1 + 1, &v10, 4uLL));
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void sub_29A51187C(uint64_t a1@<X0>, unsigned int a2@<W1>, atomic_uint **a3@<X8>)
{
  v4 = *(*a1 + 120);
  if (a2 >= ((*(*a1 + 128) - v4) >> 3))
  {
    if ((atomic_load_explicit(&qword_2A14F8120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8120))
    {
      v8 = operator new(8uLL);
      *v8 = 0;
      off_2A14F8118 = v8;
      __cxa_guard_release(&qword_2A14F8120);
    }

    v9[0] = "usd/crateFile.cpp";
    v9[1] = "GetUninlinedValue";
    v9[2] = 1361;
    v9[3] = "T pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>::GetUninlinedValue(uint32_t) const [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream, T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 3, "Failed to get token for index %u", a2);
    v5 = *off_2A14F8118;
  }

  else
  {
    v5 = *(v4 + 8 * a2);
  }

  *a3 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v6;
    }
  }
}

__n128 sub_29A51199C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053CB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5119E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053CB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A511A2C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A511A78(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(this + 1);
  if (IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v10 = *this;
    }

    return sub_29A511B4C(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    v12[0] = a2;
    v12[1] = a3;
    return sub_29A512030(v12) | 0x400C000000000000;
  }
}

unint64_t sub_29A511B4C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x800C000000000000;
  v18 = 0x800C000000000000;
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
      sub_29A4E0704(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A511CDC(v9, a4, a4, &v18);
    if (v14)
    {
      v15 = *(a2 + 817);
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

        sub_29A511FC4(*(a4 + 32), (*(a4 + 32) + 48 * *a4), v20);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x800C000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A511FC4(*(a4 + 32), (*(a4 + 32) + 48 * *a4), v19);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A511CDC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A215E38(v31, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
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

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A215F30(i + 2, a2))
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

void sub_29A511F68(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A216064(__p + 2);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A511FC4(unsigned __int8 *a1, unsigned __int8 *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      __src = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a3, v5);
      sub_29A4FBF2C(a3, &__src);
      v5 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_29A512030(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1)
{
  v1 = *a1;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v3);
  result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(v1, &v3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

__n128 sub_29A5120A8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053D38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5120F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053D38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A512124(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = v8;
  v10[4] = v9;
  sub_29A5121BC(v5, v10, v3, v4);
}

uint64_t sub_29A512170(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053D98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5121BC(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    memset(v14, 0, sizeof(v14));
    v8 = *(a2 + 16);
    *__p = *a2;
    *v12 = v8;
    *&v12[16] = *(a2 + 32);
    sub_29A512334(a1, __p, a3, v14);
    sub_29A3FAB84(a4, v14);
    sub_29A216064(v14);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
    v7 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v7;
    v10 = *(a2 + 32);
    sub_29A512754(v9, a3, v14);
    if ((v12[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v14;
    *v12 = *&v14[16];
    v14[23] = 0;
    v14[0] = 0;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*&v12[8]);
      *&v12[8] = *&v14[24];
      v13 = v15;
      HIBYTE(v15) = 0;
      v14[24] = 0;
      if ((v14[23] & 0x80000000) != 0)
      {
        operator delete(*v14);
      }
    }

    else
    {
      *&v12[8] = *&v14[24];
      v13 = v15;
    }

    sub_29A3FAAC0(a4, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*&v12[8]);
    }

    if ((v12[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A512334(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
    v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v6 > 0x4FF)
    {
      v9 = a2[1];
      v22 = *a2;
      v23 = v9;
      v24 = *(a2 + 4);
      v28 = 0;
      if (v6 > 0x6FF)
      {
        v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v24, &v28, 8, v23 + *(&v22 + 1));
        if (v13 == -1)
        {
          return;
        }

        v11 = v13 + v23;
        *&v23 = v13 + v23;
        v12 = v28;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v25) = 0;
      if (!sub_29A4FC36C(a2 + 8, 0, &v25))
      {
        return;
      }

      v7 = a2[1];
      v22 = *a2;
      v23 = v7;
      v24 = *(a2 + 4);
    }

    LODWORD(v25) = 0;
    v10 = pxrInternal__aapl__pxrReserved__::ArchPRead(v24, &v25, 4, v23 + *(&v22 + 1));
    if (v10 == -1)
    {
      return;
    }

    v11 = v10 + v23;
    *&v23 = v10 + v23;
    v12 = v25;
    v28 = v25;
LABEL_13:
    v14 = *(&v23 + 1) - v11;
    if (v11 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 48 * v12 > v14) : (v15 = 1), v15))
    {
      *&v25 = "usd/crateFile.cpp";
      *(&v25 + 1) = "_ReadUncompressedArray";
      *&v26 = 2226;
      *(&v26 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::SdfAssetPath]";
      LOBYTE(v27) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v25, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 48 * v12, v14, *(&v23 + 1));
    }

    else
    {
      sub_29A512548(a4, v12);
      sub_29A216634(a4);
      v16 = *a4;
      if (*a4)
      {
        v17 = *(a4 + 32);
        v18 = v16 - 1;
        do
        {
          v19 = sub_29A5125D0(&v22, v17);
          v21 = v18-- != 0;
          if (!v19)
          {
            break;
          }

          v17 += 48;
        }

        while (v21);
      }
    }

    return;
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (&v25 != a4)
  {
    sub_29A216064(a4);
    v8 = v26;
    *a4 = v25;
    *(a4 + 16) = v8;
    v25 = 0u;
    v26 = 0u;
    *(a4 + 32) = v27;
    v27 = 0;
  }

  sub_29A216064(&v25);
}

void sub_29A512548(unint64_t *a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v4);
  v8 = v4;
  sub_29A2161BC(a1, a2, &v8);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_29A5125BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0D2850(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A5125D0(uint64_t *a1, uint64_t a2)
{
  memset(&v20, 0, sizeof(v20));
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4FC36C((a1 + 1), 0, __p);
  v5 = EmptyToken;
  if (EmptyToken)
  {
    v6 = *a1;
    v7 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v7) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v8 = *(v7 + 4 * LODWORD(__p[0]));
      v10 = v6 + 120;
      v9 = *(v6 + 120);
      if (v8 >= (*(v10 + 8) - v9) >> 3)
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

    std::string::operator=(&v20, EmptyString);
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v17;
    HIBYTE(v17) = 0;
    LOBYTE(__p[0]) = 0;
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
      v14 = SHIBYTE(v17);
      *(a2 + 24) = v18;
      *(a2 + 40) = v19;
      HIBYTE(v19) = 0;
      LOBYTE(v18) = 0;
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a2 + 24) = v18;
      *(a2 + 40) = v19;
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  return v5;
}

void sub_29A512734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A512754@<D0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfAssetPath *a3@<X8>)
{
  v4 = *(*a1 + 120);
  if (a2 >= ((*(*a1 + 128) - v4) >> 3))
  {
    return sub_29B2AB9A8(a2, a3);
  }

  if ((*(v4 + 8 * a2) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(a3);
  return result;
}

__n128 sub_29A5127DC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053DB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A512828(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A512860(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053E18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5128AC(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v9[0] = *a1;
  v9[1] = v8;
  v9[2] = v6;
  v9[3] = v7;
  v10 = sub_29A4CCA14();
  sub_29A51292C(v5, v9, v3, v4);
}

void sub_29A51292C(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    memset(v14, 0, sizeof(v14));
    v8 = *(a2 + 16);
    *__p = *a2;
    *v12 = v8;
    *&v12[16] = *(a2 + 32);
    sub_29A512AA4(a1, __p, a3, v14);
    sub_29A3FAB84(a4, v14);
    sub_29A216064(v14);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
    v7 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v7;
    v10 = *(a2 + 32);
    sub_29A512E38(v9, a3, v14);
    if ((v12[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v14;
    *v12 = *&v14[16];
    v14[23] = 0;
    v14[0] = 0;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*&v12[8]);
      *&v12[8] = *&v14[24];
      v13 = v15;
      HIBYTE(v15) = 0;
      v14[24] = 0;
      if ((v14[23] & 0x80000000) != 0)
      {
        operator delete(*v14);
      }
    }

    else
    {
      *&v12[8] = *&v14[24];
      v13 = v15;
    }

    sub_29A3FAAC0(a4, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*&v12[8]);
    }

    if ((v12[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A512AA4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v6 > 0x4FF)
    {
      v9 = a2[1];
      v21 = *a2;
      v22 = v9;
      v23 = *(a2 + 4);
      v27 = 0;
      if (v6 > 0x6FF)
      {
        if (!sub_29A4E7A0C(&v21 + 8, &v27, 8uLL))
        {
          return;
        }

        v10 = v27;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(__dst) = 0;
      if (!sub_29A4E7A0C(a2 + 8, &__dst, 4uLL))
      {
        return;
      }

      v7 = a2[1];
      v21 = *a2;
      v22 = v7;
      v23 = *(a2 + 4);
    }

    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v21 + 8, &__dst, 4uLL))
    {
      return;
    }

    v10 = __dst;
    v27 = __dst;
LABEL_13:
    v11 = *(*v22 + 32);
    v12 = *(&v21 + 1) - *(*v22 + 24);
    v13 = v11 - v12;
    if (v12 < 0 || (v13 & 0x8000000000000000) != 0 || (v10 <= v13 ? (v14 = 48 * v10 > v13) : (v14 = 1), v14))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v25 = 2226;
      *(&v25 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::SdfAssetPath]";
      LOBYTE(v26) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v10, 48 * v10, v13, v11);
    }

    else
    {
      sub_29A512548(a4, v10);
      sub_29A216634(a4);
      v15 = *a4;
      if (*a4)
      {
        v16 = *(a4 + 32);
        v17 = v15 - 1;
        do
        {
          v18 = sub_29A512CB4(&v21, v16);
          v20 = v17-- != 0;
          if (!v18)
          {
            break;
          }

          v16 += 48;
        }

        while (v20);
      }
    }

    return;
  }

  v26 = 0;
  __dst = 0u;
  v25 = 0u;
  if (&__dst != a4)
  {
    sub_29A216064(a4);
    v8 = v25;
    *a4 = __dst;
    *(a4 + 16) = v8;
    __dst = 0u;
    v25 = 0u;
    *(a4 + 32) = v26;
    v26 = 0;
  }

  sub_29A216064(&__dst);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *sub_29A512CB4(uint64_t *a1, uint64_t a2)
{
  memset(&v20, 0, sizeof(v20));
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E7A0C((a1 + 1), __p, 4uLL);
  v5 = EmptyToken;
  if (EmptyToken)
  {
    v6 = *a1;
    v7 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v7) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v8 = *(v7 + 4 * LODWORD(__p[0]));
      v10 = v6 + 120;
      v9 = *(v6 + 120);
      if (v8 >= (*(v10 + 8) - v9) >> 3)
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

    std::string::operator=(&v20, EmptyString);
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v17;
    HIBYTE(v17) = 0;
    LOBYTE(__p[0]) = 0;
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
      v14 = SHIBYTE(v17);
      *(a2 + 24) = v18;
      *(a2 + 40) = v19;
      HIBYTE(v19) = 0;
      LOBYTE(v18) = 0;
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a2 + 24) = v18;
      *(a2 + 40) = v19;
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  return v5;
}

void sub_29A512E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A512E38@<D0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfAssetPath *a3@<X8>)
{
  v4 = *(*a1 + 120);
  if (a2 >= ((*(*a1 + 128) - v4) >> 3))
  {
    return sub_29B2ABA08(a2, a3);
  }

  if ((*(v4 + 8 * a2) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(a3);
  return result;
}

__n128 sub_29A512EC0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053E38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A512F0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A512F44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A512F90(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A51303C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A513018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A51303C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    memset(v19, 0, sizeof(v19));
    v16 = *a2;
    v8 = *(a2 + 2);
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(a2 + 3);
    sub_29A513228(a1, &v16, a3, v19);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    sub_29A3FAB84(a4, v19);
    sub_29A216064(v19);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
    v9 = *a2;
    v7 = *(a2 + 2);
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a2 + 3);
    sub_29A513658(&v9, a3, v19);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v19;
    v13 = *&v19[16];
    v19[23] = 0;
    v19[0] = 0;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
      v14 = *&v19[24];
      v15 = v20;
      HIBYTE(v20) = 0;
      v19[24] = 0;
      if ((v19[23] & 0x80000000) != 0)
      {
        operator delete(*v19);
      }
    }

    else
    {
      v14 = *&v19[24];
      v15 = v20;
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A3FAAC0(a4, __p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A513228(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    a2[3] = a3 & 0xFFFFFFFFFFFFLL;
    v6 = *a2;
    v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v7 <= 0x4FF)
    {
      LODWORD(v27) = 0;
      if (!sub_29A4E5308(a2 + 1, &v27, 4uLL))
      {
        return;
      }

      v6 = *a2;
    }

    v8 = a2[1];
    v9 = a2[2];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = a2[3];
      v23 = v6;
      v24 = v8;
      v25 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = a2[3];
      v23 = v6;
      v24 = v8;
      v25 = 0;
    }

    v26 = v10;
    v30 = 0;
    if (v7 > 0x6FF)
    {
      if (sub_29A4E5308(&v24, &v30, 8uLL))
      {
LABEL_15:
        v12 = (*(*v24 + 16))(v24);
        v13 = v12 - v26;
        v14 = v30;
        if (v26 < 0 || (v13 & 0x8000000000000000) != 0 || (v30 <= v13 ? (v15 = 48 * v30 > v13) : (v15 = 1), v15))
        {
          *&v27 = "usd/crateFile.cpp";
          *(&v27 + 1) = "_ReadUncompressedArray";
          *&v28 = 2226;
          *(&v28 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::SdfAssetPath]";
          LOBYTE(v29) = 0;
          v22 = (*(*v24 + 16))(v24);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v14, 48 * v14, v13, v22);
        }

        else
        {
          sub_29A512548(a4, v30);
          sub_29A216634(a4);
          v16 = *a4;
          if (*a4)
          {
            v17 = *(a4 + 32);
            v18 = v16 - 1;
            do
            {
              v19 = sub_29A5134D4(&v23, v17);
              v17 += 48;
              v21 = v18-- != 0;
            }

            while ((v19 & v21 & 1) != 0);
          }
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
      if (sub_29A4E5308(&v24, &v27, 4uLL))
      {
        v30 = v27;
        goto LABEL_15;
      }
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }

    return;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if (&v27 != a4)
  {
    sub_29A216064(a4);
    v11 = v28;
    *a4 = v27;
    *(a4 + 16) = v11;
    v27 = 0u;
    v28 = 0u;
    *(a4 + 32) = v29;
    v29 = 0;
  }

  sub_29A216064(&v27);
}

void sub_29A513494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A216064(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *sub_29A5134D4(void *a1, uint64_t a2)
{
  memset(&v20, 0, sizeof(v20));
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E5308(a1 + 1, __p, 4uLL);
  v5 = EmptyToken;
  if (EmptyToken)
  {
    v6 = *a1;
    v7 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v7) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v8 = *(v7 + 4 * LODWORD(__p[0]));
      v10 = v6 + 120;
      v9 = *(v6 + 120);
      if (v8 >= (*(v10 + 8) - v9) >> 3)
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

    std::string::operator=(&v20, EmptyString);
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v17;
    HIBYTE(v17) = 0;
    LOBYTE(__p[0]) = 0;
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
      v14 = SHIBYTE(v17);
      *(a2 + 24) = v18;
      *(a2 + 40) = v19;
      HIBYTE(v19) = 0;
      LOBYTE(v18) = 0;
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a2 + 24) = v18;
      *(a2 + 40) = v19;
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  return v5;
}

void sub_29A513638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A513658@<D0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfAssetPath *a3@<X8>)
{
  v4 = *(*a1 + 120);
  if (a2 >= ((*(*a1 + 128) - v4) >> 3))
  {
    return sub_29B2ABA68(a2, a3);
  }

  if ((*(v4 + 8 * a2) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(a3);
  return result;
}

__n128 sub_29A5136E0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053EB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51372C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A513770(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A5137BC(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(this + 1);
  if (IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v10 = *this;
    }

    return sub_29A5138E8(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v12 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v12 = *this;
    }

    v19[0] = a2;
    v19[1] = a3;
    v13 = *a1;
    if (!*a1)
    {
      v14 = operator new(0x28uLL);
      *v14 = 0u;
      v14[1] = 0u;
      *(v14 + 8) = 1065353216;
      sub_29A160214(a1, v14);
      v13 = *a1;
    }

    v18 = 0;
    v15 = sub_29A513DF4(v13, v12, v12, &v18);
    v16 = v15;
    if (v17)
    {
      *(v15 + 6) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x10000000000000;
      sub_29A513D50(v19, v12);
    }

    return *(v16 + 6);
  }
}

unint64_t sub_29A5138E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8010000000000000;
  v18 = 0x8010000000000000;
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
      sub_29A4E087C(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A513A68(v9, a4, a4, &v18);
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

        sub_29A4DFD1C(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8010000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A4DFD1C(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A513A68(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A19B4C8(v31, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
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

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (Overlay::__operatorEqualsEquals(i + 2, a2))
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

void sub_29A513CF4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A513D50(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 32;
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

double *sub_29A513DF4(uint64_t a1, uint64_t a2, _OWORD *a3, double *a4)
{
  v26 = *(a2 + 24);
  v27 = 0;
  v28 = 0;
  sub_29A18DBF4(&v27, &v26, a2);
  v9 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v27));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = *(v13 + 1);
          if (v14 == v9)
          {
            if (v13[5] == *(a2 + 24) && v13[2] == *a2 && v13[3] == *(a2 + 8) && v13[4] == *(a2 + 16))
            {
              return v13;
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

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v13 = operator new(0x38uLL);
  *v13 = 0.0;
  *(v13 + 1) = v9;
  v15 = a3[1];
  *(v13 + 1) = *a3;
  *(v13 + 2) = v15;
  v13[6] = *a4;
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
    *v13 = *v23;
LABEL_41:
    *v23 = v13;
    goto LABEL_42;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v22 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v24 = *(*v13 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v24 >= v10)
      {
        v24 %= v10;
      }
    }

    else
    {
      v24 &= v10 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v13;
}

__n128 sub_29A5140A4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053F38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5140F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A514120(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A5141B8(v5, v11, v3, v4);
}

uint64_t sub_29A51416C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A5141B8(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A514270(a1, v7, a3, v9);
    sub_29A19B108(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  if (!(a3 >> 62))
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 0x20, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FCA10(a4, v9).n128_u64[0];
  return result;
}

void sub_29A514270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  a2[2] = v5;
  v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v7 <= 0x4FF)
  {
    LODWORD(v16) = 0;
    if (!sub_29A4FC36C((a2 + 1), 0, &v16))
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
  v19 = 0;
  if (v7 <= 0x6FF)
  {
LABEL_9:
    LODWORD(v16) = 0;
    v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v16, 4, v5 + v8);
    if (v11 == -1)
    {
      return;
    }

    v12 = v16;
    v19 = v16;
    goto LABEL_13;
  }

  v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v19, 8, v5 + v8);
  if (v11 == -1)
  {
    return;
  }

  v12 = v19;
LABEL_13:
  v13 = v11 + v5;
  v14 = v10 - v13;
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 32 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfQuatd]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 32 * v12, v10 - v13, v10);
  }

  else
  {
    v20 = &v16;
    sub_29A19AE58(a4, v12, &v20);
    sub_29A19B0C4(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (32 * *a4), v13 + v8);
  }
}

__n128 sub_29A514464(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053FB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5144B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053FB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5144E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A514534(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v10[0] = *a1;
  v10[1] = v8;
  v10[2] = v6;
  v10[3] = v7;
  v11 = sub_29A4CCA14();
  return sub_29A5145B4(v5, v10, v3, v4);
}

double sub_29A5145B4(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v9 = *(a2 + 32);
    sub_29A51468C(a1, v8, a3, &v10);
    sub_29A19B108(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (!(a3 >> 62))
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 0x20uLL);
  }

  *&result = sub_29A3FCA10(a4, v8).n128_u64[0];
  return result;
}

void sub_29A51468C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A17421F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17421F8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17421F0 = *v16;
      __cxa_guard_release(&qword_2A17421F8);
    }

    v23 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v17 + 8, &v23, 8uLL))
      {
        return;
      }

      v8 = v23;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v17 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v8 = __dst;
      v23 = __dst;
    }

    v9 = 32 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A17421F0 != 1 || v9 < 0x800 || (BYTE8(v17) & 7) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfQuatd]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 32 * v8, v14, v12);
      }

      else
      {
        p_dst = &__dst;
        sub_29A19AE58(a4, v8, &p_dst);
        sub_29A19B0C4(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 32 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 32 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfQuatd]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A19AE08(a4);
    }
  }
}

__n128 sub_29A5149EC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054038;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A514A38(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A514A70(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A514ABC(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A514B68(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A514B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A514B68(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v11 = *a2;
    v7 = *(a2 + 2);
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 3);
    sub_29A514CA0(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A19B108(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  v8 = *a2;
  v5 = *(a2 + 2);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if (!(a3 >> 62))
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v8 + 1, v14, 0x20uLL);
    v5 = v9;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *&result = sub_29A3FCA10(a4, v14).n128_u64[0];
  return result;
}

void sub_29A514C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A514CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(v18) = 0, sub_29A4E5308(a2 + 1, &v18, 4uLL)))
  {
    v7 = a2[1];
    v8 = a2[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[3];
      v15 = v7;
      v16 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = a2[3];
      v15 = a2[1];
      v16 = 0;
    }

    v17 = v9;
    v21 = 0;
    if (v6 > 0x6FF)
    {
      if (sub_29A4E5308(&v15, &v21, 8uLL))
      {
LABEL_14:
        v10 = (*(*v15 + 16))(v15);
        v11 = v10 - v17;
        v12 = v21;
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 32 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfQuatd]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 32 * v12, v11, v14);
        }

        else
        {
          v22 = &v18;
          sub_29A19AE58(a4, v21, &v22);
          sub_29A19B0C4(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 32 * *a4);
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
      if (sub_29A4E5308(&v15, &v18, 4uLL))
      {
        v21 = v18;
        goto LABEL_14;
      }
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

__n128 sub_29A514F44(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20540B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A514F90(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20540B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A514FD4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A515020(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(this + 1);
  if (IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v10 = *this;
    }

    return sub_29A51514C(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v12 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v12 = *this;
    }

    v19[0] = a2;
    v19[1] = a3;
    v13 = *a1;
    if (!*a1)
    {
      v14 = operator new(0x28uLL);
      *v14 = 0u;
      v14[1] = 0u;
      *(v14 + 8) = 1065353216;
      sub_29A160214(a1, v14);
      v13 = *a1;
    }

    v18 = 0;
    v15 = sub_29A5155B4(v13, v12, v12, &v18);
    v16 = v15;
    if (v17)
    {
      *(v15 + 4) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x11000000000000;
      sub_29A4F7FA4(v19, v12);
    }

    return *(v16 + 4);
  }
}

unint64_t sub_29A51514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8011000000000000;
  v18 = 0x8011000000000000;
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
      sub_29A4E0938(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A5152CC(v9, a4, a4, &v18);
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

        sub_29A4F78C0(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8011000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A4F78C0(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A5152CC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A199E74(v31, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
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

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (Overlay::__operatorEqualsEquals(i + 2, a2))
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

void sub_29A515558(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

float *sub_29A5155B4(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v25 = *(a2 + 12);
  v26 = 0;
  v27 = 0;
  sub_29A18D5A0(&v26, &v25, a2);
  v9 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = *(v13 + 1);
          if (v14 == v9)
          {
            if (v13[7] == *(a2 + 12) && v13[4] == *a2 && v13[5] == *(a2 + 4) && v13[6] == *(a2 + 8))
            {
              return v13;
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

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v13 = operator new(0x28uLL);
  *v13 = 0;
  *(v13 + 1) = v9;
  *(v13 + 1) = *a3;
  *(v13 + 4) = *a4;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *v13 = *v22;
LABEL_41:
    *v22 = v13;
    goto LABEL_42;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v21 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v23 = *(*v13 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v13;
}

__n128 sub_29A515864(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054138;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5158B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A5158E0(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A515978(v5, v11, v3, v4);
}

uint64_t sub_29A51592C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A515978(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A515A30(a1, v7, a3, v9);
    sub_29A199AB4(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  if (!(a3 >> 62))
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 0x10, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FC788(a4, v9).n128_u64[0];
  return result;
}

void sub_29A515A30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  a2[2] = v5;
  v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v7 <= 0x4FF)
  {
    LODWORD(v16) = 0;
    if (!sub_29A4FC36C((a2 + 1), 0, &v16))
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
  v19 = 0;
  if (v7 <= 0x6FF)
  {
LABEL_9:
    LODWORD(v16) = 0;
    v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v16, 4, v5 + v8);
    if (v11 == -1)
    {
      return;
    }

    v12 = v16;
    v19 = v16;
    goto LABEL_13;
  }

  v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v19, 8, v5 + v8);
  if (v11 == -1)
  {
    return;
  }

  v12 = v19;
LABEL_13:
  v13 = v11 + v5;
  v14 = v10 - v13;
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 16 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfQuatf]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v10 - v13, v10);
  }

  else
  {
    v20 = &v16;
    sub_29A199818(a4, v12, &v20);
    sub_29A199A70(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (16 * *a4), v13 + v8);
  }
}

__n128 sub_29A515C24(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20541B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A515C70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20541B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A515CA8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A515CF4(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v10.n128_u64[0] = *a1;
  v10.n128_u64[1] = v8;
  v11 = v6;
  v12 = v7;
  v13 = sub_29A4CCA14();
  return sub_29A515D74(v5, &v10, v3, v4);
}

double sub_29A515D74(uint64_t a1, __n128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    v9 = a2[2].n128_u64[0];
    sub_29A515E4C(a1, v8, a3, &v10);
    sub_29A199AB4(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  v12 = a2[2].n128_u64[0];
  if (!(a3 >> 62))
  {
    v10.n128_u64[1] = *(*v11.n128_u64[0] + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10.n128_i64[1], v8, 0x10uLL);
  }

  *&result = sub_29A3FC788(a4, v8).n128_u64[0];
  return result;
}

void sub_29A515E4C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742208))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742200 = *v16;
      __cxa_guard_release(&qword_2A1742208);
    }

    v23 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v17 + 8, &v23, 8uLL))
      {
        return;
      }

      v8 = v23;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v17 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v8 = __dst;
      v23 = __dst;
    }

    v9 = 16 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A1742200 != 1 || v9 < 0x800 || (BYTE8(v17) & 3) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfQuatf]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 16 * v8, v14, v12);
      }

      else
      {
        p_dst = &__dst;
        sub_29A199818(a4, v8, &p_dst);
        sub_29A199A70(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 16 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 16 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfQuatf]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A1997C8(a4);
    }
  }
}

__n128 sub_29A5161AC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054238;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5161F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A516230(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A51627C(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A516328(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A516304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A516328(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v11 = *a2;
    v7 = *(a2 + 2);
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 3);
    sub_29A516460(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A199AB4(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  v8 = *a2;
  v5 = *(a2 + 2);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if (!(a3 >> 62))
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v8 + 1, v14, 0x10uLL);
    v5 = v9;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *&result = sub_29A3FC788(a4, v14).n128_u64[0];
  return result;
}

void sub_29A51641C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A516460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(v18) = 0, sub_29A4E5308(a2 + 1, &v18, 4uLL)))
  {
    v7 = a2[1];
    v8 = a2[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[3];
      v15 = v7;
      v16 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = a2[3];
      v15 = a2[1];
      v16 = 0;
    }

    v17 = v9;
    v21 = 0;
    if (v6 > 0x6FF)
    {
      if (sub_29A4E5308(&v15, &v21, 8uLL))
      {
LABEL_14:
        v10 = (*(*v15 + 16))(v15);
        v11 = v10 - v17;
        v12 = v21;
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 16 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfQuatf]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v11, v14);
        }

        else
        {
          v22 = &v18;
          sub_29A199818(a4, v21, &v22);
          sub_29A199A70(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 16 * *a4);
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
      if (sub_29A4E5308(&v15, &v18, 4uLL))
      {
        v21 = v18;
        goto LABEL_14;
      }
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

__n128 sub_29A516704(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20542B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A516750(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20542B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A516794(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A5167E0(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v4 = this;
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(v4 + 1);
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

    return sub_29A516908(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v18[0] = a2;
    v18[1] = a3;
    v12 = *a1;
    if (!*a1)
    {
      v13 = operator new(0x28uLL);
      *v13 = 0u;
      v13[1] = 0u;
      *(v13 + 8) = 1065353216;
      sub_29A160214(a1, v13);
      v12 = *a1;
    }

    v17 = 0;
    v14 = sub_29A516D70(v12, v4, v4, &v17);
    v15 = v14;
    if (v16)
    {
      v14[3] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x12000000000000;
      sub_29A4E5264(v18, v4);
    }

    return v15[3];
  }
}

unint64_t sub_29A516908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8012000000000000;
  v18 = 0x8012000000000000;
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
      sub_29A4E09F4(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A516A88(v9, a4, a4, &v18);
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

        sub_29A502120(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8012000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A502120(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A516A88(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A19A96C(v31, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
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

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (Overlay::__operatorEqualsEquals(i + 2, a2))
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

void sub_29A516D14(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_29A516D70(uint64_t a1, unsigned __int16 *a2, void *a3, uint64_t *a4)
{
  v9 = a2[3];
  v29 = 1;
  v28 = v9;
  sub_29A18D874(&v28, a2);
  v10 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v28));
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
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v10)
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(i + 11)] == pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]])
          {
            pxrInternal__aapl__pxrReserved__::GfVec3h::operator==();
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
      }
    }
  }

  v16 = operator new(0x20uLL);
  *v16 = 0;
  v16[1] = v10;
  v17 = *a4;
  v16[2] = *a3;
  v16[3] = v17;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v11 || (v19 * v11) < v18)
  {
    v20 = 1;
    if (v11 >= 3)
    {
      v20 = (v11 & (v11 - 1)) != 0;
    }

    v21 = v20 | (2 * v11);
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

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *v16 = *v25;
LABEL_38:
    *v25 = v16;
    goto LABEL_39;
  }

  *v16 = *(a1 + 16);
  *(a1 + 16) = v16;
  *(v24 + 8 * v4) = a1 + 16;
  if (*v16)
  {
    v26 = *(*v16 + 8);
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

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v16;
}

__n128 sub_29A51701C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054338;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A517068(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_29A517098(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A517130(v5, v11, v3, v4);
}

uint64_t sub_29A5170E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}