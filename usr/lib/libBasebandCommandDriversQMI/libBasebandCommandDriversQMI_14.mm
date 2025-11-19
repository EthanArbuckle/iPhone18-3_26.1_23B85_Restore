void sub_296F7D94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a12);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a13);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke_2(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v15 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    v15 = Mutable;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x20uLL);
  v17 = xmmword_296FBF500;
  strcpy(__p, "Get WLAN Connection State");
  coex::QMICommandDriver::checkError(v3, a2, &__p, &v14);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
    v6 = v14;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = v14;
    if (v14)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v5, *MEMORY[0x29EDC8670], v6);
      goto LABEL_18;
    }
  }

  v13 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v21 = 0;
  __p = MEMORY[0x29EDCA5F8];
  *&v17 = 1174405120;
  *(&v17 + 1) = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18WLANConnectionInfoENS_3abm16GetWLANConnState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v18 = &__block_descriptor_tmp_514;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v20 = *MEMORY[0x29EDC8950];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  if (TlvValue)
  {
    v22 = 0xAAAAAAAA00000000;
    *v23 = 0u;
    v24 = 0u;
    coex::tlv::abm::parseField(TlvValue, &TlvValue[v8], &v22);
    (*(&v17 + 1))(&__p, &v22);
    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_18:
  v9 = v15;
  if (v15 && (v10 = CFGetTypeID(v15), v10 == CFDictionaryGetTypeID()))
  {
    v12 = v9;
    CFRetain(v9);
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, &v12, 0);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_296F7DC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v25 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a22);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver20pollLinkQuality_syncEv_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v18 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v18 = Mutable;
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v20) = 8;
  strcpy(&__p, "Get SINR");
  coex::QMICommandDriver::checkError(v3, a2, &__p, &v17);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
    v7 = v17;
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = v17;
    if (v17)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v6, *MEMORY[0x29EDC8670], v7);
      goto LABEL_20;
    }
  }

  v16 = 0;
  v8 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = v8;
  if (v8)
  {
    v15 = v8;
    v16 = v8;
    CFRetain(v8);
  }

  else
  {
    v15 = 0;
  }

  v24 = 0;
  *&__p = MEMORY[0x29EDCA5F8];
  *(&__p + 1) = 1174405120;
  v20 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTESINRFilteredOutputENS_3abm8SINRRead8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v21 = &__block_descriptor_tmp_519;
  cf = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v23 = *MEMORY[0x29EDC8AE8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v12 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 4);
    v25 = *v12;
    v20(&__p, &v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v6 = v18;
  ctu::cf::insert<__CFString const*,__CFDictionary *>(v18, *MEMORY[0x29EDC8780], v16);
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_20:
  if (v6 && (v13 = CFGetTypeID(v6), v13 == CFDictionaryGetTypeID()))
  {
    v14 = v6;
    CFRetain(v6);
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, &v14, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_296F7DFE4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 16, v2, v3);
  JUMPOUT(0x296F7DF10);
}

void sub_296F7E01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x20uLL);
  v11 = xmmword_296FBF500;
  strcpy(__p, "set reporting indications");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &cf);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    v5 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = cf;
    if (cf)
    {
LABEL_3:
      v9 = v5;
      goto LABEL_4;
    }
  }

  v7 = *(v4 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    goto LABEL_9;
  }

  LOWORD(__p) = 0;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Setting reporting indications completed", &__p, 2u);
  v5 = cf;
  v9 = cf;
  if (!cf)
  {
LABEL_9:
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v5);
  v8 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
  CFRelease(v5);
  v6 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v6);
}

void sub_296F7E270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC86C0]);
  v4 = ctu::cf::map_adapter::copyCFDictionaryRef((a1 + 32), *MEMORY[0x29EDC8718]);
  if (v4)
  {
    v5 = v4;
    v9[0] = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v9, v4);
    Int = ctu::cf::map_adapter::getInt(v9, *MEMORY[0x29EDC8778]);
    v7 = ctu::cf::map_adapter::getInt(v9, *MEMORY[0x29EDC8658]);
    MEMORY[0x29C268420](v9);
    *(a2 + 4) = Int | (v7 << 32);
    CFRelease(v5);
  }

  else
  {
    *(a2 + 4) = 0;
  }

  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8748]);
  *(a2 + 12) = result;
  return result;
}

void sub_296F7E398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_70(uint64_t a1, _DWORD *a2)
{
  v2 = a2;
  v3 = a1;
  *a2 = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8890]);
  v4 = ctu::cf::map_adapter::copyCFArrayRef((v3 + 32), *MEMORY[0x29EDC8718]);
  Count = CFArrayGetCount(v4);
  v6 = Count;
  if (Count < 1)
  {
    v18 = 0;
    v17 = 0;
    v8 = 0;
    v20 = v2 + 2;
    v19 = *(v2 + 1);
    if (v19)
    {
LABEL_10:
      *(v2 + 2) = v19;
      operator delete(v19);
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
    }
  }

  else
  {
    if (Count >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 8 * Count;
    v8 = operator new(8 * Count);
    v23 = v3;
    v24 = v2;
    bzero(v8, 8 * v6);
    v9 = 0;
    v22 = &v8[v7];
    v10 = *MEMORY[0x29EDC8778];
    v11 = *MEMORY[0x29EDC8658];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
      v13 = ValueAtIndex;
      if (ValueAtIndex && (v14 = CFGetTypeID(ValueAtIndex), v14 == CFDictionaryGetTypeID()))
      {
        CFRetain(v13);
        CFRetain(v13);
        v25[0] = 0xAAAAAAAAAAAAAAAALL;
        v25[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v25, v13);
        Int = ctu::cf::map_adapter::getInt(v25, v10);
        v16 = ctu::cf::map_adapter::getInt(v25, v11);
        MEMORY[0x29C268420](v25);
        *&v8[8 * v9] = Int | (v16 << 32);
        CFRelease(v13);
        CFRelease(v13);
      }

      else
      {
        *&v8[8 * v9] = 0;
      }

      ++v9;
    }

    while (v6 != v9);
    v3 = v23;
    v2 = v24;
    v18 = v22;
    v17 = &v8[8 * v6];
    v20 = v24 + 2;
    v19 = *(v24 + 1);
    if (v19)
    {
      goto LABEL_10;
    }
  }

  *(v2 + 1) = v8;
  *(v2 + 2) = v18;
  *(v2 + 3) = v17;
  if (v4)
  {
    CFRelease(v4);
  }

  v2[8] = ctu::cf::map_adapter::getInt((v3 + 32), *MEMORY[0x29EDC8860]);
  result = ctu::cf::map_adapter::getInt((v3 + 32), *MEMORY[0x29EDC8810]);
  v2[9] = result;
  return result;
}

void sub_296F7E608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F7E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va2);
  operator delete(v6);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F7E668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  operator delete(v14);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 14;
  strcpy(__p, "set WLAN state");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting WLAN completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7E7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFTypeRef __copy_helper_block_e8_32c30_ZTSN3ctu2cf11CFSharedRefIKvEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c30_ZTSN3ctu2cf11CFSharedRefIKvEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, _DWORD *a2)
{
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8698]);
  *a2 = result;
  return result;
}

uint64_t ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_228(uint64_t a1, _DWORD *a2)
{
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8980]);
  *a2 = result;
  return result;
}

void ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_233(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 16;
  strcpy(__p, "Start BLER stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Start BLER completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7EA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_238(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 15;
  strcpy(__p, "Stop BLER stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Stop BLER completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7EBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, float *a2)
{
  result = ctu::cf::map_adapter::getDouble((a1 + 32), *MEMORY[0x29EDC8AF0], 0.0);
  v5 = v4;
  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = v5;
    if (v5 > 1.0)
    {
      v6 = 1.0;
    }
  }

  *a2 = v6;
  return result;
}

void ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_247(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 16;
  strcpy(__p, "Start SINR stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Start SINR completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7ED8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_252(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 15;
  strcpy(__p, "Stop SINR stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Stop SINR completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7EEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 14;
  strcpy(__p, "Set LAA config");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set LAA config completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7F044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, void **a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRetain(v3);
  }

  Count = CFArrayGetCount(v3);
  v5 = Count;
  if (Count >= 1)
  {
    if (Count >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(24 * Count);
    v35 = &v6[3 * v5];
    bzero(v6, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
    v7 = 0;
    v34 = &v6[3 * ((24 * v5 - 24) / 0x18uLL) + 3];
    v42 = *MEMORY[0x29EDC8608];
    v8 = *MEMORY[0x29EDC8778];
    v9 = *MEMORY[0x29EDC8658];
    v41 = *MEMORY[0x29EDC8648];
    v36 = v6;
    v10 = v6 + 2;
    v39 = v3;
    v40 = *MEMORY[0x29EDC8630];
    v37 = v5;
    v38 = a2;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      v12 = ValueAtIndex;
      if (ValueAtIndex && (v13 = CFGetTypeID(ValueAtIndex), v13 == CFDictionaryGetTypeID()))
      {
        CFRetain(v12);
        CFRetain(v12);
      }

      else
      {
        v12 = 0;
      }

      v47[0] = 0xAAAAAAAAAAAAAAAALL;
      v47[1] = 0xAAAAAAAAAAAAAAAALL;
      v14 = ctu::cf::dict_adapter::dict_adapter(v47, v12);
      v15 = ctu::cf::map_adapter::copyCFDictionaryRef(v14, v42);
      if (v15)
      {
        v48 = 0xAAAAAAAAAAAAAAAALL;
        v49 = 0xAAAAAAAAAAAAAAAALL;
        v16 = ctu::cf::dict_adapter::dict_adapter(&v48, v15);
        Int = ctu::cf::map_adapter::getInt(v16, v8);
        v18 = ctu::cf::map_adapter::getInt(&v48, v9);
        MEMORY[0x29C268420](&v48);
        CFRelease(v15);
        v19 = Int | (v18 << 32);
      }

      else
      {
        v19 = 0;
      }

      v20 = ctu::cf::map_adapter::copyCFDictionaryRef(v47, v41);
      if (v20)
      {
        v48 = 0xAAAAAAAAAAAAAAAALL;
        v49 = 0xAAAAAAAAAAAAAAAALL;
        v21 = ctu::cf::dict_adapter::dict_adapter(&v48, v20);
        v22 = ctu::cf::map_adapter::getInt(v21, v8);
        v23 = ctu::cf::map_adapter::getInt(&v48, v9);
        MEMORY[0x29C268420](&v48);
        CFRelease(v20);
        v24 = v22 | (v23 << 32);
      }

      else
      {
        v24 = 0;
      }

      v25 = ctu::cf::map_adapter::copyCFDataRef(v47, v40);
      v26 = v25;
      v47[2] = v25;
      if (v25)
      {
        CFRetain(v25);
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
      ctu::cf::assign();
      if (v26)
      {
        CFRelease(v26);
      }

      if ((v49 - v48) >= 8)
      {
        v27 = vld1q_dup_f64(v48);
        v43 = vandq_s8(v27, xmmword_296FC0F50);
        v44 = vandq_s8(v27, xmmword_296FC0F40);
        v45 = vandq_s8(v27, xmmword_296FC0F60);
        v46 = vandq_s8(v27, xmmword_296FC0F70);
      }

      else
      {
        if (!v48)
        {
          v29 = 0;
          if (!v26)
          {
            goto LABEL_27;
          }

LABEL_26:
          CFRelease(v26);
          goto LABEL_27;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
      }

      v49 = v48;
      operator delete(v48);
      v28 = vorrq_s8(vorrq_s8(v46, v43), vorrq_s8(v45, v44));
      v29 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
      if (v26)
      {
        goto LABEL_26;
      }

LABEL_27:
      MEMORY[0x29C268420](v47);
      v10[-2] = v19;
      v10[-1] = v24;
      *v10 = v29;
      a2 = v38;
      v3 = v39;
      if (v12)
      {
        CFRelease(v12);
        CFRelease(v12);
      }

      ++v7;
      v10 += 3;
      if (v37 == v7)
      {
        v31 = v35;
        v30 = v36;
        v32 = v34;
        v33 = *v38;
        if (*v38)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }
  }

  v30 = 0;
  v32 = 0;
  v31 = 0;
  v33 = *a2;
  if (*a2)
  {
LABEL_32:
    a2[1] = v33;
    operator delete(v33);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

LABEL_33:
  *a2 = v30;
  a2[1] = v32;
  a2[2] = v31;
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F7F494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v12 - 152));
  MEMORY[0x29C268420](v12 - 136);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v12 - 176));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v12 - 168));
  operator delete(a12);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v12 - 184));
  _Unwind_Resume(a1);
}

void sub_296F7F554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  operator delete(__p);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v12 - 184));
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 19;
  strcpy(__p, "Set BandFilter info");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set BandFilter info completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7F714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRetain(v3);
  }

  Count = CFArrayGetCount(v3);
  v5 = Count;
  if (Count < 1)
  {
    v7 = 0;
    v18 = 0;
    v17 = 0;
    v19 = *a2;
    if (*a2)
    {
LABEL_12:
      *(a2 + 8) = v19;
      operator delete(v19);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    if (Count >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = 8 * Count;
    v7 = operator new(8 * Count);
    v21 = &v7[8 * v5];
    bzero(v7, 8 * v5);
    v8 = 0;
    v20 = &v7[v6];
    v9 = *MEMORY[0x29EDC8778];
    v10 = *MEMORY[0x29EDC8658];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
      v12 = ValueAtIndex;
      if (ValueAtIndex && (v13 = CFGetTypeID(ValueAtIndex), v13 == CFDictionaryGetTypeID()))
      {
        CFRetain(v12);
        CFRetain(v12);
        v14 = a2;
        v22[0] = 0xAAAAAAAAAAAAAAAALL;
        v22[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v22, v12);
        Int = ctu::cf::map_adapter::getInt(v22, v9);
        v16 = ctu::cf::map_adapter::getInt(v22, v10);
        MEMORY[0x29C268420](v22);
        *&v7[8 * v8] = Int | (v16 << 32);
        CFRelease(v12);
        CFRelease(v12);
        a2 = v14;
      }

      else
      {
        *&v7[8 * v8] = 0;
      }

      ++v8;
    }

    while (v5 != v8);
    v18 = v20;
    v17 = v21;
    v19 = *a2;
    if (*a2)
    {
      goto LABEL_12;
    }
  }

  *a2 = v7;
  *(a2 + 8) = v18;
  *(a2 + 16) = v17;
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F7F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F7F924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va2);
  operator delete(v4);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F7F970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  operator delete(v12);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x20uLL);
  v11 = xmmword_296FBEC30;
  strcpy(__p, "Set Scan Freq Band Filter info");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &cf);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    v5 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = cf;
    if (cf)
    {
LABEL_3:
      v9 = v5;
      goto LABEL_4;
    }
  }

  v7 = *(v4 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    goto LABEL_9;
  }

  LOWORD(__p) = 0;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Set Scan Freq Band Filter info completed", &__p, 2u);
  v5 = cf;
  v9 = cf;
  if (!cf)
  {
LABEL_9:
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v5);
  v8 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
  CFRelease(v5);
  v6 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v6);
}

