void sub_296DFD320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41, __int16 a42, char a43, char a44)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a41);
  MEMORY[0x29C265040](&a42);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 144);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c199_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver19getARTDWithRAT_syncENS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c199_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver19getARTDWithRAT_syncENS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getARTDWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getARTDWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getARTDWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getARTDWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver13getARFCN_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_54;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_54;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v33 = v6;
  if (!v6)
  {
    goto LABEL_54;
  }

  v7 = v6;
  if (v2[3])
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29[3] = v8;
    v30 = v8;
    v29[1] = v8;
    v29[2] = v8;
    v29[0] = v8;
    AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK::ARI_CsiIceGetArfcnLockRspCb_SDK(v29, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    block.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
    *&block.__r_.__value_.__r.__words[1] = xmmword_296E1FAC0;
    strcpy(block.__r_.__value_.__l.__data_, "send Getting ARFCN Lock Settings");
    checkError(v29, &block, &cf);
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
      if (cf)
      {
        goto LABEL_28;
      }
    }

    else if (cf)
    {
      goto LABEL_28;
    }

    if (AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK::unpack(v29))
    {
      __p = operator new(0x20uLL);
      strcpy(__p, "Failed to unpack response");
      CreateError();
      v9 = cf;
      cf = block.__r_.__value_.__r.__words[0];
      block.__r_.__value_.__r.__words[0] = 0;
      if (v9)
      {
        CFRelease(v9);
        if (block.__r_.__value_.__r.__words[0])
        {
          CFRelease(block.__r_.__value_.__l.__data_);
        }
      }

      operator delete(__p);
      v10 = v2[1];
      if (!v10)
      {
        goto LABEL_49;
      }

LABEL_29:
      if (v2[2])
      {
        v18 = cf;
        if (cf && (CFRetain(cf), (v10 = v2[1]) == 0))
        {
          v19 = 0;
        }

        else
        {
          v19 = _Block_copy(v10);
        }

        v20 = v2[2];
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        v35 = &__block_descriptor_tmp_189;
        if (v19)
        {
          v36 = _Block_copy(v19);
          v37 = v18;
          if (!v18)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v36 = 0;
          v37 = v18;
          if (!v18)
          {
LABEL_39:
            v38 = 0;
            dispatch_async(v20, &block);
            if (v38)
            {
              CFRelease(v38);
            }

            if (v37)
            {
              CFRelease(v37);
            }

            if (v36)
            {
              _Block_release(v36);
            }

            if (v19)
            {
              _Block_release(v19);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            goto LABEL_49;
          }
        }

        CFRetain(v18);
        goto LABEL_39;
      }

LABEL_49:
      if (cf)
      {
        CFRelease(cf);
      }

      MEMORY[0x29C264C20](v29);
      goto LABEL_52;
    }

    v11 = *v30;
    if (v11)
    {
      ctu::hex(v11);
      v12 = std::string::insert(&block, 0, "Error on CsiIceGetArfcnLockRspCb result: 0x", 0x2BuLL);
      __pa = *v12;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      CreateError();
      v13 = cf;
      cf = v27;
      if (v13)
      {
        CFRelease(v13);
      }

      if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__pa.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(block.__r_.__value_.__l.__data_);
        v10 = v2[1];
        if (!v10)
        {
          goto LABEL_49;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v14 = **(&v30 + 1);
      *(v4 + 360) = **(&v30 + 1);
      if (v14 < 4)
      {
        v16 = *v31;
        *std::map<radio::ARICommandDriver::RFRatSelection,int>::operator[]((v4 + 336), v14) = v16;
        v17 = *(v4 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v22 = v4;
          v23 = *(v4 + 360);
          v24 = *std::map<radio::ARICommandDriver::RFRatSelection,int>::operator[]((v22 + 336), v23);
          LODWORD(block.__r_.__value_.__l.__data_) = 67109376;
          HIDWORD(block.__r_.__value_.__r.__words[0]) = v23;
          LOWORD(block.__r_.__value_.__r.__words[1]) = 1024;
          *(&block.__r_.__value_.__r.__words[1] + 2) = v24;
          _os_log_debug_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEBUG, "#D fARFCNLock[ %d ]: %d\n", &block, 0xEu);
          v10 = v2[1];
          if (!v10)
          {
            goto LABEL_49;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v15 = *(v4 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(block.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(block.__r_.__value_.__r.__words[0]) = v14;
          _os_log_impl(&dword_296D7D000, v15, OS_LOG_TYPE_DEFAULT, "#I Warning: getting ARFCN RAT: %d", &block, 8u);
          v10 = v2[1];
          if (!v10)
          {
            goto LABEL_49;
          }

          goto LABEL_29;
        }
      }
    }

LABEL_28:
    v10 = v2[1];
    if (!v10)
    {
      goto LABEL_49;
    }

    goto LABEL_29;
  }

LABEL_52:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_54:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_296DFDAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264C20](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c172_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver13getARFCN_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c172_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver13getARFCN_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getARFCN_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getARFCN_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getARFCN_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getARFCN_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver10getCA_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_50;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_50;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v27 = v6;
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = v6;
  if (v2[3])
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24[3] = v8;
    v25 = v8;
    v24[1] = v8;
    v24[2] = v8;
    v24[0] = v8;
    AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK::ARI_CsiIceGetCaEnableRspCb_SDK(v24, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    block.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
    *&block.__r_.__value_.__r.__words[1] = xmmword_296E20BE0;
    strcpy(block.__r_.__value_.__l.__data_, "send Getting ARTD Settings");
    checkError(v24, &block, &cf);
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
      if (cf)
      {
        goto LABEL_24;
      }
    }

    else if (cf)
    {
      goto LABEL_24;
    }

    if (AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK::unpack(v24))
    {
      __p = operator new(0x20uLL);
      strcpy(__p, "Failed to unpack response");
      CreateError();
      v9 = cf;
      cf = block.__r_.__value_.__r.__words[0];
      block.__r_.__value_.__r.__words[0] = 0;
      if (v9)
      {
        CFRelease(v9);
        if (block.__r_.__value_.__r.__words[0])
        {
          CFRelease(block.__r_.__value_.__l.__data_);
        }
      }

      operator delete(__p);
      v10 = v2[1];
      if (!v10)
      {
        goto LABEL_45;
      }

LABEL_25:
      if (v2[2])
      {
        v16 = cf;
        if (cf && (CFRetain(cf), (v10 = v2[1]) == 0))
        {
          v17 = 0;
        }

        else
        {
          v17 = _Block_copy(v10);
        }

        v18 = v2[2];
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        v29 = &__block_descriptor_tmp_189;
        if (v17)
        {
          v30 = _Block_copy(v17);
          v31 = v16;
          if (!v16)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v30 = 0;
          v31 = v16;
          if (!v16)
          {
LABEL_35:
            v32 = 0;
            dispatch_async(v18, &block);
            if (v32)
            {
              CFRelease(v32);
            }

            if (v31)
            {
              CFRelease(v31);
            }

            if (v30)
            {
              _Block_release(v30);
            }

            if (v17)
            {
              _Block_release(v17);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            goto LABEL_45;
          }
        }

        CFRetain(v16);
        goto LABEL_35;
      }

LABEL_45:
      if (cf)
      {
        CFRelease(cf);
      }

      MEMORY[0x29C264A50](v24);
      goto LABEL_48;
    }

    v11 = *v25;
    if (v11)
    {
      ctu::hex(v11);
      v12 = std::string::insert(&block, 0, "Error on CsiIceGetCaEnableRspCb result: 0x", 0x2AuLL);
      __pa = *v12;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      CreateError();
      v13 = cf;
      cf = v22;
      if (v13)
      {
        CFRelease(v13);
      }

      if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__pa.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(block.__r_.__value_.__l.__data_);
        v10 = v2[1];
        if (!v10)
        {
          goto LABEL_45;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v14 = **(&v25 + 1);
      *(v4 + 364) = **(&v25 + 1);
      v15 = *(v4 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(block.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(block.__r_.__value_.__r.__words[0]) = v14;
        _os_log_debug_impl(&dword_296D7D000, v15, OS_LOG_TYPE_DEBUG, "#D fCAEnabled: %d\n", &block, 8u);
        v10 = v2[1];
        if (!v10)
        {
          goto LABEL_45;
        }

        goto LABEL_25;
      }
    }

LABEL_24:
    v10 = v2[1];
    if (!v10)
    {
      goto LABEL_45;
    }

    goto LABEL_25;
  }

LABEL_48:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_50:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_296DFE0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c169_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver10getCA_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c169_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver10getCA_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getCA_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getCA_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getCA_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getCA_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver31setRxDiversityStateWithRAT_syncEiNS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v37 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_62:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v35 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34[2] = v7;
        v34[3] = v7;
        v34[0] = v7;
        v34[1] = v7;
        AriSdk::ARI_CsiIceRxDiversityRspCb_SDK::ARI_CsiIceRxDiversityRspCb_SDK(v34, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        std::to_string(&v32, *(v2 + 32));
        v8 = std::string::insert(&v32, 0, "send Setting RX Diversity of Rat: ", 0x22uLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        block.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&block.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        checkError(v34, &block, &cf);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_7:
            if (cf)
            {
              goto LABEL_40;
            }

LABEL_11:
            if (AriSdk::ARI_CsiIceRxDiversityRspCb_SDK::unpack(v34))
            {
              std::to_string(&block, *(v2 + 32));
              v10 = std::string::insert(&block, 0, "Failed to unpack response of setting Rx Diversity, and RAT selection: ", 0x46uLL);
              v11 = *&v10->__r_.__value_.__l.__data_;
              v32.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
              *&v32.__r_.__value_.__l.__data_ = v11;
              v10->__r_.__value_.__l.__size_ = 0;
              v10->__r_.__value_.__r.__words[2] = 0;
              v10->__r_.__value_.__r.__words[0] = 0;
              CreateError();
              v12 = cf;
              cf = v30.__r_.__value_.__r.__words[0];
              v30.__r_.__value_.__r.__words[0] = 0;
              if (v12)
              {
                CFRelease(v12);
              }

              if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
              {
                v13 = block.__r_.__value_.__r.__words[0];
LABEL_39:
                operator delete(v13);
              }

LABEL_40:
              v24 = *v2;
              if (!*v2 || !*(v2 + 8))
              {
LABEL_59:
                if (cf)
                {
                  CFRelease(cf);
                }

                MEMORY[0x29C264A80](v34);
                goto LABEL_62;
              }

              v25 = cf;
              if (cf && (CFRetain(cf), (v24 = *v2) == 0))
              {
                v26 = 0;
              }

              else
              {
                v26 = _Block_copy(v24);
              }

              v27 = *(v2 + 8);
              block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
              block.__r_.__value_.__l.__size_ = 1174405120;
              block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
              v39 = &__block_descriptor_tmp_179;
              if (v26)
              {
                v40 = _Block_copy(v26);
                v41 = v25;
                if (!v25)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v40 = 0;
                v41 = v25;
                if (!v25)
                {
LABEL_51:
                  dispatch_async(v27, &block);
                  if (v41)
                  {
                    CFRelease(v41);
                  }

                  if (v40)
                  {
                    _Block_release(v40);
                  }

                  if (v26)
                  {
                    _Block_release(v26);
                  }

                  if (v25)
                  {
                    CFRelease(v25);
                  }

                  goto LABEL_59;
                }
              }

              CFRetain(v25);
              goto LABEL_51;
            }

            v14 = *v35;
            if (!v14)
            {
              goto LABEL_40;
            }

            ctu::hex(v14);
            v15 = std::string::insert(&v29, 0, "Error on rx diversity response result: 0x", 0x29uLL);
            v16 = *&v15->__r_.__value_.__l.__data_;
            v30.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
            *&v30.__r_.__value_.__l.__data_ = v16;
            v15->__r_.__value_.__l.__size_ = 0;
            v15->__r_.__value_.__r.__words[2] = 0;
            v15->__r_.__value_.__r.__words[0] = 0;
            v17 = std::string::append(&v30, ", and RAT selection: ", 0x15uLL);
            v18 = *&v17->__r_.__value_.__l.__data_;
            block.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
            *&block.__r_.__value_.__l.__data_ = v18;
            v17->__r_.__value_.__l.__size_ = 0;
            v17->__r_.__value_.__r.__words[2] = 0;
            v17->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&__p, *(v2 + 32));
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

            v21 = std::string::append(&block, p_p, size);
            v22 = *&v21->__r_.__value_.__l.__data_;
            v32.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
            *&v32.__r_.__value_.__l.__data_ = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            CreateError();
            v23 = cf;
            cf = v31;
            v31 = 0;
            if (v23)
            {
              CFRelease(v23);
              if (v31)
              {
                CFRelease(v31);
              }
            }

            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_30:
                if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_36;
              }
            }

            else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_31:
              if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_32;
              }

              goto LABEL_37;
            }

LABEL_36:
            operator delete(block.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_32:
              if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_40;
              }

LABEL_38:
              v13 = v29.__r_.__value_.__r.__words[0];
              goto LABEL_39;
            }

LABEL_37:
            operator delete(v30.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_38;
          }
        }

        else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(v32.__r_.__value_.__l.__data_);
        if (cf)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }
    }
  }
}

void sub_296DFE790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, const void *a34, __int16 a35, char a36, char a37)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v37 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((*(v37 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v37 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
LABEL_12:
      ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a34);
      MEMORY[0x29C264A80](&a35);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v37 - 112);
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(a15);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_296DFE8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  if (a24 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C264A80](&a26);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 112);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C264A80](&a26);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 112);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c188_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver31setRxDiversityStateWithRAT_syncEiNS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c188_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver31setRxDiversityStateWithRAT_syncEiNS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setRxDiversityStateWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setRxDiversityStateWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setRxDiversityStateWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setRxDiversityStateWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v14 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v5 = v2[2];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v2[3];
    v12 = v6;
    v13 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v7 = v2[3];
  v12 = 0;
  v13 = v7;
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  radio::ARICommandDriver::setAntennaTxPort_sync(v4, &v14, &v12);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v8 = v2[3];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = v2[2];
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = v2[1];
  if (v10)
  {
    CFRelease(v10);
  }

  operator delete(v2);
  v11 = *(a1 + 2);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_296DFEBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, void);
  v9 = va_arg(va3, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(va2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va3);
  std::unique_ptr<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      CFRelease(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver21setAntennaTxPort_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEE3__0vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v24 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_44:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[2] = v7;
        v21[3] = v7;
        v21[0] = v7;
        v21[1] = v7;
        AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::ARI_CsiIceSetTxAntennaRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
        *&block.__r_.__value_.__r.__words[1] = xmmword_296E22D70;
        strcpy(block.__r_.__value_.__l.__data_, "send Setting Antenna Tx Antenna Status");
        checkError(v21, &block, &cf);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if (cf)
          {
            goto LABEL_22;
          }
        }

        else if (cf)
        {
          goto LABEL_22;
        }

        if (AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::unpack(v21))
        {
          __p = operator new(0x38uLL);
          strcpy(__p, "Failed to unpack response of setting Antenna Tx Port");
          CreateError();
          v8 = cf;
          cf = block.__r_.__value_.__r.__words[0];
          block.__r_.__value_.__r.__words[0] = 0;
          if (v8)
          {
            CFRelease(v8);
            if (block.__r_.__value_.__r.__words[0])
            {
              CFRelease(block.__r_.__value_.__l.__data_);
            }
          }

          v9 = __p;
          goto LABEL_21;
        }

        v10 = *v22;
        if (v10)
        {
          ctu::hex(v10);
          v11 = std::string::insert(&block, 0, "Error on setting antenna tx port response result: 0x", 0x34uLL);
          __pa = *v11;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          CreateError();
          v12 = cf;
          cf = v19;
          if (v12)
          {
            CFRelease(v12);
          }

          if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__pa.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = block.__r_.__value_.__r.__words[0];
LABEL_21:
            operator delete(v9);
          }
        }

