BOOL sub_29A4FC36C(uint64_t a1, int a2, __sFILE *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 24), a3, 4, *(a1 + 8) + *a1);
  if (v4 != -1)
  {
    *(a1 + 8) += v4;
  }

  return v4 != -1;
}

void *sub_29A4FC3C0(void *result, void *a2)
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

void sub_29A4FC618(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

__n128 sub_29A4FC62C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20527B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FC678(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20527B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FC6B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_29A4FC6FC(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A4FC77C(v5, v10, v3, v4);
}

char *sub_29A4FC77C(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A4FC818(a1, v7, a3, v9);
    sub_29A3F8EDC(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  v9[0].n128_u8[0] = a3 & 1;
  return sub_29A3F8E60(a4, v9);
}

void sub_29A4FC818(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    __dst = 0u;
    v19 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    v17 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742168))
    {
      v14 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v14)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742160 = *v14;
      __cxa_guard_release(&qword_2A1742168);
    }

    v21 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v15 + 8, &v21, 8uLL))
      {
        return;
      }

      v8 = v21;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v15 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v8 = __dst;
      v21 = __dst;
    }

    if (byte_2A1742160 == 1 && v8 >= 0x800)
    {
      v9 = *(&v15 + 1);
      v10 = sub_29A4FCB64(&v15 + 8, *(&v15 + 1), v8, v8);
      if (v10)
      {
        *&v19 = 0;
        *(&v19 + 1) = v10;
        v20 = v9;
        __dst = v21;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v19 = 2282;
      *(&v19 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = BOOL]";
      LOBYTE(v20) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v8);
      sub_29A20CF8C(a4);
    }

    else
    {
      v11 = *(*v16 + 32);
      v12 = *(&v15 + 1) - *(*v16 + 24);
      v13 = v11 - v12;
      if (v12 < 0 || (v13 & 0x8000000000000000) != 0 || v8 > v13)
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v19 = 2290;
        *(&v19 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = BOOL]";
        LOBYTE(v20) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, v8, v13, v11);
      }

      else
      {
        v22 = 0;
        *&__dst = &v22;
        sub_29A20CFDC(a4, v8, &__dst);
        sub_29A20D1F0(a4);
        sub_29A4E7A0C(&v15 + 8, *(a4 + 32), *a4);
      }
    }
  }
}

uint64_t sub_29A4FCB64(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v6 = **(a1 + 8);
  v8 = v6[3];
  v7 = v6[4];
  v9 = &a2[a3];
  v10 = (v8 + v7);
  v11 = &a2[a4];
  if (v8 <= a2 && v7 >= a4 && v7 >= a3)
  {
    v14 = v9 >= v10;
    v15 = v9 == v10;
  }

  else
  {
    v14 = 1;
    v15 = 0;
  }

  if (!v15 && v14)
  {
    v16 = 1;
    v17 = 0;
  }

  else
  {
    v16 = v11 >= v10;
    v17 = v11 == v10;
  }

  if (!v17 && v16)
  {
    v21 = v4;
    v22 = v5;
    v19[0] = "usd/crateFile.cpp";
    v19[1] = "CreateZeroCopyDataSource";
    v19[2] = 680;
    v19[3] = "Vt_ArrayForeignDataSource *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>::CreateZeroCopyDataSource(const void *, size_t, uint64_t) [FileMappingPtr = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *]";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v19, 3, "Zero-copy data range out-of-bounds: %zd bytes at offset %td in a mapping of length %zd", a3, &a2[-v8], v7);
    return 0;
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::_AddRangeReference(v6, a2, a3);
  }
}

__n128 sub_29A4FCC14(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052838;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FCC60(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FCC98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A4FCCE4(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A4FCD90(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A4FCD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

char *sub_29A4FCD90(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A4FCE84(a1, &v9, a3, v12);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A3F8EDC(a4, v12);
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v12[0].n128_u8[0] = v5 & 1;
  return sub_29A3F8E60(a4, v12);
}

void sub_29A4FCE84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    if (&v17 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(v17) = 0, sub_29A4E5308(a2 + 1, &v17, 4uLL)))
  {
    v7 = a2[1];
    v8 = a2[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[3];
      v14 = v7;
      v15 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = a2[3];
      v14 = a2[1];
      v15 = 0;
    }

    v16 = v9;
    v20 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E5308(&v14, &v20, 8uLL))
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v17) = 0;
      if (!sub_29A4E5308(&v14, &v17, 4uLL))
      {
        goto LABEL_18;
      }

      v20 = v17;
    }

    v10 = (*(*v14 + 16))(v14);
    v11 = v10 - v16;
    v12 = v20;
    if (v16 < 0 || (v11 & 0x8000000000000000) != 0 || v20 > v11)
    {
      *&v17 = "usd/crateFile.cpp";
      *(&v17 + 1) = "_ReadUncompressedArray";
      *&v18 = 2226;
      *(&v18 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = BOOL]";
      LOBYTE(v19) = 0;
      v13 = (*(*v14 + 16))(v14);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, v12, v11, v13);
    }

    else
    {
      v21 = 0;
      *&v17 = &v21;
      sub_29A20CFDC(a4, v20, &v17);
      sub_29A20D1F0(a4);
      sub_29A4E5308(&v14, *(a4 + 32), *a4);
    }

LABEL_18:
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

__n128 sub_29A4FD120(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20528B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FD16C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20528B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FD1B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A4FD1FC(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A4FD2B4(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return *v4 | 0x4002000000000000;
  }
}

unint64_t sub_29A4FD2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8002000000000000;
  v18 = 0x8002000000000000;
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
      sub_29A4DFFAC(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A4FD434(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8002000000000000;
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

void *sub_29A4FD434(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

void sub_29A4FD6EC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

__n128 sub_29A4FD750(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FD79C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

char *sub_29A4FD7CC(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A4FD864(v5, v11, v3, v4);
}

uint64_t sub_29A4FD818(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_29A4FD864(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A4FD8FC(a1, v7, a3, v9);
    sub_29A19E544(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  v9[0].n128_u8[0] = a3;
  return sub_29A3F90A0(a4, v9);
}

void sub_29A4FD8FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    if (&v15 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
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
    *(&v16 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = unsigned char]";
    LOBYTE(v17) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, v12, v10 - v13, v10);
  }

  else
  {
    v19 = 0;
    *&v15 = &v19;
    sub_29A19E2EC(a4, v12, &v15);
    sub_29A19E500(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), *a4, v13 + v8);
  }
}

__n128 sub_29A4FDAE8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20529B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FDB34(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20529B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FDB6C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_29A4FDBB8(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A4FDC38(v5, v10, v3, v4);
}

char *sub_29A4FDC38(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A4FDCD0(a1, v7, a3, v9);
    sub_29A19E544(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  v9[0].n128_u8[0] = a3;
  return sub_29A3F90A0(a4, v9);
}

void sub_29A4FDCD0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    __dst = 0u;
    v19 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    v17 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742178))
    {
      v14 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v14)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742170 = *v14;
      __cxa_guard_release(&qword_2A1742178);
    }

    v21 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v15 + 8, &v21, 8uLL))
      {
        return;
      }

      v8 = v21;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v15 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v8 = __dst;
      v21 = __dst;
    }

    if (byte_2A1742170 == 1 && v8 >= 0x800)
    {
      v9 = *(&v15 + 1);
      v10 = sub_29A4FCB64(&v15 + 8, *(&v15 + 1), v8, v8);
      if (v10)
      {
        *&v19 = 0;
        *(&v19 + 1) = v10;
        v20 = v9;
        __dst = v21;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v19 = 2282;
      *(&v19 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned char]";
      LOBYTE(v20) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v8);
      sub_29A19E29C(a4);
    }

    else
    {
      v11 = *(*v16 + 32);
      v12 = *(&v15 + 1) - *(*v16 + 24);
      v13 = v11 - v12;
      if (v12 < 0 || (v13 & 0x8000000000000000) != 0 || v8 > v13)
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v19 = 2290;
        *(&v19 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned char]";
        LOBYTE(v20) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, v8, v13, v11);
      }

      else
      {
        v22 = 0;
        *&__dst = &v22;
        sub_29A19E2EC(a4, v8, &__dst);
        sub_29A19E500(a4);
        sub_29A4E7A0C(&v15 + 8, *(a4 + 32), *a4);
      }
    }
  }
}

__n128 sub_29A4FE024(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052A38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FE070(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052A38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FE0A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052A98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A4FE0F4(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A4FE1A0(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A4FE17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

char *sub_29A4FE1A0(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A4FE290(a1, &v9, a3, v12);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A19E544(a4, v12);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v12[0].n128_u8[0] = v5;
  return sub_29A3F90A0(a4, v12);
}

void sub_29A4FE290(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    if (&v17 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(v17) = 0, sub_29A4E5308(a2 + 1, &v17, 4uLL)))
  {
    v7 = a2[1];
    v8 = a2[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = a2[3];
      v14 = v7;
      v15 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = a2[3];
      v14 = a2[1];
      v15 = 0;
    }

    v16 = v9;
    v20 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E5308(&v14, &v20, 8uLL))
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v17) = 0;
      if (!sub_29A4E5308(&v14, &v17, 4uLL))
      {
        goto LABEL_18;
      }

      v20 = v17;
    }

    v10 = (*(*v14 + 16))(v14);
    v11 = v10 - v16;
    v12 = v20;
    if (v16 < 0 || (v11 & 0x8000000000000000) != 0 || v20 > v11)
    {
      *&v17 = "usd/crateFile.cpp";
      *(&v17 + 1) = "_ReadUncompressedArray";
      *&v18 = 2226;
      *(&v18 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = unsigned char]";
      LOBYTE(v19) = 0;
      v13 = (*(*v14 + 16))(v14);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, v12, v11, v13);
    }

    else
    {
      v21 = 0;
      *&v17 = &v21;
      sub_29A19E2EC(a4, v20, &v17);
      sub_29A19E500(a4);
      sub_29A4E5308(&v14, *(a4 + 32), *a4);
    }

LABEL_18:
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

__n128 sub_29A4FE52C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052AB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FE578(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052AB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FE5BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A4FE608(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A4FE6C0(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return *v4 | 0x4003000000000000;
  }
}

unint64_t sub_29A4FE6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a2;
  v26[1] = a3;
  result = 0x8003000000000000;
  v25 = 0x8003000000000000;
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
      sub_29A4E0068(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A4FE8BC(v9, a4, a4, &v25);
    if (v14)
    {
      v15 = *(a2 + 6536);
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v16 = *(v15 + 256);
        *&v27 = a2;
        *(&v27 + 1) = a3;
        v17 = *(a3 + 16);
        if (((v16 | (v16 << 16)) & 0xFFFF00u) > 0x6FF)
        {
          *__src = *a4;
          sub_29A4E5264(&v27, __src);
        }

        else
        {
          *__src = *a4;
          sub_29A4FBF2C(&v27, __src);
        }

        v18 = *a4;
        v19 = *(a4 + 32);
        if (*a4 > 0xFuLL)
        {
          *__src = v27;
          CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v18);
          v22 = operator new[](CompressedBufferSize);
          v24 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v19, v18, v22, v23);
          v29 = v24;
          sub_29A4E5264(__src, &v29);
          sub_29A4D0BB8(__src, v22, v24);
          operator delete[](v22);
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0xA003000000000000;
        }

        else
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0x8003000000000000;
          sub_29A4F6CF0(&v27, v19, v18);
        }

        v13[7] = v20;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v26, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        *__src = 1;
        sub_29A4FBF2C(v26, __src);
        *__src = *a4;
        sub_29A4FBF2C(v26, __src);
        sub_29A4F6CF0(v26, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A4FE8BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  LOBYTE(v32) = 1;
  v31 = v9;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v31, *(a2 + 32), (4 * v9));
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
          if (pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((i + 2), a2))
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

void sub_29A4FEB78(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

__n128 sub_29A4FEBDC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052B38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FEC28(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A4FEC58(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A4FECF0(v5, v11, v3, v4);
}

uint64_t sub_29A4FECA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052B98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A4FECF0(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A4FED88(a1, v7, a3, v9);
    sub_29A19DC30(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3F9228(a4, v9);
}

void sub_29A4FED88(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    if (&v33 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(v33) = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &v33))
    {
      return;
    }

    v7 = a2[1];
    v30 = *a2;
    v31 = v7;
    v8 = *(a2 + 4);
    v32 = v8;
    v9 = *(&v30 + 1);
    v10 = *(&v7 + 1);
    v11 = v7;
    goto LABEL_10;
  }

  v12 = a2[1];
  v30 = *a2;
  v31 = v12;
  v32 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = *(&v30 + 1);
    v10 = *(&v31 + 1);
    v11 = v31;
    v8 = v32;
    v36 = 0;
    if (v6 > 0x6FF)
    {
      v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
      if (v13 == -1)
      {
        return;
      }

      v14 = v36;
      goto LABEL_17;
    }

LABEL_10:
    LODWORD(v33) = 0;
    v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v8, &v33, 4, v11 + v9);
    if (v13 == -1)
    {
      return;
    }

    v14 = v33;
    v36 = v33;
LABEL_17:
    v19 = v13 + v11;
    v20 = v10 - v19;
    if (v19 < 0 || (v20 & 0x8000000000000000) != 0 || v14 > v20 || 4 * v14 > v20)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadUncompressedArray";
      *&v34 = 2226;
      *(&v34 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = int]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _8C[0] = 0;
    *&v33 = _8C;
    sub_29A19D7EC(a4, v14, &v33);
    sub_29A19DBEC(a4);
    v21 = *(a4 + 32);
    v22 = (4 * *a4);
    v23 = v19 + v9;
LABEL_22:
    pxrInternal__aapl__pxrReserved__::ArchPRead(v8, v21, v22, v23);
    return;
  }

  v36 = 0;
  if (v6 > 0x6FF)
  {
    v8 = v32;
    v15 = *(&v30 + 1);
    v24 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
    if (v24 == -1)
    {
      return;
    }

    v17 = v31 + v24;
    *&v31 = v31 + v24;
    v18 = v36;
  }

  else
  {
    LODWORD(v33) = 0;
    v8 = v32;
    v15 = *(&v30 + 1);
    v16 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v33, 4, v31 + *(&v30 + 1));
    if (v16 == -1)
    {
      return;
    }

    v17 = v31 + v16;
    *&v31 = v31 + v16;
    v18 = v33;
    v36 = v33;
  }

  if (v18 <= 0xF)
  {
    v25 = *(&v31 + 1) - v17;
    if (v17 < 0 || (v25 & 0x8000000000000000) != 0 || v18 > v25 || 4 * v18 > v25)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadPossiblyCompressedArray";
      *&v34 = 2414;
      *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = int]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _8C[0] = 0;
    *&v33 = _8C;
    sub_29A19D7EC(a4, v18, &v33);
    sub_29A19DBEC(a4);
    v21 = *(a4 + 32);
    v22 = (4 * *a4);
    v23 = v17 + v15;
    goto LABEL_22;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v18) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v18))
  {
    _8C[0] = 0;
    *&v33 = _8C;
    sub_29A19D7EC(a4, v36, &v33);
    sub_29A19DBEC(a4);
    v26 = *(a4 + 32);
    v27 = *a4;
    v33 = 0u;
    v34 = 0u;
    sub_29A4F0D40(&v33, &v30, v26, v27);
    v28 = v34;
    *&v34 = 0;
    if (v28)
    {
      operator delete[](v28);
    }

    v29 = v33;
    *&v33 = 0;
    if (v29)
    {
      operator delete[](v29);
    }
  }

  else
  {
    *&v33 = "usd/crateFile.cpp";
    *(&v33 + 1) = "_ReadPossiblyCompressedArray";
    *&v34 = 2422;
    *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = int]";
    LOBYTE(v35) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu compressed values");
  }
}