void sub_296F7FAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver26getScanFreqBandFilter_syncENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2(uint64_t a1, qmi::MessageBase *a2)
{
  v4 = *(a1 + 32);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0;
  __p = operator new(0x20uLL);
  v22 = xmmword_296FBEC30;
  strcpy(__p, "Get Scan Freq Band Filter info");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &v19);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
    v5 = v19;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = v19;
    if (v19)
    {
LABEL_3:
      v6 = 0;
      v17 = v5;
      goto LABEL_23;
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v20 = Mutable;
    v18 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    v18 = 0;
  }

  v26 = 0;
  __p = MEMORY[0x29EDCA5F8];
  *&v22 = 1174405120;
  *(&v22 + 1) = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18ScanFreqBandFilterENS_3abm21GetScanFreqBandFilter8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v23 = &__block_descriptor_tmp_533;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v25 = *MEMORY[0x29EDC87F8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v10 = TlvValue;
  if (TlvValue)
  {
    v11 = v9;
    v28 = TlvValue;
    memset(v27, 170, sizeof(v27));
    tlv::parseV<coex::tlv::abm::ScanFreqBandFilter>(&v28, v9, v27);
    v12 = v28;
    if (v28)
    {
      (*(&v22 + 1))(&__p, v27);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    if (!v12)
    {
      (*MEMORY[0x29EDC91A8])(*a2, 16, v10, v11);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v13 = *(v4 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_296ECF000, v13, OS_LOG_TYPE_DEBUG, "#D Get Scan Freq Band Filter info completed", &__p, 2u);
    v5 = v19;
    v17 = v19;
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v5 = v19;
  v17 = v19;
  if (v19)
  {
LABEL_23:
    CFRetain(v5);
  }

LABEL_24:
  if (!v6 || (v14 = CFGetTypeID(v6), v14 != CFDictionaryGetTypeID()))
  {
    v16 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v17, &v16);
    v15 = v17;
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v16 = v6;
  CFRetain(v6);
  coex::CommandDriver::Callback::operator()(a1 + 40, &v17, &v16);
  CFRelease(v6);
  v15 = v17;
  if (v17)
  {
LABEL_29:
    CFRelease(v15);
  }

LABEL_30:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_296F7FE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, const void *a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v28 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a26);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a15);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver23setTimeShareConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 21;
  strcpy(__p, "Set Time share config");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set Time share config completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F80014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver20setWCI2TxAntMap_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 18;
  strcpy(__p, "Set Tx antenna map");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set Tx antenna map completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F80170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver19setAntBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 16;
  strcpy(__p, "Set Ant blocking");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set Ant blocking completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F802C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver25setClientAntBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x19uLL);
  v11 = xmmword_296FC0F80;
  strcpy(__p, "Set client Ant blocking");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &cf);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    v5 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = cf;
    if (cf)
    {
LABEL_3:
      v9 = v5;
      goto LABEL_4;
    }
  }

  v7 = *(v4 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    goto LABEL_9;
  }

  LOWORD(__p) = 0;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Set client Ant blocking completed", &__p, 2u);
  v5 = cf;
  v9 = cf;
  if (!cf)
  {
LABEL_9:
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v5);
  v8 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
  CFRelease(v5);
  v6 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v6);
}

void sub_296F80438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver33setClientAntBlockingExtended_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x28uLL);
  v11 = xmmword_296FBC2E0;
  strcpy(__p, "Set client Ant blocking extended");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &cf);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    v5 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = cf;
    if (cf)
    {
LABEL_3:
      v9 = v5;
      goto LABEL_4;
    }
  }

  v7 = *(v4 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    goto LABEL_9;
  }

  LOWORD(__p) = 0;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Set client Ant blocking extended completed", &__p, 2u);
  v5 = cf;
  v9 = cf;
  if (!cf)
  {
LABEL_9:
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v5);
  v8 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
  CFRelease(v5);
  v6 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v6);
}

void sub_296F805A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver30setTriggerAntennaBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x28uLL);
  v11 = xmmword_296FC0F90;
  strcpy(__p, "Set trigger antenna blocking params");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &cf);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    v5 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = cf;
    if (cf)
    {
LABEL_3:
      v9 = v5;
      goto LABEL_4;
    }
  }

  v7 = *(v4 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    goto LABEL_9;
  }

  LOWORD(__p) = 0;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Set triggering antenna blocking completed", &__p, 2u);
  v5 = cf;
  v9 = cf;
  if (!cf)
  {
LABEL_9:
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v5);
  v8 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
  CFRelease(v5);
  v6 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v6);
}

