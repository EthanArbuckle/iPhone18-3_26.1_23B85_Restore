void sub_29A5249AC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A524A08(_DWORD *a1, double a2, double a3, double a4, double a5)
{
  v5 = 0;
  *v10 = a2;
  *&v10[1] = a3;
  *&v10[2] = a4;
  *&v10[3] = a5;
  while (1)
  {
    v6 = 0;
    v7 = *&v10[v5];
    if (v7 < -128.0 || v7 > 127.0)
    {
      break;
    }

    if (v7 != v7)
    {
      return 0;
    }

    *(&v9 + v5++) = v7;
    if (v5 == 4)
    {
      *a1 = v9;
      return 1;
    }
  }

  return v6;
}

double *sub_29A524A88(uint64_t a1, double *a2, _OWORD *a3, double *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A18BAAC(&v26, a2, a2 + 1, a2 + 2, a2 + 3);
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
            if (v13[2] == *a2 && v13[3] == a2[1] && v13[4] == a2[2] && v13[5] == a2[3])
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

__n128 sub_29A524D34(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055538;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A524D80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A524DB0(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A524E48(v5, v11, v3, v4);
}

uint64_t sub_29A524DFC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A524E48(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v5 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v5;
    v9 = *(a2 + 32);
    sub_29A524F2C(a1, v8, a3, v10);
    sub_29A197270(a4, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  if (a3 >> 62)
  {
    v6 = 0;
    LODWORD(v8[0]) = a3;
    do
    {
      v10[0].n128_f64[v6] = *(v8 + v6);
      ++v6;
    }

    while (v6 != 4);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v10, 0x20, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FEC18(a4, v10).n128_u64[0];
  return result;
}

void sub_29A524F2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 32 * v12, v10 - v13, v10);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v20 = &v16;
    sub_29A196FC0(a4, v12, &v20);
    sub_29A19722C(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (32 * *a4), v13 + v8);
  }
}

__n128 sub_29A525128(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20555B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A525174(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20555B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5251AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055618))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A5251F8(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A525278(v5, v10, v3, v4);
}

double sub_29A525278(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v6 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v6;
    v10 = *(a2 + 32);
    sub_29A52537C(a1, v9, a3, &v11);
    sub_29A197270(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  v5 = *(a2 + 16);
  v11 = *a2;
  v12 = v5;
  v13 = *(a2 + 32);
  if (a3 >> 62)
  {
    v7 = 0;
    v14 = a3;
    do
    {
      *(v9 + v7) = *(&v14 + v7);
      ++v7;
    }

    while (v7 != 4);
  }

  else
  {
    *(&v11 + 1) = *(*v12 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v11 + 8, v9, 0x20uLL);
  }

  *&result = sub_29A3FEC18(a4, v9).n128_u64[0];
  return result;
}

void sub_29A52537C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A17422A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17422A8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17422A0 = *v16;
      __cxa_guard_release(&qword_2A17422A8);
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
    if (byte_2A17422A0 != 1 || v9 < 0x800 || (BYTE8(v17) & 7) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 32 * v8, v14, v12);
      }

      else
      {
        __dst = 0u;
        v21 = 0u;
        p_dst = &__dst;
        sub_29A196FC0(a4, v8, &p_dst);
        sub_29A19722C(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A196F70(a4);
    }
  }
}

__n128 sub_29A5256E4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055638;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A525730(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A525768(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055698))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5257B4(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A525860(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A52583C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A525860(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v16 = 0;
    memset(&v15, 0, 32);
    v12 = *a2;
    v6 = *(a2 + 2);
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 3);
    sub_29A5259C4(a1, &v12, a3, &v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A197270(a4, &v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  v9 = *a2;
  v5 = *(a2 + 2);
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  if (a3 >> 62)
  {
    v7 = 0;
    v17 = a3;
    do
    {
      v15.n128_f64[v7] = *(&v17 + v7);
      ++v7;
    }

    while (v7 != 4);
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v9 + 1, &v15, 0x20uLL);
    v5 = v10;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *&result = sub_29A3FEC18(a4, &v15).n128_u64[0];
  return result;
}

void sub_29A525980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5259C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 32 * v12, v11, v14);
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
          v22 = &v18;
          sub_29A196FC0(a4, v21, &v22);
          sub_29A19722C(a4);
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

__n128 sub_29A525C70(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20556B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A525CBC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20556B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A525D00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A525D4C(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A525EA0(a1, a2, a3, v10);
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

    v20[0] = a2;
    v20[1] = a3;
    v19 = 0;
    if (sub_29A526308(&v19, *v12, v12[1], v12[2], v12[3]))
    {
      return v19 | 0x401C000000000000;
    }

    else
    {
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
      v15 = sub_29A526378(v13, v12, v12, &v18);
      v16 = v15;
      if (v17)
      {
        *(v15 + 4) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x1C000000000000;
        sub_29A4F7FA4(v20, v12);
      }

      return *(v16 + 4);
    }
  }
}

unint64_t sub_29A525EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x801C000000000000;
  v18 = 0x801C000000000000;
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
      sub_29A4E114C(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A526020(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x801C000000000000;
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

void *sub_29A526020(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A195FC8(v31, a2);
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

void sub_29A5262AC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A526308(_DWORD *a1, float a2, float a3, float a4, float a5)
{
  v5 = 0;
  *v10 = a2;
  *&v10[1] = a3;
  *&v10[2] = a4;
  *&v10[3] = a5;
  while (1)
  {
    v6 = *&v10[v5];
    v7 = v6 < -128.0 || v6 > 127.0;
    if (v7 || v6 != v6)
    {
      break;
    }

    *(&v10[-1] + v5++) = v6;
    if (v5 == 4)
    {
      *a1 = v9;
      return 1;
    }
  }

  return 0;
}

float *sub_29A526378(uint64_t a1, float *a2, _OWORD *a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  sub_29A18B6BC(&v25, a2, a2 + 1, a2 + 2, a2 + 3);
  v9 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v25));
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
            if (v13[4] == *a2 && v13[5] == a2[1] && v13[6] == a2[2] && v13[7] == a2[3])
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

__n128 sub_29A526624(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055738;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A526670(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A5266A0(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3, int8x8_t a4)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v7[834];
  v9 = v7[835];
  v10 = v7[833];
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = 0;
  v12[3] = v9;
  v12[4] = v10;
  return sub_29A526738(v6, v12, v4, v5, a4);
}

uint64_t sub_29A5266EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055798))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A526738(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, int8x8_t a5)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 32);
    sub_29A526810(a1, v8, a3, v10);
    sub_29A195C08(a4, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  if (a3 >> 62)
  {
    a5.i32[0] = a3;
    v10[0] = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(a5, a5), 8uLL), 8uLL)));
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v10, 0x10, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FE95C(a4, v10).n128_u64[0];
  return result;
}

void sub_29A526810(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v10 - v13, v10);
  }

  else
  {
    v16 = 0uLL;
    v20 = &v16;
    sub_29A19596C(a4, v12, &v20);
    sub_29A195BC4(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (16 * *a4), v13 + v8);
  }
}

__n128 sub_29A526A08(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20557B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A526A54(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20557B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A526A8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A526AD8(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A526B58(v5, &v10, v3, v4);
}

double sub_29A526B58(uint64_t a1, __n128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v7 = a2[1];
    v9[0] = *a2;
    v9[1] = v7;
    v10 = a2[2].n128_u64[0];
    sub_29A526C50(a1, v9, a3, &v11);
    sub_29A195C08(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  v5 = *a2;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  v13 = a2[2].n128_u64[0];
  if (a3 >> 62)
  {
    v5.n128_u32[0] = a3;
    v9[0] = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(v5.n128_u64[0], v5.n128_u64[0]), 8uLL), 8uLL)));
  }

  else
  {
    v11.n128_u64[1] = *(*v12.n128_u64[0] + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v11.n128_i64[1], v9, 0x10uLL);
  }

  *&result = sub_29A3FE95C(a4, v9).n128_u64[0];
  return result;
}

void sub_29A526C50(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A17422B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17422B8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17422B0 = *v16;
      __cxa_guard_release(&qword_2A17422B8);
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
    if (byte_2A17422B0 != 1 || v9 < 0x800 || (BYTE8(v17) & 3) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 16 * v8, v14, v12);
      }

      else
      {
        __dst = 0uLL;
        p_dst = &__dst;
        sub_29A19596C(a4, v8, &p_dst);
        sub_29A195BC4(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A19591C(a4);
    }
  }
}