void sub_29A4FF154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A4E8A34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4FF180(pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *a1)
{
  result = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(a1);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(a1) != 0;
  }

  return result;
}

void sub_29A4FF1B8(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *a3)
{
  *v5 = 0u;
  *__p = 0u;
  sub_29A4F0D40(v5, a1, a2, a3);
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

__n128 sub_29A4FF234(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052BB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FF280(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FF2B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052C18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A4FF304(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A4FF384(v5, v10, v3, v4);
}

int *sub_29A4FF384(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A4FF41C(a1, v7, a3, v9);
    sub_29A19DC30(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3F9228(a4, v9);
}

void sub_29A4FF41C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v36 = 0;
    __dst = 0u;
    v35 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
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
    v28 = *a2;
    v29 = v7;
    v30 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v28 = *a2;
  v29 = v8;
  v30 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
LABEL_9:
    v31 = v28;
    v32 = v29;
    v33 = v30;
    if ((atomic_load_explicit(&qword_2A1742188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742188))
    {
      v27 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v27)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742180 = *v27;
      __cxa_guard_release(&qword_2A1742188);
    }

    v37 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v31 + 8, &v37, 8uLL))
      {
        return;
      }

      v9 = v37;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v31 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v9 = __dst;
      v37 = __dst;
    }

    v11 = 4 * v9;
    v12 = *(&v31 + 1);
    if (byte_2A1742180 == 1 && v11 >= 0x800 && (BYTE8(v31) & 3) == 0)
    {
      v13 = sub_29A4FCB64(&v31 + 8, *(&v31 + 1), 4 * v9, v9);
      if (v13)
      {
        *&v35 = 0;
        *(&v35 + 1) = v13;
        v36 = v12;
        __dst = v37;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2282;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = int]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v11);
      sub_29A19D79C(a4);
      return;
    }

    v14 = *(&v31 + 1) - *(*v32 + 24);
    v15 = *(*v32 + 32) - v14;
    if (v14 < 0 || (v15 & 0x8000000000000000) != 0 || (v9 <= v15 ? (v16 = v11 > v15) : (v16 = 1), v16))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2290;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = int]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld");
      return;
    }

    v38 = 0;
    *&__dst = &v38;
    sub_29A19D7EC(a4, v9, &__dst);
    sub_29A19DBEC(a4);
    v17 = *(a4 + 32);
    v18 = 4 * *a4;
    v19 = &v31 + 8;
LABEL_42:
    sub_29A4E7A0C(v19, v17, v18);
    return;
  }

  *&v31 = 0;
  if (v6 > 0x6FF)
  {
    if (!sub_29A4E7A0C(&v28 + 8, &v31, 8uLL))
    {
      return;
    }

    v10 = v31;
  }

  else
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v28 + 8, &__dst, 4uLL))
    {
      return;
    }

    v10 = __dst;
    *&v31 = __dst;
  }

  if (v10 <= 0xF)
  {
    v20 = *(&v28 + 1) - *(*v29 + 24);
    v21 = *(*v29 + 32) - v20;
    if (v20 < 0 || (v21 & 0x8000000000000000) != 0 || (v10 <= v21 ? (v22 = 4 * v10 > v21) : (v22 = 1), v22))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v35 = 2414;
      *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = int]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LODWORD(v37) = 0;
    *&__dst = &v37;
    sub_29A19D7EC(a4, v10, &__dst);
    sub_29A19DBEC(a4);
    v17 = *(a4 + 32);
    v18 = 4 * *a4;
    v19 = &v28 + 8;
    goto LABEL_42;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v10) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v10))
  {
    LODWORD(v37) = 0;
    *&__dst = &v37;
    sub_29A19D7EC(a4, v31, &__dst);
    sub_29A19DBEC(a4);
    v23 = *(a4 + 32);
    v24 = *a4;
    __dst = 0u;
    v35 = 0u;
    sub_29A4E9E78(&__dst, &v28, v23, v24);
    v25 = v35;
    *&v35 = 0;
    if (v25)
    {
      operator delete[](v25);
    }

    v26 = __dst;
    *&__dst = 0;
    if (v26)
    {
      operator delete[](v26);
    }
  }

  else
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v35 = 2422;
    *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = int]";
    LOBYTE(v36) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed values");
  }
}

void sub_29A4FF964(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  *v5 = 0u;
  *__p = 0u;
  sub_29A4E9E78(v5, a1, a2, this);
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

__n128 sub_29A4FF9E0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052C38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4FFA2C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4FFA64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A4FFAB0(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A4FFB5C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A4FFB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

int *sub_29A4FFB5C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A4FFC4C(a1, &v9, a3, v12);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A19DC30(a4, v12);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v12[0].n128_u32[0] = v5;
  return sub_29A3F9228(a4, v12);
}

void sub_29A4FFC4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v40 = 0;
    *v38 = 0u;
    *__p = 0u;
    if (v38 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v7 = *a2;
  v8 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v8 <= 0x4FF)
  {
    LODWORD(v38[0]) = 0;
    if (!sub_29A4E5308(a2 + 1, v38, 4uLL))
    {
      return;
    }

    v7 = *a2;
  }

  v10 = a2[1];
  v9 = a2[2];
  v30 = v7;
  v31 = v10;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[3];
  v33 = v11;
  if ((a3 & 0x2000000000000000) == 0 || v8 <= 0x4FF)
  {
    v34 = v7;
    v35 = v31;
    v36 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v33;
    }

    v37 = v11;
    v41 = 0;
    if (v8 > 0x6FF)
    {
      if (!sub_29A4E5308(&v35, &v41, 8uLL))
      {
        goto LABEL_28;
      }
    }

    else
    {
      LODWORD(v38[0]) = 0;
      if (!sub_29A4E5308(&v35, v38, 4uLL))
      {
        goto LABEL_28;
      }

      v41 = LODWORD(v38[0]);
    }

    v13 = (*(*v35 + 16))(v35);
    v14 = v13 - v37;
    v15 = v41;
    if ((v37 & 0x8000000000000000) != 0 || (v14 & 0x8000000000000000) != 0 || (v41 <= v14 ? (v16 = 4 * v41 > v14) : (v16 = 1), v16))
    {
      v38[0] = "usd/crateFile.cpp";
      v38[1] = "_ReadUncompressedArray";
      __p[0] = 2226;
      __p[1] = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = int]";
      LOBYTE(v40) = 0;
      v28 = (*(*v35 + 16))(v35);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v38, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v15, 4 * v15, v14, v28);
    }

    else
    {
      v42 = 0;
      v38[0] = &v42;
      sub_29A19D7EC(a4, v41, v38);
      sub_29A19DBEC(a4);
      sub_29A4E5308(&v35, *(a4 + 32), 4 * *a4);
    }

LABEL_28:
    if (v36)
    {
      sub_29A014BEC(v36);
    }

    goto LABEL_51;
  }

  v34 = 0;
  if (v8 > 0x6FF)
  {
    if (sub_29A4E5308(&v31, &v34, 8uLL))
    {
      v12 = v34;
LABEL_32:
      if (v12 <= 0xF)
      {
        v17 = (*(*v31 + 16))(v31);
        v18 = v34;
        v19 = v17 - v33;
        v20 = 4 * v34;
        if ((v33 & 0x8000000000000000) != 0 || (v19 & 0x8000000000000000) != 0 || (v34 <= v19 ? (v21 = v20 > v19) : (v21 = 1), v21))
        {
          v38[0] = "usd/crateFile.cpp";
          v38[1] = "_ReadPossiblyCompressedArray";
          __p[0] = 2414;
          __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = int]";
          LOBYTE(v40) = 0;
          v29 = (*(*v31 + 16))(v31);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v38, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld", v18, v20, v19, v29);
        }

        else
        {
          LODWORD(v41) = 0;
          v38[0] = &v41;
          sub_29A19D7EC(a4, v34, v38);
          sub_29A19DBEC(a4);
          sub_29A4E5308(&v31, *(a4 + 32), 4 * *a4);
        }

        goto LABEL_51;
      }

      v22 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v12))
      {
        v23 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v12) != 0;
        if (!v22)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v23 = 0;
        if (!v22)
        {
LABEL_45:
          if (v23)
          {
            LODWORD(v41) = 0;
            v38[0] = &v41;
            sub_29A19D7EC(a4, v34, v38);
            sub_29A19DBEC(a4);
            v24 = *(a4 + 32);
            v25 = *a4;
            *v38 = 0u;
            *__p = 0u;
            sub_29A4F49D0(v38, &v30, v24, v25);
            v26 = __p[0];
            __p[0] = 0;
            if (v26)
            {
              operator delete[](v26);
            }

            v27 = v38[0];
            v38[0] = 0;
            if (v27)
            {
              operator delete[](v27);
            }
          }

          else
          {
            v38[0] = "usd/crateFile.cpp";
            v38[1] = "_ReadPossiblyCompressedArray";
            __p[0] = 2422;
            __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = int]";
            LOBYTE(v40) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v38, 3, "Failed to read %llu compressed values", v34);
          }

          goto LABEL_51;
        }
      }

      sub_29A014BEC(v22);
      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(v38[0]) = 0;
    if (sub_29A4E5308(&v31, v38, 4uLL))
    {
      v12 = LODWORD(v38[0]);
      v34 = LODWORD(v38[0]);
      goto LABEL_32;
    }
  }

LABEL_51:
  if (v32)
  {
    sub_29A014BEC(v32);
  }
}

void sub_29A500104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A4E8A34(va);
  if (a8)
  {
    sub_29A014BEC(a8);
  }

  _Unwind_Resume(a1);
}

void sub_29A500168(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression *this)
{
  *v5 = 0u;
  *__p = 0u;
  sub_29A4F49D0(v5, a1, a2, this);
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

__n128 sub_29A5001E4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052CB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A500230(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052CB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A500274(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A5002C0(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A500378(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return *v4 | 0x4004000000000000;
  }
}

unint64_t sub_29A500378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a2;
  v26[1] = a3;
  result = 0x8004000000000000;
  v25 = 0x8004000000000000;
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
      sub_29A4E0124(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A500574(v9, a4, a4, &v25);
    if (v14)
    {
      v15 = *(a2 + 6536);
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v16 = *(v15 + 256);
        *&v27 = a2;
        *(&v27 + 1) = a3;
        v17 = *(a3 + 16);
        if (((v16 | (v16 << 16)) & 0xFFFF00u) > 0x6FF)
        {
          *__src = *a4;
          sub_29A4E5264(&v27, __src);
        }

        else
        {
          *__src = *a4;
          sub_29A4FBF2C(&v27, __src);
        }

        v18 = *a4;
        v19 = *(a4 + 32);
        if (*a4 > 0xFuLL)
        {
          *__src = v27;
          CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v18);
          v22 = operator new[](CompressedBufferSize);
          v24 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v19, v18, v22, v23);
          v29 = v24;
          sub_29A4E5264(__src, &v29);
          sub_29A4D0BB8(__src, v22, v24);
          operator delete[](v22);
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0xA004000000000000;
        }

        else
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0x8004000000000000;
          sub_29A4F6CF0(&v27, v19, v18);
        }

        v13[7] = v20;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v26, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        *__src = 1;
        sub_29A4FBF2C(v26, __src);
        *__src = *a4;
        sub_29A4FBF2C(v26, __src);
        sub_29A4F6CF0(v26, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A500574(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  LOBYTE(v32) = 1;
  v31 = v9;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v31, *(a2 + 32), (4 * v9));
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
          if (pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((i + 2), a2))
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

void sub_29A500830(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

__n128 sub_29A500894(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052D38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5008E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052D38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A500910(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A5009A8(v5, v11, v3, v4);
}

uint64_t sub_29A50095C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052D98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A5009A8(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A500A40(a1, v7, a3, v9);
    sub_29A19CF3C(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3F93B0(a4, v9);
}

void sub_29A500A40(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    if (&v33 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(v33) = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &v33))
    {
      return;
    }

    v7 = a2[1];
    v30 = *a2;
    v31 = v7;
    v8 = *(a2 + 4);
    v32 = v8;
    v9 = *(&v30 + 1);
    v10 = *(&v7 + 1);
    v11 = v7;
    goto LABEL_10;
  }

  v12 = a2[1];
  v30 = *a2;
  v31 = v12;
  v32 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = *(&v30 + 1);
    v10 = *(&v31 + 1);
    v11 = v31;
    v8 = v32;
    v36 = 0;
    if (v6 > 0x6FF)
    {
      v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
      if (v13 == -1)
      {
        return;
      }

      v14 = v36;
      goto LABEL_17;
    }

LABEL_10:
    LODWORD(v33) = 0;
    v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v8, &v33, 4, v11 + v9);
    if (v13 == -1)
    {
      return;
    }

    v14 = v33;
    v36 = v33;
LABEL_17:
    v19 = v13 + v11;
    v20 = v10 - v19;
    if (v19 < 0 || (v20 & 0x8000000000000000) != 0 || v14 > v20 || 4 * v14 > v20)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadUncompressedArray";
      *&v34 = 2226;
      *(&v34 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = unsigned int]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _8C[0] = 0;
    *&v33 = _8C;
    sub_29A19CAF8(a4, v14, &v33);
    sub_29A19CEF8(a4);
    v21 = *(a4 + 32);
    v22 = (4 * *a4);
    v23 = v19 + v9;
LABEL_22:
    pxrInternal__aapl__pxrReserved__::ArchPRead(v8, v21, v22, v23);
    return;
  }

  v36 = 0;
  if (v6 > 0x6FF)
  {
    v8 = v32;
    v15 = *(&v30 + 1);
    v24 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
    if (v24 == -1)
    {
      return;
    }

    v17 = v31 + v24;
    *&v31 = v31 + v24;
    v18 = v36;
  }

  else
  {
    LODWORD(v33) = 0;
    v8 = v32;
    v15 = *(&v30 + 1);
    v16 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v33, 4, v31 + *(&v30 + 1));
    if (v16 == -1)
    {
      return;
    }

    v17 = v31 + v16;
    *&v31 = v31 + v16;
    v18 = v33;
    v36 = v33;
  }

  if (v18 <= 0xF)
  {
    v25 = *(&v31 + 1) - v17;
    if (v17 < 0 || (v25 & 0x8000000000000000) != 0 || v18 > v25 || 4 * v18 > v25)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadPossiblyCompressedArray";
      *&v34 = 2414;
      *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = unsigned int]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _8C[0] = 0;
    *&v33 = _8C;
    sub_29A19CAF8(a4, v18, &v33);
    sub_29A19CEF8(a4);
    v21 = *(a4 + 32);
    v22 = (4 * *a4);
    v23 = v17 + v15;
    goto LABEL_22;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v18) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v18))
  {
    _8C[0] = 0;
    *&v33 = _8C;
    sub_29A19CAF8(a4, v36, &v33);
    sub_29A19CEF8(a4);
    v26 = *(a4 + 32);
    v27 = *a4;
    v33 = 0u;
    v34 = 0u;
    sub_29A4EFACC(&v33, &v30, v26, v27);
    v28 = v34;
    *&v34 = 0;
    if (v28)
    {
      operator delete[](v28);
    }

    v29 = v33;
    *&v33 = 0;
    if (v29)
    {
      operator delete[](v29);
    }
  }

  else
  {
    *&v33 = "usd/crateFile.cpp";
    *(&v33 + 1) = "_ReadPossiblyCompressedArray";
    *&v34 = 2422;
    *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = unsigned int]";
    LOBYTE(v35) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu compressed values");
  }
}

