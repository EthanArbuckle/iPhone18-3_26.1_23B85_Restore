void sub_297A4765C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t Bsp::ARICommandDriver::SysGetInfoV2(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x48uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::ARI_CsiSysGetInfoRspCbV2_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__94;
  v76 = __Block_byref_object_dispose__95;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 84410368);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("SysGetInfoV2", "Failed CsiSysGetInfoRspCbV2\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A47B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t Bsp::ARICommandDriver::GetNvItemsSetting(uint64_t a1, uint64_t a2, AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x58uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::ARI_FactoryGetNvItemsSettingRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__94;
  v76 = __Block_byref_object_dispose__95;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4177625088);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetNvItemsSetting", "Failed FactoryGetNvItemsSettingRspCb\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A48068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void Bsp::ARICommandDriver::~ARICommandDriver(Bsp::ARICommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__95(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk35ARI_CsiGetCurrentBootStateRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x48uLL);
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_CsiSysGetInfoRspCbV2_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x48uLL);
  AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::ARI_CsiSysGetInfoRspCbV2_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk37ARI_FactoryGetNvItemsSettingRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x58uLL);
  AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::ARI_FactoryGetNvItemsSettingRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

__int128 *KTLGetKDMProductName(void)
{
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      return &xmmword_2A13A4F78;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      return &xmmword_2A13A4F78;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    return 0;
  }

  return &xmmword_2A13A4F78;
}

unint64_t KTLGetKDMFilename@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v5 = &xmmword_2A13A4F78;
LABEL_9:
  result = snprintf(__str, 0xFFuLL, "%s%s%s.%s", v5, "_", a1, "kdm");
  if (result <= 254)
  {
    result = strlen(__str);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (result | 7) + 1;
      }

      v9 = operator new(v8);
      *(a2 + 1) = v7;
      *(a2 + 2) = v8 | 0x8000000000000000;
      *a2 = v9;
      a2 = v9;
    }

    else
    {
      a2[23] = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    result = memcpy(a2, __str, v7);
LABEL_20:
    a2 += v7;
    goto LABEL_21;
  }

  a2[23] = 0;
LABEL_21:
  *a2 = 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void KTLGetKeyword(const char *a1@<X0>, std::string *a2@<X8>)
{
  v30.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v3;
  *&v30.__r_.__value_.__l.__data_ = v3;
  v27 = v3;
  v28 = v3;
  strlen(a1);
  ctu::partition();
  memset(&v26, 170, sizeof(v26));
  if (SBYTE7(v28) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v27, *(&v27 + 1));
  }

  else
  {
    *&v26.__r_.__value_.__l.__data_ = v27;
    v26.__r_.__value_.__r.__words[2] = v28;
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v5 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_39;
  }

  memset(__dst, 170, sizeof(__dst));
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_14;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_14;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v7 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v7 = &xmmword_2A13A4F78;
LABEL_15:
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    __dst[1] = v9;
    __dst[2] = v11 | 0x8000000000000000;
    __dst[0] = v10;
    goto LABEL_23;
  }

  HIBYTE(__dst[2]) = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_23:
    memcpy(v10, v7, v9);
  }

  *(v10 + v9) = 0;
  v5 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v26;
  }

  else
  {
    v12 = v26.__r_.__value_.__r.__words[0];
  }

  v13 = HIBYTE(__dst[2]);
  v14 = SHIBYTE(__dst[2]);
  v15 = __dst[0];
  if (__dst[2] >= 0)
  {
    v16 = __dst;
  }

  else
  {
    v13 = __dst[1];
    v16 = __dst[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v26.__r_.__value_.__l.__size_;
  }

  if (v13 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  if (strncasecmp(v12, v16, v18))
  {
    goto LABEL_37;
  }

  memset(&v24, 170, sizeof(v24));
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v30;
  }

  v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v24.__r_.__value_.__l.__size_;
  }

  if (!v20)
  {
LABEL_63:
    if (v19 < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

LABEL_37:
    if (v14 < 0)
    {
      operator delete(v15);
    }

LABEL_39:
    *(&a2->__r_.__value_.__s + 23) = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_40;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v22 = v21;
  *v23 = v21;
  ctu::partition();
  memset(a2, 170, sizeof(std::string));
  if (SHIBYTE(v23[0]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, v22[0], v22[1]);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v22;
    a2->__r_.__value_.__r.__words[2] = v23[0];
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!a2->__r_.__value_.__l.__size_)
    {
      operator delete(a2->__r_.__value_.__l.__data_);
LABEL_75:
      operator delete(0xAAAAAAAAAAAAAAAALL);
      operator delete(v23[1]);
      if (SHIBYTE(v23[0]) < 0)
      {
        operator delete(v22[0]);
      }

      v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      goto LABEL_63;
    }
  }

  else if (!*(&a2->__r_.__value_.__s + 23))
  {
    goto LABEL_75;
  }

  operator delete(0xAAAAAAAAAAAAAAAALL);
  operator delete(v23[1]);
  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22[0]);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_72:
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_73;
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_72;
  }

  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_73:
  operator delete(v15);
