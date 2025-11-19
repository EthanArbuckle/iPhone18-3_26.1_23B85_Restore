void sub_29829840C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a13);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a20);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v26 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v26 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::CreateDictionaryFromPlistData(const __CFData **a1, __CFError **a2)
{
  v41 = 0;
  v42 = 0;
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "inData");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Failed to create data\n", v14, v15, v16, v33);
LABEL_20:
    v10 = 10;
    goto LABEL_30;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v42;
  v6 = CFPropertyListCreateWithData(v5, v3, 0, 0, error);
  v41 = v6;
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "outPlist");
    gBBULogMaskGet();
    v20 = *a1;
    v38 = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    v21 = error;
    CFOBJ_STR(&v38, error);
    if (v40 < 0)
    {
      LOBYTE(v21) = error[0];
    }

    cf = v42;
    if (v42)
    {
      CFRetain(v42);
    }

    CFOBJ_STR(&cf, __p);
    _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Failed to deserialize dictionary %s error %s\n", v22, v23, v24, v21);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v40 < 0)
    {
      operator delete(error[0]);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    goto LABEL_20;
  }

  v7 = CFGetTypeID(v6);
  if (v7 == CFDictionaryGetTypeID())
  {
    __p[0] = v6;
    v8 = ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(error, __p);
    v9 = *a2;
    *a2 = error[0];
    error[0] = v9;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v8);
    v10 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()");
    gBBULogMaskGet();
    v34 = v6;
    CFRetain(v6);
    CFOBJ_STR(&v34, error);
    if (v40 >= 0)
    {
      v31 = error;
    }

    else
    {
      LOBYTE(v31) = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Deserialized plist data is not a dictionary: %s\n", v28, v29, v30, v31);
    if (v40 < 0)
    {
      operator delete(error[0]);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    v10 = 10;
  }

  CFRelease(v6);
LABEL_30:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v42);
  return v10;
}

void sub_29829878C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::IsNotificationForTwoPhase(CFDataRef *a1, const void **a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v4, Length, *a1);
  v20[2] = MutableCopy;
  v20[0] = CFDataGetMutableBytePtr(MutableCopy);
  v20[1] = CFDataGetLength(MutableCopy);
  if (DERDecodeSeqContentInit(v20, v23))
  {
    goto LABEL_2;
  }

  if (DERDecodeSeqNext(v23, &v21) || v21 != 0xA00000000000002BLL)
  {
    gBBULogMaskGet();
    v10 = "DR_Success == der_ret && TAG_RNLR == dec.tag";
    goto LABEL_4;
  }

  if (DERDecodeSeqContentInit(v22, v23))
  {
    goto LABEL_2;
  }

  if (DERDecodeSeqNext(v23, &v21) || v21 != 0xA000000000000000)
  {
    gBBULogMaskGet();
    v10 = "DR_Success == der_ret && TAG_RNLR_NL == dec.tag";
    goto LABEL_4;
  }

  v13 = v22[0];
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  if (DERDecodeSeqContentInit(v22, v23))
  {
LABEL_2:
    gBBULogMaskGet();
LABEL_3:
    v10 = "DR_Success == der_ret";
LABEL_4:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, v10);
    goto LABEL_5;
  }

  if (DERDecodeSeqNext(v23, &v21) || v21 != 0xA000000000000037)
  {
    gBBULogMaskGet();
    v10 = "DR_Success == der_ret && TAG_PIR == dec.tag";
    goto LABEL_4;
  }

  if (DERParseSequenceContent(v22, 3u, &eUICC::TwoPhaseProv::profileInstallationResultSpec, v18, 0x20uLL))
  {
    gBBULogMaskGet();
    goto LABEL_3;
  }

  if (v19)
  {
    BytePtr = CFDataGetBytePtr(*a1);
    v16 = CFDataGetLength(*a1);
    v17 = CFDataCreate(v4, &BytePtr[v13 - MutableBytePtr], v16 - (v13 - MutableBytePtr));
    ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v17);
    if (*a2)
    {
      v11 = 1;
      if (!MutableCopy)
      {
        return v11;
      }

      goto LABEL_6;
    }

    gBBULogMaskGet();
    v10 = "ntf";
    goto LABEL_4;
  }

LABEL_5:
  v11 = 0;
  if (MutableCopy)
  {
LABEL_6:
    CFRelease(MutableCopy);
  }

  return v11;
}

void sub_298298A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

BOOL eUICC::TwoPhaseProv::IsProvTxIdAvailable(CFDataRef *a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v2, Length, *a1);
  v13[2] = MutableCopy;
  v13[0] = CFDataGetMutableBytePtr(MutableCopy);
  v13[1] = CFDataGetLength(MutableCopy);
  if (DERDecodeSeqContentInit(v13, v16))
  {
    gBBULogMaskGet();
    v8 = "DR_Success == DERDecodeSeqContentInit(&gps_der, &seq)";
LABEL_9:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, v8);
    v9 = 0;
    goto LABEL_10;
  }

  if (DERDecodeSeqNext(v16, &v14))
  {
LABEL_4:
    gBBULogMaskGet();
    v8 = "DR_Success == DERDecodeSeqNext(&seq, &dec)";
    goto LABEL_9;
  }

  if (v14 != 0xE00000000000002DLL)
  {
    gBBULogMaskGet();
    v8 = "TAG_GPS == dec.tag";
    goto LABEL_9;
  }

  if (DERDecodeSeqContentInit(v15, v16))
  {
    goto LABEL_7;
  }

  if (DERDecodeSeqNext(v16, &v14))
  {
    goto LABEL_4;
  }

  if (v14 != 0xA000000000000000)
  {
    gBBULogMaskGet();
    v8 = "TAG_GPS_PS == dec.tag";
    goto LABEL_9;
  }

  if (DERDecodeSeqContentInit(v15, v16))
  {
LABEL_7:
    gBBULogMaskGet();
    v8 = "DR_Success == DERDecodeSeqContentInit(&dec.content, &seq)";
    goto LABEL_9;
  }

  do
  {
    v11 = DERDecodeSeqNext(v16, &v14);
    v9 = v11 != 1;
    if (v11 == 1)
    {
      break;
    }
  }

  while (v14 != 0xA000000000000003 || v15[1] == 0);
LABEL_10:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v9;
}

void sub_298298C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::ComposeNsr(CFDataRef *a1, const void **a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v4 = CFDataGetLength(*a1) + 7;
  v5 = MEMORY[0x2A1C7C4A8]();
  v6 = &v17 - ((v5 + 22) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5 + 14;
  v8 = &v17 - ((MEMORY[0x2A1C7C4A8]() + 29) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4;
  v20[1] = CFDataGetLength(*a1);
  v20[0] = CFDataGetBytePtr(*a1);
  if (DEREncodeSequenceFromObject(0xA000000000000000, v20, 0x10uLL, 1u, &eUICC::TwoPhaseProv::retrieveNtfListSearchCriteriaSpec, v6, v4, &v19) || (v19 = v7, DEREncodeSequenceFromObject(0xA000000000000030, v20, 0x10uLL, 1u, &eUICC::TwoPhaseProv::notificationSentSpec, v8, v7, &v19)))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "DR_Success == enc_ret");
    result = 10;
  }

  else
  {
    v18 = CFDataCreate(*MEMORY[0x29EDB8ED8], v8, v19);
    ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v18);
    if (*a2)
    {
      result = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "nsr_req.get()");
      result = 17;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::TwoPhaseProv::ComposeDisableReq(CFDataRef *a1, const void **a2)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v17 = 0;
  v4 = CFDataGetLength(*a1) + 22;
  v5 = &v15 - ((MEMORY[0x2A1C7C4A8]() + 37) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v18[1] = CFDataGetLength(*a1);
  BytePtr = CFDataGetBytePtr(*a1);
  v18[3] = 1;
  v18[0] = BytePtr;
  v18[2] = &v17;
  if (DEREncodeSequenceFromObject(0xA000000000000032, v18, 0x20uLL, 2u, &eUICC::TwoPhaseProv::profileOperationSpec, v5, v4, &v16))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "DR_Success == enc_ret");
    result = 10;
  }

  else
  {
    v15 = CFDataCreate(*MEMORY[0x29EDB8ED8], v5, v16);
    ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v15);
    if (*a2)
    {
      result = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "disable_req.get()");
      result = 17;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::TwoPhaseProv::ComposeDeleteReq(CFDataRef *a1, const void **a2)
{
  v17[4] = *MEMORY[0x29EDCA608];
  v4 = CFDataGetLength(*a1) + 14;
  v5 = &v14 - ((MEMORY[0x2A1C7C4A8]() + 29) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17[1] = CFDataGetLength(*a1);
  v17[0] = CFDataGetBytePtr(*a1);
  if (DEREncodeSequenceFromObject(0xA000000000000033, v17, 0x20uLL, 1u, &eUICC::TwoPhaseProv::deleteProfileSpec, v5, v4, &v16))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "DR_Success == enc_ret");
    result = 10;
  }

  else
  {
    v15 = CFDataCreate(*MEMORY[0x29EDB8ED8], v5, v16);
    ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v15);
    if (*a2)
    {
      result = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "delete_req.get()");
      result = 17;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::TwoPhaseProv::ComposeRnl(CFDataRef *a1, const void **a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = CFDataGetLength(*a1) + 7;
  v5 = MEMORY[0x2A1C7C4A8]();
  v6 = &v17 - ((v5 + 22) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5 + 14;
  v8 = &v17 - ((MEMORY[0x2A1C7C4A8]() + 29) & 0xFFFFFFFFFFFFFFF0);
  v20 = v6;
  v21 = 0;
  v19 = v4;
  Length = CFDataGetLength(*a1);
  BytePtr = CFDataGetBytePtr(*a1);
  if (DEREncodeSequenceFromObject(0xA000000000000000, &v20, 0x20uLL, 1u, &eUICC::TwoPhaseProv::retrieveNtfListSeqNumSpec, v6, v4, &v19) || (v21 = v19, v19 = v7, DEREncodeSequenceFromObject(0xA00000000000002BLL, &v20, 0x20uLL, 1u, &eUICC::TwoPhaseProv::retrieveNtfListSearchCriteriaSpec, v8, v7, &v19)))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "DR_Success == enc_ret");
    result = 10;
  }

  else
  {
    v18 = CFDataCreate(*MEMORY[0x29EDB8ED8], v8, v19);
    ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v18);
    if (*a2)
    {
      result = 0;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "rnl_req.get()");
      result = 17;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICC::TwoPhaseProv::GetNextBppSegment(_DWORD *a1, CFDataRef *a2, void *a3, unint64_t *a4)
{
  __dst[35] = *MEMORY[0x29EDCA608];
  v25[0] = &CFDataGetBytePtr(*a2)[*a3];
  v25[1] = CFDataGetLength(*a2) - *a3;
  *a4 = 0;
  memcpy(__dst, &unk_2982C4020, 0x118uLL);
  std::map<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>::map[abi:ne200100](v24, __dst, 7);
  if (!DERDecodeSeqContentInit(v25, v29))
  {
    if (DERDecodeSeqNext(v29, &v26))
    {
LABEL_4:
      gBBULogMaskGet();
      v11 = "DR_Success == DERDecodeSeqNext(&seq, &decoded)";
      goto LABEL_5;
    }

    __dst[0] = a1;
    if ((std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v24, a1, &std::piecewise_construct, __dst)[5] & 1) == 0)
    {
      __dst[0] = a1;
      v15 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v24, a1, &std::piecewise_construct, __dst);
      if (v15[6] != v26)
      {
        gBBULogMaskGet();
        v11 = "tag_props[seg].optional || tag_props[seg].topLevelTag == decoded.tag";
        goto LABEL_5;
      }
    }

    if (*a1 > 6u)
    {
      goto LABEL_20;
    }

    v16 = 1 << *a1;
    if ((v16 & 0x13) != 0)
    {
      __dst[0] = a1;
      v20 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v24, a1, &std::piecewise_construct, __dst);
      if (v20[6] == v26)
      {
        if (DERDecodeSeqContentInit(&v27, v29))
        {
          gBBULogMaskGet();
          v11 = "DR_Success == DERDecodeSeqContentInit(&decoded.content, &seq)";
          goto LABEL_5;
        }

        if (DERDecodeSeqNext(v29, &v26))
        {
          goto LABEL_4;
        }

        __dst[0] = a1;
        if ((std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v24, a1, &std::piecewise_construct, __dst)[5] & 1) == 0)
        {
          __dst[0] = a1;
          v23 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v24, a1, &std::piecewise_construct, __dst);
          if (v23[7] != v26)
          {
            gBBULogMaskGet();
            v11 = "tag_props[seg].optional || (tag_props[seg].innerTag == decoded.tag)";
            goto LABEL_5;
          }
        }

        *a4 = v27 + v28 - v25[0];
      }
    }

    else
    {
      if ((v16 & 0x24) != 0)
      {
        v17 = v28;
        v18 = v27 - v25[0];
        *a4 = v27 - v25[0];
        eUICC::TwoPhaseProv::GetNextBppSegment(eUICC::TwoPhaseProv::eBppSegment &,ctu::cf::CFSharedRef<__CFData const> &,unsigned long &,unsigned long &)::offset_seq_end = v18 + *a3 + v17;
        __dst[0] = a1;
        v19 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v24, a1, &std::piecewise_construct, __dst);
LABEL_26:
        v12 = 0;
        *a1 = *(v19 + 16);
        goto LABEL_6;
      }

      v21 = v27 + v28 - v25[0];
      *a4 = v21;
      v22 = *a3 + v21;
      if (v22 > eUICC::TwoPhaseProv::GetNextBppSegment(eUICC::TwoPhaseProv::eBppSegment &,ctu::cf::CFSharedRef<__CFData const> &,unsigned long &,unsigned long &)::offset_seq_end)
      {
        gBBULogMaskGet();
        v11 = "offset + length <= offset_seq_end";
        goto LABEL_5;
      }

      if (v22 != eUICC::TwoPhaseProv::GetNextBppSegment(eUICC::TwoPhaseProv::eBppSegment &,ctu::cf::CFSharedRef<__CFData const> &,unsigned long &,unsigned long &)::offset_seq_end)
      {
LABEL_20:
        v12 = 0;
        goto LABEL_6;
      }
    }

    __dst[0] = a1;
    v19 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v24, a1, &std::piecewise_construct, __dst);
    goto LABEL_26;
  }

  gBBULogMaskGet();
  v11 = "DR_Success == DERDecodeSeqContentInit(&content, &seq)";