void sub_296F8071C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver11setCC1_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 7;
  strcpy(__p, "Set CC1");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set CC1 completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F80878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver11setCC2_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 7;
  strcpy(__p, "Set CC2");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set CC2 completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F809D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver23setLaaGpioThrottle_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 21;
  strcpy(__p, "Set LAA GPIO throttle");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set LAA GPIO throttle completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F80B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver18setGnssParams_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 15;
  strcpy(__p, "Set Gnss params");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set Gnss params completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F80C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E1CB48;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E1CBB8;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E1CB48;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E1CBB8;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_ullong *std::shared_ptr<coex::QMICommandDriver>::shared_ptr[abi:ne200100]<coex::QMICommandDriver,std::shared_ptr<coex::QMICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::QMICommandDriver>(coex::QMICommandDriver*)::{lambda(coex::QMICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E1CC58;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296F81148(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<coex::QMICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::QMICommandDriver>(coex::QMICommandDriver*)::{lambda(coex::QMICommandDriver*)#1}::operator() const(coex::QMICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<coex::QMICommandDriver *,std::shared_ptr<coex::QMICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::QMICommandDriver>(coex::QMICommandDriver*)::{lambda(coex::QMICommandDriver *)#1},std::allocator<coex::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<coex::QMICommandDriver *,std::shared_ptr<coex::QMICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::QMICommandDriver>(coex::QMICommandDriver*)::{lambda(coex::QMICommandDriver *)#1},std::allocator<coex::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<coex::QMICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::QMICommandDriver>(coex::QMICommandDriver*)::{lambda(coex::QMICommandDriver*)#1}::operator() const(coex::QMICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 280);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 276);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 288);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 288) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 288);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 288) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 288);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 288) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296F81BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296F81BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 280) > *(*result + 276))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E1CD08;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E1CCA8;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296F82378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296F82D68(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTETransportBlockCountENS_3abm9BLERStats10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  valuePtr = *a2;
  v4 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F82EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F82ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm32LTETransportBlockCountErrorCountENS_3abm9BLERStats10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  valuePtr = *a2;
  v4 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F82F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F82F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm9BLERStats10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F83044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm17LTETDDInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F830E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F8324C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12LTEOffPeriodENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  valuePtr = *a2;
  v4 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F832F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F8330C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25TDSCDMABandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F833A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21GSMBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22ONEXBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F8346C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21HDRBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F834D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm23WCDMABandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21NGCBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24NGCCarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F835FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F8377C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22GSM2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F837E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24WCDMA2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm19LTE2BandInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  coex::convert(&v9, a2);
  v6 = v9;
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v5, *MEMORY[0x29EDC87E0], v9);
  if (v6)
  {
    CFRelease(v6);
  }

  coex::convert(&v9, a2 + 2);
  v7 = v9;
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v5, *MEMORY[0x29EDC87C8], v9);
  if (v7)
  {
    CFRelease(v7);
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(*(a1 + 32), *(a1 + 40), cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F83960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18LTE2TDDInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC86D0], *a2, v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8690], a2[1], v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8770], a2[2], v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8650], a2[3], v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8640], a2[4], v4);
  if (Mutable)
  {
    v6 = CFGetTypeID(Mutable);
    if (v6 == CFDictionaryGetTypeID())
    {
      cf = Mutable;
      CFRetain(Mutable);
      v7 = Mutable;
    }

    else
    {
      v7 = 0;
      cf = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    v7 = 0;
    cf = 0;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary const*>(*(a1 + 32), *(a1 + 40), v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F83B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83B4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm13LTE2OffPeriodENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  valuePtr = *a2;
  v4 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F83BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTE2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83C5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25LTE2CarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22NGC2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25NGC2CarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F83D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm33ContinuousTxSubframeDenialsStatusENS_3abm13ConditionFail10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  cf = 0;
  v4 = operator new(8uLL);
  *v4 = v3;
  v5 = CFDataCreate(*MEMORY[0x29EDB8ED8], v4, 8);
  v6 = v5;
  if (v5)
  {
    cf = v5;
  }

  else
  {
    v6 = 0;
  }

  operator delete(v4);
  ctu::cf::insert<__CFString const*,__CFData const*>(*(a1 + 32), *(a1 + 40), v6);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F83E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296F83E64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm30WCI2TxPowerLimitEnforceFailureENS_3abm13ConditionFail10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  cf = 0;
  v4 = operator new(8uLL);
  *v4 = v3;
  v5 = CFDataCreate(*MEMORY[0x29EDB8ED8], v4, 8);
  v6 = v5;
  if (v5)
  {
    cf = v5;
  }

  else
  {
    v6 = 0;
  }

  operator delete(v4);
  ctu::cf::insert<__CFString const*,__CFData const*>(*(a1 + 32), *(a1 + 40), v6);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F83F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F83F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296F83F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm26TxPowerLimitEnforceSuccessENS_3abm16ConditionSuccess10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  cf = 0;
  v4 = operator new(8uLL);
  *v4 = v3;
  v5 = CFDataCreate(*MEMORY[0x29EDB8ED8], v4, 8);
  v6 = v5;
  if (v5)
  {
    cf = v5;
  }

  else
  {
    v6 = 0;
  }

  operator delete(v4);
  ctu::cf::insert<__CFString const*,__CFData const*>(*(a1 + 32), *(a1 + 40), v6);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F83FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F84000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296F8401C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm16ConditionSuccess10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F840F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFError *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  CFRetain(a3);
  if (cf)
  {
    CFDictionaryAddValue(a1, cf, a3);
  }

  CFRelease(a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F841E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296F84200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18LTEBandInformationENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  coex::convert(&cf, a2);
  ctu::cf::insert<__CFString const*,__CFDictionary *>(*(a1 + 32), *(a1 + 40), cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F84260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm17LTETDDInformationENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F842C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12LTEOffPeriodENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  valuePtr = *a2;
  v4 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F84348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F8435C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTEBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F843C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25TDSCDMABandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F84424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21GSMBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F84488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22ONEXBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F844EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21HDRBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F84550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm23WCDMABandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F845B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21NGCBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F84618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24LTECarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F8467C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24NGCCarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F846E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,__CFDictionary *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionarySetValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F84774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296F84798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22GSM2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F847FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24WCDMA2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F84860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTE2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F848C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25LTE2CarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F84928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22NGC2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F8498C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25NGC2CarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296F849F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm12GetWWANState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F84ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANScanID>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANScanID>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1D628;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12WLANScanInfoENS_3abm16GetWLANScanState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  v12 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v12 = Mutable;
  }

  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC86C0], *a2, v4);
  coex::convert(&v11, a2 + 1);
  v7 = v11;
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v6, *MEMORY[0x29EDC8718], v11);
  if (v7)
  {
    CFRelease(v7);
  }

  ctu::cf::insert<__CFString const*,unsigned int>(v6, *MEMORY[0x29EDC8748], a2[3], v4);
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFDictionaryGetTypeID())
    {
      cf = v6;
      CFRetain(v6);
      v9 = v6;
    }

    else
    {
      v9 = 0;
      cf = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
    cf = 0;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary const*>(*(a1 + 32), *(a1 + 40), v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F84D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F84D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F84D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F84D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F84D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm16GetWLANScanState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F84E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANConnectionHandle>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANConnectionHandle>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1D6A8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18WLANConnectionInfoENS_3abm16GetWLANConnState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v7 = (a2 + 8);
    v8 = (a2 + 16);
    v9 = (*(a2 + 16) - *(a2 + 8)) >> 3;
    if (v9 < 0)
    {
      v10 = CFGetTypeID(Mutable);
      if (v10 == CFDictionaryGetTypeID())
      {
        cf = v6;
        CFRetain(v6);
        v11 = v6;
LABEL_28:
        CFRelease(v6);
        goto LABEL_29;
      }

LABEL_27:
      v11 = 0;
      cf = 0;
      if (!v6)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v7 = (a2 + 8);
    v8 = (a2 + 16);
    v9 = (*(a2 + 16) - *(a2 + 8)) >> 3;
    if (v9 < 0)
    {
      goto LABEL_27;
    }
  }

  v12 = CFArrayCreateMutable(v4, v9, MEMORY[0x29EDB9000]);
  v13 = *v7;
  for (i = *v8; v13 != i; v13 += 2)
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    coex::convert(&value, v13);
    v15 = value;
    CFArrayAppendValue(v12, value);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  ctu::cf::insert<__CFString const*,unsigned int>(v6, *MEMORY[0x29EDC8890], *a2, v4);
  v16 = *MEMORY[0x29EDC8858];
  value = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  if (v12)
  {
    CFRetain(v12);
    if (v16)
    {
      CFDictionaryAddValue(v6, v16, v12);
    }

    CFRelease(v12);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  ctu::cf::insert<__CFString const*,unsigned int>(v6, *MEMORY[0x29EDC8860], *(a2 + 32), v4);
  ctu::cf::insert<__CFString const*,unsigned int>(v6, *MEMORY[0x29EDC8810], *(a2 + 36), v4);
  if (!v6 || (v17 = CFGetTypeID(v6), v17 != CFDictionaryGetTypeID()))
  {
    v11 = 0;
    cf = 0;
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  cf = v6;
  CFRetain(v6);
  v11 = v6;
  if (v12)
  {
LABEL_24:
    CFRelease(v12);
  }

LABEL_25:
  if (v6)
  {
    goto LABEL_28;
  }

LABEL_29:
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(*(a1 + 32), *(a1 + 40), v11);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F85198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va3);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F851D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F8523C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm16GetWLANConnState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F85328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTESINRFilteredOutputENS_3abm8SINRRead8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, int *a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  valuePtr = *a2;
  v4 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F853EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F85400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8SINRRead8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F854DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportWWANState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1D758;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportBLERStats>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1D7A8;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportFailCondition>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1D7F8;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportSuccessCondition>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1D848;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportTxAntennaState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1D898;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportNRState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1D8E8;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ReportWCI2TxAntMap>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1D938;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  cast_message_type<qmi::ResponseBase const&>::cast(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_296F857B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANScanInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *(v3 + 11) = *(result + 20);
  *(v3 + 15) = *(result + 24);
  *a2 = v3 + 19;
  *v3 = v2;
  *(v3 + 1) = 16;
  return result;
}

__n128 qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANScanInfo>::clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E1D988;
  result = *(a1 + 12);
  *(v2 + 12) = result;
  return result;
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANConnectionInfo>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E1D9D8;
  v1 = result[3];
  if (v1)
  {
    result[4] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANConnectionInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1D9D8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANConnectionInfo>::getSize(uint64_t a1)
{
  if (*(a1 + 32) == *(a1 + 24))
  {
    return 10;
  }

  else
  {
    return ((*(a1 + 32) - *(a1 + 24)) | 7) + 3;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANConnectionInfo>::write(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2;
  *(v4 + 3) = *(result + 16);
  v5 = v4 + 3;
  v6 = v3 + 8;
  *(v3 + 7) = (*(result + 32) - *(result + 24)) >> 3;
  v8 = *(result + 24);
  v7 = *(result + 32);
  if (v8 != v7)
  {
    v9 = v7 - v8 - 8;
    if (v9 < 0x58)
    {
      goto LABEL_15;
    }

    if (v3 < &v8[v9 & 0xFFFFFFFFFFFFFFF8] && v8 < v3 + (v9 & 0xFFFFFFFFFFFFFFF8) + 16)
    {
      goto LABEL_15;
    }

    v11 = (v9 >> 3) + 1;
    v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFF8);
    v6 += v12;
    v13 = &v8[v12];
    v14 = (v8 + 32);
    v15 = (v3 + 40);
    v16 = v11 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v18 = *(v14 - 2);
      v17 = *(v14 - 1);
      v20 = *v14;
      v19 = v14[1];
      v14 += 4;
      *(v15 - 2) = v18;
      *(v15 - 1) = v17;
      *v15 = v20;
      v15[1] = v19;
      v15 += 4;
      v16 -= 8;
    }

    while (v16);
    v8 = v13;
    if (v11 != (v11 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_15:
      do
      {
        *v6 = *v8;
        *(v6 + 4) = *(v8 + 1);
        v6 += 8;
        v8 += 8;
      }

      while (v8 != v7);
    }
  }

  *v6 = *(result + 48);
  *(v6 + 1) = *(result + 52);
  *a2 = v6 + 2;
  *v3 = v2;
  *(v3 + 1) = v6 + 2 - v5;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WLANConnectionInfo>::clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E1D9D8;
  v3 = *(a1 + 16);
  *(v2 + 3) = 0;
  *(v2 + 4) = v3;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - v5);
    *(v2 + 3) = v7;
    *(v2 + 4) = v7;
    v8 = &v7[v6];
    *(v2 + 5) = &v7[v6];
    memcpy(v7, v5, v6);
    *(v2 + 4) = v8;
  }

  *(v2 + 6) = *(a1 + 48);
  return v2;
}

void sub_296F85AF8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm12SetWLANState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F85BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::Policy>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DA28;
  *(result + 9) = *(a1 + 9);
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::PowerThreshold>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1DA78;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::RBThreshold>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DAC8;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ContinuousTxSubframeDenialsThreshold>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DB18;
  *(result + 3) = *(a1 + 12);
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TxFrameDenialsParameters>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DB68;
  *(result + 12) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::APTTable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DBB8;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ControllerTxPowerLimit>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DC08;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WCI2TxPowerLimit>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DC58;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LinkPathLossThreshold>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DCA8;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::RBFilterAlpha>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DCF8;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::FilteredRBThreshold>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DD48;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::WCI2TxPowerLimitTimeout>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DD98;
  *(result + 5) = *(a1 + 10);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ControllerTxPowerLimitTimeout>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DDE8;
  *(result + 5) = *(a1 + 10);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TxPowerThresholdForAdvTxNotice>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DE38;
  *(result + 5) = *(a1 + 10);
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::RbThresholdForAdvTxNotice>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1DE88;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTEInstance>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DED8;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::CoexTech>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DF28;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TechInstance>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DF78;
  *(result + 3) = *(a1 + 12);
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::NGCContinuousTxSubframeDenialsThreshold>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1DFC8;
  *(result + 3) = *(a1 + 12);
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::NGCTxFrameDenialsParameters>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E018;
  *(result + 12) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTETransportBlockCount>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTETransportBlockCount>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E068;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTETransportBlockCountErrorThreshold>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTETransportBlockCountErrorThreshold>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E0B8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9BLERStart8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F864E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8BLERStop8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F86604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTESINRMetricParameters>::write(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 12);
  *(v3 + 3) = result;
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LTESINRMetricParameters>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E108;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SINRStart8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F867AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8SINRStop8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F868C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ThresholdInPercentage>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ThresholdInPercentage>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1E158;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ThresholdOutPercentage>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ThresholdOutPercentage>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1E1A8;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::DeactivationTimerMs>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::DeactivationTimerMs>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E1F8;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::StopDeactivationTimerMs>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::StopDeactivationTimerMs>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E248;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm15SetLaaParamsReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F86C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::BandFilters>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E1E298;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::BandFilters>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E298;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

unint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::BandFilters>::getSize(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 4;
  }

  else
  {
    return 24 * ((v2 - v1 - 24) / 0x18uLL) + 28;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::BandFilters>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 3;
  *a2 = v4;
  v5 = v3 + 4;
  *(v3 + 3) = -85 * ((*(result + 24) - *(result + 16)) >> 3);
  v6 = *(result + 16);
  for (i = *(result + 24); v6 != i; v6 += 24)
  {
    *v5 = *v6;
    *(v5 + 4) = *(v6 + 4);
    *(v5 + 8) = *(v6 + 8);
    *(v5 + 12) = *(v6 + 12);
    *(v5 + 16) = *(v6 + 16);
    v5 += 24;
  }

  *a2 = v5;
  *v3 = v2;
  *(v3 + 1) = v5 - v4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::BandFilters>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E1E298;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v5);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F86EA8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm17SetBandFilterInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F86F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ScanFreqBandFilter>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E1E2E8;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ScanFreqBandFilter>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E2E8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ScanFreqBandFilter>::getSize(uint64_t a1)
{
  if (*(a1 + 24) == *(a1 + 16))
  {
    return 4;
  }

  else
  {
    return (*(a1 + 24) - *(a1 + 16)) | 4;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ScanFreqBandFilter>::write(uint64_t result, char **a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2;
  v4[3] = (*(result + 24) - *(result + 16)) >> 3;
  v5 = v4 + 3;
  v6 = v3 + 4;
  v8 = *(result + 16);
  v7 = *(result + 24);
  if (v8 != v7)
  {
    v9 = v7 - v8 - 8;
    if (v9 < 0x58)
    {
      goto LABEL_15;
    }

    if (v6 < &v8[(v9 & 0xFFFFFFFFFFFFFFF8) + 8] && v8 < &v3[(v9 & 0xFFFFFFFFFFFFFFF8) + 12])
    {
      goto LABEL_15;
    }

    v11 = (v9 >> 3) + 1;
    v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFF8);
    v6 += v12;
    v13 = &v8[v12];
    v14 = (v8 + 32);
    v15 = v3 + 36;
    result = v11 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v17 = *(v14 - 2);
      v16 = *(v14 - 1);
      v19 = *v14;
      v18 = v14[1];
      v14 += 4;
      *(v15 - 2) = v17;
      *(v15 - 1) = v16;
      *v15 = v19;
      v15[1] = v18;
      v15 += 4;
      result -= 8;
    }

    while (result);
    v8 = v13;
    if (v11 != (v11 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_15:
      do
      {
        *v6 = *v8;
        *(v6 + 1) = *(v8 + 1);
        v6 += 8;
        v8 += 8;
      }

      while (v8 != v7);
    }
  }

  *a2 = v6;
  *v3 = v2;
  *(v3 + 1) = v6 - v5;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ScanFreqBandFilter>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E1E2E8;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F87244(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21SetScanFreqBandFilter8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F87330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18ScanFreqBandFilterENS_3abm21GetScanFreqBandFilter8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  v14 = 0;
  v4 = (a2[1] - *a2) >> 3;
  if (v4 < 0)
  {
    goto LABEL_12;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], v4, MEMORY[0x29EDB9000]);
  v6 = Mutable;
  if (Mutable)
  {
    v14 = Mutable;
  }

  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    coex::convert(&value, v7);
    v9 = value;
    CFArrayAppendValue(v6, value);
    if (v9)
    {
      CFRelease(v9);
    }

    v7 += 2;
  }

  if (!v6)
  {
LABEL_12:
    v11 = 0;
    cf = 0;
  }

  else
  {
    v10 = CFGetTypeID(v6);
    if (v10 == CFArrayGetTypeID())
    {
      cf = v6;
      CFRetain(v6);
      v11 = v6;
    }

    else
    {
      v11 = 0;
      cf = 0;
    }

    CFRelease(v6);
  }

  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v11);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F874A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F874BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F874D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21GetScanFreqBandFilter8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F875BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(void *a1, char a2)
{
  v4 = operator new(0x10uLL);
  v4[8] = a2;
  *v4 = &unk_2A1E1E368;
  v4[9] = 0;
  v5 = v4 + 9;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 >= v6)
  {
    v9 = a1[1];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = v4;
      v16 = operator new(8 * v14);
      v4 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    *v17 = v4;
    v8 = v17 + 8;
    memcpy(v16, v9, v10);
    a1[1] = v16;
    a1[2] = v8;
    a1[3] = &v16[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v4;
    v8 = v7 + 8;
  }

  a1[2] = v8;
  return v5;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::Enabled>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::Enabled>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1E368;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::CallType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::CallType>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E3B8;
  *(result + 2) = *(a1 + 16);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LongDrxCycle>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::LongDrxCycle>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E408;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ShortDrxTimer>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ShortDrxTimer>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E458;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::SleepWakeDurScale>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::SleepWakeDurScale>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1E4A8;
  return result;
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TimeShareReqBandInformationSet>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E1E4F8;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TimeShareReqBandInformationSet>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E4F8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TimeShareReqBandInformationSet>::getSize(uint64_t a1)
{
  if (*(a1 + 24) == *(a1 + 16))
  {
    return 4;
  }

  else
  {
    return (*(a1 + 24) - *(a1 + 16)) | 4;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TimeShareReqBandInformationSet>::write(uint64_t result, char **a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2;
  v4[3] = (*(result + 24) - *(result + 16)) >> 3;
  v5 = v4 + 3;
  v6 = v3 + 4;
  v8 = *(result + 16);
  v7 = *(result + 24);
  if (v8 != v7)
  {
    v9 = v7 - v8 - 8;
    if (v9 < 0x58)
    {
      goto LABEL_15;
    }

    if (v6 < &v8[(v9 & 0xFFFFFFFFFFFFFFF8) + 8] && v8 < &v3[(v9 & 0xFFFFFFFFFFFFFFF8) + 12])
    {
      goto LABEL_15;
    }

    v11 = (v9 >> 3) + 1;
    v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFF8);
    v6 += v12;
    v13 = &v8[v12];
    v14 = (v8 + 32);
    v15 = v3 + 36;
    result = v11 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v17 = *(v14 - 2);
      v16 = *(v14 - 1);
      v19 = *v14;
      v18 = v14[1];
      v14 += 4;
      *(v15 - 2) = v17;
      *(v15 - 1) = v16;
      *v15 = v19;
      v15[1] = v18;
      v15 += 4;
      result -= 8;
    }

    while (result);
    v8 = v13;
    if (v11 != (v11 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_15:
      do
      {
        *v6 = *v8;
        *(v6 + 1) = *(v8 + 1);
        v6 += 8;
        v8 += 8;
      }

      while (v8 != v7);
    }
  }

  *a2 = v6;
  *v3 = v2;
  *(v3 + 1) = v6 - v5;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TimeShareReqBandInformationSet>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E1E4F8;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F87C38(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm18ConfigTimeShareReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F87D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::DefaultIdx>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::DefaultIdx>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1E548;
  return result;
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntMapInformationSet>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E1E598;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntMapInformationSet>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E598;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntMapInformationSet>::getSize(uint64_t a1)
{
  if (*(a1 + 24) == *(a1 + 16))
  {
    return 4;
  }

  else
  {
    return *(a1 + 24) - *(a1 + 16) + 4;
  }
}

unint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntMapInformationSet>::write(unint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2;
  *(v4 + 3) = *(result + 24) - *(result + 16);
  v5 = v4 + 3;
  v6 = (v3 + 4);
  v8 = *(result + 16);
  v7 = *(result + 24);
  if (v8 != v7)
  {
    v9 = v7 - v8;
    if ((v7 - v8) < 0x20)
    {
      goto LABEL_11;
    }

    if ((v3 - v8 + 4) < 0x20)
    {
      goto LABEL_11;
    }

    v6 += v9 & 0xFFFFFFFFFFFFFFE0;
    v10 = &v8[v9 & 0xFFFFFFFFFFFFFFE0];
    v11 = (v8 + 16);
    v12 = (v3 + 20);
    result = v9 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v13 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v13;
      v11 += 2;
      v12 += 2;
      result -= 32;
    }

    while (result);
    v8 = v10;
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_11:
      do
      {
        v14 = *v8++;
        *v6++ = v14;
      }

      while (v8 != v7);
    }
  }

  *a2 = v6;
  *v3 = v2;
  *(v3 + 1) = v6 - v5;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntMapInformationSet>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E1E598;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F88024(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::EnableMmwTxInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::EnableMmwTxInfo>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1E5E8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm15SetWCI2TxAntMap8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F88194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntBlockBandInformationSet>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E638;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntBlockBandInformationSet>::~TlvWrapper(void *__p)
{
  *__p = &unk_2A1E1E638;
  v2 = __p[2];
  if (v2)
  {
    v3 = __p[3];
    v4 = __p[2];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = __p[2];
    }

    __p[3] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntBlockBandInformationSet>::getSize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v2 == v1)
  {
    return 4;
  }

  v3 = v1 - v2 - 32;
  if (v3 >= 0x80)
  {
    v7 = (v3 >> 5) + 1;
    v8 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v8 = 4;
    }

    v9 = v7 - v8;
    v5 = v2 + 32 * v9;
    v10 = (v2 + 72);
    v11 = 0uLL;
    v12 = vdupq_n_s64(2uLL);
    v13 = 0uLL;
    do
    {
      v14 = v10 - 8;
      v16 = vld4q_f64(v14);
      v17 = vld4q_f64(v10);
      v11 = vaddq_s64(vbslq_s8(vceqq_s64(v16.val[1], v16.val[0]), v12, vorrq_s8(vsubq_s64(v16.val[1], v16.val[0]), v12)), v11);
      v13 = vaddq_s64(vbslq_s8(vceqq_s64(v17.val[1], v17.val[0]), v12, vorrq_s8(vsubq_s64(v17.val[1], v17.val[0]), v12)), v13);
      v10 += 16;
      v9 -= 4;
    }

    while (v9);
    v4 = vaddvq_s64(vaddq_s64(v13, v11));
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 16);
  }

  do
  {
    v15 = (*(v5 + 16) - *(v5 + 8)) | 2;
    if (*(v5 + 16) == *(v5 + 8))
    {
      v15 = 2;
    }

    v4 += v15;
    v5 += 32;
  }

  while (v5 != v1);
  return v4 + 4;
}

unint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntBlockBandInformationSet>::write(unint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = (*a2 + 4);
  v5 = *a2;
  *(v5 + 3) = (*(result + 24) - *(result + 16)) >> 5;
  v6 = v5 + 3;
  v7 = *(result + 16);
  v8 = *(result + 24);
  if (v7 == v8)
  {
    v9 = v4;
  }

  else
  {
    do
    {
      *v4 = *v7;
      v9 = v4 + 2;
      v4[1] = (*(v7 + 16) - *(v7 + 8)) >> 2;
      v11 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (v11 != v10)
      {
        v12 = v10 - v11 - 4;
        if (v12 < 0x1C)
        {
          goto LABEL_15;
        }

        result = v4 - v11 + 2;
        if (result < 0x20)
        {
          goto LABEL_15;
        }

        v13 = (v12 >> 2) + 1;
        result = v13 & 0x7FFFFFFFFFFFFFF8;
        v14 = 4 * (v13 & 0x7FFFFFFFFFFFFFF8);
        v9 = (v9 + v14);
        v15 = &v11[v14];
        v16 = (v11 + 16);
        v17 = v4 + 18;
        v18 = v13 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v19 = *v16;
          *(v17 - 1) = *(v16 - 1);
          *v17 = v19;
          v16 += 2;
          v17 += 2;
          v18 -= 8;
        }

        while (v18);
        v11 = v15;
        if (v13 != result)
        {
LABEL_15:
          do
          {
            v20 = *v11;
            v11 += 4;
            *v9++ = v20;
          }

          while (v11 != v10);
        }
      }

      v7 += 32;
      v4 = v9;
    }

    while (v7 != v8);
  }

  *a2 = v9;
  *v3 = v2;
  *(v3 + 1) = v9 - v6;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::AntBlockBandInformationSet>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E1E638;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    if (v5 < 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    *(v2 + 4) = &v6[v5];
    *(v2 + 3) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>((v2 + 16), v3, v4, v6);
  }

  return v2;
}

void sub_296F885C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v9[3] = v10;
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_296F885E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      v8 = *(v6 + 8);
      v7 = *(v6 + 16);
      v9 = v7 - v8;
      if (v7 != v8)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v10 = operator new(v7 - v8);
        *(a4 + 8) = v10;
        *(a4 + 16) = v10;
        v11 = &v10[v9];
        *(a4 + 24) = &v10[v9];
        memcpy(v10, v8, v9);
        *(a4 + 16) = v11;
      }

      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_296F886D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 8);
  if (v11)
  {
    *(v9 + 16) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v4 -= 32;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

char *std::vector<coex::tlv::abm::AntBandInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBandInfoSet&>(uint64_t a1, char *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 4 > v5)
  {
    v5 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    if (v9 >> 59)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = operator new(32 * v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[32 * v4];
  v12 = &v10[32 * v9];
  v13 = *a2;
  *(v11 + 1) = 0;
  *v11 = v13;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v15 = *(a2 + 1);
  v14 = *(a2 + 2);
  v16 = v14 - v15;
  if (v14 != v15)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v17 = operator new(v14 - v15);
    *(v11 + 1) = v17;
    *(v11 + 2) = v17;
    v18 = &v17[v16];
    *(v11 + 3) = &v17[v16];
    memcpy(v17, v15, v16);
    *(v11 + 2) = v18;
  }

  if (v2 != v3)
  {
    v19 = v2;
    v20 = v10;
    do
    {
      *v20 = *v19;
      *(v20 + 8) = *(v19 + 1);
      *(v20 + 3) = v19[3];
      v19[1] = 0;
      v19[2] = 0;
      v19[3] = 0;
      v19 += 4;
      v20 += 32;
    }

    while (v19 != v3);
    do
    {
      v21 = v2[1];
      if (v21)
      {
        v2[2] = v21;
        operator delete(v21);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v11 + 32;
  *(a1 + 16) = v12;
  if (v2)
  {
    operator delete(v2);
  }

  return v11 + 32;
}

void sub_296F88978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  std::__split_buffer<coex::tlv::abm::AntBandInfoSet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<coex::tlv::abm::AntBandInfoSet>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 32;
        *(a1 + 16) = v2 - 32;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 32;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm17SetAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F88AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TransparentMessageInformationSet>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E688;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TransparentMessageInformationSet>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E1E688;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    if (v5 < 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    *(v2 + 4) = &v6[v5];
    v7 = v6;
    do
    {
      *v7 = *v3;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      v9 = *(v3 + 8);
      v8 = *(v3 + 16);
      v10 = v8 - v9;
      if (v8 != v9)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v11 = operator new(v8 - v9);
        *(v7 + 1) = v11;
        *(v7 + 2) = v11;
        v12 = &v11[v10];
        *(v7 + 3) = &v11[v10];
        memcpy(v11, v9, v10);
        *(v7 + 2) = v12;
      }

      v3 += 32;
      v7 += 32;
    }

    while (v3 != v4);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F88CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_296F88D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  v15 = *(v13 + 8);
  if (v15)
  {
    *(v13 + 16) = v15;
    operator delete(v15);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  v11[3] = v12;
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSet>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E6D8;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        if (v6)
        {
          v7 = *(v3 - 16);
          v5 = *(v3 - 24);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 24);
              if (v8)
              {
                *(v7 - 16) = v8;
                operator delete(v8);
              }

              v7 -= 32;
            }

            while (v7 != v6);
            v5 = *(v3 - 24);
          }

          *(v3 - 16) = v6;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSet>::~TlvWrapper(void *__p)
{
  *__p = &unk_2A1E1E6D8;
  v2 = __p[2];
  if (v2)
  {
    v3 = __p[3];
    v4 = __p[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        if (v6)
        {
          v7 = *(v3 - 16);
          v5 = *(v3 - 24);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 24);
              if (v8)
              {
                *(v7 - 16) = v8;
                operator delete(v8);
              }

              v7 -= 32;
            }

            while (v7 != v6);
            v5 = *(v3 - 24);
          }

          *(v3 - 16) = v6;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = __p[2];
    }

    __p[3] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSet>::getSize(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 4;
  }

  v3 = 0;
  do
  {
    while (1)
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      if (v5 != v4)
      {
        break;
      }

      v3 += 10;
      v1 += 40;
      if (v1 == v2)
      {
        return v3 + 4;
      }
    }

    v6 = v4 - v5 - 32;
    if (v6 >= 0x80)
    {
      v9 = (v6 >> 5) + 1;
      v10 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v10 = 4;
      }

      v11 = v9 - v10;
      v8 = v5 + 32 * v11;
      v12 = (v5 + 72);
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v12 - 8;
        v18 = vld4q_f64(v15);
        v19 = vld4q_f64(v12);
        v18.val[2] = vdupq_n_s64(2uLL);
        v13 = vaddq_s64(vbslq_s8(vceqq_s64(v18.val[1], v18.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v18.val[1], v18.val[0]), v18.val[2])), v13);
        v14 = vaddq_s64(vbslq_s8(vceqq_s64(v19.val[1], v19.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v19.val[1], v19.val[0]), v18.val[2])), v14);
        v12 += 16;
        v11 -= 4;
      }

      while (v11);
      v7 = vaddvq_s64(vaddq_s64(v14, v13));
    }

    else
    {
      v7 = 0;
      v8 = *(v1 + 16);
    }

    do
    {
      v16 = (*(v8 + 16) - *(v8 + 8)) | 2;
      if (*(v8 + 16) == *(v8 + 8))
      {
        v16 = 2;
      }

      v7 += v16;
      v8 += 32;
    }

    while (v8 != v4);
    v3 += v7 + 10;
    v1 += 40;
  }

  while (v1 != v2);
  return v3 + 4;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSet>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  v5 = *a2;
  *(v5 + 3) = -51 * ((*(result + 24) - *(result + 16)) >> 3);
  v6 = v5 + 3;
  v7 = *(result + 16);
  for (i = *(result + 24); v7 != i; v7 += 40)
  {
    while (1)
    {
      *v4 = *v7;
      *(v4 + 4) = *(v7 + 4);
      *(v4 + 8) = *(v7 + 8);
      v9 = (v4 + 10);
      *(v4 + 9) = (*(v7 + 24) - *(v7 + 16)) >> 5;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v10 != v11)
      {
        break;
      }

      v4 += 10;
      v7 += 40;
      if (v7 == i)
      {
        goto LABEL_2;
      }
    }

    do
    {
      *v9 = *v10;
      v4 = (v9 + 2);
      v9[1] = (*(v10 + 16) - *(v10 + 8)) >> 2;
      result = *(v10 + 8);
      v12 = *(v10 + 16);
      if (result != v12)
      {
        v13 = v12 - result - 4;
        if (v13 < 0x1C)
        {
          goto LABEL_18;
        }

        if (&v9[-result + 2] < 0x20)
        {
          goto LABEL_18;
        }

        v14 = (v13 >> 2) + 1;
        v15 = 4 * (v14 & 0x7FFFFFFFFFFFFFF8);
        v4 += v15;
        v16 = result + v15;
        v17 = (result + 16);
        v18 = v9 + 18;
        v19 = v14 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 8;
        }

        while (v19);
        result = v16;
        if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_18:
          do
          {
            v21 = *result;
            result += 4;
            *v4 = v21;
            v4 += 4;
          }

          while (result != v12);
        }
      }

      v10 += 32;
      v9 = v4;
    }

    while (v10 != v11);
  }