LABEL_22:
        v13 = *v2;
        if (!*v2 || !*(v2 + 8))
        {
LABEL_41:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C264CC0](v21);
          goto LABEL_44;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = *v2) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = *(v2 + 8);
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v26 = &__block_descriptor_tmp_179;
        if (v15)
        {
          v27 = _Block_copy(v15);
          v28 = v14;
          if (!v14)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = 0;
          v28 = v14;
          if (!v14)
          {
LABEL_33:
            dispatch_async(v16, &block);
            if (v28)
            {
              CFRelease(v28);
            }

            if (v27)
            {
              _Block_release(v27);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_41;
          }
        }

        CFRetain(v14);
        goto LABEL_33;
      }
    }
  }
}

void sub_296DFEFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 57) < 0)
  {
    operator delete(*(v20 - 80));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264CC0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 96);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver21setAntennaTxPort_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver21setAntennaTxPort_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setAntennaTxPort_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setAntennaTxPort_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setAntennaTxPort_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setAntennaTxPort_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver19setARTDWithRAT_syncEiNS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v37 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_62:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v35 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34[2] = v7;
        v34[3] = v7;
        v34[0] = v7;
        v34[1] = v7;
        AriSdk::ARI_CsiIceArtdSettingRspCb_SDK::ARI_CsiIceArtdSettingRspCb_SDK(v34, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        std::to_string(&v32, *(v2 + 32));
        v8 = std::string::insert(&v32, 0, "send Setting ARTD Settings for: ", 0x20uLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        block.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&block.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        checkError(v34, &block, &cf);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_7:
            if (cf)
            {
              goto LABEL_40;
            }

LABEL_11:
            if (AriSdk::ARI_CsiIceArtdSettingRspCb_SDK::unpack(v34))
            {
              std::to_string(&block, *(v2 + 32));
              v10 = std::string::insert(&block, 0, "Failed to unpack response of setting ARTD, and RAT selection: ", 0x3EuLL);
              v11 = *&v10->__r_.__value_.__l.__data_;
              v32.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
              *&v32.__r_.__value_.__l.__data_ = v11;
              v10->__r_.__value_.__l.__size_ = 0;
              v10->__r_.__value_.__r.__words[2] = 0;
              v10->__r_.__value_.__r.__words[0] = 0;
              CreateError();
              v12 = cf;
              cf = v30.__r_.__value_.__r.__words[0];
              v30.__r_.__value_.__r.__words[0] = 0;
              if (v12)
              {
                CFRelease(v12);
              }

              if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
              {
                v13 = block.__r_.__value_.__r.__words[0];
LABEL_39:
                operator delete(v13);
              }

LABEL_40:
              v24 = *v2;
              if (!*v2 || !*(v2 + 8))
              {
LABEL_59:
                if (cf)
                {
                  CFRelease(cf);
                }

                MEMORY[0x29C264A20](v34);
                goto LABEL_62;
              }

              v25 = cf;
              if (cf && (CFRetain(cf), (v24 = *v2) == 0))
              {
                v26 = 0;
              }

              else
              {
                v26 = _Block_copy(v24);
              }

              v27 = *(v2 + 8);
              block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
              block.__r_.__value_.__l.__size_ = 1174405120;
              block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
              v39 = &__block_descriptor_tmp_179;
              if (v26)
              {
                v40 = _Block_copy(v26);
                v41 = v25;
                if (!v25)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v40 = 0;
                v41 = v25;
                if (!v25)
                {
LABEL_51:
                  dispatch_async(v27, &block);
                  if (v41)
                  {
                    CFRelease(v41);
                  }

                  if (v40)
                  {
                    _Block_release(v40);
                  }

                  if (v26)
                  {
                    _Block_release(v26);
                  }

                  if (v25)
                  {
                    CFRelease(v25);
                  }

                  goto LABEL_59;
                }
              }

              CFRetain(v25);
              goto LABEL_51;
            }

            v14 = *v35;
            if (!v14)
            {
              goto LABEL_40;
            }

            ctu::hex(v14);
            v15 = std::string::insert(&v29, 0, "Error on setting ARTD response result: 0x", 0x29uLL);
            v16 = *&v15->__r_.__value_.__l.__data_;
            v30.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
            *&v30.__r_.__value_.__l.__data_ = v16;
            v15->__r_.__value_.__l.__size_ = 0;
            v15->__r_.__value_.__r.__words[2] = 0;
            v15->__r_.__value_.__r.__words[0] = 0;
            v17 = std::string::append(&v30, ", and RAT selection: ", 0x15uLL);
            v18 = *&v17->__r_.__value_.__l.__data_;
            block.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
            *&block.__r_.__value_.__l.__data_ = v18;
            v17->__r_.__value_.__l.__size_ = 0;
            v17->__r_.__value_.__r.__words[2] = 0;
            v17->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&__p, *(v2 + 32));
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

            v21 = std::string::append(&block, p_p, size);
            v22 = *&v21->__r_.__value_.__l.__data_;
            v32.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
            *&v32.__r_.__value_.__l.__data_ = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            CreateError();
            v23 = cf;
            cf = v31;
            v31 = 0;
            if (v23)
            {
              CFRelease(v23);
              if (v31)
              {
                CFRelease(v31);
              }
            }

            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_30:
                if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_36;
              }
            }

            else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_31:
              if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_32;
              }

              goto LABEL_37;
            }

LABEL_36:
            operator delete(block.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_32:
              if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_40;
              }

LABEL_38:
              v13 = v29.__r_.__value_.__r.__words[0];
              goto LABEL_39;
            }

LABEL_37:
            operator delete(v30.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_38;
          }
        }

        else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(v32.__r_.__value_.__l.__data_);
        if (cf)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }
    }
  }
}

void sub_296DFF678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, const void *a34, __int16 a35, char a36, char a37)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v37 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((*(v37 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v37 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
LABEL_12:
      ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a34);
      MEMORY[0x29C264A20](&a35);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v37 - 112);
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(a15);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_296DFF7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  if (a24 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C264A20](&a26);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 112);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C264A20](&a26);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 112);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c176_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver19setARTDWithRAT_syncEiNS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c176_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver19setARTDWithRAT_syncEiNS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setARTDWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setARTDWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setARTDWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setARTDWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver20setARFCNWithRAT_syncEiNS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v37 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_62:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v35 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34[2] = v7;
        v34[3] = v7;
        v34[0] = v7;
        v34[1] = v7;
        AriSdk::ARI_CsiIceArfcnLockRspCb_SDK::ARI_CsiIceArfcnLockRspCb_SDK(v34, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        std::to_string(&v32, *(v2 + 32));
        v8 = std::string::insert(&v32, 0, "send Setting ARFCN Lock Settings for: ", 0x26uLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        block.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&block.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        checkError(v34, &block, &cf);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_7:
            if (cf)
            {
              goto LABEL_40;
            }

LABEL_11:
            if (AriSdk::ARI_CsiIceArfcnLockRspCb_SDK::unpack(v34))
            {
              std::to_string(&block, *(v2 + 32));
              v10 = std::string::insert(&block, 0, "Failed to unpack response of setting ARFCN Lock, and RAT selection: ", 0x44uLL);
              v11 = *&v10->__r_.__value_.__l.__data_;
              v32.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
              *&v32.__r_.__value_.__l.__data_ = v11;
              v10->__r_.__value_.__l.__size_ = 0;
              v10->__r_.__value_.__r.__words[2] = 0;
              v10->__r_.__value_.__r.__words[0] = 0;
              CreateError();
              v12 = cf;
              cf = v30.__r_.__value_.__r.__words[0];
              v30.__r_.__value_.__r.__words[0] = 0;
              if (v12)
              {
                CFRelease(v12);
              }

              if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
              {
                v13 = block.__r_.__value_.__r.__words[0];
LABEL_39:
                operator delete(v13);
              }

LABEL_40:
              v24 = *v2;
              if (!*v2 || !*(v2 + 8))
              {
LABEL_59:
                if (cf)
                {
                  CFRelease(cf);
                }

                MEMORY[0x29C2645E0](v34);
                goto LABEL_62;
              }

              v25 = cf;
              if (cf && (CFRetain(cf), (v24 = *v2) == 0))
              {
                v26 = 0;
              }

              else
              {
                v26 = _Block_copy(v24);
              }

              v27 = *(v2 + 8);
              block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
              block.__r_.__value_.__l.__size_ = 1174405120;
              block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
              v39 = &__block_descriptor_tmp_179;
              if (v26)
              {
                v40 = _Block_copy(v26);
                v41 = v25;
                if (!v25)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v40 = 0;
                v41 = v25;
                if (!v25)
                {
LABEL_51:
                  dispatch_async(v27, &block);
                  if (v41)
                  {
                    CFRelease(v41);
                  }

                  if (v40)
                  {
                    _Block_release(v40);
                  }

                  if (v26)
                  {
                    _Block_release(v26);
                  }

                  if (v25)
                  {
                    CFRelease(v25);
                  }

                  goto LABEL_59;
                }
              }

              CFRetain(v25);
              goto LABEL_51;
            }

            v14 = *v35;
            if (!v14)
            {
              goto LABEL_40;
            }

            ctu::hex(v14);
            v15 = std::string::insert(&v29, 0, "Error on setting ARFCN Lock response result: 0x", 0x2FuLL);
            v16 = *&v15->__r_.__value_.__l.__data_;
            v30.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
            *&v30.__r_.__value_.__l.__data_ = v16;
            v15->__r_.__value_.__l.__size_ = 0;
            v15->__r_.__value_.__r.__words[2] = 0;
            v15->__r_.__value_.__r.__words[0] = 0;
            v17 = std::string::append(&v30, ", and RAT selection: ", 0x15uLL);
            v18 = *&v17->__r_.__value_.__l.__data_;
            block.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
            *&block.__r_.__value_.__l.__data_ = v18;
            v17->__r_.__value_.__l.__size_ = 0;
            v17->__r_.__value_.__r.__words[2] = 0;
            v17->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&__p, *(v2 + 32));
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

            v21 = std::string::append(&block, p_p, size);
            v22 = *&v21->__r_.__value_.__l.__data_;
            v32.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
            *&v32.__r_.__value_.__l.__data_ = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            CreateError();
            v23 = cf;
            cf = v31;
            v31 = 0;
            if (v23)
            {
              CFRelease(v23);
              if (v31)
              {
                CFRelease(v31);
              }
            }

            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_30:
                if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_36;
              }
            }

            else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_31:
              if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_32;
              }

              goto LABEL_37;
            }

LABEL_36:
            operator delete(block.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_32:
              if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_40;
              }

LABEL_38:
              v13 = v29.__r_.__value_.__r.__words[0];
              goto LABEL_39;
            }

LABEL_37:
            operator delete(v30.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_38;
          }
        }

        else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(v32.__r_.__value_.__l.__data_);
        if (cf)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }
    }
  }
}

void sub_296DFFDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, const void *a34, __int16 a35, char a36, char a37)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v37 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((*(v37 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v37 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
LABEL_12:
      ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a34);
      MEMORY[0x29C2645E0](&a35);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v37 - 112);
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(a15);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_296DFFF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  if (a24 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C2645E0](&a26);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 112);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C2645E0](&a26);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 112);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c177_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver20setARFCNWithRAT_syncEiNS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c177_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver20setARFCNWithRAT_syncEiNS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setARFCNWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setARFCNWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setARFCNWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setARFCNWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver10setCA_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEE3__0vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v24 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_44:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[2] = v7;
        v21[3] = v7;
        v21[0] = v7;
        v21[1] = v7;
        AriSdk::ARI_CsiIceCaEnableRspCb_SDK::ARI_CsiIceCaEnableRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block.__r_.__value_.__r.__words[0] = operator new(0x19uLL);
        *&block.__r_.__value_.__r.__words[1] = xmmword_296E1FAA0;
        strcpy(block.__r_.__value_.__l.__data_, "send Setting CA Enabled");
        checkError(v21, &block, &cf);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if (cf)
          {
            goto LABEL_22;
          }
        }

        else if (cf)
        {
          goto LABEL_22;
        }

        if (AriSdk::ARI_CsiIceCaEnableRspCb_SDK::unpack(v21))
        {
          __p = operator new(0x28uLL);
          strcpy(__p, "Failed to unpack response of setting CA");
          CreateError();
          v8 = cf;
          cf = block.__r_.__value_.__r.__words[0];
          block.__r_.__value_.__r.__words[0] = 0;
          if (v8)
          {
            CFRelease(v8);
            if (block.__r_.__value_.__r.__words[0])
            {
              CFRelease(block.__r_.__value_.__l.__data_);
            }
          }

          v9 = __p;
          goto LABEL_21;
        }

        v10 = *v22;
        if (v10)
        {
          ctu::hex(v10);
          v11 = std::string::insert(&block, 0, "Error on enabling CA response result: 0x", 0x28uLL);
          __pa = *v11;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          CreateError();
          v12 = cf;
          cf = v19;
          if (v12)
          {
            CFRelease(v12);
          }

          if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__pa.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = block.__r_.__value_.__r.__words[0];
LABEL_21:
            operator delete(v9);
          }
        }

LABEL_22:
        v13 = *v2;
        if (!*v2 || !*(v2 + 8))
        {
LABEL_41:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C264500](v21);
          goto LABEL_44;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = *v2) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = *(v2 + 8);
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v26 = &__block_descriptor_tmp_179;
        if (v15)
        {
          v27 = _Block_copy(v15);
          v28 = v14;
          if (!v14)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = 0;
          v28 = v14;
          if (!v14)
          {
LABEL_33:
            dispatch_async(v16, &block);
            if (v28)
            {
              CFRelease(v28);
            }

            if (v27)
            {
              _Block_release(v27);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_41;
          }
        }

        CFRetain(v14);
        goto LABEL_33;
      }
    }
  }
}