LABEL_5:
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, v11);
  v12 = 27;
LABEL_6:
  std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(v24, v24[1]);
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t eUICC::TwoPhaseProv::StringifyDataBuffer@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      if (a2)
      {
        v7 = v21;
        v8 = v21;
        *(&v22 + *(v21 - 24)) = *(&v22 + *(v21 - 24)) & 0xFFFFFFB5 | 8;
        v9 = (&v21 + *(v8 - 24));
        if (v9[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v9);
          v10 = std::locale::use_facet(&v31, MEMORY[0x29EDC93D0]);
          (v10->__vftable[2].~facet_0)(v10, 32);
          std::locale::~locale(&v31);
          v7 = v21;
          v5 = *a1;
        }

        v9[1].__fmtflags_ = 48;
        *(v24 + *(v7 - 24)) = 2;
        MEMORY[0x29C286A60](&v21, *(v5 + v6));
      }

      else
      {
        LOBYTE(v31.__locale_) = *(v5 + v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &v31, 1);
      }

      ++v6;
      v5 = *a1;
    }

    while (a1[1] - *a1 > v6);
  }

  if ((v29 & 0x10) != 0)
  {
    v13 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v13 = v25;
    }

    v14 = v24[3];
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v11 = 0;
      v12 = a3;
      *(a3 + 23) = 0;
      goto LABEL_25;
    }

    v14 = v24[0];
    v13 = v24[2];
  }

  v12 = a3;
  v11 = v13 - v14;
  if (v13 - v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v11 | 7) + 1;
    }

    v16 = operator new(v15);
    a3[1] = v11;
    a3[2] = v15 | 0x8000000000000000;
    *a3 = v16;
    v12 = v16;
    goto LABEL_24;
  }

  *(a3 + 23) = v11;
  if (v11)
  {
LABEL_24:
    memmove(v12, v14, v11);
  }

LABEL_25:
  *(v12 + v11) = 0;
  v20[0] = *MEMORY[0x29EDC9528];
  v17 = *(MEMORY[0x29EDC9528] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v21 = v17;
  v22 = MEMORY[0x29EDC9570] + 16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C286CA0](&v30);
}

void sub_298299BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x29EDC9528]);
  MEMORY[0x29C286CA0](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_298299E94(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](v1);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::LogOversizedPlain(uint64_t result)
{
  v1 = result;
  v2 = *(result + 23);
  v3 = v2;
  if (*(result + 23) < 0)
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = 0;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v2 = *(v1 + 8);
LABEL_6:
    while (v2 > v4)
    {
      gBBULogMaskGet();
      LOBYTE(v11) = v1;
      if (*(v1 + 23) < 0)
      {
        v11 = *v1;
      }

      result = _BBULogPlain(0, "%s\n", v5, v6, v7, v8, v9, v10, v11 + v4);
      v4 += 1023;
      v2 = *(v1 + 23);
      if ((v2 & 0x80) != 0)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t eUICC::TwoPhaseProv::IsNotificationSentRspSuccess(CFDataRef *a1)
{
  v12 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v2, Length, *a1);
  v11[2] = MutableCopy;
  v11[0] = CFDataGetMutableBytePtr(MutableCopy);
  v11[1] = CFDataGetLength(MutableCopy);
  if (DERDecodeSeqContentInit(v11, v15))
  {
    goto LABEL_2;
  }

  if (DERDecodeSeqNext(v15, &v13) || v13 != 0xA000000000000030)
  {
    gBBULogMaskGet();
    v8 = "DR_Success == der_ret && TAG_NS == dec.tag";
  }

  else
  {
    if (DERDecodeSeqContentInit(v14, v15) || DERDecodeSeqNext(v15, &v13))
    {
      goto LABEL_2;
    }

    if (v13 == 0x8000000000000000)
    {
      if (DERParseInteger(v14, &v12))
      {
LABEL_2:
        gBBULogMaskGet();
        v8 = "DR_Success == der_ret";
        goto LABEL_3;
      }

      if (!v12)
      {
        v9 = 1;
        if (!MutableCopy)
        {
          return v9;
        }

        goto LABEL_4;
      }

      gBBULogMaskGet();
      v8 = "DELETE_NOTIFICATION_STATUS_OK == del_status";
    }

    else
    {
      gBBULogMaskGet();
      v8 = "TAG_SEQN == dec.tag";
    }
  }

LABEL_3:
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, v8);
  v9 = 0;
  if (MutableCopy)
  {
LABEL_4:
    CFRelease(MutableCopy);
  }

  return v9;
}

void sub_29829A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::ExtractDataFromPbiRsp(CFDataRef *a1, const void **a2, const void **a3)
{
  v6 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v6, Length, *a1);
  v26[2] = MutableCopy;
  v26[0] = CFDataGetMutableBytePtr(MutableCopy);
  v26[1] = CFDataGetLength(MutableCopy);
  if (!a2 || !a3)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "(nullptr != pir) && (nullptr != err)");
    v16 = 10;
    if (!MutableCopy)
    {
      return v16;
    }

    goto LABEL_15;
  }

  if (DERDecodeSeqContentInit(v26, v31))
  {
    gBBULogMaskGet();
    v12 = "DR_Success == DERDecodeSeqContentInit(&pbi_der, &seq)";
LABEL_13:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, v12);
    goto LABEL_14;
  }

  if (DERDecodeSeqNext(v31, &v29))
  {
    gBBULogMaskGet();
    v12 = "DR_Success == DERDecodeSeqNext(&seq, &dec)";
    goto LABEL_13;
  }

  if (v29 != 0xE00000000000002ELL)
  {
    gBBULogMaskGet();
    v12 = "TAG_PBI == dec.tag";
    goto LABEL_13;
  }

  if (DERDecodeSeqContentInit(v30, v31))
  {
    gBBULogMaskGet();
    v12 = "DR_Success == DERDecodeSeqContentInit(&dec.content, &seq)";
    goto LABEL_13;
  }

  if (DERDecodeSeqNext(v31, &v27))
  {
    gBBULogMaskGet();
    v12 = "DR_Success == DERDecodeSeqNext(&seq, &dec_nested)";
    goto LABEL_13;
  }

  switch(v27)
  {
    case 0x2000000000000010uLL:
      goto LABEL_28;
    case 2uLL:
      v25 = 0;
      if (DERParseInteger(&v28, &v25))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v18, v19, v20, "DR_Success == DERParseInteger(&dec_nested.content, &err_val)");
        break;
      }

      v21 = -127 - v25;
      if ((v25 - 1) >= 5)
      {
        v21 = -254;
      }

      valuePtr = v21;
      v22 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      v23 = *a3;
      *a3 = v22;
      v32 = v23;
      ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&v32);
LABEL_28:
      v16 = 0;
      if (!MutableCopy)
      {
        return v16;
      }

      goto LABEL_15;
    case 0xA000000000000037:
      v32 = CFDataCreate(v6, v30[0], v30[1]);
      ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v32);
      goto LABEL_28;
  }

LABEL_14:
  v16 = 27;
  if (MutableCopy)
  {
LABEL_15:
    CFRelease(MutableCopy);
  }

  return v16;
}

void sub_29829A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

BOOL eUICC::TwoPhaseProv::LdrVerSupportsTwoPhaseInstall(eUICC::TwoPhaseProv *this)
{
  v1 = this;
  v12 = *MEMORY[0x29EDCA608];
  v9 = 0x8710870387028700;
  v10 = -30944;
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v9, &v11, 5);
  if ((v1 & 0x8000) == 0)
  {
    v2 = v1 > 0x70F;
    if (!__p)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v1 >> 8 < 0x87)
  {
    v2 = 0;
    if (!__p)
    {
      goto LABEL_14;
    }

LABEL_13:
    v7 = __p;
    operator delete(__p);
    goto LABEL_14;
  }

  v3 = __p;
  if (__p != v7)
  {
    v3 = __p;
    while (*v3 != v1)
    {
      if (++v3 == v7)
      {
        v3 = v7;
        break;
      }
    }
  }

  v2 = v7 == v3;
  if (__p)
  {
    goto LABEL_13;
  }

LABEL_14:
  v4 = *MEMORY[0x29EDCA608];
  return v2;
}

const void **std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(void *a1, const void **a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = std::vector<ctu::cf::CFSharedRef<__CFData const>>::__emplace_back_slow_path<ctu::cf::CFSharedRef<__CFData const> const&>(a1, a2);
  }

  else
  {
    v4 = ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(v3, a2) + 1;
  }

  a1[1] = v4;
  return v4 - 1;
}

uint64_t std::vector<ctu::cf::CFSharedRef<__CFData const>>::__emplace_back_slow_path<ctu::cf::CFSharedRef<__CFData const> const&>(void *a1, const void **a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    v8 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v12 = &v8[8 * v2];
  v14 = &v8[8 * v7];
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(v12, a2);
  v13 = v12 + 1;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__swap_out_circular_buffer(a1, &v11);
  v9 = a1[1];
  std::__split_buffer<ctu::cf::CFSharedRef<__CFData const>>::~__split_buffer(&v11);
  return v9;
}

void sub_29829A60C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ctu::cf::CFSharedRef<__CFData const>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void std::vector<ctu::cf::CFSharedRef<__CFData const>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8 = 0;
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,0>(v4++);
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v9 = *a1;
  *a1 = v6;
  *(a1 + 8) = v9;
  a2[1] = v9;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void std::__destroy_at[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<ctu::cf::CFSharedRef<__CFData const>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void eUICC::TwoPhaseProv::ProfileProperties::~ProfileProperties(eUICC::TwoPhaseProv::ProfileProperties *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

const void **ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

char *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(char *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29829A9DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned short>::__vallocate[abi:ne200100](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(2 * a2);
}

void std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(a1, a2[1]);
    v4 = a2[8];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[7];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[4];
    if (v6)
    {
      a2[5] = v6;
      operator delete(v6);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::vector<unsigned char>&,eUICC::TwoPhaseProv::ProfileProperties&>(uint64_t **a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__find_equal<std::vector<unsigned char>>(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__construct_node<std::vector<unsigned char>&,eUICC::TwoPhaseProv::ProfileProperties&>(a1, a3, a4, &v9);
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

unsigned __int8 **std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__find_equal<std::vector<unsigned char>>(uint64_t a1, unsigned __int8 ***a2, unsigned __int8 **a3)
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
        if ((std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(a3, v4 + 4) & 0x80) == 0)
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

      if ((std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(v7 + 4, a3) & 0x80) == 0)
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

CFTypeRef std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__construct_node<std::vector<unsigned char>&,eUICC::TwoPhaseProv::ProfileProperties&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8 + 4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(v8 + 7, a3);
  result = *(a3 + 8);
  *(v8 + 8) = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *(a4 + 16) = 1;
  return result;
}

void sub_29829AC94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[1] - *a1;
  v5 = a2[1] - *a2;
  if (v5 >= v4)
  {
    v6 = a1[1] - *a1;
  }

  else
  {
    v6 = a2[1] - *a2;
  }

  if (v6 < 1)
  {
LABEL_7:
    if (v4 < v5)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    while (1)
    {
      v7 = *v2;
      v8 = *v3;
      if (v7 != v8)
      {
        break;
      }

      ++v2;
      ++v3;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[8];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = __p[7];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = __p[4];
    if (v5)
    {
      __p[5] = v5;
      operator delete(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::map<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_hint_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::pair<eUICC::TwoPhaseProv::eBppSegment const,eUICC::TwoPhaseProv::BppTagProperties> const&>(a1, v4, a2, a2);
      a2 += 10;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

_OWORD *std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_hint_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::pair<eUICC::TwoPhaseProv::eBppSegment const,eUICC::TwoPhaseProv::BppTagProperties> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__find_equal<eUICC::TwoPhaseProv::eBppSegment>(a1, a2, &v12, &v11, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x48uLL);
    v9 = *(a4 + 16);
    v7[2] = *a4;
    v7[3] = v9;
    *(v7 + 8) = *(a4 + 32);
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__find_equal<eUICC::TwoPhaseProv::eBppSegment>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x48uLL);
    *(v11 + 8) = **a4;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::Perform(uint64_t a1, uint64_t a2, void *a3)
{
  v154 = *MEMORY[0x29EDCA608];
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "TwoPhaseProvImpl::Perform\n", v6, v7, v8, v129);
  *(a1 + 376) = a2;
  if (*(a2 + 136) == 1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Skip Vinyl provisioning\n", v9, v10, v11, v130);
    ProvisioningSessions = 0;
    goto LABEL_20;
  }

  v13 = dispatch_queue_create("VinylControllerTwoPhaseProvisioning", 0);
  v14 = *(a1 + 64);
  *(a1 + 64) = v13;
  if (v14)
  {
    dispatch_release(v14);
  }

  __p = 0;
  v151 = 0;
  v152 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  cf = 0;
  v144 = 0;
  (*(**a3 + 8))(__src);
  memcpy((a1 + 88), __src, 0x11BuLL);
  if (*(a1 + 367) == 1)
  {
    gBBULogMaskGet();
    v18 = "!getDataRsp.contents.isAbsentOk";
LABEL_7:
    v19 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v15, v16, v17, v18);
LABEL_8:
    ProvisioningSessions = 0;
    v20 = 0;
    goto LABEL_9;
  }

  if (*(a1 + 88) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    v19 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v34, v35, v36, "getDataRsp.Valid()");
    ProvisioningSessions = 10;
    goto LABEL_26;
  }

  v27 = __rev16(*(a1 + 328));
  if (!eUICC::TwoPhaseProv::LdrVerSupportsTwoPhaseInstall(v27))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v39, v40, v41, "LdrVerSupportsTwoPhaseInstall(ldr_ver)");
    gBBULogMaskGet();
    v19 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "ldr ver %04X not eligible, skipping\n", v42, v43, v44, v27);
    goto LABEL_8;
  }

  if (!*(a1 + 92))
  {
    v143 = CFDataCreate(*MEMORY[0x29EDB8ED8], (a1 + 95), 16);
    eUICC::TwoPhaseProv::SessionData::setEid(a1, &v143);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v143);
    if ((eUICC::TwoPhaseProv::SessionData::isEidEligible(a1, a2) & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v52, v53, v54, "sessionData.isEidEligible( performOptions)");
      gBBULogMaskGet();
      v19 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "EID not eligible, skipping\n", v55, v56, v57, v132);
      goto LABEL_8;
    }

    ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleRefurbishProfileReference(a1, a3);
    if (ProvisioningSessions)
    {
      gBBULogMaskGet();
      v19 = 0;
      v20 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v49, v50, v51, "kVinylResultSuccess == vinyl_ret");
      goto LABEL_42;
    }

    v59 = *(a2 + 79);
    if ((v59 & 0x80u) != 0)
    {
      v59 = *(a2 + 64);
    }

    if (!v59)
    {
      gBBULogMaskGet();
      v18 = "!performOptions.twoPhaseUrl.empty()";
      goto LABEL_7;
    }

    ReverseProxyGetSettings(a2 + 56, &v142);
    v60 = (a1 + 72);
    if ((a1 + 72) != &v142)
    {
      *&__src[0] = *v60;
      *v60 = v142;
      v142 = 0;
      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(__src);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v142);
    ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleNotifications(a1, a3);
    if (ProvisioningSessions || (v64 = eUICC::TwoPhaseProv::ComposeGps(&v149), ProvisioningSessions = v64, v64) || (ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProvisioningSessions(v64, &v149, &v148, &v144, a3), ProvisioningSessions))
    {
      gBBULogMaskGet();
      v19 = 0;
      v20 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v65, v66, v67, "kVinylResultSuccess == vinyl_ret");
      goto LABEL_42;
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v141, &v148);
    IsProvTxIdAvailable = eUICC::TwoPhaseProv::IsProvTxIdAvailable(&v141);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v141);
    if (!IsProvTxIdAvailable)
    {
      gBBULogMaskGet();
      v19 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v72, v73, v74, "IsProvTxIdAvailable( euicc_rsp)");
      ProvisioningSessions = 26;
      goto LABEL_26;
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v140, &v148);
    ProvisioningSessions = eUICC::TwoPhaseProv::ConvertGpsToGbpp(&v140, &v146);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v140);
    if (ProvisioningSessions || (ProvisioningSessions = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v146), ProvisioningSessions))
    {
      gBBULogMaskGet();
      v19 = 0;
      v20 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v69, v70, v71, "kVinylResultSuccess == vinyl_ret");
      goto LABEL_42;
    }

    eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, __src);
    v19 = *(&__src[0] + 1);
    v75 = *&__src[0];
    v76 = *(**&__src[0] + 24);
    if (*(*(a1 + 376) + 80))
    {
      if (v76(*&__src[0]) == 204)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v77, v78, v79, "kHttpStatusNoContent != getbpp_rsp->getHttpResponseCode()");
        gBBULogMaskGet();
        v20 = 0;
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "no profile returned with presence check on, failing\n", v80, v81, v82, v133);
LABEL_35:
        ProvisioningSessions = 28;
        goto LABEL_9;
      }

      if ((*(*v75 + 24))(v75) == 200)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v90, v91, v92, "kHttpStatusSuccess != getbpp_rsp->getHttpResponseCode()");
        gBBULogMaskGet();
        v89 = "profile returned with presence check on, returning success\n";
        goto LABEL_77;
      }
    }

    else if (v76(*&__src[0]) == 204)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v83, v84, v85, "kHttpStatusNoContent != getbpp_rsp->getHttpResponseCode()");
      gBBULogMaskGet();
      v89 = "no profile returned, skipping\n";
