void sub_296E0988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c150_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c150_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13setRegionCodeENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEUb7_E4__30vEEN8dispatch5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v27[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = *(v2 + 40);
  v6 = std::__shared_weak_count::lock(v3);
  v25 = v6;
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  if (*v2)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[2] = v8;
    v22[3] = v8;
    v22[0] = v8;
    v22[1] = v8;
    AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK::ARI_IBISetDeviceRegionCodeRspCb_SDK(v22, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    v9 = *(v2 + 39);
    if (v9 >= 0)
    {
      v10 = *(v2 + 39);
    }

    else
    {
      v10 = *(v2 + 24);
    }

    v11 = v10 + 17;
    if (v10 + 17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = (v2 + 16);
    if (v11 < 0x17)
    {
      v27[0] = 32;
      HIBYTE(v27[0]) = v10 + 17;
      *buf = *"Set region code: ";
      v15 = v27 + 1;
      if (!v10)
      {
        goto LABEL_19;
      }
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
      *&buf[8] = v10 + 17;
      v27[0] = v13 | 0x8000000000000000;
      *buf = v14;
      v14[16] = 32;
      *v14 = *"Set region code: ";
      v15 = v14 + 17;
    }

    v16 = *v12;
    if (v9 >= 0)
    {
      v17 = (v2 + 16);
    }

    else
    {
      v17 = *v12;
    }

    memmove(v15, v17, v10);
LABEL_19:
    v15[v10] = 0;
    checkError(v22, buf, &cf);
    if (SHIBYTE(v27[0]) < 0)
    {
      operator delete(*buf);
      v18 = cf;
      if (cf)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = cf;
      if (cf)
      {
        goto LABEL_27;
      }
    }

    v19 = *(v4 + 40);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    if (*(v2 + 39) < 0)
    {
      v12 = *v12;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&dword_296D7D000, v19, OS_LOG_TYPE_DEFAULT, "#I Setting region code (%s) successful", buf, 0xCu);
    v18 = cf;
    if (!cf)
    {
LABEL_31:
      MEMORY[0x29C2653D0](v22);
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:
    CFRelease(v18);
    v7 = v25;
    MEMORY[0x29C2653D0](v22);
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_29:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_30:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296E09DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c138_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c138_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30NS6_IS9_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FAA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30NS6_IS9_EEE16__on_zero_sharedEv(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      v4 = *v2;
      v6 = std::__shared_weak_count::lock(v3);
      v16 = v6;
      if (v6)
      {
        v7 = v6;
        if (!v2[1])
        {
          goto LABEL_13;
        }

        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v14[2] = v8;
        v14[3] = v8;
        v14[0] = v8;
        v14[1] = v8;
        AriSdk::ARI_IBINetIceApStatusRspCb_SDK::ARI_IBINetIceApStatusRspCb_SDK(v14, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p = operator new(0x19uLL);
        v12 = xmmword_296E1FAA0;
        strcpy(__p, "Update AP Screen Status");
        checkError(v14, &__p, &cf);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
          v9 = cf;
          if (!cf)
          {
LABEL_9:
            v10 = *(v4 + 40);
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_12;
            }

            LOWORD(__p) = 0;
            _os_log_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEFAULT, "#I Update AP Screen Status successful", &__p, 2u);
            v9 = cf;
            if (!cf)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v9 = cf;
          if (!cf)
          {
            goto LABEL_9;
          }
        }

        CFRelease(v9);
LABEL_12:
        MEMORY[0x29C264BD0](v14);
LABEL_13:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }
    }
  }
}

void sub_296E0A0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C264BD0](&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v17 = v6;
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  if (v2[1])
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[3] = v8;
    v15[4] = v8;
    v15[1] = v8;
    v15[2] = v8;
    v15[0] = v8;
    AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::ARI_IBICallPsBreadButterModeRspCb_SDK(v15, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    v19 = 14;
    strcpy(buf, "Set Bread mode");
    checkError(v15, buf, &cf);
    if (v19 < 0)
    {
      operator delete(*buf);
      v9 = *(v4 + 40);
      v10 = v9;
      if (cf)
      {
LABEL_7:
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          if (*(v2 + 24))
          {
            v11 = "enable";
          }

          else
          {
            v11 = "disable";
          }

          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "Failed to %s Bread mode", buf, 0xCu);
        }

LABEL_18:
        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C265510](v15);
        goto LABEL_21;
      }
    }

    else
    {
      v9 = *(v4 + 40);
      v10 = v9;
      if (cf)
      {
        goto LABEL_7;
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 24))
      {
        v12 = "enabled";
      }

      else
      {
        v12 = "disabled";
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_296D7D000, v9, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Bread mode", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_21:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_23:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_296E0A478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FBA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v17 = v6;
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  if (v2[1])
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[3] = v8;
    v15[4] = v8;
    v15[1] = v8;
    v15[2] = v8;
    v15[0] = v8;
    AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::ARI_IBICallPsBreadButterModeRspCb_SDK(v15, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    v19 = 15;
    strcpy(buf, "Set Butter mode");
    checkError(v15, buf, &cf);
    if (v19 < 0)
    {
      operator delete(*buf);
      v9 = *(v4 + 40);
      v10 = v9;
      if (cf)
      {
LABEL_7:
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          if (*(v2 + 24))
          {
            v11 = "enable";
          }

          else
          {
            v11 = "disable";
          }

          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "Failed to %s Butter mode", buf, 0xCu);
        }

LABEL_18:
        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C265510](v15);
        goto LABEL_21;
      }
    }

    else
    {
      v9 = *(v4 + 40);
      v10 = v9;
      if (cf)
      {
        goto LABEL_7;
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 24))
      {
        v12 = "enabled";
      }

      else
      {
        v12 = "disabled";
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_296D7D000, v9, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Butter mode", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_21:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_23:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_296E0A7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c82_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c82_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v34 = &v1->__vftable;
  v2 = (*a1)->__vftable;
  v38[0] = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v38, v1->__shared_owners_);
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v4 = v2->~__shared_weak_count_0, (v5 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[3] = v7;
  *__p = v7;
  v35[1] = v7;
  v35[2] = v7;
  v35[0] = v7;
  AriSdk::ARI_IBIMccSettingReq_SDK::ARI_IBIMccSettingReq_SDK(v35);
  Int = ctu::cf::map_adapter::getInt(v38, *MEMORY[0x29EDC8FA0]);
  v9 = operator new(4uLL);
  *v9 = Int;
  v10 = __p[0];
  __p[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = ctu::cf::map_adapter::getInt(v38, *MEMORY[0x29EDC8B68]);
  v12 = operator new(4uLL);
  *v12 = v11;
  v13 = __p[1];
  __p[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = ctu::cf::map_adapter::getInt(v38, *MEMORY[0x29EDC8B60]);
  v15 = operator new(4uLL);
  *v15 = v14;
  v16 = v37;
  v37 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = v2[6].__on_zero_shared;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    v19 = 0;
    v20 = v1[1].__vftable;
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v19 = _Block_copy(shared_weak_owners);
  v20 = v1[1].__vftable;
  if (v20)
  {
LABEL_13:
    dispatch_retain(v20);
  }

LABEL_14:
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x38uLL);
  *&v21->__shared_owners_ = 0u;
  p_shared_owners = &v21->__shared_owners_;
  v21->__vftable = &unk_2A1E0FCA8;
  v21[1].__vftable = v19;
  v21[1].__shared_owners_ = v20;
  v21[1].__shared_weak_owners_ = v4;
  v21[2].__vftable = v6;
  *&v40 = MEMORY[0x29EDCA5F8];
  *(&v40 + 1) = 1174405120;
  *&v41 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v41 + 1) = &__block_descriptor_tmp_334;
  v42 = &v21[1];
  v43 = v21;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v45 = 0x40000000;
  v46 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v47 = &unk_29EE5BED8;
  v48 = &v40;
  v23 = _Block_copy(&aBlock);
  v24 = v43;
  if (!v43 || atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_18:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v25;
  v41 = v25;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v26 = *(v17 + 2);
  aBlock = *(v17 + 1);
  if (!v26)
  {
    v45 = 0;
LABEL_45:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v45 = std::__shared_weak_count::lock(v26);
  if (!v45)
  {
    goto LABEL_45;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v27 = v45;
  if (v45 && !atomic_fetch_add((v45 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v39 = v23;
  ice::SendMsgBaseProxy::callback();
  if (v39)
  {
    _Block_release(v39);
  }

  MEMORY[0x29C263BF0](&v40);
  MEMORY[0x29C264140](v35);
  std::__shared_weak_count::__release_weak(v6);
  MEMORY[0x29C263AC0](v38);
  if (v34)
  {
    v28 = v34[3];
    if (v28)
    {
      dispatch_release(v28);
    }

    v29 = v34[2];
    if (v29)
    {
      _Block_release(v29);
    }

    v30 = v34[1];
    if (v30)
    {
      CFRelease(v30);
    }

    operator delete(v34);
  }

  v31 = a1;
  if (a1)
  {
    v32 = a1[2];
    if (v32)
    {
      if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        v31 = a1;
      }
    }

    operator delete(v31);
  }
}

void sub_296E0AE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, void *aBlock, char a31)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a31);
  radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a11);
  MEMORY[0x29C264140](&a17);
  std::__shared_weak_count::__release_weak(v31);
  MEMORY[0x29C263AC0](&a28);
  std::unique_ptr<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
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

uint64_t radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(uint64_t a1)
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

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
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
        AriSdk::ARI_IBIMccSettingRspCb_SDK::ARI_IBIMccSettingRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        *(&block.__r_.__value_.__s + 23) = 7;
        strcpy(&block, "Set mcc");
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

        if (AriSdk::ARI_IBIMccSettingRspCb_SDK::unpack(v21))
        {
          __p = operator new(0x30uLL);
          strcpy(__p, "Failed to unpack response of setting mcc");
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
          v11 = std::string::insert(&block, 0, "Error on setting mcc response result: 0x", 0x28uLL);
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

          MEMORY[0x29C2643B0](v21);
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

void sub_296E0B318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20)
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
  MEMORY[0x29C2643B0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 96);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      v4 = *v2;
      v6 = std::__shared_weak_count::lock(v3);
      v17 = v6;
      if (v6)
      {
        v7 = v6;
        if (v2[1])
        {
          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v15[3] = v8;
          v15[4] = v8;
          v15[1] = v8;
          v15[2] = v8;
          v15[0] = v8;
          AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK::ARI_IBICallPsSignificantLocationRspCb_SDK(v15, a2);
          memset(__p, 170, sizeof(__p));
          v19 = 15;
          strcpy(buf, "Send visit info");
          checkErrorStr(v15, buf, __p);
          if (v19 < 0)
          {
            operator delete(*buf);
          }

          v9 = HIBYTE(__p[2]);
          v10 = SHIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) < 0)
          {
            v9 = __p[1];
          }

          v11 = *(v4 + 40);
          if (v9)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = __p[0];
              if (v10 >= 0)
              {
                v12 = __p;
              }

              *buf = 136315138;
              *&buf[4] = v12;
              _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to send visit info with error: %s", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_296D7D000, v11, OS_LOG_TYPE_DEFAULT, "#I Successfully sent visit info", buf, 2u);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          MEMORY[0x29C2656F0](v15);
        }

        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_296E0B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  MEMORY[0x29C2656F0](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v5 - 80);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c83_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c83_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FD28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEEUb12_E4__36vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      v4 = *v2;
      v6 = std::__shared_weak_count::lock(v3);
      v32 = v6;
      if (v6)
      {
        v7 = v6;
        if (!v2[1])
        {
LABEL_39:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          return;
        }

        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v29 = v8;
        v30 = v8;
        v28[2] = v8;
        v28[3] = v8;
        v28[0] = v8;
        v28[1] = v8;
        AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::ARI_IBIGetRFFEScanDataRspCb_SDK(v28, a2);
        memset(&v27, 170, sizeof(v27));
        block[23] = 18;
        strcpy(block, "get RFFE Scan Data");
        checkErrorStr(v28, block, &v27);
        if ((block[23] & 0x80000000) != 0)
        {
          operator delete(*block);
          size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v27.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v9 = v27.__r_.__value_.__l.__size_;
          }

          if (v9)
          {
            goto LABEL_15;
          }
        }

        if (AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::unpack(v28))
        {
          std::string::__assign_external(&v27, "Failed on getting RFFE Scan Data: could not unpack", 0x32uLL);
        }

        else
        {
          v18 = *v29;
          if (v18)
          {
            v19 = *(&v29 + 1);
            v20 = operator new(*v29);
            memmove(v20, v19, v18);
            v21 = xpc_null_create();
            v22 = xpc_data_create(v20, v18);
            if (!v22)
            {
              v22 = xpc_null_create();
            }

            v23 = v2[3];
            if (v23)
            {
              v24 = _Block_copy(v23);
            }

            else
            {
              v24 = 0;
            }

            v25 = v2[4];
            *block = MEMORY[0x29EDCA5F8];
            *&block[8] = 1174405120;
            *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
            v34 = &__block_descriptor_tmp_269;
            if (v24)
            {
              v26 = _Block_copy(v24);
            }

            else
            {
              v26 = 0;
            }

            v35 = v26;
            v36 = v21;
            if (v21)
            {
              xpc_retain(v21);
            }

            else
            {
              v36 = xpc_null_create();
            }

            v37 = v22;
            if (v22)
            {
              xpc_retain(v22);
            }

            else
            {
              v37 = xpc_null_create();
            }

            dispatch_async(v25, block);
            xpc_release(v37);
            v37 = 0;
            xpc_release(v36);
            v36 = 0;
            if (v35)
            {
              _Block_release(v35);
            }

            if (v24)
            {
              _Block_release(v24);
            }

            xpc_release(v22);
            xpc_release(v21);
            operator delete(v20);
            goto LABEL_36;
          }

          std::string::__assign_external(&v27, "Failed on getting RFFE Scan Data: wrong data size", 0x31uLL);
        }

LABEL_15:
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v27;
        }

        else
        {
          v11 = v27.__r_.__value_.__r.__words[0];
        }

        v12 = xpc_string_create(v11);
        if (!v12)
        {
          v12 = xpc_null_create();
        }

        v13 = xpc_null_create();
        v14 = v2[3];
        if (v14)
        {
          v15 = _Block_copy(v14);
        }

        else
        {
          v15 = 0;
        }

        v16 = v2[4];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v34 = &__block_descriptor_tmp_269;
        if (v15)
        {
          v35 = _Block_copy(v15);
          v36 = v12;
          if (v12)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v35 = 0;
          v36 = v12;
          if (v12)
          {
LABEL_25:
            xpc_retain(v12);
            v37 = v13;
            if (v13)
            {
LABEL_26:
              xpc_retain(v13);
LABEL_30:
              dispatch_async(v16, block);
              xpc_release(v37);
              v37 = 0;
              xpc_release(v36);
              v36 = 0;
              if (v35)
              {
                _Block_release(v35);
              }

              if (v15)
              {
                _Block_release(v15);
              }

              xpc_release(v13);
              xpc_release(v12);
              v17 = *(v4 + 40);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *block = 0;
                _os_log_error_impl(&dword_296D7D000, v17, OS_LOG_TYPE_ERROR, "Failed to get RFFE Scan Data", block, 2u);
              }

LABEL_36:
              if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v27.__r_.__value_.__l.__data_);
              }

              MEMORY[0x29C264E20](v28);
              goto LABEL_39;
            }

LABEL_29:
            v37 = xpc_null_create();
            goto LABEL_30;
          }
        }

        v36 = xpc_null_create();
        v37 = v13;
        if (v13)
        {
          goto LABEL_26;
        }

        goto LABEL_29;
      }
    }
  }
}

void sub_296E0BCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C264E20](&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void sub_296E0BD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c140_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c140_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36NS_9allocatorISA_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FDA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36NS_9allocatorISA_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void Timestamp::Timestamp(Timestamp *this)
{
  v15 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v12 = 0uLL;
  if ((gettimeofday(&v12, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v10 = __error();
  v11 = strerror(*v10);
  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_296D7D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v12;
  v9 = *MEMORY[0x29EDCA608];
}

void *Timestamp::Timestamp(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v7 = *(v5 + 8);
      v9 = *a1;
      v8 = a1[1];
      v10 = v3;
      if (*a1 != v3)
      {
        v11 = a1[1];
        v12 = v3;
        if (v8)
        {
          do
          {
            v10 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v10 = v12[2];
            v13 = *v10 == v12;
            v12 = v10;
          }

          while (v13);
        }

        if (*(v10 + 8) >= v7)
        {
          break;
        }
      }

      if (v8)
      {
        v14 = v10;
      }

      else
      {
        v14 = v3;
      }

      if (v8)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = v3;
      }

      if (!*v15)
      {
        goto LABEL_25;
      }

LABEL_28:
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v13 = *v21 == v5;
          v5 = v21;
        }

        while (!v13);
      }

      v5 = v21;
      if (v21 == v4)
      {
        return a1;
      }
    }

    v15 = v3;
    v14 = v3;
    if (v8)
    {
      v16 = a1[1];
      while (1)
      {
        while (1)
        {
          v14 = v16;
          v17 = *(v16 + 32);
          if (v17 <= v7)
          {
            break;
          }

          v16 = *v14;
          v15 = v14;
          if (!*v14)
          {
            goto LABEL_25;
          }
        }

        if (v17 >= v7)
        {
          goto LABEL_28;
        }

        v16 = v14[1];
        if (!v16)
        {
          v15 = v14 + 1;
          break;
        }
      }
    }

LABEL_25:
    v18 = operator new(0x38uLL);
    v19 = *(v5 + 2);
    v18[6] = v5[6];
    *(v18 + 2) = v19;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v14;
    *v15 = v18;
    if (*v9)
    {
      *a1 = *v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v18);
    ++a1[2];
    goto LABEL_28;
  }

  return a1;
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t **a1, __n128 *a2, int a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = *(v8 + 1);
      if (!v6)
      {
        v7 = v8 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 40) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v28 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v23 + 1) = 0xAAAAAAAA00000000;
  memset(&v24, 0, sizeof(v24));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v24))
  {
    v24.tm_isdst = -1;
    *&v23 = mktime(&v24);
    if (v23 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136315138;
      v27 = v20;
      _os_log_error_impl(&dword_296D7D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v27 = v9;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v23 = 0uLL;
  if (gettimeofday(&v23, 0) < 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315138;
    v27 = v22;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 32);
        if (v14 <= a4)
        {
          break;
        }

        v12 = *v13;
        v7 = v13;
        if (!*v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= a4)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v7 = v13 + 1;
        goto LABEL_22;
      }
    }

    *(v13 + 5) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v15 = operator new(0x38uLL);
    *(v15 + 8) = a4;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v13;
    *v7 = v15;
    v16 = **a1;
    if (v16)
    {
      *a1 = v16;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[2] = (a1[2] + 1);
    *(v15 + 40) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296E0C874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v69 = *MEMORY[0x29EDCA608];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63 = v6;
  v62 = v6;
  v61 = v6;
  v60 = v6;
  v59 = v6;
  v58 = v6;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v55 = v6;
  v54 = v6;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v51 = v6;
  __p = v6;
  v49 = v6;
  v48 = v6;
  v47 = v6;
  v46 = v6;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v57 = 0;
  v7 = MEMORY[0x29EDC9590] + 104;
  v53 = MEMORY[0x29EDC9590] + 104;
  v8 = MEMORY[0x29EDC9590] + 64;
  v45 = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v43 = *(MEMORY[0x29EDC9528] + 16);
  *(&v43 + *(v43 - 24)) = v10;
  v44 = 0;
  v11 = (&v43 + *(v43 - 24));
  std::ios_base::init(v11, &v46);
  v12 = MEMORY[0x29EDC9590] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v9[5];
  v45 = v9[4];
  *(&v45 + *(v45 - 24)) = v13;
  v43 = v9[1];
  *(&v43 + *(v43 - 24)) = v9[6];
  v53 = v7;
  v43 = v12;
  v14 = MEMORY[0x29EDC9568] + 16;
  v45 = v8;
  *&v46 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C265EC0](&v46 + 8);
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v15 = MEMORY[0x29EDC9570] + 16;
  *&v46 = MEMORY[0x29EDC9570] + 16;
  __p = 0u;
  v51 = 0u;
  LODWORD(v52) = 24;
  v16 = v9;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v46);
  v19 = *(a1 + 8);
  v18 = a1 + 8;
  v17 = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v18;
  do
  {
    if (*(v17 + 32) >= a2)
    {
      v20 = v17;
    }

    v17 = *(v17 + 8 * (*(v17 + 32) < a2));
  }

  while (v17);
  if (v20 == v18)
  {
LABEL_10:
    v22 = 0;
    v23 = 0;
    v21 = a4;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = a4;
    if (*(v20 + 32) > a2)
    {
      v22 = 0;
      v23 = 0;
      if ((a3 & 0x11) == 0)
      {
        goto LABEL_19;
      }

LABEL_11:
      v41.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v42 = v23;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v41.tm_mon = v24;
      *&v41.tm_isdst = v24;
      *&v41.tm_sec = v24;
      localtime_r(&v42, &v41);
      v67 = 0u;
      v68 = 0u;
      *__s = 0u;
      v66 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v25 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v25 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v25, &v41);
      v26 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, __s, v26);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "-", 1);
        v27 = v45;
        v28 = &v45 + *(v45 - 24);
        if (*(v28 + 36) == -1)
        {
          std::ios_base::getloc((&v45 + *(v45 - 24)));
          v29 = std::locale::use_facet(&v64, MEMORY[0x29EDC93D0]);
          (v29->__vftable[2].~facet_0)(v29, 32);
          std::locale::~locale(&v64);
          v27 = v45;
        }

        *(v28 + 36) = 48;
        *(&v47 + *(v27 - 24)) = 3;
        MEMORY[0x29C265D60](&v45, (v22 / 1000));
      }

      goto LABEL_24;
    }

    v23 = *(v20 + 40);
    v22 = *(v20 + 48);
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_19:
  MEMORY[0x29C265D70](&v45, v23);
  if ((a3 & 4) != 0)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_24;
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, ".", 1);
    v22 = (v22 / 1000);
  }

  MEMORY[0x29C265D60](v30, v22);
LABEL_24:
  if ((v52 & 0x10) != 0)
  {
    v32 = *(&v51 + 1);
    if (*(&v51 + 1) < v49)
    {
      *(&v51 + 1) = v49;
      v32 = v49;
    }

    v33 = *(&v48 + 1);
    v31 = v32 - *(&v48 + 1);
    if ((v32 - *(&v48 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if ((v52 & 8) == 0)
    {
      v31 = 0;
      v21[23] = 0;
      goto LABEL_38;
    }

    v33 = v47;
    v31 = v48 - v47;
    if (v48 - v47 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_42:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v35 = operator new(v34);
    *(v21 + 1) = v31;
    *(v21 + 2) = v34 | 0x8000000000000000;
    *v21 = v35;
    v21 = v35;
    goto LABEL_37;
  }

  v21[23] = v31;
  if (v31)
  {
LABEL_37:
    memmove(v21, v33, v31);
  }

LABEL_38:
  v21[v31] = 0;
  v43 = *v16;
  v36 = v16[9];
  *(&v43 + *(v43 - 24)) = v16[8];
  v45 = v36;
  *&v46 = v15;
  if (SBYTE7(v51) < 0)
  {
    operator delete(__p);
  }

  *&v46 = v14;
  std::locale::~locale(&v46 + 1);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C265F10](&v53);
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296E0D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  MEMORY[0x29C265F10](a12);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v8, v1);
  return v5;
}

void sub_296E0D1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
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

  return std::iostream::~basic_iostream();
}