void sub_296E00444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 57) < 0)
  {
    operator delete(*(v20 - 80));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264500](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 96);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c169_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver10setCA_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c169_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver10setCA_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setCA_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setCA_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F398;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setCA_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::setCA_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver14simTestCommandENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSF_IK14__CFDictionaryEEEEEEUb6_E4__19vEENSB_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_53;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_53;
  }

  v4 = *(v2 + 56);
  v6 = std::__shared_weak_count::lock(v3);
  v27 = v6;
  if (!v6)
  {
    goto LABEL_53;
  }

  v7 = v6;
  if (*v2)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25[5] = v8;
    v25[6] = v8;
    v25[3] = v8;
    v25[4] = v8;
    v25[1] = v8;
    v25[2] = v8;
    v25[0] = v8;
    AriSdk::ARI_IBISimTestRspCb_SDK::ARI_IBISimTestRspCb_SDK(v25, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    v9 = *(v2 + 55);
    if (v9 >= 0)
    {
      v10 = *(v2 + 55);
    }

    else
    {
      v10 = *(v2 + 40);
    }

    v11 = v10 + 23;
    if (v10 + 23 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = (v2 + 32);
    if (v10 >= 0xFFFFFFFFFFFFFFE9)
    {
      v15 = &__p[2] + 7;
      HIBYTE(__p[2]) = v10 + 23;
      qmemcpy(__p, "send SIM test command: ", 23);
    }

    else
    {
      if ((v11 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v11 | 7) + 1;
      }

      v14 = operator new(v13);
      __p[1] = (v10 + 23);
      __p[2] = (v13 | 0x8000000000000000);
      __p[0] = v14;
      qmemcpy(v14, "send SIM test command: ", 23);
      v15 = v14 + 23;
      if (!v10)
      {
LABEL_20:
        v15[v10] = 0;
        checkError(v25, __p, &cf);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (!cf)
        {
          v18 = *(v4 + 40);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v2 + 55) < 0)
            {
              v12 = *v12;
            }

            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v12;
            _os_log_impl(&dword_296D7D000, v18, OS_LOG_TYPE_DEFAULT, "#I SIM test command: %s successful", __p, 0xCu);
          }
        }

        v19 = *(v2 + 16);
        if (!v19 || !*(v2 + 24))
        {
          goto LABEL_48;
        }

        v20 = cf;
        if (cf && (CFRetain(cf), (v19 = *(v2 + 16)) == 0))
        {
          v21 = 0;
        }

        else
        {
          v21 = _Block_copy(v19);
        }

        v22 = *(v2 + 24);
        __p[0] = MEMORY[0x29EDCA5F8];
        __p[1] = 1174405120;
        __p[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        __p[3] = &__block_descriptor_tmp_189;
        if (v21)
        {
          aBlock = _Block_copy(v21);
          v30 = v20;
          if (!v20)
          {
            goto LABEL_38;
          }
        }

        else
        {
          aBlock = 0;
          v30 = v20;
          if (!v20)
          {
LABEL_38:
            v31 = 0;
            dispatch_async(v22, __p);
            if (v31)
            {
              CFRelease(v31);
            }

            if (v30)
            {
              CFRelease(v30);
            }

            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v21)
            {
              _Block_release(v21);
            }

            if (v20)
            {
              CFRelease(v20);
            }

LABEL_48:
            if (cf)
            {
              CFRelease(cf);
            }

            MEMORY[0x29C264060](v25);
            goto LABEL_51;
          }
        }

        CFRetain(v20);
        goto LABEL_38;
      }
    }

    v16 = *v12;
    if (v9 >= 0)
    {
      v17 = (v2 + 32);
    }

    else
    {
      v17 = *v12;
    }

    memmove(v15, v17, v10);
    goto LABEL_20;
  }

LABEL_51:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_53:
  v23 = *MEMORY[0x29EDCA608];
}

void sub_296E009C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c238_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver14simTestCommandENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSD_IK14__CFDictionaryEEEEEEUb6_E4__19EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c238_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver14simTestCommandENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSD_IK14__CFDictionaryEEEEEEUb6_E4__19EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver14simTestCommandENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSD_IK14__CFDictionaryEEEEEEUb6_E4__19NS6_ISM_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver14simTestCommandENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSD_IK14__CFDictionaryEEEEEEUb6_E4__19NS6_ISM_EEE16__on_zero_sharedEv(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6 = v2;
  if (!v2)
  {
    v6 = xpc_null_create();
    v4 = a1[6];
    object = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v2);
  v4 = a1[6];
  object = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v4);
LABEL_6:
  (*(v3 + 16))(v3, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_296E00C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c17_ZTSN3xpc6objectE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = a2[5];
    a1[4] = v5;
    a1[5] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    a1[5] = xpc_null_create();
    v7 = a2[6];
    a1[6] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }

    goto LABEL_7;
  }

  v6 = a2[5];
  a1[4] = 0;
  a1[5] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v6);
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

LABEL_7:
  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiSecGetRandomNumReq_SDK::ARI_CsiSecGetRandomNumReq_SDK(v24);
  on_zero_shared = v2[6].__on_zero_shared;
  v5 = v1[1];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v1[2];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = v1[2];
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v8 = v1[3];
  v9 = v1[4];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = operator new(0x40uLL);
  *&v10->__shared_owners_ = 0u;
  p_shared_owners = &v10->__shared_owners_;
  v10->__vftable = &unk_2A1E0F4C8;
  v10[1].__vftable = v2;
  v10[1].__shared_owners_ = v6;
  v10[1].__shared_weak_owners_ = v7;
  v10[2].__vftable = v8;
  v10[2].__shared_owners_ = v9;
  *&v26 = MEMORY[0x29EDCA5F8];
  *(&v26 + 1) = 1174405120;
  *&v27 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_270;
  v28 = &v10[1];
  v29 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 0x40000000;
  v32 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v33 = &unk_29EE5BED8;
  v34 = &v26;
  v12 = _Block_copy(&aBlock);
  v13 = v29;
  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_10:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v14;
  v27 = v14;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(on_zero_shared + 2);
  aBlock = *(on_zero_shared + 1);
  if (!v15)
  {
    v31 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = std::__shared_weak_count::lock(v15);
  if (!v31)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v25 = v12;
  ice::SendMsgBaseProxy::callback();
  if (v25)
  {
    _Block_release(v25);
  }

  MEMORY[0x29C263BF0](&v26);
  MEMORY[0x29C264910](v24);
  if (__p)
  {
    shared_owners = __p[1].__shared_owners_;
    if (shared_owners)
    {
      std::__shared_weak_count::__release_weak(shared_owners);
    }

    shared_weak_owners = __p->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      dispatch_release(shared_weak_owners);
    }

    v19 = __p->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v20 = a1;
      }
    }

    operator delete(v20);
  }
}

void sub_296E01124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a27);
  radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C264910](&a17);
  std::unique_ptr<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_104;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_104;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v44 = v6;
  if (!v6)
  {
    goto LABEL_104;
  }

  v7 = v6;
  if (v2[3])
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41[2] = v8;
    v41[3] = v8;
    v41[0] = v8;
    v41[1] = v8;
    AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::ARI_CsiSecGetRandomNumRspCb_SDK(v41, a2);
    memset(__p, 170, sizeof(__p));
    block[23] = 18;
    strcpy(block, "send Getting Nonce");
    checkErrorStr(v41, block, __p);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
      v17 = HIBYTE(__p[2]);
      v10 = SHIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v17 = __p[1];
      }

      if (v17)
      {
LABEL_9:
        v11 = *(v4 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v33 = __p[0];
          if (v10 >= 0)
          {
            v33 = __p;
          }

          *block = 136315138;
          *&block[4] = v33;
          _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
          if (!v2[1])
          {
            goto LABEL_99;
          }
        }

        else if (!v2[1])
        {
          goto LABEL_99;
        }

        if (v2[2])
        {
          if (SHIBYTE(__p[2]) >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v13 = xpc_string_create(v12);
          if (!v13)
          {
            v13 = xpc_null_create();
          }

          v14 = xpc_null_create();
          v15 = v2[1];
          if (v15)
          {
            v16 = _Block_copy(v15);
          }

          else
          {
            v16 = 0;
          }

          v23 = v2[2];
          *block = MEMORY[0x29EDCA5F8];
          *&block[8] = 1174405120;
          *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
          v48 = &__block_descriptor_tmp_269;
          if (v16)
          {
            v24 = _Block_copy(v16);
          }

          else
          {
            v24 = 0;
          }

          v49 = v24;
          v50 = v13;
          if (v13)
          {
            xpc_retain(v13);
          }

          else
          {
            v50 = xpc_null_create();
          }

          v51 = v14;
          if (v14)
          {
            xpc_retain(v14);
          }

          else
          {
            v51 = xpc_null_create();
          }

          dispatch_async(v23, block);
          xpc_release(v51);
          v51 = 0;
          xpc_release(v50);
          v50 = 0;
          if (v49)
          {
            _Block_release(v49);
          }

          if (v16)
          {
            _Block_release(v16);
          }

LABEL_44:
          xpc_release(v14);
          xpc_release(v13);
        }

LABEL_99:
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        MEMORY[0x29C264DA0](v41);
        goto LABEL_102;
      }
    }

    else
    {
      v9 = HIBYTE(__p[2]);
      v10 = SHIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[1];
      }

      if (v9)
      {
        goto LABEL_9;
      }
    }

    if (!AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::unpack(v41))
    {
      v19 = *(v42 + 16);
      __src[0] = *v42;
      __src[1] = v19;
      v20 = *(v42 + 32);
      if (v20 >= 0x20)
      {
        v21 = 32;
      }

      else
      {
        v21 = v20;
      }

      v46 = v21;
      if (v20)
      {
        v22 = operator new(v21);
        memcpy(v22, __src, v21);
      }

      else
      {
        v22 = 0;
      }

      if (v2[1] && v2[2])
      {
        v29 = xpc_null_create();
        v30 = xpc_data_create(v22, v21);
        if (!v30)
        {
          v30 = xpc_null_create();
        }

        v31 = v2[1];
        if (v31)
        {
          v32 = _Block_copy(v31);
        }

        else
        {
          v32 = 0;
        }

        v36 = v2[2];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v48 = &__block_descriptor_tmp_269;
        if (v32)
        {
          v37 = _Block_copy(v32);
        }

        else
        {
          v37 = 0;
        }

        v49 = v37;
        v50 = v29;
        if (v29)
        {
          xpc_retain(v29);
        }

        else
        {
          v50 = xpc_null_create();
        }

        v51 = v30;
        if (v30)
        {
          xpc_retain(v30);
        }

        else
        {
          v51 = xpc_null_create();
        }

        dispatch_async(v36, block);
        xpc_release(v51);
        v51 = 0;
        xpc_release(v50);
        v50 = 0;
        if (v49)
        {
          _Block_release(v49);
        }

        if (v32)
        {
          _Block_release(v32);
        }

        xpc_release(v30);
        xpc_release(v29);
      }

      if (v22)
      {
        operator delete(v22);
      }

      goto LABEL_99;
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      __p[1] = 19;
      v18 = __p[0];
    }

    else
    {
      HIBYTE(__p[2]) = 19;
      v18 = __p;
    }

    strcpy(v18, "Failed to get Nonce");
    v25 = *(v4 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v39 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v39 = __p[0];
      }

      *block = 136315138;
      *&block[4] = v39;
      _os_log_error_impl(&dword_296D7D000, v25, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
      if (!v2[1])
      {
        goto LABEL_99;
      }
    }

    else if (!v2[1])
    {
      goto LABEL_99;
    }

    if (!v2[2])
    {
      goto LABEL_99;
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    v13 = xpc_string_create(v26);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    v14 = xpc_null_create();
    v27 = v2[1];
    if (v27)
    {
      v28 = _Block_copy(v27);
    }

    else
    {
      v28 = 0;
    }

    v34 = v2[2];
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 1174405120;
    *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v48 = &__block_descriptor_tmp_269;
    if (v28)
    {
      v35 = _Block_copy(v28);
    }

    else
    {
      v35 = 0;
    }

    v49 = v35;
    v50 = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v50 = xpc_null_create();
    }

    v51 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v51 = xpc_null_create();
    }

    dispatch_async(v34, block);
    xpc_release(v51);
    v51 = 0;
    xpc_release(v50);
    v50 = 0;
    if (v49)
    {
      _Block_release(v49);
    }

    if (v28)
    {
      _Block_release(v28);
    }

    goto LABEL_44;
  }

LABEL_102:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_104:
  v38 = *MEMORY[0x29EDCA608];
}

void sub_296E01914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c149_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c149_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK::ARI_CsiSecGetRFSelfTestNonceReq_SDK(v24);
  on_zero_shared = v2[6].__on_zero_shared;
  v5 = v1[1];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v1[2];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = v1[2];
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v8 = v1[3];
  v9 = v1[4];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = operator new(0x40uLL);
  *&v10->__shared_owners_ = 0u;
  p_shared_owners = &v10->__shared_owners_;
  v10->__vftable = &unk_2A1E0F548;
  v10[1].__vftable = v2;
  v10[1].__shared_owners_ = v6;
  v10[1].__shared_weak_owners_ = v7;
  v10[2].__vftable = v8;
  v10[2].__shared_owners_ = v9;
  *&v26 = MEMORY[0x29EDCA5F8];
  *(&v26 + 1) = 1174405120;
  *&v27 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver18getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_274;
  v28 = &v10[1];
  v29 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 0x40000000;
  v32 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v33 = &unk_29EE5BED8;
  v34 = &v26;
  v12 = _Block_copy(&aBlock);
  v13 = v29;
  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_10:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v14;
  v27 = v14;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(on_zero_shared + 2);
  aBlock = *(on_zero_shared + 1);
  if (!v15)
  {
    v31 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = std::__shared_weak_count::lock(v15);
  if (!v31)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v25 = v12;
  ice::SendMsgBaseProxy::callback();
  if (v25)
  {
    _Block_release(v25);
  }

  MEMORY[0x29C263BF0](&v26);
  MEMORY[0x29C2652F0](v24);
  if (__p)
  {
    shared_owners = __p[1].__shared_owners_;
    if (shared_owners)
    {
      std::__shared_weak_count::__release_weak(shared_owners);
    }

    shared_weak_owners = __p->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      dispatch_release(shared_weak_owners);
    }

    v19 = __p->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v20 = a1;
      }
    }

    operator delete(v20);
  }
}