LABEL_77:
      v20 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", v89, v86, v87, v88, v134);
LABEL_78:
      ProvisioningSessions = 0;
      goto LABEL_9;
    }

    if ((*(*v75 + 24))(v75) != 200)
    {
      gBBULogMaskGet();
      v20 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v96, v97, v98, "kHttpStatusSuccess == getbpp_rsp->getHttpResponseCode()");
      goto LABEL_35;
    }

    (*(*v75 + 40))(&v139, v75);
    ProvisioningSessions = eUICC::TwoPhaseProv::CreateDictionaryFromPlistData(&v139, &v146);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v139);
    if (!ProvisioningSessions)
    {
      ProvisioningSessions = eUICC::TwoPhaseProv::SessionData::processAlderResponse(a1, &v146);
      if (!ProvisioningSessions)
      {
        eUICC::TwoPhaseProv::SessionData::getPbiReq(a1, __src);
        if (*&__src[0])
        {
          eUICC::TwoPhaseProv::SessionData::getBpp(a1, &v142);
          v99 = v142;
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v142);
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(__src);
          if (v99)
          {
            PbiReq = eUICC::TwoPhaseProv::SessionData::getPbiReq(a1, &v138);
            ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::PrepareBPPInstallation(PbiReq, &v138, &v148, &v144, a3);
            ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v138);
            if (ProvisioningSessions || (ProvisioningSessions = eUICC::TwoPhaseProv::SessionData::extractDataFromPbiRsp(a1, &v148), ProvisioningSessions))
            {
              gBBULogMaskGet();
              v20 = 0;
              _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v101, v102, v103, "kVinylResultSuccess == vinyl_ret");
            }

            else
            {
              Bpp = eUICC::TwoPhaseProv::SessionData::getBpp(a1, &v137);
              ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::LoadBPP(Bpp, &v137, &v148, &v144, a3);
              ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v137);
              if (ProvisioningSessions || (ProvisioningSessions = eUICC::TwoPhaseProv::ConvertPirToHir(&v148, a1, &v146), ProvisioningSessions) || (ProvisioningSessions = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v146), ProvisioningSessions))
              {
                gBBULogMaskGet();
                v20 = 0;
                _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v108, v109, v110, "kVinylResultSuccess == vinyl_ret");
              }

              else
              {
                eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, __src);
                v20 = *(&__src[0] + 1);
                if ((*(**&__src[0] + 24))(*&__src[0]) != 200)
                {
                  gBBULogMaskGet();
                  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v115, v116, v117, "kHttpStatusSuccess == handlenotification_rsp->getHttpResponseCode()");
                  goto LABEL_35;
                }

                eUICC::TwoPhaseProv::SessionData::getPirSeqNum(a1, __src);
                ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::operator=(&v147, __src);
                v111 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(__src);
                ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::NotificationSent(v111, &v147, &v148, a3);
                if (ProvisioningSessions)
                {
                  gBBULogMaskGet();
                  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v112, v113, v114, "kVinylResultSuccess == vinyl_ret");
                }

                else
                {
                  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v136, &v148);
                  IsNotificationSentRspSuccess = eUICC::TwoPhaseProv::IsNotificationSentRspSuccess(&v136);
                  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v136);
                  if ((IsNotificationSentRspSuccess & 1) == 0)
                  {
                    gBBULogMaskGet();
                    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v123, v124, v125, "IsNotificationSentRspSuccess( euicc_rsp)");
                    ProvisioningSessions = 27;
                    goto LABEL_27;
                  }

                  eUICC::TwoPhaseProv::SessionData::getError(a1, __src);
                  v119 = *&__src[0];
                  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(__src);
                  if (v119)
                  {
                    gBBULogMaskGet();
                    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v120, v121, v122, "nullptr == sessionData.getError().get()");
                    eUICC::TwoPhaseProv::SessionData::clearTransientData(a1);
                    ProvisioningSessions = 29;
                    goto LABEL_27;
                  }

                  eUICC::TwoPhaseProv::SessionData::clearTransientData(a1);
                  ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleNotifications(a1, a3);
                  if (!ProvisioningSessions)
                  {
                    goto LABEL_9;
                  }

                  gBBULogMaskGet();
                  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v126, v127, v128, "kVinylResultSuccess == vinyl_ret");
                }
              }
            }

LABEL_42:
            if (ProvisioningSessions == 28)
            {
              goto LABEL_9;
            }

            goto LABEL_27;
          }
        }

        else
        {
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(__src);
        }

        gBBULogMaskGet();
        v20 = 0;
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v104, v105, v106, "kVinylResultSuccess == vinyl_ret && sessionData.getPbiReq().get() && sessionData.getBpp().get()");
        goto LABEL_78;
      }
    }

    gBBULogMaskGet();
    v20 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v93, v94, v95, "kVinylResultSuccess == vinyl_ret");
    goto LABEL_42;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v28, v29, v30, "0 == getDataRsp.contents.perso");
  gBBULogMaskGet();
  v19 = 0;
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "two-phase flow unsupported with perso incomplete\n", v31, v32, v33, v131);
  ProvisioningSessions = 29;
LABEL_26:
  v20 = 0;
LABEL_27:
  eUICC::TwoPhaseProv::SessionData::getEUICCSessionId(a1, &v142);
  if (v142)
  {
    eUICC::TwoPhaseProv::SessionData::getError(a1, __src);
    v37 = *&__src[0];
    if (*&__src[0])
    {
      v38 = 1;
    }

    else
    {
      eUICC::TwoPhaseProv::SessionData::getPir(a1, &v135);
      v38 = v135 != 0;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v135);
      v37 = *&__src[0];
      if (!*&__src[0])
      {
        goto LABEL_36;
      }
    }

    CFRelease(v37);
LABEL_36:
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v142);
    if (v38)
    {
      eUICC::TwoPhaseProv::SessionData::getPir(a1, &v135);
      v45 = eUICC::TwoPhaseProv::ConvertPirToHir(&v135, a1, &v146);
      if (v45 || (v45 = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v146), v45))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v46, v47, v48, "kVinylResultSuccess == handle_result_ret");
      }

      else
      {
        eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, __src);
        v58 = __src[0];
        __src[0] = 0uLL;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          if (*(&__src[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src[0] + 1));
          }
        }

        if ((*(*v58 + 24))(v58) == 200)
        {
          v20 = *(&v58 + 1);
          v45 = ProvisioningSessions;
        }

        else
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v61, v62, v63, "kHttpStatusSuccess == handlenotification_rsp->getHttpResponseCode()");
          v45 = 28;
          v20 = *(&v58 + 1);
        }
      }

      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v135);
      ProvisioningSessions = v45;
    }

    goto LABEL_9;
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v142);
LABEL_9:
  eUICC::TwoPhaseProv::SessionData::clear(a1);
  if (ProvisioningSessions && v144 == 28581)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Delaying for 6FA5 handling\n", v21, v22, v23, v130);
    v24 = *a3;
    *(v24 + 8) = 0u;
    v24 += 8;
    *(v24 + 240) = 0u;
    *(v24 + 256) = 0u;
    *(v24 + 208) = 0u;
    *(v24 + 224) = 0u;
    *(v24 + 176) = 0u;
    *(v24 + 192) = 0u;
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
    *(v24 + 112) = 0u;
    *(v24 + 128) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 96) = 0u;
    *(v24 + 48) = 0u;
    *(v24 + 64) = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 267) = 0u;
    *v24 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    (*(**a3 + 8))(__src);
    *&__src[0] = 3000000000;
    std::this_thread::sleep_for (__src);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v146);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v147);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v148);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v149);
  if (__p)
  {
    v151 = __p;
    operator delete(__p);
  }

LABEL_20:
  v25 = *MEMORY[0x29EDCA608];
  return ProvisioningSessions;
}

void sub_29829C42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, void *__p, uint64_t a30)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a24);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a25);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a26);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a27);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a28);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleRefurbishProfileReference(uint64_t a1, void *a2)
{
  memset(&v73, 0, sizeof(v73));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v68);
  v66[1] = 0;
  v67 = 0;
  v65 = v66;
  v66[0] = 0;
  v4 = *(a1 + 376);
  v5 = MEMORY[0x29EDC9528];
  if (!v4)
  {
    goto LABEL_28;
  }

  if ((*(v4 + 135) & 0x8000000000000000) != 0)
  {
    if (*(v4 + 120))
    {
      goto LABEL_4;
    }

LABEL_28:
    gBBULogMaskGet();
    v11 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "options && !options->twoPhaseRefurbRef.empty()");
    ProfilesInfoList = 0;
    goto LABEL_29;
  }

  if (!*(v4 + 135))
  {
    goto LABEL_28;
  }