double trace::ARICommandDriverINT::create@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0xF0uLL);
  trace::ARICommandDriverINT::ARICommandDriverINT(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<trace::ARICommandDriverINT>::shared_ptr[abi:ne200100]<trace::ARICommandDriverINT,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1},0>(&v5, v3);
  (*(*v5 + 216))(v5);
  result = *&v5;
  *a1 = v5;
  return result;
}

trace::ARICommandDriverINT *trace::ARICommandDriverINT::ARICommandDriverINT(trace::ARICommandDriverINT *this)
{
  *this = &unk_2A1E0AC98;
  v2 = (this + 8);
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony.abm", "trace.drv");
  ctu::SharedLoggable<trace::CommandDriver,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v2, "trace.drv", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v7);
  *this = &unk_2A1E0FDF8;
  v3 = *(this + 3);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  *(this + 9) = 850045863;
  *(this + 64) = 0;
  *(this + 17) = 1018212795;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A1E10010;
  *(this + 24) = v4;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  return this;
}

void sub_296E0D668(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 + 48);
  ctu::SharedLoggable<CellularCertCommandDriver,ctu::OsLogLogger>::~SharedLoggable(v2);
  _Unwind_Resume(a1);
}

void sub_296E0D694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  ctu::SharedLoggable<CellularCertCommandDriver,ctu::OsLogLogger>::~SharedLoggable(v10);
  _Unwind_Resume(a1);
}

void sub_296E0D6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void trace::ARICommandDriverINT::~ARICommandDriverINT(trace::ARICommandDriverINT *this)
{
  *this = &unk_2A1E0FDF8;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v13, 2u);
  }

  v4 = *(this + 29);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 27);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 26);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 25);
  if (v8 && !atomic_fetch_add(v8 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v8 + 16))(v8);
  }

  std::promise<BOOL>::~promise(this + 24);
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
  v9 = *(this + 7);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  MEMORY[0x29C263A00](v2);
  v10 = *(this + 4);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

{
  trace::ARICommandDriverINT::~ARICommandDriverINT(this);

  operator delete(v1);
}

void trace::ARICommandDriverINT::init(trace::ARICommandDriverINT *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_9_1;
  v1[4] = this;
  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t ___ZN5trace19ARICommandDriverINT4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(v1 + 48);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_1;
  v11[3] = &__block_descriptor_tmp_10;
  v11[4] = v1;
  *buf = v11;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v3, 0, buf);
  v4 = *(v1 + 48);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_2;
  v10[3] = &__block_descriptor_tmp_3_0;
  v10[4] = v1;
  *buf = v10;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v4, 1, buf);
  v5 = *(v1 + 48);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_4;
  v9[3] = &__block_descriptor_tmp_6_0;
  v9[4] = v1;
  *buf = v9;
  ice::Client::setEventHandler<void({block_pointer})(dispatch::group_session)>(v5, 2, buf);
  v6 = *(v1 + 48);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_7;
  v8[3] = &__block_descriptor_tmp_8_2;
  v8[4] = v1;
  *buf = v8;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v6, 3, buf);
  result = ice::Client::start(*(v1 + 48));
  *(v1 + 64) = 1;
  return result;
}

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_1(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEFAULT, "#I ARI Started event received.", v2, 2u);
  }
}

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEFAULT, "#I ARI Stopped event received.", v2, 2u);
  }
}

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_4(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Enter event received", v9, 2u);
  }

  v5 = v3[26];
  if (v5 && v3[27])
  {
    v6 = *a2;
    if (v6 && (dispatch_retain(v6), dispatch_group_enter(v6), (v5 = v3[26]) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = _Block_copy(v5);
    }

    v8 = v3[27];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEclIJS1_EEEvDpT__block_invoke_1;
    v9[3] = &__block_descriptor_tmp_41_1;
    if (v7)
    {
      aBlock = _Block_copy(v7);
      group = v6;
      if (!v6)
      {
LABEL_15:
        dispatch_async(v8, v9);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v7)
        {
          _Block_release(v7);
        }

        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
        }

        return;
      }
    }

    else
    {
      aBlock = 0;
      group = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    dispatch_retain(v6);
    if (group)
    {
      dispatch_group_enter(group);
    }

    goto LABEL_15;
  }
}

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Exit event received", v8, 2u);
  }

  v3 = v1[28];
  if (v3 && v1[29])
  {
    v4 = _Block_copy(v3);
    v5 = v4;
    v6 = v1[29];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke_1;
    v8[3] = &__block_descriptor_tmp_43_0;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
LABEL_10:
        if (v5)
        {
          _Block_release(v5);
        }

        return;
      }
    }

    else
    {
      aBlock = 0;
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
        goto LABEL_10;
      }
    }

    _Block_release(v7);
    goto LABEL_10;
  }
}

void trace::ARICommandDriverINT::sendFlushRequest(trace::ARICommandDriverINT *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Sending flush request", buf, 2u);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48 = v3;
  v49 = v3;
  *buf = v3;
  v47 = v3;
  AriSdk::ARI_TraceFlushReq_SDK::ARI_TraceFlushReq_SDK(buf);
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = operator new(0x90uLL);
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 850045863;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  *(v9 + 11) = 1018212795;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 124) = 0u;
  *v9 = &unk_2A1E10010;
  aBlock[0].__ptr_ = 0;
  __lk.__m_ = *(this + 24);
  *(this + 24) = v9;
  std::promise<BOOL>::~promise(&__lk);
  std::promise<BOOL>::~promise(aBlock);
  v10 = *(this + 24);
  if (!v10)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::mutex::lock((v10 + 24));
  v11 = *(v10 + 136);
  if ((v11 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  *(v10 + 136) = v11 | 2;
  std::mutex::unlock((v10 + 24));
  v12 = *(this + 25);
  *(this + 25) = v10;
  if (v12 && !atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  v13 = *(this + 2);
  if (!v13 || (v14 = *(this + 6), v15 = *(this + 1), (v16 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = operator new(0x30uLL);
  v18->__shared_owners_ = 0;
  p_shared_owners = &v18->__shared_owners_;
  v18->__shared_weak_owners_ = 0;
  v18[1].__vftable = v15;
  v18->__vftable = &unk_2A1E100E8;
  v18[1].__shared_owners_ = v17;
  v18[1].__shared_weak_owners_ = this;
  __lk.__m_ = MEMORY[0x29EDCA5F8];
  *&__lk.__owns_ = 1174405120;
  v52 = ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v53 = &__block_descriptor_tmp_48_1;
  v54 = v18 + 1;
  v55 = v18;
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0].__ptr_ = MEMORY[0x29EDCA5F8];
  aBlock[1].__ptr_ = 0x40000000;
  aBlock[2].__ptr_ = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3].__ptr_ = &unk_29EE5BFA0;
  aBlock[4].__ptr_ = &__lk;
  v20 = _Block_copy(aBlock);
  v21 = v55;
  if (!v55 || atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_21:
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_22:
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[0] = v22;
  v44[1] = v22;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v23 = *(v14 + 16);
  __lk.__m_ = *(v14 + 8);
  if (!v23)
  {
    *&__lk.__owns_ = 0;
LABEL_81:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&__lk.__owns_ = std::__shared_weak_count::lock(v23);
  if (!*&__lk.__owns_)
  {
    goto LABEL_81;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v24 = *&__lk.__owns_;
  if (*&__lk.__owns_ && !atomic_fetch_add((*&__lk.__owns_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  aBlock[0].__ptr_ = v20;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0].__ptr_)
  {
    _Block_release(aBlock[0].__ptr_);
  }

  MEMORY[0x29C263BF0](v44);
  v25 = *(this + 25);
  v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  m = (v25 + 24);
  __lk.__m_ = (v25 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v25 + 24));
  v28 = *(v25 + 136);
  if ((v28 & 8) != 0)
  {
    v30 = 2;
    goto LABEL_56;
  }

  if ((v28 & 4) != 0)
  {
    v30 = 0;
    goto LABEL_56;
  }

  v29 = v26.__d_.__rep_ + 5000000000;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v29)
  {
    if (v29 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_36;
    }

    v33.__d_.__rep_ = v29 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v33.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v34.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v34.__d_.__rep_)
      {
        v35 = 0;
        goto LABEL_49;
      }

      if (v34.__d_.__rep_ < 1)
      {
        if (v34.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v31.__d_.__rep_ = v33.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_34;
        }
      }

      else if (v34.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v33.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_49:
          v31.__d_.__rep_ = v35 + v33.__d_.__rep_;
          goto LABEL_34;
        }

LABEL_33:
        v31.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_34:
        std::condition_variable::__do_timed_wait((v25 + 88), &__lk, v31);
        std::chrono::steady_clock::now();
        goto LABEL_35;
      }

      v35 = 1000 * v34.__d_.__rep_;
      if (1000 * v34.__d_.__rep_ <= (v33.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_49;
      }

      goto LABEL_33;
    }

LABEL_35:
    std::chrono::steady_clock::now();
LABEL_36:
    v32 = *(v25 + 136);
    if ((v32 & 4) != 0)
    {
      goto LABEL_54;
    }
  }

  v32 = *(v25 + 136);
LABEL_54:
  v30 = ((v32 >> 2) & 1) == 0;
  if (__lk.__owns_)
  {
    m = __lk.__m_;
LABEL_56:
    std::mutex::unlock(m);
  }

  if (v30 == 1)
  {
    v40 = *(this + 5);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    LOWORD(__lk.__m_) = 0;
    v42 = "Timeout while waiting for trace flush indication";
LABEL_69:
    _os_log_error_impl(&dword_296D7D000, v40, OS_LOG_TYPE_ERROR, v42, &__lk, 2u);
    goto LABEL_75;
  }

  if (v30)
  {
    v40 = *(this + 5);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    LOWORD(__lk.__m_) = 0;
    v42 = "Unexpected status while waiting for trace flush indication";
    goto LABEL_69;
  }

  v36 = *(this + 25);
  *(this + 25) = 0;
  __lk.__m_ = (v36 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v36 + 24));
  std::__assoc_sub_state::__sub_wait(v36, &__lk);
  v37 = *(v36 + 16);
  aBlock[0].__ptr_ = 0;
  std::exception_ptr::~exception_ptr(aBlock);
  if (v37)
  {
    v43.__ptr_ = std::exception_ptr::exception_ptr(v38, (v36 + 16));
    std::rethrow_exception(v43);
    __break(1u);
  }

  else
  {
    v39 = *(v36 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
      if (!atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_62;
      }

LABEL_71:
      v40 = *(this + 5);
      v41 = v40;
      if (v39)
      {
        goto LABEL_72;
      }

LABEL_63:
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__lk.__m_) = 0;
        v42 = "Error while receiving trace flush indication";
        goto LABEL_69;
      }
    }

    else
    {
      if (atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_71;
      }

LABEL_62:
      (*(*v36 + 16))(v36);
      v40 = *(this + 5);
      v41 = v40;
      if (!v39)
      {
        goto LABEL_63;
      }

LABEL_72:
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__lk.__m_) = 0;
        _os_log_impl(&dword_296D7D000, v40, OS_LOG_TYPE_DEFAULT, "#I Trace flush indication received successfully", &__lk, 2u);
      }

      __lk.__m_ = 1000000000;
      std::this_thread::sleep_for (&__lk);
    }

LABEL_75:
    std::__shared_weak_count::__release_weak(v8);
    MEMORY[0x29C263EB0](buf);
  }
}

void sub_296E0E600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::mutex *a25, char a26)
{
  std::__shared_weak_count::__release_weak(v26);
  MEMORY[0x29C263EB0](&a15);
  _Unwind_Resume(a1);
}

uint64_t trace::ARICommandDriverINT::sendConfig(uint64_t a1, char **a2, void *a3, int a4, int a5, int a6, uint64_t a7)
{
  v97 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 16);
  if (!v8 || (v77 = *(a1 + 8), (v15 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v16);
  }

  v74 = a7;
  v84 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__dst = v17;
  *v83 = v17;
  v80[3] = v17;
  *__p = v17;
  v80[1] = v17;
  v80[2] = v17;
  v80[0] = v17;
  AriSdk::ARI_TraceSetConfigReq_SDK::ARI_TraceSetConfigReq_SDK(v80);
  v18 = a4;
  v75 = a6;
  v76 = a5;
  v20 = *a2;
  v19 = a2[1];
  v21 = operator new(4uLL);
  v22 = v19 - v20;
  *v21 = v19 - v20;
  v23 = __p[0];
  __p[0] = v21;
  v73 = a3;
  if (v23)
  {
    operator delete(v23);
    v20 = *a2;
    v19 = a2[1];
    v22 = v19 - *a2;
  }

  if (v22 < 0xF01)
  {
    if (&__p[1] == a2)
    {
      goto LABEL_36;
    }

    v29 = __dst[1];
    v30 = __p[1];
    if (__dst[1] - __p[1] >= v22)
    {
      v34 = __dst[0];
      v35 = __dst[0] - __p[1];
      if (__dst[0] - __p[1] < v22)
      {
        v36 = &v20[v35];
        if (__dst[0] != __p[1])
        {
          memmove(__p[1], v20, v35);
          v34 = __dst[0];
        }

        if (v36 != v19)
        {
          memmove(v34, v36, v19 - v36);
        }

        v37 = &v34[v19 - v36];
        goto LABEL_35;
      }

      if (v19 != v20)
      {
        memmove(__p[1], v20, v22);
      }
    }

    else
    {
      if (__p[1])
      {
        __dst[0] = __p[1];
        operator delete(__p[1]);
        v29 = 0;
        __p[1] = 0;
        __dst[0] = 0;
        __dst[1] = 0;
      }

      v31 = 2 * v29;
      if (2 * v29 <= v22)
      {
        v31 = v22;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      v33 = operator new(v32);
      v30 = v33;
      __p[1] = v33;
      __dst[0] = v33;
      __dst[1] = &v33[v32];
      if (v19 != v20)
      {
        memcpy(v33, v20, v22);
      }
    }

    v37 = &v30[v22];
LABEL_35:
    __dst[0] = v37;
    goto LABEL_36;
  }

  LogLevels = Ari::GetLogLevels(v21);
  if ((LogLevels & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v26);
      v71 = SHIBYTE(v87) >= 0 ? buf : *buf;
      v72 = (a2[1] - *a2);
      *__lk = 136316418;
      *&__lk[4] = "ari";
      *&__lk[12] = 2080;
      *&__lk[14] = v71;
      *&__lk[22] = 1024;
      LODWORD(v93) = 349;
      WORD2(v93) = 2048;
      *(&v93 + 6) = &__p[1];
      HIWORD(v93) = 2048;
      v94 = v72;
      LOWORD(v95) = 2048;
      *(&v95 + 2) = 3840;
      _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%d) max(%d)", __lk, 0x3Au);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(*buf);
      }
    }

    AriOsa::LogSrcInfo(__lk, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v26);
    if (__lk[23] >= 0)
    {
      v28 = __lk;
    }

    else
    {
      v28 = *__lk;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%d) max(%d)", v27, v28, 349, &__p[1], a2[1] - *a2, 3840);
    if ((__lk[23] & 0x80000000) != 0)
    {
      operator delete(*__lk);
    }
  }

LABEL_36:
  v38 = operator new(1uLL);
  *v38 = v18;
  v39 = v83[0];
  v83[0] = v38;
  if (v39)
  {
    operator delete(v39);
  }

  v40 = operator new(1uLL);
  *v40 = a5;
  v41 = v83[1];
  v83[1] = v40;
  if (v41)
  {
    operator delete(v41);
  }

  v42 = operator new(4uLL);
  *v42 = v75;
  v43 = v84;
  v84 = v42;
  if (v43)
  {
    operator delete(v43);
  }

  v44 = *(a1 + 40);
  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    if (!a5)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  *__lk = 67109632;
  *&__lk[4] = v18;
  *&__lk[8] = 1024;
  *&__lk[10] = a5;
  *&__lk[14] = 1024;
  *&__lk[16] = v75;
  _os_log_debug_impl(&dword_296D7D000, v44, OS_LOG_TYPE_DEBUG, "#D Background tracing: %d, wait for idle indication: %d, privacy level: %d", __lk, 0x14u);
  if (a5)
  {
LABEL_44:
    *(a1 + 184) = 0;
  }

LABEL_45:
  v45 = *(a1 + 48);
  *__lk = v77;
  *&__lk[8] = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&__lk[16] = a1;
  v93 = 0uLL;
  v94 = 0;
  v47 = *a2;
  v46 = a2[1];
  v48 = v46 - *a2;
  if (v46 == *a2)
  {
    v50 = 0;
    v49 = 0;
    *&v95 = *v73;
    v51 = v95;
    if (v95)
    {
LABEL_48:
      dispatch_retain(v51);
    }
  }

  else
  {
    if ((v48 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v49 = operator new(v46 - *a2);
    v50 = v49 + v48;
    *&v93 = v49;
    v94 = v49 + v48;
    memcpy(v49, v47, v48);
    *(&v93 + 1) = v49 + v48;
    *&v95 = *v73;
    v51 = v95;
    if (v95)
    {
      goto LABEL_48;
    }
  }

  if (!*v74)
  {
    v52 = 0;
    v53 = *(v74 + 8);
    *(&v95 + 1) = 0;
    v96 = v53;
    if (!v53)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v52 = _Block_copy(*v74);
  v53 = *(v74 + 8);
  *(&v95 + 1) = v52;
  v96 = v53;
  if (v53)
  {
LABEL_51:
    dispatch_retain(v53);
  }

LABEL_52:
  v54 = operator new(0x60uLL);
  v54->__shared_owners_ = 0;
  p_shared_owners = &v54->__shared_owners_;
  v54->__shared_weak_owners_ = 0;
  v54->__vftable = &unk_2A1E10168;
  v54[1].__vftable = v77;
  *__lk = 0;
  *&__lk[8] = 0;
  v54[1].__shared_owners_ = v16;
  v54[1].__shared_weak_owners_ = a1;
  v54[2].__vftable = v49;
  v54[2].__shared_owners_ = v50;
  v94 = 0;
  v93 = 0uLL;
  v54[2].__shared_weak_owners_ = v50;
  v54[3].__vftable = v51;
  v95 = 0uLL;
  v54[3].__shared_owners_ = v52;
  v54[3].__shared_weak_owners_ = v53;
  v96 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v86 = 1174405120;
  v87 = ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT10sendConfigENSt3__16vectorIcNS4_9allocatorIcEEEEN8dispatch5groupEbbiNS9_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS9_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
  v88 = &__block_descriptor_tmp_57_3;
  v89 = v54 + 1;
  v90 = v54;
  atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = buf;
  v56 = _Block_copy(aBlock);
  v57 = v90;
  if (!v90 || atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  (v57->__on_zero_shared)(v57);
  std::__shared_weak_count::__release_weak(v57);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_55:
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

LABEL_56:
  *&v58 = 0xAAAAAAAAAAAAAAAALL;
  *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v78[0] = v58;
  v78[1] = v58;
  v79 = 0xAAAAAAAAAAAAAAAALL;
  v59 = *(v45 + 16);
  *buf = *(v45 + 8);
  if (!v59)
  {
    v86 = 0;
LABEL_119:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v86 = std::__shared_weak_count::lock(v59);
  if (!v86)
  {
    goto LABEL_119;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v60 = v86;
  if (v86 && !atomic_fetch_add((v86 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  aBlock[0] = v56;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v78);
  if (v96)
  {
    dispatch_release(v96);
  }

  if (*(&v95 + 1))
  {
    _Block_release(*(&v95 + 1));
  }

  if (v95)
  {
    dispatch_release(v95);
  }

  if (v93)
  {
    operator delete(v93);
  }

  if (*&__lk[8])
  {
    std::__shared_weak_count::__release_weak(*&__lk[8]);
  }

  if (!v76)
  {
    v66 = 1;
    goto LABEL_105;
  }

  *__lk = a1 + 72;
  *&__lk[8] = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((a1 + 72));
  v61.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 3000000000;
  do
  {
    if (*(a1 + 184))
    {
      goto LABEL_97;
    }

    if (v61.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v63.__d_.__rep_ = v61.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v63.__d_.__rep_ < 1)
    {
      continue;
    }

    std::chrono::steady_clock::now();
    v64.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v64.__d_.__rep_)
    {
      v65 = 0;
LABEL_90:
      v62.__d_.__rep_ = v65 + v63.__d_.__rep_;
      goto LABEL_76;
    }

    if (v64.__d_.__rep_ < 1)
    {
      if (v64.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v62.__d_.__rep_ = v63.__d_.__rep_ + 0x8000000000000000;
        goto LABEL_76;
      }

LABEL_89:
      v65 = 1000 * v64.__d_.__rep_;
      if (1000 * v64.__d_.__rep_ <= (v63.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_90;
      }

      goto LABEL_75;
    }

    if (v64.__d_.__rep_ <= 0x20C49BA5E353F7)
    {
      goto LABEL_89;
    }

    v65 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v63.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_90;
    }

LABEL_75:
    v62.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_76:
    std::condition_variable::__do_timed_wait((a1 + 136), __lk, v62);
    std::chrono::steady_clock::now();
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v61.__d_.__rep_);
  if (*(a1 + 184) != 1)
  {
    v68 = *(a1 + 40);
    if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v66 = 0;
      if (__lk[8] != 1)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    *buf = 0;
    _os_log_error_impl(&dword_296D7D000, v68, OS_LOG_TYPE_ERROR, "Error while waiting for trace output idle indication", buf, 2u);
    v66 = 0;
    if (__lk[8] != 1)
    {
      goto LABEL_105;
    }

LABEL_104:
    std::mutex::unlock(*__lk);
    goto LABEL_105;
  }

LABEL_97:
  v67 = *(a1 + 40);
  if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    v66 = 1;
    if (__lk[8] != 1)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  *buf = 0;
  _os_log_debug_impl(&dword_296D7D000, v67, OS_LOG_TYPE_DEBUG, "#D Trace output idle indication received successfully", buf, 2u);
  v66 = 1;
  if (__lk[8] == 1)
  {
    goto LABEL_104;
  }

LABEL_105:
  MEMORY[0x29C264240](v80);
  std::__shared_weak_count::__release_weak(v16);
  v69 = *MEMORY[0x29EDCA608];
  return v66;
}

void sub_296E0F170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (*(v18 - 153) < 0)
  {
    operator delete(*(v18 - 176));
  }

  MEMORY[0x29C264240](va);
  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

void *trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

uint64_t trace::ARICommandDriverINT::isStarted(trace::ARICommandDriverINT *this)
{
  v5 = 0;
  v4[0] = &v5;
  v4[1] = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNKS1_19ARICommandDriverINT9isStartedEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_62;
  block[4] = this + 8;
  block[5] = v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  return v5;
}

void trace::ARICommandDriverINT::start(trace::ARICommandDriverINT *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNS1_19ARICommandDriverINT5startEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_63;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void trace::ARICommandDriverINT::stop(trace::ARICommandDriverINT *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
    v5 = a2->gr_name;
    if (a2->gr_name)
    {
      dispatch_retain(a2->gr_name);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 2);
  if (!v6 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = this;
  v10[1] = v5;
  v11 = *(this + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>(trace::ARICommandDriverINT::stop(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,dispatch_queue_s *::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!gr_name)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!gr_name)
    {
      return;
    }
  }

  dispatch_group_leave(gr_name);

  dispatch_release(gr_name);
}

void trace::ARICommandDriverINT::setLPMEnterAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_10_3;
  v8[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke_0;
  block[3] = &__block_descriptor_tmp_66;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 208);
  *(v3 + 208) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 216);
  *(v3 + 216) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  if (*(v3 + 208) && *(v3 + 216))
  {
    v7 = *(v3 + 48);
    v8 = operator new(0x20uLL);
    v8->__shared_owners_ = 0;
    p_shared_owners = &v8->__shared_owners_;
    v8->__shared_weak_owners_ = 0;
    v8->__vftable = &unk_2A1E10218;
    v8[1].__vftable = v3;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 1174405120;
    v12[2] = ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS4_13group_sessionEEEEEUb_E3__6vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
    v12[3] = &__block_descriptor_tmp_64_2;
    v12[4] = &v8[1];
    v13 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
    aBlock[3] = &unk_29EE5BFA0;
    aBlock[4] = v12;
    v10 = _Block_copy(aBlock);
    v11 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_15;
      }
    }

    else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_15:
      v12[0] = v10;
      ice::Client::regIndicationInternal();
      if (v12[0])
      {
        _Block_release(v12[0]);
      }

      ice::Client::setIndShouldWake(*(v3 + 48));
      return;
    }

    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    goto LABEL_15;
  }
}

void sub_296E0F894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void trace::ARICommandDriverINT::setLPMExitAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace19ARICommandDriverINT16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_11_2;
  v8[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke_0;
  block[3] = &__block_descriptor_tmp_66;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace19ARICommandDriverINT16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 224);
  *(v3 + 224) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 232);
  *(v3 + 232) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

uint64_t trace::ARICommandDriverINT::registerForTraceFlushCompletion(trace::ARICommandDriverINT *this)
{
  v2 = *(this + 6);
  v3 = operator new(0x20uLL);
  v3->__shared_owners_ = 0;
  p_shared_owners = &v3->__shared_owners_;
  v3->__shared_weak_owners_ = 0;
  v3->__vftable = &unk_2A1E10298;
  v3[1].__vftable = this;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v8[3] = &__block_descriptor_tmp_67_2;
  v8[4] = &v3[1];
  v9 = v3;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = v8;
  v5 = _Block_copy(aBlock);
  v6 = v9;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_4:
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_5:
  v8[0] = v5;
  ice::Client::regIndicationInternal();
  if (v8[0])
  {
    _Block_release(v8[0]);
  }

  return ice::Client::setIndShouldWake(*(this + 6));
}

void sub_296E0FC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void trace::ARICommandDriverINT::setAnomalyDetectionLevel(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_12_2;
  v19 = a2;
  v15[4] = a1;
  v15[5] = v7;
  v16 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v13 = *a3;
  if (*a3)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a3 + 8);
  aBlock = v13;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v15);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v3;
  v25[3] = v3;
  v25[0] = v3;
  v25[1] = v3;
  AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK(v25);
  v4 = *(a1 + 72);
  v5 = operator new(4uLL);
  *v5 = v4;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(v2 + 48);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = _Block_copy(v10);
    v12 = *(a1 + 64);
    v21 = v11;
    object = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v12 = *(a1 + 64);
  v21 = 0;
  object = v12;
  if (v12)
  {
LABEL_7:
    dispatch_retain(v12);
  }

LABEL_8:
  v13 = operator new(0x40uLL);
  v13->__shared_owners_ = 0;
  p_shared_owners = &v13->__shared_owners_;
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A1E10318;
  v13[1].__vftable = v9;
  v13[1].__shared_owners_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    v13[1].__shared_weak_owners_ = 0;
    v13[2].__vftable = v12;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13[1].__shared_weak_owners_ = _Block_copy(v11);
  v13[2].__vftable = v12;
  if (v12)
  {
LABEL_12:
    dispatch_retain(v12);
  }

LABEL_13:
  v13[2].__shared_owners_ = v2;
  v27 = MEMORY[0x29EDCA5F8];
  v28 = 1174405120;
  v29 = ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS2_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v30 = &__block_descriptor_tmp_69_1;
  v31 = v13 + 1;
  v32 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = &v27;
  v15 = _Block_copy(aBlock);
  v16 = v32;
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_17:
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v17;
  v23[1] = v17;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *(v7 + 16);
  v27 = *(v7 + 8);
  if (!v18)
  {
    v28 = 0;
LABEL_38:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = std::__shared_weak_count::lock(v18);
  if (!v28)
  {
    goto LABEL_38;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v28;
  if (v28 && !atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  aBlock[0] = v15;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v23);
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return MEMORY[0x29C265890](v25);
}

void sub_296E10168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v4 = *(v2 - 120);
  if (v4)
  {
    _Block_release(v4);
  }

  MEMORY[0x29C263BF0](va1);
  _ZZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__8D1Ev(va);
  MEMORY[0x29C265890](va2);
  _Unwind_Resume(a1);
}

void sub_296E1019C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  if (v30)
  {
    _Block_release(v30);
  }

  _ZZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__8D1Ev(&a10);
  MEMORY[0x29C265890](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__8D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void trace::ARICommandDriverINT::setAnomalyDetectionDebounceTimeout(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_15_5;
  v19 = a2;
  v15[4] = a1;
  v15[5] = v7;
  v16 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v13 = *a3;
  if (*a3)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a3 + 8);
  aBlock = v13;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v15);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK(v24);
  v4 = operator new(4uLL);
  *v4 = *(a1 + 72);
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(v2 + 48);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = _Block_copy(v9);
    v11 = *(a1 + 64);
    v20 = v10;
    object = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = *(a1 + 64);
  v20 = 0;
  object = v11;
  if (v11)
  {
LABEL_7:
    dispatch_retain(v11);
  }

LABEL_8:
  v12 = operator new(0x40uLL);
  v12->__shared_owners_ = 0;
  p_shared_owners = &v12->__shared_owners_;
  v12->__shared_weak_owners_ = 0;
  v12->__vftable = &unk_2A1E10398;
  v12[1].__vftable = v8;
  v12[1].__shared_owners_ = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v10)
  {
    v12[1].__shared_weak_owners_ = 0;
    v12[2].__vftable = v11;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12[1].__shared_weak_owners_ = _Block_copy(v10);
  v12[2].__vftable = v11;
  if (v11)
  {
LABEL_12:
    dispatch_retain(v11);
  }

LABEL_13:
  v12[2].__shared_owners_ = v2;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_73_0;
  v30 = v12 + 1;
  v31 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = &v26;
  v14 = _Block_copy(aBlock);
  v15 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_17:
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v16;
  v22[1] = v16;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v17 = *(v6 + 16);
  v26 = *(v6 + 8);
  if (!v17)
  {
    v27 = 0;
LABEL_38:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v17);
  if (!v27)
  {
    goto LABEL_38;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v18 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  aBlock[0] = v14;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return MEMORY[0x29C2658E0](v24);
}

void sub_296E1074C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v4 = *(v2 - 120);
  if (v4)
  {
    _Block_release(v4);
  }

  MEMORY[0x29C263BF0](va1);
  _ZZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__9D1Ev(va);
  MEMORY[0x29C2658E0](va2);
  _Unwind_Resume(a1);
}