void sub_296E01F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a27);
  radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C2652F0](&a17);
  std::unique_ptr<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver18getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_101;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_101;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v43 = v6;
  if (!v6)
  {
    goto LABEL_101;
  }

  v7 = v6;
  if (v2[3])
  {
    v41 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40[2] = v8;
    v40[3] = v8;
    v40[0] = v8;
    v40[1] = v8;
    AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK(v40, a2);
    memset(&v39, 170, sizeof(v39));
    *block = operator new(0x20uLL);
    *&block[8] = xmmword_296E20BE0;
    strcpy(*block, "send Getting RF Test Nonce");
    checkErrorStr(v40, block, &v39);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      v10 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v39.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      v10 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v39.__r_.__value_.__l.__size_;
      }

      if (v9)
      {
LABEL_9:
        v11 = *(v4 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v32 = v39.__r_.__value_.__r.__words[0];
          if (v10 >= 0)
          {
            v32 = &v39;
          }

          *block = 136315138;
          *&block[4] = v32;
          _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
          if (!v2[1])
          {
            goto LABEL_96;
          }
        }

        else if (!v2[1])
        {
          goto LABEL_96;
        }

        if (v2[2])
        {
          if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = &v39;
          }

          else
          {
            v12 = v39.__r_.__value_.__r.__words[0];
          }

          v13 = xpc_string_create(v12);
          if (!v13)
          {
            v13 = xpc_null_create();
          }

          v14 = xpc_null_create();
          v15 = v2[1];
          if (v15)
          {
            v16 = _Block_copy(v15);
          }

          else
          {
            v16 = 0;
          }

          v26 = v2[2];
          *block = MEMORY[0x29EDCA5F8];
          *&block[8] = 1174405120;
          *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
          v47 = &__block_descriptor_tmp_269;
          if (v16)
          {
            v27 = _Block_copy(v16);
          }

          else
          {
            v27 = 0;
          }

          v48 = v27;
          v49 = v13;
          if (v13)
          {
            xpc_retain(v13);
          }

          else
          {
            v49 = xpc_null_create();
          }

          v50 = v14;
          if (v14)
          {
            xpc_retain(v14);
          }

          else
          {
            v50 = xpc_null_create();
          }

          dispatch_async(v26, block);
          xpc_release(v50);
          v50 = 0;
          xpc_release(v49);
          v49 = 0;
          if (v48)
          {
            _Block_release(v48);
          }

          if (v16)
          {
            _Block_release(v16);
          }

LABEL_52:
          xpc_release(v14);
          xpc_release(v13);
        }

LABEL_96:
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        MEMORY[0x29C2654C0](v40);
        goto LABEL_99;
      }
    }

    if (!AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK::unpack(v40))
    {
      v22 = *(v41 + 16);
      __src[0] = *v41;
      __src[1] = v22;
      v23 = *(v41 + 32);
      if (v23 >= 0x20)
      {
        v24 = 32;
      }

      else
      {
        v24 = v23;
      }

      v45 = v24;
      if (v23)
      {
        v25 = operator new(v24);
        memcpy(v25, __src, v24);
      }

      else
      {
        v25 = 0;
      }

      if (v2[1] && v2[2])
      {
        v28 = xpc_null_create();
        v29 = xpc_data_create(v25, v24);
        if (!v29)
        {
          v29 = xpc_null_create();
        }

        v30 = v2[1];
        if (v30)
        {
          v31 = _Block_copy(v30);
        }

        else
        {
          v31 = 0;
        }

        v35 = v2[2];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v47 = &__block_descriptor_tmp_269;
        if (v31)
        {
          v36 = _Block_copy(v31);
        }

        else
        {
          v36 = 0;
        }

        v48 = v36;
        v49 = v28;
        if (v28)
        {
          xpc_retain(v28);
        }

        else
        {
          v49 = xpc_null_create();
        }

        v50 = v29;
        if (v29)
        {
          xpc_retain(v29);
        }

        else
        {
          v50 = xpc_null_create();
        }

        dispatch_async(v35, block);
        xpc_release(v50);
        v50 = 0;
        xpc_release(v49);
        v49 = 0;
        if (v48)
        {
          _Block_release(v48);
        }

        if (v31)
        {
          _Block_release(v31);
        }

        xpc_release(v29);
        xpc_release(v28);
      }

      if (v25)
      {
        operator delete(v25);
      }

      goto LABEL_96;
    }

    std::string::__assign_external(&v39, "Failed to get RF Test Nonce", 0x1BuLL);
    v18 = *(v4 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v38 = &v39;
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v39.__r_.__value_.__r.__words[0];
      }

      *block = 136315138;
      *&block[4] = v38;
      _os_log_error_impl(&dword_296D7D000, v18, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
      if (!v2[1])
      {
        goto LABEL_96;
      }
    }

    else if (!v2[1])
    {
      goto LABEL_96;
    }

    if (v2[2])
    {
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v39;
      }

      else
      {
        v19 = v39.__r_.__value_.__r.__words[0];
      }

      v13 = xpc_string_create(v19);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v14 = xpc_null_create();
      v20 = v2[1];
      if (v20)
      {
        v21 = _Block_copy(v20);
      }

      else
      {
        v21 = 0;
      }

      v33 = v2[2];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
      v47 = &__block_descriptor_tmp_269;
      if (v21)
      {
        v34 = _Block_copy(v21);
      }

      else
      {
        v34 = 0;
      }

      v48 = v34;
      v49 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v49 = xpc_null_create();
      }

      v50 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v50 = xpc_null_create();
      }

      dispatch_async(v33, block);
      xpc_release(v50);
      v50 = 0;
      xpc_release(v49);
      v49 = 0;
      if (v48)
      {
        _Block_release(v48);
      }

      if (v21)
      {
        _Block_release(v21);
      }

      goto LABEL_52;
    }

    goto LABEL_96;
  }

LABEL_99:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_101:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_296E026F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c151_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver18getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c151_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver18getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver13detachRequestEhN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v16 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_30:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v14 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v13[3] = v7;
        v13[4] = v7;
        v13[1] = v7;
        v13[2] = v7;
        v13[0] = v7;
        AriSdk::ARI_IBINetDetachRspCb_SDK::ARI_IBINetDetachRspCb_SDK(v13, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        strcpy(block, "network detach request");
        block[23] = 22;
        checkError(v13, block, &cf);
        if ((block[23] & 0x80000000) != 0)
        {
          operator delete(*block);
          v8 = *v2;
          if (!*v2)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v8 = *v2;
          if (!*v2)
          {
            goto LABEL_27;
          }
        }

        if (*(v2 + 8))
        {
          v9 = cf;
          if (cf && (CFRetain(cf), (v8 = *v2) == 0))
          {
            v10 = 0;
          }

          else
          {
            v10 = _Block_copy(v8);
          }

          v11 = *(v2 + 8);
          *block = MEMORY[0x29EDCA5F8];
          *&block[8] = 1174405120;
          *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
          v18 = &__block_descriptor_tmp_179;
          if (v10)
          {
            v19 = _Block_copy(v10);
            v20 = v9;
            if (!v9)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v19 = 0;
            v20 = v9;
            if (!v9)
            {
LABEL_19:
              dispatch_async(v11, block);
              if (v20)
              {
                CFRelease(v20);
              }

              if (v19)
              {
                _Block_release(v19);
              }

              if (v10)
              {
                _Block_release(v10);
              }

              if (v9)
              {
                CFRelease(v9);
              }

              goto LABEL_27;
            }
          }

          CFRetain(v9);
          goto LABEL_19;
        }

LABEL_27:
        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C264220](v13);
        goto LABEL_30;
      }
    }
  }
}

void sub_296E02B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  MEMORY[0x29C264220](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 96);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c149_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver13detachRequestEhN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c149_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver13detachRequestEhN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::detachRequest(unsigned char,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::detachRequest(unsigned char,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::detachRequest(unsigned char,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<radio::ARICommandDriver::detachRequest(unsigned char,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v89 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v69 = v1;
  v67 = *v1;
  v79[0] = 0xAAAAAAAAAAAAAAAALL;
  v79[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v79, v1[1]);
  v2 = ctu::cf::map_adapter::copyCFArrayRef(v79, *MEMORY[0x29EDC8D28]);
  cf = v2;
  if (capabilities::radio::initium(v2))
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v3;
    v77 = v3;
    v74 = v3;
    v75 = v3;
    v72 = v3;
    v73 = v3;
    AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK(&v72);
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (__p[1])
      {
        *&v77 = __p[1];
        operator delete(__p[1]);
      }

      __p[1] = 0;
      v77 = 0uLL;
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
          v8 = ValueAtIndex;
          buf[0] = 0;
          if (ValueAtIndex)
          {
            v9 = CFGetTypeID(ValueAtIndex);
            ValueAtIndex = CFNumberGetTypeID();
            if (v9 == ValueAtIndex)
            {
              ValueAtIndex = ctu::cf::assign(buf, v8, v10);
            }
          }

          v12 = __p[1];
          v11 = v77;
          v13 = v77 - __p[1];
          if (v77 - __p[1] >= 0x1000)
          {
            LogLevels = Ari::GetLogLevels(ValueAtIndex);
            if ((LogLevels & 8) != 0)
            {
              OsLog = AriOsa::GetOsLog(LogLevels);
              if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
              {
                AriOsa::LogSrcInfo(&aBlock, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v21);
                p_aBlock = &aBlock;
                if (SHIBYTE(v83) < 0)
                {
                  p_aBlock = aBlock;
                }

                *buf = 136315650;
                *&buf[4] = "ari";
                *&buf[12] = 2080;
                *&buf[14] = p_aBlock;
                *&buf[22] = 1024;
                *&buf[24] = 371;
                _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array is full, cannot add new values", buf, 0x1Cu);
                if (SHIBYTE(v83) < 0)
                {
                  operator delete(aBlock);
                }
              }

              AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v21);
              v23 = buf;
              if (buf[23] < 0)
              {
                v23 = *buf;
              }

              AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array is full, cannot add new values", v22, v23, 371);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          else
          {
            v14 = buf[0];
            if (v77 < *(&v77 + 1))
            {
              *v77 = buf[0];
              v6 = v11 + 1;
            }

            else
            {
              v15 = *(&v77 + 1) - __p[1];
              if (2 * (*(&v77 + 1) - __p[1]) <= v13 + 1)
              {
                v16 = v13 + 1;
              }

              else
              {
                v16 = 2 * v15;
              }

              if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v17 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v16;
              }

              v18 = operator new(v17);
              v18[v13] = v14;
              v6 = &v18[v13 + 1];
              memcpy(v18, v12, v13);
              __p[1] = v18;
              *&v77 = v6;
              *(&v77 + 1) = &v18[v17];
              if (v12)
              {
                operator delete(v12);
              }
            }

            *&v77 = v6;
          }
        }
      }

      v34 = operator new(2uLL);
      *v34 = Count;
      v35 = __p[0];
      __p[0] = v34;
      if (v35)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v50 = operator new(2uLL);
      *v50 = 0;
      v35 = __p[0];
      __p[0] = v50;
      if (v35)
      {
LABEL_43:
        operator delete(v35);
      }
    }

    v36 = *(v67 + 256);
    v37 = v1[2];
    if (v37)
    {
      v38 = _Block_copy(v37);
      v39 = v1[3];
      object[0] = v38;
      object[1] = v39;
      if (!v39)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v38 = 0;
      v39 = v1[3];
      object[0] = 0;
      object[1] = v39;
      if (!v39)
      {
LABEL_47:
        v40 = v1[4];
        v41 = v1[5];
        *&v71 = v40;
        *(&v71 + 1) = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 16), 1uLL, memory_order_relaxed);
        }

        v42 = operator new(0x38uLL);
        *&v42->__shared_owners_ = 0u;
        p_shared_owners = &v42->__shared_owners_;
        v42->__vftable = &unk_2A1E0F648;
        v42[1].__vftable = v38;
        *object = 0u;
        v42[1].__shared_owners_ = v39;
        v42[1].__shared_weak_owners_ = v40;
        v42[2].__vftable = v41;
        v71 = 0u;
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 1174405120;
        *&buf[16] = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEES9_EEEENK3__0clEvEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
        *&buf[24] = &__block_descriptor_tmp_283;
        v87 = &v42[1];
        v88 = v42;
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        aBlock = MEMORY[0x29EDCA5F8];
        v82 = 0x40000000;
        v83 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
        v84 = &unk_29EE5BED8;
        v85 = buf;
        v44 = _Block_copy(&aBlock);
        v45 = v88;
        if (v88 && !atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v45->__on_zero_shared)(v45);
          std::__shared_weak_count::__release_weak(v45);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_53:
            *&v46 = 0xAAAAAAAAAAAAAAAALL;
            *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *buf = v46;
            *&buf[16] = v46;
            v87 = 0xAAAAAAAAAAAAAAAALL;
            v47 = *(v36 + 16);
            aBlock = *(v36 + 8);
            if (v47)
            {
              v82 = std::__shared_weak_count::lock(v47);
              if (v82)
              {
                ice::SendMsgBaseProxy::SendMsgBaseProxy();
                v48 = v82;
                if (v82 && !atomic_fetch_add((v82 + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v48->__on_zero_shared)(v48);
                  std::__shared_weak_count::__release_weak(v48);
                }

                v80 = v44;
                ice::SendMsgBaseProxy::callback();
                if (v80)
                {
                  _Block_release(v80);
                }

                MEMORY[0x29C263BF0](buf);
                if (*(&v71 + 1))
                {
                  std::__shared_weak_count::__release_weak(*(&v71 + 1));
                }

                if (object[1])
                {
                  dispatch_release(object[1]);
                }

                if (object[0])
                {
                  _Block_release(object[0]);
                }

                MEMORY[0x29C265740](&v72);
                v49 = cf;
                if (!cf)
                {
                  goto LABEL_95;
                }

LABEL_94:
                CFRelease(v49);
                goto LABEL_95;
              }
            }

            else
            {
              v82 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_53;
        }

        (v42->__on_zero_shared)(v42);
        std::__shared_weak_count::__release_weak(v42);
        goto LABEL_53;
      }
    }

    dispatch_retain(v39);
    goto LABEL_47;
  }

  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74 = v25;
  v75 = v25;
  v72 = v25;
  v73 = v25;
  AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK(&v72);
  v26 = operator new(0x402uLL);
  bzero(v26, 0x402uLL);
  v27 = __p[0];
  __p[0] = v26;
  if (v27)
  {
    operator delete(v27);
  }

  if (v2)
  {
    v28 = CFArrayGetCount(v2);
    if (v28 >= 1)
    {
      for (j = 0; j != v28; ++j)
      {
        v30 = CFArrayGetValueAtIndex(v2, j);
        v31 = v30;
        buf[0] = 0;
        if (v30)
        {
          v32 = CFGetTypeID(v30);
          if (v32 == CFNumberGetTypeID())
          {
            ctu::cf::assign(buf, v31, v33);
          }
        }

        *(__p[0] + j + 2) = buf[0];
      }
    }
  }

  else
  {
    LOWORD(v28) = 0;
  }

  *__p[0] = v28;
  v51 = *(v67 + 256);
  v52 = v1[2];
  if (v52)
  {
    v53 = _Block_copy(v52);
    v54 = v1[3];
    object[0] = v53;
    object[1] = v54;
    if (!v54)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v53 = 0;
  v54 = v1[3];
  object[0] = 0;
  object[1] = v54;
  if (v54)
  {
LABEL_73:
    dispatch_retain(v54);
  }

LABEL_74:
  v55 = v1[4];
  v56 = v1[5];
  *&v71 = v55;
  *(&v71 + 1) = v56;
  if (v56)
  {
    atomic_fetch_add_explicit((v56 + 16), 1uLL, memory_order_relaxed);
  }

  v57 = operator new(0x38uLL);
  *&v57->__shared_owners_ = 0u;
  v58 = &v57->__shared_owners_;
  v57->__vftable = &unk_2A1E0F6C8;
  v57[1].__vftable = v53;
  *object = 0u;
  v57[1].__shared_owners_ = v54;
  v57[1].__shared_weak_owners_ = v55;
  v57[2].__vftable = v56;
  v71 = 0u;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 1174405120;
  *&buf[16] = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEES9_EEEENK3__0clEvEUlPKhjE0_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *&buf[24] = &__block_descriptor_tmp_288;
  v87 = &v57[1];
  v88 = v57;
  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v82 = 0x40000000;
  v83 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v84 = &unk_29EE5BED8;
  v85 = buf;
  v59 = _Block_copy(&aBlock);
  v60 = v88;
  if (!v88 || atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v58, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  (v60->__on_zero_shared)(v60);
  std::__shared_weak_count::__release_weak(v60);
  if (!atomic_fetch_add(v58, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_79:
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

LABEL_80:
  *&v61 = 0xAAAAAAAAAAAAAAAALL;
  *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v61;
  *&buf[16] = v61;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v62 = *(v51 + 16);
  aBlock = *(v51 + 8);
  if (!v62)
  {
    v82 = 0;
LABEL_110:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v82 = std::__shared_weak_count::lock(v62);
  if (!v82)
  {
    goto LABEL_110;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v63 = v82;
  if (v82 && !atomic_fetch_add((v82 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

  v80 = v59;
  ice::SendMsgBaseProxy::callback();
  if (v80)
  {
    _Block_release(v80);
  }

  MEMORY[0x29C263BF0](buf);
  if (*(&v71 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v71 + 1));
  }

  if (object[1])
  {
    dispatch_release(object[1]);
  }

  if (object[0])
  {
    _Block_release(object[0]);
  }

  MEMORY[0x29C265640](&v72);
  v49 = cf;
  if (cf)
  {
    goto LABEL_94;
  }

LABEL_95:
  MEMORY[0x29C263AC0](v79);
  std::unique_ptr<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](&v69);
  v64 = a1;
  if (a1)
  {
    v65 = a1[2];
    if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v65->__on_zero_shared)(v65);
      std::__shared_weak_count::__release_weak(v65);
      v64 = a1;
    }

    operator delete(v64);
  }

  v66 = *MEMORY[0x29EDCA608];
}

void sub_296E03708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, char a35)
{
  MEMORY[0x29C265740](&a21);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a34);
  MEMORY[0x29C263AC0](&a35);
  std::unique_ptr<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](&a16);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v2[2];
    if (v5)
    {
      _Block_release(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      CFRelease(v6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#2}::~(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEES9_EEEENK3__0clEvEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v24 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_46:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[2] = v7;
        v21[3] = v7;
        v21[0] = v7;
        v21[1] = v7;
        AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
        *&block.__r_.__value_.__r.__words[1] = xmmword_296E22DC0;
        strcpy(block.__r_.__value_.__l.__data_, "send RF Self Test Request");
        checkError(v21, &block, &cf);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if (cf)
          {
            goto LABEL_22;
          }
        }

        else if (cf)
        {
          goto LABEL_22;
        }

        if (AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK::unpack(v21))
        {
          __p = operator new(0x40uLL);
          strcpy(__p, "Failed to unpack response of sending RF Self Test Request");
          CreateError();
          v8 = cf;
          cf = block.__r_.__value_.__r.__words[0];
          block.__r_.__value_.__r.__words[0] = 0;
          if (v8)
          {
            CFRelease(v8);
            if (block.__r_.__value_.__r.__words[0])
            {
              CFRelease(block.__r_.__value_.__l.__data_);
            }
          }

          v9 = __p;
          goto LABEL_21;
        }

        v10 = *v22;
        if (v10)
        {
          ctu::hex(v10);
          v11 = std::string::insert(&block, 0, "Error on requesting RF Self Test: 0x", 0x24uLL);
          __pa = *v11;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          CreateError();
          v12 = cf;
          cf = v19;
          if (v12)
          {
            CFRelease(v12);
          }

          if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__pa.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = block.__r_.__value_.__r.__words[0];
LABEL_21:
            operator delete(v9);
          }
        }

LABEL_22:
        v13 = *v2;
        if (!*v2 || !*(v2 + 8))
        {
LABEL_43:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C2657B0](v21);
          goto LABEL_46;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = *v2) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = *(v2 + 8);
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        v26 = &__block_descriptor_tmp_189;
        if (v15)
        {
          v27 = _Block_copy(v15);
          v28 = v14;
          if (!v14)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = 0;
          v28 = v14;
          if (!v14)
          {
LABEL_33:
            v29 = 0;
            dispatch_async(v16, &block);
            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            if (v27)
            {
              _Block_release(v27);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_43;
          }
        }

        CFRetain(v14);
        goto LABEL_33;
      }
    }
  }
}