LABEL_40:
  if (v5 < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SBYTE7(v28) & 0x80000000) == 0)
    {
      return;
    }

LABEL_48:
    operator delete(v27);
    return;
  }

LABEL_47:
  operator delete(*(&v28 + 1));
  if (SBYTE7(v28) < 0)
  {
    goto LABEL_48;
  }
}

void sub_297A48A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  std::tuple<std::string,std::string,std::string>::~tuple(&a13);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_4:
    std::tuple<std::string,std::string,std::string>::~tuple(v35 - 144);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a32);
  std::tuple<std::string,std::string,std::string>::~tuple(v35 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::string,std::string,std::string>::~tuple(uint64_t a1)
{
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*a1);
  return a1;
}

unint64_t KTLGetETBFilename@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v5 = &xmmword_2A13A4F78;
LABEL_9:
  result = snprintf(__str, 0xFFuLL, "%s%s%s.%s", v5, "_", a1, "etb");
  if (result <= 254)
  {
    result = strlen(__str);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (result | 7) + 1;
      }

      v9 = operator new(v8);
      *(a2 + 1) = v7;
      *(a2 + 2) = v8 | 0x8000000000000000;
      *a2 = v9;
      a2 = v9;
    }

    else
    {
      a2[23] = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    result = memcpy(a2, __str, v7);
LABEL_20:
    a2 += v7;
    goto LABEL_21;
  }

  a2[23] = 0;
LABEL_21:
  *a2 = 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KTLGetMaskFileExtensionName@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  switch(result)
  {
    case 2:
      *(a2 + 23) = 3;
      *a2 = 26211;
      *(a2 + 2) = 103;
      break;
    case 1:
      *(a2 + 23) = 3;
      *a2 = 29797;
      *(a2 + 2) = 98;
      break;
    case 0:
      *(a2 + 23) = 3;
      *a2 = 25707;
      *(a2 + 2) = 109;
      break;
  }

  return result;
}

unint64_t KTLGetTraceConfigFilename@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v5 = &xmmword_2A13A4F78;
LABEL_9:
  result = snprintf(__str, 0xFFuLL, "%s%s%s.%s", v5, "_", a1, "cfg");
  if (result <= 254)
  {
    result = strlen(__str);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (result | 7) + 1;
      }

      v9 = operator new(v8);
      *(a2 + 1) = v7;
      *(a2 + 2) = v8 | 0x8000000000000000;
      *a2 = v9;
      a2 = v9;
    }

    else
    {
      a2[23] = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    result = memcpy(a2, __str, v7);
LABEL_20:
    a2 += v7;
    goto LABEL_21;
  }

  a2[23] = 0;
LABEL_21:
  *a2 = 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