void sub_29A500E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A4E8A34(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A500E40(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052DB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A500E8C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A500EC4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052E18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A500F10(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A500F90(v5, v10, v3, v4);
}

int *sub_29A500F90(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A501028(a1, v7, a3, v9);
    sub_29A19CF3C(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3F93B0(a4, v9);
}

void sub_29A501028(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v36 = 0;
    __dst = 0u;
    v35 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
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
    v28 = *a2;
    v29 = v7;
    v30 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v28 = *a2;
  v29 = v8;
  v30 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
LABEL_9:
    v31 = v28;
    v32 = v29;
    v33 = v30;
    if ((atomic_load_explicit(&qword_2A1742198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742198))
    {
      v27 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v27)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742190 = *v27;
      __cxa_guard_release(&qword_2A1742198);
    }

    v37 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v31 + 8, &v37, 8uLL))
      {
        return;
      }

      v9 = v37;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v31 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v9 = __dst;
      v37 = __dst;
    }

    v11 = 4 * v9;
    v12 = *(&v31 + 1);
    if (byte_2A1742190 == 1 && v11 >= 0x800 && (BYTE8(v31) & 3) == 0)
    {
      v13 = sub_29A4FCB64(&v31 + 8, *(&v31 + 1), 4 * v9, v9);
      if (v13)
      {
        *&v35 = 0;
        *(&v35 + 1) = v13;
        v36 = v12;
        __dst = v37;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2282;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned int]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v11);
      sub_29A19CAA8(a4);
      return;
    }

    v14 = *(&v31 + 1) - *(*v32 + 24);
    v15 = *(*v32 + 32) - v14;
    if (v14 < 0 || (v15 & 0x8000000000000000) != 0 || (v9 <= v15 ? (v16 = v11 > v15) : (v16 = 1), v16))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2290;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned int]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld");
      return;
    }

    v38 = 0;
    *&__dst = &v38;
    sub_29A19CAF8(a4, v9, &__dst);
    sub_29A19CEF8(a4);
    v17 = *(a4 + 32);
    v18 = 4 * *a4;
    v19 = &v31 + 8;
LABEL_42:
    sub_29A4E7A0C(v19, v17, v18);
    return;
  }

  *&v31 = 0;
  if (v6 > 0x6FF)
  {
    if (!sub_29A4E7A0C(&v28 + 8, &v31, 8uLL))
    {
      return;
    }

    v10 = v31;
  }

  else
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v28 + 8, &__dst, 4uLL))
    {
      return;
    }

    v10 = __dst;
    *&v31 = __dst;
  }

  if (v10 <= 0xF)
  {
    v20 = *(&v28 + 1) - *(*v29 + 24);
    v21 = *(*v29 + 32) - v20;
    if (v20 < 0 || (v21 & 0x8000000000000000) != 0 || (v10 <= v21 ? (v22 = 4 * v10 > v21) : (v22 = 1), v22))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v35 = 2414;
      *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned int]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LODWORD(v37) = 0;
    *&__dst = &v37;
    sub_29A19CAF8(a4, v10, &__dst);
    sub_29A19CEF8(a4);
    v17 = *(a4 + 32);
    v18 = 4 * *a4;
    v19 = &v28 + 8;
    goto LABEL_42;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v10) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v10))
  {
    LODWORD(v37) = 0;
    *&__dst = &v37;
    sub_29A19CAF8(a4, v31, &__dst);
    sub_29A19CEF8(a4);
    v23 = *(a4 + 32);
    v24 = *a4;
    __dst = 0u;
    v35 = 0u;
    sub_29A4E8914(&__dst, &v28, v23, v24);
    v25 = v35;
    *&v35 = 0;
    if (v25)
    {
      operator delete[](v25);
    }

    v26 = __dst;
    *&__dst = 0;
    if (v26)
    {
      operator delete[](v26);
    }
  }

  else
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v35 = 2422;
    *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned int]";
    LOBYTE(v36) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed values");
  }
}

__n128 sub_29A501578(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052E38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5015C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5015FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A501648(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A5016F4(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5016D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

int *sub_29A5016F4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A5017E4(a1, &v9, a3, v12);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A19CF3C(a4, v12);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v12[0].n128_u32[0] = v5;
  return sub_29A3F93B0(a4, v12);
}

void sub_29A5017E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v40 = 0;
    *v38 = 0u;
    *__p = 0u;
    if (v38 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v7 = *a2;
  v8 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v8 <= 0x4FF)
  {
    LODWORD(v38[0]) = 0;
    if (!sub_29A4E5308(a2 + 1, v38, 4uLL))
    {
      return;
    }

    v7 = *a2;
  }

  v10 = a2[1];
  v9 = a2[2];
  v30 = v7;
  v31 = v10;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[3];
  v33 = v11;
  if ((a3 & 0x2000000000000000) == 0 || v8 <= 0x4FF)
  {
    v34 = v7;
    v35 = v31;
    v36 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v33;
    }

    v37 = v11;
    v41 = 0;
    if (v8 > 0x6FF)
    {
      if (!sub_29A4E5308(&v35, &v41, 8uLL))
      {
        goto LABEL_28;
      }
    }

    else
    {
      LODWORD(v38[0]) = 0;
      if (!sub_29A4E5308(&v35, v38, 4uLL))
      {
        goto LABEL_28;
      }

      v41 = LODWORD(v38[0]);
    }

    v13 = (*(*v35 + 16))(v35);
    v14 = v13 - v37;
    v15 = v41;
    if ((v37 & 0x8000000000000000) != 0 || (v14 & 0x8000000000000000) != 0 || (v41 <= v14 ? (v16 = 4 * v41 > v14) : (v16 = 1), v16))
    {
      v38[0] = "usd/crateFile.cpp";
      v38[1] = "_ReadUncompressedArray";
      __p[0] = 2226;
      __p[1] = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = unsigned int]";
      LOBYTE(v40) = 0;
      v28 = (*(*v35 + 16))(v35);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v38, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v15, 4 * v15, v14, v28);
    }

    else
    {
      v42 = 0;
      v38[0] = &v42;
      sub_29A19CAF8(a4, v41, v38);
      sub_29A19CEF8(a4);
      sub_29A4E5308(&v35, *(a4 + 32), 4 * *a4);
    }

LABEL_28:
    if (v36)
    {
      sub_29A014BEC(v36);
    }

    goto LABEL_51;
  }

  v34 = 0;
  if (v8 > 0x6FF)
  {
    if (sub_29A4E5308(&v31, &v34, 8uLL))
    {
      v12 = v34;
LABEL_32:
      if (v12 <= 0xF)
      {
        v17 = (*(*v31 + 16))(v31);
        v18 = v34;
        v19 = v17 - v33;
        v20 = 4 * v34;
        if ((v33 & 0x8000000000000000) != 0 || (v19 & 0x8000000000000000) != 0 || (v34 <= v19 ? (v21 = v20 > v19) : (v21 = 1), v21))
        {
          v38[0] = "usd/crateFile.cpp";
          v38[1] = "_ReadPossiblyCompressedArray";
          __p[0] = 2414;
          __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = unsigned int]";
          LOBYTE(v40) = 0;
          v29 = (*(*v31 + 16))(v31);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v38, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld", v18, v20, v19, v29);
        }

        else
        {
          LODWORD(v41) = 0;
          v38[0] = &v41;
          sub_29A19CAF8(a4, v34, v38);
          sub_29A19CEF8(a4);
          sub_29A4E5308(&v31, *(a4 + 32), 4 * *a4);
        }

        goto LABEL_51;
      }

      v22 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v12))
      {
        v23 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetDecompressionWorkingSpaceSize(v12) != 0;
        if (!v22)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v23 = 0;
        if (!v22)
        {
LABEL_45:
          if (v23)
          {
            LODWORD(v41) = 0;
            v38[0] = &v41;
            sub_29A19CAF8(a4, v34, v38);
            sub_29A19CEF8(a4);
            v24 = *(a4 + 32);
            v25 = *a4;
            *v38 = 0u;
            *__p = 0u;
            sub_29A4F36D8(v38, &v30, v24, v25);
            v26 = __p[0];
            __p[0] = 0;
            if (v26)
            {
              operator delete[](v26);
            }

            v27 = v38[0];
            v38[0] = 0;
            if (v27)
            {
              operator delete[](v27);
            }
          }

          else
          {
            v38[0] = "usd/crateFile.cpp";
            v38[1] = "_ReadPossiblyCompressedArray";
            __p[0] = 2422;
            __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = unsigned int]";
            LOBYTE(v40) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v38, 3, "Failed to read %llu compressed values", v34);
          }

          goto LABEL_51;
        }
      }

      sub_29A014BEC(v22);
      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(v38[0]) = 0;
    if (sub_29A4E5308(&v31, v38, 4uLL))
    {
      v12 = LODWORD(v38[0]);
      v34 = LODWORD(v38[0]);
      goto LABEL_32;
    }
  }

LABEL_51:
  if (v32)
  {
    sub_29A014BEC(v32);
  }
}

void sub_29A501C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A4E8A34(va);
  if (a8)
  {
    sub_29A014BEC(a8);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A501D08(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052EB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A501D54(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A501D98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A501DE4(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A501F24(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v18[0] = a2;
    v18[1] = a3;
    if (*v4 == *v4)
    {
      return *v4 | 0x4005000000000000;
    }

    else
    {
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
      v14 = sub_29A5024E0(v12, v4, v4, &v17);
      v15 = v14;
      if (v16)
      {
        v14[3] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x5000000000000;
        sub_29A4E5264(v18, v4);
      }

      return v15[3];
    }
  }
}

unint64_t sub_29A501F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a2;
  v26[1] = a3;
  result = 0x8005000000000000;
  v25 = 0x8005000000000000;
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
      sub_29A4E01E0(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A5021C8(v9, a4, a4, &v25);
    if (v14)
    {
      v15 = *(a2 + 6536);
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v16 = *(v15 + 256);
        *&v27 = a2;
        *(&v27 + 1) = a3;
        v17 = *(a3 + 16);
        if (((v16 | (v16 << 16)) & 0xFFFF00u) > 0x6FF)
        {
          *__src = *a4;
          sub_29A4E5264(&v27, __src);
        }

        else
        {
          *__src = *a4;
          sub_29A4FBF2C(&v27, __src);
        }

        v18 = *a4;
        v19 = *(a4 + 32);
        if (*a4 > 0xFuLL)
        {
          *__src = v27;
          CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v18);
          v22 = operator new[](CompressedBufferSize);
          v24 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::CompressToBuffer(v19, v18, v22, v23);
          v29 = v24;
          sub_29A4E5264(__src, &v29);
          sub_29A4D0BB8(__src, v22, v24);
          operator delete[](v22);
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0xA005000000000000;
        }

        else
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0x8005000000000000;
          sub_29A502120(&v27, v19, v18);
        }

        v13[7] = v20;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v26, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        *__src = 1;
        sub_29A4FBF2C(v26, __src);
        *__src = *a4;
        sub_29A4FBF2C(v26, __src);
        sub_29A502120(v26, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

uint64_t sub_29A502120(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 8 * a3;
  if (8 * a3)
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

void *sub_29A5021C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  LOBYTE(v32) = 1;
  v31 = v9;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v31, *(a2 + 32), (8 * v9));
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

void sub_29A502484(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_29A5024E0(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * *a2);
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
      v4 = (v9 - 1) & v8;
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
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
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v8;
  v14 = *a4;
  i[2] = *a3;
  i[3] = v14;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v23 >= v9)
      {
        v23 %= v9;
      }
    }

    else
    {
      v23 &= v9 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

__n128 sub_29A50272C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052F38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A502778(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_29A5027A8(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A502840(v5, v11, v3, v4);
}

uint64_t sub_29A5027F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2052F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A502840(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A502908(a1, v7, a3, v9);
    sub_29A3F95E8(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  v9[0].n128_u64[0] = 0;
  if (a3 >> 62)
  {
    v9[0].n128_u64[0] = a3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 8, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3F9570(a4, v9);
}

void sub_29A502908(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    if (&v33 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(v33) = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &v33))
    {
      return;
    }

    v7 = a2[1];
    v30 = *a2;
    v31 = v7;
    v8 = *(a2 + 4);
    v32 = v8;
    v9 = *(&v30 + 1);
    v10 = *(&v7 + 1);
    v11 = v7;
    goto LABEL_10;
  }

  v12 = a2[1];
  v30 = *a2;
  v31 = v12;
  v32 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = *(&v30 + 1);
    v10 = *(&v31 + 1);
    v11 = v31;
    v8 = v32;
    v36 = 0;
    if (v6 > 0x6FF)
    {
      v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
      if (v13 == -1)
      {
        return;
      }

      v14 = v36;
      goto LABEL_17;
    }

LABEL_10:
    LODWORD(v33) = 0;
    v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v8, &v33, 4, v11 + v9);
    if (v13 == -1)
    {
      return;
    }

    v14 = v33;
    v36 = v33;
LABEL_17:
    v19 = v13 + v11;
    v20 = v10 - v19;
    if (v19 < 0 || (v20 & 0x8000000000000000) != 0 || v14 > v20 || 8 * v14 > v20)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadUncompressedArray";
      *&v34 = 2226;
      *(&v34 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = long long]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _88[0] = 0;
    *&v33 = _88;
    sub_29A20FDFC(a4, v14, &v33);
    sub_29A21013C(a4);
    v21 = *(a4 + 32);
    v22 = (8 * *a4);
    v23 = v19 + v9;
LABEL_22:
    pxrInternal__aapl__pxrReserved__::ArchPRead(v8, v21, v22, v23);
    return;
  }

  v36 = 0;
  if (v6 > 0x6FF)
  {
    v8 = v32;
    v15 = *(&v30 + 1);
    v24 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
    if (v24 == -1)
    {
      return;
    }

    v17 = v31 + v24;
    *&v31 = v31 + v24;
    v18 = v36;
  }

  else
  {
    LODWORD(v33) = 0;
    v8 = v32;
    v15 = *(&v30 + 1);
    v16 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v33, 4, v31 + *(&v30 + 1));
    if (v16 == -1)
    {
      return;
    }

    v17 = v31 + v16;
    *&v31 = v31 + v16;
    v18 = v33;
    v36 = v33;
  }

  if (v18 <= 0xF)
  {
    v25 = *(&v31 + 1) - v17;
    if (v17 < 0 || (v25 & 0x8000000000000000) != 0 || v18 > v25 || 8 * v18 > v25)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadPossiblyCompressedArray";
      *&v34 = 2414;
      *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = long long]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _88[0] = 0;
    *&v33 = _88;
    sub_29A20FDFC(a4, v18, &v33);
    sub_29A21013C(a4);
    v21 = *(a4 + 32);
    v22 = (8 * *a4);
    v23 = v17 + v15;
    goto LABEL_22;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v18) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(v18))
  {
    _88[0] = 0;
    *&v33 = _88;
    sub_29A20FDFC(a4, v36, &v33);
    sub_29A21013C(a4);
    v26 = *(a4 + 32);
    v27 = *a4;
    v33 = 0u;
    v34 = 0u;
    sub_29A502D50(&v33, &v30, v26, v27);
    v28 = v34;
    *&v34 = 0;
    if (v28)
    {
      operator delete[](v28);
    }

    v29 = v33;
    *&v33 = 0;
    if (v29)
    {
      operator delete[](v29);
    }
  }

  else
  {
    *&v33 = "usd/crateFile.cpp";
    *(&v33 + 1) = "_ReadPossiblyCompressedArray";
    *&v34 = 2422;
    *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = long long]";
    LOBYTE(v35) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu compressed values");
  }
}