LABEL_2:
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = v4 - v6;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSet>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E1E6D8;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v5 >> 3) >= 0x666666666666667)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    *(v2 + 4) = &v6[v5];
    *(v2 + 3) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBlockClientInfoSet>,coex::tlv::abm::AntBlockClientInfoSet*,coex::tlv::abm::AntBlockClientInfoSet*,coex::tlv::abm::AntBlockClientInfoSet*>((v2 + 16), v3, v4, v6);
  }

  return v2;
}

void sub_296F89260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v9[3] = v10;
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_296F89280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void coex::tlv::abm::AntBlockClientInfoSet::~AntBlockClientInfoSet(coex::tlv::abm::AntBlockClientInfoSet *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = *(this + 2);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 2);
    }

    *(this + 3) = v2;
    operator delete(v4);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBlockClientInfoSet>,coex::tlv::abm::AntBlockClientInfoSet*,coex::tlv::abm::AntBlockClientInfoSet*,coex::tlv::abm::AntBlockClientInfoSet*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 8) = *(v6 + 8);
      *v4 = v7;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v9 - v8;
      if (v9 != v8)
      {
        if (v10 < 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v11 = operator new(v9 - v8);
        *(v4 + 16) = v11;
        *(v4 + 24) = v11;
        *(v4 + 32) = &v11[v10];
        *(v4 + 24) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>(v4 + 16, v8, v9, v11);
        v4 = v13;
      }

      v6 += 5;
      v4 += 40;
      v13 = v4;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_296F89410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a15);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<coex::tlv::abm::AntBlockClientInfoSet>,coex::tlv::abm::AntBlockClientInfoSet*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F89430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  *(v15 + 24) = v16;
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a15);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<coex::tlv::abm::AntBlockClientInfoSet>,coex::tlv::abm::AntBlockClientInfoSet*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<coex::tlv::abm::AntBlockClientInfoSet>,coex::tlv::abm::AntBlockClientInfoSet*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 24);
      if (v6)
      {
        v7 = *(v3 - 16);
        v5 = *(v3 - 24);
        if (v7 != v6)
        {
          do
          {
            v8 = *(v7 - 24);
            if (v8)
            {
              *(v7 - 16) = v8;
              operator delete(v8);
            }

            v7 -= 32;
          }

          while (v7 != v6);
          v5 = *(v3 - 24);
        }

        *(v3 - 16) = v6;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 3);
          if (v7)
          {
            v8 = *(v4 - 2);
            v6 = *(v4 - 3);
            if (v8 != v7)
            {
              do
              {
                v9 = *(v8 - 24);
                if (v9)
                {
                  *(v8 - 16) = v9;
                  operator delete(v9);
                }

                v8 -= 32;
              }

              while (v8 != v7);
              v6 = *(v4 - 3);
            }

            *(v4 - 2) = v7;
            operator delete(v6);
          }

          v4 -= 40;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