LABEL_4:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v52, (v4 + 112), 24);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
  v47 = a2;
  v52 = *v5;
  v6 = v52;
  v7 = *(v5 + 72);
  v8 = *(v5 + 64);
  *(&v52 + *(v52 - 3)) = v8;
  v50 = v7;
  v54 = v7;
  v55 = MEMORY[0x29EDC9570] + 16;
  if (v58 < 0)
  {
    operator delete(__p);
  }

  v55 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v56);
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](v59);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    *(&v70[-1].__locale_ + *(v68[0] - 24)) = 2;
    v12 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v68, &v73);
    if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v51 = 0;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v52, &v73, 24);
    *(&v53 + *(v52 - 3)) = *(&v53 + *(v52 - 3)) & 0xFFFFFFB5 | 8;
    MEMORY[0x29C2869F0](&v52, &v51);
    v52 = v6;
    *(&v52 + *(v6 - 3)) = v8;
    v54 = v50;
    v55 = MEMORY[0x29EDC9570] + 16;
    if (v58 < 0)
    {
      operator delete(__p);
    }

    v55 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v56);
    std::iostream::~basic_iostream();
    MEMORY[0x29C286CA0](v59);
    v13 = v51;
    if (v10 >= v9)
    {
      v14 = v8;
      v15 = v6;
      v16 = v10 - v11;
      v17 = v10 - v11 + 1;
      __src = v11;
      if (v17 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      if (2 * (v9 - v11) > v17)
      {
        v17 = 2 * (v9 - v11);
      }

      if ((v9 - v11) >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        v11 = operator new(v18);
      }

      else
      {
        v11 = 0;
      }

      v9 = &v11[v18];
      v11[v16] = v13;
      v10 = &v11[v16 + 1];
      memcpy(v11, __src, v16);
      if (__src)
      {
        operator delete(__src);
      }

      v6 = v15;
      v8 = v14;
    }

    else
    {
      *v10++ = v51;
    }
  }

  v63[0] = v11;
  v63[1] = (v10 - v11);
  v19 = DERDecodeSeqContentInit(v63, v64);
  v5 = MEMORY[0x29EDC9528];
  if (v19)
  {
    gBBULogMaskGet();
    v23 = "DR_Success == der_ret";
LABEL_26:
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, v23);
    ProfilesInfoList = 27;
    goto LABEL_29;
  }

  ProfilesInfoList = eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProfilesInfoList(v19, &v67, a2);
  if (!ProfilesInfoList)
  {
    ProfilesInfoList = eUICC::TwoPhaseProv::ExtractProfileInfo(&v67, &v65);
    if (!ProfilesInfoList)
    {
      __srca = v11;
      while (1)
      {
        v33 = DERDecodeSeqNext(v64, &v60);
        if (v33)
        {
          break;
        }

        v53 = 0;
        v54 = 0;
        v52 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v52, v63[0], v61 + v62, v61 + v62 - v63[0]);
        v34 = std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::find<std::vector<unsigned char>>(&v65, &v52);
        if (v66 != v34 && ((gBBULogMaskGet(), _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "matched refurb profileReference\n", v35, v36, v37, v46), Value = CFBooleanGetValue(*(v34 + 64)), Value) && (Value = eUICC::TwoPhaseProv::TwoPhaseProvImpl::DisableProfile(Value, (v34 + 56), v47), ProfilesInfoList = Value, Value) || (ProfilesInfoList = eUICC::TwoPhaseProv::TwoPhaseProvImpl::DeleteProfile(Value, (v34 + 56), v47), ProfilesInfoList)))
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v39, v40, v41, "kVinylResultSuccess == ret");
          v42 = 0;
        }

        else
        {
          v63[0] = (v61 + v62);
          if (v61 + v62 <= v10)
          {
            v42 = 1;
          }

          else
          {
            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v43, v44, v45, "der_item.data <= (profile_ref_input.data() + profile_ref_input.size())");
            v42 = 0;
            ProfilesInfoList = 27;
          }
        }

        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if ((v42 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      if (v33 == 1)
      {
LABEL_54:
        v11 = __srca;
        goto LABEL_29;
      }

      v11 = __srca;
      gBBULogMaskGet();
      v23 = "der_ret == DR_EndOfSequence";
      goto LABEL_26;
    }
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v30, v31, v32, "kVinylResultSuccess == ret");
LABEL_29:
  std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(&v65, v66[0]);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v67);
  if (v11)
  {
    operator delete(v11);
  }

  v68[0] = *v5;
  v28 = *(v5 + 72);
  *(v68 + *(v68[0] - 24)) = *(v5 + 64);
  v68[2] = v28;
  v69 = MEMORY[0x29EDC9570] + 16;
  if (v71 < 0)
  {
    operator delete(v70[7].__locale_);
  }

  v69 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v70);
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](&v72);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  return ProfilesInfoList;
}

void sub_29829CE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(&a64, a65);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a67);
  if (__p)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a68);
  if (*(v68 - 89) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleNotifications(eUICC::TwoPhaseProv::SessionData *a1, void *a2)
{
  v48 = 0;
  v49[0] = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  __p = 0;
  v43 = 0;
  v44 = 0;
  NotificationListForSeqNum = eUICC::TwoPhaseProv::TwoPhaseProvImpl::ListInstallationNotifications(a1, v49, a2);
  if (NotificationListForSeqNum)
  {
    gBBULogMaskGet();
    v5 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "kVinylResultSuccess == ret");
LABEL_7:
    eUICC::TwoPhaseProv::SessionData::clearTransientData(a1);
    goto LABEL_8;
  }

  v41 = v49[0];
  if (v49[0])
  {
    CFRetain(v49[0]);
  }

  NotificationListForSeqNum = eUICC::TwoPhaseProv::ExtractNotificationListSeqNumbers(&v41, &v45);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v41);
  if (NotificationListForSeqNum)
  {
    gBBULogMaskGet();
    v5 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "kVinylResultSuccess == ret");
    goto LABEL_7;
  }

  v13 = v45;
  v14 = v46;
  if (v45 == v46)
  {
    v5 = 0;
    NotificationListForSeqNum = 0;
    goto LABEL_7;
  }

  v5 = 0;
  while (1)
  {
    v15 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v40, v13);
    v38 = 0;
    v39 = 0;
    v37 = 0;
    NotificationListForSeqNum = eUICC::TwoPhaseProv::TwoPhaseProvImpl::RetrieveNotificationListForSeqNum(v15, &v40, v49, a2);
    if (NotificationListForSeqNum)
    {
LABEL_16:
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "kVinylResultSuccess == ret");
      v19 = 2;
      v20 = 1;
      goto LABEL_17;
    }

    v36 = v49[0];
    if (v49[0])
    {
      CFRetain(v49[0]);
    }

    IsNotificationForTwoPhase = eUICC::TwoPhaseProv::IsNotificationForTwoPhase(&v36, &v39);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v36);
    if (IsNotificationForTwoPhase)
    {
      NotificationListForSeqNum = eUICC::TwoPhaseProv::ConvertPirToHir(&v39, a1, &v37);
      if (NotificationListForSeqNum)
      {
        goto LABEL_16;
      }

      NotificationListForSeqNum = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v37);
      if (NotificationListForSeqNum)
      {
        goto LABEL_16;
      }

      eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, &v35);
      v22 = v35;
      v35 = 0uLL;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        if (*(&v35 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
        }
      }

      v23 = (*(*v22 + 24))(v22);
      if (v23 == 200)
      {
        NotificationListForSeqNum = eUICC::TwoPhaseProv::TwoPhaseProvImpl::NotificationSent(v23, &v40, v49, a2);
        if (NotificationListForSeqNum)
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "kVinylResultSuccess == ret");
          v19 = 2;
          v20 = 1;
        }

        else
        {
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v34, v49);
          IsNotificationSentRspSuccess = eUICC::TwoPhaseProv::IsNotificationSentRspSuccess(&v34);
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v34);
          if (IsNotificationSentRspSuccess)
          {
            NotificationListForSeqNum = 0;
            v20 = 0;
            v19 = 0;
          }

          else
          {
            gBBULogMaskGet();
            _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v31, v32, v33, "IsNotificationSentRspSuccess( euicc_rsp)");
            v19 = 2;
            v20 = 1;
            NotificationListForSeqNum = 27;
          }
        }
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "kHttpStatusSuccess == handlenotification_rsp->getHttpResponseCode()");
        v19 = 2;
        v20 = 1;
        NotificationListForSeqNum = 28;
      }

      v5 = *(&v22 + 1);
    }

    else
    {
      NotificationListForSeqNum = 0;
      v20 = 0;
      v19 = 4;
    }

LABEL_17:
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v37);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v38);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v39);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v40);
    if ((v19 | 4) != 4)
    {
      break;
    }

    if (++v13 == v14)
    {
      goto LABEL_7;
    }
  }

  if (v20)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  __p = &v45;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v48);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v49);
  return NotificationListForSeqNum;
}

void sub_29829D390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, char a16, int a17, const void *a18, const void *a19, const void *a20, const void *a21, __int16 a22, char a23, char a24, char *__p, char *a26, uint64_t a27, char a28)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a13);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a18);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a19);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a20);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a21);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  __p = &a28;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v29 - 104));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v29 - 96));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProvisioningSessions(uint64_t a1, uint64_t *a2, const void **a3, uint64_t a4, void *a5)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  v8 = *a2;
  if ((ctu::cf::assign() & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
    gBBULogMaskGet();
    v20 = "Failed to assign request data\n";
LABEL_5:
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", v20, v17, v18, v19, v28);
    v10 = 17;
    goto LABEL_6;
  }

  v9 = (*(**a5 + 40))(*a5, &v35, &__p, a4);
  v10 = VinylControllerMapBBUReturnToVinylResult(v9);
  if (v10)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "kVinylResultSuccess == ret");
    goto LABEL_6;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v29, __p, v33, v33 - __p);
  v38 = 0;
  v22 = ctu::cf::convert_copy();
  v23 = v22;
  if (v22)
  {
    v24 = *a3;
    *a3 = v38;
    v39 = v24;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v39);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if ((v23 & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "success");
    gBBULogMaskGet();
    v20 = "Failed to assign response data\n";
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return v10;
}

void sub_29829D658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 850045863;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_2A1EB2B70;
  v28 = v6;
  v29 = v6;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v6);
  v7 = a1[47];
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v23[1] = 0;
  v23[2] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v24, v25[0]);
  (*(*v26 + 8))(v26, a1[8]);
  v8 = v26;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v28, &v24);
  (*(*v8 + 16))(v8, v24);
  if (v24)
  {
    _Block_release(v24);
  }

  (*(*v26 + 96))(v26, 60.0);
  v9 = v26;
  v10 = a1[9];
  v23[0] = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  (*(*v9 + 88))(v9, v23);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v23);
  (*(*v26 + 56))(v26, a2);
  eUICC::TwoPhaseProv::StringifyDataBuffer(a2, 0, __p);
  eUICC::TwoPhaseProv::LogOversizedPlain(__p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  (*(*v26 + 40))(v26, v19);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(&v28, a3);
  gBBULogMaskGet();
  v11 = (*(**a3 + 16))();
  (*(**a3 + 24))();
  (*(**a3 + 32))();
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "result %d code %d raw_error %ld\n", v12, v13, v14, v11);
  (*(**a3 + 48))(v17);
  eUICC::TwoPhaseProv::LogOversizedPlain(v17);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v15 = v28;
  if (v28 && !atomic_fetch_add(v28 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v15 + 16))(v15);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v29);
}

void sub_29829DA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v35 = *(v32 + 8);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v33 - 56);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(v33 - 48);
  if (v37)
  {
    if (!atomic_fetch_add(v37 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v37 + 16))(v37);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v33 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::PrepareBPPInstallation(uint64_t a1, uint64_t *a2, const void **a3, uint64_t a4, void *a5)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  v8 = *a2;
  if ((ctu::cf::assign() & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
    gBBULogMaskGet();
    v20 = "Failed to assign request data\n";
LABEL_5:
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", v20, v17, v18, v19, v28);
    v10 = 17;
    goto LABEL_6;
  }

  v9 = (*(**a5 + 40))(*a5, &v35, &__p, a4);
  v10 = VinylControllerMapBBUReturnToVinylResult(v9);
  if (v10)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "kVinylResultSuccess == ret");
    goto LABEL_6;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v29, __p, v33, v33 - __p);
  v38 = 0;
  v22 = ctu::cf::convert_copy();
  v23 = v22;
  if (v22)
  {
    v24 = *a3;
    *a3 = v38;
    v39 = v24;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v39);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if ((v23 & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "success");
    gBBULogMaskGet();
    v20 = "Failed to assign response data\n";
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return v10;
}

void sub_29829DD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::LoadBPP(uint64_t a1, CFDataRef *a2, const void **a3, uint64_t a4, void *a5)
{
  v48 = 0;
  v47 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  v7 = *MEMORY[0x29EDB8EE8];
  do
  {
    v46 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    __p = 0;
    v40 = 0;
    v41 = 0;
    NextBppSegment = eUICC::TwoPhaseProv::GetNextBppSegment(&v47, a2, &v48, &v46);
    if (NextBppSegment)
    {
LABEL_3:
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "kVinylResultSuccess == ret");
LABEL_4:
      v12 = 1;
      goto LABEL_5;
    }

    if (!v46)
    {
      NextBppSegment = 0;
      v12 = 0;
      goto LABEL_5;
    }

    BytePtr = CFDataGetBytePtr(*a2);
    v15 = CFDataCreateWithBytesNoCopy(v6, &BytePtr[v48], v46, v7);
    v16 = v45;
    v45 = v15;
    v50[0] = v16;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v50);
    if ((ctu::cf::assign() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v18, v19, v20, "success");
      gBBULogMaskGet();
      v24 = "Failed to assign request data\n";
LABEL_20:
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", v24, v21, v22, v23, v32);
      v12 = 1;
      NextBppSegment = 17;
      goto LABEL_5;
    }

    v17 = (*(**a5 + 40))(*a5, &v42, &__p, a4);
    NextBppSegment = VinylControllerMapBBUReturnToVinylResult(v17);
    if (NextBppSegment)
    {
      goto LABEL_3;
    }

    if (v40 != __p)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v36, __p, v40, v40 - __p);
      v49 = 0;
      v25 = ctu::cf::convert_copy();
      v26 = v25;
      if (v25)
      {
        v27 = *a3;
        *a3 = v49;
        v50[0] = v27;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v50);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v26)
      {
        NextBppSegment = 0;
        goto LABEL_4;
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v28, v29, v30, "success");
      gBBULogMaskGet();
      v24 = "Failed to assign response data\n";
      goto LABEL_20;
    }

    NextBppSegment = 0;
    v12 = 0;
    v48 += v46;
LABEL_5:
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v45);
    if (v47 == 7)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }
  }

  while ((v13 & 1) == 0);
  return NextBppSegment;
}

void sub_29829E0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, const void *a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a26);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::NotificationSent(uint64_t a1, CFDataRef *a2, const void **a3, void *a4)
{
  v26 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = eUICC::TwoPhaseProv::ComposeNsr(a2, &v26);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kVinylResultSuccess == ret");
  }

  else
  {
    ctu::cf::assign();
    v10 = (*(**a4 + 40))(*a4, &v22, &v19, &v25);
    v6 = VinylControllerMapBBUReturnToVinylResult(v10);
    if (v6)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "kVinylResultSuccess == ret");
    }

    else
    {
      __p = 0;
      v17 = 0;
      v18 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v19, v20, v20 - v19);
      v27 = 0;
      if (ctu::cf::convert_copy())
      {
        v14 = *a3;
        *a3 = v27;
        v28 = v14;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v28);
      }

      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      v6 = 0;
    }
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v26);
  return v6;
}