void sub_29A502CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A4E8A34(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A502D00(uint64_t a1, __sFILE *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::ArchPRead(*(a1 + 32), a2, (8 * a3), *(a1 + 16) + *(a1 + 8));
  if (v4 != -1)
  {
    *(a1 + 16) += v4;
  }

  return v4 != -1;
}

BOOL sub_29A502D50(uint64_t a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *a4)
{
  sub_29A502E64(a1, a4);
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
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::DecompressFromBuffer(*a1, v18, a3, a4, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, Int = long long]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AB710();
    }

    return 0;
  }

  return result;
}

void sub_29A502E64(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this)
{
  CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(this);
  DecompressionWorkingSpaceSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(this);
  if (CompressedBufferSize > *(a1 + 8))
  {
    v6 = operator new[](CompressedBufferSize);
    v7 = *a1;
    *a1 = v6;
    if (v7)
    {
      operator delete[](v7);
    }

    *(a1 + 8) = CompressedBufferSize;
  }

  if (DecompressionWorkingSpaceSize > *(a1 + 24))
  {
    v8 = operator new[](DecompressionWorkingSpaceSize);
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    if (v9)
    {
      operator delete[](v9);
    }

    *(a1 + 24) = DecompressionWorkingSpaceSize;
  }
}

__n128 sub_29A502F08(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2052FB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A502F54(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2052FB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A502F8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A502FD8(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A503058(v5, v10, v3, v4);
}

uint64_t *sub_29A503058(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A503140(a1, v8, a3, &v10);
    sub_29A3F95E8(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  *&v8[0] = 0;
  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    *&v8[0] = a3;
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 8uLL);
  }

  return sub_29A3F9570(a4, v8);
}

void sub_29A503140(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v36 = 0;
    __dst = 0u;
    v35 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
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
    v28 = *a2;
    v29 = v7;
    v30 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v28 = *a2;
  v29 = v8;
  v30 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
LABEL_9:
    v31 = v28;
    v32 = v29;
    v33 = v30;
    if ((atomic_load_explicit(&qword_2A17421A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17421A8))
    {
      v27 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v27)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17421A0 = *v27;
      __cxa_guard_release(&qword_2A17421A8);
    }

    v37 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v31 + 8, &v37, 8uLL))
      {
        return;
      }

      v9 = v37;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v31 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v9 = __dst;
      v37 = __dst;
    }

    v11 = 8 * v9;
    v12 = *(&v31 + 1);
    if (byte_2A17421A0 == 1 && v11 >= 0x800 && (BYTE8(v31) & 7) == 0)
    {
      v13 = sub_29A4FCB64(&v31 + 8, *(&v31 + 1), 8 * v9, v9);
      if (v13)
      {
        *&v35 = 0;
        *(&v35 + 1) = v13;
        v36 = v12;
        __dst = v37;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2282;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = long long]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v11);
      sub_29A20FDAC(a4);
      return;
    }

    v14 = *(&v31 + 1) - *(*v32 + 24);
    v15 = *(*v32 + 32) - v14;
    if (v14 < 0 || (v15 & 0x8000000000000000) != 0 || (v9 <= v15 ? (v16 = v11 > v15) : (v16 = 1), v16))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2290;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = long long]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld");
      return;
    }

    v38 = 0;
    *&__dst = &v38;
    sub_29A20FDFC(a4, v9, &__dst);
    sub_29A21013C(a4);
    v17 = *(a4 + 32);
    v18 = 8 * *a4;
    v19 = &v31 + 8;
LABEL_42:
    sub_29A4E7A0C(v19, v17, v18);
    return;
  }

  v38 = 0;
  if (v6 > 0x6FF)
  {
    if (!sub_29A4E7A0C(&v28 + 8, &v38, 8uLL))
    {
      return;
    }

    v10 = v38;
  }

  else
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v28 + 8, &__dst, 4uLL))
    {
      return;
    }

    v10 = __dst;
    v38 = __dst;
  }

  if (v10 <= 0xF)
  {
    v20 = *(&v28 + 1) - *(*v29 + 24);
    v21 = *(*v29 + 32) - v20;
    if (v20 < 0 || (v21 & 0x8000000000000000) != 0 || (v10 <= v21 ? (v22 = 8 * v10 > v21) : (v22 = 1), v22))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v35 = 2414;
      *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = long long]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    *&v31 = 0;
    *&__dst = &v31;
    sub_29A20FDFC(a4, v10, &__dst);
    sub_29A21013C(a4);
    v17 = *(a4 + 32);
    v18 = 8 * *a4;
    v19 = &v28 + 8;
    goto LABEL_42;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v10) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(v10))
  {
    *&v31 = 0;
    *&__dst = &v31;
    sub_29A20FDFC(a4, v38, &__dst);
    sub_29A21013C(a4);
    v23 = *(a4 + 32);
    v24 = *a4;
    __dst = 0u;
    v35 = 0u;
    sub_29A503688(&__dst, &v28, v23, v24);
    v25 = v35;
    *&v35 = 0;
    if (v25)
    {
      operator delete[](v25);
    }

    v26 = __dst;
    *&__dst = 0;
    if (v26)
    {
      operator delete[](v26);
    }
  }

  else
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v35 = 2422;
    *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = long long]";
    LOBYTE(v36) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed values");
  }
}

uint64_t sub_29A503688(uint64_t a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this)
{
  sub_29A502E64(a1, this);
  __dst = 0;
  result = sub_29A4E7A0C(a2 + 8, &__dst, 8uLL);
  if (result)
  {
    v9 = *(**(a2 + 16) + 32);
    v10 = *(a2 + 8) - *(**(a2 + 16) + 24);
    v11 = v9 - v10;
    v12 = *(a1 + 8);
    v13 = __dst;
    if (v12 < __dst)
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

    __dst = v14;
    if (v12 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4E7A0C(a2 + 8, *a1, v14);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::DecompressFromBuffer(*a1, __dst, a3, this, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, Int = long long]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AB758();
    }

    return 0;
  }

  return result;
}

__n128 sub_29A5037B0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053038;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5037FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A503834(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A503880(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A50392C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A503908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t *sub_29A50392C(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A503A78(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A3F95E8(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
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
      return sub_29A3F9570(a4, v14);
    }

    goto LABEL_13;
  }

  v14[0].n128_u64[0] = a3;
  if (v5)
  {
LABEL_13:
    sub_29A014BEC(v5);
  }

  return sub_29A3F9570(a4, v14);
}

void sub_29A503A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A503A78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v39 = 0;
    *v37 = 0u;
    *__p = 0u;
    if (v37 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v7 = *a2;
  v8 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v8 <= 0x4FF)
  {
    LODWORD(v37[0]) = 0;
    if (!sub_29A4E5308(a2 + 1, v37, 4uLL))
    {
      return;
    }

    v7 = *a2;
  }

  v10 = a2[1];
  v9 = a2[2];
  v29 = v7;
  v30 = v10;
  v31 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[3];
  v32 = v11;
  if ((a3 & 0x2000000000000000) == 0 || v8 <= 0x4FF)
  {
    v33 = v7;
    v34 = v30;
    v35 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v32;
    }

    v36 = v11;
    v40 = 0;
    if (v8 > 0x6FF)
    {
      if (!sub_29A4E5308(&v34, &v40, 8uLL))
      {
        goto LABEL_28;
      }
    }

    else
    {
      LODWORD(v37[0]) = 0;
      if (!sub_29A4E5308(&v34, v37, 4uLL))
      {
        goto LABEL_28;
      }

      v40 = LODWORD(v37[0]);
    }

    v13 = (*(*v34 + 16))(v34);
    v14 = v13 - v36;
    v15 = v40;
    if (v36 < 0 || (v14 & 0x8000000000000000) != 0 || (v40 <= v14 ? (v16 = 8 * v40 > v14) : (v16 = 1), v16))
    {
      v37[0] = "usd/crateFile.cpp";
      v37[1] = "_ReadUncompressedArray";
      __p[0] = 2226;
      __p[1] = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = long long]";
      LOBYTE(v39) = 0;
      v27 = (*(*v34 + 16))(v34);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v15, 8 * v15, v14, v27);
    }

    else
    {
      v41 = 0;
      v37[0] = &v41;
      sub_29A20FDFC(a4, v40, v37);
      sub_29A21013C(a4);
      sub_29A4E5308(&v34, *(a4 + 32), 8 * *a4);
    }

LABEL_28:
    if (v35)
    {
      sub_29A014BEC(v35);
    }

    goto LABEL_51;
  }

  v41 = 0;
  if (v8 > 0x6FF)
  {
    if (sub_29A4E5308(&v30, &v41, 8uLL))
    {
      v12 = v41;
LABEL_32:
      if (v12 <= 0xF)
      {
        v17 = (*(*v30 + 16))(v30);
        v18 = v17 - v32;
        v19 = v41;
        if (v32 < 0 || (v18 & 0x8000000000000000) != 0 || (v41 <= v18 ? (v20 = 8 * v41 > v18) : (v20 = 1), v20))
        {
          v37[0] = "usd/crateFile.cpp";
          v37[1] = "_ReadPossiblyCompressedArray";
          __p[0] = 2414;
          __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = long long]";
          LOBYTE(v39) = 0;
          v28 = (*(*v30 + 16))(v30);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld", v19, 8 * v19, v18, v28);
        }

        else
        {
          v33 = 0;
          v37[0] = &v33;
          sub_29A20FDFC(a4, v41, v37);
          sub_29A21013C(a4);
          sub_29A4E5308(&v30, *(a4 + 32), 8 * *a4);
        }

        goto LABEL_51;
      }

      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v12))
      {
        v22 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(v12) != 0;
        if (!v21)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v22 = 0;
        if (!v21)
        {
LABEL_45:
          if (v22)
          {
            v33 = 0;
            v37[0] = &v33;
            sub_29A20FDFC(a4, v41, v37);
            sub_29A21013C(a4);
            v23 = *(a4 + 32);
            v24 = *a4;
            *v37 = 0u;
            *__p = 0u;
            sub_29A503F98(v37, &v29, v23, v24);
            v25 = __p[0];
            __p[0] = 0;
            if (v25)
            {
              operator delete[](v25);
            }

            v26 = v37[0];
            v37[0] = 0;
            if (v26)
            {
              operator delete[](v26);
            }
          }

          else
          {
            v37[0] = "usd/crateFile.cpp";
            v37[1] = "_ReadPossiblyCompressedArray";
            __p[0] = 2422;
            __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = long long]";
            LOBYTE(v39) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 3, "Failed to read %llu compressed values", v41);
          }

          goto LABEL_51;
        }
      }

      sub_29A014BEC(v21);
      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(v37[0]) = 0;
    if (sub_29A4E5308(&v30, v37, 4uLL))
    {
      v12 = LODWORD(v37[0]);
      v41 = LODWORD(v37[0]);
      goto LABEL_32;
    }
  }

LABEL_51:
  if (v31)
  {
    sub_29A014BEC(v31);
  }
}

void sub_29A503F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A4E8A34(va);
  if (a8)
  {
    sub_29A014BEC(a8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A503F98(uint64_t a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this)
{
  sub_29A502E64(a1, this);
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
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::DecompressFromBuffer(*a1, v14, a3, this, *(a1 + 16), v13);
          return 1;
        }

        return result;
      }

      sub_29B2AB7A0();
    }

    else
    {
      sub_29B2AB814();
    }

    return 0;
  }

  return result;
}

__n128 sub_29A5040A8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20530B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5040F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20530B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A504138(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A504184(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A5042C4(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v18[0] = a2;
    v18[1] = a3;
    if (HIDWORD(*v4))
    {
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
      v14 = sub_29A5024E0(v12, v4, v4, &v17);
      v15 = v14;
      if (v16)
      {
        v14[3] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x6000000000000;
        sub_29A4E5264(v18, v4);
      }

      return v15[3];
    }

    else
    {
      return *v4 | 0x4006000000000000;
    }
  }
}

unint64_t sub_29A5042C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a2;
  v26[1] = a3;
  result = 0x8006000000000000;
  v25 = 0x8006000000000000;
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
      sub_29A4E029C(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A5044C0(v9, a4, a4, &v25);
    if (v14)
    {
      v15 = *(a2 + 6536);
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v16 = *(v15 + 256);
        *&v27 = a2;
        *(&v27 + 1) = a3;
        v17 = *(a3 + 16);
        if (((v16 | (v16 << 16)) & 0xFFFF00u) > 0x6FF)
        {
          *__src = *a4;
          sub_29A4E5264(&v27, __src);
        }

        else
        {
          *__src = *a4;
          sub_29A4FBF2C(&v27, __src);
        }

        v18 = *a4;
        v19 = *(a4 + 32);
        if (*a4 > 0xFuLL)
        {
          *__src = v27;
          CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v18);
          v22 = operator new[](CompressedBufferSize);
          v24 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::CompressToBuffer(v19, v18, v22, v23);
          v29 = v24;
          sub_29A4E5264(__src, &v29);
          sub_29A4D0BB8(__src, v22, v24);
          operator delete[](v22);
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0xA006000000000000;
        }

        else
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL | 0x8006000000000000;
          sub_29A502120(&v27, v19, v18);
        }

        v13[7] = v20;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v26, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        *__src = 1;
        sub_29A4FBF2C(v26, __src);
        *__src = *a4;
        sub_29A4FBF2C(v26, __src);
        sub_29A502120(v26, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A5044C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  LOBYTE(v32) = 1;
  v31 = v9;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v31, *(a2 + 32), (8 * v9));
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

void sub_29A50477C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

__n128 sub_29A5047E0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053138;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50482C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_29A50485C(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A5048F4(v5, v11, v3, v4);
}

uint64_t sub_29A5048A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A5048F4(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A5049BC(a1, v7, a3, v9);
    sub_29A3F9824(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  v9[0].n128_u64[0] = 0;
  if (a3 >> 62)
  {
    v9[0].n128_u64[0] = a3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 8, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3F97AC(a4, v9);
}

void sub_29A5049BC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    if (&v33 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    LODWORD(v33) = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &v33))
    {
      return;
    }

    v7 = a2[1];
    v30 = *a2;
    v31 = v7;
    v8 = *(a2 + 4);
    v32 = v8;
    v9 = *(&v30 + 1);
    v10 = *(&v7 + 1);
    v11 = v7;
    goto LABEL_10;
  }

  v12 = a2[1];
  v30 = *a2;
  v31 = v12;
  v32 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = *(&v30 + 1);
    v10 = *(&v31 + 1);
    v11 = v31;
    v8 = v32;
    v36 = 0;
    if (v6 > 0x6FF)
    {
      v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
      if (v13 == -1)
      {
        return;
      }

      v14 = v36;
      goto LABEL_17;
    }

LABEL_10:
    LODWORD(v33) = 0;
    v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v8, &v33, 4, v11 + v9);
    if (v13 == -1)
    {
      return;
    }

    v14 = v33;
    v36 = v33;