double hsfiler::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t hsfiler::ARICommandDriver::StartReadSession(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__7;
  v76 = __Block_byref_object_dispose__7;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4178509824);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("StartReadSession", "Failed IBIFilerHSStartReadBBSessionReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A49500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t hsfiler::ARICommandDriver::GetReadSize(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x58uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__7;
  v76 = __Block_byref_object_dispose__7;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4178542592);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetReadSize", "Failed IBIFilerHSReadBBGetSizeReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A49A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t hsfiler::ARICommandDriver::ReadFileFromBB(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x70uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::ARI_IBIFilerHSReadBBRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__7;
  v76 = __Block_byref_object_dispose__7;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4178575360);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("ReadFileFromBB", "Failed IBIFilerHSReadBBReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A49F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t hsfiler::ARICommandDriver::StartWriteSession(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__7;
  v76 = __Block_byref_object_dispose__7;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4178608128);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("StartWriteSession", "Failed IBIFilerHSStartWriteBBSessionReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A4A414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t hsfiler::ARICommandDriver::WriteFileToBB(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::ARI_IBIFilerHSWriteBBRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__7;
  v76 = __Block_byref_object_dispose__7;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4178640896);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("WriteFileToBB", "Failed IBIFilerHSWriteBBReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A4A918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t hsfiler::ARICommandDriver::EndSession(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::ARI_IBIFilerHSEndBBSessionRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__7;
  v76 = __Block_byref_object_dispose__7;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4178673664);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("EndSession", "Failed IBIFilerHSEndBBSessionReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A4AE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void hsfiler::ARICommandDriver::~ARICommandDriver(hsfiler::ARICommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk41ARI_IBIFilerHSStartReadBBSessionRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk36ARI_IBIFilerHSReadBBGetSizeRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x58uLL);
  AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk29ARI_IBIFilerHSReadBBRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x70uLL);
  AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::ARI_IBIFilerHSReadBBRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk42ARI_IBIFilerHSStartWriteBBSessionRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk30ARI_IBIFilerHSWriteBBRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::ARI_IBIFilerHSWriteBBRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk35ARI_IBIFilerHSEndBBSessionRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::ARI_IBIFilerHSEndBBSessionRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t KTLCpsGetSvn(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[3] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    memset(v11, 170, 24);
    result = KTLGetIMEIInfo(a1, 0, v11, a4, a5, a6, a7, a8);
    *a2 = (BYTE4(v11[2]) & 0xF) + 10 * (BYTE3(v11[2]) >> 4);
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL KTLCpsSetSvn(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v34 = v2;
  v35 = 1;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2000000000;
    v33 = 1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = -1;
    v13 = dispatch_semaphore_create(0);
    v14 = v13;
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    if (ARI_UtaMsCpsSetSvnReq_BLK())
    {
      v10 = 0;
      v11 = *(v31 + 6);
      v15 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = dispatch_time(0, 1000000 * *(a1 + 20));
      v23 = dispatch_semaphore_wait(v14, v16);
      if (v23)
      {
        _KTLErrorPrint("KTLCpsSetSvn", "Timeout waiting for response.\n", v17, v18, v19, v20, v21, v22, v24);
      }

      if (v34)
      {
        AriHost::ExitTrx(v34);
      }

      v11 = *(v31 + 6);
      if (v23)
      {
        v10 = 0;
        v15 = object;
        if (!object)
        {
LABEL_25:
          if (v14)
          {
            dispatch_release(v14);
          }

          _Block_object_dispose(&v26, 8);
          _Block_object_dispose(&v30, 8);
          return !v11 && v10;
        }
      }

      else
      {
        v10 = *(v27 + 6) == 0;
        v15 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v15);
    goto LABEL_25;
  }

  v26 = 0;
  v36 = 0;
  v37 = v2;
  v30 = 0;
  if (!ARI_UtaMsCpsSetSvnReq_ENC() && (v5 = operator new(0x18uLL), v6 = v30, v5[2] = v36, *(v5 + 2) = v6, *v5 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v5)) && KTLUTACopyReceiveData(a1, &v26))
  {
    v7 = v26;
    (*(*v26 + 16))(v26);
    v8 = v7[2];
    v9 = ARI_AriUtaMsCpsSetSvnRspCb_Extract();
    (*(*v7 + 8))(v7);
    v10 = v9 == 0;
    v11 = v35;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  return !v11 && v10;
}

void sub_297A4B618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLCpsSetSvn_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_AriUtaMsCpsSetSvnRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLCpsPriWrite(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, uint64_t a6, char *a7, uint64_t a8, unsigned __int8 a9)
{
  if (!a1 || !a4)
  {
    _KTLErrorPrint("KTLCpsPriWrite", "opt(%p) or filerId(%p) is NULL\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  v10 = a6;
  if (a6 >= 0x401)
  {
    _KTLErrorPrint("KTLCpsPriWrite", "PRI signature size (%u) larger than max allowed (%d)", a3, a4, a5, a6, a7, a8, a6);
    return 0;
  }

  v12 = a8;
  if (a8 >= 0x65)
  {
    _KTLErrorPrint("KTLCpsPriWrite", "Carrier bundle name length (%u) larger than max allowed (%d)", a3, a4, a5, a6, a7, a8, a8);
    return 0;
  }

  v15 = a3;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2000000000;
  v117 = 0xFFFF;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2000000000;
  v113 = 0x7FFFFFFF;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2000000000;
  v109 = -1;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v104 = v17;
  *v105 = v17;
  *__dst = v17;
  *v103 = v17;
  v100[3] = v17;
  *__p = v17;
  v100[1] = v17;
  v100[2] = v17;
  v100[0] = v17;
  AriSdk::ARI_IBIPriWriteReq_V2_SDK::ARI_IBIPriWriteReq_V2_SDK(v100);
  v18 = operator new(4uLL);
  *v18 = a2;
  v19 = __p[0];
  __p[0] = v18;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = operator new(4uLL);
  *v20 = v15;
  v21 = __p[1];
  __p[1] = v20;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = operator new(2uLL);
  *v22 = v10;
  v23 = __dst[0];
  __dst[0] = v22;
  if (v23)
  {
    operator delete(v23);
  }

  if (a5)
  {
    v24 = v10;
    v25 = v103[1];
    v26 = __dst[1];
    if ((v103[1] - __dst[1]) >= v10)
    {
      v31 = v103[0];
      v32 = v103[0] - __dst[1];
      v33 = v10 - (v103[0] - __dst[1]);
      if (v10 <= (v103[0] - __dst[1]))
      {
        if (v10)
        {
          v34 = __dst[1];
          memmove(__dst[1], a5, v24);
          v26 = v34;
        }

        v30 = &v26[v24];
      }

      else
      {
        if (v103[0] != __dst[1])
        {
          memmove(__dst[1], a5, v103[0] - __dst[1]);
          v31 = v103[0];
        }

        memmove(v31, &a5[v32], v33);
        v30 = &v31[v33];
      }
    }

    else
    {
      if (__dst[1])
      {
        v103[0] = __dst[1];
        operator delete(__dst[1]);
        v25 = 0;
        __dst[1] = 0;
        v103[0] = 0;
        v103[1] = 0;
      }

      v27 = 2 * v25;
      if (2 * v25 <= v10)
      {
        v27 = v10;
      }

      if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      v29 = operator new(v28);
      __dst[1] = v29;
      v103[1] = &v29[v28];
      memcpy(v29, a5, v24);
      v30 = &v29[v24];
    }

    v103[0] = v30;
  }

  if (a7)
  {
    v35 = v12;
    v36 = v105[0];
    v37 = v104[0];
    if ((v105[0] - v104[0]) >= v12)
    {
      v42 = v104[1];
      v43 = v104[1] - v104[0];
      v44 = v12 - (v104[1] - v104[0]);
      if (v12 <= (v104[1] - v104[0]))
      {
        if (v12)
        {
          v45 = v104[0];
          memmove(v104[0], a7, v35);
          v37 = v45;
        }

        v41 = &v37[v35];
      }

      else
      {
        if (v104[1] != v104[0])
        {
          memmove(v104[0], a7, v104[1] - v104[0]);
          v42 = v104[1];
        }

        memmove(v42, &a7[v43], v44);
        v41 = &v42[v44];
      }
    }

    else
    {
      if (v104[0])
      {
        v104[1] = v104[0];
        operator delete(v104[0]);
        v36 = 0;
        v104[0] = 0;
        v104[1] = 0;
        v105[0] = 0;
      }

      v38 = 2 * v36;
      if (2 * v36 <= v12)
      {
        v38 = v12;
      }

      if (v36 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      v40 = operator new(v39);
      v104[0] = v40;
      v105[0] = &v40[v39];
      memcpy(v40, a7, v35);
      v41 = &v40[v35];
    }

    v104[1] = v41;
  }

  v46 = operator new(4uLL);
  *v46 = a9;
  v47 = v105[1];
  v105[1] = v46;
  if (v47)
  {
    operator delete(v47);
  }

  v98 = 0;
  v99 = 0;
  AriSdk::MsgBase::getRawBytes();
  v54 = *(a1 + 8);
  if (!v54 && *(a1 + 16))
  {
    v69 = dispatch_semaphore_create(0);
    v70 = v69;
    v94 = 0;
    v95 = &v94;
    v96 = 0x2000000000;
    v97 = 0;
    v71 = *(v98 + 2) - *v98;
    v72 = *(a1 + 16);
    object = v69;
    if (v69)
    {
      dispatch_retain(v69);
    }

    v73 = *(a1 + 20);
    if (AriHost::Send())
    {
      v80 = "Failed to send the message of IBIPriWriteReq_V2.\n";
    }

    else
    {
      v81 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v70, v81))
      {
        v84 = *(v115 + 6);
        if (*(v95 + 24) == 1 && v84 == a2 && (v84 = a2, !*(v111 + 6)))
        {
          v82 = 1;
        }

        else
        {
          _KTLErrorPrint("KTLCpsPriWrite", "Returned Instance is %d while expecting instance is %d\n", v74, v75, v76, v77, v78, v79, v84);
          _KTLErrorPrint("KTLCpsPriWrite", "PRI/GRI Command Result: %d\n", v85, v86, v87, v88, v89, v90, *(v111 + 6));
          v82 = 0;
        }

        *a4 = *(v107 + 6);
        v83 = object;
        if (!object)
        {
LABEL_75:
          _Block_object_dispose(&v94, 8);
          if (v70)
          {
            dispatch_release(v70);
          }

          v67 = v82;
          v68 = v99;
          if (!v99)
          {
            goto LABEL_80;
          }

          goto LABEL_78;
        }

LABEL_74:
        dispatch_release(v83);
        goto LABEL_75;
      }

      v80 = "Timeout waiting for response.\n";
    }

    _KTLErrorPrint("KTLCpsPriWrite", v80, v74, v75, v76, v77, v78, v79, v91);
    v82 = 0;
    v83 = object;
    if (!object)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v55 = *v98;
  v56 = v98[1] - *v98;
  v57 = *(a1 + 20);
  LODWORD(v94) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v48, v49, v50, v51, v52, v53, v56);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v55);
  }

  if (*v54 && ((v64 = (*v54)(v54, v55, v56, &v94, 1, v57, 0), v94 == v56) ? (v65 = v64) : (v65 = 0), (v65 & 1) != 0))
  {
    v94 = 0;
    v66 = KTLUTACopyReceiveData(a1, &v94);
    if (v66)
    {
      v66 = KTLCpsPriWriteParseAndRelease(v94, v115 + 6, v111 + 6, v107 + 6);
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v58, v59, v60, v61, v62, v63, v56);
    v66 = 0;
  }

  *a4 = 0;
  v67 = v66;
  v68 = v99;
  if (!v99)
  {
    goto LABEL_80;
  }

LABEL_78:
  if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
  }