void sub_296E03CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 65) < 0)
  {
    operator delete(*(v20 - 88));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C2657B0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 104);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c195_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEES8_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c195_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEES8_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEES9_EEEENK3__0clEvEUlPKhjE0_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v24 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*(v2 + 16))
        {
LABEL_46:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[2] = v7;
        v21[3] = v7;
        v21[0] = v7;
        v21[1] = v7;
        AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
        *&block.__r_.__value_.__r.__words[1] = xmmword_296E22DC0;
        strcpy(block.__r_.__value_.__l.__data_, "send RF Self Test Request");
        checkError(v21, &block, &cf);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if (cf)
          {
            goto LABEL_22;
          }
        }

        else if (cf)
        {
          goto LABEL_22;
        }

        if (AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK::unpack(v21))
        {
          __p = operator new(0x40uLL);
          strcpy(__p, "Failed to unpack response of sending RF Self Test Request");
          CreateError();
          v8 = cf;
          cf = block.__r_.__value_.__r.__words[0];
          block.__r_.__value_.__r.__words[0] = 0;
          if (v8)
          {
            CFRelease(v8);
            if (block.__r_.__value_.__r.__words[0])
            {
              CFRelease(block.__r_.__value_.__l.__data_);
            }
          }

          v9 = __p;
          goto LABEL_21;
        }

        v10 = *v22;
        if (v10)
        {
          ctu::hex(v10);
          v11 = std::string::insert(&block, 0, "Error on requesting RF Self Test: 0x", 0x24uLL);
          __pa = *v11;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          CreateError();
          v12 = cf;
          cf = v19;
          if (v12)
          {
            CFRelease(v12);
          }

          if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__pa.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = block.__r_.__value_.__r.__words[0];
LABEL_21:
            operator delete(v9);
          }
        }

LABEL_22:
        v13 = *v2;
        if (!*v2 || !*(v2 + 8))
        {
LABEL_43:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C265720](v21);
          goto LABEL_46;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = *v2) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = *(v2 + 8);
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        v26 = &__block_descriptor_tmp_189;
        if (v15)
        {
          v27 = _Block_copy(v15);
          v28 = v14;
          if (!v14)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = 0;
          v28 = v14;
          if (!v14)
          {
LABEL_33:
            v29 = 0;
            dispatch_async(v16, &block);
            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            if (v27)
            {
              _Block_release(v27);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_43;
          }
        }

        CFRetain(v14);
        goto LABEL_33;
      }
    }
  }
}

void sub_296E04288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 65) < 0)
  {
    operator delete(*(v20 - 88));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C265720](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 104);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c196_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEES8_EEEENK3__0clEvEUlPKhjE0_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c196_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEES8_EEEENK3__0clEvEUlPKhjE0_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#2},std::allocator<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#2}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F6C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#2},std::allocator<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#2}>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6 = v2;
  if (!v2)
  {
    v6 = xpc_null_create();
    v4 = a1[6];
    object = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v2);
  v4 = a1[6];
  object = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v4);
LABEL_6:
  (*(v3 + 16))(v3, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_296E04578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c15_ZTSN3xpc4dictE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = a2[5];
    a1[4] = v5;
    a1[5] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    a1[5] = xpc_null_create();
    v7 = a2[6];
    a1[6] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }

    goto LABEL_7;
  }

  v6 = a2[5];
  a1[4] = 0;
  a1[5] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v6);
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

LABEL_7:
  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c15_ZTSN3xpc4dictE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiSecGetPkHashReq_SDK::ARI_CsiSecGetPkHashReq_SDK(v24);
  on_zero_shared = v2[6].__on_zero_shared;
  v5 = v1[1];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v1[2];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = v1[2];
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v8 = v1[3];
  v9 = v1[4];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = operator new(0x40uLL);
  *&v10->__shared_owners_ = 0u;
  p_shared_owners = &v10->__shared_owners_;
  v10->__vftable = &unk_2A1E0F778;
  v10[1].__vftable = v2;
  v10[1].__shared_owners_ = v6;
  v10[1].__shared_weak_owners_ = v7;
  v10[2].__vftable = v8;
  v10[2].__shared_owners_ = v9;
  *&v26 = MEMORY[0x29EDCA5F8];
  *(&v26 + 1) = 1174405120;
  *&v27 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_291;
  v28 = &v10[1];
  v29 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 0x40000000;
  v32 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v33 = &unk_29EE5BED8;
  v34 = &v26;
  v12 = _Block_copy(&aBlock);
  v13 = v29;
  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_10:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v14;
  v27 = v14;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(on_zero_shared + 2);
  aBlock = *(on_zero_shared + 1);
  if (!v15)
  {
    v31 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = std::__shared_weak_count::lock(v15);
  if (!v31)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v25 = v12;
  ice::SendMsgBaseProxy::callback();
  if (v25)
  {
    _Block_release(v25);
  }

  MEMORY[0x29C263BF0](&v26);
  MEMORY[0x29C264330](v24);
  if (__p)
  {
    shared_owners = __p[1].__shared_owners_;
    if (shared_owners)
    {
      std::__shared_weak_count::__release_weak(shared_owners);
    }

    shared_weak_owners = __p->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      dispatch_release(shared_weak_owners);
    }

    v19 = __p->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v20 = a1;
      }
    }

    operator delete(v20);
  }
}

void sub_296E04A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a27);
  radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C264330](&a17);
  std::unique_ptr<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v59 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_116;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_116;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v51 = v6;
  if (!v6)
  {
    goto LABEL_116;
  }

  if (!v2[3])
  {
    goto LABEL_114;
  }

  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[2] = v7;
  v48[3] = v7;
  v48[0] = v7;
  v48[1] = v7;
  AriSdk::ARI_CsiSecGetPkHashRspCb_SDK::ARI_CsiSecGetPkHashRspCb_SDK(v48, a2);
  memset(__p, 170, sizeof(__p));
  block[23] = 19;
  strcpy(block, "send Getting PKHash");
  checkErrorStr(v48, block, __p);
  if ((block[23] & 0x80000000) != 0)
  {
    operator delete(*block);
    v16 = HIBYTE(__p[2]);
    v9 = SHIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v16 = __p[1];
    }

    if (v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = HIBYTE(__p[2]);
    v9 = SHIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v8 = __p[1];
    }

    if (v8)
    {
LABEL_9:
      v10 = *(v4 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        if (!v2[1])
        {
          goto LABEL_111;
        }

        goto LABEL_11;
      }

      v31 = __p[0];
      if (v9 >= 0)
      {
        v31 = __p;
      }

      *block = 136315138;
      *&block[4] = v31;
      _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
      if (v2[1])
      {
LABEL_11:
        if (!v2[2])
        {
          goto LABEL_111;
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = xpc_string_create(v11);
        if (!v12)
        {
          v12 = xpc_null_create();
        }

        v13 = xpc_null_create();
        v14 = v2[1];
        if (v14)
        {
          v15 = _Block_copy(v14);
        }

        else
        {
          v15 = 0;
        }

        v23 = v2[2];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v55 = &__block_descriptor_tmp_269;
        if (v15)
        {
          v24 = _Block_copy(v15);
        }

        else
        {
          v24 = 0;
        }

        v56 = v24;
        v57 = v12;
        if (v12)
        {
          xpc_retain(v12);
        }

        else
        {
          v57 = xpc_null_create();
        }

        v58 = v13;
        if (v13)
        {
          xpc_retain(v13);
        }

        else
        {
          v58 = xpc_null_create();
        }

        dispatch_async(v23, block);
        xpc_release(v58);
        v58 = 0;
        xpc_release(v57);
        v57 = 0;
        if (v56)
        {
          _Block_release(v56);
        }

        if (v15)
        {
          _Block_release(v15);
        }

        goto LABEL_45;
      }

      goto LABEL_111;
    }
  }

  if (AriSdk::ARI_CsiSecGetPkHashRspCb_SDK::unpack(v48))
  {
    if (SHIBYTE(__p[2]) < 0)
    {
      __p[1] = 21;
      v17 = __p[0];
    }

    else
    {
      HIBYTE(__p[2]) = 21;
      v17 = __p;
    }

    strcpy(v17, "Failed to get PK hash");
    v25 = *(v4 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v46 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v46 = __p[0];
      }

      *block = 136315138;
      *&block[4] = v46;
      _os_log_error_impl(&dword_296D7D000, v25, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
      if (!v2[1])
      {
        goto LABEL_111;
      }
    }

    else if (!v2[1])
    {
      goto LABEL_111;
    }

    if (v2[2])
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      v12 = xpc_string_create(v26);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      v13 = xpc_null_create();
      v27 = v2[1];
      if (v27)
      {
        v28 = _Block_copy(v27);
      }

      else
      {
        v28 = 0;
      }

      v32 = v2[2];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
      v55 = &__block_descriptor_tmp_269;
      if (v28)
      {
        v33 = _Block_copy(v28);
      }

      else
      {
        v33 = 0;
      }

      v56 = v33;
      v57 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v57 = xpc_null_create();
      }

      v58 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v58 = xpc_null_create();
      }

      dispatch_async(v32, block);
      xpc_release(v58);
      v58 = 0;
      xpc_release(v57);
      v57 = 0;
      if (v56)
      {
        _Block_release(v56);
      }

      if (v28)
      {
        _Block_release(v28);
      }