LABEL_17:
    v19 = v13 + v11;
    v20 = v10 - v19;
    if (v19 < 0 || (v20 & 0x8000000000000000) != 0 || v14 > v20 || 8 * v14 > v20)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadUncompressedArray";
      *&v34 = 2226;
      *(&v34 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = unsigned long long]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _88[0] = 0;
    *&v33 = _88;
    sub_29A210E60(a4, v14, &v33);
    sub_29A2111A0(a4);
    v21 = *(a4 + 32);
    v22 = (8 * *a4);
    v23 = v19 + v9;
LABEL_22:
    pxrInternal__aapl__pxrReserved__::ArchPRead(v8, v21, v22, v23);
    return;
  }

  v36 = 0;
  if (v6 > 0x6FF)
  {
    v8 = v32;
    v15 = *(&v30 + 1);
    v24 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v36, 8, v31 + *(&v30 + 1));
    if (v24 == -1)
    {
      return;
    }

    v17 = v31 + v24;
    *&v31 = v31 + v24;
    v18 = v36;
  }

  else
  {
    LODWORD(v33) = 0;
    v8 = v32;
    v15 = *(&v30 + 1);
    v16 = pxrInternal__aapl__pxrReserved__::ArchPRead(v32, &v33, 4, v31 + *(&v30 + 1));
    if (v16 == -1)
    {
      return;
    }

    v17 = v31 + v16;
    *&v31 = v31 + v16;
    v18 = v33;
    v36 = v33;
  }

  if (v18 <= 0xF)
  {
    v25 = *(&v31 + 1) - v17;
    if (v17 < 0 || (v25 & 0x8000000000000000) != 0 || v18 > v25 || 8 * v18 > v25)
    {
      *&v33 = "usd/crateFile.cpp";
      *(&v33 + 1) = "_ReadPossiblyCompressedArray";
      *&v34 = 2414;
      *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = unsigned long long]";
      LOBYTE(v35) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    _88[0] = 0;
    *&v33 = _88;
    sub_29A210E60(a4, v18, &v33);
    sub_29A2111A0(a4);
    v21 = *(a4 + 32);
    v22 = (8 * *a4);
    v23 = v17 + v15;
    goto LABEL_22;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v18) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(v18))
  {
    _88[0] = 0;
    *&v33 = _88;
    sub_29A210E60(a4, v36, &v33);
    sub_29A2111A0(a4);
    v26 = *(a4 + 32);
    v27 = *a4;
    v33 = 0u;
    v34 = 0u;
    sub_29A504DB4(&v33, &v30, v26, v27);
    v28 = v34;
    *&v34 = 0;
    if (v28)
    {
      operator delete[](v28);
    }

    v29 = v33;
    *&v33 = 0;
    if (v29)
    {
      operator delete[](v29);
    }
  }

  else
  {
    *&v33 = "usd/crateFile.cpp";
    *(&v33 + 1) = "_ReadPossiblyCompressedArray";
    *&v34 = 2422;
    *(&v34 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = unsigned long long]";
    LOBYTE(v35) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 3, "Failed to read %llu compressed values");
  }
}

void sub_29A504D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A4E8A34(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A504DB4(uint64_t a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *a4)
{
  sub_29A502E64(a1, a4);
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
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::DecompressFromBuffer(*a1, v18, a3, a4, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, Int = unsigned long long]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AB85C();
    }

    return 0;
  }

  return result;
}

__n128 sub_29A504ED0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20531B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A504F1C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20531B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A504F54(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A504FA0(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A505020(v5, v10, v3, v4);
}

uint64_t *sub_29A505020(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A505108(a1, v8, a3, &v10);
    sub_29A3F9824(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  *&v8[0] = 0;
  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    *&v8[0] = a3;
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 8uLL);
  }

  return sub_29A3F97AC(a4, v8);
}

void sub_29A505108(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v36 = 0;
    __dst = 0u;
    v35 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
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
    v28 = *a2;
    v29 = v7;
    v30 = *(a2 + 4);
    goto LABEL_9;
  }

  v8 = a2[1];
  v28 = *a2;
  v29 = v8;
  v30 = *(a2 + 4);
  if ((a3 & 0x2000000000000000) == 0)
  {
LABEL_9:
    v31 = v28;
    v32 = v29;
    v33 = v30;
    if ((atomic_load_explicit(&qword_2A17421B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17421B8))
    {
      v27 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v27)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17421B0 = *v27;
      __cxa_guard_release(&qword_2A17421B8);
    }

    v37 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&v31 + 8, &v37, 8uLL))
      {
        return;
      }

      v9 = v37;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&v31 + 8, &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v9 = __dst;
      v37 = __dst;
    }

    v11 = 8 * v9;
    v12 = *(&v31 + 1);
    if (byte_2A17421B0 == 1 && v11 >= 0x800 && (BYTE8(v31) & 7) == 0)
    {
      v13 = sub_29A4FCB64(&v31 + 8, *(&v31 + 1), 8 * v9, v9);
      if (v13)
      {
        *&v35 = 0;
        *(&v35 + 1) = v13;
        v36 = v12;
        __dst = v37;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2282;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned long long]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v11);
      sub_29A210E10(a4);
      return;
    }

    v14 = *(&v31 + 1) - *(*v32 + 24);
    v15 = *(*v32 + 32) - v14;
    if (v14 < 0 || (v15 & 0x8000000000000000) != 0 || (v9 <= v15 ? (v16 = v11 > v15) : (v16 = 1), v16))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v35 = 2290;
      *(&v35 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned long long]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld");
      return;
    }

    v38 = 0;
    *&__dst = &v38;
    sub_29A210E60(a4, v9, &__dst);
    sub_29A2111A0(a4);
    v17 = *(a4 + 32);
    v18 = 8 * *a4;
    v19 = &v31 + 8;
LABEL_42:
    sub_29A4E7A0C(v19, v17, v18);
    return;
  }

  v38 = 0;
  if (v6 > 0x6FF)
  {
    if (!sub_29A4E7A0C(&v28 + 8, &v38, 8uLL))
    {
      return;
    }

    v10 = v38;
  }

  else
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v28 + 8, &__dst, 4uLL))
    {
      return;
    }

    v10 = __dst;
    v38 = __dst;
  }

  if (v10 <= 0xF)
  {
    v20 = *(&v28 + 1) - *(*v29 + 24);
    v21 = *(*v29 + 32) - v20;
    if (v20 < 0 || (v21 & 0x8000000000000000) != 0 || (v10 <= v21 ? (v22 = 8 * v10 > v21) : (v22 = 1), v22))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v35 = 2414;
      *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned long long]";
      LOBYTE(v36) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    *&v31 = 0;
    *&__dst = &v31;
    sub_29A210E60(a4, v10, &__dst);
    sub_29A2111A0(a4);
    v17 = *(a4 + 32);
    v18 = 8 * *a4;
    v19 = &v28 + 8;
    goto LABEL_42;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v10) && pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(v10))
  {
    *&v31 = 0;
    *&__dst = &v31;
    sub_29A210E60(a4, v38, &__dst);
    sub_29A2111A0(a4);
    v23 = *(a4 + 32);
    v24 = *a4;
    __dst = 0u;
    v35 = 0u;
    sub_29A505650(&__dst, &v28, v23, v24);
    v25 = v35;
    *&v35 = 0;
    if (v25)
    {
      operator delete[](v25);
    }

    v26 = __dst;
    *&__dst = 0;
    if (v26)
    {
      operator delete[](v26);
    }
  }

  else
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v35 = 2422;
    *(&v35 + 1) = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = unsigned long long]";
    LOBYTE(v36) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed values");
  }
}

uint64_t sub_29A505650(uint64_t a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this)
{
  sub_29A502E64(a1, this);
  __dst = 0;
  result = sub_29A4E7A0C(a2 + 8, &__dst, 8uLL);
  if (result)
  {
    v9 = *(**(a2 + 16) + 32);
    v10 = *(a2 + 8) - *(**(a2 + 16) + 24);
    v11 = v9 - v10;
    v12 = *(a1 + 8);
    v13 = __dst;
    if (v12 < __dst)
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

    __dst = v14;
    if (v12 && *(a1 + 24))
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        result = sub_29A4E7A0C(a2 + 8, *a1, v14);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::DecompressFromBuffer(*a1, __dst, a3, this, *(a1 + 16), v15);
          return 1;
        }

        return result;
      }

      v16[0] = "usd/crateFile.cpp";
      v16[1] = "Read";
      v16[2] = 2331;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_CompressedIntsReader::Read(Reader &, Int *, size_t) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, Int = unsigned long long]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 3, "Failed to read compressed ints of size %llu with remaining file size is %lld of %lld", v14, v11, v9);
    }

    else
    {
      sub_29B2AB8A4();
    }

    return 0;
  }

  return result;
}

__n128 sub_29A505778(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053238;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5057C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5057FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A505848(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A5058F4(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5058D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t *sub_29A5058F4(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A505A40(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A3F9824(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
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
      return sub_29A3F97AC(a4, v14);
    }

    goto LABEL_13;
  }

  v14[0].n128_u64[0] = a3;
  if (v5)
  {
LABEL_13:
    sub_29A014BEC(v5);
  }

  return sub_29A3F97AC(a4, v14);
}

void sub_29A5059FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A505A40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v39 = 0;
    *v37 = 0u;
    *__p = 0u;
    if (v37 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  a2[3] = a3 & 0xFFFFFFFFFFFFLL;
  v7 = *a2;
  v8 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v8 <= 0x4FF)
  {
    LODWORD(v37[0]) = 0;
    if (!sub_29A4E5308(a2 + 1, v37, 4uLL))
    {
      return;
    }

    v7 = *a2;
  }

  v10 = a2[1];
  v9 = a2[2];
  v29 = v7;
  v30 = v10;
  v31 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[3];
  v32 = v11;
  if ((a3 & 0x2000000000000000) == 0 || v8 <= 0x4FF)
  {
    v33 = v7;
    v34 = v30;
    v35 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v32;
    }

    v36 = v11;
    v40 = 0;
    if (v8 > 0x6FF)
    {
      if (!sub_29A4E5308(&v34, &v40, 8uLL))
      {
        goto LABEL_28;
      }
    }

    else
    {
      LODWORD(v37[0]) = 0;
      if (!sub_29A4E5308(&v34, v37, 4uLL))
      {
        goto LABEL_28;
      }

      v40 = LODWORD(v37[0]);
    }

    v13 = (*(*v34 + 16))(v34);
    v14 = v13 - v36;
    v15 = v40;
    if (v36 < 0 || (v14 & 0x8000000000000000) != 0 || (v40 <= v14 ? (v16 = 8 * v40 > v14) : (v16 = 1), v16))
    {
      v37[0] = "usd/crateFile.cpp";
      v37[1] = "_ReadUncompressedArray";
      __p[0] = 2226;
      __p[1] = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = unsigned long long]";
      LOBYTE(v39) = 0;
      v27 = (*(*v34 + 16))(v34);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v15, 8 * v15, v14, v27);
    }

    else
    {
      v41 = 0;
      v37[0] = &v41;
      sub_29A210E60(a4, v40, v37);
      sub_29A2111A0(a4);
      sub_29A4E5308(&v34, *(a4 + 32), 8 * *a4);
    }

LABEL_28:
    if (v35)
    {
      sub_29A014BEC(v35);
    }

    goto LABEL_51;
  }

  v41 = 0;
  if (v8 > 0x6FF)
  {
    if (sub_29A4E5308(&v30, &v41, 8uLL))
    {
      v12 = v41;
LABEL_32:
      if (v12 <= 0xF)
      {
        v17 = (*(*v30 + 16))(v30);
        v18 = v17 - v32;
        v19 = v41;
        if (v32 < 0 || (v18 & 0x8000000000000000) != 0 || (v41 <= v18 ? (v20 = 8 * v41 > v18) : (v20 = 1), v20))
        {
          v37[0] = "usd/crateFile.cpp";
          v37[1] = "_ReadPossiblyCompressedArray";
          __p[0] = 2414;
          __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = unsigned long long]";
          LOBYTE(v39) = 0;
          v28 = (*(*v30 + 16))(v30);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld", v19, 8 * v19, v18, v28);
        }

        else
        {
          v33 = 0;
          v37[0] = &v33;
          sub_29A210E60(a4, v41, v37);
          sub_29A2111A0(a4);
          sub_29A4E5308(&v30, *(a4 + 32), 8 * *a4);
        }

        goto LABEL_51;
      }

      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetCompressedBufferSize(v12))
      {
        v22 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::GetDecompressionWorkingSpaceSize(v12) != 0;
        if (!v21)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v22 = 0;
        if (!v21)
        {
LABEL_45:
          if (v22)
          {
            v33 = 0;
            v37[0] = &v33;
            sub_29A210E60(a4, v41, v37);
            sub_29A2111A0(a4);
            v23 = *(a4 + 32);
            v24 = *a4;
            *v37 = 0u;
            *__p = 0u;
            sub_29A505F60(v37, &v29, v23, v24);
            v25 = __p[0];
            __p[0] = 0;
            if (v25)
            {
              operator delete[](v25);
            }

            v26 = v37[0];
            v37[0] = 0;
            if (v26)
            {
              operator delete[](v26);
            }
          }

          else
          {
            v37[0] = "usd/crateFile.cpp";
            v37[1] = "_ReadPossiblyCompressedArray";
            __p[0] = 2422;
            __p[1] = "typename std::enable_if<std::is_same<T, int>::value || std::is_same<T, unsigned int>::value || std::is_same<T, int64_t>::value || std::is_same<T, uint64_t>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = unsigned long long]";
            LOBYTE(v39) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 3, "Failed to read %llu compressed values", v41);
          }

          goto LABEL_51;
        }
      }

      sub_29A014BEC(v21);
      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(v37[0]) = 0;
    if (sub_29A4E5308(&v30, v37, 4uLL))
    {
      v12 = LODWORD(v37[0]);
      v41 = LODWORD(v37[0]);
      goto LABEL_32;
    }
  }

LABEL_51:
  if (v31)
  {
    sub_29A014BEC(v31);
  }
}

void sub_29A505EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A4E8A34(va);
  if (a8)
  {
    sub_29A014BEC(a8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A505F60(uint64_t a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64 *this)
{
  sub_29A502E64(a1, this);
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
          pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression64::DecompressFromBuffer(*a1, v14, a3, this, *(a1 + 16), v13);
          return 1;
        }

        return result;
      }

      sub_29B2AB8EC();
    }

    else
    {
      sub_29B2AB960();
    }

    return 0;
  }

  return result;
}