void sub_29829E2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v21 - 56));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::Perform(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  v4 = xmmword_2A13A8D98;
  if (!xmmword_2A13A8D98)
  {
    v5 = operator new(0x180uLL);
    *(v5 + 21) = 0u;
    *(v5 + 22) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 20) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 18) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    *(v5 + 367) = 0;
    std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::shared_ptr[abi:ne200100]<eUICC::TwoPhaseProv::TwoPhaseProvImpl,0>(&v12, v5);
    v6 = v12;
    v12 = 0uLL;
    v7 = *(&xmmword_2A13A8D98 + 1);
    xmmword_2A13A8D98 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }
    }

    v4 = xmmword_2A13A8D98;
  }

  v8 = *(&xmmword_2A13A8D98 + 1);
  if (*(&xmmword_2A13A8D98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8D98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  v9 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::Perform(v4, a1, a2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  pthread_mutex_lock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  v10 = *(&xmmword_2A13A8D98 + 1);
  xmmword_2A13A8D98 = 0uLL;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  return v9;
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::ListInstallationNotifications(uint64_t a1, const void **a2, void *a3)
{
  LODWORD(v16) = -2130433857;
  WORD2(v16) = 1794;
  BYTE6(v16) = 0x80;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v19, &v16, &v16 + 7, 7uLL);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v5 = (*(**a3 + 40))(*a3, &v19, &v16, &v15);
  v6 = VinylControllerMapBBUReturnToVinylResult(v5);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kVinylResultSuccess == ret");
  }

  else
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v16, v17, v17 - v16);
    v22 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = *a2;
      *a2 = v22;
      v23 = v10;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v23);
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v6;
}

void sub_29829E600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 56);
  if (v20)
  {
    *(v18 - 48) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::RetrieveNotificationListForSeqNum(uint64_t a1, CFDataRef *a2, const void **a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v6 = eUICC::TwoPhaseProv::ComposeRnl(a2, &v26);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kVinylResultSuccess == ret");
  }

  else
  {
    ctu::cf::assign();
    v10 = (*(**a4 + 40))(*a4, &v23, &v20, &v19);
    v6 = VinylControllerMapBBUReturnToVinylResult(v10);
    if (v6)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "kVinylResultSuccess == ret");
    }

    else
    {
      __p = 0;
      v17 = 0;
      v18 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v20, v21, v21 - v20);
      v27 = 0;
      if (ctu::cf::convert_copy())
      {
        v14 = *a3;
        *a3 = v27;
        v28 = v14;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v28);
      }

      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      v6 = 0;
    }
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v26);
  return v6;
}

void sub_29829E7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v19 - 56));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProfilesInfoList(uint64_t a1, const void **a2, void *a3)
{
  v23[2] = *MEMORY[0x29EDCA608];
  v22 = 0x709F5A045C062DBFLL;
  LOBYTE(v23[0]) = -30;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v17, &v22, v23 + 1, 9uLL);
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v16 = 0;
  v5 = (*(**a3 + 40))(*a3, &v17, &v22, &v16);
  v6 = VinylControllerMapBBUReturnToVinylResult(v5);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kVinylResultSuccess == ret");
  }

  else
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v22, v23[0], v23[0] - v22);
    v20 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = *a2;
      *a2 = v20;
      v21 = v10;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v21);
    }

    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  if (v22)
  {
    v23[0] = v22;
    operator delete(v22);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_29829E9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 48);
  if (v21)
  {
    *(v19 - 40) = v21;
    operator delete(v21);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v11 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x29EDC9590] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_29829ECA8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](a1 + 128);
  return a1;
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x29C2869E0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_29829F068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x29829F028);
  }

  __cxa_rethrow();
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::DisableProfile(uint64_t a1, CFDataRef *a2, void *a3)
{
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = eUICC::TwoPhaseProv::ComposeDisableReq(a2, &v32);
  if (v4)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "kVinylResultSuccess == ret");
  }

  else
  {
    ctu::cf::assign();
    v8 = (*(**a3 + 40))(*a3, &v26, &v23, &v29);
    v4 = VinylControllerMapBBUReturnToVinylResult(v8);
    if (v4)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "kVinylResultSuccess == ret");
    }

    else
    {
      __p = 0;
      v21 = 0;
      v22 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v23, v24, v24 - v23);
      v33 = 0;
      if (ctu::cf::convert_copy())
      {
        v12 = v31;
        v31 = v33;
        v34 = v12;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v34);
      }

      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (eUICC::TwoPhaseProv::ExtractDisableResult(&v31, &v30))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kVinylResultSuccess == ret");
        v4 = 27;
      }

      else if (v30)
      {
        v4 = 0;
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "success");
        v4 = 29;
      }
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v31);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v32);
  return v4;
}

void sub_29829F368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 48));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::DeleteProfile(uint64_t a1, CFDataRef *a2, void *a3)
{
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = eUICC::TwoPhaseProv::ComposeDeleteReq(a2, &v32);
  if (v4)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "kVinylResultSuccess == ret");
  }

  else
  {
    ctu::cf::assign();
    v8 = (*(**a3 + 40))(*a3, &v26, &v23, &v29);
    v4 = VinylControllerMapBBUReturnToVinylResult(v8);
    if (v4)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "kVinylResultSuccess == ret");
    }

    else
    {
      __p = 0;
      v21 = 0;
      v22 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v23, v24, v24 - v23);
      v33 = 0;
      if (ctu::cf::convert_copy())
      {
        v12 = v31;
        v31 = v33;
        v34 = v12;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v34);
      }

      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (eUICC::TwoPhaseProv::ExtractDeleteResult(&v31, &v30))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kVinylResultSuccess == ret");
        v4 = 27;
      }

      else if (v30)
      {
        v4 = 0;
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "success");
        v4 = 29;
      }
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v31);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v32);
  return v4;
}

void sub_29829F60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 48));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 40));
  _Unwind_Resume(a1);
}

void *eUICC::TwoPhaseProv::TwoPhaseProvImpl::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x180uLL);
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 13) = 0u;
  *(v3 + 14) = 0u;
  *(v3 + 15) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 21) = 0u;
  *(v3 + 22) = 0u;
  *(v3 + 367) = 0;

  return std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::shared_ptr[abi:ne200100]<eUICC::TwoPhaseProv::TwoPhaseProvImpl,0>(a1, v3);
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v5);
  }

  return a1;
}

void std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C286BB0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_29829F950(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::find<std::vector<unsigned char>>(uint64_t a1, unsigned __int8 **a2)
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
    v6 = std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void *std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::shared_ptr[abi:ne200100]<eUICC::TwoPhaseProv::TwoPhaseProvImpl,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB3AF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29829FA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::TwoPhaseProv::TwoPhaseProvImpl *,std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::__shared_ptr_default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl>,std::allocator<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<eUICC::TwoPhaseProv::TwoPhaseProvImpl *,std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::__shared_ptr_default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl>,std::allocator<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 80);
    if (v3)
    {
      CFRelease(v3);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a2 + 72));
    v4 = *(a2 + 64);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a2 + 56);
    if (v5)
    {
      CFRelease(v5);
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 48));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 40));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 32));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 24));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 16));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 8));
    v6 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(a2);

    operator delete(v6);
  }
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t eUICC::ClearMetadata::GetListOfIccids(int a1, void *a2, void *a3)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Requesting Profile List\n", v6, v7, v8, v32);
  LODWORD(v36[0]) = 1543777727;
  WORD2(v36[0]) = 23042;
  BYTE6(v36[0]) = -107;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v54, v36, v36 + 7, 7uLL);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v49 = 0;
  (*(**a3 + 40))(*a3, &v54, &v51, &v49);
  __p = 0;
  v47 = 0;
  v48 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v51, v52, v52 - v51);
  v36[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v36[0];
    v50 = v36[0];
  }

  else
  {
    v9 = 0;
  }

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Extracting Profile List\n", v10, v11, v12, v33);
  Length = CFDataGetLength(v9);
  v14 = *MEMORY[0x29EDB8ED8];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], Length, v9);
  v41 = 0;
  v42 = MutableCopy;
  MutableBytePtr = 0;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v41 = CFDataGetLength(MutableCopy);
  if (DERDecodeSeqContentInit(&MutableBytePtr, v45))
  {
    goto LABEL_7;
  }

  if (DERDecodeSeqNext(v45, &v43) || v43 != 0xA00000000000002DLL)
  {
    gBBULogMaskGet();
    v19 = "DR_Success == der_ret && TAG_PILR == dec.tag";
    goto LABEL_8;
  }

  if (DERDecodeSeqContentInit(v44, v45))
  {
    goto LABEL_7;
  }

  if (DERDecodeSeqNext(v45, &v43) || v43 != 0xA000000000000000)
  {
    gBBULogMaskGet();
    v19 = "DR_Success == der_ret && TAG_PILR_OK == dec.tag";
    goto LABEL_8;
  }

  if (DERDecodeSeqContentInit(v44, v45))
  {
LABEL_7:
    gBBULogMaskGet();
    v19 = "DR_Success == der_ret";
LABEL_8:
    _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, v19);
    v20 = 27;
    goto LABEL_9;
  }

  v20 = 0;
  while (DERDecodeSeqNext(v45, &v43) != 1)
  {
    v38 = 0;
    cf = 0;
    if (!DERDecodeSeqContentInit(v44, &v39))
    {
      if (v43 != 0xE000000000000003)
      {
        gBBULogMaskGet();
        v25 = "DR_Success == der_ret && TAG_PI == dec.tag";
        goto LABEL_32;
      }

      {
        v27 = CFDataCreate(v14, v36[0], v36[1]);
        v28 = cf;
        cf = v27;
        v57 = v28;
        ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v57);
        if (!DERParseInteger(&v37, &v38))
        {
          if (!a1 || v38 == 1)
          {
            std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(a2, &cf);
          }

          v26 = 0;
          goto LABEL_33;
        }
      }
    }

    gBBULogMaskGet();
    v25 = "DR_Success == der_ret";
LABEL_32:
    _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v22, v23, v24, v25);
    v26 = 1;
    v20 = 27;
LABEL_33:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v26)
    {
      goto LABEL_9;
    }
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Successfully populated ICCID list!\n", v29, v30, v31, v34);
LABEL_9:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  return v20;
}

void sub_2982A0020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a24);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v31 - 152));
  v33 = *(v31 - 144);
  if (v33)
  {
    *(v31 - 136) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 120);
  if (v34)
  {
    *(v31 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::ClearMetadata::ClearMetadataForIccids(CFDataRef **a1, void *a2)
{
  __p[3] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v13 = xmmword_2982C42C8;
    do
    {
      *__p = v13;
      *(&__p[1] + 5) = 0x8002E100000000;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v15, __p, &__p[2] + 5, 0x15uLL);
      BytePtr = CFDataGetBytePtr(*v2);
      v6 = v15;
      v7 = *BytePtr;
      *(v15 + 13) = *(BytePtr + 2);
      *(v6 + 5) = v7;
      memset(__p, 0, 24);
      v14 = 0;
      (*(**a2 + 40))(*a2, &v15, __p, &v14);
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::ClearMetadataForIccids: Attempted metadata clear for ICCID\n", v8, v9, v10, v13);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t eUICC::ClearMetadata::Perform(int a1, void *a2)
{
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::Perform: onlyBootstrap=%d\n", v4, v5, v6, a1);
  memset(v8, 0, sizeof(v8));
  eUICC::ClearMetadata::GetListOfIccids(a1, v8, a2);
  eUICC::ClearMetadata::ClearMetadataForIccids(v8, a2);
  v9 = v8;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return 0;
}

void sub_2982A02F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFTypeRef std::allocator_traits<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>::construct[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,ctu::cf::CFSharedRef<__CFData const> const&,void,0>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  result = *a3;
  *a2 = *a3;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t BBUpdaterCommon::BBUASCIIDigitToInt(__darwin_ct_rune_t this, unsigned int a2)
{
  result = (this - 48);
  if (result > 9)
  {
    v5 = __toupper(this);
    v6 = v5 - 55;
    if (v6 >= a2 || (v5 - 65) >= 0x1A)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

unint64_t BBUpdaterCommon::BBUStringToUInt32(const char *a1, int __base)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return strtoul(a1, 0, __base);
}

BOOL BBUpdaterCommon::BBUFileExists(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) == 0;
}

uint64_t BBUpdaterCommon::BBUIsDirectoryEmpty(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = opendir(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  while (1)
  {
    v3 = readdir(v2);
    if (!v3)
    {
      break;
    }

    if (v3->d_name[0] != 46 || v3->d_name[1] && (v3->d_name[1] != 46 || v3->d_name[2]))
    {
      v4 = 0;
      goto LABEL_13;
    }
  }

  v4 = 1;
LABEL_13:
  closedir(v2);
  return v4;
}

DIR *BBUpdaterCommon::BBUReadDirectory(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v9 = 25;
          }

          else
          {
            v9 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v9);
          __dst[1] = d_namlen;
          v13 = v9 | 0x8000000000000000;
          __dst[0] = v8;
        }

        else
        {
          HIBYTE(v13) = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            goto LABEL_14;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
LABEL_14:
        *(v8 + d_namlen) = 0;
        v10 = std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(a2, 0, 0, __dst);
        v11 = *a2;
        *v10 = *a2;
        *(v10 + 1) = a2;
        *(v11 + 1) = v10;
        *a2 = v10;
        ++a2[2];
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__dst[0]);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_2982A0598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterCommon::BBUGetFileName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  ctu::tokenize();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v6 - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v6 - 24), *(v6 - 16));
  }

  else
  {
    v3 = *(v6 - 24);
    a2->__r_.__value_.__r.__words[2] = *(v6 - 8);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }

  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_2982A0664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 - 24) = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
  _Unwind_Resume(a1);
}