LABEL_45:
      xpc_release(v13);
      xpc_release(v12);
    }
  }

  else
  {
    v18 = *(v49 + 16);
    __src[0] = *v49;
    __src[1] = v18;
    v19 = *(v49 + 32);
    if (v19 >= 0x20)
    {
      v20 = 32;
    }

    else
    {
      v20 = *(v49 + 32);
    }

    v53 = v20;
    if (v19)
    {
      v21 = operator new(v20);
      memcpy(v21, __src, v20);
      if (v19 <= 3)
      {
        std::vector<unsigned char>::__throw_out_of_range[abi:ne200100]();
      }

      v22 = bswap32(*v21);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v29 = xpc_dictionary_create(0, 0, 0);
    if (v29 || (v29 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C266420](v29) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v29);
        v30 = v29;
      }

      else
      {
        v30 = xpc_null_create();
      }
    }

    else
    {
      v30 = xpc_null_create();
      v29 = 0;
    }

    xpc_release(v29);
    v34 = xpc_data_create(v21, v20);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    xpc_dictionary_set_value(v30, *MEMORY[0x29EDC8B90], v34);
    v35 = xpc_null_create();
    xpc_release(v34);
    xpc_release(v35);
    v36 = xpc_int64_create(v22);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    xpc_dictionary_set_value(v30, *MEMORY[0x29EDC8B80], v36);
    v37 = xpc_null_create();
    xpc_release(v36);
    xpc_release(v37);
    if (v2[1] && v2[2])
    {
      v38 = xpc_null_create();
      if (v30)
      {
        xpc_retain(v30);
        v39 = v30;
      }

      else
      {
        v39 = xpc_null_create();
      }

      v40 = v2[1];
      if (v40)
      {
        v41 = _Block_copy(v40);
      }

      else
      {
        v41 = 0;
      }

      v42 = v2[2];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
      v55 = &__block_descriptor_tmp_290;
      if (v41)
      {
        v43 = _Block_copy(v41);
      }

      else
      {
        v43 = 0;
      }

      v56 = v43;
      v57 = v38;
      if (v38)
      {
        xpc_retain(v38);
      }

      else
      {
        v57 = xpc_null_create();
      }

      v58 = v39;
      if (v39)
      {
        xpc_retain(v39);
      }

      else
      {
        v58 = xpc_null_create();
      }

      dispatch_async(v42, block);
      xpc_release(v58);
      v58 = 0;
      xpc_release(v57);
      v57 = 0;
      if (v56)
      {
        _Block_release(v56);
      }

      if (v41)
      {
        _Block_release(v41);
      }

      xpc_release(v39);
      xpc_release(v38);
    }

    xpc_release(v30);
    if (v21)
    {
      operator delete(v21);
    }
  }

LABEL_111:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x29C264750](v48);
  v6 = v51;
  if (v51)
  {
LABEL_114:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v44 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v44);
    }
  }

LABEL_116:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_296E0537C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c141_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c141_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_GetPersonalizationParametersReq_SDK::ARI_GetPersonalizationParametersReq_SDK(v24);
  on_zero_shared = v2[6].__on_zero_shared;
  v5 = v1[1];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v1[2];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = v1[2];
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v8 = v1[3];
  v9 = v1[4];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = operator new(0x40uLL);
  *&v10->__shared_owners_ = 0u;
  p_shared_owners = &v10->__shared_owners_;
  v10->__vftable = &unk_2A1E0F7F8;
  v10[1].__vftable = v2;
  v10[1].__shared_owners_ = v6;
  v10[1].__shared_weak_owners_ = v7;
  v10[2].__vftable = v8;
  v10[2].__shared_owners_ = v9;
  *&v26 = MEMORY[0x29EDCA5F8];
  *(&v26 + 1) = 1174405120;
  *&v27 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13getPersParamsEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_295;
  v28 = &v10[1];
  v29 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 0x40000000;
  v32 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v33 = &unk_29EE5BED8;
  v34 = &v26;
  v12 = _Block_copy(&aBlock);
  v13 = v29;
  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_10:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v14;
  v27 = v14;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(on_zero_shared + 2);
  aBlock = *(on_zero_shared + 1);
  if (!v15)
  {
    v31 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = std::__shared_weak_count::lock(v15);
  if (!v31)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v25 = v12;
  ice::SendMsgBaseProxy::callback();
  if (v25)
  {
    _Block_release(v25);
  }

  MEMORY[0x29C263BF0](&v26);
  MEMORY[0x29C2655D0](v24);
  if (__p)
  {
    shared_owners = __p[1].__shared_owners_;
    if (shared_owners)
    {
      std::__shared_weak_count::__release_weak(shared_owners);
    }

    shared_weak_owners = __p->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      dispatch_release(shared_weak_owners);
    }

    v19 = __p->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v20 = a1;
      }
    }

    operator delete(v20);
  }
}

void sub_296E059F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a27);
  radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C2655D0](&a17);
  std::unique_ptr<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13getPersParamsEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_115;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_115;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v64 = v6;
  if (!v6)
  {
    goto LABEL_115;
  }

  if (!v2[3])
  {
    goto LABEL_113;
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v7;
  v61 = v7;
  v59 = v7;
  v57 = v7;
  v58 = v7;
  v55[3] = v7;
  v56 = v7;
  v55[1] = v7;
  v55[2] = v7;
  v55[0] = v7;
  AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::ARI_GetPersonalizationParametersRspCb_SDK(v55, a2);
  memset(&v54, 170, sizeof(v54));
  *block = operator new(0x20uLL);
  *&block[8] = xmmword_296E22D90;
  strcpy(*block, "send Getting Pers Params");
  checkErrorStr(v55, block, &v54);
  if ((block[23] & 0x80000000) != 0)
  {
    operator delete(*block);
    size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    v9 = SHIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    v9 = SHIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v54.__r_.__value_.__l.__size_;
    }

    if (v8)
    {
LABEL_9:
      v10 = *(v4 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        if (!v2[1])
        {
          goto LABEL_110;
        }

        goto LABEL_11;
      }

      v28 = v54.__r_.__value_.__r.__words[0];
      if (v9 >= 0)
      {
        v28 = &v54;
      }

      *block = 136315138;
      *&block[4] = v28;
      _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
      if (v2[1])
      {
LABEL_11:
        if (!v2[2])
        {
          goto LABEL_110;
        }

        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v54;
        }

        else
        {
          v11 = v54.__r_.__value_.__r.__words[0];
        }

        v12 = xpc_string_create(v11);
        if (!v12)
        {
          v12 = xpc_null_create();
        }

        v13 = xpc_null_create();
        v14 = v2[1];
        if (v14)
        {
          v15 = _Block_copy(v14);
        }

        else
        {
          v15 = 0;
        }

        v26 = v2[2];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v66 = &__block_descriptor_tmp_269;
        if (v15)
        {
          v27 = _Block_copy(v15);
        }

        else
        {
          v27 = 0;
        }

        v67 = v27;
        v68 = v12;
        if (v12)
        {
          xpc_retain(v12);
        }

        else
        {
          v68 = xpc_null_create();
        }

        v69 = v13;
        if (v13)
        {
          xpc_retain(v13);
        }

        else
        {
          v69 = xpc_null_create();
        }

        dispatch_async(v26, block);
        xpc_release(v69);
        v69 = 0;
        xpc_release(v68);
        v68 = 0;
        if (v67)
        {
          _Block_release(v67);
        }

        if (v15)
        {
          _Block_release(v15);
        }

LABEL_51:
        xpc_release(v13);
        xpc_release(v12);
        goto LABEL_110;
      }

      goto LABEL_110;
    }
  }

  if (AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::unpack(v55))
  {
    std::string::__assign_external(&v54, "Failed to get pers params", 0x19uLL);
    v17 = *(v4 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v53 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v54.__r_.__value_.__r.__words[0];
      }

      *block = 136315138;
      *&block[4] = v53;
      _os_log_error_impl(&dword_296D7D000, v17, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
      if (!v2[1])
      {
        goto LABEL_110;
      }
    }

    else if (!v2[1])
    {
      goto LABEL_110;
    }

    if (!v2[2])
    {
      goto LABEL_110;
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v54;
    }

    else
    {
      v18 = v54.__r_.__value_.__r.__words[0];
    }

    v12 = xpc_string_create(v18);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v13 = xpc_null_create();
    v19 = v2[1];
    if (v19)
    {
      v20 = _Block_copy(v19);
    }

    else
    {
      v20 = 0;
    }

    v29 = v2[2];
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 1174405120;
    *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v66 = &__block_descriptor_tmp_269;
    if (v20)
    {
      v30 = _Block_copy(v20);
    }

    else
    {
      v30 = 0;
    }

    v67 = v30;
    v68 = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      v68 = xpc_null_create();
    }

    v69 = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v69 = xpc_null_create();
    }

    dispatch_async(v29, block);
    xpc_release(v69);
    v69 = 0;
    xpc_release(v68);
    v68 = 0;
    if (v67)
    {
      _Block_release(v67);
    }

    if (v20)
    {
      _Block_release(v20);
    }

    goto LABEL_51;
  }

  v21 = **(&v57 + 1);
  v22 = *v57;
  v23 = operator new(8uLL);
  *v23 = HIBYTE(v21);
  v23[1] = BYTE2(v21);
  v23[2] = BYTE1(v21);
  v23[3] = v21;
  v23[4] = HIBYTE(v22);
  v23[5] = BYTE2(v22);
  v23[6] = BYTE1(v22);
  v23[7] = v22;
  v24 = xpc_dictionary_create(0, 0, 0);
  if (v24 || (v24 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C266420](v24) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v24);
      v25 = v24;
    }

    else
    {
      v25 = xpc_null_create();
    }
  }

  else
  {
    v25 = xpc_null_create();
    v24 = 0;
  }

  xpc_release(v24);
  v31 = xpc_int64_create(*v56);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v25, *MEMORY[0x29EDC8B98], v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  v33 = xpc_int64_create(**(&v56 + 1));
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v25, *MEMORY[0x29EDC8B88], v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = xpc_data_create(v23, 8uLL);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v25, *MEMORY[0x29EDC8BF8], v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  v37 = xpc_int64_create(*v58);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v25, *MEMORY[0x29EDC8C08], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_int64_create(**(&v58 + 1));
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  xpc_dictionary_set_value(v25, *MEMORY[0x29EDC8C00], v39);
  v40 = xpc_null_create();
  xpc_release(v39);
  xpc_release(v40);
  v41 = xpc_int64_create(*v59);
  if (!v41)
  {
    v41 = xpc_null_create();
  }

  xpc_dictionary_set_value(v25, *MEMORY[0x29EDC8BF0], v41);
  v42 = xpc_null_create();
  xpc_release(v41);
  xpc_release(v42);
  v43 = xpc_int64_create(**(&v59 + 1));
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  xpc_dictionary_set_value(v25, *MEMORY[0x29EDC8BA0], v43);
  v44 = xpc_null_create();
  xpc_release(v43);
  xpc_release(v44);
  if (v2[1] && v2[2])
  {
    v45 = xpc_null_create();
    if (v25)
    {
      xpc_retain(v25);
      v46 = v25;
    }

    else
    {
      v46 = xpc_null_create();
    }

    v47 = v2[1];
    if (v47)
    {
      v48 = _Block_copy(v47);
    }

    else
    {
      v48 = 0;
    }

    v49 = v2[2];
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 1174405120;
    *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
    v66 = &__block_descriptor_tmp_290;
    if (v48)
    {
      v50 = _Block_copy(v48);
    }

    else
    {
      v50 = 0;
    }

    v67 = v50;
    v68 = v45;
    if (v45)
    {
      xpc_retain(v45);
    }

    else
    {
      v68 = xpc_null_create();
    }

    v69 = v46;
    if (v46)
    {
      xpc_retain(v46);
    }

    else
    {
      v69 = xpc_null_create();
    }

    dispatch_async(v49, block);
    xpc_release(v69);
    v69 = 0;
    xpc_release(v68);
    v68 = 0;
    if (v67)
    {
      _Block_release(v67);
    }

    if (v48)
    {
      _Block_release(v48);
    }

    xpc_release(v46);
    xpc_release(v45);
  }

  xpc_release(v25);
  operator delete(v23);
LABEL_110:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  MEMORY[0x29C2656D0](v55);
  v6 = v64;
  if (v64)
  {
LABEL_113:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v51 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v51);
    }
  }

LABEL_115:
  v52 = *MEMORY[0x29EDCA608];
}