char *std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBlockClientInfoSet&>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3) + 1;
  if (v5 > 0x666666666666666)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v2) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (v8 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v9 = operator new(40 * v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[8 * (v4 >> 3)];
  v25 = &v9[40 * v8];
  *v10 = *a2;
  v10[8] = *(a2 + 8);
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = v11 - v12;
  if (v11 == v12)
  {
    v15 = v10 + 40;
    v16 = &v10[-v4];
    if (v2 == v3)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (v13 < 0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v14 = operator new(v11 - v12);
  *(v10 + 2) = v14;
  *(v10 + 3) = v14;
  *(v10 + 4) = &v14[v13];
  *(v10 + 3) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>((v10 + 16), v12, v11, v14);
  v2 = *a1;
  v3 = *(a1 + 8);
  v15 = v10 + 40;
  v16 = (v10 - (v3 - *a1));
  if (*a1 != v3)
  {
LABEL_16:
    v17 = v2;
    v18 = v16;
    do
    {
      v19 = *v17;
      v18[8] = *(v17 + 8);
      *v18 = v19;
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      *(v18 + 2) = 0;
      *(v18 + 1) = *(v17 + 1);
      *(v18 + 4) = v17[4];
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = 0;
      v17 += 5;
      v18 += 40;
    }

    while (v17 != v3);
    do
    {
      v21 = v2[2];
      if (v21)
      {
        v22 = v2[3];
        v20 = v2[2];
        if (v22 != v21)
        {
          do
          {
            v23 = *(v22 - 24);
            if (v23)
            {
              *(v22 - 16) = v23;
              operator delete(v23);
            }

            v22 -= 32;
          }

          while (v22 != v21);
          v20 = v2[2];
        }

        v2[3] = v21;
        operator delete(v20);
      }

      v2 += 5;
    }

    while (v2 != v3);
    v2 = *a1;
  }

LABEL_29:
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v25;
  if (v2)
  {
    operator delete(v2);
  }

  return v15;
}

void sub_296F897F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  *(v3 + 24) = v2;
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va1);
  std::__split_buffer<coex::tlv::abm::AntBlockClientInfoSet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_296F89814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBandInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va1);
  std::__split_buffer<coex::tlv::abm::AntBlockClientInfoSet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<coex::tlv::abm::AntBlockClientInfoSet>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 40;
        *(a1 + 16) = i - 40;
        v5 = *(i - 24);
        if (v5)
        {
          break;
        }

        i -= 40;
        if (v4 == v2)
        {
          goto LABEL_12;
        }
      }

      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        break;
      }

      *(i - 16) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_12;
      }
    }

    do
    {
      v8 = *(v6 - 24);
      if (v8)
      {
        *(v6 - 16) = v8;
        operator delete(v8);
      }

      v6 -= 32;
    }

    while (v6 != v5);
    v9 = *(i - 24);
    *(i - 16) = v5;
    operator delete(v9);
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm23SetClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F899C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSetExtended>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1E728;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        if (v6)
        {
          v7 = *(v3 - 16);
          v5 = *(v3 - 24);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 24);
              if (v8)
              {
                *(v7 - 16) = v8;
                operator delete(v8);
              }

              v7 -= 32;
            }

            while (v7 != v6);
            v5 = *(v3 - 24);
          }

          *(v3 - 16) = v6;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSetExtended>::~TlvWrapper(void *__p)
{
  *__p = &unk_2A1E1E728;
  v2 = __p[2];
  if (v2)
  {
    v3 = __p[3];
    v4 = __p[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        if (v6)
        {
          v7 = *(v3 - 16);
          v5 = *(v3 - 24);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 24);
              if (v8)
              {
                *(v7 - 16) = v8;
                operator delete(v8);
              }

              v7 -= 32;
            }

            while (v7 != v6);
            v5 = *(v3 - 24);
          }

          *(v3 - 16) = v6;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = __p[2];
    }

    __p[3] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSetExtended>::getSize(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 4;
  }

  v3 = 0;
  do
  {
    while (1)
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      if (v5 != v4)
      {
        break;
      }

      v3 += 10;
      v1 += 40;
      if (v1 == v2)
      {
        return v3 + 4;
      }
    }

    v6 = v4 - v5 - 32;
    if (v6 >= 0x80)
    {
      v9 = (v6 >> 5) + 1;
      v10 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v10 = 4;
      }

      v11 = v9 - v10;
      v8 = v5 + 32 * v11;
      v12 = (v5 + 72);
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v12 - 8;
        v18 = vld4q_f64(v15);
        v19 = vld4q_f64(v12);
        v18.val[2] = vdupq_n_s64(2uLL);
        v13 = vaddq_s64(vbslq_s8(vceqq_s64(v18.val[1], v18.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v18.val[1], v18.val[0]), v18.val[2])), v13);
        v14 = vaddq_s64(vbslq_s8(vceqq_s64(v19.val[1], v19.val[0]), v18.val[2], vorrq_s8(vsubq_s64(v19.val[1], v19.val[0]), v18.val[2])), v14);
        v12 += 16;
        v11 -= 4;
      }

      while (v11);
      v7 = vaddvq_s64(vaddq_s64(v14, v13));
    }

    else
    {
      v7 = 0;
      v8 = *(v1 + 16);
    }

    do
    {
      v16 = (*(v8 + 16) - *(v8 + 8)) | 2;
      if (*(v8 + 16) == *(v8 + 8))
      {
        v16 = 2;
      }

      v7 += v16;
      v8 += 32;
    }

    while (v8 != v4);
    v3 += v7 + 10;
    v1 += 40;
  }

  while (v1 != v2);
  return v3 + 4;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSetExtended>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  v5 = *a2;
  *(v5 + 3) = -51 * ((*(result + 24) - *(result + 16)) >> 3);
  v6 = v5 + 3;
  v7 = *(result + 16);
  for (i = *(result + 24); v7 != i; v7 += 40)
  {
    while (1)
    {
      *v4 = *v7;
      *(v4 + 4) = *(v7 + 4);
      *(v4 + 8) = *(v7 + 8);
      v9 = (v4 + 10);
      *(v4 + 9) = (*(v7 + 24) - *(v7 + 16)) >> 5;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v10 != v11)
      {
        break;
      }

      v4 += 10;
      v7 += 40;
      if (v7 == i)
      {
        goto LABEL_2;
      }
    }

    do
    {
      *v9 = *v10;
      v4 = (v9 + 2);
      v9[1] = (*(v10 + 16) - *(v10 + 8)) >> 2;
      result = *(v10 + 8);
      v12 = *(v10 + 16);
      if (result != v12)
      {
        v13 = v12 - result - 4;
        if (v13 < 0x1C)
        {
          goto LABEL_18;
        }

        if (&v9[-result + 2] < 0x20)
        {
          goto LABEL_18;
        }

        v14 = (v13 >> 2) + 1;
        v15 = 4 * (v14 & 0x7FFFFFFFFFFFFFF8);
        v4 += v15;
        v16 = result + v15;
        v17 = (result + 16);
        v18 = v9 + 18;
        v19 = v14 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 8;
        }

        while (v19);
        result = v16;
        if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_18:
          do
          {
            v21 = *result;
            result += 4;
            *v4 = v21;
            v4 += 4;
          }

          while (result != v12);
        }
      }

      v10 += 32;
      v9 = v4;
    }

    while (v10 != v11);
  }

LABEL_2:
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = v4 - v6;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientAntBlockInformationSetExtended>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E1E728;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v5 >> 3) >= 0x666666666666667)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    *(v2 + 4) = &v6[v5];
    *(v2 + 3) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBlockClientInfoSet>,coex::tlv::abm::AntBlockClientInfoSet*,coex::tlv::abm::AntBlockClientInfoSet*,coex::tlv::abm::AntBlockClientInfoSet*>((v2 + 16), v3, v4, v6);
  }

  return v2;
}

void sub_296F89F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v9[3] = v10;
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_296F89F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientId>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ClientId>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E778;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::Duration>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::Duration>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E7C8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm27TriggerClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F8A144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::createTLV<coex::tlv::abm::CriticalCarrierId>(void *a1)
{
  v2 = operator new(0x10uLL);
  v2[8] = 18;
  *v2 = &unk_2A1E1E818;
  *(v2 + 3) = 0;
  v3 = v2 + 12;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = v2;
      v14 = operator new(8 * v12);
      v2 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[8 * v9];
    *v15 = v2;
    v6 = v15 + 8;
    memcpy(v14, v7, v8);
    a1[1] = v14;
    a1[2] = v6;
    a1[3] = &v14[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3;
}