void sub_296E10780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  if (v30)
  {
    _Block_release(v30);
  }

  _ZZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__9D1Ev(&a10);
  MEMORY[0x29C2658E0](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__9D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<trace::ARICommandDriverINT>::shared_ptr[abi:ne200100]<trace::ARICommandDriverINT,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0FFC0;
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

void sub_296E1095C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1}::operator() const(trace::ARICommandDriverINT*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<trace::ARICommandDriverINT *,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT *)#1},std::allocator<trace::ARICommandDriverINT>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<trace::ARICommandDriverINT *,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT *)#1},std::allocator<trace::ARICommandDriverINT>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1}::operator() const(trace::ARICommandDriverINT*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

void *std::promise<BOOL>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C265C70](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x29EDC9548] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x29C265C80](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C265C70](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = v2[2];
  v6 = std::__shared_weak_count::lock(v3);
  v25 = v6;
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  if (*v2)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[2] = v8;
    v22[3] = v8;
    v22[0] = v8;
    v22[1] = v8;
    AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(v22, a2);
    memset(__p, 170, sizeof(__p));
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_296E1FAE0;
    strcpy(*buf, "Sending trace flush request");
    checkErrorStr(v22, buf, __p);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
      v16 = HIBYTE(__p[2]);
      v10 = SHIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v16 = __p[1];
      }

      if (v16)
      {
LABEL_9:
        v11 = *(v4 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = __p[0];
          if (v10 >= 0)
          {
            v12 = __p;
          }

          *buf = 136315138;
          *&buf[4] = v12;
          v13 = "Failed to send trace flush request (response error: %s)";
          v14 = v11;
          v15 = 12;
          goto LABEL_22;
        }

LABEL_25:
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        MEMORY[0x29C264090](v22);
        goto LABEL_28;
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

    if (AriSdk::ARI_TraceFlushRspCb_SDK::unpack(v22))
    {
      v17 = *(v4 + 40);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v13 = "[rsp] Failed to send trace flush request (unpack error)";
      v14 = v17;
      v15 = 2;
    }

    else
    {
      v18 = *v23;
      v19 = *(v4 + 40);
      if (!*v23)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296D7D000, v19, OS_LOG_TYPE_DEFAULT, "#I [rsp] Successfully sent trace flush request", buf, 2u);
        }

        goto LABEL_25;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 67109120;
      *&buf[4] = v18;
      v13 = "[rsp] Failed to send trace flush request (result error: %d)";
      v14 = v19;
      v15 = 8;
    }

LABEL_22:
    _os_log_error_impl(&dword_296D7D000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_25;
  }

LABEL_28:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_30:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296E11034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C264090](&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 - 80);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0,std::allocator<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E100E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0,std::allocator<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT10sendConfigENSt3__16vectorIcNS4_9allocatorIcEEEEN8dispatch5groupEbbiNS9_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS9_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_49;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_49;
  }

  v4 = *(v2 + 16);
  v6 = std::__shared_weak_count::lock(v3);
  v28 = v6;
  if (!v6)
  {
    goto LABEL_49;
  }

  v7 = v6;
  if (!*v2)
  {
    goto LABEL_47;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *cf = v8;
  v24 = v8;
  v21 = v8;
  v22 = v8;
  AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(&v21, a2);
  buf[23] = 20;
  strcpy(buf, "Sending trace config");
  checkError(&v21, buf, v29);
  v9 = *v29;
  v26 = *v29;
  *v29 = 0;
  if ((buf[23] & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_10:
    v11 = AriSdk::ARI_TraceSetConfigRspCb_SDK::unpack(&v21);
    if (v11 || *v25)
    {
      v12 = *(v4 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = *v25;
        *buf = 67109376;
        *&buf[4] = v11;
        *&buf[8] = 1024;
        *&buf[10] = v20;
        _os_log_error_impl(&dword_296D7D000, v12, OS_LOG_TYPE_ERROR, "[rsp] Failed to send trace config: unpackResult = %d result_code_t1 = %d", buf, 0xEu);
      }

      *buf = operator new(0x20uLL);
      *&buf[8] = xmmword_296E1FAE0;
      strcpy(*buf, "Failed to send trace config");
      CreateError();
      v9 = *v29;
      v26 = *v29;
      *v29 = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v13 = *(v4 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        std::string::basic_string[abi:ne200100]<std::__wrap_iter<char const*>,0>(buf, *(v2 + 24), *(v2 + 32));
        v14 = buf[23] >= 0 ? buf : *buf;
        *v29 = 136315138;
        *&v29[4] = v14;
        _os_log_impl(&dword_296D7D000, v13, OS_LOG_TYPE_DEFAULT, "#I [rsp] Succeeded to send trace config: %s", v29, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v9 = 0;
    }

    goto LABEL_23;
  }

  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = *(v4 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "[rsp] Failed to send trace config!", buf, 2u);
  }

LABEL_23:
  MEMORY[0x29C264580](&v21);
  v15 = *(v2 + 48);
  if (v15)
  {
    dispatch_group_leave(v15);
  }

  v16 = *(v2 + 56);
  if (v16 && *(v2 + 64))
  {
    if (v9 && (CFRetain(v9), (v16 = *(v2 + 56)) == 0))
    {
      v17 = 0;
    }

    else
    {
      v17 = _Block_copy(v16);
    }

    v18 = *(v2 + 64);
    *&v21 = MEMORY[0x29EDCA5F8];
    *(&v21 + 1) = 1174405120;
    *&v22 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
    *(&v22 + 1) = &__block_descriptor_tmp_61_0;
    if (v17)
    {
      cf[0] = _Block_copy(v17);
      cf[1] = v9;
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    else
    {
      cf[0] = 0;
      cf[1] = v9;
      if (!v9)
      {
LABEL_38:
        dispatch_async(v18, &v21);
        if (cf[1])
        {
          CFRelease(cf[1]);
        }

        if (cf[0])
        {
          _Block_release(cf[0]);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        if (!v9)
        {
          goto LABEL_47;
        }

        CFRelease(v9);
        goto LABEL_46;
      }
    }

    CFRetain(v9);
    goto LABEL_38;
  }

  if (v9)
  {
LABEL_46:
    CFRelease(v9);
  }

LABEL_47:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_49:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_296E115C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, char a19)
{
  MEMORY[0x29C264580](&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c193_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT10sendConfigENS_6vectorIcNS_9allocatorIcEEEEN8dispatch5groupEbbiNS7_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c193_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT10sendConfigENS_6vectorIcNS_9allocatorIcEEEEN8dispatch5groupEbbiNS7_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296E1181C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNS1_19ARICommandDriverINT5startEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = ice::Client::start(*(*v1 + 48));
  *(v2 + 64) = 1;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>(trace::ARICommandDriverINT::stop(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,dispatch_queue_s *::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*v2 + 48);
  object.gr_name = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  ice::Client::stop(v5, &object);
  if (object.gr_name)
  {
    dispatch_release(object.gr_name);
  }

  *(v4 + 64) = 0;
  v6 = v2[1];
  if (v6)
  {
    dispatch_release(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_296E11948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,std::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,std::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS4_13group_sessionEEEEEUb_E3__6vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *v2;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[2] = v4;
    v11[3] = v4;
    v11[0] = v4;
    v11[1] = v4;
    AriSdk::ARI_TraceOutputIdleInd_SDK::ARI_TraceOutputIdleInd_SDK(v11, a2);
    GMID = AriSdk::MsgBase::getGMID(v11);
    std::mutex::lock((v3 + 72));
    if (ice::isARIResponseValid())
    {
      if (!AriSdk::ARI_TraceOutputIdleInd_SDK::unpack(v11) && *v12 == 1)
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296D7D000, v6, OS_LOG_TYPE_DEFAULT, "#I [ind] Trace output idle indication Success", buf, 2u);
        }

        v7 = 1;
        goto LABEL_13;
      }

      v9 = *(v3 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "[ind] Error while unpacking trace output idle indication", buf, 2u);
      }
    }

    else
    {
      v8 = *(v3 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v14 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
        v15 = 1024;
        v16 = 1568702464;
        _os_log_error_impl(&dword_296D7D000, v8, OS_LOG_TYPE_ERROR, "[ind] Got unexpected message 0x%0x, expected trace output idle indication (0x%0x)", buf, 0xEu);
      }
    }

    v7 = 0;
LABEL_13:
    *(v3 + 184) = v7;
    std::condition_variable::notify_all((v3 + 136));
    std::mutex::unlock((v3 + 72));
    result = MEMORY[0x29C2643E0](v11);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296E11B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 72));
  MEMORY[0x29C2643E0](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS3_13group_sessionEEEEEUb_E3__6EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS3_13group_sessionEEEEEUb_E3__6EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS3_13group_sessionEEEEEUb_E3__6NS_9allocatorIS9_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *v2;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[2] = v4;
    v16[3] = v4;
    v16[0] = v4;
    v16[1] = v4;
    AriSdk::ARI_TraceFlushCompleteInd_SDK::ARI_TraceFlushCompleteInd_SDK(v16, a2);
    GMID = AriSdk::MsgBase::getGMID(v16);
    if (ice::isARIResponseValid())
    {
      if (!AriSdk::ARI_TraceFlushCompleteInd_SDK::unpack(v16) && !*v17)
      {
        v14 = *(v3 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18.__ptr_) = 0;
          _os_log_impl(&dword_296D7D000, v14, OS_LOG_TYPE_DEFAULT, "#I [ind] Trace flush complete indication Success", &v18, 2u);
        }

        v7 = *(v3 + 192);
        if (!v7)
        {
          std::__throw_future_error[abi:ne200100](3u);
        }

        v8 = (v7 + 24);
        std::mutex::lock((v7 + 24));
        if ((*(v7 + 136) & 1) != 0 || (v18.__ptr_ = 0, v15 = *(v7 + 16), std::exception_ptr::~exception_ptr(&v18), v15))
        {
          std::__throw_future_error[abi:ne200100](2u);
        }

        v12 = 1;
        goto LABEL_15;
      }

      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18.__ptr_) = 0;
        _os_log_error_impl(&dword_296D7D000, v6, OS_LOG_TYPE_ERROR, "[ind] Error while unpacking trace flush complete indication", &v18, 2u);
        v7 = *(v3 + 192);
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v7 = *(v3 + 192);
        if (v7)
        {
LABEL_7:
          v8 = (v7 + 24);
          std::mutex::lock((v7 + 24));
          if ((*(v7 + 136) & 1) != 0 || (v18.__ptr_ = 0, v9 = *(v7 + 16), std::exception_ptr::~exception_ptr(&v18), v9))
          {
            std::__throw_future_error[abi:ne200100](2u);
          }

LABEL_14:
          v12 = 0;
LABEL_15:
          *(v7 + 140) = v12;
          *(v7 + 136) |= 5u;
          std::condition_variable::notify_all((v7 + 88));
          std::mutex::unlock(v8);
          result = MEMORY[0x29C264990](v16);
          goto LABEL_16;
        }
      }

      std::__throw_future_error[abi:ne200100](3u);
    }

    v10 = *(v3 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v18.__ptr_) = 67109376;
      HIDWORD(v18.__ptr_) = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
      v19 = 1024;
      v20 = 1568735232;
      _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "[ind] Got unexpected message 0x%0x, expected trace flush complete indication (0x%0x)", &v18, 0xEu);
      v7 = *(v3 + 192);
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = *(v3 + 192);
      if (v7)
      {
LABEL_12:
        v8 = (v7 + 24);
        std::mutex::lock((v7 + 24));
        if ((*(v7 + 136) & 1) != 0 || (v18.__ptr_ = 0, v11 = *(v7 + 16), std::exception_ptr::~exception_ptr(&v18), v11))
        {
          std::__throw_future_error[abi:ne200100](2u);
        }

        goto LABEL_14;
      }
    }

    std::__throw_future_error[abi:ne200100](3u);
  }

LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296E11F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  MEMORY[0x29C264990](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c95_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c95_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::registerForTraceFlushCompletion(void)::$_0,std::allocator<trace::ARICommandDriverINT::registerForTraceFlushCompletion(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS2_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_41;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_41;
  }

  v4 = v2[4];
  v6 = std::__shared_weak_count::lock(v3);
  v24 = v6;
  if (!v6)
  {
    goto LABEL_41;
  }

  v7 = v6;
  if (*v2)
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[2] = v8;
    v21[3] = v8;
    v21[0] = v8;
    v21[1] = v8;
    AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK(v21, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    block = operator new(0x20uLL);
    v26 = xmmword_296E1FAE0;
    strcpy(block, "set anomaly detection level");
    checkError(v21, &block, &cf);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(block);
      if (cf)
      {
        goto LABEL_17;
      }
    }

    else if (cf)
    {
      goto LABEL_17;
    }

    v9 = AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::unpack(v21);
    if (v9 || *v22)
    {
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = *v22;
        LODWORD(block) = 67109376;
        HIDWORD(block) = v9;
        LOWORD(v26) = 1024;
        *(&v26 + 2) = v18;
        _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "Failed to set anomaly detection level: unpackResult = %d result_code_t1 = %d", &block, 0xEu);
      }

      __p = operator new(0x28uLL);
      strcpy(__p, "Failed to set anomaly detection level");
      CreateError();
      v11 = cf;
      cf = block;
      block = 0;
      if (v11)
      {
        CFRelease(v11);
        if (block)
        {
          CFRelease(block);
        }
      }

      operator delete(__p);
    }

    else
    {
      v17 = *(v4 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(block) = 0;
        _os_log_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEFAULT, "#I Successfully set anomaly detection level", &block, 2u);
      }
    }

LABEL_17:
    v12 = v2[2];
    if (!v12 || !v2[3])
    {
LABEL_36:
      if (cf)
      {
        CFRelease(cf);
      }

      MEMORY[0x29C2658C0](v21);
      goto LABEL_39;
    }

    v13 = cf;
    if (cf && (CFRetain(cf), (v12 = v2[2]) == 0))
    {
      v14 = 0;
    }

    else
    {
      v14 = _Block_copy(v12);
    }

    v15 = v2[3];
    block = MEMORY[0x29EDCA5F8];
    *&v26 = 1174405120;
    *(&v26 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
    v27 = &__block_descriptor_tmp_61_0;
    if (v14)
    {
      v28 = _Block_copy(v14);
      v29 = v13;
      if (!v13)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v28 = 0;
      v29 = v13;
      if (!v13)
      {
LABEL_28:
        dispatch_async(v15, &block);
        if (v29)
        {
          CFRelease(v29);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        if (v14)
        {
          _Block_release(v14);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_36;
      }
    }

    CFRetain(v13);
    goto LABEL_28;
  }

LABEL_39:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_41:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296E124DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c196_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c196_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8NS_9allocatorISE_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8NS_9allocatorISE_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_42;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_42;
  }

  v4 = v2[4];
  v6 = std::__shared_weak_count::lock(v3);
  v24 = v6;
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = v6;
  if (*v2)
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[2] = v8;
    v21[3] = v8;
    v21[0] = v8;
    v21[1] = v8;
    AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK(v21, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    *buf = operator new(0x28uLL);
    v26 = xmmword_296E22D70;
    strcpy(*buf, "set anomaly detection debounce timeout");
    checkError(v21, buf, &cf);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
      if (cf)
      {
        goto LABEL_18;
      }
    }

    else if (cf)
    {
      goto LABEL_18;
    }

    v9 = AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::unpack(v21);
    v10 = *(v4 + 40);
    if (v9)
    {
      v11 = v9;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "Failed to set anomaly detection debounce timeout: unpackResult = %d", buf, 8u);
      }

      __p = operator new(0x38uLL);
      strcpy(__p, "Failed to set anomaly detection debounce timeout");
      CreateError();
      v12 = cf;
      cf = *buf;
      *buf = 0;
      if (v12)
      {
        CFRelease(v12);
        if (*buf)
        {
          CFRelease(*buf);
        }
      }

      operator delete(__p);
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v22;
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEFAULT, "#I Successfully set anomaly detection debounce timeout (result_t1 = %d)", buf, 8u);
    }