void sub_296E06460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13getPersParamsEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13getPersParamsEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F7F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver14getChipID_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS4_6objectES8_EEEE3__0vEENS6_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_86;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_86;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v39 = v6;
  if (!v6)
  {
    goto LABEL_86;
  }

  v7 = v6;
  if (v2[3])
  {
    v37 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36[2] = v8;
    v36[3] = v8;
    v36[0] = v8;
    v36[1] = v8;
    AriSdk::ARI_CsiSecGetChipIdRspCb_SDK::ARI_CsiSecGetChipIdRspCb_SDK(v36, a2);
    memset(__p, 170, sizeof(__p));
    block[23] = 20;
    strcpy(block, "send Getting Chip ID");
    checkErrorStr(v36, block, __p);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
      v17 = HIBYTE(__p[2]);
      v10 = SHIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v17 = __p[1];
      }

      if (v17)
      {
LABEL_9:
        v11 = *(v4 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v33 = __p[0];
          if (v10 >= 0)
          {
            v33 = __p;
          }

          *block = 136315138;
          *&block[4] = v33;
          _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
          LOBYTE(v10) = HIBYTE(__p[2]);
        }

        if ((v10 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = xpc_string_create(v12);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        v15 = v2[1];
        if (v15)
        {
          v16 = _Block_copy(v15);
        }

        else
        {
          v16 = 0;
        }

        v19 = v2[2];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v41 = &__block_descriptor_tmp_269;
        if (v16)
        {
          v42 = _Block_copy(v16);
          v43 = v13;
          if (v13)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v42 = 0;
          v43 = v13;
          if (v13)
          {
LABEL_26:
            xpc_retain(v13);
            v44 = v14;
            if (v14)
            {
LABEL_27:
              xpc_retain(v14);
LABEL_31:
              dispatch_async(v19, block);
              xpc_release(v44);
              v44 = 0;
              xpc_release(v43);
              v43 = 0;
              if (v42)
              {
                _Block_release(v42);
              }

              if (v16)
              {
                _Block_release(v16);
              }

LABEL_81:
              xpc_release(v14);
              xpc_release(v13);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              MEMORY[0x29C264720](v36);
              goto LABEL_84;
            }

LABEL_30:
            v44 = xpc_null_create();
            goto LABEL_31;
          }
        }

        v43 = xpc_null_create();
        v44 = v14;
        if (v14)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v9 = HIBYTE(__p[2]);
      v10 = SHIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[1];
      }

      if (v9)
      {
        goto LABEL_9;
      }
    }

    if (AriSdk::ARI_CsiSecGetChipIdRspCb_SDK::unpack(v36))
    {
      if (SHIBYTE(__p[2]) < 0)
      {
        __p[1] = 21;
        v18 = __p[0];
      }

      else
      {
        HIBYTE(__p[2]) = 21;
        v18 = __p;
      }

      strcpy(v18, "Failed to get Chip ID");
      v22 = *(v4 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v34 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v34 = __p[0];
        }

        *block = 136315138;
        *&block[4] = v34;
        _os_log_error_impl(&dword_296D7D000, v22, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      v13 = xpc_string_create(v23);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v14 = xpc_null_create();
      v24 = v2[1];
      if (v24)
      {
        v25 = _Block_copy(v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = v2[2];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
      v41 = &__block_descriptor_tmp_269;
      if (v25)
      {
        v27 = _Block_copy(v25);
      }

      else
      {
        v27 = 0;
      }

      v42 = v27;
      v43 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v43 = xpc_null_create();
      }

      v44 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v44 = xpc_null_create();
      }

      dispatch_async(v26, block);
      xpc_release(v44);
      v44 = 0;
      xpc_release(v43);
      v43 = 0;
      if (v42)
      {
        _Block_release(v42);
      }

      if (v25)
      {
        _Block_release(v25);
      }
    }

    else
    {
      v20 = xpc_int64_create(*v37);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(v2[5], *MEMORY[0x29EDC8B88], v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
      v13 = xpc_null_create();
      v14 = v2[5];
      if (v14)
      {
        xpc_retain(v2[5]);
      }

      else
      {
        v14 = xpc_null_create();
      }

      v28 = v2[1];
      if (v28)
      {
        v29 = _Block_copy(v28);
      }

      else
      {
        v29 = 0;
      }

      v30 = v2[2];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
      v41 = &__block_descriptor_tmp_290;
      if (v29)
      {
        v31 = _Block_copy(v29);
      }

      else
      {
        v31 = 0;
      }

      v42 = v31;
      v43 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v43 = xpc_null_create();
      }

      v44 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v44 = xpc_null_create();
      }

      dispatch_async(v30, block);
      xpc_release(v44);
      v44 = 0;
      xpc_release(v43);
      v43 = 0;
      if (v42)
      {
        _Block_release(v42);
      }

      if (v29)
      {
        _Block_release(v29);
      }
    }

    goto LABEL_81;
  }

LABEL_84:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_86:
  v32 = *MEMORY[0x29EDCA608];
}

void sub_296E06DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c141_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver14getChipID_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS3_6objectES7_EEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c141_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver14getChipID_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS3_6objectES7_EEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getChipID_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::allocator<radio::ARICommandDriver::getChipID_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getChipID_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::allocator<radio::ARICommandDriver::getChipID_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  xpc_release(*(a1 + 64));
  *(a1 + 64) = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver16getScrtPubK_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS4_6objectES8_EEEE3__0vEENS6_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_88;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_88;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v44 = v6;
  if (!v6)
  {
    goto LABEL_88;
  }

  v7 = v6;
  if (v2[3])
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41 = v8;
    v42 = v8;
    v40[2] = v8;
    v40[3] = v8;
    v40[0] = v8;
    v40[1] = v8;
    AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::ARI_CsiSecReadSikPKeyRspCb_SDK(v40, a2);
    memset(&v39, 170, sizeof(v39));
    *block = operator new(0x20uLL);
    *&block[8] = xmmword_296E22DC0;
    strcpy(*block, "send Getting SCRT Pub Key");
    checkErrorStr(v40, block, &v39);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      v10 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v39.__r_.__value_.__l.__size_;
      }

      if (size)
      {
LABEL_9:
        v11 = *(v4 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v37 = v39.__r_.__value_.__r.__words[0];
          if (v10 >= 0)
          {
            v37 = &v39;
          }

          *block = 136315138;
          *&block[4] = v37;
          _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
          LOBYTE(v10) = *(&v39.__r_.__value_.__s + 23);
        }

        if ((v10 & 0x80u) == 0)
        {
          v12 = &v39;
        }

        else
        {
          v12 = v39.__r_.__value_.__r.__words[0];
        }

        v13 = xpc_string_create(v12);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        v15 = v2[1];
        if (v15)
        {
          v16 = _Block_copy(v15);
        }

        else
        {
          v16 = 0;
        }

        v22 = v2[2];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v46 = &__block_descriptor_tmp_269;
        if (v16)
        {
          v47 = _Block_copy(v16);
          v48 = v13;
          if (v13)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v47 = 0;
          v48 = v13;
          if (v13)
          {
LABEL_32:
            xpc_retain(v13);
            v49 = v14;
            if (v14)
            {
LABEL_33:
              xpc_retain(v14);
LABEL_37:
              dispatch_async(v22, block);
              xpc_release(v49);
              v49 = 0;
              xpc_release(v48);
              v48 = 0;
              if (v47)
              {
                _Block_release(v47);
              }

              if (v16)
              {
                _Block_release(v16);
              }

              goto LABEL_41;
            }

LABEL_36:
            v49 = xpc_null_create();
            goto LABEL_37;
          }
        }

        v48 = xpc_null_create();
        v49 = v14;
        if (v14)
        {
          goto LABEL_33;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v9 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      v10 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v39.__r_.__value_.__l.__size_;
      }

      if (v9)
      {
        goto LABEL_9;
      }
    }

    if (!AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::unpack(v40))
    {
      v23 = **(&v42 + 1);
      if (**(&v42 + 1))
      {
        v24 = v41;
        v25 = operator new(**(&v42 + 1));
        memmove(v25, v24, v23);
      }

      else
      {
        v25 = 0;
      }

      v28 = xpc_data_create(v25, v23);
      if (!v28)
      {
        v28 = xpc_null_create();
      }

      xpc_dictionary_set_value(v2[5], *MEMORY[0x29EDC8BB0], v28);
      v29 = xpc_null_create();
      xpc_release(v28);
      xpc_release(v29);
      v30 = xpc_null_create();
      v31 = v2[5];
      if (v31)
      {
        xpc_retain(v2[5]);
      }

      else
      {
        v31 = xpc_null_create();
      }

      v32 = v2[1];
      if (v32)
      {
        v33 = _Block_copy(v32);
      }

      else
      {
        v33 = 0;
      }

      v34 = v2[2];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
      v46 = &__block_descriptor_tmp_290;
      if (v33)
      {
        v35 = _Block_copy(v33);
      }

      else
      {
        v35 = 0;
      }

      v47 = v35;
      v48 = v30;
      if (v30)
      {
        xpc_retain(v30);
      }

      else
      {
        v48 = xpc_null_create();
      }

      v49 = v31;
      if (v31)
      {
        xpc_retain(v31);
      }

      else
      {
        v49 = xpc_null_create();
      }

      dispatch_async(v34, block);
      xpc_release(v49);
      v49 = 0;
      xpc_release(v48);
      v48 = 0;
      if (v47)
      {
        _Block_release(v47);
      }

      if (v33)
      {
        _Block_release(v33);
      }

      xpc_release(v31);
      xpc_release(v30);
      if (v25)
      {
        operator delete(v25);
      }

      goto LABEL_83;
    }

    std::string::__assign_external(&v39, "Failed to get SCRT Pub Key", 0x1AuLL);
    v18 = *(v4 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v38 = &v39;
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v39.__r_.__value_.__r.__words[0];
      }

      *block = 136315138;
      *&block[4] = v38;
      _os_log_error_impl(&dword_296D7D000, v18, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v39;
    }

    else
    {
      v19 = v39.__r_.__value_.__r.__words[0];
    }

    v13 = xpc_string_create(v19);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    v14 = xpc_null_create();
    v20 = v2[1];
    if (v20)
    {
      v21 = _Block_copy(v20);
    }

    else
    {
      v21 = 0;
    }

    v26 = v2[2];
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 1174405120;
    *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v46 = &__block_descriptor_tmp_269;
    if (v21)
    {
      v27 = _Block_copy(v21);
    }

    else
    {
      v27 = 0;
    }

    v47 = v27;
    v48 = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v48 = xpc_null_create();
    }

    v49 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v49 = xpc_null_create();
    }

    dispatch_async(v26, block);
    xpc_release(v49);
    v49 = 0;
    xpc_release(v48);
    v48 = 0;
    if (v47)
    {
      _Block_release(v47);
    }

    if (v21)
    {
      _Block_release(v21);
    }

LABEL_41:
    xpc_release(v14);
    xpc_release(v13);
LABEL_83:
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    MEMORY[0x29C264B60](v40);
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_88:
  v36 = *MEMORY[0x29EDCA608];
}