__n128 sub_29A526FB4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055838;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A527000(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A527038(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A527084(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A527130(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A52710C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A527130(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
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
    sub_29A52728C(a1, &v12, a3, v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A195C08(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  v5 = *a2;
  v9 = *a2;
  v6 = *(a2 + 2);
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  if (!(a3 >> 62))
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v9 + 1, v15, 0x10uLL);
    v6 = v10;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  LODWORD(v5) = a3;
  v15[0] = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(*&v5, *&v5), 8uLL), 8uLL)));
  if (v6)
  {
LABEL_13:
    sub_29A014BEC(v6);
  }

LABEL_14:
  *&result = sub_29A3FE95C(a4, v15).n128_u64[0];
  return result;
}

void sub_29A527248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A52728C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v11, v14);
        }

        else
        {
          v18 = 0uLL;
          v22 = &v18;
          sub_29A19596C(a4, v21, &v22);
          sub_29A195BC4(a4);
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

__n128 sub_29A527534(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20558B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A527580(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20558B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5275C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A527610(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A527788(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v12 = 0;
    v19[0] = a2;
    v19[1] = a3;
    v21 = *v4;
    for (i = &v21; (sub_29A521780(i, &v20 + v12) & 1) != 0; ++i)
    {
      if (++v12 == 4)
      {
        return v20 | 0x401D000000000000;
      }
    }

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

    v21 = 0;
    v16 = sub_29A527BF0(v14, v4, v4, &v21);
    v17 = v16;
    if (v18)
    {
      v16[3] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x1D000000000000;
      sub_29A4E5264(v19, v4);
    }

    return v17[3];
  }
}

unint64_t sub_29A527788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x801D000000000000;
  v18 = 0x801D000000000000;
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
      sub_29A4E1208(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A527908(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x801D000000000000;
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

void *sub_29A527908(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A196AB8(v31, a2);
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

void sub_29A527B94(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_29A527BF0(uint64_t a1, unsigned __int16 *a2, void *a3, uint64_t *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A18B380(&v26, a2, a2 + 1, a2 + 2, a2 + 3);
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::GfVec4h::operator==();
          }

          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  v14 = operator new(0x20uLL);
  *v14 = 0;
  v14[1] = v8;
  v15 = *a4;
  v14[2] = *a3;
  v14[3] = v15;
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
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
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    *v14 = *v23;
LABEL_37:
    *v23 = v14;
    goto LABEL_38;
  }

  *v14 = *(a1 + 16);
  *(a1 + 16) = v14;
  *(v22 + 8 * v4) = a1 + 16;
  if (*v14)
  {
    v24 = *(*v14 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v24 >= v9)
      {
        v24 %= v9;
      }
    }

    else
    {
      v24 &= v9 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_37;
  }

LABEL_38:
  ++*(a1 + 24);
  return v14;
}

__n128 sub_29A527E78(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A527EC4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_29A527EF4(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A527F8C(v5, v11, v3, v4);
}

uint64_t sub_29A527F40(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A527F8C(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A528054(a1, v7, a3, v9);
    sub_29A196730(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  if (a3 >> 62)
  {
    sub_29A528244(v9, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 8, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FE7A0(a4, v9);
}

void sub_29A528054(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
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
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 8 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v10 - v13, v10);
  }

  else
  {
    v20 = 0;
    *&v16 = &v20;
    sub_29A196490(a4, v12, &v16);
    sub_29A1966EC(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (8 * *a4), v13 + v8);
  }
}

uint64_t sub_29A528244(uint64_t a1, int a2)
{
  v3 = 0;
  v6 = a2;
  do
  {
    v4 = COERCE_UNSIGNED_INT(*(&v6 + v3));
    if (*(&v6 + v3))
    {
      if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23])
      {
        result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23] + (((v4 & 0x7FFFFF) + ((v4 >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v4);
      }
    }

    else
    {
      result = v4 >> 16;
    }

    *(a1 + 2 * v3++) = result;
  }

  while (v3 != 4);
  return result;
}

__n128 sub_29A5282E4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20559B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A528330(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20559B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A528368(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A5283B4(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A528434(v5, v10, v3, v4);
}

uint64_t *sub_29A528434(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A52851C(a1, v8, a3, &v10);
    sub_29A196730(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    sub_29A528244(v8, a3);
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 8uLL);
  }

  return sub_29A3FE7A0(a4, v8);
}

void sub_29A52851C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A17422C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17422C8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17422C0 = *v16;
      __cxa_guard_release(&qword_2A17422C8);
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

    v9 = 8 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A17422C0 != 1 || v9 < 0x800 || (BYTE8(v17) & 1) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 8 * v8, v14, v12);
      }

      else
      {
        v24 = 0;
        *&__dst = &v24;
        sub_29A196490(a4, v8, &__dst);
        sub_29A1966EC(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 8 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 8 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A196440(a4);
    }
  }
}

__n128 sub_29A52887C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055A38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5288C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055A38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A528900(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055A98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A52894C(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A5289F8(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5289D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t *sub_29A5289F8(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A528B44(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A196730(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  v8 = *a2;
  v5 = *(a2 + 2);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if (a3 >> 62)
  {
    sub_29A528244(v14, a3);
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v8 + 1, v14, 8uLL);
    v5 = v9;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return sub_29A3FE7A0(a4, v14);
}

void sub_29A528B44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
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
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 8 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v11, v14);
        }

        else
        {
          v22 = 0;
          *&v18 = &v22;
          sub_29A196490(a4, v21, &v18);
          sub_29A1966EC(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 8 * *a4);
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

__n128 sub_29A528DEC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055AB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A528E38(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055AB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A528E7C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A528EC8(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A529034(a1, a2, a3, v10);
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

    v13 = 0;
    v20[0] = a2;
    v20[1] = a3;
    v22 = *v12;
    while (1)
    {
      v14 = *(&v22 + v13);
      if (v14 != v14)
      {
        break;
      }

      *(&v21 + v13++) = v14;
      if (v13 == 4)
      {
        return v21 | 0x401E000000000000;
      }
    }

    v15 = *a1;
    if (!*a1)
    {
      v16 = operator new(0x28uLL);
      *v16 = 0u;
      v16[1] = 0u;
      *(v16 + 8) = 1065353216;
      sub_29A160214(a1, v16);
      v15 = *a1;
    }

    *&v22 = 0;
    v17 = sub_29A52949C(v15, v12, v12, &v22);
    v18 = v17;
    if (v19)
    {
      v17[4] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x1E000000000000;
      sub_29A4F7FA4(v20, v12);
    }

    return v18[4];
  }
}

unint64_t sub_29A529034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x801E000000000000;
  v18 = 0x801E000000000000;
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
      sub_29A4E12C4(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A5291B4(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x801E000000000000;
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

void *sub_29A5291B4(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A21E288(v31, a2);
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

void sub_29A529440(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_29A52949C(uint64_t a1, int *a2, _OWORD *a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  sub_29A21DED8(&v25, a2, a2 + 1, a2 + 2, a2 + 3);
  v9 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v25));
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
          v14 = v13[1];
          if (v14 == v9)
          {
            if (*(v13 + 4) == *a2 && *(v13 + 5) == a2[1] && *(v13 + 6) == a2[2] && *(v13 + 7) == a2[3])
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
  v13[1] = v9;
  *(v13 + 1) = *a3;
  v13[4] = *a4;
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

__n128 sub_29A529748(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055B38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A529794(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A5297C4(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3, int8x8_t a4)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v7[834];
  v9 = v7[835];
  v10 = v7[833];
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = 0;
  v12[3] = v9;
  v12[4] = v10;
  return sub_29A52985C(v6, v12, v4, v5, a4);
}

uint64_t sub_29A529810(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055B98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A52985C(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, int8x8_t a5)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 32);
    sub_29A529930(a1, v8, a3, v10);
    sub_29A3FE370(a4, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  if (a3 >> 62)
  {
    a5.i32[0] = a3;
    v10[0] = vshrq_n_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(a5, a5)), 0x18uLL), 0x18uLL);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v10, 0x10, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FE2E8(a4, v10).n128_u64[0];
  return result;
}

void sub_29A529930(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v10 - v13, v10);
  }

  else
  {
    v16 = 0uLL;
    v20 = &v16;
    sub_29A21E52C(a4, v12, &v20);
    sub_29A21E784(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (16 * *a4), v13 + v8);
  }
}

__n128 sub_29A529B28(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055BB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A529B74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A529BAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055C18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A529BF8(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A529C78(v5, &v10, v3, v4);
}

double sub_29A529C78(uint64_t a1, __n128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v7 = a2[1];
    v9[0] = *a2;
    v9[1] = v7;
    v10 = a2[2].n128_u64[0];
    sub_29A529D6C(a1, v9, a3, &v11);
    sub_29A3FE370(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  v5 = *a2;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  v13 = a2[2].n128_u64[0];
  if (a3 >> 62)
  {
    v5.n128_u32[0] = a3;
    v9[0] = vshrq_n_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v5.n128_u64[0], v5.n128_u64[0])), 0x18uLL), 0x18uLL);
  }

  else
  {
    v11.n128_u64[1] = *(*v12.n128_u64[0] + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v11.n128_i64[1], v9, 0x10uLL);
  }

  *&result = sub_29A3FE2E8(a4, v9).n128_u64[0];
  return result;
}

void sub_29A529D6C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A17422D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17422D8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17422D0 = *v16;
      __cxa_guard_release(&qword_2A17422D8);
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
    if (byte_2A17422D0 != 1 || v9 < 0x800 || (BYTE8(v17) & 3) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 16 * v8, v14, v12);
      }

      else
      {
        __dst = 0uLL;
        p_dst = &__dst;
        sub_29A21E52C(a4, v8, &p_dst);
        sub_29A21E784(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A21E4DC(a4);
    }
  }
}

__n128 sub_29A52A0D0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055C38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52A11C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52A154(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A52A1A0(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A52A24C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A52A228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A52A24C(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
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
    sub_29A52A3A4(a1, &v12, a3, v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A3FE370(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  v5 = *a2;
  v9 = *a2;
  v6 = *(a2 + 2);
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  if (!(a3 >> 62))
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v9 + 1, v15, 0x10uLL);
    v6 = v10;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  LODWORD(v5) = a3;
  v15[0] = vshrq_n_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*&v5, *&v5)), 0x18uLL), 0x18uLL);
  if (v6)
  {
LABEL_13:
    sub_29A014BEC(v6);
  }

LABEL_14:
  *&result = sub_29A3FE2E8(a4, v15).n128_u64[0];
  return result;
}

void sub_29A52A360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A52A3A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v11, v14);
        }

        else
        {
          v18 = 0uLL;
          v22 = &v18;
          sub_29A21E52C(a4, v21, &v22);
          sub_29A21E784(a4);
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

__n128 sub_29A52A64C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055CB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52A698(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055CB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52A6DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A52A728(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A52A87C(a1, a2, a3, v10);
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

    v20[0] = a2;
    v20[1] = a3;
    v19 = 0;
    if (sub_29A52ACE4(&v19, *v12, v12[1], v12[2], v12[3]))
    {
      return v19 | 0x400D000000000000;
    }

    else
    {
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
      v15 = sub_29A52AD98(v13, v12, v12, &v18);
      v16 = v15;
      if (v17)
      {
        v15[6] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0xD000000000000;
        sub_29A513D50(v20, v12);
      }

      return v16[6];
    }
  }
}

unint64_t sub_29A52A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x800D000000000000;
  v18 = 0x800D000000000000;
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
      sub_29A4E1380(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A52A9FC(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x800D000000000000;
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

uint64_t *sub_29A52A9FC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A197630(v31, a2);
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

void sub_29A52AC88(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A52ACE4(_WORD *a1, double a2, double a3, double a4, double a5)
{
  v5 = 0;
  *v12 = a2;
  *&v12[1] = a3;
  *&v12[2] = a4;
  *&v12[3] = a5;
  v6 = v12;
  while (2)
  {
    for (i = 0; i != 2; ++i)
    {
      if (v5 == i)
      {
        v8 = 0;
        v9 = *&v12[2 * v5 + v5];
        if (v9 < -128.0 || v9 > 127.0)
        {
          return v8;
        }

        if (v9 != v9)
        {
          return 0;
        }

        *(&v11 + v5) = v9;
      }

      else if (*&v6[i] != 0.0)
      {
        return 0;
      }
    }

    ++v5;
    v6 += 2;
    if (v5 != 2)
    {
      continue;
    }

    break;
  }

  *a1 = v11;
  return 1;
}

void *sub_29A52AD98(uint64_t a1, double *a2, _OWORD *a3, void *a4)
{
  v27 = 0;
  v28 = 0;
  sub_29A18BAAC(&v27, a2, a2 + 1, a2 + 2, a2 + 3);
  v9 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v27));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
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

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator==(i + 2, a2))
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

  i = operator new(0x38uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = a3[1];
  *(i + 1) = *a3;
  *(i + 2) = v16;
  *(i + 6) = *a4;
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v10 || (v18 * v10) < v17)
  {
    v19 = 1;
    if (v10 >= 3)
    {
      v19 = (v10 & (v10 - 1)) != 0;
    }

    v20 = v19 | (2 * v10);
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

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    *i = *v24;
LABEL_38:
    *v24 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v23 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v25 = *(*i + 8);
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

    v24 = (*a1 + 8 * v25);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

__n128 sub_29A52B024(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055D38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52B070(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055D38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A52B0A0(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v12 = 0;
  v13 = v8;
  v14 = v9;
  return sub_29A52B138(v5, &v11, v3, v4);
}

uint64_t sub_29A52B0EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055D98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A52B138(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v5 = a2[1];
    v9 = *a2;
    v10 = v5;
    v11 = *(a2 + 4);
    sub_29A52B230(a1, &v9, a3, &v12);
    sub_29A3FB8A4(a4, &v12);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  if (a3 >> 62)
  {
    v6 = a3;
    v7 = a3 >> 8;
    pxrInternal__aapl__pxrReserved__::GfMatrix2d::SetDiagonal(&v12, 1.0);
    *(&v9 + 1) = v12.n128_u64[1];
    *&v10 = v13;
    *&v9 = v6;
    *(&v10 + 1) = v7;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 4), &v9, 0x20, *(a2 + 1) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FB818(a4, &v9).n128_u64[0];
  return result;
}

void sub_29A52B230(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 32 * v12, v10 - v13, v10);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v20 = &v16;
    sub_29A22147C(a4, v12, &v20);
    sub_29A2216E8(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (32 * *a4), v13 + v8);
  }
}

__n128 sub_29A52B42C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055DB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52B478(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52B4B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055E18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A52B4FC(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A52B57C(v5, v10, v3, v4);
}

double sub_29A52B57C(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a2 + 16);
    v13 = *a2;
    v14 = v6;
    v15 = *(a2 + 32);
    sub_29A52B694(a1, &v13, a3, &v16);
    sub_29A3FB8A4(a4, &v16);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  v5 = *(a2 + 16);
  v16 = *a2;
  v17 = v5;
  v18 = *(a2 + 32);
  if (a3 >> 62)
  {
    v7 = a3;
    v8 = a3 >> 8;
    pxrInternal__aapl__pxrReserved__::GfMatrix2d::SetDiagonal(&v13, 1.0);
    *(&v10 + 1) = v13.n128_u64[1];
    v11 = v14;
    *&v10 = v7;
    v12 = v8;
  }

  else
  {
    v16.n128_u64[1] = *(*v17 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v16.n128_i64[1], &v10, 0x20uLL);
  }

  *&result = sub_29A3FB818(a4, &v10).n128_u64[0];
  return result;
}

void sub_29A52B694(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A17422E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17422E8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17422E0 = *v16;
      __cxa_guard_release(&qword_2A17422E8);
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
    if (byte_2A17422E0 != 1 || v9 < 0x800 || (BYTE8(v17) & 7) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 32 * v8, v14, v12);
      }

      else
      {
        __dst = 0u;
        v21 = 0u;
        p_dst = &__dst;
        sub_29A22147C(a4, v8, &p_dst);
        sub_29A2216E8(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A22142C(a4);
    }
  }
}

__n128 sub_29A52B9FC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055E38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52BA48(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52BA80(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A52BACC(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A52BB78(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A52BB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A52BB78(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v5 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v15 = *a2;
    v7 = *(a2 + 2);
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *(a2 + 3);
    sub_29A52BD00(a1, &v15, a3, &v18);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    sub_29A3FB8A4(a4, &v18);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  v9 = *a2;
  v6 = *(a2 + 2);
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  if (!(a3 >> 62))
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v9 + 1, &v12, 0x20uLL);
    v6 = v10;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix2d::SetDiagonal(&v18, 1.0);
  *(&v12 + 1) = v18.n128_u64[1];
  v13 = v19;
  *&v12 = v5;
  v14 = (v5 >> 8);
  if (v6)
  {
LABEL_13:
    sub_29A014BEC(v6);
  }

LABEL_14:
  *&result = sub_29A3FB818(a4, &v12).n128_u64[0];
  return result;
}

void sub_29A52BD00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 32 * v12, v11, v14);
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
          v22 = &v18;
          sub_29A22147C(a4, v21, &v22);
          sub_29A2216E8(a4);
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

__n128 sub_29A52BFAC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055EB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52BFF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52C03C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A52C088(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A52C1F8(a1, a2, a3, v10);
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

    v24[0] = a2;
    v24[1] = a3;
    v23 = 0;
    v21[0] = *v12;
    v13 = *(v12 + 16);
    v14 = *(v12 + 32);
    v15 = *(v12 + 48);
    v22 = *(v12 + 64);
    v21[2] = v14;
    v21[3] = v15;
    v21[1] = v13;
    if (sub_29A52C70C(v21, &v23))
    {
      return v23 | 0x400E000000000000;
    }

    else
    {
      v16 = *a1;
      if (!*a1)
      {
        v17 = operator new(0x28uLL);
        *v17 = 0u;
        v17[1] = 0u;
        *(v17 + 8) = 1065353216;
        sub_29A160214(a1, v17);
        v16 = *a1;
      }

      *&v21[0] = 0;
      v18 = sub_29A52C864(v16, v12, v12, v21);
      v19 = v18;
      if (v20)
      {
        v18[11] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0xE000000000000;
        sub_29A52C7C0(v24, v12);
      }

      return v19[11];
    }
  }
}

unint64_t sub_29A52C1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x800E000000000000;
  v18 = 0x800E000000000000;
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
      sub_29A4E143C(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A52C424(v9, a4, a4, &v18);
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

        sub_29A52C378(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x800E000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A52C378(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

uint64_t sub_29A52C378(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 72 * a3;
  if (72 * a3)
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

uint64_t *sub_29A52C424(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A2222A8(v31, a2);
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

void sub_29A52C6B0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A52C70C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1;
  while (2)
  {
    for (i = 0; i != 3; ++i)
    {
      if (v2 == i)
      {
        v5 = 0;
        v6 = *(a1 + 24 * v2 + 8 * v2);
        if (v6 < -128.0 || v6 > 127.0)
        {
          return v5;
        }

        if (v6 != v6)
        {
          return 0;
        }

        *(&v8 + v2) = v6;
      }

      else if (*(v3 + 8 * i) != 0.0)
      {
        return 0;
      }
    }

    ++v2;
    v3 += 24;
    if (v2 != 3)
    {
      continue;
    }

    break;
  }

  *a2 = v8;
  *(a2 + 2) = v9;
  return 1;
}

uint64_t sub_29A52C7C0(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 72;
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

void *sub_29A52C864(uint64_t a1, double *a2, uint64_t a3, uint64_t *a4)
{
  v9 = sub_29A221E0C(&v31, a2);
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
        v16 = *(i + 1);
        if (v16 == v10)
        {
          if (pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator==(i + 2, a2))
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

  i = operator new(0x60uLL);
  *i = 0;
  *(i + 1) = v10;
  v17 = *(a3 + 48);
  *(i + 3) = *(a3 + 32);
  *(i + 4) = v17;
  v18 = *(a3 + 64);
  v19 = *(a3 + 16);
  *(i + 1) = *a3;
  *(i + 2) = v19;
  v20 = *a4;
  *(i + 10) = v18;
  *(i + 11) = v20;
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
LABEL_38:
    *v28 = i;
    goto LABEL_39;
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
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

__n128 sub_29A52CAC8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055F38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52CB14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A52CB44(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A52CBDC(v5, v11, v3, v4);
}

uint64_t sub_29A52CB90(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A52CBDC(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    memset(&var90, 0, 40);
    v5 = *(a2 + 16);
    *&var90._write = *a2;
    *&var90._ub._size = v5;
    *&var90._ur = *(a2 + 32);
    sub_29A52CCA4(a1, &var90._write, a3, &var90);
    sub_29A3FBDB8(a4, &var90);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  if (a3 >> 62)
  {
    sub_29A52CEA8(&var90, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), &var90, 0x48, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FBCD4(a4, &var90);
}

void sub_29A52CCA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    memset(&var88._r, 0, 40);
    if (&var88._r != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  a2[2] = v5;
  v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v7 <= 0x4FF)
  {
    var88._r = 0;
    if (!sub_29A4FC36C((a2 + 1), 0, &var88._r))
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
  var88._p = 0;
  if (v7 <= 0x6FF)
  {
LABEL_9:
    var88._r = 0;
    v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &var88._r, 4, v5 + v8);
    if (v11 == -1)
    {
      return;
    }

    r = var88._r;
    var88._p = var88._r;
    goto LABEL_13;
  }

  v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &var88, 8, v5 + v8);
  if (v11 == -1)
  {
    return;
  }

  r = var88._p;
LABEL_13:
  v13 = v11 + v5;
  v14 = v10 - v13;
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (r <= v14 ? (v15 = 72 * r > v14) : (v15 = 1), v15))
  {
    *&var88._r = "usd/crateFile.cpp";
    *&var88._flags = "_ReadUncompressedArray";
    var88._bf._base = 2226;
    *&var88._bf._size = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
    LOBYTE(var88._lbfsize) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&var88._r, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", r, 72 * r, v10 - v13, v10);
  }

  else
  {
    memset(&var88._r, 0, 72);
    var88._write = &var88._r;
    sub_29A222544(a4, r, &var88._write);
    sub_29A222868(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (72 * *a4), v13 + v8);
  }
}

double sub_29A52CEA8(uint64_t a1, int a2)
{
  v9 = a2;
  v10 = BYTE2(a2);
  pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetDiagonal(v7, 1.0);
  v3 = 0;
  v4 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  do
  {
    result = *(&v9 + v3);
    *a1 = result;
    a1 += 32;
    ++v3;
  }

  while (v3 != 3);
  return result;
}

__n128 sub_29A52CF28(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055FB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52CF74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055FB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52CFAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A52CFF8(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A52D078(v5, v10, v3, v4);
}

double sub_29A52D078(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v6 = *(a2 + 16);
    v10 = *a2;
    v11 = v6;
    v12 = *(a2 + 32);
    sub_29A52D160(a1, &v10, a3, v8);
    sub_29A3FBDB8(a4, v8);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    sub_29A52CEA8(v8, a3);
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 0x48uLL);
  }

  return sub_29A3FBCD4(a4, v8);
}

void sub_29A52D160(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    *&v23 = 0;
    __dst = 0u;
    v22 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A17422F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17422F8))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17422F0 = *v16;
      __cxa_guard_release(&qword_2A17422F8);
    }

    v20 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v17 + 8, &v20, 8uLL))
      {
        return;
      }

      v8 = v20;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v17 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v8 = __dst;
      v20 = __dst;
    }

    v9 = 72 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A17422F0 != 1 || v9 < 0x800 || (BYTE8(v17) & 7) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v22 = 2290;
        *(&v22 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
        LOBYTE(v23) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 72 * v8, v14, v12);
      }

      else
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        __dst = 0u;
        v22 = 0u;
        p_dst = &__dst;
        sub_29A222544(a4, v8, &p_dst);
        sub_29A222868(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 72 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 72 * v8, v8);
      if (v11)
      {
        *&v22 = 0;
        *(&v22 + 1) = v11;
        *&v23 = v10;
        __dst = v20;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v22 = 2282;
      *(&v22 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
      LOBYTE(v23) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A2224F4(a4);
    }
  }
}

__n128 sub_29A52D4D8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056038;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52D524(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52D55C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A52D5A8(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A52D654(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A52D630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A52D654(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v13 = *a2;
    v6 = *(a2 + 2);
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(a2 + 3);
    sub_29A52D7A0(a1, &v13, a3, v11);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    sub_29A3FBDB8(a4, v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  v8 = *a2;
  v5 = *(a2 + 2);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if (a3 >> 62)
  {
    sub_29A52CEA8(v11, a3);
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v8 + 1, v11, 0x48uLL);
    v5 = v9;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return sub_29A3FBCD4(a4, v11);
}

void sub_29A52D7A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    *&v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (&v20 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(v20) = 0, sub_29A4E5308(a2 + 1, &v20, 4uLL)))
  {
    v7 = a2[1];
    v8 = a2[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[3];
      v16 = v7;
      v17 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = a2[3];
      v16 = a2[1];
      v17 = 0;
    }

    v18 = v9;
    v19 = 0;
    if (v6 > 0x6FF)
    {
      if (sub_29A4E5308(&v16, &v19, 8uLL))
      {
LABEL_14:
        v10 = (*(*v16 + 16))(v16);
        v11 = v19;
        v12 = v10 - v18;
        v13 = 72 * v19;
        if (v18 < 0 || (v12 & 0x8000000000000000) != 0 || (v19 <= v12 ? (v14 = v13 > v12) : (v14 = 1), v14))
        {
          *&v20 = "usd/crateFile.cpp";
          *(&v20 + 1) = "_ReadUncompressedArray";
          *&v21 = 2226;
          *(&v21 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
          LOBYTE(v22) = 0;
          v15 = (*(*v16 + 16))(v16);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v11, v13, v12, v15);
        }

        else
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v25 = &v20;
          sub_29A222544(a4, v19, &v25);
          sub_29A222868(a4);
          sub_29A4E5308(&v16, *(a4 + 32), 72 * *a4);
        }
      }
    }

    else
    {
      LODWORD(v20) = 0;
      if (sub_29A4E5308(&v16, &v20, 4uLL))
      {
        v19 = v20;
        goto LABEL_14;
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

__n128 sub_29A52DA54(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20560B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52DAA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20560B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52DAE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A52DB30(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A52DCA0(a1, a2, a3, v10);
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

    v26[0] = a2;
    v26[1] = a3;
    v25 = 0;
    v13 = *v12;
    v14 = *(v12 + 16);
    v15 = *(v12 + 48);
    v24[2] = *(v12 + 32);
    v24[3] = v15;
    v24[0] = v13;
    v24[1] = v14;
    v16 = *(v12 + 64);
    v17 = *(v12 + 80);
    v18 = *(v12 + 112);
    v24[6] = *(v12 + 96);
    v24[7] = v18;
    v24[4] = v16;
    v24[5] = v17;
    if (sub_29A52E1B0(v24, &v25))
    {
      return v25 | 0x400F000000000000;
    }

    else
    {
      v19 = *a1;
      if (!*a1)
      {
        v20 = operator new(0x28uLL);
        *v20 = 0u;
        v20[1] = 0u;
        *(v20 + 8) = 1065353216;
        sub_29A160214(a1, v20);
        v19 = *a1;
      }

      *&v24[0] = 0;
      v21 = sub_29A52E2FC(v19, v12, v12, v24);
      v22 = v21;
      if (v23)
      {
        v21[18] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0xF000000000000;
        sub_29A52E258(v26, v12);
      }

      return v22[18];
    }
  }
}

unint64_t sub_29A52DCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x800F000000000000;
  v18 = 0x800F000000000000;
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
      sub_29A4E14F8(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A52DEC8(v9, a4, a4, &v18);
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

        sub_29A52DE20(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x800F000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A52DE20(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

uint64_t sub_29A52DE20(uint64_t result, char *__src, uint64_t a3)
{
  v3 = a3 << 7;
  if (a3 << 7)
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

uint64_t *sub_29A52DEC8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A198644(v31, a2);
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

void sub_29A52E154(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A52E1B0(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = a1;
  while (2)
  {
    for (i = 0; i != 4; ++i)
    {
      if (v2 == i)
      {
        v5 = 0;
        v6 = *(a1 + 32 * v2 + 8 * v2);
        if (v6 < -128.0 || v6 > 127.0)
        {
          return v5;
        }

        if (v6 != v6)
        {
          return 0;
        }

        *(&v8 + v2) = v6;
      }

      else if (*(v3 + 8 * i) != 0.0)
      {
        return 0;
      }
    }

    ++v2;
    v3 += 32;
    if (v2 != 4)
    {
      continue;
    }

    break;
  }

  *a2 = v8;
  return 1;
}

uint64_t sub_29A52E258(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 128;
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

void *sub_29A52E2FC(uint64_t a1, double *a2, _OWORD *a3, void *a4)
{
  v9 = sub_29A18C3CC(&v31, a2);
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
        v16 = *(i + 1);
        if (v16 == v10)
        {
          if (pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(i + 2, a2))
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

  i = operator new(0x98uLL);
  *i = 0;
  *(i + 1) = v10;
  v17 = a3[5];
  *(i + 5) = a3[4];
  *(i + 6) = v17;
  v18 = a3[7];
  *(i + 7) = a3[6];
  *(i + 8) = v18;
  v19 = a3[1];
  *(i + 1) = *a3;
  *(i + 2) = v19;
  v20 = a3[3];
  *(i + 3) = a3[2];
  *(i + 4) = v20;
  *(i + 18) = *a4;
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
LABEL_38:
    *v28 = i;
    goto LABEL_39;
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
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

__n128 sub_29A52E56C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056138;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52E5B8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A52E5E8(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A52E680(v5, v11, v3, v4);
}

uint64_t sub_29A52E634(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A52E680(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v5 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v5;
    v10 = *(a2 + 32);
    sub_29A52E748(a1, v9, a3, v7);
    sub_29A198284(a4, v7);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  if (a3 >> 62)
  {
    sub_29A52E948(v7, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v7, 0x80, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FC1F8(a4, v7).n128_u64[0];
  return result;
}

void sub_29A52E748(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    memset(&v16._r, 0, 40);
    if (&v16._r != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  a2[2] = v5;
  v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v7 <= 0x4FF)
  {
    v16._r = 0;
    if (!sub_29A4FC36C((a2 + 1), 0, &v16._r))
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
  v16._p = 0;
  if (v7 <= 0x6FF)
  {
LABEL_9:
    v16._r = 0;
    v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v16._r, 4, v5 + v8);
    if (v11 == -1)
    {
      return;
    }

    r = v16._r;
    v16._p = v16._r;
    goto LABEL_13;
  }

  v11 = pxrInternal__aapl__pxrReserved__::ArchPRead(v9, &v16, 8, v5 + v8);
  if (v11 == -1)
  {
    return;
  }

  r = v16._p;
LABEL_13:
  v13 = v11 + v5;
  v14 = v10 - v13;
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (r <= v14 ? (v15 = r << 7 > v14) : (v15 = 1), v15))
  {
    *&v16._r = "usd/crateFile.cpp";
    *&v16._flags = "_ReadUncompressedArray";
    v16._bf._base = 2226;
    *&v16._bf._size = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
    LOBYTE(v16._lbfsize) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16._r, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", r, r << 7, v10 - v13, v10);
  }

  else
  {
    memset(&v16._r, 0, 128);
    v16._offset = &v16._r;
    sub_29A197F54(a4, r, &v16._offset);
    sub_29A198240(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (*a4 << 7), v13 + v8);
  }
}

double sub_29A52E948(_OWORD *a1, int a2)
{
  v10 = a2;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v9, 1.0);
  v3 = 0;
  v4 = v9[5];
  a1[4] = v9[4];
  a1[5] = v4;
  v5 = v9[7];
  a1[6] = v9[6];
  a1[7] = v5;
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  v7 = v9[3];
  a1[2] = v9[2];
  a1[3] = v7;
  do
  {
    result = *(&v10 + v3);
    *a1 = result;
    a1 = (a1 + 40);
    ++v3;
  }

  while (v3 != 4);
  return result;
}

__n128 sub_29A52E9D8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20561B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52EA24(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20561B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52EA5C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A52EAA8(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A52EB28(v5, v10, v3, v4);
}

double sub_29A52EB28(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v6 = *(a2 + 16);
    v10 = *a2;
    v11 = v6;
    v12 = *(a2 + 32);
    sub_29A52EC10(a1, &v10, a3, v8);
    sub_29A198284(a4, v8);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    sub_29A52E948(v8, a3);
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 0x80uLL);
  }

  *&result = sub_29A3FC1F8(a4, v8).n128_u64[0];
  return result;
}

void sub_29A52EC10(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    *&v23 = 0;
    __dst = 0u;
    v22 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742308))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742300 = *v16;
      __cxa_guard_release(&qword_2A1742308);
    }

    v20 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v17 + 8, &v20, 8uLL))
      {
        return;
      }

      v8 = v20;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v17 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v8 = __dst;
      v20 = __dst;
    }

    v9 = v8 << 7;
    v10 = *(&v17 + 1);
    if (byte_2A1742300 != 1 || v9 < 0x800 || (BYTE8(v17) & 7) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v22 = 2290;
        *(&v22 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
        LOBYTE(v23) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, v8 << 7, v14, v12);
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        __dst = 0u;
        v22 = 0u;
        p_dst = &__dst;
        sub_29A197F54(a4, v8, &p_dst);
        sub_29A198240(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), *a4 << 7);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), v8 << 7, v8);
      if (v11)
      {
        *&v22 = 0;
        *(&v22 + 1) = v11;
        *&v23 = v10;
        __dst = v20;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v22 = 2282;
      *(&v22 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
      LOBYTE(v23) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A197F04(a4);
    }
  }
}

__n128 sub_29A52EF8C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056238;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52EFD8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52F010(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A52F05C(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A52F108(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A52F0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A52F108(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v13 = *a2;
    v6 = *(a2 + 2);
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(a2 + 3);
    sub_29A52F254(a1, &v13, a3, v11);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    sub_29A198284(a4, v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  v8 = *a2;
  v5 = *(a2 + 2);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if (a3 >> 62)
  {
    sub_29A52E948(v11, a3);
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v8 + 1, v11, 0x80uLL);
    v5 = v9;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *&result = sub_29A3FC1F8(a4, v11).n128_u64[0];
  return result;
}

void sub_29A52F254(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    *&v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (&v20 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(v20) = 0, sub_29A4E5308(a2 + 1, &v20, 4uLL)))
  {
    v7 = a2[1];
    v8 = a2[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[3];
      v16 = v7;
      v17 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = a2[3];
      v16 = a2[1];
      v17 = 0;
    }

    v18 = v9;
    v19 = 0;
    if (v6 > 0x6FF)
    {
      if (sub_29A4E5308(&v16, &v19, 8uLL))
      {
LABEL_14:
        v10 = (*(*v16 + 16))(v16);
        v11 = v19;
        v12 = v10 - v18;
        v13 = v19 << 7;
        if (v18 < 0 || (v12 & 0x8000000000000000) != 0 || (v19 <= v12 ? (v14 = v13 > v12) : (v14 = 1), v14))
        {
          *&v20 = "usd/crateFile.cpp";
          *(&v20 + 1) = "_ReadUncompressedArray";
          *&v21 = 2226;
          *(&v21 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
          LOBYTE(v22) = 0;
          v15 = (*(*v16 + 16))(v16);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v11, v13, v12, v15);
        }

        else
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v28 = &v20;
          sub_29A197F54(a4, v19, &v28);
          sub_29A198240(a4);
          sub_29A4E5308(&v16, *(a4 + 32), *a4 << 7);
        }
      }
    }

    else
    {
      LODWORD(v20) = 0;
      if (sub_29A4E5308(&v16, &v20, 4uLL))
      {
        v19 = v20;
        goto LABEL_14;
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

__n128 sub_29A52F50C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20562B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52F558(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20562B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A52F59C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A52F5E8(uint64_t *a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  if ((v7 & 4) != 0)
  {
    v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a4);
  }

  else
  {
    v8 = *a4;
  }

  v16[0] = a2;
  v16[1] = a3;
  if (pxrInternal__aapl__pxrReserved__::VtDictionary::empty(v8))
  {
    return 0x401F000000000000;
  }

  v10 = *a1;
  if (!*a1)
  {
    v11 = operator new(0x28uLL);
    *v11 = 0u;
    v11[1] = 0u;
    *(v11 + 8) = 1065353216;
    sub_29A4E170C(a1, v11);
    v10 = *a1;
  }

  v15 = 0;
  v12 = sub_29A52F6C8(v10, v8, v8, &v15);
  v13 = v12;
  if (v14)
  {
    v12[3] = *(a3 + 2) & 0xFFFFFFFFFFFFLL | 0x1F000000000000;
    sub_29A52FA30(v16, v8);
  }

  return v13[3];
}

uint64_t *sub_29A52F6C8(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::VtDictionary *a3, void *a4)
{
  v10 = bswap64(0x9E3779B97F4A7C55 * sub_29A1876A4(a2));
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
          if (pxrInternal__aapl__pxrReserved__::operator==(i + 2, a2, v9))
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

  sub_29A52F948(a1, v10, a3, a4, v28);
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
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
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

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  v28[0] = 0;
  ++*(a1 + 24);
  sub_29A52F9D0(v28, 0);
  return i;
}

void sub_29A52F930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A52F9D0(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A52F948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::VtDictionary *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x20uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((v10 + 2), a3);
  v10[3] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A52F9D0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A184A10(v2 + 2, 0);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A52FA30(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  __src[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::size(this);
  sub_29A4E5264(a1, __src);
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(this);
  v6 = v5;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(this);
  if (v8)
  {
    v9 = v4 == result;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v6 != v8 || (v10 & 1) == 0)
  {
    LODWORD(__src[0]) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a1, (v4 + 32));
    sub_29A4FBF2C(a1, __src);
    __src[0] = a1;
    __src[1] = v4 + 56;
    __src[2] = v12;
    sub_29A52FB28(a1, __src);
    sub_29A4E5264(a1, v12);
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  return result;
}

uint64_t sub_29A52FB28(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 16);
  __src = 0;
  sub_29A4E5264(a1, &__src);
  **(a2 + 16) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackValue(**a2, *(a2 + 8));
  v5 = *(a1 + 8);
  v6 = v5 + 2;
  v7 = v5[2];
  v8 = v5[4];
  if (v8 > v4 || v5[6] + v8 < v4)
  {
    sub_29A4DE434(*(a1 + 8));
    v5[2] = v4;
    v6 = v5 + 4;
  }

  *v6 = v4;
  __src = v7 - v4;
  result = sub_29A4E5264(a1, &__src);
  v10 = *(a1 + 8);
  v12 = v10 + 4;
  v11 = v10[4];
  if (v11 <= v7 && v10[6] + v11 >= v7)
  {
    v12 = v10 + 2;
  }

  else
  {
    result = sub_29A4DE434(v10);
    v10[2] = v7;
  }

  *v12 = v7;
  return result;
}

__n128 sub_29A52FC24(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056338;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52FC70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A52FCA0(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A52FD38(v5, &v10, v3, v4);
}

uint64_t sub_29A52FCEC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A52FD38(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v9 = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) != 0)
  {
    v10 = 0;
    sub_29A184A10(&v9, 0);
    sub_29A184A10(&v10, 0);
  }

  else
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A52FDDC(&v6, &v9);
  }

  sub_29A18562C(a4, &v9);
  sub_29A184A10(&v9, 0);
}

BOOL sub_29A52FDDC(uint64_t *a1, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  _28[2] = *MEMORY[0x29EDCA608];
  v19 = 0;
  if (!sub_29A4EF670((a1 + 1), 0, &v19))
  {
    return 0;
  }

  do
  {
    v4 = v19--;
    v5 = v4 == 0;
    if (!v4)
    {
      break;
    }

    memset(&v18, 0, sizeof(v18));
    LODWORD(_28[0]) = -1;
    EmptyToken = sub_29A4FC36C((a1 + 1), 0, _28);
    if (!EmptyToken)
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::clear(a2);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    v7 = *a1;
    v8 = *(*a1 + 144);
    if (LODWORD(_28[0]) >= ((*(*a1 + 152) - v8) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v9 = *(v8 + 4 * LODWORD(_28[0]));
      v11 = v7 + 120;
      v10 = *(v7 + 120);
      if (v9 >= (*(v11 + 8) - v10) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v12 = &qword_2A1742328;
      }

      else
      {
        v12 = (v10 + 8 * v9);
      }

      v13 = *v12 & 0xFFFFFFFFFFFFFFF8;
      if (v13)
      {
        EmptyString = (v13 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&v18, EmptyString);
    _28[1] = 0;
    v15 = sub_29A52FFCC(a1, _28);
    if (v15)
    {
      v16 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, &v18);
      sub_29A1854E8(v16, _28);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::clear(a2);
    }

    sub_29A186B14(_28);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  while (v15);
  return v5;
}

void sub_29A52FF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A52FFCC(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_29A530130(a1);
  result = sub_29A4EF670((a1 + 1), 0, &v9);
  if (result)
  {
    v5 = sub_29A530198();
    sub_29A5304BC(v5, &v9, &v9);
    if (v6)
    {
      v7 = *a1;
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v7, v9, &v10);
      sub_29A18606C(a2, &v10);
      sub_29A186B14(&v10);
      sub_29A530814(v5, &v9, bswap64(0x9E3779B97F4A7C55 * v9));
      return 1;
    }

    else
    {
      v10 = "usd/crateFile.cpp";
      v11 = "Read";
      v12 = 1563;
      v13 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::Read(T &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::VtValue]";
      v14 = 0;
      v8 = (*a1 + 6720);
      if (*(*a1 + 6743) < 0)
      {
        v8 = *v8;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v10, 3, "Corrupt asset <%s>: a VtValue claims to recursively contain itself -- returning an empty VtValue instead", v8);
      return 0;
    }
  }

  return result;
}

void sub_29A530114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A530130(void *a1)
{
  v2 = a1[2];
  v4 = 0;
  result = sub_29A4EF670((a1 + 1), 0, &v4);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::ArchFileAdvise(a1[4], a1[1] + v2);
    a1[2] = v4 + v2;
  }

  return result;
}

uint64_t sub_29A530198()
{
  result = *off_2A1B71B98();
  if (!result)
  {
    if ((*off_2A1B71BC8() & 1) == 0)
    {
      sub_29B2ABAC8();
    }

    result = off_2A1B71BB0();
    *v1 = result;
  }

  return result;
}

uint64_t sub_29A530248(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A10A834(&v3);
  return a1;
}

uint64_t sub_29A530284(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A53041C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A5303E4();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 60)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A5303BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10A834(va);
  _Unwind_Resume(a1);
}

void *sub_29A5303E4()
{
  if ((atomic_load_explicit(&qword_2A14F8138, memory_order_acquire) & 1) == 0)
  {
    sub_29B2ABB34();
  }

  return &unk_2A14F8128;
}

void *sub_29A53041C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = v4 + 16 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 16;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A5304A4(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    *(result + 4) = -1;
  }

  return result;
}

uint64_t sub_29A5304BC(uint64_t *a1, void *a2, void *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 16 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while (*(result + 8) != *a2)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 16 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A53061C(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 16 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 16 * v8 + 4));
        }
      }

      v12 = a1[4];
      v13 = v12 + 16 * v8;
      if (*(v13 + 4) == -1)
      {
        *(v13 + 8) = *a3;
        *v13 = v5;
        *(v13 + 4) = v10;
      }

      else
      {
        v14 = *a3;
        sub_29A36F4F8(a1, v8, v10, v5, &v14);
        v12 = a1[4];
      }

      ++a1[6];
      return v12 + 16 * v8;
    }
  }

  return result;
}

uint64_t sub_29A53061C(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A5306F0(a1, v7);
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

        sub_29A5306F0(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A5306F0(uint64_t a1, unint64_t a2)
{
  sub_29A530284(&v16, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = v17[3];
  v5 = v17[4];
  v7 = v16;
  do
  {
    if (*(v3 + 2) == -1)
    {
      goto LABEL_13;
    }

    if (v5 > 0x100000000)
    {
      v8 = bswap64(0x9E3779B97F4A7C55 * *(v3 + 1));
    }

    else
    {
      v8 = *v3;
    }

    v9 = 0;
    for (i = v8; ; i = v11 + 1)
    {
      v11 = i & v7;
      v12 = (v6 + 16 * v11);
      v13 = *(v12 + 2);
      if (v13 >= v9)
      {
        goto LABEL_11;
      }

      v14 = *(v3 + 1);
      if (v13 == -1)
      {
        break;
      }

      *(v3 + 1) = *(v12 + 1);
      *(v12 + 1) = v14;
      *(v12 + 2) = v9;
      v15 = *v12;
      *v12 = v8;
      v9 = v13;
      LODWORD(v8) = v15;
LABEL_11:
      ++v9;
    }

    *(v12 + 1) = v14;
    *v12 = v8;
    *(v12 + 2) = v9;
LABEL_13:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_14:
  v17[5] = *(a1 + 48);
  sub_29A10A4B4(&v16, a1);
  v18 = v17;
  sub_29A10A834(&v18);
}

uint64_t sub_29A530814(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = *a1 & a3;
  v6 = v4 + 16 * v5;
  if (*(v6 + 4) < 0)
  {
LABEL_5:
    v9 = a1[5];
    v6 = v4 + 16 * v9;
  }

  else
  {
    LOWORD(v7) = 0;
    v8 = *a2;
    while (*(v6 + 8) != v8)
    {
      v7 = (v7 + 1);
      v5 = (v5 + 1) & *a1;
      v6 = v4 + 16 * v5;
      if (v7 > *(v6 + 4))
      {
        goto LABEL_5;
      }
    }

    v9 = a1[5];
  }

  if (v6 == v4 + 16 * v9)
  {
    return 0;
  }

  sub_29A5308A4(a1, v6);
  return 1;
}

uint64_t *sub_29A5308A4(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 4) != -1)
  {
    *(a2 + 4) = -1;
  }

  --result[6];
  v2 = result[4];
  v3 = (a2 - v2) >> 4;
  v4 = *result;
  v5 = (v3 + 1) & *result;
  v6 = (v2 + 16 * v5);
  v7 = v6 + 1;
  v8 = *(v6 + 2);
  if (v8 >= 1)
  {
    do
    {
      v9 = v2 + 16 * v3;
      v3 = v5;
      v10 = v8 - 1;
      v11 = *v6;
      *(v9 + 8) = *(v6 + 1);
      *v9 = v11;
      *(v9 + 4) = v10;
      if (*(v6 + 2) != -1)
      {
        *v7 = -1;
      }

      v5 = (v3 + 1) & v4;
      v6 = (v2 + 16 * v5);
      v7 = v6 + 1;
      v8 = *(v6 + 2);
    }

    while (v8 > 0);
  }

  *(result + 73) = 1;
  return result;
}

__n128 sub_29A530954(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20563B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5309A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20563B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5309D8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A530A24(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A530AA4(v5, &v9, v3, v4);
}

void sub_29A530AA4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v9 = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) != 0)
  {
    v10 = 0;
    sub_29A184A10(&v9, 0);
    sub_29A184A10(&v10, 0);
  }

  else
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A530B58(&v6, &v9);
  }

  sub_29A18562C(a4, &v9);
  sub_29A184A10(&v9, 0);
}

BOOL sub_29A530B58(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  do
  {
    v4 = __dst--;
    v5 = v4 == 0;
    if (!v4)
    {
      break;
    }

    memset(&v18, 0, sizeof(v18));
    LODWORD(v20[0]) = -1;
    EmptyToken = sub_29A4E7A0C(a1 + 8, v20, 4uLL);
    if (!EmptyToken)
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::clear(a2);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    v7 = *a1;
    v8 = *(*a1 + 144);
    if (LODWORD(v20[0]) >= ((*(*a1 + 152) - v8) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v9 = *(v8 + 4 * LODWORD(v20[0]));
      v11 = v7 + 120;
      v10 = *(v7 + 120);
      if (v9 >= (*(v11 + 8) - v10) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v12 = &qword_2A1742328;
      }

      else
      {
        v12 = (v10 + 8 * v9);
      }

      v13 = *v12 & 0xFFFFFFFFFFFFFFF8;
      if (v13)
      {
        EmptyString = (v13 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&v18, EmptyString);
    v20[1] = 0;
    v15 = sub_29A530D48(a1, v20);
    if (v15)
    {
      v16 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, &v18);
      sub_29A1854E8(v16, v20);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::clear(a2);
    }

    sub_29A186B14(v20);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  while ((v15 & 1) != 0);
  return v5;
}

void sub_29A530D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A530D48(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_29A530EAC(a1);
  result = sub_29A4E7A0C(a1 + 8, &__dst, 8uLL);
  if (result)
  {
    v5 = sub_29A530198();
    sub_29A5304BC(v5, &__dst, &__dst);
    if (v6)
    {
      v7 = *a1;
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v7, __dst, &v10);
      sub_29A18606C(a2, &v10);
      sub_29A186B14(&v10);
      sub_29A530814(v5, &__dst, bswap64(0x9E3779B97F4A7C55 * __dst));
      return 1;
    }

    else
    {
      v10 = "usd/crateFile.cpp";
      v11 = "Read";
      v12 = 1563;
      v13 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::Read(T &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::VtValue]";
      v14 = 0;
      v8 = (*a1 + 6720);
      if (*(*a1 + 6743) < 0)
      {
        v8 = *v8;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v10, 3, "Corrupt asset <%s>: a VtValue claims to recursively contain itself -- returning an empty VtValue instead", v8);
      return 0;
    }
  }

  return result;
}

void sub_29A530E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A530EAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(**(a1 + 16) + 24);
  __dst = 0;
  if (sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    v4 = v2 - v3;
    pxrInternal__aapl__pxrReserved__::ArchMemAdvise(*(**(a1 + 16) + 24) + v4, __dst, 1);
    *(a1 + 8) = *(**(a1 + 16) + 24) + __dst + v4;
  }
}

__n128 sub_29A530F40(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056438;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A530F8C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A530FC4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A531010(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A5310BC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A531098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

void sub_29A5310BC(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v9 = 0;
  v6 = *a2;
  v5 = *(a2 + 2);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A5311A0(&v6, &v9);
    v5 = v7;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  sub_29A184A10(&v9, 0);
  sub_29A184A10(&v10, 0);
  if (v5)
  {
LABEL_7:
    sub_29A014BEC(v5);
  }

LABEL_8:
  sub_29A18562C(a4, &v9);
  sub_29A184A10(&v9, 0);
}

void sub_29A531174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_29A5311A0(uint64_t *a1, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v19 = 0;
  if (!sub_29A4E5308(a1 + 1, &v19, 8uLL))
  {
    return 0;
  }

  do
  {
    v4 = v19--;
    v5 = v4 == 0;
    if (!v4)
    {
      break;
    }

    memset(&v18, 0, sizeof(v18));
    LODWORD(v20[0]) = -1;
    EmptyToken = sub_29A4E5308(a1 + 1, v20, 4uLL);
    if (!EmptyToken)
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::clear(a2);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    v7 = *a1;
    v8 = *(*a1 + 144);
    if (LODWORD(v20[0]) >= ((*(*a1 + 152) - v8) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v9 = *(v8 + 4 * LODWORD(v20[0]));
      v11 = v7 + 120;
      v10 = *(v7 + 120);
      if (v9 >= (*(v11 + 8) - v10) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v12 = &qword_2A1742328;
      }

      else
      {
        v12 = (v10 + 8 * v9);
      }

      v13 = *v12 & 0xFFFFFFFFFFFFFFF8;
      if (v13)
      {
        EmptyString = (v13 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&v18, EmptyString);
    v20[1] = 0;
    v15 = sub_29A531390(a1, v20);
    if (v15)
    {
      v16 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, &v18);
      sub_29A1854E8(v16, v20);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::clear(a2);
    }

    sub_29A186B14(v20);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  while ((v15 & 1) != 0);
  return v5;
}

void sub_29A531358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A531390(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  v11 = 0;
  if (sub_29A4E5308(a1 + 1, &v11, 8uLL))
  {
    a1[3] = &v11[v4];
  }

  result = sub_29A4E5308(a1 + 1, &v10, 8uLL);
  if (result)
  {
    v6 = sub_29A530198();
    sub_29A5304BC(v6, &v10, &v10);
    if (v7)
    {
      v8 = *a1;
      v12 = 0;
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v8, v10, &v11);
      sub_29A18606C(a2, &v11);
      sub_29A186B14(&v11);
      sub_29A530814(v6, &v10, bswap64(0x9E3779B97F4A7C55 * v10));
      return 1;
    }

    else
    {
      v11 = "usd/crateFile.cpp";
      v12 = "Read";
      v13 = 1563;
      v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>::Read(T &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream, T = pxrInternal__aapl__pxrReserved__::VtValue]";
      v15 = 0;
      v9 = (*a1 + 6720);
      if (*(*a1 + 6743) < 0)
      {
        v9 = *v9;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Corrupt asset <%s>: a VtValue claims to recursively contain itself -- returning an empty VtValue instead", v9);
      return 0;
    }
  }

  return result;
}

void sub_29A5314FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A531520(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20564B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A53156C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20564B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5315A4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5315F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  sub_29A53165C(v3, v2, v4 + 264, v6);
}

void sub_29A53165C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4[19] = a2;
  v4[20] = a3;
  sub_29A282C6C(v4, a4);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A531774(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::TfToken **a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 817);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A531DC4(a1, a2 + 1);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A531DC4(a1, a2 + 4);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A531DC4(a1, a2 + 7);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A531DC4(a1, a2 + 10);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A531DC4(a1, a2 + 16);
  }

LABEL_16:
  result = sub_29A531DC4(a1, a2 + 13);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A531DC4(a1, a2 + 16);
}

void sub_29A531890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5318AC(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v12 = 0;
  v13 = 0;
  sub_29A2831D4(&v12, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v5 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12));
  v6 = a1[1];
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v5;
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = v5 & (*&v6 - 1);
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::operator==();
          }

          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= *&v6)
            {
              v11 %= *&v6;
            }
          }

          else
          {
            v11 &= *&v6 - 1;
          }

          if (v11 != v8)
          {
            break;
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  sub_29A531B48(a1, v5, a3, &v12);
}

void sub_29A531B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A531BD0(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A531B48(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xB0uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29A282C6C((v8 + 2), a3);
}

void sub_29A531BD0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E1A50(v2 + 2);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A531C2C(uint64_t a1, const char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 256);
  if (v6 != a2 || *(a1 + 257) < BYTE1(a2))
  {
    v18[0] = "usd/crateFile.cpp";
    v18[1] = "RequestWriteVersionUpgrade";
    v18[2] = 1196;
    v18[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackingContext::RequestWriteVersionUpgrade(Version, std::string)";
    v19 = 0;
    v7 = (a1 + 232);
    if (*(a1 + 255) < 0)
    {
      v7 = *v7;
    }

    v8 = &v16;
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", a2, a3, v6, *(a1 + 257), *(a1 + 258));
    if (v17 < 0)
    {
      v8 = v16;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v9, v10, v4, BYTE1(v4), BYTE2(v4));
    if (v15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v3[23] < 0)
    {
      v3 = *v3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Upgrading crate file <%s> from version %s to %s: %s", v11, v7, v8, p_p, v3);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    *(a1 + 256) = v4;
    *(a1 + 258) = BYTE2(v4);
  }

  return 1;
}

void sub_29A531D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **sub_29A531DC4(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::TfToken **a2)
{
  __src = (a2[1] - *a2) >> 3;
  sub_29A4E5264(a1, &__src);
  return sub_29A51057C(*a2, a2[1], a1);
}

__n128 sub_29A531E88(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2056538;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A531ED4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2056538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A531F50(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2056598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A532074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A281338(va);
  _Unwind_Resume(a1);
}

void sub_29A53230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A124AB0((v6 - 40));
  sub_29A281338(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A532348(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A34AC54((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_29A34AC54((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_29A34AC54((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    sub_29A34AC54((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    sub_29A34AC54((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    sub_29A34AC54((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  }

  return a1;
}

BOOL sub_29A5323FC(uint64_t a1, int a2, __sFILE *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 24), a3, 1, *(a1 + 8) + *a1);
  if (v4 != -1)
  {
    *(a1 + 8) += v4;
  }

  return v4 != -1;
}

BOOL sub_29A532450(uint64_t a1, char **a2)
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
    v11 = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A394184(&v11, v16);
  v7 = sub_29A510A4C(a1, v11, v16);
  v8 = v7;
  if (&v11 != a2 && v7)
  {
    sub_29A34AC54(a2, v11, v12, (v12 - v11) >> 3);
  }

  v17 = &v11;
  sub_29A124AB0(&v17);
  return v8;
}