LABEL_18:
    v14 = v2[2];
    if (!v14 || !v2[3])
    {
LABEL_37:
      if (cf)
      {
        CFRelease(cf);
      }

      MEMORY[0x29C265910](v21);
      goto LABEL_40;
    }

    v15 = cf;
    if (cf && (CFRetain(cf), (v14 = v2[2]) == 0))
    {
      v16 = 0;
    }

    else
    {
      v16 = _Block_copy(v14);
    }

    v17 = v2[3];
    *buf = MEMORY[0x29EDCA5F8];
    *&v26 = 1174405120;
    *(&v26 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
    v27 = &__block_descriptor_tmp_61_0;
    if (v16)
    {
      v28 = _Block_copy(v16);
      v29 = v15;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v28 = 0;
      v29 = v15;
      if (!v15)
      {
LABEL_29:
        dispatch_async(v17, buf);
        if (v29)
        {
          CFRelease(v29);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        if (v16)
        {
          _Block_release(v16);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_37;
      }
    }

    CFRetain(v15);
    goto LABEL_29;
  }

LABEL_40:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_42:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_296E12A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c179_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c179_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9NS_9allocatorISD_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10398;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9NS_9allocatorISD_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_296E13328(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, v11 + v13, v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_296E13664(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v22 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v19 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v19, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v17 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v15 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v8 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v8 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v11 = cf;
    Code = CFErrorGetCode(error);
    v13 = __p;
    if (v15 < 0)
    {
      v13 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v21 = v13;
    _os_log_error_impl(&dword_296D7D000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
      v7 = v17;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v17;
      if (!v17)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v19)
  {
    CFRelease(v19);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E13B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sGetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 != -1)
  {

    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
  }
}

void util::moveDirContent(std::string::size_type a1, const std::string::value_type **a2, unsigned int a3, int a4, uint64_t a5)
{
  v158 = *MEMORY[0x29EDCA608];
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v8 = *(a1 + 23);
  if (v8 < 0)
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  std::locale::locale(&v143, a5);
  v144 = *(a5 + 8);
  v145 = *(a5 + 24);
  v11 = *(a5 + 48);
  v146 = *(a5 + 40);
  v147 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v148 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v13 = v147;
  if (v147 && !atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    std::locale::~locale(&v143);
    if (filtered_files)
    {
LABEL_11:
      v14 = v149;
      v131 = v150;
      if (v149 != v150)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v157, 170, sizeof(v157));
            if (*(v14 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
            }

            else
            {
              v15 = *v14;
              v157.__r_.__value_.__r.__words[2] = v14[2];
              *&v157.__r_.__value_.__l.__data_ = v15;
            }

            v16 = *(a1 + 23);
            if (v16 >= 0)
            {
              v17 = *(a1 + 23);
            }

            else
            {
              v17 = *(a1 + 8);
            }

            v18 = v17 + 1;
            if (v17 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v18 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v20 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v17 + 1;
              if (!v17)
              {
                goto LABEL_32;
              }
            }

            else
            {
              if ((v18 | 7) == 0x17)
              {
                v19 = 25;
              }

              else
              {
                v19 = (v18 | 7) + 1;
              }

              v20 = operator new(v19);
              v141.__r_.__value_.__l.__size_ = v17 + 1;
              v141.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v20;
            }

            v21 = *a1;
            if (v16 >= 0)
            {
              v22 = a1;
            }

            else
            {
              v22 = *a1;
            }

            memmove(v20, v22, v17);
LABEL_32:
            *&v20[v17] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v157;
            }

            else
            {
              v23 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v157.__r_.__value_.__l.__size_;
            }

            v25 = std::string::append(&v141, v23, size);
            v26 = *&v25->__r_.__value_.__l.__data_;
            __p[2] = v25->__r_.__value_.__r.__words[2];
            *__p = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_40:
                if (is_directory)
                {
                  goto LABEL_41;
                }

                goto LABEL_52;
              }
            }

            else if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            operator delete(v141.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_41:
              v28 = *(a1 + 23);
              if (v28 >= 0)
              {
                v29 = *(a1 + 23);
              }

              else
              {
                v29 = *(a1 + 8);
              }

              v30 = v29 + 1;
              if (v29 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v30 < 0x17)
              {
                memset(&v141, 0, sizeof(v141));
                v32 = &v141;
                *(&v141.__r_.__value_.__s + 23) = v29 + 1;
                if (v29)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if ((v30 | 7) == 0x17)
                {
                  v31 = 25;
                }

                else
                {
                  v31 = (v30 | 7) + 1;
                }

                v32 = operator new(v31);
                v141.__r_.__value_.__l.__size_ = v29 + 1;
                v141.__r_.__value_.__r.__words[2] = v31 | 0x8000000000000000;
                v141.__r_.__value_.__r.__words[0] = v32;
LABEL_65:
                v39 = *a1;
                if (v28 >= 0)
                {
                  v40 = a1;
                }

                else
                {
                  v40 = *a1;
                }

                memmove(v32, v40, v29);
              }

              *&v32[v29] = 47;
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = &v157;
              }

              else
              {
                v41 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v42 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v42 = v157.__r_.__value_.__l.__size_;
              }

              v43 = std::string::append(&v141, v41, v42);
              v44 = *&v43->__r_.__value_.__l.__data_;
              __p[2] = v43->__r_.__value_.__r.__words[2];
              *__p = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              v45 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v45 = __p[1];
                v47 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v48 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v48 != __p[1])
                {
                  v46 = __p[0];
                  goto LABEL_96;
                }

                if (v47 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v46 = __p[0];
                if (v48 > 0x3FFFFFFFFFFFFFF2)
                {
                  v52 = 0;
                  v51 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_81:
                  v49 = 2 * v48;
                  if (v47 > 2 * v48)
                  {
                    v49 = v47;
                  }

                  if ((v49 | 7) == 0x17)
                  {
                    v50 = 25;
                  }

                  else
                  {
                    v50 = (v49 | 7) + 1;
                  }

                  if (v49 >= 0x17)
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = 23;
                  }

                  v52 = v48 == 22;
                }

                v53 = operator new(v51);
                v54 = v53;
                if (v48)
                {
                  memmove(v53, v46, v48);
                }

                v54[v48] = 47;
                if (!v52)
                {
                  operator delete(v46);
                }

                __p[1] = v47;
                __p[2] = (v51 | 0x8000000000000000);
                __p[0] = v54;
                v55 = &v54[v47];
              }

              else
              {
                v46 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v47 = 23;
                  v48 = 22;
                  goto LABEL_81;
                }

LABEL_96:
                *(v45 + v46) = 47;
                v56 = v45 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v56;
                }

                else
                {
                  HIBYTE(__p[2]) = v56 & 0x7F;
                }

                v55 = &v56[v46];
              }

              *v55 = 0;
              *v139 = *__p;
              v140 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v138, *a2, a2[1]);
              }

              else
              {
                v138 = *a2;
              }

              std::locale::locale(&v132, a5);
              v133 = *(a5 + 8);
              v134 = *(a5 + 24);
              v57 = *(a5 + 48);
              v135 = *(a5 + 40);
              v136 = v57;
              if (v57)
              {
                atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v137 = *(a5 + 56);
              util::moveDirContent(v139, &v138, a3, (a4 - 1), &v132);
              v58 = v136;
              if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v58->__on_zero_shared)(v58);
                std::__shared_weak_count::__release_weak(v58);
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_108:
                  if ((SHIBYTE(v140) & 0x80000000) == 0)
                  {
                    goto LABEL_109;
                  }

LABEL_114:
                  operator delete(v139[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_115;
                }
              }

              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v140) & 0x80000000) == 0)
              {
LABEL_109:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_110;
                }

                goto LABEL_115;
              }

              goto LABEL_114;
            }

LABEL_52:
            if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
            {
              qword_2A18CA8B0 = 0;
              qword_2A18CA8B8 = 0;
              __cxa_guard_release(&qword_2A18CA8A8);
            }

            if (_MergedGlobals_3 == -1)
            {
              v33 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
              v33 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            v34 = *(a1 + 23);
            if (v34 >= 0)
            {
              v35 = *(a1 + 23);
            }

            else
            {
              v35 = *(a1 + 8);
            }

            v36 = v35 + 1;
            if (v35 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v36 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v38 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v35 + 1;
              if (!v35)
              {
                goto LABEL_125;
              }
            }

            else
            {
              if ((v36 | 7) == 0x17)
              {
                v37 = 25;
              }

              else
              {
                v37 = (v36 | 7) + 1;
              }

              v38 = operator new(v37);
              v141.__r_.__value_.__l.__size_ = v35 + 1;
              v141.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v38;
            }

            v59 = *a1;
            if (v34 >= 0)
            {
              v60 = a1;
            }

            else
            {
              v60 = *a1;
            }

            memmove(v38, v60, v35);
LABEL_125:
            *&v38[v35] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v157;
            }

            else
            {
              v61 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v62 = v157.__r_.__value_.__l.__size_;
            }

            v63 = std::string::append(&v141, v61, v62);
            v64 = *&v63->__r_.__value_.__l.__data_;
            __p[2] = v63->__r_.__value_.__r.__words[2];
            *__p = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            v65 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v65 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v65;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_296D7D000, v33, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_110:
              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            }

LABEL_115:
            operator delete(__p[0]);
            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_116:
              operator delete(v141.__r_.__value_.__l.__data_);
            }

LABEL_117:
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v157.__r_.__value_.__l.__data_);
            }

            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }

        while (1)
        {
          memset(&v157, 170, sizeof(v157));
          if (*(v14 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
          }

          else
          {
            v75 = *v14;
            v157.__r_.__value_.__r.__words[2] = v14[2];
            *&v157.__r_.__value_.__l.__data_ = v75;
          }

          memset(__p, 170, sizeof(__p));
          v76 = *(a2 + 23);
          if (v76 >= 0)
          {
            v77 = *(a2 + 23);
          }

          else
          {
            v77 = a2[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_179;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            p_buf = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          v81 = *a2;
          if (v76 >= 0)
          {
            v82 = a2;
          }

          else
          {
            v82 = *a2;
          }

          memmove(p_buf, v82, v77);
LABEL_179:
          *(&p_buf->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v157;
          }

          else
          {
            v83 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v157.__r_.__value_.__l.__size_;
          }

          v85 = std::string::append(&buf, v83, v84);
          v86 = *&v85->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_187;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_187;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_187:
          v87 = *(a1 + 23);
          if (v87 >= 0)
          {
            v88 = *(a1 + 23);
          }

          else
          {
            v88 = *(a1 + 8);
          }

          v89 = v88 + 1;
          if (v88 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v89 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v91 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v88 + 1;
            if (!v88)
            {
              goto LABEL_201;
            }
          }

          else
          {
            if ((v89 | 7) == 0x17)
            {
              v90 = 25;
            }

            else
            {
              v90 = (v89 | 7) + 1;
            }

            v91 = operator new(v90);
            buf.__r_.__value_.__l.__size_ = v88 + 1;
            buf.__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v91;
          }

          v92 = *a1;
          if (v87 >= 0)
          {
            v93 = a1;
          }

          else
          {
            v93 = *a1;
          }

          memmove(v91, v93, v88);
LABEL_201:
          *(&v91->__r_.__value_.__l.__data_ + v88) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = &v157;
          }

          else
          {
            v94 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v95 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v95 = v157.__r_.__value_.__l.__size_;
          }

          v96 = std::string::append(&buf, v94, v95);
          v97 = *&v96->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v97;
          v96->__r_.__value_.__l.__size_ = 0;
          v96->__r_.__value_.__r.__words[2] = 0;
          v96->__r_.__value_.__r.__words[0] = 0;
          v98 = ctu::fs::rename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_209:
              explicit = atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire);
              if (v98)
              {
                goto LABEL_210;
              }

              goto LABEL_226;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_209;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire);
          if (v98)
          {
LABEL_210:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
            {
              qword_2A18CA8B0 = 0;
              qword_2A18CA8B8 = 0;
              __cxa_guard_release(&qword_2A18CA8A8);
            }

            if (_MergedGlobals_3 == -1)
            {
              v100 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
              v100 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            v101 = *(a1 + 23);
            if (v101 >= 0)
            {
              v102 = *(a1 + 23);
            }

            else
            {
              v102 = *(a1 + 8);
            }

            v103 = v102 + 1;
            if (v102 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v103 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v105 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v102 + 1;
              if (v102)
              {
                goto LABEL_239;
              }
            }

            else
            {
              if ((v103 | 7) == 0x17)
              {
                v104 = 25;
              }

              else
              {
                v104 = (v103 | 7) + 1;
              }

              v105 = operator new(v104);
              buf.__r_.__value_.__l.__size_ = v102 + 1;
              buf.__r_.__value_.__r.__words[2] = v104 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v105;
LABEL_239:
              v112 = *a1;
              if (v101 >= 0)
              {
                v113 = a1;
              }

              else
              {
                v113 = *a1;
              }

              memmove(v105, v113, v102);
            }

            *(&v105->__r_.__value_.__l.__data_ + v102) = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v114 = &v157;
            }

            else
            {
              v114 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v115 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v115 = v157.__r_.__value_.__l.__size_;
            }

            v116 = std::string::append(&buf, v114, v115);
            v117 = *&v116->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v117;
            v116->__r_.__value_.__l.__size_ = 0;
            v116->__r_.__value_.__r.__words[2] = 0;
            v116->__r_.__value_.__r.__words[0] = 0;
            v118 = &v141;
            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v118 = v141.__r_.__value_.__r.__words[0];
            }

            v119 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v119 = __p[0];
            }

            *v152 = 136315394;
            v153 = v118;
            v154 = 2080;
            v155 = v119;
            _os_log_impl(&dword_296D7D000, v100, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v152, 0x16u);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_254;
            }

            goto LABEL_272;
          }

LABEL_226:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
          {
            qword_2A18CA8B0 = 0;
            qword_2A18CA8B8 = 0;
            __cxa_guard_release(&qword_2A18CA8A8);
          }

          if (_MergedGlobals_3 == -1)
          {
            v106 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
            v106 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          v107 = *(a1 + 23);
          if (v107 >= 0)
          {
            v108 = *(a1 + 23);
          }

          else
          {
            v108 = *(a1 + 8);
          }

          v109 = v108 + 1;
          if (v108 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v109 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v111 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v108 + 1;
            if (!v108)
            {
              goto LABEL_261;
            }
          }

          else
          {
            if ((v109 | 7) == 0x17)
            {
              v110 = 25;
            }

            else
            {
              v110 = (v109 | 7) + 1;
            }

            v111 = operator new(v110);
            buf.__r_.__value_.__l.__size_ = v108 + 1;
            buf.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v111;
          }

          v120 = *a1;
          if (v107 >= 0)
          {
            v121 = a1;
          }

          else
          {
            v121 = *a1;
          }

          memmove(v111, v121, v108);
LABEL_261:
          *(&v111->__r_.__value_.__l.__data_ + v108) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = &v157;
          }

          else
          {
            v122 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v123 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v123 = v157.__r_.__value_.__l.__size_;
          }

          v124 = std::string::append(&buf, v122, v123);
          v125 = *&v124->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v125;
          v124->__r_.__value_.__l.__size_ = 0;
          v124->__r_.__value_.__r.__words[2] = 0;
          v124->__r_.__value_.__r.__words[0] = 0;
          v126 = &v141;
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v126 = v141.__r_.__value_.__r.__words[0];
          }

          v127 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v127 = __p[0];
          }

          *v152 = 136315394;
          v153 = v126;
          v154 = 2080;
          v155 = v127;
          _os_log_error_impl(&dword_296D7D000, v106, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v152, 0x16u);
          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_254:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_273;
            }

            goto LABEL_274;
          }

LABEL_272:
          operator delete(v141.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_273:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_274:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_161;
            }

LABEL_276:
            operator delete(v157.__r_.__value_.__l.__data_);
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_276;
            }