void sub_296E076A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c143_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver16getScrtPubK_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS3_6objectES7_EEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c143_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver16getScrtPubK_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS3_6objectES7_EEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getScrtPubK_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::allocator<radio::ARICommandDriver::getScrtPubK_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F8F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getScrtPubK_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::allocator<radio::ARICommandDriver::getScrtPubK_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  xpc_release(*(a1 + 64));
  *(a1 + 64) = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(capabilities::radio *a1)
{
  v1 = *a1;
  v28 = *a1;
  v2 = **a1;
  if (capabilities::radio::initium(a1))
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZN5radio16ARICommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_309;
    aBlock[4] = v2;
    aBlock[5] = v1[3];
    v3 = v1[4];
    v33 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = v1[1];
    if (v4)
    {
      v4 = _Block_copy(v4);
    }

    v34 = v4;
    v5 = v1[2];
    object = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    v6 = _Block_copy(aBlock);
    v7 = *(v2 + 24);
    if (v7)
    {
      dispatch_retain(*(v2 + 24));
    }

    v36[0] = v6;
    v36[1] = v7;
    radio::ARICommandDriver::getPersParams(v2, v36);
    if (v7)
    {
      dispatch_release(v7);
    }

    if (v6)
    {
      _Block_release(v6);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v34)
    {
      _Block_release(v34);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_weak(v33);
    }

LABEL_38:
    v22 = v1[4];
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    v23 = v1[2];
    if (v23)
    {
      dispatch_release(v23);
    }

    v24 = v1[1];
    if (v24)
    {
      _Block_release(v24);
    }

    operator delete(v1);
    goto LABEL_45;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[2] = v8;
  v31[3] = v8;
  v31[0] = v8;
  v31[1] = v8;
  AriSdk::ARI_CsiSecGetSNUMReq_SDK::ARI_CsiSecGetSNUMReq_SDK(v31);
  v9 = *(v2 + 256);
  v10 = v1[1];
  if (v10)
  {
    v11 = _Block_copy(v10);
    v12 = v1[2];
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = 0;
  v12 = v1[2];
  if (v12)
  {
LABEL_23:
    dispatch_retain(v12);
  }

LABEL_24:
  v14 = v1[3];
  v13 = v1[4];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = operator new(0x40uLL);
  *&v15->__shared_owners_ = 0u;
  p_shared_owners = &v15->__shared_owners_;
  v15->__vftable = &unk_2A1E0F9A8;
  v15[1].__vftable = v2;
  v15[1].__shared_owners_ = v11;
  v15[1].__shared_weak_owners_ = v12;
  v15[2].__vftable = v14;
  v15[2].__shared_owners_ = v13;
  v37 = MEMORY[0x29EDCA5F8];
  v38 = 1174405120;
  v39 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v40 = &__block_descriptor_tmp_310;
  v41 = v15 + 1;
  v42 = v15;
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 0x40000000;
  v43[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v43[3] = &unk_29EE5BED8;
  v43[4] = &v37;
  v17 = _Block_copy(v43);
  v18 = v42;
  if (!v42 || atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_29:
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_30:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[0] = v19;
  v29[1] = v19;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *(v9 + 16);
  v37 = *(v9 + 8);
  if (!v20)
  {
    v38 = 0;
LABEL_56:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v38 = std::__shared_weak_count::lock(v20);
  if (!v38)
  {
    goto LABEL_56;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v21 = v38;
  if (v38 && !atomic_fetch_add((v38 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v43[0] = v17;
  ice::SendMsgBaseProxy::callback();
  if (v43[0])
  {
    _Block_release(v43[0]);
  }

  MEMORY[0x29C263BF0](v29);
  MEMORY[0x29C264120](v31);
  v1 = v28;
  if (v28)
  {
    goto LABEL_38;
  }

LABEL_45:
  v25 = a1;
  if (a1)
  {
    v26 = *(a1 + 2);
    if (v26)
    {
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
        v25 = a1;
      }
    }

    operator delete(v25);
  }
}

void sub_296E07DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  v39 = *(v37 - 120);
  if (v39)
  {
    _Block_release(v39);
  }

  MEMORY[0x29C263BF0](&a17);
  radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C264120](&a23);
  std::unique_ptr<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio16ARICommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, xpc::object *a2, void *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_37;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_37;
    }
  }

  v11 = MEMORY[0x29C266420](*a2);
  v12 = MEMORY[0x29EDCAA40];
  if (v11 != MEMORY[0x29EDCAA40])
  {
    v13 = v7[1].~__shared_weak_count;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(__p, a2);
      v16 = v28 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v30 = v16;
      _os_log_error_impl(&dword_296D7D000, v13, OS_LOG_TYPE_ERROR, "Failed to get Pers Params (%s) but proceeding to get SCRT Pub Key anyway", buf, 0xCu);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (MEMORY[0x29C266420](*a3) == v12)
    {
      v14 = xpc_dictionary_create(0, 0, 0);
      if (v14 || (v14 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C266420](v14) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v14);
          v15 = v14;
        }

        else
        {
          v15 = xpc_null_create();
        }
      }

      else
      {
        v15 = xpc_null_create();
        v14 = 0;
      }

      xpc_release(v14);
      if (v15)
      {
        xpc_retain(v15);
        v17 = v15;
      }

      else
      {
        v17 = xpc_null_create();
      }

      v18 = *a3;
      *a3 = v17;
      xpc_release(v18);
      xpc_release(v15);
    }
  }

  v19 = *a3;
  v26 = v19;
  if (v19 && MEMORY[0x29C266420](v19) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v19);
  }

  else
  {
    v19 = xpc_null_create();
    v26 = v19;
  }

  v20 = a1[7];
  if (!v20)
  {
    v21 = 0;
    v22 = a1[8];
    v24 = 0;
    v25 = v22;
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v21 = _Block_copy(v20);
  v22 = a1[8];
  v24 = v21;
  v25 = v22;
  if (v22)
  {
LABEL_31:
    dispatch_retain(v22);
  }

LABEL_32:
  radio::ARICommandDriver::getScrtPubK_sync(v7, &v26, &v24);
  if (v22)
  {
    dispatch_release(v22);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(v19);
LABEL_37:
  v23 = *MEMORY[0x29EDCA608];
}

void sub_296E081DC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_93;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    goto LABEL_93;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v45 = v6;
  if (!v6)
  {
    goto LABEL_93;
  }

  if (!*(v2 + 24))
  {
    goto LABEL_91;
  }

  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[2] = v8;
  v42[3] = v8;
  v42[0] = v8;
  v42[1] = v8;
  AriSdk::ARI_CsiSecGetSNUMRspCb_SDK::ARI_CsiSecGetSNUMRspCb_SDK(v42, a2);
  memset(&v41, 170, sizeof(v41));
  *block = operator new(0x20uLL);
  *&block[8] = xmmword_296E20BE0;
  strcpy(*block, "send Getting Serial Number");
  checkErrorStr(v42, block, &v41);
  if ((block[23] & 0x80000000) != 0)
  {
    operator delete(*block);
    size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    v10 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    if (size)
    {
LABEL_9:
      v11 = v4[1].~__shared_weak_count;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v30 = v41.__r_.__value_.__r.__words[0];
        if (v10 >= 0)
        {
          v30 = &v41;
        }

        *block = 136315138;
        *&block[4] = v30;
        _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
        LOBYTE(v10) = *(&v41.__r_.__value_.__s + 23);
      }

      if ((v10 & 0x80u) == 0)
      {
        v12 = &v41;
      }

      else
      {
        v12 = v41.__r_.__value_.__r.__words[0];
      }

      v13 = xpc_string_create(v12);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v14 = xpc_null_create();
      v15 = *(v2 + 8);
      if (v15)
      {
        v16 = _Block_copy(v15);
      }

      else
      {
        v16 = 0;
      }

      v22 = *(v2 + 16);
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
      v47 = &__block_descriptor_tmp_269;
      if (v16)
      {
        v48 = _Block_copy(v16);
        v49 = v13;
        if (v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = 0;
        v49 = v13;
        if (v13)
        {
LABEL_32:
          xpc_retain(v13);
          v50 = v14;
          if (v14)
          {
LABEL_33:
            xpc_retain(v14);
LABEL_37:
            dispatch_async(v22, block);
            xpc_release(v50);
            v50 = 0;
            xpc_release(v49);
            v49 = 0;
            if (v48)
            {
              _Block_release(v48);
            }

            if (v16)
            {
              _Block_release(v16);
            }

LABEL_41:
            xpc_release(v14);
            xpc_release(v13);
            goto LABEL_88;
          }

LABEL_36:
          v50 = xpc_null_create();
          goto LABEL_37;
        }
      }

      v49 = xpc_null_create();
      v50 = v14;
      if (v14)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v9 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    v10 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v41.__r_.__value_.__l.__size_;
    }

    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (AriSdk::ARI_CsiSecGetSNUMRspCb_SDK::unpack(v42))
  {
    std::string::__assign_external(&v41, "Failed to get Serial Number", 0x1BuLL);
    v18 = v4[1].~__shared_weak_count;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v38 = &v41;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v41.__r_.__value_.__r.__words[0];
      }

      *block = 136315138;
      *&block[4] = v38;
      _os_log_error_impl(&dword_296D7D000, v18, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v41;
    }

    else
    {
      v19 = v41.__r_.__value_.__r.__words[0];
    }

    v13 = xpc_string_create(v19);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    v14 = xpc_null_create();
    v20 = *(v2 + 8);
    if (v20)
    {
      v21 = _Block_copy(v20);
    }

    else
    {
      v21 = 0;
    }

    v26 = *(v2 + 16);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 1174405120;
    *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v47 = &__block_descriptor_tmp_269;
    if (v21)
    {
      v27 = _Block_copy(v21);
    }

    else
    {
      v27 = 0;
    }

    v48 = v27;
    v49 = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v49 = xpc_null_create();
    }

    v50 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v50 = xpc_null_create();
    }

    dispatch_async(v26, block);
    xpc_release(v50);
    v50 = 0;
    xpc_release(v49);
    v49 = 0;
    if (v48)
    {
      _Block_release(v48);
    }

    if (v21)
    {
      _Block_release(v21);
    }

    goto LABEL_41;
  }

  *&block[16] = *(v43 + 16);
  *block = *v43;
  v23 = *&block[16];
  if ((*&block[16] & 0xFFF0) != 0)
  {
    v24 = 16;
  }

  else
  {
    v24 = *&block[16];
  }

  *&block[16] = v24;
  if (v23)
  {
    v25 = operator new(v24);
    memcpy(v25, block, v24);
  }

  else
  {
    v25 = 0;
  }

  v28 = xpc_dictionary_create(0, 0, 0);
  if (v28 || (v28 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C266420](v28) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v28);
      v29 = v28;
    }

    else
    {
      v29 = xpc_null_create();
    }
  }

  else
  {
    v29 = xpc_null_create();
    v28 = 0;
  }

  xpc_release(v28);
  v31 = xpc_data_create(v25, v24);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v29, *MEMORY[0x29EDC8BF8], v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  object = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    object = xpc_null_create();
  }

  v33 = *(v2 + 8);
  if (v33)
  {
    v34 = _Block_copy(v33);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v2 + 16);
  v39[0] = v34;
  v39[1] = v35;
  if (v35)
  {
    dispatch_retain(v35);
  }

  radio::ARICommandDriver::getChipID_sync(v4, &object, v39);
  if (v35)
  {
    dispatch_release(v35);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  xpc_release(object);
  object = 0;
  xpc_release(v29);
  if (v25)
  {
    operator delete(v25);
  }

LABEL_88:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  MEMORY[0x29C264360](v42);
  v6 = v45;
  if (v45)
  {
LABEL_91:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v36 = v6;
      (v6->__on_zero_shared)(v6, v7);
      std::__shared_weak_count::__release_weak(v36);
    }
  }

LABEL_93:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_296E08908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0F9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiIceGetManifestStatusReq_SDK::ARI_CsiIceGetManifestStatusReq_SDK(v24);
  on_zero_shared = v2[6].__on_zero_shared;
  v5 = v1[1];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v1[2];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = v1[2];
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v8 = v1[3];
  v9 = v1[4];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = operator new(0x40uLL);
  *&v10->__shared_owners_ = 0u;
  p_shared_owners = &v10->__shared_owners_;
  v10->__vftable = &unk_2A1E0FA28;
  v10[1].__vftable = v2;
  v10[1].__shared_owners_ = v6;
  v10[1].__shared_weak_owners_ = v7;
  v10[2].__vftable = v8;
  v10[2].__shared_owners_ = v9;
  *&v26 = MEMORY[0x29EDCA5F8];
  *(&v26 + 1) = 1174405120;
  *&v27 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_314;
  v28 = &v10[1];
  v29 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 0x40000000;
  v32 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v33 = &unk_29EE5BED8;
  v34 = &v26;
  v12 = _Block_copy(&aBlock);
  v13 = v29;
  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_10:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v14;
  v27 = v14;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(on_zero_shared + 2);
  aBlock = *(on_zero_shared + 1);
  if (!v15)
  {
    v31 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = std::__shared_weak_count::lock(v15);
  if (!v31)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v25 = v12;
  ice::SendMsgBaseProxy::callback();
  if (v25)
  {
    _Block_release(v25);
  }

  MEMORY[0x29C263BF0](&v26);
  MEMORY[0x29C265160](v24);
  if (__p)
  {
    shared_owners = __p[1].__shared_owners_;
    if (shared_owners)
    {
      std::__shared_weak_count::__release_weak(shared_owners);
    }

    shared_weak_owners = __p->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      dispatch_release(shared_weak_owners);
    }

    v19 = __p->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v20 = a1;
      }
    }

    operator delete(v20);
  }
}

void sub_296E08F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a27);
  radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C265160](&a17);
  std::unique_ptr<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v64 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_104;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_104;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v52 = v6;
  if (!v6)
  {
    goto LABEL_104;
  }

  if (!v2[3])
  {
    goto LABEL_102;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v7;
  v50 = v7;
  v47[3] = v7;
  v48 = v7;
  v47[1] = v7;
  v47[2] = v7;
  v47[0] = v7;
  AriSdk::ARI_CsiIceGetManifestStatusResp_SDK::ARI_CsiIceGetManifestStatusResp_SDK(v47, a2);
  memset(&v46, 170, sizeof(v46));
  *block = operator new(0x20uLL);
  *&block[8] = xmmword_296E1FAD0;
  strcpy(*block, "send Getting Manifest Status");
  checkErrorStr(v47, block, &v46);
  if ((block[23] & 0x80000000) != 0)
  {
    operator delete(*block);
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    v9 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v46.__r_.__value_.__l.__size_;
    }

    if (size)
    {
LABEL_9:
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v30 = v46.__r_.__value_.__r.__words[0];
        if (v9 >= 0)
        {
          v30 = &v46;
        }

        *block = 136315138;
        *&block[4] = v30;
        _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
        LOBYTE(v9) = *(&v46.__r_.__value_.__s + 23);
      }

      if ((v9 & 0x80u) == 0)
      {
        v11 = &v46;
      }

      else
      {
        v11 = v46.__r_.__value_.__r.__words[0];
      }

      v12 = xpc_string_create(v11);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      v13 = xpc_null_create();
      v14 = v2[1];
      if (v14)
      {
        v15 = _Block_copy(v14);
      }

      else
      {
        v15 = 0;
      }

      v21 = v2[2];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
      *&block[24] = &__block_descriptor_tmp_269;
      if (v15)
      {
        *&v58 = _Block_copy(v15);
        *(&v58 + 1) = v12;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        *&v58 = 0;
        *(&v58 + 1) = v12;
        if (v12)
        {
LABEL_32:
          xpc_retain(v12);
          *&v59 = v13;
          if (v13)
          {
LABEL_33:
            xpc_retain(v13);
LABEL_37:
            dispatch_async(v21, block);
            xpc_release(v59);
            *&v59 = 0;
            xpc_release(*(&v58 + 1));
            *(&v58 + 1) = 0;
            if (v58)
            {
              _Block_release(v58);
            }

            if (v15)
            {
              _Block_release(v15);
            }

LABEL_41:
            xpc_release(v13);
            xpc_release(v12);
            goto LABEL_99;
          }

LABEL_36:
          *&v59 = xpc_null_create();
          goto LABEL_37;
        }
      }

      *(&v58 + 1) = xpc_null_create();
      *&v59 = v13;
      if (v13)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v8 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    v9 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v46.__r_.__value_.__l.__size_;
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (AriSdk::ARI_CsiIceGetManifestStatusResp_SDK::unpack(v47))
  {
    std::string::__assign_external(&v46, "Error response from ARI or BB", 0x1DuLL);
    v17 = *(v4 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v45 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v45 = v46.__r_.__value_.__r.__words[0];
      }

      *block = 136315138;
      *&block[4] = v45;
      _os_log_error_impl(&dword_296D7D000, v17, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v46;
    }

    else
    {
      v18 = v46.__r_.__value_.__r.__words[0];
    }

    v12 = xpc_string_create(v18);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v13 = xpc_null_create();
    v19 = v2[1];
    if (v19)
    {
      v20 = _Block_copy(v19);
    }

    else
    {
      v20 = 0;
    }

    v25 = v2[2];
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 1174405120;
    *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    *&block[24] = &__block_descriptor_tmp_269;
    if (v20)
    {
      v26 = _Block_copy(v20);
    }

    else
    {
      v26 = 0;
    }

    *&v58 = v26;
    *(&v58 + 1) = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      *(&v58 + 1) = xpc_null_create();
    }

    *&v59 = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      *&v59 = xpc_null_create();
    }

    dispatch_async(v25, block);
    xpc_release(v59);
    *&v59 = 0;
    xpc_release(*(&v58 + 1));
    *(&v58 + 1) = 0;
    if (v58)
    {
      _Block_release(v58);
    }

    if (v20)
    {
      _Block_release(v20);
    }

    goto LABEL_41;
  }

  v22 = *v48;
  v60 = *(v48 + 66);
  v61 = *(v48 + 82);
  v62 = *(v48 + 98);
  v63 = *(v48 + 114);
  *block = *(v48 + 2);
  *&block[16] = *(v48 + 18);
  v58 = *(v48 + 34);
  v59 = *(v48 + 50);
  if (v22 >= 0x80)
  {
    v23 = 128;
  }

  else
  {
    v23 = v22;
  }

  if (v22)
  {
    v24 = operator new(v23);
    memcpy(v24, block, v23);
  }

  else
  {
    v24 = 0;
  }

  v27 = **(&v49 + 1);
  v28 = xpc_dictionary_create(0, 0, 0);
  if (v28 || (v28 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C266420](v28) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v28);
      v29 = v28;
    }

    else
    {
      v29 = xpc_null_create();
    }
  }

  else
  {
    v29 = xpc_null_create();
    v28 = 0;
  }

  xpc_release(v28);
  v31 = xpc_int64_create(2 * (v22 != 32));
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v29, *MEMORY[0x29EDC8BC0], v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  v33 = xpc_int64_create(v27);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v29, *MEMORY[0x29EDC8BB8], v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = xpc_data_create(v24, v23);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v29, *MEMORY[0x29EDC8BA8], v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  v37 = xpc_null_create();
  if (v29)
  {
    xpc_retain(v29);
    v38 = v29;
  }

  else
  {
    v38 = xpc_null_create();
  }

  v39 = v2[1];
  if (v39)
  {
    v40 = _Block_copy(v39);
  }

  else
  {
    v40 = 0;
  }

  v41 = v2[2];
  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 1174405120;
  v53[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
  v53[3] = &__block_descriptor_tmp_290;
  if (v40)
  {
    v42 = _Block_copy(v40);
  }

  else
  {
    v42 = 0;
  }

  aBlock = v42;
  v55 = v37;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v55 = xpc_null_create();
  }

  object = v38;
  if (v38)
  {
    xpc_retain(v38);
  }

  else
  {
    object = xpc_null_create();
  }

  dispatch_async(v41, v53);
  xpc_release(object);
  object = 0;
  xpc_release(v55);
  v55 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  xpc_release(v38);
  xpc_release(v37);
  xpc_release(v29);
  if (v24)
  {
    operator delete(v24);
  }

LABEL_99:
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  MEMORY[0x29C2652B0](v47);
  v6 = v52;
  if (v52)
  {
LABEL_102:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v43 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v43);
    }
  }

LABEL_104:
  v44 = *MEMORY[0x29EDCA608];
}