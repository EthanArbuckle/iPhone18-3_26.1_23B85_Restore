uint64_t *sub_29A517130(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A5171E8(a1, v7, a3, v9);
    sub_29A19A5E4(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  if (!(a3 >> 62))
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 8, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FC54C(a4, v9);
}

void sub_29A5171E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfQuath]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v10 - v13, v10);
  }

  else
  {
    *&v16 = &v20;
    sub_29A19A344(a4, v12, &v16);
    sub_29A19A5A0(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (8 * *a4), v13 + v8);
  }
}

__n128 sub_29A5173DC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20543B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A517428(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20543B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A517460(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A5174AC(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51752C(v5, v10, v3, v4);
}

uint64_t *sub_29A51752C(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A517604(a1, v8, a3, &v10);
    sub_29A19A5E4(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (!(a3 >> 62))
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 8uLL);
  }

  return sub_29A3FC54C(a4, v8);
}

void sub_29A517604(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742218))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742210 = *v16;
      __cxa_guard_release(&qword_2A1742218);
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
    if (byte_2A1742210 != 1 || v9 < 0x800 || (BYTE8(v17) & 1) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfQuath]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 8 * v8, v14, v12);
      }

      else
      {
        *&__dst = &v24;
        sub_29A19A344(a4, v8, &__dst);
        sub_29A19A5A0(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfQuath]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A19A2F4(a4);
    }
  }
}