LABEL_161:
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }
      }

      goto LABEL_143;
    }
  }

  else
  {
    std::locale::~locale(&v143);
    if (filtered_files)
    {
      goto LABEL_11;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 == -1)
  {
    v66 = qword_2A18CA8B8;
    if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
    v66 = qword_2A18CA8B8;
    if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  v128 = a1;
  if (*(a1 + 23) < 0)
  {
    v128 = *a1;
  }

  LODWORD(v157.__r_.__value_.__l.__data_) = 136315138;
  *(v157.__r_.__value_.__r.__words + 4) = v128;
  _os_log_error_impl(&dword_296D7D000, v66, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v157, 0xCu);
LABEL_143:
  if (a3)
  {
    v67 = *(a1 + 23);
    if (v67 < 0)
    {
      v68 = *a1;
    }

    if (v67 >= 0)
    {
      v69 = *(a1 + 23);
    }

    else
    {
      v69 = *(a1 + 8);
    }

    ctu::fs::remove_dir();
  }

  v70 = v149;
  if (v149)
  {
    v71 = v150;
    v72 = v149;
    if (v150 != v149)
    {
      do
      {
        v73 = *(v71 - 1);
        v71 -= 3;
        if (v73 < 0)
        {
          operator delete(*v71);
        }
      }

      while (v71 != v70);
      v72 = v149;
    }

    v150 = v70;
    operator delete(v72);
  }

  v74 = *MEMORY[0x29EDCA608];
}

void sub_296E14C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v17 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v17 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    LOWORD(c.count[0]) = 0;
    v18 = "dataIn buffer is NULL";
    p_c = &c;
    v20 = v17;
    v21 = 2;
LABEL_25:
    _os_log_error_impl(&dword_296D7D000, v20, OS_LOG_TYPE_ERROR, v18, p_c, v21);
    goto LABEL_30;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  v10 = a1[23];
  if (v10 < 0)
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = a1[23];
  }

  else
  {
    v12 = *(a1 + 1);
  }

  if (ctu::fs::get_file_size())
  {
    CC_SHA256_Init(&c);
    v13 = a1;
    if (a1[23] < 0)
    {
      v13 = *a1;
    }

    v14 = open(v13, 0);
    if (v14 >= 1)
    {
      v15 = 0;
      while (1)
      {
        v16 = read(v14, a2, a3);
        if (v16 == -1)
        {
          break;
        }

        CC_SHA256_Update(&c, a2, v16);
        v15 += v16;
        if (v15 >= 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_29;
        }
      }

      if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
      {
        qword_2A18CA8B0 = 0;
        qword_2A18CA8B8 = 0;
        __cxa_guard_release(&qword_2A18CA8A8);
      }

      if (_MergedGlobals_3 == -1)
      {
        v27 = qword_2A18CA8B8;
        if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          CC_SHA256_Final(*a4, &c);
          close(v14);
          goto LABEL_30;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
        v27 = qword_2A18CA8B8;
        if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v29 = __error();
      v30 = strerror(*v29);
      v31 = *__error();
      v32 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v30;
      v38 = 1024;
      v39 = v31;
      v40 = 1024;
      v41 = v32;
      _os_log_error_impl(&dword_296D7D000, v27, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
      goto LABEL_29;
    }

    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 != -1)
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v22 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    v22 = qword_2A18CA8B8;
    if (os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      v26 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v18 = "Failed to open %s : %s (%d, 0x%x)";
      p_c = buf;
      v20 = v22;
      v21 = 34;
      goto LABEL_25;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_296E1526C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(uint64_t *a1)
{
  v1 = a1;
  v27 = *MEMORY[0x29EDCA608];
  v16 = 65541;
  if (*(a1 + 23) < 0)
  {
    v2 = open(*a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v12 = qword_2A18CA8B8;
      result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v12 = qword_2A18CA8B8;
      result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v18 = v1;
    v19 = 2080;
    v20 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v16, 0);
  close(v3);
  if (!v4)
  {
    result = 1;
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
    v5 = qword_2A18CA8B8;
    result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = qword_2A18CA8B8;
  result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_7:
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136316162;
    v18 = v1;
    v19 = 2080;
    v20 = v8;
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v4;
    v25 = 2048;
    v26 = v16;
    v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
    v10 = v5;
    v11 = 44;
LABEL_17:
    _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    result = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, int64_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC));
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_296E15B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = strcasecmp(a1, "false");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "off");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "no");
    if (!result)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

LABEL_28:
    result = 1;
LABEL_29:
    *a2 = result;
    return result;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  result = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "off");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "no");
  if (!result)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_31:
    result = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  result = std::stol(a1, &__idx, 10);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && result >= 0xFFFFFFFF80000000 && result <= 0x7FFFFFFF)
  {
    goto LABEL_29;
  }

  return result;
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v50 = a2[1];
  if (v3 == v50)
  {
    return;
  }

  v49 = &v50 + 3;
  while (1)
  {
    memset(&v52, 170, sizeof(v52));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      v52.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v52.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      v13 = *a1;
      if (v6 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      memmove(v12, v14, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v15 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v16 = &v52;
      }

      else
      {
        v16 = v52.__r_.__value_.__r.__words[0];
      }

      memmove(v15, v16, size);
    }

    v15[size] = 0;
    v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v53.st_blksize = v17;
    *v53.st_qspare = v17;
    v53.st_birthtimespec = v17;
    *&v53.st_size = v17;
    v53.st_mtimespec = v17;
    v53.st_ctimespec = v17;
    *&v53.st_uid = v17;
    v53.st_atimespec = v17;
    *&v53.st_dev = v17;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (stat(v18, &v53) || (SHIBYTE(__p[2]) >= 0 ? (v20 = __p) : (v20 = __p[0]), v21 = opendir(v20), (v22 = v21) == 0))
    {
      v19 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v23 = readdir(v21);
    closedir(v22);
    v19 = HIBYTE(__p[2]);
    if (v23)
    {
      break;
    }

LABEL_35:
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 = (v3 + 24);
    if (v3 == v50)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v24 = &v49[HIBYTE(__p[2])];
    if (*v24 == 1885626669 && v49[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v24 == 1935962413 && v24[4] == 115)
    {
      goto LABEL_80;
    }

    v27 = *v24;
    v28 = v24[4];
    if (v27 == 1634296877 && v28 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v30 = __p;
    v31 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v31 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v30 = __p[0];
  v32 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v32 - 5) != 1935962413 || *(v32 - 1) != 115))
  {
    v35 = *(v32 - 5);
    v36 = *(v32 - 1);
    if (v35 != 1634296877 || v36 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v38 = v30 + v31;
      v39 = *(v38 - 9);
      v40 = *(v38 - 1);
      if (v39 == 0x636172742D62622DLL && v40 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v42 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v52.__r_.__value_.__l.__size_;
  }

  v44 = v43 + 9;
  if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v44 < 0x17)
  {
    memset(&v53, 0, 24);
    v46 = &v53;
    HIBYTE(v53.st_gid) = v43 + 9;
    if (v43)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v44 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v44 | 7) + 1;
    }

    v46 = operator new(v45);
    v53.st_ino = v43 + 9;
    *&v53.st_uid = v45 | 0x8000000000000000;
    *&v53.st_dev = v46;
LABEL_90:
    if (v42 >= 0)
    {
      v47 = &v52;
    }

    else
    {
      v47 = v52.__r_.__value_.__r.__words[0];
    }

    memmove(v46, v47, v43);
  }

  strcpy(v46 + v43, "/info.txt");
  *a3 = *&v53.st_dev;
  a3[2] = *&v53.st_uid;
  if ((v19 & 0x80) == 0)
  {
    if ((v42 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v52.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v52.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_296E16280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t *a1, char *a2)
{
  __p[73] = *MEMORY[0x29EDCA608];
  v84 = 0;
  v85 = 0;
  v86 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v82[32] = v2;
  v83 = v2;
  *v82 = v2;
  *&v82[16] = v2;
  v3 = a2[23];
  if (v3 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v81[1] = 0;
    v81[2] = 0;
    HIBYTE(v81[2]) = v4 + 2;
    v10 = v81 + 2;
    v81[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v81[1] = (v4 + 2);
    v81[2] = (v8 | 0x8000000000000000);
    v81[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  v11 = *v6;
  if (v3 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *v6;
  }

  memmove(v10, v12, v4);
LABEL_15:
  v10[v4] = 0;
  v13 = SHIBYTE(v81[2]);
  if ((SHIBYTE(v81[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v81[2]) - 21) < 2)
    {
      v14 = (SHIBYTE(v81[2]) + 2);
      v15 = v81;
      v16 = 22;
LABEL_21:
      v17 = 2 * v16;
      if (v14 > 2 * v16)
      {
        v17 = v14;
      }

      if ((v17 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v17 | 7) + 1;
      }

      if (v17 >= 0x17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 23;
      }

      v20 = v16 == 22;
      goto LABEL_30;
    }

    v24 = v81;
    *(v81 + SHIBYTE(v81[2])) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v13 = v81[1];
  v16 = (v81[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v81[1] >= 2)
  {
    v24 = v81[0];
    *(v81[0] + v81[1]) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v81[2]) = v25 & 0x7F;
LABEL_39:
      v23 = &v25[v24];
      goto LABEL_40;
    }

LABEL_38:
    v81[1] = v25;
    goto LABEL_39;
  }

  v14 = v81[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v81[2] & 0x7FFFFFFFFFFFFFFFLL)) < v81[1] - v16 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v81[0];
  if (v16 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v21 = operator new(v19);
  v22 = v21;
  if (v13)
  {
    memmove(v21, v15, v13);
  }

  *(v22 + v13) = 10798;
  if (!v20)
  {
    operator delete(v15);
  }

  v81[1] = v14;
  v81[2] = (v19 | 0x8000000000000000);
  v81[0] = v22;
  v23 = &v14[v22];
LABEL_40:
  *v23 = 0;
  *__p = *v81;
  __p[2] = v81[2];
  memset(v81, 0, sizeof(v81));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v82, __p, 0);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v81[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v81[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v80 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v80, *a1, a1[1]);
LABEL_47:
  std::locale::locale(&v74, v82);
  v75 = *&v82[8];
  v76 = *&v82[24];
  v77 = *&v82[40];
  v78 = v83;
  if (v83)
  {
    atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
  }

  v79 = *(&v83 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v80, &v74, &v84, 0);
  v27 = v78;
  if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    std::locale::~locale(&v74);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v28 = 0;
      v29 = v83;
      if (!v83)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else
  {
    std::locale::~locale(&v74);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v80.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v81, 170, sizeof(v81));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *a1, a1[1]);
  }

  else
  {
    v73 = *a1;
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  v30 = v84;
  v31 = v85;
  *buf = &v70;
  *&buf[8] = 0xAAAAAAAAAAAAAA00;
  v32 = v85 - v84;
  if (v85 != v84)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v32 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v33 = operator new(v85 - v84);
    v70 = v33;
    v71 = v33;
    v72 = v33 + v32;
    v87 = v33;
    v88 = v33;
    __p[0] = &v70;
    __p[1] = &v87;
    __p[2] = &v88;
    __p[3] = 0xAAAAAAAAAAAAAA00;
    do
    {
      while ((*(v30 + 23) & 0x80000000) == 0)
      {
        v34 = *v30;
        v33->__r_.__value_.__r.__words[2] = v30[2];
        *&v33->__r_.__value_.__l.__data_ = v34;
        ++v33;
        v30 += 3;
        v88 = v33;
        if (v30 == v31)
        {
          goto LABEL_66;
        }
      }

      std::string::__init_copy_ctor_external(v33, *v30, v30[1]);
      v30 += 3;
      v33 = ++v88;
    }

    while (v30 != v31);
LABEL_66:
    v71 = v33;
  }

  util::findBasebandLogInfoFile(&v73.__r_.__value_.__l.__data_, &v70, v81);
  v35 = v70;
  if (v70)
  {
    p_data = &v71->__r_.__value_.__l.__data_;
    v37 = v70;
    if (v71 != v70)
    {
      do
      {
        v38 = *(p_data - 1);
        p_data -= 3;
        if (v38 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v35);
      v37 = v70;
    }

    v71 = v35;
    operator delete(v37);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    v39 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v40 = HIBYTE(v81[2]);
    }

    else
    {
      v40 = v81[1];
    }

    if (v40)
    {
LABEL_80:
      memset(__p, 170, 0x240uLL);
      v41 = *(a1 + 23);
      if (v41 >= 0)
      {
        v42 = *(a1 + 23);
      }

      else
      {
        v42 = a1[1];
      }

      v43 = v42 + v40;
      if (v42 + v40 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v43 <= 0x16)
      {
        memset(buf, 0, 24);
        v45 = buf;
        buf[23] = v42 + v40;
        if (!v42)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if ((v43 | 7) == 0x17)
        {
          v44 = 25;
        }

        else
        {
          v44 = (v43 | 7) + 1;
        }

        v45 = operator new(v44);
        *&buf[8] = v42 + v40;
        *&buf[16] = v44 | 0x8000000000000000;
        *buf = v45;
        if (!v42)
        {
LABEL_111:
          v49 = &v45[v42];
          if (v39 >= 0)
          {
            v50 = v81;
          }

          else
          {
            v50 = v81[0];
          }

          memmove(v49, v50, v40);
          v49[v40] = 0;
          std::ifstream::basic_ifstream(__p, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[17])
            {
              goto LABEL_116;
            }
          }

          else if (__p[17])
          {
LABEL_116:
            std::istream::seekg();
            memset(buf, 170, 24);
            v51 = buf;
            support::fs::readCurrentLine(__p, buf);
            v52 = buf[23];
            v54 = *buf;
            v53 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v51 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v53 = buf[23];
            }

            if (v53 >= 35)
            {
              v55 = &v51[v53];
              v56 = v51;
              do
              {
                v57 = memchr(v56, 98, v53 - 34);
                if (!v57)
                {
                  break;
                }

                if (*v57 == 0x6320676F6C206262 && *(v57 + 1) == 0x6F697463656C6C6FLL && *(v57 + 2) == 0x20726F66202D206ELL && *(v57 + 3) == 0x6E67616964737973 && *(v57 + 27) == 0x65736F6E67616964)
                {
                  if (v57 != v55 && v57 - v51 != -1)
                  {
                    v28 = 1;
                    goto LABEL_148;
                  }

                  break;
                }

                v56 = v57 + 1;
                v53 = v55 - v56;
              }

              while (v55 - v56 >= 35);
            }

            v28 = 0;
LABEL_148:
            if (v52 < 0)
            {
              operator delete(v54);
            }

LABEL_150:
            __p[0] = *MEMORY[0x29EDC9518];
            *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C265CC0](&__p[2]);
            std::istream::~istream();
            MEMORY[0x29C265F10](&__p[53]);
            if (SHIBYTE(v81[2]) < 0)
            {
              goto LABEL_151;
            }

            goto LABEL_103;
          }

          if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
          {
            qword_2A18CA8B0 = 0;
            qword_2A18CA8B8 = 0;
            __cxa_guard_release(&qword_2A18CA8A8);
          }

          if (_MergedGlobals_3 == -1)
          {
            v62 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
LABEL_142:
              v28 = 0;
              goto LABEL_150;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
            v62 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_142;
            }
          }

          v69 = v81;
          if (SHIBYTE(v81[2]) < 0)
          {
            v69 = v81[0];
          }

          *buf = 136315138;
          *&buf[4] = v69;
          _os_log_error_impl(&dword_296D7D000, v62, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_142;
        }
      }

      v47 = *a1;
      if (v41 >= 0)
      {
        v48 = a1;
      }

      else
      {
        v48 = *a1;
      }

      memmove(v45, v48, v42);
      goto LABEL_111;
    }
  }

  else
  {
    v39 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v40 = HIBYTE(v81[2]);
    }

    else
    {
      v40 = v81[1];
    }

    if (v40)
    {
      goto LABEL_80;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
  }

  v46 = qword_2A18CA8B8;
  v28 = 0;
  if (os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v6;
    _os_log_impl(&dword_296D7D000, v46, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v28 = 0;
    if (SHIBYTE(v81[2]) < 0)
    {
LABEL_151:
      operator delete(v81[0]);
      v29 = v83;
      if (!v83)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else if (SHIBYTE(v81[2]) < 0)
  {
    goto LABEL_151;
  }

LABEL_103:
  v29 = v83;
  if (!v83)
  {
    goto LABEL_152;
  }

LABEL_104:
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_152:
  std::locale::~locale(v82);
  v63 = v84;
  if (v84)
  {
    v64 = v85;
    v65 = v84;
    if (v85 != v84)
    {
      do
      {
        v66 = *(v64 - 1);
        v64 -= 3;
        if (v66 < 0)
        {
          operator delete(*v64);
        }
      }

      while (v64 != v63);
      v65 = v84;
    }

    v85 = v63;
    operator delete(v65);
  }

  v67 = *MEMORY[0x29EDCA608];
  return v28;
}

void sub_296E16D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_296E16DD4(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va1, a26);
  va_start(va, a26);
  v27.__locale_ = va_arg(va1, std::locale::__imp *);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  std::vector<std::string>::~vector[abi:ne200100](&a3);
  if (a11 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_296E16DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296E16E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x296E16E20);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296E16E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x296E16DF8);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v8 = a3;
  v10 = a6;
  v154 = *MEMORY[0x29EDCA608];
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  memset(v141, 170, sizeof(v141));
  v11 = strlen(__s);
  v106 = v10;
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v11 | 7) + 1;
    }

    p_dst = operator new(v19);
    *(&__dst + 1) = v12;
    *v146 = v19 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    v146[7] = v11;
    p_dst = &__dst;
    if (!v11)
    {
      LOBYTE(__dst) = 0;
      v14 = v146[7];
      if ((v146[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v12);
  *(p_dst + v12) = 0;
  v14 = v146[7];
  if ((v146[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v14 - 21 < 2)
    {
      v15 = v8;
      v16 = v14 + 2;
      v17 = &__dst;
      v18 = 22;
LABEL_15:
      v20 = 2 * v18;
      if (v16 > 2 * v18)
      {
        v20 = v16;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v18 == 22;
      goto LABEL_24;
    }

    v27 = &__dst;
    *&v146[v14 - 16] = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  v14 = *(&__dst + 1);
  v18 = (*v146 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - *(&__dst + 1) >= 2)
  {
    v27 = __dst;
    *(__dst + *(&__dst + 1)) = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
LABEL_30:
      v146[7] = v28 & 0x7F;
LABEL_33:
      v26 = v27 + v28;
      goto LABEL_34;
    }

LABEL_32:
    *(&__dst + 1) = v28;
    goto LABEL_33;
  }

  v16 = *(&__dst + 1) + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*v146 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 2 - v18)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = __dst;
  v15 = v8;
  if (v18 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v24 = operator new(v22);
  v25 = v24;
  if (v14)
  {
    memmove(v24, v17, v14);
  }

  *&v25[v14] = 10798;
  if (!v23)
  {
    operator delete(v17);
  }

  *(&__dst + 1) = v16;
  *v146 = v22 | 0x8000000000000000;
  *&__dst = v25;
  v26 = &v25[v16];
  v8 = v15;
LABEL_34:
  *v26 = 0;
  v141[2] = *v146;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v140 = v29;
  *v141 = __dst;
  *&v139[16] = v29;
  *&v139[32] = v29;
  *v139 = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v139, v141, 0);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v137[32] = v30;
  v138 = v30;
  *v137 = v30;
  *&v137[16] = v30;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v137, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v31 = strlen(this);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  v108 = a5 == 0;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v33 = operator new(v34);
    __p[1] = v32;
    v136 = v34 | 0x8000000000000000;
    __p[0] = v33;
    goto LABEL_42;
  }

  HIBYTE(v136) = v31;
  v33 = __p;
  if (v31)
  {
LABEL_42:
    memcpy(v33, this, v32);
  }

  *(v32 + v33) = 0;
  std::locale::locale(&v129, v139);
  v130 = *&v139[8];
  v131 = *&v139[24];
  v132 = *&v139[40];
  v133 = v140;
  if (v140)
  {
    atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
  }

  v134 = *(&v140 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v129, &v142, 0);
  v36 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v38 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v143 - v142));
  if (v143 == v142)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(v142, v143, v39, 1, v37);
  memset(&v128, 0, sizeof(v128));
  v40 = v142;
  v105 = v143;
  if (v142 == v143)
  {
LABEL_192:
    if (!v8)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
    }

    else
    {
      v115 = *v10;
    }

    std::locale::locale(&v109, v137);
    v110 = *&v137[8];
    v111 = *&v137[24];
    v112 = *&v137[40];
    v113 = v138;
    if (v138)
    {
      atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
    }

    v114 = *(&v138 + 1);
    v92 = util::checkLogFileAge(&v115, v8, &v109);
    v93 = v113;
    if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v93->__on_zero_shared)(v93);
      std::__shared_weak_count::__release_weak(v93);
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v92)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
        {
          *v10->__r_.__value_.__l.__data_ = 0;
          v10->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v10->__r_.__value_.__s.__data_[0] = 0;
          *(&v10->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v115.__r_.__value_.__l.__data_);
    if (!v92)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v101 = v8;
  v103 = a5;
  while (1)
  {
    memset(&v127, 170, sizeof(v127));
    v107 = v40;
    v41 = &v127;
    if (*(v40 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v127, *v40, v40[1]);
    }

    else
    {
      v42 = *v40;
      v127.__r_.__value_.__r.__words[2] = v40[2];
      *&v127.__r_.__value_.__l.__data_ = v42;
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v128.__r_.__value_.__l.__size_;
    }

    v44 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    v45 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
    v46 = *&v127.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v127.__r_.__value_.__l.__size_;
        v41 = v127.__r_.__value_.__r.__words[0];
      }

      v48 = (v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v128 : v128.__r_.__value_.__r.__words[0];
      if (v47 >= size)
      {
        v69 = v41 + v47;
        v70 = v48->__r_.__value_.__s.__data_[0];
        v71 = v41;
        do
        {
          v72 = v47 - size;
          if (v72 == -1)
          {
            break;
          }

          v73 = memchr(v71, v70, v72 + 1);
          if (!v73)
          {
            break;
          }

          v74 = v73;
          if (!memcmp(v73, v48, size))
          {
            if (v74 == v69 || v74 - v41 == -1)
            {
              break;
            }

            v67 = 3;
            v10 = v106;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v71 = (v74 + 1);
          v47 = v69 - (v74 + 1);
        }

        while (v47 >= size);
      }
    }

    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v125 = v49;
    v122 = 0xAAAAAAAAAAAAAA00;
    v119[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v120 = 0;
    v121 = 0;
    v123 = 0;
    v124 = 0;
    LOBYTE(v125) = 0;
    BYTE8(v125) = 0;
    v126 = 0;
    memset(v119, 0, 41);
    if (v108)
    {
      v152 = v49;
      v149 = 0xAAAAAAAAAAAAAA00;
      *&v146[24] = v49;
      v147 = 0;
      v148 = 0;
      v150 = 0;
      v151 = 0;
      LOBYTE(v152) = 0;
      BYTE8(v152) = 0;
      v153 = 0;
      __dst = 0uLL;
      *v146 = 0uLL;
      if (v45 >= 0)
      {
        v50 = &v127;
      }

      else
      {
        v50 = v46;
      }

      if (v45 >= 0)
      {
        v51 = v44;
      }

      else
      {
        v51 = *(&v46 + 1);
      }

      *&v146[9] = 0uLL;
      v52 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v137, v50, (v50 + v51), &__dst, 0);
      v53 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v127;
      }

      else
      {
        v54 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v127.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v119, v54, (v54 + v53), &__dst, 0);
      v10 = v106;
      if (__dst)
      {
        *(&__dst + 1) = __dst;
        operator delete(__dst);
      }

      if (v52)
      {
        p_matched = &v119[0].__begin_->matched;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_matched = &v119[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          __dst = 0uLL;
          *v146 = 0;
          if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v106->__r_.__value_.__l.__data_);
            *&v106->__r_.__value_.__l.__data_ = __dst;
            v106->__r_.__value_.__r.__words[2] = *v146;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v106->__r_.__value_.__l.__data_ = __dst;
          v106->__r_.__value_.__r.__words[2] = *v146;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v80 = strlen(this);
          if (v80 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v81 = v80;
          if (v80 >= 0x17)
          {
            if ((v80 | 7) == 0x17)
            {
              v84 = 25;
            }

            else
            {
              v84 = (v80 | 7) + 1;
            }

            v82 = operator new(v84);
            v117[1] = v81;
            v118 = v84 | 0x8000000000000000;
            v117[0] = v82;
          }

          else
          {
            HIBYTE(v118) = v80;
            v82 = v117;
            if (!v80)
            {
              LOBYTE(v117[0]) = 0;
              if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v116 = *v106;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v116, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v117, &v116);
              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v118) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
                    {
                      qword_2A18CA8B0 = 0;
                      qword_2A18CA8B8 = 0;
                      __cxa_guard_release(&qword_2A18CA8A8);
                    }

                    if (_MergedGlobals_3 == -1)
                    {
                      v86 = qword_2A18CA8B8;
                      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
                      v86 = qword_2A18CA8B8;
                      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v106->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v87 = v106;
                    }

                    else
                    {
                      v87 = v106->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(__dst) = 136315138;
                    *(&__dst + 4) = v87;
                    _os_log_impl(&dword_296D7D000, v86, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &__dst, 0xCu);
LABEL_156:
                    if (&v128 != v106)
                    {
                      v88 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v88 >= 0)
                        {
                          v90 = v106;
                        }

                        else
                        {
                          v90 = v106->__r_.__value_.__r.__words[0];
                        }

                        if (v88 >= 0)
                        {
                          v91 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v91 = v106->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v128.__r_.__value_.__l.__data_, v90, v91);
                      }

                      else
                      {
                        if ((*(&v106->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v128 = *v106;
LABEL_185:
                          v67 = 0;
                          v106->__r_.__value_.__s.__data_[0] = 0;
                          *(&v106->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v128, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v67 = 0;
                      *v106->__r_.__value_.__l.__data_ = 0;
                      v106->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v67 = 2;
LABEL_167:
                  v89 = 1;
LABEL_168:
                  v108 = v89;
                  begin = v119[0].__begin_;
                  if (v119[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v118) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v117[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v82, this, v81);
          *(v81 + v82) = 0;
          if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v56 = &v119[1];
        if (v119[0].__end_ != v119[0].__begin_)
        {
          v56 = v119[0].__begin_;
        }

        i = v56->first.__i_;
        p_i = &v119[0].__begin_->second.__i_;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_i = &v119[1].__end_;
        }

        v59 = *p_i;
        v60 = *p_i - i;
        if (v60 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v60 > 0x16)
        {
          if ((v60 | 7) == 0x17)
          {
            v83 = 25;
          }

          else
          {
            v83 = (v60 | 7) + 1;
          }

          v61 = operator new(v83);
          *(&__dst + 1) = v60;
          *v146 = v83 | 0x8000000000000000;
          *&__dst = v61;
          if (v59 == i)
          {
LABEL_98:
            *(v61 + v60) = 0;
            if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v146[7] = *p_i - i;
          v61 = &__dst;
          if (v59 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v61, i, v60);
        goto LABEL_98;
      }

LABEL_166:
      v67 = 0;
      goto LABEL_167;
    }

    v62 = v45 < 0;
    if (v45 >= 0)
    {
      v63 = &v127;
    }

    else
    {
      v63 = v46;
    }

    if (v62)
    {
      v64 = *(&v46 + 1);
    }

    else
    {
      v64 = v44;
    }

    v65 = strlen(v103);
    v10 = v106;
    if (!v65)
    {
LABEL_165:
      std::string::__assign_external(&v128, v103);
      goto LABEL_166;
    }

    v66 = v65;
    if (v64 >= v65)
    {
      v75 = v63 + v64;
      v76 = *v103;
      v77 = v63;
      do
      {
        if (v64 - v66 == -1)
        {
          break;
        }

        v78 = memchr(v77, v76, v64 - v66 + 1);
        if (!v78)
        {
          break;
        }

        v79 = v78;
        if (!memcmp(v78, v103, v66))
        {
          v89 = 0;
          if (v79 != v75)
          {
            v67 = 0;
            if (v79 - v63 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v67 = 0;
          v108 = 0;
          begin = v119[0].__begin_;
          if (v119[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v77 = (v79 + 1);
        v64 = v75 - (v79 + 1);
      }

      while (v64 >= v66);
    }

    v67 = 0;
    v108 = 0;
    begin = v119[0].__begin_;
    if (v119[0].__begin_)
    {
LABEL_169:
      v119[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v40 = v107;
    if ((*(&v127.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v67 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v40 += 3;
    if (v40 == v105)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v127.__r_.__value_.__l.__data_);
  if (v67 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v67)
  {
    goto LABEL_57;
  }

LABEL_191:
  v8 = v101;
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if (v101)
  {
    goto LABEL_193;
  }

LABEL_209:
  v94 = v138;
  if (v138 && !atomic_fetch_add((v138 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    v95 = v140;
    if (!v140)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
LABEL_214:
      operator delete(v141[0]);
    }
  }

  else
  {
    std::locale::~locale(v137);
    v95 = v140;
    if (v140)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
      goto LABEL_214;
    }
  }

  v96 = v142;
  if (v142)
  {
    v97 = v143;
    v98 = v142;
    if (v143 != v142)
    {
      do
      {
        v99 = *(v97 - 1);
        v97 -= 3;
        if (v99 < 0)
        {
          operator delete(*v97);
        }
      }

      while (v97 != v96);
      v98 = v142;
    }

    v143 = v96;
    operator delete(v98);
  }

  v100 = *MEMORY[0x29EDCA608];
}

void sub_296E17C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, uint64_t a2)
{
  v202 = a1;
  v248 = *MEMORY[0x29EDCA608];
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v224 = 0u;
  v225 = 0u;
  v226 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v222[32] = v5;
  v223 = v5;
  *v222 = v5;
  *&v222[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = v7 + 64;
  v201 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    v11 = *a2;
    if (v6 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v10, v12, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v13 = v10 + v7;
  v14 = *(v4 + 3);
  v16 = *v4;
  v15 = *(v4 + 1);
  *(v13 + 2) = *(v4 + 2);
  *(v13 + 3) = v14;
  *v13 = v16;
  *(v13 + 1) = v15;
  v13[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v18 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v19 = buf;
      v20 = 22;
LABEL_22:
      v21 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v21 = v18;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v23 = v22;
      }

      else
      {
        v23 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v20 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v29 & 0x7F;
LABEL_40:
      v27 = v29 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v29;
    goto LABEL_40;
  }

  v18 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v20 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = buf[0].__begin_;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v24 = 0;
  v23 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v25 = operator new(v23);
  v26 = v25;
  if (value_high)
  {
    memmove(v25, v19, value_high);
  }

  *(&v26->first.__i_ + value_high) = 10798;
  if (!v24)
  {
    operator delete(v19);
  }

  buf[0].__end_ = v18;
  buf[0].__end_cap_.__value_ = (v23 | 0x8000000000000000);
  buf[0].__begin_ = v26;
  v27 = v18 + v26;
LABEL_41:
  *v27 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v222, __p, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v30;
  v221 = v30;
  v219 = v30;
  *&v218[0].__locale_ = v30;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v33 = v32 + 64;
  if (v32 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 <= 0x16)
  {
    memset(buf, 0, 24);
    v35 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v32 + 64;
LABEL_54:
    v36 = *a2;
    if (v31 >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    memmove(v35, v37, v32);
    goto LABEL_58;
  }

  if ((v33 | 7) == 0x17)
  {
    v34 = 25;
  }

  else
  {
    v34 = (v33 | 7) + 1;
  }

  v35 = operator new(v34);
  buf[0].__end_ = (v32 + 64);
  buf[0].__end_cap_.__value_ = (v34 | 0x8000000000000000);
  buf[0].__begin_ = v35;
  if (v32)
  {
    goto LABEL_54;
  }

LABEL_58:
  v38 = v35 + v32;
  v39 = *(v4 + 3);
  v41 = *v4;
  v40 = *(v4 + 1);
  *(v38 + 2) = *(v4 + 2);
  *(v38 + 3) = v39;
  *v38 = v41;
  *(v38 + 1) = v40;
  v38[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v43 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v44 = buf;
      v45 = 22;
LABEL_66:
      v46 = 2 * v45;
      if (v43 > 2 * v45)
      {
        v46 = v43;
      }

      if ((v46 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v46 | 7) + 1;
      }

      if (v46 >= 0x17)
      {
        v48 = v47;
      }

      else
      {
        v48 = 23;
      }

      v49 = v45 == 22;
      goto LABEL_75;
    }

    v53 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v52 = v53 + v54;
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v45 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v45 - buf[0].__end_ >= 0x1D)
  {
    v53 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v43 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v45 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = buf[0].__begin_;
  if (v45 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v49 = 0;
  v48 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v50 = operator new(v48);
  v51 = v50;
  if (end)
  {
    memmove(v50, v44, end);
  }

  qmemcpy(v51 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v49)
  {
    operator delete(v44);
  }

  buf[0].__end_ = v43;
  buf[0].__end_cap_.__value_ = (v48 | 0x8000000000000000);
  buf[0].__begin_ = v51;
  v52 = v43 + v51;
LABEL_83:
  *v52 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v218, __p, 0);
  if ((__p[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v55 = v202;
    if ((*(v202 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(*__p);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v55 = v202;
  if ((*(v202 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v217 = *v55;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v217, v55->__r_.__value_.__l.__data_, v55->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v211, v222);
  v212 = *&v222[8];
  v213 = *&v222[24];
  v214 = *&v222[40];
  v215 = v223;
  if (v223)
  {
    atomic_fetch_add_explicit((v223 + 8), 1uLL, memory_order_relaxed);
  }

  v216 = *(&v223 + 1);
  support::fs::getFilteredFiles(&v217, &v211, &v227, 0);
  v56 = v215;
  if (v215 && !atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
    std::locale::~locale(&v211);
    if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      v58 = v227;
      v57 = v228;
      if (v227 == v228)
      {
        goto LABEL_268;
      }

      goto LABEL_99;
    }
  }

  else
  {
    std::locale::~locale(&v211);
    if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }
  }

  operator delete(v217.__r_.__value_.__l.__data_);
  v58 = v227;
  v57 = v228;
  if (v227 == v228)
  {
    goto LABEL_268;
  }

LABEL_99:
  p_end_cap = &buf[1].__end_cap_;
  v205 = &buf[1];
  v206 = &v225;
  p_end = &buf[1].__end_;
  v207 = &buf[1].__end_cap_;
  v208 = v57;
  while (2)
  {
    *&v60 = 0xAAAAAAAAAAAAAAAALL;
    *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&p_end_cap[4].__value_ = v60;
    *&p_end_cap[6].__value_ = v60;
    *&p_end_cap->__value_ = v60;
    *&p_end_cap[2].__value_ = v60;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    memset(buf, 0, 41);
    v237 = v60;
    v234 = 0xAAAAAAAAAAAAAA00;
    v231 = 0xAAAAAAAAAAAAAAAALL;
    v232 = 0;
    v233 = 0;
    v235 = 0;
    v236 = 0;
    LOBYTE(v237) = 0;
    BYTE8(v237) = 0;
    v238 = 0;
    memset(__p, 0, sizeof(__p));
    second = *(&v58->matched + 7);
    if (second >= 0)
    {
      first = v58;
    }

    else
    {
      first = v58->first;
    }

    if (second < 0)
    {
      second = v58->second;
    }

    v63 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v218, first, &second[first], __p, 0);
    v64 = *(&v58->matched + 7);
    if (v64 >= 0)
    {
      v65 = v58;
    }

    else
    {
      v65 = v58->first;
    }

    if (v64 < 0)
    {
      v64 = v58->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v65, &v64[v65], __p, 0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    v66 = buf[0].__begin_;
    if (!v63)
    {
      goto LABEL_258;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = p_end_cap;
    }

    if (*p_matched)
    {
      v68 = v205;
      if (buf[0].__end_ != buf[0].__begin_)
      {
        v68 = buf[0].__begin_;
      }

      i = v68->first.__i_;
      p_second = &buf[0].__begin_->second;
      if (buf[0].__end_ == buf[0].__begin_)
      {
        p_second = p_end;
      }

      v71 = p_second->__i_;
      v72 = p_second->__i_ - i;
      if (v72 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v72 > 0x16)
      {
        if ((v72 | 7) == 0x17)
        {
          v160 = 25;
        }

        else
        {
          v160 = (v72 | 7) + 1;
        }

        p_dst = operator new(v160);
        *(&__dst + 1) = v72;
        v210 = v160 | 0x8000000000000000;
        *&__dst = p_dst;
        if (v71 == i)
        {
          goto LABEL_125;
        }
      }

      else
      {
        HIBYTE(v210) = LOBYTE(p_second->__i_) - i;
        p_dst = &__dst;
        if (v71 == i)
        {
LABEL_125:
          *(p_dst + v72) = 0;
          v74 = HIBYTE(v210);
          v76 = *(&__dst + 1);
          v75 = __dst;
          goto LABEL_127;
        }
      }

      memmove(p_dst, i, v72);
      goto LABEL_125;
    }

    v76 = 0;
    v75 = 0;
    v74 = 0;
    __dst = 0uLL;
    v210 = 0;
LABEL_127:
    if ((v74 & 0x80u) == 0)
    {
      v77 = &__dst;
    }

    else
    {
      v77 = v75;
    }

    if ((v74 & 0x80u) == 0)
    {
      v78 = v74;
    }

    else
    {
      v78 = v76;
    }

    if (v78 > 0x20)
    {
      if (v78 <= 0x40)
      {
        if ((v74 & 0x80u) == 0)
        {
          v75 = &__dst;
        }

        v82 = *(v75 + 3);
        v83 = *(v77 + v78 - 16);
        v84 = *v77 - 0x3C5A37A36834CED9 * (v83 + v78);
        v85 = __ROR8__(v84 + v82, 52);
        v87 = *(v75 + 1);
        v86 = *(v75 + 2);
        v88 = v84 + v87;
        v89 = __ROR8__(v88, 7);
        v90 = v88 + v86;
        v91 = v89 + __ROR8__(*v77 - 0x3C5A37A36834CED9 * (v83 + v78), 37) + v85 + __ROR8__(v90, 31);
        v92 = *(v77 + v78 - 32) + v86;
        v93 = *(v77 + v78 - 8) + v82;
        v94 = __ROR8__(v93 + v92, 52);
        v95 = __ROR8__(v92, 37);
        v96 = *(v77 + v78 - 24) + v92;
        v97 = __ROR8__(v96, 7);
        v98 = v96 + v83;
        v99 = v98 + v93;
        v100 = v90 + v82 + v95 + v97 + v94 + __ROR8__(v98, 31);
        v101 = 0x9AE16A3B2F90404FLL;
        v102 = v91 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v99 + v91) - 0x651E95C4D06FBFB1 * v100) ^ ((0xC3A5C85C97CB3127 * (v99 + v91) - 0x651E95C4D06FBFB1 * v100) >> 47));
        goto LABEL_145;
      }

      v109 = *(v77 + v78 - 48);
      v110 = *(v77 + v78 - 40);
      v111 = *(v77 + v78 - 24);
      v112 = *(v77 + v78 - 56);
      v114 = *(v77 + v78 - 16);
      v113 = *(v77 + v78 - 8);
      v115 = v112 + v114;
      v116 = 0x9DDFEA08EB382D69 * (v111 ^ ((0x9DDFEA08EB382D69 * (v111 ^ (v109 + v78))) >> 47) ^ (0x9DDFEA08EB382D69 * (v111 ^ (v109 + v78))));
      v117 = 0x9DDFEA08EB382D69 * (v116 ^ (v116 >> 47));
      v118 = *(v77 + v78 - 64) + v78;
      v119 = v109 + v112 + v118;
      v120 = __ROR8__(v119, 44) + v118;
      v121 = __ROR8__(v118 + v110 + v117, 21);
      v122 = v119 + v110;
      v123 = v120 + v121;
      v124 = v115 + *(v77 + v78 - 32) - 0x4B6D499041670D8DLL;
      v125 = v111 + v114 + v124;
      v126 = v125 + v113;
      v127 = __ROR8__(v125, 44) + v124 + __ROR8__(v124 + v110 + v113, 21);
      v128 = v77 + 2;
      v129 = *v77 - 0x4B6D499041670D8DLL * v110;
      v130 = -((v78 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v131 = *(v128 - 3);
        v132 = v129 + v122 + v115 + v131;
        v133 = v128[2];
        v134 = v128[3];
        v135 = v128[1];
        v115 = v135 + v122 - 0x4B6D499041670D8DLL * __ROR8__(v115 + v123 + v133, 42);
        v136 = v117 + v126;
        v137 = *(v128 - 2);
        v138 = *(v128 - 1);
        v139 = *(v128 - 4) - 0x4B6D499041670D8DLL * v123;
        v140 = v139 + v126 + v138;
        v141 = v139 + v131 + v137;
        v122 = v141 + v138;
        v142 = __ROR8__(v141, 44) + v139;
        v143 = (0xB492B66FBE98F273 * __ROR8__(v132, 37)) ^ v127;
        v129 = 0xB492B66FBE98F273 * __ROR8__(v136, 33);
        v123 = v142 + __ROR8__(v140 + v143, 21);
        v144 = v129 + v127 + *v128;
        v126 = v135 + v133 + v144 + v134;
        v127 = __ROR8__(v135 + v133 + v144, 44) + v144 + __ROR8__(v115 + v137 + v144 + v134, 21);
        v128 += 8;
        v117 = v143;
        v130 += 64;
      }

      while (v130);
      v145 = v129 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v127 ^ ((0x9DDFEA08EB382D69 * (v127 ^ v123)) >> 47) ^ (0x9DDFEA08EB382D69 * (v127 ^ v123)))) ^ ((0x9DDFEA08EB382D69 * (v127 ^ ((0x9DDFEA08EB382D69 * (v127 ^ v123)) >> 47) ^ (0x9DDFEA08EB382D69 * (v127 ^ v123)))) >> 47));
      v146 = 0x9DDFEA08EB382D69 * (v145 ^ (v143 - 0x4B6D499041670D8DLL * (v115 ^ (v115 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v126 ^ ((0x9DDFEA08EB382D69 * (v126 ^ v122)) >> 47) ^ (0x9DDFEA08EB382D69 * (v126 ^ v122)))) ^ ((0x9DDFEA08EB382D69 * (v126 ^ ((0x9DDFEA08EB382D69 * (v126 ^ v122)) >> 47) ^ (0x9DDFEA08EB382D69 * (v126 ^ v122)))) >> 47))));
      v81 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v145 ^ (v146 >> 47) ^ v146)) ^ ((0x9DDFEA08EB382D69 * (v145 ^ (v146 >> 47) ^ v146)) >> 47));
    }

    else
    {
      if (v78 > 0x10)
      {
        v103 = 0xB492B66FBE98F273 * *v77;
        if ((v74 & 0x80u) == 0)
        {
          v75 = &__dst;
        }

        v104 = *(v75 + 1);
        v105 = __ROR8__(0x9AE16A3B2F90404FLL * *(v77 + v78 - 8), 30) + __ROR8__(v103 - v104, 43) - 0x3C5A37A36834CED9 * *(v77 + v78 - 16);
        v106 = v103 + v78 + __ROR8__(v104 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v77 + v78 - 8);
        v107 = v105 ^ v106;
        v101 = 0x9DDFEA08EB382D69;
        v108 = v106 ^ ((0x9DDFEA08EB382D69 * v107) >> 47) ^ (0x9DDFEA08EB382D69 * v107);
        goto LABEL_144;
      }

      if (v78 >= 9)
      {
        v79 = *(v77 + v78 - 8);
        v80 = __ROR8__(v79 + v78, v78);
        v81 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v80 ^ ((0x9DDFEA08EB382D69 * (v80 ^ *v77)) >> 47) ^ (0x9DDFEA08EB382D69 * (v80 ^ *v77)))) ^ ((0x9DDFEA08EB382D69 * (v80 ^ ((0x9DDFEA08EB382D69 * (v80 ^ *v77)) >> 47) ^ (0x9DDFEA08EB382D69 * (v80 ^ *v77)))) >> 47))) ^ v79;
        goto LABEL_149;
      }

      if (v78 >= 4)
      {
        v161 = *(v77 + v78 - 4);
        v101 = 0x9DDFEA08EB382D69;
        v162 = 0x9DDFEA08EB382D69 * ((v78 + (8 * *v77)) ^ v161);
        v108 = v161 ^ (v162 >> 47) ^ v162;
LABEL_144:
        v102 = 0x9DDFEA08EB382D69 * v108;
LABEL_145:
        v81 = (v102 ^ (v102 >> 47)) * v101;
        goto LABEL_149;
      }

      v81 = 0x9AE16A3B2F90404FLL;
      if (v78)
      {
        v181 = (0xC949D7C7509E6557 * (v78 | (4 * *(v77 + v78 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v77 | (*(v77 + (v78 >> 1)) << 8)));
        v81 = 0x9AE16A3B2F90404FLL * (v181 ^ (v181 >> 47));
      }
    }

LABEL_149:
    v147 = *(&v224 + 1);
    if (!*(&v224 + 1))
    {
      v149 = 0xAAAAAAAAAAAAAAAALL;
LABEL_191:
      v163 = operator new(0x28uLL);
      *__p = v163;
      *&__p[8] = &v224;
      *&__p[16] = 1;
      *v163 = 0;
      v163[1] = v81;
      *(v163 + 1) = __dst;
      v163[4] = v210;
      __dst = 0uLL;
      v210 = 0;
      v164 = (*(&v225 + 1) + 1);
      if (v147 && (*&v226 * v147) >= v164)
      {
        v81 = v149;
        goto LABEL_252;
      }

      v165 = (v147 & (v147 - 1)) != 0;
      if (v147 < 3)
      {
        v165 = 1;
      }

      v166 = v165 | (2 * v147);
      v167 = vcvtps_u32_f32(v164 / *&v226);
      if (v166 <= v167)
      {
        prime = v167;
      }

      else
      {
        prime = v166;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v147 = *(&v224 + 1);
      }

      if (prime <= v147)
      {
        if (prime >= v147)
        {
          goto LABEL_240;
        }

        v177 = vcvtps_u32_f32(*(&v225 + 1) / *&v226);
        if (v147 < 3 || (v178 = vcnt_s8(v147), v178.i16[0] = vaddlv_u8(v178), v178.u32[0] > 1uLL))
        {
          v177 = std::__next_prime(v177);
        }

        else
        {
          v179 = 1 << -__clz(v177 - 1);
          if (v177 >= 2)
          {
            v177 = v179;
          }
        }

        if (prime <= v177)
        {
          prime = v177;
        }

        if (prime >= v147)
        {
          v147 = *(&v224 + 1);
          v183 = *(&v224 + 1) - 1;
          if ((*(&v224 + 1) & (*(&v224 + 1) - 1)) != 0)
          {
LABEL_250:
            if (v81 >= v147)
            {
              v81 %= v147;
            }

LABEL_252:
            v185 = v224;
            v186 = *(v224 + 8 * v81);
            if (v186)
            {
              *v163 = *v186;
            }

            else
            {
              *v163 = v225;
              *&v225 = v163;
              *(v185 + 8 * v81) = v206;
              if (!*v163)
              {
LABEL_255:
                ++*(&v225 + 1);
                if ((v210 & 0x8000000000000000) != 0)
                {
                  goto LABEL_256;
                }

                goto LABEL_257;
              }

              v187 = *(*v163 + 8);
              if ((v147 & (v147 - 1)) != 0)
              {
                if (v187 >= v147)
                {
                  v187 %= v147;
                }

                v186 = (v185 + 8 * v187);
              }

              else
              {
                v186 = (v185 + 8 * (v187 & (v147 - 1)));
              }
            }

            *v186 = v163;
            goto LABEL_255;
          }

LABEL_241:
          v81 &= v183;
          goto LABEL_252;
        }

        if (!prime)
        {
          v182 = v224;
          *&v224 = 0;
          if (v182)
          {
            operator delete(v182);
          }

          v147 = 0;
          *(&v224 + 1) = 0;
          v183 = -1;
          goto LABEL_241;
        }
      }

      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v169 = operator new(8 * prime);
      v170 = v224;
      *&v224 = v169;
      if (v170)
      {
        operator delete(v170);
        v169 = v224;
      }

      *(&v224 + 1) = prime;
      bzero(v169, 8 * prime);
      v171 = v225;
      if (!v225)
      {
LABEL_249:
        v147 = prime;
        v183 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      v172 = *(v225 + 8);
      v173 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v174 = v172 & v173;
        *(v169 + v174) = v206;
        for (j = *v171; *v171; j = *v171)
        {
          v176 = j[1] & v173;
          if (v176 == v174)
          {
            v171 = j;
          }

          else if (*(v169 + v176))
          {
            *v171 = *j;
            *j = **(v169 + v176);
            **(v169 + v176) = j;
          }

          else
          {
            *(v169 + v176) = v171;
            v171 = j;
            v174 = v176;
          }
        }

        goto LABEL_249;
      }

      if (v172 < prime)
      {
        *(v169 + v172) = v206;
        v180 = *v171;
        if (*v171)
        {
          goto LABEL_244;
        }

        goto LABEL_239;
      }

      v172 %= prime;
      *(v169 + v172) = v206;
      v180 = *v171;
      if (!*v171)
      {
LABEL_239:
        v147 = prime;
LABEL_240:
        v183 = v147 - 1;
        if ((v147 & (v147 - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      while (1)
      {
LABEL_244:
        v184 = v180[1];
        if (v184 >= prime)
        {
          v184 %= prime;
        }

        if (v184 == v172)
        {
          goto LABEL_243;
        }

        if (*(v169 + v184))
        {
          *v171 = *v180;
          *v180 = **(v169 + v184);
          **(v169 + v184) = v180;
          v180 = v171;
LABEL_243:
          v171 = v180;
          v180 = *v180;
          if (!v180)
          {
            goto LABEL_249;
          }
        }

        else
        {
          *(v169 + v184) = v171;
          v171 = v180;
          v180 = *v180;
          v172 = v184;
          if (!v180)
          {
            goto LABEL_249;
          }
        }
      }
    }

    v148 = vcnt_s8(*(&v224 + 8));
    v148.i16[0] = vaddlv_u8(v148);
    if (v148.u32[0] > 1uLL)
    {
      v149 = v81;
      if (v81 >= *(&v224 + 1))
      {
        v149 = v81 % *(&v224 + 1);
      }
    }

    else
    {
      v149 = (*(&v224 + 1) - 1) & v81;
    }

    v150 = *(v224 + 8 * v149);
    if (!v150)
    {
      goto LABEL_191;
    }

    v151 = *v150;
    if (!*v150)
    {
      goto LABEL_191;
    }

    if (v148.u32[0] < 2uLL)
    {
      v203 = v74;
      while (1)
      {
        v156 = v151[1];
        if (v156 == v81)
        {
          v157 = *(v151 + 39);
          v158 = v157;
          if (v157 < 0)
          {
            v157 = v151[3];
          }

          if (v157 == v78)
          {
            v159 = v158 >= 0 ? (v151 + 2) : v151[2];
            if (!memcmp(v159, v77, v78))
            {
              if ((v203 & 0x80) != 0)
              {
                goto LABEL_256;
              }

              goto LABEL_257;
            }
          }
        }

        else if ((v156 & (v147 - 1)) != v149)
        {
          goto LABEL_191;
        }

        v151 = *v151;
        if (!v151)
        {
          goto LABEL_191;
        }
      }
    }

    while (1)
    {
      v152 = v151[1];
      if (v152 == v81)
      {
        break;
      }

      if (v152 >= v147)
      {
        v152 %= v147;
      }

      if (v152 != v149)
      {
        goto LABEL_191;
      }

LABEL_160:
      v151 = *v151;
      if (!v151)
      {
        goto LABEL_191;
      }
    }

    v153 = *(v151 + 39);
    v154 = v153;
    if (v153 < 0)
    {
      v153 = v151[3];
    }

    if (v153 != v78)
    {
      goto LABEL_160;
    }

    v155 = v154 >= 0 ? (v151 + 2) : v151[2];
    if (memcmp(v155, v77, v78))
    {
      goto LABEL_160;
    }

    if ((v74 & 0x80) != 0)
    {
LABEL_256:
      operator delete(__dst);
    }

LABEL_257:
    v66 = buf[0].__begin_;
    p_end_cap = v207;
    v57 = v208;
LABEL_258:
    if (v66)
    {
      buf[0].__end_ = v66;
      operator delete(v66);
    }

    if (++v58 != v57)
    {
      continue;
    }

    break;
  }

LABEL_268:
  v188 = *(&v225 + 1);
  v189 = v221;
  if (v221 && !atomic_fetch_add((v221 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v189->__on_zero_shared)(v189);
    std::__shared_weak_count::__release_weak(v189);
  }

  std::locale::~locale(v218);
  v190 = v223;
  v191 = v201;
  if (v223 && !atomic_fetch_add((v223 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v190->__on_zero_shared)(v190);
    std::__shared_weak_count::__release_weak(v190);
  }

  std::locale::~locale(v222);
  operator delete(v191);
  v192 = v225;
  if (v225)
  {
    do
    {
      v200 = *v192;
      if (*(v192 + 39) < 0)
      {
        operator delete(v192[2]);
      }

      operator delete(v192);
      v192 = v200;
    }

    while (v200);
  }

  v193 = v224;
  *&v224 = 0;
  if (v193)
  {
    operator delete(v193);
  }

  v194 = v227;
  if (v227)
  {
    v195 = v228;
    v196 = v227;
    if (v228 != v227)
    {
      do
      {
        v197 = *(v195 - 1);
        v195 -= 3;
        if (v197 < 0)
        {
          operator delete(*v195);
        }
      }

      while (v195 != v194);
      v196 = v227;
    }

    v228 = v194;
    operator delete(v196);
  }

  v198 = *MEMORY[0x29EDCA608];
  return v188;
}

void sub_296E19340(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<std::string>::~unordered_set[abi:ne200100](&v3);
  std::vector<std::string>::~vector[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_296E19370(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t util::compareTwoStringsWithPattern(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93 = 0xAAAAAAAAAAAAAA00;
  v90[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v96 = v5;
  v91 = 0;
  v92 = 0;
  v94 = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  BYTE8(v96) = 0;
  v97 = 0;
  memset(v90, 0, 41);
  v88 = v5;
  v89 = v5;
  *&v86[0].__locale_ = v5;
  v87 = v5;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v86, a3, 0);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  __p = 0;
  v81 = 0;
  v82 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v6;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  *(v99 + 9) = 0uLL;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v8, (v8 + v7), &__dst, 0);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v11, (v11 + v10), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v9)
  {
LABEL_124:
    v38 = 0;
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  v79 = a2;
  end = v90[0].__end_;
  begin = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!begin->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v20 = v84;
      v19 = v85;
      if (v84 >= v85)
      {
LABEL_26:
        v21 = v83;
        v22 = v20 - v83;
        v23 = 0xAAAAAAAAAAAAAAABLL * (v20 - v83);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v83) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v27 = operator new(24 * v26);
        }

        else
        {
          v27 = 0;
        }

        v29 = &v27[24 * v23];
        v30 = &v27[24 * v26];
        *v29 = __dst;
        *(v29 + 2) = *&v99[0];
        v14 = (v29 + 24);
        v31 = &v29[-v22];
        memcpy(&v29[-v22], v83, v22);
        v83 = v31;
        v85 = v30;
        if (v21)
        {
          operator delete(v21);
        }

        goto LABEL_17;
      }

LABEL_16:
      *v20 = __dst;
      v20[2] = *&v99[0];
      v14 = v20 + 3;
LABEL_17:
      v84 = v14;
      if (++begin == end)
      {
        goto LABEL_44;
      }
    }

    i = begin->first.__i_;
    v16 = begin->second.__i_;
    v17 = v16 - begin->first.__i_;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 > 0x16)
    {
      if ((v17 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v17 | 7) + 1;
      }

      p_dst = operator new(v28);
      *(&__dst + 1) = v17;
      *&v99[0] = v28 | 0x8000000000000000;
      *&__dst = p_dst;
      if (v16 == i)
      {
LABEL_23:
        *(p_dst + v17) = 0;
        v20 = v84;
        v19 = v85;
        if (v84 >= v85)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    else
    {
      BYTE7(v99[0]) = v16 - LOBYTE(begin->first.__i_);
      p_dst = &__dst;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    memmove(p_dst, i, v17);
    goto LABEL_23;
  }

  v14 = 0;
LABEL_44:
  v32 = v83;
  if (v14 - v83 != 24)
  {
    v33 = v83 + 3;
    while (v33 != v14)
    {
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      *v32 = *(v32 + 3);
      v32[2] = v32[5];
      *(v32 + 47) = 0;
      v33 = v32 + 6;
      *(v32 + 24) = 0;
      v32 += 3;
    }

    while (v14 != v32)
    {
      v34 = *(v14 - 1);
      v14 -= 3;
      if (v34 < 0)
      {
        operator delete(*v14);
      }
    }

    v84 = v32;
  }

  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v35;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v36 = *(v79 + 23);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v79;
  }

  else
  {
    v37 = *v79;
  }

  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v79 + 8);
  }

  *(v99 + 9) = 0uLL;
  v38 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v37, (v37 + v36), &__dst, 0);
  v39 = *(v79 + 23);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v79;
  }

  else
  {
    v40 = *v79;
  }

  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v79 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v40, (v40 + v39), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v38)
  {
LABEL_129:
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

LABEL_130:
    v73 = v81;
    while (v73 != v61)
    {
      v74 = *(v73 - 1);
      v73 -= 3;
      if (v74 < 0)
      {
        operator delete(*v73);
      }
    }

    operator delete(v61);
    goto LABEL_135;
  }

  v42 = v90[0].__end_;
  v41 = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!v41->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v49 = v81;
      v48 = v82;
      if (v81 >= v82)
      {
LABEL_79:
        v50 = __p;
        v51 = v49 - __p;
        v52 = 0xAAAAAAAAAAAAAAABLL * (v49 - __p);
        v53 = v52 + 1;
        if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v54 = 0xAAAAAAAAAAAAAAABLL * ((v48 - __p) >> 3);
        if (2 * v54 > v53)
        {
          v53 = 2 * v54;
        }

        if (v54 >= 0x555555555555555)
        {
          v55 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          if (v55 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = operator new(24 * v55);
        }

        else
        {
          v56 = 0;
        }

        v58 = &v56[24 * v52];
        v59 = &v56[24 * v55];
        *v58 = __dst;
        *(v58 + 2) = *&v99[0];
        v43 = (v58 + 24);
        v60 = &v58[-v51];
        memcpy(&v58[-v51], __p, v51);
        __p = v60;
        v82 = v59;
        if (v50)
        {
          operator delete(v50);
        }

        goto LABEL_70;
      }

LABEL_69:
      *v49 = __dst;
      v49[2] = *&v99[0];
      v43 = v49 + 3;
LABEL_70:
      v81 = v43;
      if (++v41 == v42)
      {
        goto LABEL_97;
      }
    }

    v44 = v41->first.__i_;
    v45 = v41->second.__i_;
    v46 = v45 - v41->first.__i_;
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v46 > 0x16)
    {
      if ((v46 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v46 | 7) + 1;
      }

      v47 = operator new(v57);
      *(&__dst + 1) = v46;
      *&v99[0] = v57 | 0x8000000000000000;
      *&__dst = v47;
      if (v45 == v44)
      {
LABEL_76:
        *(v47 + v46) = 0;
        v49 = v81;
        v48 = v82;
        if (v81 >= v82)
        {
          goto LABEL_79;
        }

        goto LABEL_69;
      }
    }

    else
    {
      BYTE7(v99[0]) = v45 - LOBYTE(v41->first.__i_);
      v47 = &__dst;
      if (v45 == v44)
      {
        goto LABEL_76;
      }
    }

    memmove(v47, v44, v46);
    goto LABEL_76;
  }

  v43 = 0;
LABEL_97:
  v61 = __p;
  if (v43 - __p != 24)
  {
    v62 = __p;
    if (__p + 3 != v43)
    {
      v62 = __p;
      do
      {
        if (*(v62 + 23) < 0)
        {
          operator delete(*v62);
        }

        *v62 = *(v62 + 3);
        v62[2] = v62[5];
        *(v62 + 47) = 0;
        v63 = v62 + 6;
        *(v62 + 24) = 0;
        v62 += 3;
      }

      while (v63 != v43);
    }

    while (v43 != v62)
    {
      v64 = *(v43 - 1);
      v43 -= 3;
      if (v64 < 0)
      {
        operator delete(*v43);
      }
    }

    v81 = v62;
  }

  v65 = v83;
  if (v83 == v84)
  {
    v38 = 1;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  do
  {
    v66 = *(v65 + 23);
    if (v66 >= 0)
    {
      v67 = *(v65 + 23);
    }

    else
    {
      v67 = v65[1];
    }

    v68 = *(v61 + 23);
    v69 = v68;
    if (v68 < 0)
    {
      v68 = v61[1];
    }

    if (v67 != v68)
    {
      v38 = 0;
      goto LABEL_129;
    }

    if (v66 >= 0)
    {
      v70 = v65;
    }

    else
    {
      v70 = *v65;
    }

    v71 = *v61;
    if (v69 >= 0)
    {
      v72 = v61;
    }

    else
    {
      v72 = *v61;
    }

    if (memcmp(v70, v72, v67))
    {
      goto LABEL_124;
    }

    v65 += 3;
    v61 += 3;
  }

  while (v65 != v84);
  v38 = 1;
  v61 = __p;
  if (__p)
  {
    goto LABEL_130;
  }

LABEL_135:
  if (v83)
  {
    v75 = v84;
    while (v75 != v83)
    {
      v76 = *(v75 - 1);
      v75 -= 3;
      if (v76 < 0)
      {
        operator delete(*v75);
      }
    }

    operator delete(v83);
  }

  v77 = v89;
  if (v89 && !atomic_fetch_add((v89 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
  }

  std::locale::~locale(v86);
  if (v90[0].__begin_)
  {
    v90[0].__end_ = v90[0].__begin_;
    operator delete(v90[0].__begin_);
  }

  return v38;
}

void sub_296E19B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 208);
  if (v28)
  {
    *(v26 - 200) = v28;
    operator delete(v28);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a11);
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_0()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

const void **ctu::cf::CFSharedRef<__CFReadStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
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
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
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

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C265CC0](a1 + 2);

  return std::istream::~istream();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(uint64_t a1, const void **a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  __s2 = a2 - 3;
  v277 = a2;
  v266 = a2 - 9;
  v267 = a2 - 6;
  k = a1;
  while (1)
  {
    a1 = k;
    v9 = a2 - k;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, __s2).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, __s2).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, __s2).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v117 = (a2 - 3);
        v118 = *(a2 - 1);
        if (v118 >= 0)
        {
          v119 = a2 - 3;
        }

        else
        {
          v119 = *(a2 - 3);
        }

        if (v118 >= 0)
        {
          v120 = *(a2 - 1);
        }

        else
        {
          v120 = *(a2 - 2);
        }

        v121 = *(a1 + 23);
        v122 = *a1;
        v123 = *(a1 + 8);
        if (v121 >= 0)
        {
          v124 = a1;
        }

        else
        {
          v124 = *a1;
        }

        if (v121 >= 0)
        {
          v125 = *(a1 + 23);
        }

        else
        {
          v125 = *(a1 + 8);
        }

        if (v125 >= v120)
        {
          v126 = v120;
        }

        else
        {
          v126 = v125;
        }

        v127 = memcmp(v119, v124, v126);
        if (v127)
        {
          if (v127 < 0)
          {
            return result;
          }
        }

        else if (v120 <= v125)
        {
          return result;
        }

        v264 = *(a1 + 16);
        v265 = *(a2 - 1);
        result = *v117;
        *a1 = *v117;
        *(a1 + 16) = v265;
        *(a2 - 3) = v122;
        *(a2 - 2) = v123;
        *(a2 - 1) = v264;
        return result;
      }
    }

    if (v9 <= 575)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return result;
        }

        v128 = (a1 + 24);
        if ((a1 + 24) == a2)
        {
          return result;
        }

        v129 = 0;
        v130 = a1;
        while (2)
        {
          v132 = v130;
          v130 = v128;
          v133 = v132[2].n128_i8[15];
          if (v133 >= 0)
          {
            v134 = v128;
          }

          else
          {
            v134 = v132[1].n128_u64[1];
          }

          if (v133 >= 0)
          {
            v135 = v132[2].n128_u8[15];
          }

          else
          {
            v135 = v132[2].n128_u64[0];
          }

          v136 = v132[1].n128_i8[7];
          if (v136 >= 0)
          {
            v137 = v132;
          }

          else
          {
            v137 = v132->n128_u64[0];
          }

          if (v136 >= 0)
          {
            v138 = v132[1].n128_u8[7];
          }

          else
          {
            v138 = v132->n128_u64[1];
          }

          if (v138 >= v135)
          {
            v139 = v135;
          }

          else
          {
            v139 = v138;
          }

          v140 = memcmp(v134, v137, v139);
          if (v140)
          {
            if (v140 < 0)
            {
LABEL_269:
              v128 = (v130 + 24);
              v129 += 24;
              if ((v130 + 24) == v277)
              {
                return result;
              }

              continue;
            }
          }

          else if (v135 <= v138)
          {
            goto LABEL_269;
          }

          break;
        }

        v141 = *v130;
        v280 = *(v130 + 16);
        v279 = v141;
        if (v280 >= 0)
        {
          v142 = &v279;
        }

        else
        {
          v142 = v141.n128_u64[0];
        }

        if (v280 >= 0)
        {
          v143 = HIBYTE(v280);
        }

        else
        {
          v143 = v141.n128_u64[1];
        }

        *(v130 + 16) = v132[1].n128_u64[0];
        *v130 = *v132;
        v132[1].n128_u8[7] = 0;
        v132->n128_u8[0] = 0;
        v131 = a1;
        if (v132 != a1)
        {
          v144 = v129;
          while (1)
          {
            v145 = a1 + v144;
            v146 = *(a1 + v144 - 24);
            v147 = *(a1 + v144 - 1);
            if (v147 >= 0)
            {
              v148 = (a1 + v144 - 24);
            }

            else
            {
              v148 = *(a1 + v144 - 24);
            }

            if (v147 >= 0)
            {
              v149 = *(a1 + v144 - 1);
            }

            else
            {
              v149 = *(a1 + v144 - 16);
            }

            if (v149 >= v143)
            {
              v150 = v143;
            }

            else
            {
              v150 = v149;
            }

            v151 = memcmp(v142, v148, v150);
            if (v151)
            {
              if (v151 < 0)
              {
                v131 = (a1 + v144);
                break;
              }
            }

            else if (v143 <= v149)
            {
              v131 = v132;
              break;
            }

            v132 = (v132 - 24);
            *v145 = *(a1 + v144 - 24);
            *(v145 + 16) = *(a1 + v144 - 8);
            *(v145 - 1) = 0;
            *(v145 - 24) = 0;
            v144 -= 24;
            if (!v144)
            {
              v131 = a1;
              break;
            }
          }
        }

        result = v279;
        v131[1].n128_u64[0] = v280;
        *v131 = result;
        goto LABEL_269;
      }

      if (a1 == a2)
      {
        return result;
      }

      v245 = (a1 + 24);
      if ((a1 + 24) == a2)
      {
        return result;
      }

LABEL_483:
      v246 = a1;
      a1 = v245;
      v247 = *(v246 + 47);
      if (v247 >= 0)
      {
        v248 = v245;
      }

      else
      {
        v248 = v246[3];
      }

      if (v247 >= 0)
      {
        v249 = *(v246 + 47);
      }

      else
      {
        v249 = v246[4];
      }

      v250 = *(v246 + 23);
      if (v250 >= 0)
      {
        v251 = v246;
      }

      else
      {
        v251 = *v246;
      }

      if (v250 >= 0)
      {
        v252 = *(v246 + 23);
      }

      else
      {
        v252 = v246[1];
      }

      if (v252 >= v249)
      {
        v253 = v249;
      }

      else
      {
        v253 = v252;
      }

      v254 = memcmp(v248, v251, v253);
      if (v254)
      {
        if (v254 < 0)
        {
          goto LABEL_482;
        }
      }

      else if (v249 <= v252)
      {
        goto LABEL_482;
      }

      v255 = *a1;
      v280 = *(a1 + 16);
      v279 = v255;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if (v280 >= 0)
      {
        v256 = &v279;
      }

      else
      {
        v256 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v257 = HIBYTE(v280);
      }

      else
      {
        v257 = v279.n128_u64[1];
      }

      for (i = a1; ; i -= 24)
      {
        *i = *(i - 24);
        *(i + 16) = *(i - 8);
        *(i - 1) = 0;
        *(i - 24) = 0;
        v259 = *(i - 25);
        if (v259 >= 0)
        {
          v260 = (i - 48);
        }

        else
        {
          v260 = *(i - 48);
        }

        if (v259 >= 0)
        {
          v261 = *(i - 25);
        }

        else
        {
          v261 = *(i - 40);
        }

        if (v261 >= v257)
        {
          v262 = v257;
        }

        else
        {
          v262 = v261;
        }

        v263 = memcmp(v256, v260, v262);
        if (v263)
        {
          if (v263 < 0)
          {
LABEL_481:
            result = v279;
            *(i - 8) = v280;
            *(i - 24) = result;
LABEL_482:
            v245 = (a1 + 24);
            if ((a1 + 24) == a2)
            {
              return result;
            }

            goto LABEL_483;
          }
        }

        else if (v257 <= v261)
        {
          goto LABEL_481;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v10 >> 1;
    v12 = a1 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v12, a1, __s2);
      v271 = a3 - 1;
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v17 = *(a1 - 1);
        if (v17 >= 0)
        {
          v18 = (a1 - 24);
        }

        else
        {
          v18 = *(a1 - 24);
        }

        if (v17 >= 0)
        {
          v19 = *(a1 - 1);
        }

        else
        {
          v19 = *(a1 - 16);
        }

        v20 = *(a1 + 23);
        if (v20 >= 0)
        {
          v21 = a1;
        }

        else
        {
          v21 = *a1;
        }

        if (v20 >= 0)
        {
          v22 = *(a1 + 23);
        }

        else
        {
          v22 = *(a1 + 8);
        }

        if (v22 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v22;
        }

        v24 = memcmp(v18, v21, v23);
        if (v24)
        {
          if (v24 < 0)
          {
            goto LABEL_129;
          }
        }

        else if (v19 <= v22)
        {
LABEL_129:
          v70 = *a1;
          v280 = *(a1 + 16);
          v279 = v70;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v71 = a2;
          if (v280 >= 0)
          {
            v72 = &v279;
          }

          else
          {
            v72 = v279.n128_u64[0];
          }

          if (v280 >= 0)
          {
            v73 = HIBYTE(v280);
          }

          else
          {
            v73 = v279.n128_u64[1];
          }

          v74 = *(v71 - 1);
          v76 = *(v71 - 3);
          v75 = *(v71 - 2);
          if ((v74 & 0x80u) == 0)
          {
            v77 = __s2;
          }

          else
          {
            v77 = *(v71 - 3);
          }

          if ((v74 & 0x80u) == 0)
          {
            v78 = *(v71 - 1);
          }

          else
          {
            v78 = *(v71 - 2);
          }

          if (v78 >= v73)
          {
            v79 = v73;
          }

          else
          {
            v79 = v78;
          }

          v80 = memcmp(v72, v77, v79);
          if (v80)
          {
            if ((v80 & 0x80000000) == 0)
            {
LABEL_146:
              v81 = a1 + 24;
              do
              {
                while (1)
                {
                  k = v81;
                  v82 = *(v81 + 23);
                  v83 = (v82 & 0x80u) == 0 ? k : *k;
                  v84 = (v82 & 0x80u) == 0 ? v82 : *(k + 8);
                  v85 = v84 >= v73 ? v73 : v84;
                  v86 = memcmp(v72, v83, v85);
                  v81 = k + 24;
                  if (v86)
                  {
                    break;
                  }

                  if (v73 > v84)
                  {
                    goto LABEL_159;
                  }
                }
              }

              while (v86 < 0);
LABEL_159:
              j = v277;
              if (k < v277)
              {
                for (j = __s2; ; v75 = j[1])
                {
                  if ((v74 & 0x80u) == 0)
                  {
                    v89 = j;
                  }

                  else
                  {
                    v89 = v76;
                  }

                  if ((v74 & 0x80u) == 0)
                  {
                    v90 = v74;
                  }

                  else
                  {
                    v90 = v75;
                  }

                  if (v90 >= v73)
                  {
                    v91 = v73;
                  }

                  else
                  {
                    v91 = v90;
                  }

                  v92 = memcmp(v72, v89, v91);
                  if (v92)
                  {
                    if (v92 < 0)
                    {
                      break;
                    }
                  }

                  else if (v73 <= v90)
                  {
                    break;
                  }

                  v88 = *(j - 3);
                  j -= 3;
                  v76 = v88;
                  v74 = *(j + 23);
                }
              }

              if (k < j)
              {
                v93 = *k;
                do
                {
                  v94 = *(k + 8);
                  v95 = *j;
                  *(k + 16) = j[2];
                  *k = v95;
                  *j = v93;
                  *(j + 1) = v94;
                  if (v280 >= 0)
                  {
                    v96 = &v279;
                  }

                  else
                  {
                    v96 = v279.n128_u64[0];
                  }

                  if (v280 >= 0)
                  {
                    v97 = HIBYTE(v280);
                  }

                  else
                  {
                    v97 = v279.n128_u64[1];
                  }

                  v98 = k + 24;
                  do
                  {
                    while (1)
                    {
                      k = v98;
                      v99 = *(v98 + 23);
                      v93 = *k;
                      v100 = (v99 & 0x80u) == 0 ? k : *k;
                      v101 = (v99 & 0x80u) == 0 ? v99 : *(k + 8);
                      v102 = v101 >= v97 ? v97 : v101;
                      v103 = memcmp(v96, v100, v102);
                      v98 = k + 24;
                      if (v103)
                      {
                        break;
                      }

                      if (v97 > v101)
                      {
                        goto LABEL_196;
                      }
                    }
                  }

                  while (v103 < 0);
LABEL_196:
                  v104 = j - 3;
                  do
                  {
                    while (1)
                    {
                      j = v104;
                      v105 = *(v104 + 23);
                      v106 = v105 >= 0 ? j : *j;
                      v107 = v105 >= 0 ? v105 : j[1];
                      v108 = v107 >= v97 ? v97 : v107;
                      v109 = memcmp(v96, v106, v108);
                      v104 = j - 3;
                      if (v109)
                      {
                        break;
                      }

                      if (v97 <= v107)
                      {
                        goto LABEL_176;
                      }
                    }
                  }

                  while ((v109 & 0x80000000) == 0);
LABEL_176:
                  ;
                }

                while (k < j);
              }

              v110 = (k - 24);
              if (k - 24 == a1)
              {
                a2 = v277;
                a3 = v271;
                if (*(k - 1) < 0)
                {
                  operator delete(*v110);
                }
              }

              else
              {
                a2 = v277;
                a3 = v271;
                if (*(a1 + 23) < 0)
                {
                  operator delete(*a1);
                }

                v111 = *v110;
                *(a1 + 16) = *(k - 8);
                *a1 = v111;
                *(k - 1) = 0;
                *(k - 24) = 0;
              }

              a4 = 0;
              result = v279;
              *(k - 8) = v280;
              *v110 = result;
              continue;
            }
          }

          else if (v73 > v78)
          {
            goto LABEL_146;
          }

          for (k = a1 + 24; k < v277; k += 24)
          {
            v112 = *(k + 23);
            if (v112 >= 0)
            {
              v113 = k;
            }

            else
            {
              v113 = *k;
            }

            if (v112 >= 0)
            {
              v114 = *(k + 23);
            }

            else
            {
              v114 = *(k + 8);
            }

            if (v114 >= v73)
            {
              v115 = v73;
            }

            else
            {
              v115 = v114;
            }

            v116 = memcmp(v72, v113, v115);
            if (v116)
            {
              if ((v116 & 0x80000000) == 0)
              {
                goto LABEL_159;
              }
            }

            else if (v73 > v114)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_159;
        }
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, v12, __s2);
      v13 = 24 * v11;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1 + 24, v13 + a1 - 24, v267);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1 + 48, a1 + 24 + v13, v266);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v13 + a1 - 24, v12, (a1 + 24 + v13));
      v14 = *a1;
      v15 = *(a1 + 8);
      v16 = *v12;
      *(a1 + 16) = *(v12 + 16);
      *a1 = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      v271 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    v26 = *a1;
    v280 = *(a1 + 16);
    v279 = v26;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    if (v280 >= 0)
    {
      v27 = &v279;
    }

    else
    {
      v27 = v279.n128_u64[0];
    }

    if (v280 >= 0)
    {
      v28 = HIBYTE(v280);
    }

    else
    {
      v28 = v279.n128_u64[1];
    }

    while (1)
    {
      v29 = *(a1 + v25 + 24);
      v30 = *(a1 + v25 + 47);
      v31 = v30 >= 0 ? (a1 + v25 + 24) : *(a1 + v25 + 24);
      v32 = v30 >= 0 ? *(a1 + v25 + 47) : *(a1 + v25 + 32);
      v33 = v28 >= v32 ? v32 : v28;
      v34 = memcmp(v31, v27, v33);
      if (v34)
      {
        break;
      }

      if (v32 <= v28)
      {
        goto LABEL_51;
      }

LABEL_39:
      v25 += 24;
    }

    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v35 = a1 + v25 + 24;
    v36 = __s2;
    if (v25)
    {
      do
      {
        while (1)
        {
          v37 = v36;
          v44 = *(v36 + 23);
          v45 = v44 >= 0 ? v37 : *v37;
          v46 = (v44 >= 0 ? v44 : v37[1]);
          v47 = v28 >= v46 ? v46 : v28;
          v48 = memcmp(v45, v27, v47);
          v36 = v37 - 3;
          if (v48)
          {
            break;
          }

          if (v46 > v28)
          {
            goto LABEL_82;
          }
        }
      }

      while (v48 < 0);
    }

    else
    {
      v37 = v277;
      if (v35 < v277)
      {
        v38 = __s2;
        do
        {
          while (1)
          {
            v37 = v38;
            v39 = *(v38 + 23);
            v40 = v39 >= 0 ? v37 : *v37;
            v41 = (v39 >= 0 ? v39 : v37[1]);
            v42 = v28 >= v41 ? v41 : v28;
            v43 = memcmp(v40, v27, v42);
            v38 = v37 - 3;
            if (!v43)
            {
              break;
            }

            if (v35 >= v37 || (v43 & 0x80000000) == 0)
            {
              goto LABEL_82;
            }
          }
        }

        while (v35 < v37 && v41 <= v28);
      }
    }

LABEL_82:
    k = v35;
    if (v35 < v37)
    {
      v49 = v37;
      do
      {
        v50 = *(k + 8);
        v51 = *v49;
        *(k + 16) = v49[2];
        *k = v51;
        *v49 = v29;
        *(v49 + 1) = v50;
        if (v280 >= 0)
        {
          v52 = &v279;
        }

        else
        {
          v52 = v279.n128_u64[0];
        }

        if (v280 >= 0)
        {
          v53 = HIBYTE(v280);
        }

        else
        {
          v53 = v279.n128_u64[1];
        }

        v54 = k + 24;
        do
        {
          while (1)
          {
            k = v54;
            v55 = *(v54 + 23);
            v29 = *k;
            v56 = (v55 & 0x80u) == 0 ? k : *k;
            v57 = (v55 & 0x80u) == 0 ? v55 : *(k + 8);
            v58 = v53 >= v57 ? v57 : v53;
            v59 = memcmp(v56, v52, v58);
            v54 = k + 24;
            if (v59)
            {
              break;
            }

            if (v57 <= v53)
            {
              goto LABEL_104;
            }
          }
        }

        while ((v59 & 0x80000000) == 0);
LABEL_104:
        v60 = v49 - 3;
        do
        {
          while (1)
          {
            v49 = v60;
            v61 = *(v60 + 23);
            v62 = v61 >= 0 ? v49 : *v49;
            v63 = (v61 >= 0 ? v61 : v49[1]);
            v64 = v53 >= v63 ? v63 : v53;
            v65 = memcmp(v62, v52, v64);
            v60 = v49 - 3;
            if (v65)
            {
              break;
            }

            if (v63 > v53)
            {
              goto LABEL_84;
            }
          }
        }

        while (v65 < 0);
LABEL_84:
        ;
      }

      while (k < v49);
    }

    v66 = (k - 24);
    if (k - 24 == a1)
    {
      a2 = v277;
      a3 = v271;
      if (*(k - 1) < 0)
      {
        operator delete(*a1);
      }
    }

    else
    {
      a2 = v277;
      a3 = v271;
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v67 = *v66;
      *(a1 + 16) = *(k - 8);
      *a1 = v67;
      *(k - 1) = 0;
      *(k - 24) = 0;
    }

    v68 = v279;
    *(k - 8) = v280;
    *v66 = v68;
    if (v35 < v37)
    {
LABEL_127:
      std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(a1, k - 24, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(a1, (k - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(k, a2))
      {
        a2 = (k - 24);
        if (v69)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v69)
      {
        goto LABEL_127;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v152 = (v10 - 2) >> 1;
  v153 = v152;
  v268 = v9;
  while (2)
  {
    v155 = v153;
    if (v152 >= v153)
    {
      v156 = (2 * v153) | 1;
      v157 = a1 + 24 * v156;
      v158 = 2 * v153 + 2;
      if (v158 >= v10)
      {
        goto LABEL_340;
      }

      v160 = (v157 + 24);
      v159 = *(v157 + 24);
      v161 = *(v157 + 23);
      if (v161 >= 0)
      {
        v162 = (a1 + 24 * v156);
      }

      else
      {
        v162 = *v157;
      }

      if (v161 >= 0)
      {
        v163 = *(v157 + 23);
      }

      else
      {
        v163 = *(v157 + 8);
      }

      v164 = *(v157 + 47);
      if (v164 >= 0)
      {
        v165 = (v157 + 24);
      }

      else
      {
        v165 = *(v157 + 24);
      }

      if (v164 >= 0)
      {
        v166 = *(v157 + 47);
      }

      else
      {
        v166 = *(v157 + 32);
      }

      if (v166 >= v163)
      {
        v167 = v163;
      }

      else
      {
        v167 = v166;
      }

      v168 = memcmp(v162, v165, v167);
      if (v168)
      {
        a2 = v277;
        if (v168 < 0)
        {
LABEL_340:
          v160 = (a1 + 24 * v156);
          v158 = (2 * v155) | 1;
        }
      }

      else
      {
        v169 = v163 >= v166;
        if (v163 == v166)
        {
          v160 = (a1 + 24 * v156);
          v158 = (2 * v155) | 1;
          a2 = v277;
        }

        else
        {
          a2 = v277;
          if (!v169)
          {
            goto LABEL_340;
          }
        }
      }

      v272 = v155;
      v170 = a1 + 24 * v155;
      v171 = *(v160 + 23);
      if (v171 >= 0)
      {
        v172 = v160;
      }

      else
      {
        v172 = *v160;
      }

      if (v171 >= 0)
      {
        v173 = *(v160 + 23);
      }

      else
      {
        v173 = v160[1];
      }

      v174 = *(v170 + 23);
      if (v174 >= 0)
      {
        v175 = (a1 + 24 * v155);
      }

      else
      {
        v175 = *v170;
      }

      if (v174 >= 0)
      {
        v176 = *(v170 + 23);
      }

      else
      {
        v176 = *(v170 + 8);
      }

      if (v176 >= v173)
      {
        v177 = v173;
      }

      else
      {
        v177 = v176;
      }

      v178 = memcmp(v172, v175, v177);
      if (v178)
      {
        if (v178 < 0)
        {
LABEL_360:
          v179 = *v170;
          v280 = *(v170 + 16);
          v279 = v179;
          *(v170 + 8) = 0;
          *(v170 + 16) = 0;
          *v170 = 0;
          v180 = *v160;
          *(v170 + 16) = v160[2];
          *v170 = v180;
          *(v160 + 23) = 0;
          *v160 = 0;
          if (v152 >= v158)
          {
            v181 = &v279;
            if (v280 < 0)
            {
              v181 = v279.n128_u64[0];
            }

            __s2a = v181;
            if (v280 >= 0)
            {
              v182 = HIBYTE(v280);
            }

            else
            {
              v182 = v279.n128_u64[1];
            }

            while (1)
            {
              v184 = (2 * v158) | 1;
              v185 = a1 + 24 * v184;
              v158 = 2 * v158 + 2;
              if (v158 >= v10)
              {
                goto LABEL_390;
              }

              v154 = (v185 + 24);
              v186 = *(v185 + 24);
              v187 = *(v185 + 23);
              v188 = v187 >= 0 ? (a1 + 24 * v184) : *v185;
              v189 = v187 >= 0 ? *(v185 + 23) : *(v185 + 8);
              v190 = *(v185 + 47);
              v191 = v190 >= 0 ? (v185 + 24) : *(v185 + 24);
              v192 = v190 >= 0 ? *(v185 + 47) : *(v185 + 32);
              v193 = v192 >= v189 ? v189 : v192;
              v194 = memcmp(v188, v191, v193);
              if (v194)
              {
                break;
              }

              v195 = v189 >= v192;
              if (v189 == v192)
              {
                v154 = (a1 + 24 * v184);
                v158 = v184;
                a2 = v277;
                v152 = (v10 - 2) >> 1;
                goto LABEL_391;
              }

              a2 = v277;
              v152 = (v10 - 2) >> 1;
              if (!v195)
              {
                goto LABEL_390;
              }

LABEL_391:
              v196 = *(v154 + 23);
              if (v196 >= 0)
              {
                v197 = v154;
              }

              else
              {
                v197 = *v154;
              }

              if (v196 >= 0)
              {
                v198 = *(v154 + 23);
              }

              else
              {
                v198 = v154[1];
              }

              if (v182 >= v198)
              {
                v199 = v198;
              }

              else
              {
                v199 = v182;
              }

              v200 = memcmp(v197, __s2a, v199);
              if (v200)
              {
                if ((v200 & 0x80000000) == 0)
                {
                  goto LABEL_314;
                }
              }

              else if (v198 > v182)
              {
                goto LABEL_314;
              }

              v183 = *v154;
              v160[2] = v154[2];
              *v160 = v183;
              *(v154 + 23) = 0;
              *v154 = 0;
              v160 = v154;
              if (v152 < v158)
              {
                goto LABEL_315;
              }
            }

            a2 = v277;
            v152 = (v10 - 2) >> 1;
            if ((v194 & 0x80000000) == 0)
            {
              goto LABEL_391;
            }

LABEL_390:
            v154 = (a1 + 24 * v184);
            v158 = v184;
            goto LABEL_391;
          }

LABEL_314:
          v154 = v160;
LABEL_315:
          result = v279;
          v154[2] = v280;
          *v154 = result;
          v155 = v272;
        }
      }

      else if (v173 <= v176)
      {
        goto LABEL_360;
      }
    }

    v153 = v155 - 1;
    if (v155)
    {
      continue;
    }

    break;
  }

  v201 = 0xAAAAAAAAAAAAAAABLL * (v268 >> 3);
  do
  {
    if (v201 < 2)
    {
      goto LABEL_405;
    }

    v203 = 0;
    __s2b = *a1;
    v278 = a2;
    v204 = *(a1 + 16);
    v270 = v204;
    v273 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v205 = a1;
    *a1 = 0;
    do
    {
      v207 = v205 + 24 * v203;
      v206 = (v207 + 24);
      v208 = 2 * v203;
      v203 = (2 * v203) | 1;
      v209 = v208 + 2;
      if (v208 + 2 < v201)
      {
        v212 = *(v207 + 48);
        v211 = (v207 + 48);
        v210 = v212;
        v213 = v211[-1].n128_i8[15];
        if (v213 >= 0)
        {
          v214 = v206;
        }

        else
        {
          v214 = v211[-2].n128_u64[1];
        }

        if (v213 >= 0)
        {
          v215 = v211[-1].n128_u8[15];
        }

        else
        {
          v215 = v211[-1].n128_u64[0];
        }

        v216 = v211[1].n128_i8[7];
        if (v216 >= 0)
        {
          v217 = v211;
        }

        else
        {
          v217 = v210;
        }

        if (v216 >= 0)
        {
          v218 = v211[1].n128_u8[7];
        }

        else
        {
          v218 = v211->n128_u64[1];
        }

        if (v218 >= v215)
        {
          v219 = v215;
        }

        else
        {
          v219 = v218;
        }

        v220 = memcmp(v214, v217, v219);
        if (v220)
        {
          if ((v220 & 0x80000000) == 0)
          {
            goto LABEL_409;
          }
        }

        else if (v215 > v218)
        {
LABEL_409:
          v206 = v211;
          v203 = v209;
        }
      }

      if (*(v205 + 23) < 0)
      {
        operator delete(*v205);
      }

      result = *v206;
      *(v205 + 16) = v206[1].n128_u64[0];
      *v205 = result;
      v206[1].n128_u8[7] = 0;
      v206->n128_u8[0] = 0;
      v205 = v206;
    }

    while (v203 <= ((v201 - 2) >> 1));
    if (v206 == (a2 - 3))
    {
      v206->n128_u64[0] = __s2b;
      v206->n128_u64[1] = v273;
      v206[1].n128_u64[0] = v270;
      goto LABEL_405;
    }

    result = *(a2 - 3);
    v206[1].n128_u64[0] = *(a2 - 1);
    *v206 = result;
    *(a2 - 3) = __s2b;
    *(a2 - 2) = v273;
    *(a2 - 1) = v270;
    v221 = &v206[1].n128_i64[1] - a1;
    if (v221 >= 25)
    {
      v222 = -2 - 0x5555555555555555 * (v221 >> 3);
      v223 = v222 >> 1;
      v224 = a1 + 24 * (v222 >> 1);
      v225 = *(v224 + 23);
      if (v225 >= 0)
      {
        v226 = (a1 + 24 * (v222 >> 1));
      }

      else
      {
        v226 = *v224;
      }

      if (v225 >= 0)
      {
        v227 = *(v224 + 23);
      }

      else
      {
        v227 = *(v224 + 8);
      }

      v228 = v206[1].n128_i8[7];
      if (v228 >= 0)
      {
        v229 = v206;
      }

      else
      {
        v229 = v206->n128_u64[0];
      }

      if (v228 >= 0)
      {
        v230 = v206[1].n128_u8[7];
      }

      else
      {
        v230 = v206->n128_u64[1];
      }

      if (v230 >= v227)
      {
        v231 = v227;
      }

      else
      {
        v231 = v230;
      }

      v232 = memcmp(v226, v229, v231);
      if (v232)
      {
        if (v232 < 0)
        {
          goto LABEL_405;
        }
      }

      else if (v227 <= v230)
      {
        goto LABEL_405;
      }

      v233 = *v206;
      v280 = v206[1].n128_i64[0];
      v279 = v233;
      v206->n128_u64[1] = 0;
      v206[1].n128_u64[0] = 0;
      v206->n128_u64[0] = 0;
      if (v280 >= 0)
      {
        v234 = &v279;
      }

      else
      {
        v234 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v235 = HIBYTE(v280);
      }

      else
      {
        v235 = v279.n128_u64[1];
      }

      v236 = *v224;
      v206[1].n128_u64[0] = *(v224 + 16);
      *v206 = v236;
      *(v224 + 23) = 0;
      *v224 = 0;
      if (v222 >= 2)
      {
        while (1)
        {
          v238 = v223 - 1;
          v223 = (v223 - 1) >> 1;
          v239 = a1 + 24 * v223;
          v240 = *(v239 + 23);
          if (v240 >= 0)
          {
            v241 = (a1 + 24 * v223);
          }

          else
          {
            v241 = *v239;
          }

          if (v240 >= 0)
          {
            v242 = *(v239 + 23);
          }

          else
          {
            v242 = *(v239 + 8);
          }

          if (v235 >= v242)
          {
            v243 = v242;
          }

          else
          {
            v243 = v235;
          }

          v244 = memcmp(v241, v234, v243);
          if (v244)
          {
            if (v244 < 0)
            {
              break;
            }
          }

          else if (v242 <= v235)
          {
            break;
          }

          v237 = *v239;
          *(v224 + 16) = *(v239 + 16);
          *v224 = v237;
          *(v239 + 23) = 0;
          *v239 = 0;
          v224 = a1 + 24 * v223;
          if (v238 <= 1)
          {
            goto LABEL_477;
          }
        }
      }

      v239 = v224;
LABEL_477:
      result = v279;
      *(v239 + 16) = v280;
      *v239 = result;
      a2 = v278;
    }

LABEL_405:
    a2 -= 3;
  }

  while (v201-- > 2);
  return result;
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v11 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v11 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v10 > v15)
  {
LABEL_18:
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = a3[1];
    }

    if (v10 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = memcmp(v19, v9, v21);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
LABEL_29:
        v23 = *(a1 + 16);
        v24 = a3[2];
        result = *a3;
        *a1 = *a3;
        *(a1 + 16) = v24;
        *a3 = v13;
        a3[1] = v12;
        a3[2] = v23;
        return result;
      }
    }

    else if (v20 > v10)
    {
      goto LABEL_29;
    }

    v31 = *(a1 + 16);
    v32 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v32;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v31;
    v33 = *(a3 + 23);
    if (v33 >= 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = *a3;
    }

    if (v33 >= 0)
    {
      v35 = *(a3 + 23);
    }

    else
    {
      v35 = a3[1];
    }

    if (v31 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = v13;
    }

    if (v31 >= 0)
    {
      v37 = HIBYTE(v31);
    }

    else
    {
      v37 = v12;
    }

    if (v37 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v37;
    }

    v39 = memcmp(v34, v36, v38);
    if (v39)
    {
      if (v39 < 0)
      {
        return result;
      }
    }

    else if (v35 <= v37)
    {
      return result;
    }

    result = *a3;
    *(a2 + 16) = a3[2];
    *a2 = result;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v31;
    return result;
  }

  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  if (v10 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v10;
  }

  v30 = memcmp(v27, v9, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v28 <= v10)
  {
    return result;
  }

  v40 = *(a2 + 16);
  v41 = a3[2];
  *a2 = *a3;
  *(a2 + 16) = v41;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v40;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = *(a2 + 8);
  }

  v45 = *(a1 + 23);
  v46 = *a1;
  v47 = *(a1 + 8);
  if (v45 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v45 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v44)
  {
    v50 = v44;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v43, v48, v50);
  if (!v51)
  {
    if (v44 <= v49)
    {
      return result;
    }

    goto LABEL_84;
  }

  if ((v51 & 0x80000000) == 0)
  {
LABEL_84:
    v52 = *(a1 + 16);
    v53 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v53;
    *a2 = v46;
    *(a2 + 8) = v47;
    *(a2 + 16) = v52;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if (v17 < 0)
    {
      return result;
    }
  }

  else if (v10 <= v15)
  {
    return result;
  }

  v19 = *(a3 + 16);
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v20;
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v19;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = *(a2 + 23);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v24 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v24 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v22, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v23 <= v28)
  {
    return result;
  }

  v31 = *(a2 + 16);
  v32 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v32;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v31;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = *(a1 + 23);
  v37 = *a1;
  v38 = *(a1 + 8);
  if (v36 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v36 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v34, v39, v41);
  if (!v42)
  {
    if (v35 <= v40)
    {
      return result;
    }

LABEL_58:
    v43 = *(a1 + 16);
    v44 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v44;
    *a2 = v37;
    *(a2 + 8) = v38;
    *(a2 + 16) = v43;
    return result;
  }

  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  v14 = *a4;
  v15 = *(a4 + 8);
  if (v13 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v13 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v11, v16, v18);
  if (v19)
  {
    if (v19 < 0)
    {
      return result;
    }
  }

  else if (v12 <= v17)
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v21;
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = *(a3 + 8);
  if (v26 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v26 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  if (v30 >= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v24, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      return result;
    }
  }

  else if (v25 <= v30)
  {
    return result;
  }

  v33 = *(a3 + 16);
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v33;
  v35 = *(a3 + 23);
  if (v35 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = *a3;
  }

  if (v35 >= 0)
  {
    v37 = *(a3 + 23);
  }

  else
  {
    v37 = *(a3 + 8);
  }

  v38 = *(a2 + 23);
  v39 = *a2;
  v40 = *(a2 + 8);
  if (v38 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  if (v38 >= 0)
  {
    v42 = *(a2 + 23);
  }

  else
  {
    v42 = *(a2 + 8);
  }

  if (v42 >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = v42;
  }

  v44 = memcmp(v36, v41, v43);
  if (v44)
  {
    if (v44 < 0)
    {
      return result;
    }
  }

  else if (v37 <= v42)
  {
    return result;
  }

  v45 = *(a2 + 16);
  v46 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v46;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v45;
  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  v50 = *(a1 + 23);
  v51 = *a1;
  v52 = *(a1 + 8);
  if (v50 >= 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = *a1;
  }

  if (v50 >= 0)
  {
    v54 = *(a1 + 23);
  }

  else
  {
    v54 = *(a1 + 8);
  }

  if (v54 >= v49)
  {
    v55 = v49;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v48, v53, v55);
  if (v56)
  {
    if (v56 < 0)
    {
      return result;
    }
  }

  else if (v49 <= v54)
  {
    return result;
  }

  v57 = *(a1 + 16);
  v58 = *(a2 + 16);
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = v58;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v57;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      v11 = *a1;
      v12 = *(a1 + 8);
      if (v10 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v10 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v8, v13, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          return 1;
        }
      }

      else if (v9 <= v14)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *(v2 - 1);
      *a1 = *v6;
      *(a1 + 16) = v41;
      *(v2 - 3) = v11;
      *(v2 - 2) = v12;
      *(v2 - 1) = v40;
      return 1;
    }
  }

  v17 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, (a1 + 48));
  v18 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v42 = v2;
  while (2)
  {
    v22 = *(v18 + 23);
    if (v22 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v22 >= 0)
    {
      v24 = *(v18 + 23);
    }

    else
    {
      v24 = v18[1];
    }

    v25 = *(v17 + 23);
    if (v25 >= 0)
    {
      v26 = v17;
    }

    else
    {
      v26 = *v17;
    }

    if (v25 >= 0)
    {
      v27 = *(v17 + 23);
    }

    else
    {
      v27 = *(v17 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if (v29 < 0)
      {
        goto LABEL_32;
      }
    }

    else if (v24 <= v27)
    {
      goto LABEL_32;
    }

    v43 = v20;
    v44 = *v18;
    v45 = v18[2];
    *v18 = *v17;
    v18[2] = *(v17 + 16);
    *(v17 + 23) = 0;
    *v17 = 0;
    v30 = v19;
    while (1)
    {
      v31 = a1 + v30;
      v32 = (a1 + v30 + 24);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44;
      }

      if (SHIBYTE(v45) >= 0)
      {
        v34 = HIBYTE(v45);
      }

      else
      {
        v34 = *(&v44 + 1);
      }

      v35 = *(v31 + 47);
      if (v35 >= 0)
      {
        v36 = (a1 + v30 + 24);
      }

      else
      {
        v36 = *(a1 + v30 + 24);
      }

      if (v35 >= 0)
      {
        v37 = *(v31 + 47);
      }

      else
      {
        v37 = *(v31 + 32);
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (!v39)
      {
        if (v34 <= v37)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if (v39 < 0)
      {
        break;
      }

LABEL_54:
      v17 -= 24;
      *(v31 + 48) = *v32;
      *(v31 + 64) = *(a1 + v30 + 40);
      *(v31 + 47) = 0;
      *v32 = 0;
      v30 -= 24;
      if (v30 == -48)
      {
        v17 = a1;
        goto LABEL_31;
      }
    }

    v17 = a1 + v30 + 48;
LABEL_31:
    v21 = v44;
    *(v17 + 16) = v45;
    *v17 = v21;
    v20 = v43 + 1;
    v2 = v42;
    if (v43 != 7)
    {
LABEL_32:
      v17 = v18;
      v19 += 24;
      v18 += 3;
      if (v18 == v2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 3 == v42;
  }
}

uint64_t std::unordered_set<std::string>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *std::unique_ptr<std::__hash_node<std::string,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18CA8C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8C8))
  {
    qword_2A18CA8D0 = 0;
    unk_2A18CA8D8 = 0;
    __cxa_guard_release(&qword_2A18CA8C8);
  }

  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_2);
  }

  return &qword_2A18CA8D0;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t asString()
{
  return MEMORY[0x2A1C6B1D8]();
}

{
  return MEMORY[0x2A1C6B1F0]();
}

uint64_t awd::asString()
{
  return MEMORY[0x2A1C6D060]();
}

{
  return MEMORY[0x2A1C6D068]();
}

{
  return MEMORY[0x2A1C6D070]();
}

{
  return MEMORY[0x2A1C6D078]();
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2A1C6F118]();
}

{
  return MEMORY[0x2A1C6F120]();
}

uint64_t ctu::operator<<()
{
  return MEMORY[0x2A1C6F408]();
}

{
  return MEMORY[0x2A1C6F410]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2A1C6F438]();
}

{
  return MEMORY[0x2A1C6F448]();
}

{
  return MEMORY[0x2A1C6F450]();
}

{
  return MEMORY[0x2A1C6F460]();
}

{
  return MEMORY[0x2A1C6F468]();
}

{
  return MEMORY[0x2A1C6F478]();
}

uint64_t awd::AppContext::operator()()
{
  return MEMORY[0x2A1C6D1B8]();
}

{
  return MEMORY[0x2A1C6D1C0]();
}

{
  return MEMORY[0x2A1C6D1C8]();
}

{
  return MEMORY[0x2A1C6D1D0]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE28]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}