void BBUpdaterCommon::BBUStripCharacters(uint64_t *a1@<X0>, const std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = a1[1];
  if ((v6 & 0x80000000) == 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = operator new[](v8 + 1);
  v10 = v9;
  v11 = v9;
  if (v8)
  {
    v12 = 0;
    v13 = v6 >> 63;
    v14 = 1;
    v11 = v9;
    do
    {
      if (v13)
      {
        v15 = *a1;
      }

      else
      {
        v15 = a1;
      }

      if (std::string::find(a2, *(v15 + v12), 0) == -1)
      {
        if (*(a1 + 23) >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        *v11++ = *(v16 + v12);
      }

      v12 = v14;
      v17 = *(a1 + 23);
      v13 = v17 >> 63;
      if ((v17 & 0x80000000) != 0)
      {
        v17 = a1[1];
      }
    }

    while (v17 > v14++);
  }

  *v11 = 0;
  std::string::basic_string[abi:ne200100]<0>(a3, v10);

  operator delete[](v10);
}

void *BBUpdaterCommon::BBUCFStringToCPPString@<X0>(const __CFString *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  CFStringGetCString(this, buffer, 1024, 0x8000100u);
  result = std::string::basic_string[abi:ne200100]<0>(a2, buffer);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void BBUpdaterCommon::BBUStringToArgv(char *a1, uint64_t a2)
{
  std::operator+<char>();
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }

  *a1 = v19;
  v4 = v20;
  *(a1 + 2) = v20;
  v5 = HIBYTE(v4);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x29EDCA600];
    do
    {
      while (1)
      {
        v9 = a1[23] >= 0 ? a1 : *a1;
        v10 = v9[v7];
        v11 = (v10 & 0x80000000) != 0 ? __maskrune(v10, 0x4000uLL) : *(v8 + 4 * v10 + 60) & 0x4000;
        if (v7 >= v6 || !v11)
        {
          break;
        }

        if (a1[23] >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        v12[v7++] = 0;
      }

      if (a1[23] >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      *&v19 = &v13[v7];
      std::vector<char *>::push_back[abi:ne200100](a2, &v19);
      v14 = v7 + 1;
      do
      {
        v15 = v14;
        if (a1[23] >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        v17 = v16[v15];
        if ((v17 & 0x80000000) != 0)
        {
          v18 = __maskrune(v17, 0x4000uLL);
        }

        else
        {
          v18 = *(v8 + 4 * v17 + 60) & 0x4000;
        }

        v14 = v15 + 1;
      }

      while (v15 < v6 && !v18);
      v7 = v15;
    }

    while (v15 < v6);
  }

  *&v19 = 0;
  std::vector<char *>::push_back[abi:ne200100](a2, &v19);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t BBUpdaterCommon::BBUThreadSpawn(BBUpdaterCommon *this, void *(__cdecl *a2)(void *), void *(*a3)(void *), void *a4)
{
  v4 = a4;
  v12 = *MEMORY[0x29EDCA608];
  v10 = 0;
  pthread_attr_init(&v11);
  if (v4)
  {
    pthread_attr_setdetachstate(&v11, 2);
  }

  v7 = pthread_create(&v10, &v11, a2, a3);
  pthread_attr_destroy(&v11);
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = v10;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void BBUpdaterCommon::BBUMutex::~BBUMutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}

{
  pthread_mutex_destroy(this);
}

uint64_t BBUpdaterCommon::collectCoreDump(BBUpdaterCommon *this, const __CFString *a2, const __CFString *a3, int a4)
{
  v5 = a3;
  obj = 0;
  cf = 0;
  valuePtr = 2;
  v8 = *MEMORY[0x29EDB8ED8];
  if (byte_2A18995F7 >= 0)
  {
    v9 = &BBUpdaterCommon::bbCoredumpPath;
  }

  else
  {
    v9 = BBUpdaterCommon::bbCoredumpPath;
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v9, 0x8000100u);
  v11 = v10;
  if (!a2)
  {
    a2 = v10;
  }

  if (a4)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Only attach the the existing coredump dir to output dictionary without executing coredump again.\n", v12, v13, v14, v43);
    BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v15);
    v16 = 0;
LABEL_23:
    v33 = 1;
    goto LABEL_24;
  }

  v16 = MEMORY[0x29C2858C0](&obj);
  if (!v16)
  {
    BBUpdaterCommon::collectCoreDump();
LABEL_40:
    v33 = 0;
    goto LABEL_24;
  }

  BBUpdaterRegisterLogSink();
  v17 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"Client", @"Vinyl");
  CFDictionarySetValue(Mutable, @"BootMode", v17);
  CFDictionarySetValue(Mutable, @"SystemRoot", @"/mnt5");
  CFDictionarySetValue(Mutable, @"DataRoot", @"/mnt4");
  if (TelephonyRadiosGetRadioVendor() - 3 > 1)
  {
    v20 = @"RemoteFSRoot";
    v22 = @"/mnt3/bbfs/";
    v21 = Mutable;
  }

  else
  {
    v19 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(v19, @"RemoteFSRoot", @"/mnt3");
    v20 = @"Options";
    v21 = Mutable;
    v22 = v19;
  }

  CFDictionarySetValue(v21, v20, v22);
  CFDictionarySetValue(Mutable, @"coreDumpPath", a2);
  if (!BBUpdaterSetOptions())
  {
    BBUpdaterCommon::collectCoreDump();
    goto LABEL_40;
  }

  v23 = BBUpdaterExecCommand();
  v24 = gBBULogMaskGet();
  if (!v23)
  {
    BBUpdaterCommon::collectCoreDump(v24, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_40;
  }

  _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Core dump successful \n", v29, v30, v31, v43);
  BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v32);
  if (!v5)
  {
    goto LABEL_23;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CFRelease(v16);
  if (obj)
  {
    CFRelease(obj);
    obj = 0;
  }

  v16 = MEMORY[0x29C2858C0](&obj);
  if (!v16)
  {
    BBUpdaterCommon::collectCoreDump();
    goto LABEL_23;
  }

  BBUpdaterRegisterLogSink();
  if (!BBUpdaterSetOptions())
  {
    BBUpdaterCommon::collectCoreDump();
    goto LABEL_40;
  }

  v33 = BBUpdaterExecCommand();
  v34 = gBBULogMaskGet();
  if (v33)
  {
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "BB reset successful\n", v39, v40, v41, v44);
    goto LABEL_23;
  }

  BBUpdaterCommon::collectCoreDump(v34, v35, v36, v37, v38, v39, v40, v41);
LABEL_24:
  if (obj)
  {
    CFShow(obj);
    if (obj)
    {
      CFRelease(obj);
    }

    obj = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v33;
}

CFDictionaryRef BBUpdaterCommon::attachCoredumpPathToOutDict(CFDictionaryRef this, const __CFString *a2, const __CFString *a3)
{
  if (this)
  {
    if (a2)
    {
      v3 = this;
      keys = @"LogDirectory";
      v4 = *MEMORY[0x29EDB8ED8];
      v5 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], a2, 0);
      this = CFDictionaryCreate(v4, &keys, &v5, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      *v3 = this;
    }
  }

  return this;
}

uint64_t BBUpdaterCommon::inRestoreOS(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  return (BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1;
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v5 = BBUpdaterCommon::BBUMGCopyAnswer(@"RestoreOSBuild", a2);
  ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(&BOOLean, &v5);
  if (BOOLean)
  {
    BBUpdaterCommon::inRestoreOS(void)::restoreOS = CFBooleanGetValue(BOOLean) != 0;
  }

  if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(24, 0, "BBUCommon", "", "inRestoreOS: %d\n", v2, v3, v4, BBUpdaterCommon::inRestoreOS(void)::restoreOS);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void sub_2982A115C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUMGCopyAnswer(BBUpdaterCommon *this, const __CFString *a2)
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    BBUpdaterCommon::BBUMGCopyAnswer();
  }

  v3 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    return 0;
  }

  return v3(this, 0);
}

uint64_t ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke_2()
{
  BBUpdaterCommon::inRestoreOS(void)::recoveryOS = os_variant_is_recovery();
  result = gBBULogMaskGet();
  if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(24, 0, "BBUCommon", "", "InRecoveryOS: %d\n", v1, v2, v3, BBUpdaterCommon::inRestoreOS(void)::recoveryOS);
  }

  return result;
}

uint64_t BBUpdaterCommon::getECID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getECID();
  }

  return BBUpdaterCommon::getECID(void)::ecid;
}

void ___ZN15BBUpdaterCommon7getECIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v5 = BBUpdaterCommon::BBUMGCopyAnswer(@"UniqueChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v5);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getECID(void)::ecid);
    if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(24, 0, "BBUCommon", "", "ECID: 0x%llx\n", v2, v3, v4, BBUpdaterCommon::getECID(void)::ecid);
    }

    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_2982A1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::getEUICCChipID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getEUICCChipID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getEUICCChipID();
  }

  return BBUpdaterCommon::getEUICCChipID(void)::euiccChipID;
}

void ___ZN15BBUpdaterCommon14getEUICCChipIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = BBUpdaterCommon::BBUMGCopyAnswer(@"EUICCChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v2);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getEUICCChipID(void)::euiccChipID);
    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_2982A13FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef BBUpdaterCommon::BBUReadNVRAM@<X0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A13A9840, memory_order_acquire) & 1) == 0)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if (BBUpdaterCommon::BBUReadNVRAM(void)::onceToken != -1)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(&cf, &_MergedGlobals);
    CFOBJ_STR(&cf, __p);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      LOBYTE(v6) = __p[0];
    }

    _BBULog(24, 0, "BBUCommon", "", "NVRAM: %s\n", v3, v4, v5, v6);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  result = _MergedGlobals;
  *a1 = _MergedGlobals;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_2982A1510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15BBUpdaterCommon12BBUReadNVRAMEv_block_invoke()
{
  v25 = 0;
  v0 = MEMORY[0x29C285C50](*MEMORY[0x29EDCA6A0], &v25);
  if (v0)
  {
    v1 = v0;
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", v2, v3, v4, "KERN_SUCCESS == kr");
    result = gBBULogMaskGet();
    if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v9 = "Could not get master port %d\n";
      v23 = v1;
      return _BBULog(24, 0, "BBUCommon", "", v9, v6, v7, v8, v23);
    }
  }

  else
  {
    v10 = IORegistryEntryFromPath(v25, "IODeviceTree:/options");
    if (v10)
    {
      v11 = v10;
      properties[0] = 0;
      properties[1] = &_MergedGlobals;
      CFProperties = IORegistryEntryCreateCFProperties(v10, properties, *MEMORY[0x29EDB8ED8], 0);
      ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(properties);
      if (CFProperties)
      {
        v13 = 1;
      }

      else
      {
        v13 = _MergedGlobals == 0;
      }

      if (v13)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "KERN_SUCCESS == kr && nvramInfo");
        if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(24, 0, "BBUCommon", "", "Could not load NVRAM? %d\n", v17, v18, v19, CFProperties);
        }
      }

      return IOObjectRelease(v11);
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "nvramRef");
      result = gBBULogMaskGet();
      if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
      {
        v9 = "Could not find NVRAM via IOKit\n";
        return _BBULog(24, 0, "BBUCommon", "", v9, v6, v7, v8, v23);
      }
    }
  }

  return result;
}

void sub_2982A1760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(va);
  _Unwind_Resume(a1);
}

BOOL BBUpdaterCommon::isNVRAMKeyPresent(const __CFString *this, const __CFString *a2)
{
  BBUpdaterCommon::BBUReadNVRAM(&theDict);
  if (theDict)
  {
    v3 = CFDictionaryContainsKey(theDict, this) != 0;
  }

  else
  {
    v3 = 0;
  }

  if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    _BBULog(24, 0, "BBUCommon", "", "NVRAM '%s' exists? %s\n", v5, v6, v7, CStringPtr);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
  return v3;
}

void sub_2982A183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUCreateCFError(CFErrorRef *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  userInfo = 0;
  if (!a1)
  {
    v16 = gBBULogMaskGet();
    if ((eUICC::getEID(v16) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v11 = 0;
    if ((*gBBULogMaskGet() & 2) == 0 || gBBULogVerbosity <= 5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v9 = userInfo;
  userInfo = Mutable;
  v18 = v9;
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v18);
  v18 = 0;
  if ((ctu::cf::convert_copy() & 1) == 0)
  {
    v11 = 0;
    if ((*gBBULogMaskGet() & 2) == 0 || gBBULogVerbosity < 6)
    {
      goto LABEL_16;
    }

LABEL_14:
    _BBULog(1, 6, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n", v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Support/BBUCommon.cpp");
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v10 = v18;
  ctu::cf::insert<__CFString const*,__CFString const*>(userInfo, *MEMORY[0x29EDB8F38], v18);
  if (a4)
  {
    ctu::cf::insert<__CFString const*,__CFError *>(userInfo, *MEMORY[0x29EDB8F68], a4);
  }

  *a1 = CFErrorCreate(v7, @"BBUpdater", a3, userInfo);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = 1;
LABEL_16:
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&userInfo);
  return v11;
}

void sub_2982A1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFString const*>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_2982A1ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFError *>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_2982A1B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void *BBUpdaterCommon::BBUStrError@<X0>(BBUpdaterCommon *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__strerrbuf = 0u;
  v7 = 0u;
  if (strerror_r(this, __strerrbuf, 0x80uLL))
  {
    snprintf(__strerrbuf, 0x80uLL, "unknown error %d", v2);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a2, __strerrbuf);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

const char *BBUpdaterCommon::redactedString(BBUpdaterCommon *this, const char *a2)
{
  if (BBUpdaterCommon::inRestoreOS(this))
  {
    return this;
  }

  else
  {
    return "0x<< SNUM >>";
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *___ZN15BBUpdaterCommonL15BBUMGCopyAnswerEPK10__CFString_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer = result;
  }

  return result;
}

const void **ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x28uLL);
  v8 = v7;
  *v7 = a2;
  *(v7 + 1) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 16), *a4, *(a4 + 8));
  }

  else
  {
    *(v7 + 1) = *a4;
    *(v7 + 4) = *(a4 + 16);
  }

  return v8;
}