__n128 sub_29A517960(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054438;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5179AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5179E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A517A30(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A517ADC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A517AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t *sub_29A517ADC(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A517C14(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A19A5E4(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
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
    sub_29A4E5308(&v8 + 1, v14, 8uLL);
    v5 = v9;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return sub_29A3FC54C(a4, v14);
}

void sub_29A517BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A517C14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfQuath]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v11, v14);
        }

        else
        {
          *&v18 = &v22;
          sub_29A19A344(a4, v21, &v18);
          sub_29A19A5A0(a4);
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

__n128 sub_29A517EB8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20544B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A517F04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20544B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A517F48(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A517F94(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A5180E4(a1, a2, a3, v10);
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
    if (sub_29A51854C(&v19, *v12, v12[1]))
    {
      return v19 | 0x4013000000000000;
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

      v18 = 0.0;
      v15 = sub_29A5185C8(v13, v12, v12, &v18);
      v16 = v15;
      if (v17)
      {
        *(v15 + 4) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x13000000000000;
        sub_29A4F7FA4(v20, v12);
      }

      return *(v16 + 4);
    }
  }
}

unint64_t sub_29A5180E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8013000000000000;
  v18 = 0x8013000000000000;
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
      sub_29A4E0AB0(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A518264(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8013000000000000;
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

void *sub_29A518264(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A192960(v31, a2);
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

void sub_29A5184F0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A51854C(_WORD *a1, double a2, double a3)
{
  v3 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  while (1)
  {
    v4 = 0;
    v5 = *&v8[v3];
    if (v5 < -128.0 || v5 > 127.0)
    {
      break;
    }

    if (v5 != v5)
    {
      return 0;
    }

    *(&v7 + v3++) = v5;
    if (v3 == 2)
    {
      *a1 = v7;
      return 1;
    }
  }

  return v4;
}

double *sub_29A5185C8(uint64_t a1, double *a2, _OWORD *a3, double *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A189C3C(&v26, a2, a2 + 1);
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
            if (v13[2] == *a2 && v13[3] == a2[1])
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
  *v13 = 0.0;
  *(v13 + 1) = v9;
  *(v13 + 1) = *a3;
  v13[4] = *a4;
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
LABEL_42:
    *v23 = v13;
    goto LABEL_43;
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
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return v13;
}

__n128 sub_29A518848(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054538;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A518894(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A5188C4(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51895C(v5, v11, v3, v4);
}

uint64_t sub_29A518910(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A51895C(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A518A2C(a1, v7, a3, v9);
    sub_29A1925A0(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  if (a3 >> 62)
  {
    v9[0].n128_f64[0] = a3;
    v9[0].n128_f64[1] = (a3 >> 8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 0x10, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FD3CC(a4, v9).n128_u64[0];
  return result;
}

void sub_29A518A2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v10 - v13, v10);
  }

  else
  {
    v16 = 0uLL;
    v20 = &v16;
    sub_29A192304(a4, v12, &v20);
    sub_29A19255C(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (16 * *a4), v13 + v8);
  }
}

__n128 sub_29A518C24(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20545B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A518C70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20545B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A518CA8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054618))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A518CF4(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A518D74(v5, &v10, v3, v4);
}

double sub_29A518D74(uint64_t a1, __n128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v6 = a2[1];
    v8[0] = *a2;
    v8[1] = v6;
    v9 = a2[2].n128_u64[0];
    sub_29A518E64(a1, v8, a3, &v10);
    sub_29A1925A0(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  v12 = a2[2].n128_u64[0];
  if (a3 >> 62)
  {
    v8[0].n128_f64[0] = a3;
    v8[0].n128_f64[1] = (a3 >> 8);
  }

  else
  {
    v10.n128_u64[1] = *(*v11.n128_u64[0] + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10.n128_i64[1], v8, 0x10uLL);
  }

  *&result = sub_29A3FD3CC(a4, v8).n128_u64[0];
  return result;
}

void sub_29A518E64(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742228))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742220 = *v16;
      __cxa_guard_release(&qword_2A1742228);
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
    if (byte_2A1742220 != 1 || v9 < 0x800 || (BYTE8(v17) & 7) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 16 * v8, v14, v12);
      }

      else
      {
        __dst = 0uLL;
        p_dst = &__dst;
        sub_29A192304(a4, v8, &p_dst);
        sub_29A19255C(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A1922B4(a4);
    }
  }
}

__n128 sub_29A5191C8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054638;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A519214(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51924C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054698))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A519298(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A519344(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A519320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A519344(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v15 = 0;
    memset(&v14, 0, 32);
    v11 = *a2;
    v6 = *(a2 + 2);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 3);
    sub_29A519498(a1, &v11, a3, &v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A1925A0(a4, &v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
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
    sub_29A4E5308(&v8 + 1, &v14, 0x10uLL);
    v5 = v9;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14.n128_f64[0] = a3;
  v14.n128_f64[1] = (a3 >> 8);
  if (v5)
  {
LABEL_13:
    sub_29A014BEC(v5);
  }

LABEL_14:
  *&result = sub_29A3FD3CC(a4, &v14).n128_u64[0];
  return result;
}

void sub_29A519454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A519498(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 16 * v12, v11, v14);
        }

        else
        {
          v18 = 0uLL;
          v22 = &v18;
          sub_29A192304(a4, v21, &v22);
          sub_29A19255C(a4);
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

__n128 sub_29A519740(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20546B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51978C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20546B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5197D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A51981C(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A519968(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v19[0] = a2;
    v19[1] = a3;
    v18 = 0;
    if (sub_29A519DD0(&v18, *v4, *(v4 + 1)))
    {
      return v18 | 0x4014000000000000;
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
      v14 = sub_29A519E3C(v12, v4, v4, &v17);
      v15 = v14;
      if (v16)
      {
        *(v14 + 3) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x14000000000000;
        sub_29A4E5264(v19, v4);
      }

      return *(v15 + 3);
    }
  }
}

unint64_t sub_29A519968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8014000000000000;
  v18 = 0x8014000000000000;
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
      sub_29A4E0B6C(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A519AE8(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8014000000000000;
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

void *sub_29A519AE8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A191354(v31, a2);
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

void sub_29A519D74(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A519DD0(_WORD *a1, float a2, float a3)
{
  v3 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  while (1)
  {
    v4 = *&v8[v3];
    v5 = v4 < -128.0 || v4 > 127.0;
    if (v5 || v4 != v4)
    {
      break;
    }

    *(&v7 + v3++) = v4;
    if (v3 == 2)
    {
      *a1 = v7;
      return 1;
    }
  }

  return 0;
}

float *sub_29A519E3C(uint64_t a1, float *a2, void *a3, uint64_t *a4)
{
  v27 = 0;
  v28 = 0;
  sub_29A18994C(&v27, a2, a2 + 1);
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
            if (v13[4] == *a2 && v13[5] == a2[1])
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
  *v13 = 0;
  *(v13 + 1) = v9;
  v16 = *a4;
  *(v13 + 2) = *a3;
  *(v13 + 3) = v16;
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
    *v13 = *v24;
LABEL_42:
    *v24 = v13;
    goto LABEL_43;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v23 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v25 = *(*v13 + 8);
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
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return v13;
}

__n128 sub_29A51A0B8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054738;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51A104(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_29A51A134(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51A1CC(v5, v11, v3, v4);
}

uint64_t sub_29A51A180(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054798))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A51A1CC(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A51A29C(a1, v7, a3, v9);
    sub_29A190F94(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if (a3 >> 62)
  {
    v9[0].n128_f32[0] = a3;
    v9[0].n128_f32[1] = (a3 >> 8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 8, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FD210(a4, v9);
}

void sub_29A51A29C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v10 - v13, v10);
  }

  else
  {
    v20 = 0;
    *&v16 = &v20;
    sub_29A190CF4(a4, v12, &v16);
    sub_29A190F50(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (8 * *a4), v13 + v8);
  }
}

__n128 sub_29A51A494(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20547B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51A4E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20547B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51A518(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A51A564(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51A5E4(v5, v10, v3, v4);
}

uint64_t *sub_29A51A5E4(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A51A6D4(a1, v8, a3, &v10);
    sub_29A190F94(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    *v8 = a3;
    *(v8 + 1) = (a3 >> 8);
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 8uLL);
  }

  return sub_29A3FD210(a4, v8);
}

void sub_29A51A6D4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742238))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742230 = *v16;
      __cxa_guard_release(&qword_2A1742238);
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
    if (byte_2A1742230 != 1 || v9 < 0x800 || (BYTE8(v17) & 3) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 8 * v8, v14, v12);
      }

      else
      {
        v24 = 0;
        *&__dst = &v24;
        sub_29A190CF4(a4, v8, &__dst);
        sub_29A190F50(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A190CA4(a4);
    }
  }
}

__n128 sub_29A51AA38(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054838;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51AA84(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51AABC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A51AB08(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A51ABB4(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A51AB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t *sub_29A51ABB4(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v15 = 0;
    memset(&v14, 0, 32);
    v11 = *a2;
    v6 = *(a2 + 2);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 3);
    sub_29A51AD08(a1, &v11, a3, &v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A190F94(a4, &v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
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
    sub_29A4E5308(&v8 + 1, &v14, 8uLL);
    v5 = v9;
    if (!v9)
    {
      return sub_29A3FD210(a4, &v14);
    }

    goto LABEL_13;
  }

  v14.n128_f32[0] = a3;
  v14.n128_f32[1] = (a3 >> 8);
  if (v5)
  {
LABEL_13:
    sub_29A014BEC(v5);
  }

  return sub_29A3FD210(a4, &v14);
}

void sub_29A51ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A51AD08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v11, v14);
        }

        else
        {
          v22 = 0;
          *&v18 = &v22;
          sub_29A190CF4(a4, v21, &v18);
          sub_29A190F50(a4);
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

__n128 sub_29A51AFB0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20548B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51AFFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20548B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51B040(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A51B08C(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A51B144(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    return *v4 | 0x4015000000000000;
  }
}

unint64_t sub_29A51B144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8015000000000000;
  v18 = 0x8015000000000000;
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
      sub_29A4E0C28(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A51B2C4(v9, a4, a4, &v18);
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

        sub_29A4F6CF0(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8015000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A4F6CF0(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A51B2C4(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A191E0C(v31, a2);
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

void sub_29A51B550(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

__n128 sub_29A51B5B4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51B600(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *sub_29A51B630(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51B6C8(v5, v11, v3, v4);
}

uint64_t sub_29A51B67C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A51B6C8(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A51B760(a1, v7, a3, v9);
    sub_29A191A84(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3FD050(a4, v9);
}

void sub_29A51B760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
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
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 4 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 4 * v12, v10 - v13, v10);
  }

  else
  {
    v20 = 0;
    *&v16 = &v20;
    sub_29A1917E4(a4, v12, &v16);
    sub_29A191A40(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (4 * *a4), v13 + v8);
  }
}

__n128 sub_29A51B958(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20549B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51B9A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20549B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51B9DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *sub_29A51BA28(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51BAA8(v5, v10, v3, v4);
}

int *sub_29A51BAA8(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 < 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v6 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v6;
    v8 = *(a2 + 32);
    sub_29A51BB40(a1, v7, a3, v9);
    sub_29A191A84(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  v9[0].n128_u32[0] = a3;
  return sub_29A3FD050(a4, v9);
}

void sub_29A51BB40(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742248))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742240 = *v16;
      __cxa_guard_release(&qword_2A1742248);
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

    v9 = 4 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A1742240 != 1 || v9 < 0x800 || (BYTE8(v17) & 1) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 4 * v8, v14, v12);
      }

      else
      {
        v24 = 0;
        *&__dst = &v24;
        sub_29A1917E4(a4, v8, &__dst);
        sub_29A191A40(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 4 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 4 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A191794(a4);
    }
  }
}

__n128 sub_29A51BEA0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054A38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51BEEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054A38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51BF24(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054A98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A51BF70(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A51C01C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A51BFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

int *sub_29A51C01C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A51C10C(a1, &v9, a3, v12);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    sub_29A191A84(a4, v12);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
  }

  v12[0].n128_u32[0] = v5;
  return sub_29A3FD050(a4, v12);
}

void sub_29A51C10C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
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
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 4 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 4 * v12, v11, v14);
        }

        else
        {
          v22 = 0;
          *&v18 = &v22;
          sub_29A1917E4(a4, v21, &v18);
          sub_29A191A40(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 4 * *a4);
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

__n128 sub_29A51C3B4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054AB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51C400(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054AB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51C444(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054B18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A51C490(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A51C5F8(a1, a2, a3, v10);
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
    while (1)
    {
      v13 = *(&v21 + v12);
      if (v13 != v13)
      {
        break;
      }

      *(&v20 + v12++) = v13;
      if (v12 == 2)
      {
        return v20 | 0x4016000000000000;
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
    v16 = sub_29A51CA60(v14, v4, v4, &v21);
    v17 = v16;
    if (v18)
    {
      v16[3] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x16000000000000;
      sub_29A4E5264(v19, v4);
    }

    return v17[3];
  }
}

unint64_t sub_29A51C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8016000000000000;
  v18 = 0x8016000000000000;
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
      sub_29A4E0CE4(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A51C778(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8016000000000000;
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

void *sub_29A51C778(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A21A2BC(v31, a2);
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

void sub_29A51CA04(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_29A51CA60(uint64_t a1, int *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (v9 + ((v9 + v8 + (v9 + v8) * (v9 + v8)) >> 1))));
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
            if (*(v14 + 4) == v8 && *(v14 + 5) == v9)
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

  v14 = operator new(0x20uLL);
  *v14 = 0;
  v14[1] = v10;
  v17 = *a4;
  v14[2] = *a3;
  v14[3] = v17;
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
    *v14 = *v25;
LABEL_42:
    *v25 = v14;
    goto LABEL_43;
  }

  *v14 = *(a1 + 16);
  *(a1 + 16) = v14;
  *(v24 + 8 * v4) = a1 + 16;
  if (*v14)
  {
    v26 = *(*v14 + 8);
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
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return v14;
}

__n128 sub_29A51CCC4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054B38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51CD10(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_29A51CD40(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51CDD8(v5, v11, v3, v4);
}

uint64_t sub_29A51CD8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054B98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A51CDD8(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A51CEAC(a1, v7, a3, v9);
    sub_29A3FCD10(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  if (a3 >> 62)
  {
    v9[0].n128_u64[0] = vshr_n_s32(vshl_u32(vdup_n_s32(a3), 0x1000000018), 0x18uLL);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 8, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FCC98(a4, v9);
}

void sub_29A51CEAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
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
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v10 - v13, v10);
  }

  else
  {
    v20 = 0;
    *&v16 = &v20;
    sub_29A21A48C(a4, v12, &v16);
    sub_29A21A6E8(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (8 * *a4), v13 + v8);
  }
}

__n128 sub_29A51D0A4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054BB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51D0F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51D128(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054C18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A51D174(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51D1F4(v5, v10, v3, v4);
}

uint64_t *sub_29A51D1F4(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A51D2E8(a1, v8, a3, &v10);
    sub_29A3FCD10(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    *&v8[0] = vshr_n_s32(vshl_u32(vdup_n_s32(a3), 0x1000000018), 0x18uLL);
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 8uLL);
  }

  return sub_29A3FCC98(a4, v8);
}

void sub_29A51D2E8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742258))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742250 = *v16;
      __cxa_guard_release(&qword_2A1742258);
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
    if (byte_2A1742250 != 1 || v9 < 0x800 || (BYTE8(v17) & 3) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 8 * v8, v14, v12);
      }

      else
      {
        v24 = 0;
        *&__dst = &v24;
        sub_29A21A48C(a4, v8, &__dst);
        sub_29A21A6E8(a4);
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
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A21A43C(a4);
    }
  }
}

__n128 sub_29A51D64C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054C38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51D698(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51D6D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A51D71C(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A51D7C8(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A51D7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t *sub_29A51D7C8(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A51D920(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A3FCD10(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
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
    sub_29A4E5308(&v8 + 1, v14, 8uLL);
    v5 = v9;
    if (!v9)
    {
      return sub_29A3FCC98(a4, v14);
    }

    goto LABEL_13;
  }

  v14[0].n128_u64[0] = vshr_n_s32(vshl_u32(vdup_n_s32(a3), 0x1000000018), 0x18uLL);
  if (v5)
  {
LABEL_13:
    sub_29A014BEC(v5);
  }

  return sub_29A3FCC98(a4, v14);
}

void sub_29A51D8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A51D920(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
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
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v11, v14);
        }

        else
        {
          v22 = 0;
          *&v18 = &v22;
          sub_29A21A48C(a4, v21, &v18);
          sub_29A21A6E8(a4);
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

__n128 sub_29A51DBC8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054CB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51DC14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054CB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51DC58(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A51DCA4(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A51DDF8(a1, a2, a3, v10);
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
    if (sub_29A51E30C(&v19, *v12, v12[1], v12[2]))
    {
      return v19 | 0x4017000000000000;
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
      v15 = sub_29A51E438(v13, v12, v12, &v18);
      v16 = v15;
      if (v17)
      {
        *(v15 + 5) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x17000000000000;
        sub_29A51E394(v20, v12);
      }

      return *(v16 + 5);
    }
  }
}

unint64_t sub_29A51DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8017000000000000;
  v18 = 0x8017000000000000;
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
      sub_29A4E0DA0(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A51E024(v9, a4, a4, &v18);
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

        sub_29A51DF78(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8017000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A51DF78(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

uint64_t sub_29A51DF78(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 24 * a3;
  if (24 * a3)
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

void *sub_29A51E024(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A1950CC(v31, a2);
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

void sub_29A51E2B0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A51E30C(uint64_t a1, double a2, double a3, double a4)
{
  v4 = 0;
  *v10 = a2;
  *&v10[1] = a3;
  *&v10[2] = a4;
  while (1)
  {
    v5 = 0;
    v6 = *&v10[v4];
    if (v6 < -128.0 || v6 > 127.0)
    {
      break;
    }

    if (v6 != v6)
    {
      return 0;
    }

    *(&v8 + v4++) = v6;
    if (v4 == 3)
    {
      *a1 = v8;
      *(a1 + 2) = v9;
      return 1;
    }
  }

  return v5;
}

uint64_t sub_29A51E394(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 24;
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

double *sub_29A51E438(uint64_t a1, double *a2, uint64_t a3, uint64_t *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A18AAA0(&v26, a2, a2 + 1, a2 + 2);
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
            if (v13[2] == *a2 && v13[3] == a2[1] && v13[4] == a2[2])
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

  v13 = operator new(0x30uLL);
  *v13 = 0.0;
  *(v13 + 1) = v9;
  *(v13 + 1) = *a3;
  v15 = *a4;
  v13[4] = *(a3 + 16);
  *(v13 + 5) = v15;
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
LABEL_40:
    *v23 = v13;
    goto LABEL_41;
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
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return v13;
}

__n128 sub_29A51E6D8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054D38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51E724(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054D38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A51E754(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51E7EC(v5, v11, v3, v4);
}

uint64_t sub_29A51E7A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054D98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A51E7EC(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v5 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v5;
    v9 = *(a2 + 32);
    sub_29A51E8D8(a1, v8, a3, v10);
    sub_29A194D0C(a4, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  if (a3 >> 62)
  {
    v6 = 0;
    LOWORD(v8[0]) = a3;
    BYTE2(v8[0]) = BYTE2(a3);
    do
    {
      v10[0].n128_f64[v6] = *(v8 + v6);
      ++v6;
    }

    while (v6 != 3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v10, 0x18, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  *&result = sub_29A3FE010(a4, v10).n128_u64[0];
  return result;
}

void sub_29A51E8D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
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
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 24 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 24 * v12, v10 - v13, v10);
  }

  else
  {
    v16 = 0uLL;
    *&v17 = 0;
    v20 = &v16;
    sub_29A194A04(a4, v12, &v20);
    sub_29A194CC8(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (24 * *a4), v13 + v8);
  }
}

__n128 sub_29A51EADC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054DB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51EB28(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51EB60(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054E18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_29A51EBAC(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A51EC2C(v5, &v10, v3, v4);
}

double sub_29A51EC2C(uint64_t a1, __n128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v6 = a2[1];
    v9[0] = *a2;
    v9[1] = v6;
    v10 = a2[2].n128_u64[0];
    sub_29A51ED38(a1, v9, a3, &v11);
    sub_29A194D0C(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v13 = a2[2].n128_u64[0];
  if (a3 >> 62)
  {
    v7 = 0;
    v14 = a3;
    v15 = BYTE2(a3);
    do
    {
      v9[0].n128_f64[v7] = *(&v14 + v7);
      ++v7;
    }

    while (v7 != 3);
  }

  else
  {
    v11.n128_u64[1] = *(*v12.n128_u64[0] + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v11.n128_i64[1], v9, 0x18uLL);
  }

  *&result = sub_29A3FE010(a4, v9).n128_u64[0];
  return result;
}

void sub_29A51ED38(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742268))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742260 = *v16;
      __cxa_guard_release(&qword_2A1742268);
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

    v9 = 24 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A1742260 != 1 || v9 < 0x800 || (BYTE8(v17) & 7) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 24 * v8, v14, v12);
      }

      else
      {
        __dst = 0uLL;
        *&v21 = 0;
        p_dst = &__dst;
        sub_29A194A04(a4, v8, &p_dst);
        sub_29A194CC8(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 24 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 24 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A1949B4(a4);
    }
  }
}

__n128 sub_29A51F0A8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054E38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51F0F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51F12C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A51F178(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A51F224(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A51F200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

double sub_29A51F224(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A51F390(a1, &v12, a3, &v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A194D0C(a4, &v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
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
    v18 = BYTE2(a3);
    do
    {
      v15.n128_f64[v7] = *(&v17 + v7);
      ++v7;
    }

    while (v7 != 3);
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v9 + 1, &v15, 0x18uLL);
    v5 = v10;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *&result = sub_29A3FE010(a4, &v15).n128_u64[0];
  return result;
}

void sub_29A51F34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A51F390(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
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
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 24 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 24 * v12, v11, v14);
        }

        else
        {
          v18 = 0uLL;
          *&v19 = 0;
          v22 = &v18;
          sub_29A194A04(a4, v21, &v22);
          sub_29A194CC8(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 24 * *a4);
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

__n128 sub_29A51F644(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054EB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A51F690(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054EB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A51F6D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054F18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A51F720(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A51F874(a1, a2, a3, v10);
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
    if (sub_29A51FCDC(&v19, *v12, v12[1], v12[2]))
    {
      return v19 | 0x4018000000000000;
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
      v15 = sub_29A51FD54(v13, v12, v12, &v18);
      v16 = v15;
      if (v17)
      {
        *(v15 + 4) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x18000000000000;
        sub_29A4F8048(v20, v12);
      }

      return *(v16 + 4);
    }
  }
}

unint64_t sub_29A51F874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8018000000000000;
  v18 = 0x8018000000000000;
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
      sub_29A4E0E5C(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A51F9F4(v9, a4, a4, &v18);
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

        sub_29A4F9D0C(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8018000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A4F9D0C(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A51F9F4(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A1939D0(v31, a2);
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

void sub_29A51FC80(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A51FCDC(uint64_t a1, float a2, float a3, float a4)
{
  v4 = 0;
  *v10 = a2;
  *&v10[1] = a3;
  *&v10[2] = a4;
  while (1)
  {
    v5 = *&v10[v4];
    v6 = v5 < -128.0 || v5 > 127.0;
    if (v6 || v5 != v5)
    {
      break;
    }

    *(&v8 + v4++) = v5;
    if (v4 == 3)
    {
      *a1 = v8;
      *(a1 + 2) = v9;
      return 1;
    }
  }

  return 0;
}

float *sub_29A51FD54(uint64_t a1, float *a2, uint64_t a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  sub_29A18A6C4(&v25, a2, a2 + 1, a2 + 2);
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
            if (v13[4] == *a2 && v13[5] == a2[1] && v13[6] == a2[2])
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
  *(v13 + 2) = *a3;
  v13[6] = *(a3 + 8);
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

__n128 sub_29A51FFF8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054F38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A520044(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054F38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

atomic_uint *sub_29A520074(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A52010C(v5, v11, v3, v4);
}

uint64_t sub_29A5200C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2054F98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_uint *sub_29A52010C(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v5 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v5;
    v9 = *(a2 + 32);
    sub_29A5201F8(a1, v8, a3, v10);
    sub_29A193610(a4, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (a3 >> 62)
  {
    v6 = 0;
    LOWORD(v8[0]) = a3;
    BYTE2(v8[0]) = BYTE2(a3);
    do
    {
      v10[0].n128_f32[v6] = *(v8 + v6);
      ++v6;
    }

    while (v6 != 3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v10, 0xC, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FDD38(a4, v10);
}

void sub_29A5201F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
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
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 12 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 12 * v12, v10 - v13, v10);
  }

  else
  {
    DWORD2(v16) = 0;
    *&v16 = 0;
    v20 = &v16;
    sub_29A193304(a4, v12, &v20);
    sub_29A1935CC(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (12 * *a4), v13 + v8);
  }
}

__n128 sub_29A5203FC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2054FB8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A520448(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2054FB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A520480(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_uint *sub_29A5204CC(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A52054C(v5, v10, v3, v4);
}

atomic_uint *sub_29A52054C(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A520658(a1, v9, a3, &v11);
    sub_29A193610(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v5 = *(a2 + 16);
  v11 = *a2;
  v12 = v5;
  v13 = *(a2 + 32);
  if (a3 >> 62)
  {
    v7 = 0;
    v14 = a3;
    v15 = BYTE2(a3);
    do
    {
      *(v9 + v7) = *(&v14 + v7);
      ++v7;
    }

    while (v7 != 3);
  }

  else
  {
    *(&v11 + 1) = *(*v12 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v11 + 8, v9, 0xCuLL);
  }

  return sub_29A3FDD38(a4, v9);
}

void sub_29A520658(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742278))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742270 = *v16;
      __cxa_guard_release(&qword_2A1742278);
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

    v9 = 12 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A1742270 != 1 || v9 < 0x800 || (BYTE8(v17) & 3) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 12 * v8, v14, v12);
      }

      else
      {
        DWORD2(__dst) = 0;
        *&__dst = 0;
        p_dst = &__dst;
        sub_29A193304(a4, v8, &p_dst);
        sub_29A1935CC(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 12 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 12 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A1932B4(a4);
    }
  }
}

__n128 sub_29A5209C8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055038;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A520A14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A520A4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A520A98(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A520B44(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A520B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

atomic_uint *sub_29A520B44(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A520CB0(a1, &v12, a3, &v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A193610(a4, &v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
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
    v18 = BYTE2(a3);
    do
    {
      v15.n128_f32[v7] = *(&v17 + v7);
      ++v7;
    }

    while (v7 != 3);
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v9 + 1, &v15, 0xCuLL);
    v5 = v10;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return sub_29A3FDD38(a4, &v15);
}

void sub_29A520C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A520CB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
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
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 12 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 12 * v12, v11, v14);
        }

        else
        {
          DWORD2(v18) = 0;
          *&v18 = 0;
          v22 = &v18;
          sub_29A193304(a4, v21, &v22);
          sub_29A1935CC(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 12 * *a4);
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

__n128 sub_29A520F64(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20550B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A520FB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20550B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A520FF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A521040(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A5211C8(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v12 = 0;
    v21[0] = a2;
    v21[1] = a3;
    v13 = *v4;
    WORD2(v20) = *(v4 + 2);
    LODWORD(v20) = v13;
    for (i = &v20; (sub_29A521780(i, &v22 + v12) & 1) != 0; ++i)
    {
      if (++v12 == 3)
      {
        return v22 | (v23 << 16) | 0x4019000000000000;
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

    v20 = 0;
    v17 = sub_29A52187C(v15, v4, v4, &v20);
    v18 = v17;
    if (v19)
    {
      v17[3] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x19000000000000;
      sub_29A5216DC(v21, v4);
    }

    return v18[3];
  }
}

unint64_t sub_29A5211C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x8019000000000000;
  v18 = 0x8019000000000000;
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
      sub_29A4E0F18(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A5213F4(v9, a4, a4, &v18);
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

        sub_29A521348(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x8019000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A521348(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

uint64_t sub_29A521348(uint64_t result, char *__src, uint64_t a3)
{
  v3 = 6 * a3;
  if (6 * a3)
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

void *sub_29A5213F4(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A194498(v31, a2);
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

void sub_29A521680(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A5216DC(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 6;
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

uint64_t sub_29A521780(unsigned __int16 *a1, _BYTE *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  if (v4 < -128.0 || v4 > 127.0)
  {
    return 0;
  }

  v5 = COERCE_UNSIGNED_INT(v4);
  if (v4)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23])
    {
      v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23] + (((v5 & 0x7FFFFF) + ((v5 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v5);
      v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
    }
  }

  else
  {
    v6 = v5 >> 16;
  }

  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6] != v4)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

void *sub_29A52187C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  sub_29A18A3A4(&v25, a2, a2 + 1, a2 + 2);
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v25));
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
            pxrInternal__aapl__pxrReserved__::GfVec3h::operator==();
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
  *(v14 + 4) = *a3;
  *(v14 + 10) = *(a3 + 4);
  v14[3] = *a4;
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
    *v14 = *v22;
LABEL_37:
    *v22 = v14;
    goto LABEL_38;
  }

  *v14 = *(a1 + 16);
  *(a1 + 16) = v14;
  *(v21 + 8 * v4) = a1 + 16;
  if (*v14)
  {
    v23 = *(*v14 + 8);
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
    goto LABEL_37;
  }

LABEL_38:
  ++*(a1 + 24);
  return v14;
}

__n128 sub_29A521B0C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055138;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A521B58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A521B88(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A521C20(v5, v11, v3, v4);
}

uint64_t sub_29A521BD4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A521C20(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    sub_29A521CE8(a1, v7, a3, v9);
    sub_29A194110(a4, v9);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  if (a3 >> 62)
  {
    sub_29A521EE4(v9, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v9, 6, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FDB5C(a4, v9);
}

void sub_29A521CE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
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
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 6 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 6 * v12, v10 - v13, v10);
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *&v16 = &v20;
    sub_29A193E08(a4, v12, &v16);
    sub_29A1940CC(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (6 * *a4), v13 + v8);
  }
}

uint64_t sub_29A521EE4(uint64_t a1, int a2)
{
  v3 = 0;
  v6 = a2;
  v7 = BYTE2(a2);
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

  while (v3 != 3);
  return result;
}

__n128 sub_29A521F8C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20551B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A521FD8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20551B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A522010(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A52205C(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A5220DC(v5, v10, v3, v4);
}

uint64_t sub_29A5220DC(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A5221C4(a1, v8, a3, &v10);
    sub_29A194110(a4, &v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  v5 = *(a2 + 16);
  v10 = *a2;
  v11 = v5;
  v12 = *(a2 + 32);
  if (a3 >> 62)
  {
    sub_29A521EE4(v8, a3);
  }

  else
  {
    *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v10 + 8, v8, 6uLL);
  }

  return sub_29A3FDB5C(a4, v8);
}

void sub_29A5221C4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742288))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742280 = *v16;
      __cxa_guard_release(&qword_2A1742288);
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

    v9 = 6 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A1742280 != 1 || v9 < 0x800 || (BYTE8(v17) & 1) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 6 * v8, v14, v12);
      }

      else
      {
        v25 = 0;
        v24 = 0;
        *&__dst = &v24;
        sub_29A193E08(a4, v8, &__dst);
        sub_29A1940CC(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 6 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 6 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A193DB8(a4);
    }
  }
}

__n128 sub_29A522530(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055238;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52257C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5225B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A522600(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A5226AC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A522688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t sub_29A5226AC(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A5227F8(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A194110(a4, v14);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
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
    sub_29A521EE4(v14, a3);
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v8 + 1, v14, 6uLL);
    v5 = v9;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return sub_29A3FDB5C(a4, v14);
}

void sub_29A5227F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
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
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 6 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 6 * v12, v11, v14);
        }

        else
        {
          v23 = 0;
          v22 = 0;
          *&v18 = &v22;
          sub_29A193E08(a4, v21, &v18);
          sub_29A1940CC(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 6 * *a4);
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

__n128 sub_29A522AAC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20552B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A522AF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20552B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A522B3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A522B88(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A522D04(a1, a2, a3, v10);
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
    v21[0] = a2;
    v21[1] = a3;
    v14 = v12[2];
    v24 = *v12;
    v25 = v14;
    while (1)
    {
      v15 = *(&v24 + v13);
      if (v15 != v15)
      {
        break;
      }

      *(&v22 + v13++) = v15;
      if (v13 == 3)
      {
        return v22 | (v23 << 16) | 0x401A000000000000;
      }
    }

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

    v24 = 0;
    v18 = sub_29A52316C(v16, v12, v12, &v24);
    v19 = v18;
    if (v20)
    {
      v18[4] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x1A000000000000;
      sub_29A4F8048(v21, v12);
    }

    return v19[4];
  }
}

unint64_t sub_29A522D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x801A000000000000;
  v18 = 0x801A000000000000;
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
      sub_29A4E0FD4(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A522E84(v9, a4, a4, &v18);
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

        sub_29A4F9D0C(v20, *(a4 + 32), *a4);
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x801A000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v19, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v20[0]) = 1;
        sub_29A4FBF2C(v19, v20);
        LODWORD(v20[0]) = *a4;
        sub_29A4FBF2C(v19, v20);
        sub_29A4F9D0C(v19, *(a4 + 32), *a4);
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A522E84(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = sub_29A21C184(v31, a2);
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

void sub_29A523110(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_29A52316C(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  sub_29A21BDD4(&v25, a2, a2 + 1, a2 + 2);
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
            if (*(v13 + 4) == *a2 && *(v13 + 5) == a2[1] && *(v13 + 6) == a2[2])
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
  v13[2] = *a3;
  *(v13 + 6) = *(a3 + 8);
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

__n128 sub_29A523410(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055338;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52345C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

atomic_uint *sub_29A52348C(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A523524(v5, v11, v3, v4);
}

uint64_t sub_29A5234D8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_uint *sub_29A523524(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v5 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v5;
    v9 = *(a2 + 32);
    sub_29A52360C(a1, v8, a3, v10);
    sub_29A3FD724(a4, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  if (a3 >> 62)
  {
    v6 = 0;
    LOWORD(v8[0]) = a3;
    BYTE2(v8[0]) = BYTE2(a3);
    do
    {
      v10[0].n128_u32[v6] = *(v8 + v6);
      ++v6;
    }

    while (v6 != 3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchPRead(*(a2 + 32), v10, 0xC, *(a2 + 8) + (a3 & 0xFFFFFFFFFFFFLL));
  }

  return sub_29A3FD688(a4, v10);
}

void sub_29A52360C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if (&v16 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
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
  if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 12 * v12 > v14) : (v15 = 1), v15))
  {
    *&v16 = "usd/crateFile.cpp";
    *(&v16 + 1) = "_ReadUncompressedArray";
    *&v17 = 2226;
    *(&v17 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
    LOBYTE(v18) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 12 * v12, v10 - v13, v10);
  }

  else
  {
    DWORD2(v16) = 0;
    *&v16 = 0;
    v20 = &v16;
    sub_29A21C418(a4, v12, &v20);
    sub_29A21C6E0(a4);
    pxrInternal__aapl__pxrReserved__::ArchPRead(v9, *(a4 + 32), (12 * *a4), v13 + v8);
  }
}

__n128 sub_29A523810(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20553B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A52385C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20553B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A523894(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_uint *sub_29A5238E0(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  return sub_29A523960(v5, v10, v3, v4);
}

atomic_uint *sub_29A523960(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A523A68(a1, v9, a3, &v11);
    sub_29A3FD724(a4, &v11);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  v5 = *(a2 + 16);
  v11 = *a2;
  v12 = v5;
  v13 = *(a2 + 32);
  if (a3 >> 62)
  {
    v7 = 0;
    v14 = a3;
    v15 = BYTE2(a3);
    do
    {
      *(v9 + v7) = *(&v14 + v7);
      ++v7;
    }

    while (v7 != 3);
  }

  else
  {
    *(&v11 + 1) = *(*v12 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A4E7A0C(&v11 + 8, v9, 0xCuLL);
  }

  return sub_29A3FD688(a4, v9);
}

void sub_29A523A68(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v22 = 0;
    __dst = 0u;
    v21 = 0u;
    if (&__dst != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
  v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
  if (v6 > 0x4FF || (LODWORD(__dst) = 0, sub_29A4E7A0C(a2 + 8, &__dst, 4uLL)))
  {
    v7 = a2[1];
    v17 = *a2;
    v18 = v7;
    v19 = *(a2 + 4);
    if ((atomic_load_explicit(&qword_2A1742298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742298))
    {
      v16 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A1742290 = *v16;
      __cxa_guard_release(&qword_2A1742298);
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

    v9 = 12 * v8;
    v10 = *(&v17 + 1);
    if (byte_2A1742290 != 1 || v9 < 0x800 || (BYTE8(v17) & 3) != 0)
    {
      v12 = *(*v18 + 32);
      v13 = *(&v17 + 1) - *(*v18 + 24);
      v14 = v12 - v13;
      if (v13 < 0 || (v14 & 0x8000000000000000) != 0 || (v8 <= v14 ? (v15 = v9 > v14) : (v15 = 1), v15))
      {
        *&__dst = "usd/crateFile.cpp";
        *(&__dst + 1) = "_ReadUncompressedArray";
        *&v21 = 2290;
        *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
        LOBYTE(v22) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%zu bytes), remaining file size is %lld of %lld", v8, 12 * v8, v14, v12);
      }

      else
      {
        DWORD2(__dst) = 0;
        *&__dst = 0;
        p_dst = &__dst;
        sub_29A21C418(a4, v8, &p_dst);
        sub_29A21C6E0(a4);
        sub_29A4E7A0C(&v17 + 8, *(a4 + 32), 12 * *a4);
      }
    }

    else
    {
      v11 = sub_29A4FCB64(&v17 + 8, *(&v17 + 1), 12 * v8, v8);
      if (v11)
      {
        *&v21 = 0;
        *(&v21 + 1) = v11;
        v22 = v10;
        __dst = v23;
        if (&__dst != a4)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
      }

      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v21 = 2282;
      *(&v21 + 1) = "typename std::enable_if<Reader::StreamSupportsZeroCopy && _IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
      LOBYTE(v22) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %zu uncompressedArray bytes", v9);
      sub_29A21C3C8(a4);
    }
  }
}

__n128 sub_29A523DD8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2055438;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A523E24(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2055438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A523E5C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A523EA8(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
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
  sub_29A523F54(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A523F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

atomic_uint *sub_29A523F54(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
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
    sub_29A5240BC(a1, &v12, a3, &v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    sub_29A3FD724(a4, &v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
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
    v18 = BYTE2(a3);
    do
    {
      v15.n128_u32[v7] = *(&v17 + v7);
      ++v7;
    }

    while (v7 != 3);
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A4E5308(&v9 + 1, &v15, 0xCuLL);
    v5 = v10;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return sub_29A3FD688(a4, &v15);
}

void sub_29A524078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5240BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (&v18 != a4)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
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
        if (v17 < 0 || (v11 & 0x8000000000000000) != 0 || (v21 <= v11 ? (v13 = 12 * v21 > v11) : (v13 = 1), v13))
        {
          *&v18 = "usd/crateFile.cpp";
          *(&v18 + 1) = "_ReadUncompressedArray";
          *&v19 = 2226;
          *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
          LOBYTE(v20) = 0;
          v14 = (*(*v15 + 16))(v15);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 12 * v12, v11, v14);
        }

        else
        {
          DWORD2(v18) = 0;
          *&v18 = 0;
          v22 = &v18;
          sub_29A21C418(a4, v21, &v22);
          sub_29A21C6E0(a4);
          sub_29A4E5308(&v15, *(a4 + 32), 12 * *a4);
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

__n128 sub_29A524370(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20554B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5243BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20554B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A524400(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2055518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A52444C(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
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

    return sub_29A5245A0(a1, a2, a3, v10);
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
    if (sub_29A524A08(&v19, *v12, v12[1], v12[2], v12[3]))
    {
      return v19 | 0x401B000000000000;
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

      v18 = 0.0;
      v15 = sub_29A524A88(v13, v12, v12, &v18);
      v16 = v15;
      if (v17)
      {
        *(v15 + 6) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x1B000000000000;
        sub_29A513D50(v20, v12);
      }

      return *(v16 + 6);
    }
  }
}

unint64_t sub_29A5245A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  result = 0x801B000000000000;
  v18 = 0x801B000000000000;
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
      sub_29A4E1090(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A524720(v9, a4, a4, &v18);
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
        v13[7] = v17 & 0xFFFFFFFFFFFFLL | 0x801B000000000000;
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

void *sub_29A524720(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
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