__n128 sub_29A506070(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20532B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5060BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20532B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A506100(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A50614C(uint64_t a1, void *a2, unsigned __int16 *a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A506204(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return *v4 | 0x4007000000000000;
  }
}

unint64_t sub_29A506204(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4)
{
  v53[0] = a2;
  v53[1] = a3;
  result = 0x8007000000000000;
  v52 = 0x8007000000000000;
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
      sub_29A4E0358(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A506894(v9, a4, a4, &v52);
    if (v14)
    {
      v15 = a2[817];
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v16 = *(v15 + 256);
        *&v59 = a2;
        *(&v59 + 1) = a3;
        v17 = (v16 | (v16 << 16)) & 0xFFFF00;
        if (v17 >= 0x600 && *a4 > 0xFuLL)
        {
          v20 = *(a4 + 32);
          v21 = 2 * *a4;
          while (1)
          {
            v22 = *v20;
            v23 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v22];
            if (fabsf(v23) > 2147500000.0)
            {
              break;
            }

            v24 = COERCE_UNSIGNED_INT(v23);
            if (v23)
            {
              if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v24 >> 23])
              {
                v25 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v24 >> 23] + (((v24 & 0x7FFFFF) + ((v24 >> 13) & 1) + 4095) >> 13);
              }

              else
              {
                LOWORD(v25) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v24);
                v23 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v22];
              }
            }

            else
            {
              v25 = v24 >> 16;
            }

            if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v25] != v23)
            {
              break;
            }

            ++v20;
            v21 -= 2;
            if (!v21)
            {
              v26 = *(a3 + 2);
              if (v17 > 0x6FF)
              {
                __src = *a4;
                sub_29A4E5264(&v59, &__src);
              }

              else
              {
                LODWORD(__src) = *a4;
                sub_29A4FBF2C(&v59, &__src);
              }

              sub_29A011440(&__src, *a4);
              if (*a4)
              {
                v35 = *(a4 + 32);
                v36 = __src;
                v37 = 2 * *a4;
                do
                {
                  v38 = *v35++;
                  *v36++ = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v38];
                  v37 -= 2;
                }

                while (v37);
              }

              LOBYTE(__p[0]) = 105;
              sub_29A506C88(&v59, __p);
              v39 = __src;
              v40 = (v57 - __src) >> 2;
              *__p = v59;
              CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v40);
              v42 = operator new[](CompressedBufferSize);
              v44 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v39, v40, v42, v43);
              *&v60 = v44;
              sub_29A4E5264(__p, &v60);
              sub_29A4D0BB8(__p, v42, v44);
              v19 = v26 & 0xFFFFFFFFFFFFLL | 0xA007000000000000;
              operator delete[](v42);
              goto LABEL_59;
            }
          }

          __src = 0;
          v57 = 0;
          v58 = 0;
          v27 = *a4;
          if (*a4 >> 2 >= 0x400uLL)
          {
            v28 = 1024;
          }

          else
          {
            v28 = *a4 >> 2;
          }

          __p[0] = 0;
          __p[1] = 0;
          v55 = 0;
          if (v27)
          {
            v29 = *(a4 + 32);
            v30 = &v29[v27];
            do
            {
              v31 = *v29;
              LOWORD(v61) = *v29;
              if (__src == v57)
              {
                v33 = __src;
              }

              else
              {
                v32 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v31];
                v33 = __src;
                while (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v33] != v32)
                {
                  v33 += 2;
                  if (v33 == v57)
                  {
                    v33 = v57;
                    break;
                  }
                }
              }

              LODWORD(v60) = (v33 - __src) >> 1;
              sub_29A00D250(__p, &v60);
              if (v60 == (v57 - __src) >> 1)
              {
                if (v28 == v60)
                {
                  v57 = __src;
                  __p[1] = __p[0];
                  goto LABEL_51;
                }

                sub_29A506BAC(&__src, &v61);
              }

              ++v29;
            }

            while (v29 != v30);
            if (__src == v57)
            {
              goto LABEL_51;
            }

            v34 = *(*(&v59 + 1) + 16);
            if (v17 > 0x6FF)
            {
              *&v60 = *a4;
              sub_29A4E5264(&v59, &v60);
            }

            else
            {
              LODWORD(v60) = *a4;
              sub_29A4FBF2C(&v59, &v60);
            }

            LOBYTE(v60) = 116;
            sub_29A506C88(&v59, &v60);
            LODWORD(v60) = (v57 - __src) >> 1;
            sub_29A4FBF2C(&v59, &v60);
            sub_29A5067EC(&v59, __src, (v57 - __src) >> 1);
            v46 = __p[0];
            v47 = (__p[1] - __p[0]) >> 2;
            v60 = v59;
            v48 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v47);
            v49 = operator new[](v48);
            v51 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v46, v47, v49, v50);
            v61 = v51;
            sub_29A4E5264(&v60, &v61);
            sub_29A4D0BB8(&v60, v49, v51);
            v19 = v34 & 0xFFFFFFFFFFFFLL | 0xA007000000000000;
            operator delete[](v49);
          }

          else
          {
LABEL_51:
            v60 = v59;
            v45 = sub_29A4FBB98(&v60, 8);
            if (v17 > 0x6FF)
            {
              v61 = *a4;
              sub_29A4E5264(&v60, &v61);
            }

            else
            {
              LODWORD(v61) = *a4;
              sub_29A4FBF2C(&v60, &v61);
            }

            sub_29A5067EC(&v60, *(a4 + 32), *a4);
            v19 = v45 & 0xFFFFFFFFFFFFLL | 0x8007000000000000;
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

LABEL_59:
          if (__src)
          {
            v57 = __src;
            operator delete(__src);
          }
        }

        else
        {
          __src = a2;
          v57 = a3;
          v18 = sub_29A4FBB98(&__src, 8);
          if (v17 > 0x6FF)
          {
            __p[0] = *a4;
            sub_29A4E5264(&__src, __p);
          }

          else
          {
            LODWORD(__p[0]) = *a4;
            sub_29A4FBF2C(&__src, __p);
          }

          v19 = v18 & 0xFFFFFFFFFFFFLL | 0x8007000000000000;
          sub_29A5067EC(&__src, *(a4 + 32), *a4);
        }

        v13[7] = v19;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v53, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(__src) = 1;
        sub_29A4FBF2C(v53, &__src);
        LODWORD(__src) = *a4;
        sub_29A4FBF2C(v53, &__src);
        sub_29A5067EC(v53, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void sub_29A506780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

uint64_t sub_29A5067EC(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 2 * a3;
  if (2 * a3)
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

void *sub_29A506894(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  if (*a2)
  {
    v10 = a2[4];
    v11 = *a2;
    do
    {
      v12 = *v10++;
      v9 = v12 + ((v9 + v12 + (v9 + v12) * (v9 + v12)) >> 1);
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

void sub_29A506B50(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_29A506BAC(const void **a1, __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_29A00C9A4();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = sub_29A010BBC(a1, v13);
      v13 = v15;
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[2 * v9];
    v17 = &v14[2 * v13];
    v18 = *a2;
    v19 = &v16[-2 * (v8 >> 1)];
    *v16 = v18;
    v6 = v16 + 2;
    memcpy(v19, v7, v8);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v6;
    a1[2] = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_29A506C88(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 1;
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

__n128 sub_29A506D34(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053338;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A506D80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__int16 *sub_29A506DB0(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A506E48(v5, v11, v3, v4);
}

uint64_t sub_29A506DFC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__int16 *sub_29A506E48(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A506EE0(a1, v7, a3, v9);
    sub_29A18F584(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  v9[0].n128_u16[0] = a3;
  return sub_29A3F9B2C(a4, v9);
}

void sub_29A506EE0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    memset(&__p._lbfsize, 0, 40);
    if (&__p._lbfsize != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    __p._lbfsize = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &__p._lbfsize))
    {
      return;
    }

    v7 = a2[1];
    v42 = *a2;
    v43 = v7;
    v8 = *(a2 + 4);
    v44 = v8;
    v9 = *(&v42 + 1);
    v10 = *(&v7 + 1);
    v11 = v7;
    goto LABEL_14;
  }

  v12 = a2[1];
  v42 = *a2;
  v43 = v12;
  v44 = *(a2 + 4);
  if (v6 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
    v9 = *(&v42 + 1);
    v10 = *(&v43 + 1);
    v11 = v43;
    v8 = v44;
    __p._p = 0;
    if (v6 > 0x6FF)
    {
      v14 = pxrInternal__aapl__pxrReserved__::ArchPRead(v44, &__p, 8, v43 + *(&v42 + 1));
      if (v14 == -1)
      {
        return;
      }

      p = __p._p;
      goto LABEL_21;
    }

LABEL_14:
    __p._lbfsize = 0;
    v14 = pxrInternal__aapl__pxrReserved__::ArchPRead(v8, &__p._lbfsize, 4, v11 + v9);
    if (v14 == -1)
    {
      return;
    }

    p = __p._lbfsize;
    __p._p = __p._lbfsize;
LABEL_21:
    v19 = v14 + v11;
    v20 = v10 - v19;
    if (v19 < 0 || (v20 & 0x8000000000000000) != 0 || p > v20 || 2 * p > v20)
    {
      *&__p._lbfsize = "usd/crateFile.cpp";
      __p._cookie = "_ReadUncompressedArray";
      __p._close = 2226;
      __p._read = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(__p._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LOWORD(v45) = 0;
    *&__p._lbfsize = &v45;
    sub_29A18EFA8(a4, p, &__p._lbfsize);
    sub_29A18F540(a4);
    v21 = *(a4 + 32);
    v22 = (2 * *a4);
    v23 = v19 + v9;
    v24 = v8;
LABEL_26:
    pxrInternal__aapl__pxrReserved__::ArchPRead(v24, v21, v22, v23);
    return;
  }

  *&__p._bf._size = 0;
  if (v6 > 0x6FF)
  {
    v25 = pxrInternal__aapl__pxrReserved__::ArchPRead(v44, &__p._bf._size, 8, v43 + *(&v42 + 1));
    if (v25 == -1)
    {
      return;
    }

    v17 = v43 + v25;
    *&v43 = v43 + v25;
    lbfsize = *&__p._bf._size;
  }

  else
  {
    __p._lbfsize = 0;
    v16 = pxrInternal__aapl__pxrReserved__::ArchPRead(v44, &__p._lbfsize, 4, v43 + *(&v42 + 1));
    if (v16 == -1)
    {
      return;
    }

    v17 = v43 + v16;
    *&v43 = v43 + v16;
    lbfsize = __p._lbfsize;
    *&__p._bf._size = __p._lbfsize;
  }

  if (lbfsize <= 0xF)
  {
    v26 = *(&v43 + 1) - v17;
    if (v17 < 0 || (v26 & 0x8000000000000000) != 0 || lbfsize > v26 || 2 * lbfsize > v26)
    {
      *&__p._lbfsize = "usd/crateFile.cpp";
      __p._cookie = "_ReadPossiblyCompressedArray";
      __p._close = 2460;
      __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(__p._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LOWORD(__p._p) = 0;
    *&__p._lbfsize = &__p;
    sub_29A18EFA8(a4, lbfsize, &__p._lbfsize);
    sub_29A18F540(a4);
    v21 = *(a4 + 32);
    v22 = (2 * *&__p._bf._size);
    v24 = v44;
    v23 = v43 + *(&v42 + 1);
    goto LABEL_26;
  }

  HIBYTE(__p._bf._base) = 0;
  v27 = pxrInternal__aapl__pxrReserved__::ArchPRead(v44, (&__p._bf._base + 7), 1, v17 + *(&v42 + 1));
  if (v27 != -1)
  {
    v28 = v43 + v27;
    *&v43 = v43 + v27;
    if (HIBYTE(__p._bf._base) != 116)
    {
      if (HIBYTE(__p._bf._base) != 105)
      {
        *&__p._lbfsize = "usd/crateFile.cpp";
        __p._cookie = "_ReadPossiblyCompressedArray";
        __p._close = 2524;
        __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        LOBYTE(__p._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Corrupt data stream detected reading compressed array in <%s>");
        return;
      }

      if ((sub_29A4FF180(*&__p._bf._size) & 1) == 0)
      {
        *&__p._lbfsize = "usd/crateFile.cpp";
        __p._cookie = "_ReadPossiblyCompressedArray";
        __p._close = 2480;
        __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        LOBYTE(__p._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu compressed ints");
        return;
      }

      sub_29A011440(&__p._lbfsize, *&__p._bf._size);
      LOWORD(v45) = 0;
      __p._p = &v45;
      sub_29A18EFA8(a4, *&__p._bf._size, &__p);
      sub_29A18F540(a4);
      v29 = *(a4 + 32);
      sub_29A4FF1B8(&v42, *&__p._lbfsize, ((__p._cookie - *&__p._lbfsize) >> 2));
      sub_29A5075C0(&__p, *&__p._lbfsize, __p._cookie, v29);
      v30 = *&__p._lbfsize;
      if (*&__p._lbfsize)
      {
        __p._cookie = *&__p._lbfsize;
LABEL_63:
        operator delete(v30);
        return;
      }

      return;
    }

    LODWORD(__p._bf._base) = 0;
    v31 = pxrInternal__aapl__pxrReserved__::ArchPRead(v44, &__p._bf, 4, v28 + *(&v42 + 1));
    if (v31 == -1)
    {
      return;
    }

    *&v43 = v43 + v31;
    v32 = *(&v43 + 1) - v43;
    if ((v43 & 0x8000000000000000) != 0 || (v32 & 0x8000000000000000) != 0 || (v32 >= LODWORD(__p._bf._base) ? (v33 = 2 * LODWORD(__p._bf._base) > v32) : (v33 = 1), v33))
    {
      *&__p._lbfsize = "usd/crateFile.cpp";
      __p._cookie = "_ReadPossiblyCompressedArray";
      __p._close = 2498;
      __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(__p._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    sub_29A50765C(&__p, LODWORD(__p._bf._base));
    v34 = pxrInternal__aapl__pxrReserved__::ArchPRead(v44, __p._p, (*&__p._r - __p._p), v43 + *(&v42 + 1));
    if (v34 != -1)
    {
      *&v43 = v43 + v34;
    }

    if (sub_29A4FF180(*&__p._bf._size))
    {
      sub_29A01112C(&v45, *&__p._bf._size);
      sub_29A4EF8E4(&v42, v45, (v46 - v45));
      HIWORD(__p._write) = 0;
      *&__p._lbfsize = &__p._write + 6;
      sub_29A18EFA8(a4, *&__p._bf._size, &__p._lbfsize);
      sub_29A18F540(a4);
      v35 = v45;
      v36 = v46;
      if (v45 == v46)
      {
LABEL_56:
        if (!v35)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v37 = *(a4 + 32);
        base = __p._bf._base;
        v39 = v45;
        v40 = __p._p;
        while (1)
        {
          v41 = *v39;
          if (v41 >= base)
          {
            break;
          }

          *v37++ = *&v40[2 * v41];
          if (++v39 == v36)
          {
            goto LABEL_56;
          }
        }

        *&__p._lbfsize = "usd/crateFile.cpp";
        __p._cookie = "_ReadPossiblyCompressedArray";
        __p._close = 2516;
        __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        LOBYTE(__p._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to index lut with index %u, out of bounds access", v41);
        v35 = v45;
        if (!v45)
        {
LABEL_61:
          v30 = __p._p;
          if (__p._p)
          {
            *&__p._r = __p._p;
            goto LABEL_63;
          }

          return;
        }
      }

      v46 = v35;
      operator delete(v35);
      goto LABEL_61;
    }

    *&__p._lbfsize = "usd/crateFile.cpp";
    __p._cookie = "_ReadPossiblyCompressedArray";
    __p._close = 2506;
    __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    LOBYTE(__p._seek) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu compressed uints", *&__p._bf._size);
    goto LABEL_61;
  }
}

void sub_29A50754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
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

int *sub_29A5075C0(uint64_t a1, int *a2, int *a3, _WORD *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = COERCE_UNSIGNED_INT(*v5);
      if (*v5)
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

      *a4++ = v8;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_29A50765C(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A010B84(a1, a2);
    v4 = a1[1];
    bzero(v4, 2 * a2);
    a1[1] = &v4[2 * a2];
  }

  return a1;
}

void sub_29A5076B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A5076DC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20533B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A507728(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20533B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A507760(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__int16 *sub_29A5077AC(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A50782C(v5, v10, v3, v4);
}

__int16 *sub_29A50782C(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A5078C4(a1, v7, a3, v9);
    sub_29A18F584(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  v9[0].n128_u16[0] = a3;
  return sub_29A3F9B2C(a4, v9);
}

void sub_29A5078C4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v50 = 0;
    __dst = 0u;
    v49 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
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
    v37 = *a2;
    v38 = v7;
    v39 = *(a2 + 4);
    goto LABEL_13;
  }

  v8 = a2[1];
  v37 = *a2;
  v38 = v8;
  v39 = *(a2 + 4);
  if (v6 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
LABEL_13:
    *__p = v37;
    v46 = v38;
    v47 = v39;
    if ((atomic_load_explicit(&qword_2A17421C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17421C8))
    {
      v36 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v36)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A17421C0 = *v36;
      __cxa_guard_release(&qword_2A17421C8);
    }

    v40 = 0;
    if (v6 > 0x6FF)
    {
      if (!sub_29A4E7A0C(&__p[1], &v40, 8uLL))
      {
        return;
      }

      v10 = v40;
    }

    else
    {
      LODWORD(__dst) = 0;
      if ((sub_29A4E7A0C(&__p[1], &__dst, 4uLL) & 1) == 0)
      {
        return;
      }

      v10 = __dst;
      v40 = __dst;
    }

    v12 = 2 * v10;
    v13 = __p[1];
    if (byte_2A17421C0 == 1 && v12 >= 0x800 && (__p[1] & 1) == 0)
    {
      v14 = sub_29A4FCB64(&__p[1], __p[1], 2 * v10, v10);
      if (v14)
      {
        *&v49 = 0;
        *(&v49 + 1) = v14;
        v50 = v13;
        __dst = v40;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v49 = 2282;
      *(&v49 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v50) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v12);
      sub_29A18EF58(a4);
      return;
    }

    v15 = __p[1] - *(*v46 + 24);
    v16 = *(*v46 + 32) - v15;
    if ((v15 & 0x8000000000000000) != 0 || (v16 & 0x8000000000000000) != 0 || (v10 <= v16 ? (v17 = v12 > v16) : (v17 = 1), v17))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v49 = 2290;
      *(&v49 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v50) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld");
      return;
    }

    LOWORD(v44) = 0;
    *&__dst = &v44;
    sub_29A18EFA8(a4, v10, &__dst);
    sub_29A18F540(a4);
    v18 = *(a4 + 32);
    v19 = 2 * *a4;
    v20 = &__p[1];
LABEL_46:
    sub_29A4E7A0C(v20, v18, v19);
    return;
  }

  v44 = 0;
  if (v6 > 0x6FF)
  {
    if (!sub_29A4E7A0C(&v37 + 8, &v44, 8uLL))
    {
      return;
    }

    v11 = v44;
  }

  else
  {
    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v37 + 8, &__dst, 4uLL))
    {
      return;
    }

    v11 = __dst;
    v44 = __dst;
  }

  if (v11 <= 0xF)
  {
    v21 = *(&v37 + 1) - *(*v38 + 24);
    v22 = *(*v38 + 32) - v21;
    if (v21 < 0 || (v22 & 0x8000000000000000) != 0 || (v11 <= v22 ? (v23 = 2 * v11 > v22) : (v23 = 1), v23))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v49 = 2460;
      *(&v49 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v50) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LOWORD(__p[0]) = 0;
    *&__dst = __p;
    sub_29A18EFA8(a4, v11, &__dst);
    sub_29A18F540(a4);
    v18 = *(a4 + 32);
    v19 = 2 * v44;
    v20 = &v37 + 1;
    goto LABEL_46;
  }

  v43 = 0;
  if (!sub_29A4E7A0C(&v37 + 8, &v43, 1uLL))
  {
    return;
  }

  if (v43 == 116)
  {
    v42 = 0;
    if (!sub_29A4E7A0C(&v37 + 8, &v42, 4uLL))
    {
      return;
    }

    v26 = *(&v37 + 1) - *(*v38 + 24);
    v27 = *(*v38 + 32) - v26;
    if (v26 < 0 || (v27 & 0x8000000000000000) != 0 || (v27 >= v42 ? (v28 = 2 * v42 > v27) : (v28 = 1), v28))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v49 = 2498;
      *(&v49 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v50) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    sub_29A50765C(__p, v42);
    sub_29A4E7A0C(&v37 + 8, __p[0], __p[1] - __p[0]);
    if ((sub_29A4FF180(v44) & 1) == 0)
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v49 = 2506;
      *(&v49 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v50) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed uints", v44);
      goto LABEL_71;
    }

    sub_29A01112C(&v40, v44);
    sub_29A4E842C(&v37, v40, ((v41 - v40) >> 2));
    v51 = 0;
    *&__dst = &v51;
    sub_29A18EFA8(a4, v44, &__dst);
    sub_29A18F540(a4);
    v29 = v40;
    v30 = v41;
    if (v40 == v41)
    {
LABEL_66:
      if (!v29)
      {
LABEL_71:
        v25 = __p[0];
        if (!__p[0])
        {
          return;
        }

        __p[1] = __p[0];
        goto LABEL_73;
      }
    }

    else
    {
      v31 = *(a4 + 32);
      v32 = v42;
      v33 = v40;
      v34 = __p[0];
      while (1)
      {
        v35 = *v33;
        if (v35 >= v32)
        {
          break;
        }

        *v31++ = v34[v35];
        if (++v33 == v30)
        {
          goto LABEL_66;
        }
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadPossiblyCompressedArray";
      *&v49 = 2516;
      *(&v49 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v50) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to index lut with index %u, out of bounds access", v35);
      v29 = v40;
      if (!v40)
      {
        goto LABEL_71;
      }
    }

    v41 = v29;
    operator delete(v29);
    goto LABEL_71;
  }

  if (v43 != 105)
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v49 = 2524;
    *(&v49 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    LOBYTE(v50) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Corrupt data stream detected reading compressed array in <%s>");
    return;
  }

  if ((sub_29A4FF180(v44) & 1) == 0)
  {
    *&__dst = "usd/crateFile.cpp";
    *(&__dst + 1) = "_ReadPossiblyCompressedArray";
    *&v49 = 2480;
    *(&v49 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    LOBYTE(v50) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu compressed ints");
    return;
  }

  sub_29A011440(&__dst, v44);
  LOWORD(v40) = 0;
  __p[0] = &v40;
  sub_29A18EFA8(a4, v44, __p);
  sub_29A18F540(a4);
  v24 = *(a4 + 32);
  sub_29A4FF964(&v37, __dst, ((*(&__dst + 1) - __dst) >> 2));
  sub_29A5075C0(__p, __dst, *(&__dst + 1), v24);
  v25 = __dst;
  if (__dst)
  {
    *(&__dst + 1) = __dst;
LABEL_73:
    operator delete(v25);
  }
}

__n128 sub_29A5080C0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053438;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A50810C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A508144(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A508190(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A50823C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A508218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

__int16 *sub_29A50823C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A50832C(a1, &v9, a3, v12);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A18F584(a4, v12);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v12[0].n128_u16[0] = v5;
  return sub_29A3F9B2C(a4, v12);
}

void sub_29A50832C(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    if (&v58 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  a2[3] = (a3 & 0xFFFFFFFFFFFFLL);
  v7 = *a2;
  v8 = ((*a2)[6576] << 16) | ((*a2)[6577] << 8);
  if (v8 <= 0x4FF)
  {
    LODWORD(v58) = 0;
    if (!sub_29A4E5308(a2 + 1, &v58, 4uLL))
    {
      return;
    }

    v7 = *a2;
  }

  v10 = a2[1];
  v9 = a2[2];
  v45 = v7;
  v46 = v10;
  v47 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[3];
  v48 = v11;
  if (v8 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
    __p = v7;
    v55 = v46;
    v56 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v48;
    }

    v57 = v11;
    v49 = 0;
    if (v8 > 0x6FF)
    {
      if (!sub_29A4E5308(&v55, &v49, 8uLL))
      {
        goto LABEL_31;
      }
    }

    else
    {
      LODWORD(v58) = 0;
      if (!sub_29A4E5308(&v55, &v58, 4uLL))
      {
        goto LABEL_31;
      }

      v49 = v58;
    }

    v14 = (*(*v55 + 16))(v55);
    v15 = v14 - v57;
    v16 = v49;
    v17 = 2 * v49;
    if ((v57 & 0x8000000000000000) != 0 || (v15 & 0x8000000000000000) != 0 || (v49 <= v15 ? (v18 = v17 > v15) : (v18 = 1), v18))
    {
      *&v58 = "usd/crateFile.cpp";
      *(&v58 + 1) = "_ReadUncompressedArray";
      *&v59 = 2226;
      *(&v59 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v60) = 0;
      v41 = (*(*v55 + 16))(v55);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v58, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v16, v17, v15, v41);
    }

    else
    {
      LOWORD(v53) = 0;
      *&v58 = &v53;
      sub_29A18EFA8(a4, v49, &v58);
      sub_29A18F540(a4);
      sub_29A4E5308(&v55, *(a4 + 32), 2 * *a4);
    }

LABEL_31:
    if (v56)
    {
      sub_29A014BEC(v56);
    }

    goto LABEL_77;
  }

  v53 = 0;
  if (v8 > 0x6FF)
  {
    if (!sub_29A4E5308(&v46, &v53, 8uLL))
    {
      goto LABEL_77;
    }

    v13 = v53;
  }

  else
  {
    LODWORD(v58) = 0;
    if (!sub_29A4E5308(&v46, &v58, 4uLL))
    {
      goto LABEL_77;
    }

    v13 = v58;
    v53 = v58;
  }

  if (v13 <= 0xF)
  {
    v19 = (*(*v46 + 16))(v46);
    v20 = v19 - v48;
    v21 = v53;
    v22 = 2 * v53;
    if ((v48 & 0x8000000000000000) != 0 || (v20 & 0x8000000000000000) != 0 || (v53 <= v20 ? (v23 = v22 > v20) : (v23 = 1), v23))
    {
      *&v58 = "usd/crateFile.cpp";
      *(&v58 + 1) = "_ReadPossiblyCompressedArray";
      *&v59 = 2460;
      *(&v59 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      LOBYTE(v60) = 0;
      v42 = (*(*v46 + 16))(v46);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v58, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld", v21, v22, v20, v42);
    }

    else
    {
      LOWORD(__p) = 0;
      *&v58 = &__p;
      sub_29A18EFA8(a4, v53, &v58);
      sub_29A18F540(a4);
      sub_29A4E5308(&v46, *(a4 + 32), 2 * v53);
    }

    goto LABEL_77;
  }

  v52 = 0;
  if (sub_29A4E5308(&v46, &v52, 1uLL))
  {
    if (v52 != 116)
    {
      if (v52 != 105)
      {
        *&v58 = "usd/crateFile.cpp";
        *(&v58 + 1) = "_ReadPossiblyCompressedArray";
        *&v59 = 2524;
        *(&v59 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        LOBYTE(v60) = 0;
        v40 = v45 + 6720;
        if (v45[6743] < 0)
        {
          v40 = *v40;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v58, 3, "Corrupt data stream detected reading compressed array in <%s>", v40);
        goto LABEL_77;
      }

      v24 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = sub_29A4FF180(v53);
      if (v24)
      {
        sub_29A014BEC(v24);
      }

      if ((v25 & 1) == 0)
      {
        *&v58 = "usd/crateFile.cpp";
        *(&v58 + 1) = "_ReadPossiblyCompressedArray";
        *&v59 = 2480;
        *(&v59 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        LOBYTE(v60) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v58, 3, "Failed to read %llu compressed ints", v53);
        goto LABEL_77;
      }

      sub_29A011440(&v58, v53);
      LOWORD(v49) = 0;
      __p = &v49;
      sub_29A18EFA8(a4, v53, &__p);
      sub_29A18F540(a4);
      v26 = *(a4 + 32);
      sub_29A500168(&v45, v58, ((*(&v58 + 1) - v58) >> 2));
      sub_29A5075C0(&__p, v58, *(&v58 + 1), v26);
      v27 = v58;
      if (!v58)
      {
        goto LABEL_77;
      }

      *(&v58 + 1) = v58;
LABEL_76:
      operator delete(v27);
      goto LABEL_77;
    }

    v51 = 0;
    if (!sub_29A4E5308(&v46, &v51, 4uLL))
    {
      goto LABEL_77;
    }

    v28 = (*(*v46 + 16))(v46);
    v29 = v28 - v48;
    v30 = v51;
    if ((v48 & 0x8000000000000000) == 0 && (v29 & 0x8000000000000000) == 0 && v29 >= v51 && 2 * v51 <= v29)
    {
      sub_29A50765C(&__p, v51);
      sub_29A4E5308(&v46, __p, v55 - __p);
      v31 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = sub_29A4FF180(v53);
      if (v31)
      {
        sub_29A014BEC(v31);
      }

      if ((v32 & 1) == 0)
      {
        *&v58 = "usd/crateFile.cpp";
        *(&v58 + 1) = "_ReadPossiblyCompressedArray";
        *&v59 = 2506;
        *(&v59 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        LOBYTE(v60) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v58, 3, "Failed to read %llu compressed uints", v53);
        goto LABEL_74;
      }

      sub_29A01112C(&v49, v53);
      sub_29A4F3550(&v45, v49, ((v50 - v49) >> 2));
      v61 = 0;
      *&v58 = &v61;
      sub_29A18EFA8(a4, v53, &v58);
      sub_29A18F540(a4);
      v33 = v49;
      v34 = v50;
      if (v49 == v50)
      {
LABEL_67:
        if (!v33)
        {
LABEL_74:
          v27 = __p;
          if (!__p)
          {
            goto LABEL_77;
          }

          v55 = __p;
          goto LABEL_76;
        }
      }

      else
      {
        v35 = *(a4 + 32);
        v36 = v51;
        v37 = v49;
        v38 = __p;
        while (1)
        {
          v39 = *v37;
          if (v39 >= v36)
          {
            break;
          }

          *v35++ = v38[v39];
          if (++v37 == v34)
          {
            goto LABEL_67;
          }
        }

        *&v58 = "usd/crateFile.cpp";
        *(&v58 + 1) = "_ReadPossiblyCompressedArray";
        *&v59 = 2516;
        *(&v59 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        LOBYTE(v60) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v58, 3, "Failed to index lut with index %u, out of bounds access", v39);
        v33 = v49;
        if (!v49)
        {
          goto LABEL_74;
        }
      }

      v50 = v33;
      operator delete(v33);
      goto LABEL_74;
    }

    v43 = 2 * v51;
    *&v58 = "usd/crateFile.cpp";
    *(&v58 + 1) = "_ReadPossiblyCompressedArray";
    *&v59 = 2498;
    *(&v59 + 1) = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    LOBYTE(v60) = 0;
    v44 = (*(*v46 + 16))(v46);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v58, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld", v30, v43, v29, v44);
  }

LABEL_77:
  if (v47)
  {
    sub_29A014BEC(v47);
  }
}

void sub_29A508ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
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

__n128 sub_29A508B84(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20534B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A508BD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20534B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A508C14(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A508C60(uint64_t a1, void *a2, float *a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A508D18(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return *v4 | 0x4008000000000000;
  }
}

unint64_t sub_29A508D18(uint64_t a1, void *a2, float *a3, uint64_t a4)
{
  v50[0] = a2;
  v50[1] = a3;
  result = 0x8008000000000000;
  v49 = 0x8008000000000000;
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
      sub_29A4E0414(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A509268(v9, a4, a4, &v49);
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
          v23 = 4 * v18;
          v24 = v21;
          while (fabsf(*v24) <= 2147500000.0 && *v24 == *v24)
          {
            ++v24;
            v23 -= 4;
            if (!v23)
            {
              v26 = *(a3 + 2);
              if (v17 > 0x6FF)
              {
                __src = *a4;
                sub_29A4E5264(&v56, &__src);
              }

              else
              {
                LODWORD(__src) = *a4;
                sub_29A4FBF2C(&v56, &__src);
              }

              sub_29A011440(&__src, *a4);
              if (*a4)
              {
                v32 = *(a4 + 32);
                v33 = __src;
                v34 = 4 * *a4;
                do
                {
                  v35 = *v32++;
                  *v33++ = v35;
                  v34 -= 4;
                }

                while (v34);
              }

              LOBYTE(__p[0]) = 105;
              sub_29A506C88(&v56, __p);
              v36 = __src;
              v37 = (v54 - __src) >> 2;
              *__p = v56;
              CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v37);
              v39 = operator new[](CompressedBufferSize);
              v41 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v36, v37, v39, v40);
              *&v57 = v41;
              sub_29A4E5264(__p, &v57);
              sub_29A4D0BB8(__p, v39, v41);
              v20 = v26 & 0xFFFFFFFFFFFFLL | 0xA008000000000000;
              operator delete[](v39);
              goto LABEL_54;
            }
          }

          __src = 0;
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
            v30 = __src;
            if (__src != v54)
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

            LODWORD(v58) = (v30 - __src) >> 2;
            sub_29A00D250(__p, &v58);
            if (v58 == (v54 - __src) >> 2)
            {
              if (v28 == v58)
              {
                v54 = __src;
                __p[1] = __p[0];
                goto LABEL_46;
              }

              sub_29A0C2184(&__src, &v57);
            }

            ++v21;
          }

          while (v21 != v22);
          if (__src != v54)
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
            LODWORD(v57) = (v54 - __src) >> 2;
            sub_29A4FBF2C(&v56, &v57);
            sub_29A4F6CF0(&v56, __src, (v54 - __src) >> 2);
            v43 = __p[0];
            v44 = (__p[1] - __p[0]) >> 2;
            v57 = v56;
            v45 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(v44);
            v46 = operator new[](v45);
            v48 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(v43, v44, v46, v47);
            v58 = v48;
            sub_29A4E5264(&v57, &v58);
            sub_29A4D0BB8(&v57, v46, v48);
            v20 = v31 & 0xFFFFFFFFFFFFLL | 0xA008000000000000;
            operator delete[](v46);
            goto LABEL_52;
          }

LABEL_46:
          v57 = v56;
          v42 = sub_29A4FBB98(&v57, 8);
          if (v17 > 0x6FF)
          {
            v58 = *a4;
            sub_29A4E5264(&v57, &v58);
          }

          else
          {
            LODWORD(v58) = *a4;
            sub_29A4FBF2C(&v57, &v58);
          }

          sub_29A4F6CF0(&v57, *(a4 + 32), *a4);
          v20 = v42 & 0xFFFFFFFFFFFFLL | 0x8008000000000000;
LABEL_52:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

LABEL_54:
          if (__src)
          {
            v54 = __src;
            operator delete(__src);
          }
        }

        else
        {
          __src = a2;
          v54 = a3;
          v19 = sub_29A4FBB98(&__src, 8);
          if (v17 > 0x6FF)
          {
            __p[0] = *a4;
            sub_29A4E5264(&__src, __p);
          }

          else
          {
            LODWORD(__p[0]) = *a4;
            sub_29A4FBF2C(&__src, __p);
          }

          v20 = v19 & 0xFFFFFFFFFFFFLL | 0x8008000000000000;
          sub_29A4F6CF0(&__src, *(a4 + 32), *a4);
        }

        v13[7] = v20;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v50, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(__src) = 1;
        sub_29A4FBF2C(v50, &__src);
        LODWORD(__src) = *a4;
        sub_29A4FBF2C(v50, &__src);
        sub_29A4F6CF0(v50, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void sub_29A5091FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void *sub_29A509268(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
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

      v9 = LODWORD(v13) + ((v9 + LODWORD(v13) + (v9 + LODWORD(v13)) * (v9 + LODWORD(v13))) >> 1);
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

void sub_29A509534(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

__n128 sub_29A509598(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2053538;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5095E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2053538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float sub_29A509614(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A5096AC(v5, v11, v3, v4);
}

uint64_t sub_29A509660(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2053598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float sub_29A5096AC(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A509744(a1, v7, a3, v9);
    sub_29A18E668(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3F9CEC(a4, v9);
}

void sub_29A509744(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    memset(&__p._lbfsize, 0, 40);
    if (&__p._lbfsize != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 <= 0x4FF)
  {
    __p._lbfsize = 0;
    if (!sub_29A4FC36C(a2 + 8, 0, &__p._lbfsize))
    {
      return;
    }

    v7 = a2[1];
    v49 = *a2;
    v50 = v7;
    v8 = *(a2 + 4);
    v51 = v8;
    v9 = *(&v49 + 1);
    v10 = *(&v7 + 1);
    v11 = v7;
    goto LABEL_14;
  }

  v12 = a2[1];
  v49 = *a2;
  v50 = v12;
  v51 = *(a2 + 4);
  if (v6 < 0x600 || (a3 & 0x2000000000000000) == 0)
  {
    v9 = *(&v49 + 1);
    v10 = *(&v50 + 1);
    v11 = v50;
    v8 = v51;
    __p._p = 0;
    if (v6 > 0x6FF)
    {
      v14 = pxrInternal__aapl__pxrReserved__::ArchPRead(v51, &__p, 8, v50 + *(&v49 + 1));
      if (v14 == -1)
      {
        return;
      }

      p = __p._p;
      goto LABEL_21;
    }

LABEL_14:
    __p._lbfsize = 0;
    v14 = pxrInternal__aapl__pxrReserved__::ArchPRead(v8, &__p._lbfsize, 4, v11 + v9);
    if (v14 == -1)
    {
      return;
    }

    p = __p._lbfsize;
    __p._p = __p._lbfsize;
LABEL_21:
    v21 = v14 + v11;
    v22 = v10 - v21;
    if (v21 < 0 || (v22 & 0x8000000000000000) != 0 || p > v22 || 4 * p > v22)
    {
      *&__p._lbfsize = "usd/crateFile.cpp";
      __p._cookie = "_ReadUncompressedArray";
      __p._close = 2226;
      __p._read = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = float]";
      LOBYTE(__p._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LODWORD(v52) = 0;
    *&__p._lbfsize = &v52;
    sub_29A18E224(a4, p, &__p._lbfsize, v15);
    sub_29A18E624(a4);
    v23 = *(a4 + 32);
    v24 = (4 * *a4);
    v25 = v21 + v9;
    v26 = v8;
LABEL_26:
    pxrInternal__aapl__pxrReserved__::ArchPRead(v26, v23, v24, v25);
    return;
  }

  *&__p._bf._size = 0;
  if (v6 > 0x6FF)
  {
    v27 = pxrInternal__aapl__pxrReserved__::ArchPRead(v51, &__p._bf._size, 8, v50 + *(&v49 + 1));
    if (v27 == -1)
    {
      return;
    }

    v19 = v50 + v27;
    *&v50 = v50 + v27;
    lbfsize = *&__p._bf._size;
  }

  else
  {
    __p._lbfsize = 0;
    v17 = pxrInternal__aapl__pxrReserved__::ArchPRead(v51, &__p._lbfsize, 4, v50 + *(&v49 + 1));
    if (v17 == -1)
    {
      return;
    }

    v19 = v50 + v17;
    *&v50 = v50 + v17;
    lbfsize = __p._lbfsize;
    *&__p._bf._size = __p._lbfsize;
  }

  if (lbfsize <= 0xF)
  {
    v28 = *(&v50 + 1) - v19;
    if (v19 < 0 || (v28 & 0x8000000000000000) != 0 || lbfsize > v28 || 4 * lbfsize > v28)
    {
      *&__p._lbfsize = "usd/crateFile.cpp";
      __p._cookie = "_ReadPossiblyCompressedArray";
      __p._close = 2460;
      __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = float]";
      LOBYTE(__p._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu elements for possibly compressed (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    LODWORD(__p._p) = 0;
    *&__p._lbfsize = &__p;
    sub_29A18E224(a4, lbfsize, &__p._lbfsize, v18);
    sub_29A18E624(a4);
    v23 = *(a4 + 32);
    v24 = (4 * *&__p._bf._size);
    v26 = v51;
    v25 = v50 + *(&v49 + 1);
    goto LABEL_26;
  }

  HIBYTE(__p._bf._base) = 0;
  v29 = pxrInternal__aapl__pxrReserved__::ArchPRead(v51, (&__p._bf._base + 7), 1, v19 + *(&v49 + 1));
  if (v29 != -1)
  {
    v30 = v50 + v29;
    *&v50 = v50 + v29;
    if (HIBYTE(__p._bf._base) != 116)
    {
      if (HIBYTE(__p._bf._base) != 105)
      {
        *&__p._lbfsize = "usd/crateFile.cpp";
        __p._cookie = "_ReadPossiblyCompressedArray";
        __p._close = 2524;
        __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = float]";
        LOBYTE(__p._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Corrupt data stream detected reading compressed array in <%s>");
        return;
      }

      if ((sub_29A4FF180(*&__p._bf._size) & 1) == 0)
      {
        *&__p._lbfsize = "usd/crateFile.cpp";
        __p._cookie = "_ReadPossiblyCompressedArray";
        __p._close = 2480;
        __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = float]";
        LOBYTE(__p._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu compressed ints");
        return;
      }

      sub_29A011440(&__p._lbfsize, *&__p._bf._size);
      LODWORD(v52) = 0;
      __p._p = &v52;
      sub_29A18E224(a4, *&__p._bf._size, &__p, v31);
      sub_29A18E624(a4);
      v32 = *(a4 + 32);
      sub_29A4FF1B8(&v49, *&__p._lbfsize, ((__p._cookie - *&__p._lbfsize) >> 2));
      v33 = *&__p._lbfsize;
      cookie = __p._cookie;
      if (*&__p._lbfsize != __p._cookie)
      {
        v35 = *&__p._lbfsize;
        do
        {
          v36 = *v35++;
          *v32++ = v36;
        }

        while (v35 != cookie);
      }

      if (v33)
      {
        __p._cookie = v33;
LABEL_66:
        operator delete(v33);
        return;
      }

      return;
    }

    LODWORD(__p._bf._base) = 0;
    v37 = pxrInternal__aapl__pxrReserved__::ArchPRead(v51, &__p._bf, 4, v30 + *(&v49 + 1));
    if (v37 == -1)
    {
      return;
    }

    *&v50 = v50 + v37;
    v38 = *(&v50 + 1) - v50;
    if ((v50 & 0x8000000000000000) != 0 || (v38 & 0x8000000000000000) != 0 || (v38 >= LODWORD(__p._bf._base) ? (v39 = 4 * LODWORD(__p._bf._base) > v38) : (v39 = 1), v39))
    {
      *&__p._lbfsize = "usd/crateFile.cpp";
      __p._cookie = "_ReadPossiblyCompressedArray";
      __p._close = 2498;
      __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = float]";
      LOBYTE(__p._seek) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %u elements for lut (%llu bytes), remaining file size is %lld of %lld");
      return;
    }

    sub_29A0121C0(&__p, LODWORD(__p._bf._base));
    v40 = pxrInternal__aapl__pxrReserved__::ArchPRead(v51, __p._p, (*&__p._r - __p._p), v50 + *(&v49 + 1));
    if (v40 != -1)
    {
      *&v50 = v50 + v40;
    }

    if (sub_29A4FF180(*&__p._bf._size))
    {
      sub_29A01112C(&v52, *&__p._bf._size);
      sub_29A4EF8E4(&v49, v52, (v53 - v52));
      HIDWORD(__p._write) = 0;
      *&__p._lbfsize = &__p._write + 4;
      sub_29A18E224(a4, *&__p._bf._size, &__p._lbfsize, v41);
      sub_29A18E624(a4);
      v42 = v52;
      v43 = v53;
      if (v52 == v53)
      {
LABEL_59:
        if (!v42)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v44 = *(a4 + 32);
        base = __p._bf._base;
        v46 = v52;
        v47 = __p._p;
        while (1)
        {
          v48 = *v46;
          if (v48 >= base)
          {
            break;
          }

          *v44++ = *&v47[4 * v48];
          if (++v46 == v43)
          {
            goto LABEL_59;
          }
        }

        *&__p._lbfsize = "usd/crateFile.cpp";
        __p._cookie = "_ReadPossiblyCompressedArray";
        __p._close = 2516;
        __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = float]";
        LOBYTE(__p._seek) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to index lut with index %u, out of bounds access", v48);
        v42 = v52;
        if (!v52)
        {
LABEL_64:
          v33 = __p._p;
          if (__p._p)
          {
            *&__p._r = __p._p;
            goto LABEL_66;
          }

          return;
        }
      }

      v53 = v42;
      operator delete(v42);
      goto LABEL_64;
    }

    *&__p._lbfsize = "usd/crateFile.cpp";
    __p._cookie = "_ReadPossiblyCompressedArray";
    __p._close = 2506;
    __p._read = "typename std::enable_if<std::is_same<T, GfHalf>::value || std::is_same<T, float>::value || std::is_same<T, double>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadPossiblyCompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version, int) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = float]";
    LOBYTE(__p._seek) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p._lbfsize, 3, "Failed to read %llu compressed uints", *&__p._bf._size);
    goto LABEL_64;
  }
}