void *ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFBooleanGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFNumberGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v6);
  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return _BBULog(0, 0xFFFFFFFFLL, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _GLOBAL__sub_I_BBUCommon_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&BBUpdaterCommon::bbCoredumpPath, "/mnt4/wireless/Library/Logs/CrashReporter/Vinyl/Baseband/baseband_updater_logs/");
  v0 = MEMORY[0x29EDC9388];

  return __cxa_atexit(v0, &BBUpdaterCommon::bbCoredumpPath, &dword_29826A000);
}

uint64_t eUICC::TwoPhaseProv::SessionData::processAlderResponse(uint64_t a1, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, @"Command");
  v5 = CFGetTypeID(Value);
  if (v5 == CFStringGetTypeID())
  {
    if (CFEqual(Value, @"GetBppResp"))
    {
      v6 = *a2;
      v12 = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = eUICC::TwoPhaseProv::SessionData::convertGbppToPbiBpp(a1, &v12);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "CFGetTypeID( cmd) == CFStringGetTypeID()");
    return 27;
  }

  return v7;
}

void sub_2982A21A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::SessionData::convertGbppToPbiBpp(uint64_t a1, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, @"Command");
  if (!Value)
  {
    gBBULogMaskGet();
    v19 = "cmd";
LABEL_13:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, v19);
    return 26;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "CFGetTypeID( cmd) == CFStringGetTypeID()");
    return 27;
  }

  if (!CFEqual(v5, @"GetBppResp"))
  {
    gBBULogMaskGet();
    v19 = "CFEqual(cmd, Alder::ValueCommandGetBppResp)";
    goto LABEL_13;
  }

  v7 = CFDictionaryGetValue(*a2, @"BPPMetaData");
  if (!v7)
  {
    gBBULogMaskGet();
LABEL_12:
    v19 = "data";
    goto LABEL_13;
  }

  v8 = *MEMORY[0x29EDB8ED8];
  Copy = CFDataCreateCopy(*MEMORY[0x29EDB8ED8], v7);
  v10 = *(a1 + 24);
  *(a1 + 24) = Copy;
  v31 = v10;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v31);
  if (!*(a1 + 24))
  {
    gBBULogMaskGet();
    v27 = "pbiReq.get()";
LABEL_16:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, v27);
    return 17;
  }

  DataFromPbiReq = eUICC::TwoPhaseProv::SessionData::extractDataFromPbiReq(a1, (a1 + 24));
  if (!DataFromPbiReq)
  {
    v28 = CFDictionaryGetValue(*a2, @"BPP");
    if (v28)
    {
      v29 = CFDataCreateCopy(v8, v28);
      v30 = *(a1 + 32);
      *(a1 + 32) = v29;
      v31 = v30;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v31);
      if (*(a1 + 32))
      {
        return 0;
      }

      gBBULogMaskGet();
      v27 = "bpp.get()";
      goto LABEL_16;
    }

    gBBULogMaskGet();
    goto LABEL_12;
  }

  v12 = DataFromPbiReq;
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kVinylResultSuccess == result");
  return v12;
}

double eUICC::TwoPhaseProv::SessionData::clearTransientData(eUICC::TwoPhaseProv::SessionData *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

double eUICC::TwoPhaseProv::SessionData::clear(eUICC::TwoPhaseProv::SessionData *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t eUICC::TwoPhaseProv::SessionData::extractDataFromPbiReq(uint64_t a1, CFDataRef *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a2);
  MutableCopy = CFDataCreateMutableCopy(v4, Length, *a2);
  v33[2] = MutableCopy;
  v33[0] = CFDataGetMutableBytePtr(MutableCopy);
  v33[1] = CFDataGetLength(MutableCopy);
  if (DERDecodeSeqContentInit(v33, v36) || DERDecodeSeqNext(v36, &v34))
  {
    gBBULogMaskGet();
    v10 = "(DR_Success == ret)";
LABEL_4:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, v10);
    v11 = 27;
    goto LABEL_5;
  }

  if (v34 != 0xE00000000000002ELL)
  {
    gBBULogMaskGet();
    v10 = "TAG_PBI == dec.tag";
    goto LABEL_4;
  }

  if (DERParseSequenceContent(&v35, 4u, &eUICC::TwoPhaseProv::prepareBppInstallationReqSpec, v32, 0x10uLL))
  {
    gBBULogMaskGet();
LABEL_11:
    v10 = "(ret == DR_Success)";
    goto LABEL_4;
  }

  if (DERParseSequenceContent(v32, 5u, &eUICC::TwoPhaseProv::serverSignedPayloadSpec, v28, 0x30uLL) || !v30)
  {
    gBBULogMaskGet();
    v10 = "(ret == DR_Success) && (ssp_decoded.eUICCSessionId.length > 0)";
    goto LABEL_4;
  }

  if (DERParseSequenceContent(&v31, 2u, &eUICC::TwoPhaseProv::smdpSignedMetadataSpec, v27, 0x10uLL))
  {
    gBBULogMaskGet();
    goto LABEL_11;
  }

  if (DERParseSequenceContent(v27, 5u, &eUICC::TwoPhaseProv::smdpMetadataSpec, &v23, 0x20uLL) || !v24 || !v26)
  {
    gBBULogMaskGet();
    v10 = "(ret == DR_Success) && (sm_decoded.eid.length > 0) && (sm_decoded.transactionId.length > 0)";
    goto LABEL_4;
  }

  v13 = CFDataCreate(v4, v29, v30);
  v14 = *(a1 + 16);
  *(a1 + 16) = v13;
  v37 = v14;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v37);
  if (*(a1 + 16))
  {
    v15 = CFDataCreate(v4, v23, v24);
    v16 = *a1;
    *a1 = v15;
    v37 = v16;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v37);
    if (*a1)
    {
      v17 = CFDataCreate(v4, v25, v26);
      v18 = *(a1 + 8);
      *(a1 + 8) = v17;
      v37 = v18;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v37);
      if (*(a1 + 8))
      {
        v11 = 0;
        goto LABEL_5;
      }

      gBBULogMaskGet();
      v22 = "transactionId";
    }

    else
    {
      gBBULogMaskGet();
      v22 = "eid";
    }
  }

  else
  {
    gBBULogMaskGet();
    v22 = "euiccSessionId";
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, v22);
  v11 = 17;
LABEL_5:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v11;
}

uint64_t eUICC::TwoPhaseProv::SessionData::extractDataFromPbiRsp(uint64_t a1, CFDataRef *a2)
{
  v8 = 0;
  v9 = 0;
  v3 = eUICC::TwoPhaseProv::ExtractDataFromPbiRsp(a2, &v9, &v8);
  if (v3)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v4, v5, v6, "kVinylResultSuccess == ret");
  }

  else
  {
    if (v9)
    {
      eUICC::TwoPhaseProv::SessionData::extractDataFromPir(a1, &v9);
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    if (v8)
    {
      ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::operator=((a1 + 56), &v8);
      v3 = 1;
    }
  }

  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v8);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v9);
  return v3;
}

void sub_2982A2864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef((v6 - 32));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v6 - 24));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::SessionData::extractDataFromPir(uint64_t a1, CFDataRef *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFDataGetLength(*a2);
  MutableCopy = CFDataCreateMutableCopy(v4, v5, *a2);
  v37[4] = MutableCopy;
  v23[0] = CFDataGetMutableBytePtr(MutableCopy);
  v23[1] = CFDataGetLength(MutableCopy);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::operator=((a1 + 40), a2);
  if (DERDecodeSeqContentInit(v23, v40) || DERDecodeSeqNext(v40, &v38))
  {
    goto LABEL_3;
  }

  if (v38 != 0xA000000000000037)
  {
    gBBULogMaskGet();
    v10 = "dec.tag == TAG_PIR";
    goto LABEL_4;
  }

  if (DERParseSequenceContent(&v39, 3u, &eUICC::TwoPhaseProv::profileInstallationResultSpec, v37, 0x20uLL))
  {
    goto LABEL_3;
  }

  if (DERParseSequenceContent(v37, 4u, &eUICC::TwoPhaseProv::profileInstallationResultDataSpec, v34, 0x30uLL))
  {
    goto LABEL_3;
  }

  v13 = CFDataCreate(v4, v34[0], v34[1]);
  v14 = *(a1 + 8);
  *(a1 + 8) = v13;
  v41 = v14;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v41);
  if (DERParseSequenceContent(&v35, 6u, &eUICC::TwoPhaseProv::notificationMetaDataSpec, &bytes, 0x10uLL))
  {
    goto LABEL_3;
  }

  if (!length)
  {
    gBBULogMaskGet();
    v10 = "nm_decoded.seqNumber.length > 0";
    goto LABEL_4;
  }

  v15 = CFDataCreate(v4, bytes, length);
  v16 = *(a1 + 48);
  *(a1 + 48) = v15;
  v41 = v16;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v41);
  if (DERParseSequenceContent(&v36, 2u, &eUICC::TwoPhaseProv::finalResultSpec, v30, 0x20uLL))
  {
LABEL_3:
    gBBULogMaskGet();
    v10 = "(ret == DR_Success)";
LABEL_4:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, v10);
    goto LABEL_5;
  }

  if (!(v31 | v33))
  {
    gBBULogMaskGet();
    v10 = "(fr_decoded.successResult.length > 0) || (fr_decoded.errorResult.length > 0)";
    goto LABEL_4;
  }

  if (!v33)
  {
LABEL_24:
    v11 = 0;
    if (!MutableCopy)
    {
      return v11;
    }

    goto LABEL_6;
  }

  if (!DERParseSequenceContent(&v32, 3u, &eUICC::TwoPhaseProv::errorResultSpec, v26, 0x20uLL) && v27 && v29 == 1)
  {
    valuePtr = *v28;
    v17 = CFNumberCreate(v4, kCFNumberCharType, &valuePtr);
    v18 = *(a1 + 56);
    *(a1 + 56) = v17;
    v41 = v18;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v41);
    goto LABEL_24;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, "(ret == DR_Success) && (er_decoded.bppCommandId.length > 0) && (er_decoded.errorReason.length == 1)");
LABEL_5:
  v11 = 27;
  if (MutableCopy)
  {
LABEL_6:
    CFRelease(MutableCopy);
  }

  return v11;
}

uint64_t eUICC::TwoPhaseProv::SessionData::isEidEligible(eUICC::TwoPhaseProv::SessionData *this, const Options *a2)
{
  v22 = 0;
  v23.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v23.__r_.__value_.__r.__words[1] = xmmword_2982C42E0;
  strcpy(v23.__r_.__value_.__l.__data_, "89[0-9]{14}((5[1-9])|(8[0-46-9]))[0-9]{14}");
  v20 = 0;
  v21 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  if (*this)
  {
    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v4 = xmmword_2A13A8CA0;
    if (!xmmword_2A13A8CA0)
    {
      BBUCapabilities::create_default_global(__p);
      v5 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v6 = *(&xmmword_2A13A8CA0 + 1);
      xmmword_2A13A8CA0 = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
        }
      }

      v4 = xmmword_2A13A8CA0;
    }

    v7 = *(&xmmword_2A13A8CA0 + 1);
    if (*(&xmmword_2A13A8CA0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v8 = BBUCapabilities::supportsEuiccViaEOS(v4);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v8)
    {
      std::string::__assign_external(&v23, "89[0-9]{14}9[34567][0-9]{14}", 0x1CuLL);
    }

    v9 = *this;
    ctu::cf::assign();
    eUICC::TwoPhaseProv::StringifyDataBuffer(&v20, 1, __p);
    v10 = *(a2 + 12);
    v11 = *(a2 + 111);
    *v18 = *__p;
    v19 = v25[0];
    if ((v11 & 0x80u) == 0)
    {
      v10 = v11;
    }

    if (v10)
    {
      std::string::operator=(&v23, (a2 + 88));
    }

    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v16, &v23, 0);
    v12 = HIBYTE(v19);
    if (v19 >= 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v18[0];
    }

    if (v19 < 0)
    {
      v12 = v18[1];
    }

    v25[4] = 0;
    v25[5] = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    *__p = 0u;
    memset(v25, 0, 25);
    v14 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v13, &v12[v13], __p, v16, 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    std::locale::~locale(&v16[0].__loc_);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }

  else
  {
    v14 = 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_2982A2E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::SharedRef(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v5);
  }

  return a1;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::regex_traits<char> *std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(std::regex_traits<char> *a1, uint64_t a2, int a3)
{
  v6 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v6[1].__loc_.__locale_) = a3;
  *(&v6[1].__loc_.__locale_ + 4) = 0u;
  *(&v6[1].__col_ + 4) = 0u;
  HIDWORD(v6[2].__ct_) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(v6, v8, (v8 + v7)) != (v8 + v7))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_2982A30F8(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x29C286BB0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x29EDC93D0]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x29EDC93E8]);
  return this;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1EB3C28;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  std::shared_ptr<std::__empty_state<char>>::reset[abi:ne200100]<std::__empty_state<char>,0>((a1 + 40), v7);
  *(a1 + 56) = *(a1 + 40);
  v8 = *(a1 + 24) & 0x1F0;
  if (v8 > 0x3F)
  {
    switch(v8)
    {
      case 0x40u:
LABEL_12:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      case 0x80u:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
      case 0x100u:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
      default:
        goto LABEL_24;
    }
  }

  else if (v8)
  {
    if (v8 != 16)
    {
      if (v8 != 32)
      {
LABEL_24:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
      }

      goto LABEL_12;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  else
  {

    return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 17);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::shared_ptr<std::__empty_state<char>>::reset[abi:ne200100]<std::__empty_state<char>,0>(void *a1, uint64_t a2)
{
  std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    v8 = operator new(0x10uLL);
    v9 = a1->__end_;
    first = v9->__first_;
    v8[1].__vftable = first;
    v9->__first_ = v8;
    a1->__end_ = a1->__end_->__first_;
  }

  while (v7 != a3 && *v7 == 124)
  {
    v11 = a1->__end_;
    v12 = v7 + 1;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, v7 + 1, a3);
    if (v12 == v7)
    {
      v13 = operator new(0x10uLL);
      v14 = a1->__end_;
      v15 = v14->__first_;
      v13[1].__vftable = v15;
      v14->__first_ = v13;
      a1->__end_ = a1->__end_->__first_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, (v8 + 1), a3);
    if (v8 + 1 == v10)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    first = end->__first_;
    v9[1].__vftable = first;
    end->__first_ = v9;
    a1->__end_ = a1->__end_->__first_;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  }

  while (1)
  {
    v15 = v8 == a3 ? v8 : v8 + 1;
    if (v15 == a3)
    {
      break;
    }

    v11 = memchr(v15, 10, a3 - v15);
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a3;
    }

    v12 = a1->__end_;
    if (v8 == v15)
    {
      v13 = operator new(0x10uLL);
      v14 = v12->__first_;
      v13[1].__vftable = v14;
      v12->__first_ = v13;
      a1->__end_ = a1->__end_->__first_;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v15, v8);
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v12);
  }

  return a3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    first = end->__first_;
    v9[1].__vftable = first;
    end->__first_ = v9;
    a1->__end_ = a1->__end_->__first_;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  }

  while (1)
  {
    v15 = v8 == a3 ? v8 : (&v8->__traits_.__loc_.__locale_ + 1);
    if (v15 == a3)
    {
      break;
    }

    v11 = memchr(v15, 10, a3 - v15);
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a3;
    }

    v12 = a1->__end_;
    if (v8 == v15)
    {
      v13 = operator new(0x10uLL);
      v14 = v12->__first_;
      v13[1].__vftable = v14;
      v12->__first_ = v13;
      a1->__end_ = a1->__end_->__first_;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v15, v8);
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v12);
  }

  return a3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 14);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void *std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB3C80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2982A39A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  operator delete(this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_alternation(std::basic_regex<char> *this, std::__owns_one_state<char> *__sa, std::__owns_one_state<char> *__sb)
{
  v6 = operator new(0x18uLL);
  first = __sb->__first_;
  v6[1].__vftable = __sa->__first_;
  v6[2].__vftable = first;
  v6->__vftable = &unk_2A1EB4268;
  __sa->__first_ = v6;
  __sb->__first_ = 0;
  v8 = operator new(0x10uLL);
  v9 = this->__end_->__first_;
  v8[1].__vftable = v9;
  __sb->__first_ = v8;
  this->__end_->__first_ = 0;
  v10 = operator new(0x10uLL);
  v11 = __sb->__first_;
  v10->__vftable = &unk_2A1EB42B0;
  v10[1].__vftable = v11;
  this->__end_->__first_ = v10;
  this->__end_ = __sb->__first_;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          marked_count = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 1, this->__marked_count_);
          this->__marked_count_ += marked_count;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

          goto LABEL_27;
        }

        if (v7 == 61)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          v9 = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 0, this->__marked_count_);
          this->__marked_count_ += v9;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