LABEL_80:
  MEMORY[0x29C279BD0](v100);
  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v114, 8);
  return v67;
}

void sub_297A4BD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a23, 8);
  if (v29)
  {
    dispatch_release(v29);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a27);
  MEMORY[0x29C279BD0](&a29);
  _Block_object_dispose((v30 - 200), 8);
  _Block_object_dispose((v30 - 168), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLCpsPriWrite_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLCpsPriWriteParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24), (*(*(a1 + 48) + 8) + 24), (*(*(a1 + 56) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 72));
  return 0;
}

uint64_t KTLCpsPriWriteParseAndRelease(unsigned int *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v8;
  v34 = v8;
  v31 = v8;
  v32 = v8;
  v30 = v8;
  v9 = (*(*a1 + 16))(a1);
  v10 = a1[2];
  AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::ARI_IBIPriWriteRspCb_V2_SDK(&v30, v9);
  if (AriSdk::MsgBase::getMergedGMID(&v30) == 67600384)
  {
    _KTLErrorPrint("KTLCpsPriWriteParseAndRelease", "NACK Received\n", v11, v12, v13, v14, v15, v16, v30);
  }

  v17 = AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::unpack(&v30);
  if (a2)
  {
    v24 = a3 == 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = v24 || v17 != 0 || a4 == 0;
  v27 = !v26;
  if (v26)
  {
    _KTLErrorPrint("KTLCpsPriWriteParseAndRelease", "Failed to unpack response.\n", v18, v19, v20, v21, v22, v23, v30);
  }

  else
  {
    v28 = *(&v34 + 1);
    *a2 = *v34;
    *a3 = *v28;
    *a4 = DWORD2(v31);
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279CC0](&v30);
  return v27;
}

uint64_t KTLGetSimCardPresence(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    return result;
  }

  v8 = a2;
  if (a2 >= 2)
  {
    _KTLErrorPrint("KTLGetSimSlotInstance", "simSlot parameter: %d is >= KTL max number of supported SIMs: %d\n", a3, a4, a5, a6, a7, a8, a2);
    return 0;
  }

  v10 = result;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  if ((KTLGetSimSlotMapping(result, &v35) & 1) == 0)
  {
    return 0;
  }

  v11 = *(&v35 + v8);
  v12 = *(v10 + 16);
  v41 = v12;
  if (!*(v10 + 8) && v12)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3002000000;
    v38 = __Block_byref_object_copy__8;
    v39 = __Block_byref_object_dispose__8;
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = -1;
    v13 = dispatch_semaphore_create(0);
    v14 = v13;
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    if (ARI_CsiMsSimCardPresenceReq_BLK())
    {
      v15 = 0;
      *a3 = v36[5];
    }

    else
    {
      v21 = dispatch_time(0, 1000000 * *(v10 + 20));
      v28 = dispatch_semaphore_wait(v14, v21);
      if (v28)
      {
        _KTLErrorPrint("KTLGetSimCardPresence", "Timeout waiting for response.\n", v22, v23, v24, v25, v26, v27, v29);
      }

      if (v41)
      {
        AriHost::ExitTrx(v41);
      }

      *a3 = v36[5];
      if (v28)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v32 + 6) == 0;
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v14)
    {
      dispatch_release(v14);
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    return v15;
  }

  v31 = 0;
  v42 = 0;
  v43 = v12;
  v35 = 0;
  if (ARI_CsiMsSimCardPresenceReq_ENC())
  {
    return 0;
  }

  v16 = operator new(0x18uLL);
  v17 = v35;
  v16[2] = v42;
  *(v16 + 2) = v17;
  *v16 = &unk_2A1E625B0;
  result = KTLUTASendAndReleaseData(v10, v16);
  if (result)
  {
    result = KTLUTACopyReceiveData(v10, &v31);
    if (result)
    {
      v18 = v31;
      (*(*v31 + 16))(v31);
      v19 = v18[2];
      v20 = ARI_CsiMsSimCardPresenceRspCb_Extract();
      (*(*v18 + 8))(v18);
      return v20 == 0;
    }
  }

  return result;
}

void sub_297A4C3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetSimCardPresence_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiMsSimCardPresenceRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

double cps::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t cps::ARICommandDriver::PriRefresh(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIPriRefreshRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIPriRefreshRspCb_SDK::ARI_IBIPriRefreshRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__19;
  v76 = __Block_byref_object_dispose__20;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIPriRefreshRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 2231468032);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIPriRefreshRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("PriRefresh", "Failed IBIPriRefreshReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A4C934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t cps::ARICommandDriver::PriWrite(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIPriWriteRspCb_V3_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::ARI_IBIPriWriteRspCb_V3_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__19;
  v76 = __Block_byref_object_dispose__20;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 2223112192);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("PriWrite", "Failed IBIPriWriteReq_V3\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A4CE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void cps::ARICommandDriver::~ARICommandDriver(cps::ARICommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__20(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk26ARI_IBIPriRefreshRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBIPriRefreshRspCb_SDK::ARI_IBIPriRefreshRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_IBIPriWriteRspCb_V3_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::ARI_IBIPriWriteRspCb_V3_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}