LABEL_27:
          v3 = v8 + 1;
          std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v14.__traits_.__loc_);
          return v3;
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v11 = a2[1];
    if (v11 == 66)
    {
      v12 = 1;
    }

    else
    {
      if (v11 != 98)
      {
        return v3;
      }

      v12 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x3E)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          v7 = operator new(0x10uLL);
          end = this->__end_;
          first = end->__first_;
          v7->__vftable = &unk_2A1EB3EC0;
          v7[1].__vftable = first;
          end->__first_ = v7;
          this->__end_ = this->__end_->__first_;
          return ++v3;
        }

        if (v6 - 42 >= 2)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(this, a2, a3);
        }

LABEL_29:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      v11 = a2 + 1;
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && *v11 == 63 && a2[2] == 58)
        {
          ++this->__open_count_;
          v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, a2 + 3, a3);
          if (v12 != a3 && *v12 == 41)
          {
            --this->__open_count_;
            return v12 + 1;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
          marked_count = this->__marked_count_;
          ++this->__open_count_;
          v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, v11, a3);
          if (v14 != a3)
          {
            v3 = v14;
            if (*v14 == 41)
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
              --this->__open_count_;
              return ++v3;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    if (*a2 > 0x5Bu)
    {
      if (v6 == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(this, a2, a3);
      }

      if (v6 == 123)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v6 == 91)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_29;
      }
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v11, v23, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(std::basic_regex<char> *this)
{
  v2 = operator new(0x18uLL);
  v3 = (this->__flags_ & 0x5F0) == 1024;
  end = this->__end_;
  first = end->__first_;
  v2->__vftable = &unk_2A1EB3DA0;
  v2[1].__vftable = first;
  LOBYTE(v2[2].__vftable) = v3;
  end->__first_ = v2;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(std::basic_regex<char> *this)
{
  v2 = operator new(0x18uLL);
  v3 = (this->__flags_ & 0x5F0) == 1024;
  end = this->__end_;
  first = end->__first_;
  v2->__vftable = &unk_2A1EB3DE8;
  v2[1].__vftable = first;
  LOBYTE(v2[2].__vftable) = v3;
  end->__first_ = v2;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(std::basic_regex<char> *this, BOOL a2)
{
  v4 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v4 = &unk_2A1EB3E30;
  *(v4 + 1) = first;
  std::locale::locale(v4 + 2, &this->__traits_.__loc_);
  *(v4 + 24) = *&this->__traits_.__ct_;
  v4[40] = a2;
  this->__end_->__first_ = v4;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(std::basic_regex<char> *this, const std::basic_regex<char> *a2, BOOL a3, unsigned int a4)
{
  v8 = operator new(0x58uLL);
  std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](v8, a2, a3, this->__end_->__first_, a4);
  this->__end_->__first_ = v8;
  this->__end_ = this->__end_->__first_;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 6);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E30;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E30;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_2A1EB3E78;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E78;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E78;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_2982A4F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_2982A534C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) >= __n)
  {
    end = this->__end_;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    if (v16 >= __n)
    {
      v17 = __n;
    }

    else
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    }

    if (v17)
    {
      v18 = __u->std::pair<const char *, const char *>;
      matched = __u->matched;
      v20 = begin;
      do
      {
        v20->std::pair<const char *, const char *> = v18;
        v20->matched = matched;
        ++v20;
        --v17;
      }

      while (v17);
    }

    if (__n <= v16)
    {
      this->__end_ = &begin[__n];
    }

    else
    {
      v21 = &end[__n - v16];
      v22 = 24 * __n - 8 * ((end - begin) >> 3);
      do
      {
        v23 = __u->std::pair<const char *, const char *>;
        *&end->matched = *&__u->matched;
        end->std::pair<const char *, const char *> = v23;
        ++end;
        v22 -= 24;
      }

      while (v22);
      this->__end_ = v21;
    }
  }

  else
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= __n)
    {
      v9 = __n;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v10);
    v11 = this->__end_;
    v12 = &v11[__n];
    v13 = 24 * __n;
    do
    {
      v14 = __u->std::pair<const char *, const char *>;
      *&v11->matched = *&__u->matched;
      v11->std::pair<const char *, const char *> = v14;
      ++v11;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

char *std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 12);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 16);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[96 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[96 * v6];
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 9) = 0;
  *(v8 + 56) = *(a2 + 56);
  *(v8 + 9) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v10 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 10) = v10;
  *&v19 = v8 + 96;
  v11 = *(a1 + 8);
  v12 = &v8[*a1 - v11];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v17);
  return v16;
}

void sub_2982A58F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x2AAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(96 * a2);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v5);
      v5 += 12;
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v13 = &end[__n];
      v14 = 24 * __n;
      do
      {
        v15 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v15;
        ++end;
        v14 -= 24;
      }

      while (v14);
      end = v13;
    }

    this->__end_ = end;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v9 = v8 + __n;
    if (v8 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v11);
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v8];
    v17 = (v16 + 24 * __n);
    v18 = 24 * __n;
    v19 = v16;
    do
    {
      v20 = __x->std::pair<const char *, const char *>;
      v19[1].first = *&__x->matched;
      *v19 = v20;
      v19 = (v19 + 24);
      v18 -= 24;
    }

    while (v18);
    v21 = &v12[24 * v11];
    begin = this->__begin_;
    v23 = this->__end_;
    v24 = (v16 + this->__begin_ - v23);
    if (v23 != this->__begin_)
    {
      v25 = v24;
      do
      {
        v26 = begin->std::pair<const char *, const char *>;
        *&v25->matched = *&begin->matched;
        v25->std::pair<const char *, const char *> = v26;
        ++v25;
        ++begin;
      }

      while (begin != v23);
      begin = this->__begin_;
    }

    this->__begin_ = v24;
    this->__end_ = v17;
    this->__end_cap_.__value_ = v21;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = value - this->__begin_;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v8];
    v13 = &v11[16 * v10];
    bzero(v12, 16 * __n);
    v14 = &v12[16 * __n];
    v15 = this->__end_ - this->__begin_;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], this->__begin_, v15);
    begin = this->__begin_;
    this->__begin_ = v16;
    this->__end_ = v14;
    this->__end_cap_.__value_ = v13;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

char *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2;
      *(v7 + 16) = *(a2 + 2);
      *v7 = v8;
      v7 += 24;
      a2 = (a2 + 24);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_2982A5DE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_2982A5E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[16 * v4];
  return result;
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_21;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = v5;
        v5 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v5, a3, v7);
      }

      while (v8 != v5);
    }

    if (v8 == a3)
    {
      goto LABEL_21;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    v2 = operator new(0x18uLL);
    v3 = this->__marked_count_ + 1;
    this->__marked_count_ = v3;
    end = this->__end_;
    first = end->__first_;
    v2->__vftable = &unk_2A1EB4100;
    v2[1].__vftable = first;
    LODWORD(v2[2].__vftable) = v3;
    end->__first_ = v2;
    this->__end_ = this->__end_->__first_;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    v4 = operator new(0x18uLL);
    end = this->__end_;
    first = end->__first_;
    v4->__vftable = &unk_2A1EB4148;
    v4[1].__vftable = first;
    LODWORD(v4[2].__vftable) = a2;
    end->__first_ = v4;
    this->__end_ = this->__end_->__first_;
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 11);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 3);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a3 != a2)
  {
    v4 = *a2;
    v5 = v4 - 48;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return ++v3;
    }

    if ((v4 - 49) > 8)
    {
      return v3;
    }

    if (++v3 == a3)
    {
      v3 = a3;
    }

    else
    {
      while (1)
      {
        v6 = *v3;
        if ((v6 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_16;
        }

        ++v3;
        v5 = v6 + 10 * v5 - 48;
        if (v3 == a3)
        {
          v3 = a3;
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (v5 <= a1->__marked_count_)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
      return v3;
    }

LABEL_16:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v17 = 12;
          goto LABEL_92;
        }

        v8 = 12;
        goto LABEL_77;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v17 = 10;
          goto LABEL_92;
        }

        v8 = 10;
        goto LABEL_77;
      }
    }

    else
    {
      switch(v5)
      {
        case '0':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 0;
            return ++v4;
          }

          v8 = 0;
          goto LABEL_77;
        case 'c':
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_95;
          }

          if (*v4 < 65)
          {
            goto LABEL_95;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_95;
          }

          v8 = v7 & 0x1F;
LABEL_74:
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v8;
            *(a4 + 1) = 0;
            return ++v4;
          }

          goto LABEL_77;
        case '_':
          goto LABEL_95;
      }
    }

    goto LABEL_72;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v17 = 13;
        goto LABEL_92;
      }

      v8 = 13;
      goto LABEL_77;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v17 = 9;
        goto LABEL_92;
      }

      v8 = 9;
LABEL_77:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      return ++v4;
    }

LABEL_72:
    v8 = v5;
    if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_74;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_45;
      }

      goto LABEL_72;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v17 = 11;
LABEL_92:
      *a4 = v17;
      return ++v4;
    }

    v8 = 11;
    goto LABEL_77;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_95;
  }

  v9 = a2[1];
  if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
  {
    goto LABEL_95;
  }

  v4 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_95;
  }

  v10 = *v4;
  v11 = -48;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    v10 |= 0x20u;
    if ((v10 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v11 = -87;
  }

  v6 = 16 * (v11 + v10);
LABEL_45:
  if (v4 + 1 == a3)
  {
    goto LABEL_95;
  }

  v12 = v4[1];
  v13 = -48;
  if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
  {
    v12 |= 0x20u;
    if ((v12 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v13 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_95;
  }

  v14 = v4[2];
  v15 = -48;
  if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
  {
    goto LABEL_55;
  }

  v14 |= 0x20u;
  if ((v14 - 97) >= 6)
  {
LABEL_95:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v15 = -87;
LABEL_55:
  v16 = v15 + v14 + 16 * (v13 + v6 + v12);
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v16;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
  }

  v4 += 3;
  return v4;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 4);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1EB3FE0;
LABEL_6:
    v8->__locale_ = v10;
    std::locale::locale(v8 + 2, &this->__traits_.__loc_);
    *&v9[3].__locale_ = *&this->__traits_.__ct_;
    LODWORD(v9[5].__locale_) = __i;
    this->__end_->__first_ = v9;
    goto LABEL_7;
  }

  if ((flags & 8) != 0)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1EB4028;
    goto LABEL_6;
  }

  v5 = operator new(0x18uLL);
  end = this->__end_;
  first = end->__first_;
  v5->__vftable = &unk_2A1EB4070;
  v5[1].__vftable = first;
  LODWORD(v5[2].__vftable) = __i;
  end->__first_ = v5;
LABEL_7:
  this->__end_ = this->__end_->__first_;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1EB3F08;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_2982A6C2C(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F08;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F08;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F50;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F50;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3FE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3FE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB4028;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB4028;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}