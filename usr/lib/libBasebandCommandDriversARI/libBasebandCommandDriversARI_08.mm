void sub_296DE3668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, const void *a47, __int16 a48, char a49, char a50, std::runtime_error a51)
{
  std::runtime_error::~runtime_error(&a51);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a47);
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    boost::signals2::detail::connection_body_base::disconnect(*(a43 + 16));
    __cxa_rethrow();
  }

  boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v58);
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(&v60);
  boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v59);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v57);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v53);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&v54);
  MEMORY[0x29C263F40](v55);
  if (v56 < 0)
  {
    operator delete(v55[14]);
  }

  _Unwind_Resume(a1);
}

void sub_296DE36F4(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v9);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(&v11);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v10);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v8);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v4);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&v5);
    MEMORY[0x29C263F40](v6);
    if (v7 < 0)
    {
      operator delete(v6[14]);
    }

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DE36C4);
}

void sub_296DE3794(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296DE37F4);
}

void radio::ARICommandDriver::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "reset";
    _os_log_debug_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v13 = &__block_descriptor_tmp_179;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v6, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296DE39E8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DE3A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DE3A10);
}

uint64_t radio::ARICommandDriver::powerOff(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v5;
  v24[3] = v5;
  v24[0] = v5;
  v24[1] = v5;
  AriSdk::ARI_CsiBspShutdownReq_SDK::ARI_CsiBspShutdownReq_SDK(v24);
  v6 = operator new(4uLL);
  *v6 = 2;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v9 = *(a1 + 256);
  v8 = *(a1 + 264);
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a3)
  {
    v10 = _Block_copy(*a3);
    v11 = *(a3 + 8);
    v21 = v10;
    v22 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = *(a3 + 8);
  v21 = 0;
  v22 = v11;
  if (v11)
  {
LABEL_7:
    dispatch_retain(v11);
  }

LABEL_8:
  v26[0] = 0x776F642074756873;
  v26[1] = 110;
  HIBYTE(v27) = 9;
  if (!v10)
  {
    v12 = 0;
    v28 = 0;
    object = v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = _Block_copy(v10);
  v28 = v12;
  object = v11;
  if (v11)
  {
LABEL_10:
    dispatch_retain(v11);
  }

LABEL_11:
  v13 = operator new(0x40uLL);
  v13->__shared_owners_ = 0;
  p_shared_owners = &v13->__shared_owners_;
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A1E0EB38;
  v13[1].std::__shared_count = *v26;
  v26[0] = 0;
  v26[1] = 0;
  v13[1].__shared_weak_owners_ = v27;
  v13[2].__vftable = v12;
  v13[2].__shared_owners_ = v11;
  v28 = 0;
  object = 0;
  v27 = 0;
  *&v31 = MEMORY[0x29EDCA5F8];
  *(&v31 + 1) = 1174405120;
  *&v32 = ___ZN3ice6detail12wrapCallbackIZN5utils7sendMsgIN6AriSdk27ARI_CsiBspShutdownRspCb_SDKEEEvNSt3__110shared_ptrINS_6ClientEEERNS4_7MsgBaseENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_vEENSI_5blockIU13block_pointerFiPhjEEENS6_17integral_constantIiLi2EEEOT__block_invoke;
  *(&v32 + 1) = &__block_descriptor_tmp_180;
  v33 = &v13[1];
  v34 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v36 = 0x40000000;
  v37 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v38 = &unk_29EE5BED8;
  v39 = &v31;
  v15 = _Block_copy(&aBlock);
  v16 = v34;
  if (!v34 || atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_14:
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_15:
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v17;
  v32 = v17;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *(v9 + 16);
  aBlock = *(v9 + 8);
  if (!v18)
  {
    v36 = 0;
LABEL_43:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v36 = std::__shared_weak_count::lock(v18);
  if (!v36)
  {
    goto LABEL_43;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v36;
  if (v36 && !atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v30 = v15;
  ice::SendMsgBaseProxy::callback();
  if (v30)
  {
    _Block_release(v30);
  }

  MEMORY[0x29C263BF0](&v31);
  if (object)
  {
    dispatch_release(object);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  return MEMORY[0x29C264190](v24);
}

void sub_296DE3E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](v28 - 144);
  utils::sendMsg<AriSdk::ARI_CsiBspShutdownRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(&a23);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  MEMORY[0x29C264190](&a13);
  _Unwind_Resume(a1);
}

void radio::ARICommandDriver::releaseResetDetect(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "releaseResetDetect";
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v12 = &__block_descriptor_tmp_179;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v5, &block);
  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296DE40B4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DE40EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DE40DCLL);
}

void radio::ARICommandDriver::getBasebandTime(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting baseband time", buf, 2u);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_12_1;
  v12[4] = a1;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v8);
}

uint64_t ___ZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[2] = v3;
  v22[3] = v3;
  v22[0] = v3;
  v22[1] = v3;
  AriSdk::ARI_CsiGetSystemTimeReq_SDK::ARI_CsiGetSystemTimeReq_SDK(v22);
  v4 = *(v2 + 256);
  v6 = a1[5];
  v5 = a1[6];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = a1[8];
    v18 = v8;
    object = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = a1[8];
  v18 = 0;
  object = v9;
  if (v9)
  {
LABEL_5:
    dispatch_retain(v9);
  }

LABEL_6:
  v10 = operator new(0x40uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0EBE8;
  v10[1].__vftable = v6;
  v10[1].__shared_owners_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    v10[1].__shared_weak_owners_ = 0;
    v10[2].__vftable = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10[1].__shared_weak_owners_ = _Block_copy(v8);
  v10[2].__vftable = v9;
  if (v9)
  {
LABEL_10:
    dispatch_retain(v9);
  }

LABEL_11:
  v10[2].__shared_owners_ = v2;
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 1174405120;
  v25 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb0_E3__1vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v26 = &__block_descriptor_tmp_183;
  v27 = v10 + 1;
  v28 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v23;
  v12 = _Block_copy(aBlock);
  v13 = v28;
  if (!v28 || atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_14:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_15:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v14;
  v20[1] = v14;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(v4 + 16);
  v23 = *(v4 + 8);
  if (!v15)
  {
    v24 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = std::__shared_weak_count::lock(v15);
  if (!v24)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  aBlock[0] = v12;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v20);
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return MEMORY[0x29C2644D0](v22);
}

void sub_296DE45FC(_Unwind_Exception *a1, uint64_t a2, ...)
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
  _ZZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb0_EN3__1D1Ev(va);
  MEMORY[0x29C2644D0](va2);
  _Unwind_Resume(a1);
}

void sub_296DE4630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  if (v30)
  {
    _Block_release(v30);
  }

  _ZZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb0_EN3__1D1Ev(&a10);
  MEMORY[0x29C2644D0](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb0_EN3__1D1Ev(void *a1)
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

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(void *a1)
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

    std::__shared_weak_count::__release_weak(v4);
  }
}

void radio::ARICommandDriver::getBasebandStatus(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getBasebandStatus";
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_189;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v5, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296DE49AC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DE49E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DE49D8);
}

void radio::ARICommandDriver::getBasebandFWVersion(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_15_4;
  v13[4] = a1;
  v13[5] = v6;
  v14 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiSysGetInfoReqV2_SDK::ARI_CsiSysGetInfoReqV2_SDK(v24);
  v4 = operator new(4uLL);
  *v4 = 4;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(v2 + 256);
  v8 = a1[5];
  v7 = a1[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a1[7];
  if (v9)
  {
    v10 = _Block_copy(v9);
    v11 = a1[8];
    v20 = v10;
    object = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = a1[8];
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
  v12->__vftable = &unk_2A1E0EC98;
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
  v28 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb1_E3__2vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_190;
  v30 = v12 + 1;
  v31 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
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

  return MEMORY[0x29C264380](v24);
}

void sub_296DE4EE8(_Unwind_Exception *a1, uint64_t a2, ...)
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
  _ZZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb1_EN3__2D1Ev(va);
  MEMORY[0x29C264380](va2);
  _Unwind_Resume(a1);
}

void sub_296DE4F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  if (v30)
  {
    _Block_release(v30);
  }

  _ZZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb1_EN3__2D1Ev(&a10);
  MEMORY[0x29C264380](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb1_EN3__2D1Ev(void *a1)
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

void radio::ARICommandDriver::getFactoryCalibrationStatus(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "getFactoryCalibrationStatus";
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I %s: not supported!", &buf, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_189;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v5, &buf);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296DE51D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DE520C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DE51FCLL);
}

void radio::ARICommandDriver::getRFCalibrationStatus(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_18_3;
  v13[4] = a1;
  v13[5] = v6;
  v14 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[2] = v3;
  v22[3] = v3;
  v22[0] = v3;
  v22[1] = v3;
  AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK::ARI_CsiBspGetCalibrationStatusReq_SDK(v22);
  v4 = *(v2 + 256);
  v6 = a1[5];
  v5 = a1[6];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = a1[8];
    v18 = v8;
    object = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = a1[8];
  v18 = 0;
  object = v9;
  if (v9)
  {
LABEL_5:
    dispatch_retain(v9);
  }

LABEL_6:
  v10 = operator new(0x38uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0ED18;
  v10[1].__vftable = v6;
  v10[1].__shared_owners_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    v10[1].__shared_weak_owners_ = 0;
    v10[2].__vftable = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10[1].__shared_weak_owners_ = _Block_copy(v8);
  v10[2].__vftable = v9;
  if (v9)
  {
LABEL_10:
    dispatch_retain(v9);
  }

LABEL_11:
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 1174405120;
  v25 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb2_E3__3vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v26 = &__block_descriptor_tmp_193;
  v27 = v10 + 1;
  v28 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v23;
  v12 = _Block_copy(aBlock);
  v13 = v28;
  if (!v28 || atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_14:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_15:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v14;
  v20[1] = v14;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(v4 + 16);
  v23 = *(v4 + 8);
  if (!v15)
  {
    v24 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = std::__shared_weak_count::lock(v15);
  if (!v24)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  aBlock[0] = v12;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v20);
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return MEMORY[0x29C265450](v22);
}

void sub_296DE56D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = *(v19 - 120);
  if (v21)
  {
    _Block_release(v21);
  }

  MEMORY[0x29C263BF0](&a13);
  _ZZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb2_EN3__3D1Ev(&a9);
  MEMORY[0x29C265450](&a19);
  _Unwind_Resume(a1);
}

void sub_296DE570C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  if (v28)
  {
    _Block_release(v28);
  }

  _ZZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb2_EN3__3D1Ev(&a9);
  MEMORY[0x29C265450](&a19);
  _Unwind_Resume(a1);
}

void *_ZZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb2_EN3__3D1Ev(void *a1)
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

void radio::ARICommandDriver::getWakeReason(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_21_1;
  v13[4] = a1;
  v13[5] = v6;
  v14 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband wake reason", buf, 2u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v4;
  v26 = v4;
  *buf = v4;
  v24 = v4;
  AriSdk::ARI_CsiIceWakeupReasonReq_SDK::ARI_CsiIceWakeupReasonReq_SDK(buf);
  v5 = *(v2 + 256);
  v7 = a1[5];
  v6 = a1[6];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[7];
  if (v8)
  {
    v9 = _Block_copy(v8);
    v10 = a1[8];
    v19 = v9;
    object = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v10 = a1[8];
  v19 = 0;
  object = v10;
  if (v10)
  {
LABEL_7:
    dispatch_retain(v10);
  }

LABEL_8:
  v11 = operator new(0x38uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__shared_weak_owners_ = 0;
  v11->__vftable = &unk_2A1E0ED98;
  v11[1].__vftable = v7;
  v11[1].__shared_owners_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    v11[1].__shared_weak_owners_ = 0;
    v11[2].__vftable = v10;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11[1].__shared_weak_owners_ = _Block_copy(v9);
  v11[2].__vftable = v10;
  if (v10)
  {
LABEL_12:
    dispatch_retain(v10);
  }

LABEL_13:
  v27 = MEMORY[0x29EDCA5F8];
  v28 = 1174405120;
  v29 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb3_E3__4vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v30 = &__block_descriptor_tmp_198;
  v31 = v11 + 1;
  v32 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v27;
  v13 = _Block_copy(aBlock);
  v14 = v32;
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_17:
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v15;
  v21[1] = v15;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v16 = *(v5 + 16);
  v27 = *(v5 + 8);
  if (!v16)
  {
    v28 = 0;
LABEL_38:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = std::__shared_weak_count::lock(v16);
  if (!v28)
  {
    goto LABEL_38;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v17 = v28;
  if (v28 && !atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  aBlock[0] = v13;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v21);
  if (object)
  {
    dispatch_release(object);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return MEMORY[0x29C2648B0](buf);
}

void sub_296DE5CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = *(v19 - 120);
  if (v21)
  {
    _Block_release(v21);
  }

  MEMORY[0x29C263BF0](&a13);
  _ZZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb3_EN3__4D1Ev(&a9);
  MEMORY[0x29C2648B0](&a19);
  _Unwind_Resume(a1);
}

void sub_296DE5CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  if (v28)
  {
    _Block_release(v28);
  }

  _ZZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb3_EN3__4D1Ev(&a9);
  MEMORY[0x29C2648B0](&a19);
  _Unwind_Resume(a1);
}

void *_ZZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb3_EN3__4D1Ev(void *a1)
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

void radio::ARICommandDriver::setOperatingMode(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a1 + 8);
  if (!v6 || (v12 = std::__shared_weak_count::lock(v6)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN5radio16ARICommandDriver16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_23_2;
  v16[4] = a1;
  v22 = a3;
  v14 = *a4;
  if (*a4)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a4 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v19 = a2;
  v20 = v8;
  v21 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v7, v16);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::__shared_weak_count::__release_weak(v13);
}

void ___ZN5radio16ARICommandDriver16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80) >= 8u)
  {
    strcpy(v43, "Invalid operating mode");
    HIBYTE(v43[2]) = 22;
    CreateError();
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = _Block_copy(v2);
    }

    else
    {
      v3 = 0;
    }

    v30 = *(a1 + 48);
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 1174405120;
    *&v39 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    *(&v39 + 1) = &__block_descriptor_tmp_179;
    if (v3)
    {
      v31 = _Block_copy(v3);
      v32 = cf;
      v40[0] = v31;
      v40[1] = cf;
      if (!cf)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v32 = cf;
      v40[0] = 0;
      v40[1] = cf;
      if (!cf)
      {
LABEL_49:
        dispatch_async(v30, &block);
        if (v40[1])
        {
          CFRelease(v40[1]);
        }

        if (v40[0])
        {
          _Block_release(v40[0]);
        }

        if (v3)
        {
          _Block_release(v3);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (SHIBYTE(v43[2]) < 0)
        {
          operator delete(v43[0]);
        }

        goto LABEL_59;
      }
    }

    CFRetain(v32);
    goto LABEL_49;
  }

  v4 = *(a1 + 32);
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v40 = v5;
  v41 = v5;
  block = v5;
  v39 = v5;
  AriSdk::ARI_CsiModeSetReq_SDK::ARI_CsiModeSetReq_SDK(&block);
  v6 = v4[30];
  v7 = *(a1 + 80);
  v8 = radio::OpMode::convertMode();
  v9 = operator new(4uLL);
  *v9 = v8;
  v10 = __p;
  __p = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a1 + 56);
  if (v11 >= 0xDF8475800)
  {
    v12 = v11 / 0xF4240;
  }

  else
  {
    v12 = 60000;
  }

  HIDWORD(v39) = v12;
  v13 = v4[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v4[30];
    v15 = *(a1 + 80);
    radio::OpMode::modeToString();
    v16 = SHIBYTE(v47) >= 0 ? &v45 : v45;
    *buf = 136446466;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    _os_log_impl(&dword_296D7D000, v13, OS_LOG_TYPE_DEFAULT, "#I Requesting operating mode change to %{public}s, with timeout %llu ms", buf, 0x16u);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v45);
    }
  }

  v17 = v4[32];
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = _Block_copy(v20);
    v22 = *(a1 + 48);
    aBlock = v21;
    object = v22;
    if (!v22)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v21 = 0;
  v22 = *(a1 + 48);
  aBlock = 0;
  object = v22;
  if (v22)
  {
LABEL_19:
    dispatch_retain(v22);
  }

LABEL_20:
  v23 = operator new(0x38uLL);
  v23->__shared_owners_ = 0;
  p_shared_owners = &v23->__shared_owners_;
  v23->__shared_weak_owners_ = 0;
  v23->__vftable = &unk_2A1E0EE18;
  v23[1].__vftable = v19;
  v23[1].__shared_owners_ = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v21)
  {
    v23[1].__shared_weak_owners_ = 0;
    v23[2].__vftable = v22;
    if (!v22)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v23[1].__shared_weak_owners_ = _Block_copy(v21);
  v23[2].__vftable = v22;
  if (v22)
  {
LABEL_24:
    dispatch_retain(v22);
  }

LABEL_25:
  v45 = MEMORY[0x29EDCA5F8];
  v46 = 1174405120;
  v47 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver16setOperatingModeEyNS2_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__5vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v48 = &__block_descriptor_tmp_203;
  v49 = v23 + 1;
  v50 = v23;
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v52 = &unk_29EE5BED8;
  v53 = &v45;
  v25 = _Block_copy(buf);
  v26 = v50;
  if (!v50 || atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_28:
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

LABEL_29:
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v27;
  v36[1] = v27;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v28 = *(v17 + 16);
  v45 = *(v17 + 8);
  if (!v28)
  {
    v46 = 0;
LABEL_67:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v46 = std::__shared_weak_count::lock(v28);
  if (!v46)
  {
    goto LABEL_67;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v29 = v46;
  if (v46 && !atomic_fetch_add((v46 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  *buf = v25;
  ice::SendMsgBaseProxy::callback();
  if (*buf)
  {
    _Block_release(*buf);
  }

  MEMORY[0x29C263BF0](v36);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  MEMORY[0x29C263E30](&block);
LABEL_59:
  v33 = *MEMORY[0x29EDCA608];
}

void *_ZZZN5radio16ARICommandDriver16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_EN3__5D1Ev(void *a1)
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

void __copy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE64c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(void *a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a2[6];
  a1[5] = v4;
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a2[9];
  a1[8] = a2[8];
  a1[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE64c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }
}

void radio::ARICommandDriver::forceOperatingMode(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*a4)
  {
    v8 = _Block_copy(*a4);
    v9 = *(a4 + 8);
    v10 = v8;
    v11 = v9;
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v9 = *(a4 + 8);
  v10 = 0;
  v11 = v9;
  if (v9)
  {
LABEL_3:
    dispatch_retain(v9);
  }

LABEL_4:
  radio::ARICommandDriver::setOperatingMode(a1, a2, a3, &v10);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }
}

uint64_t ___ZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[2] = v3;
  v23[3] = v3;
  v23[0] = v3;
  v23[1] = v3;
  AriSdk::ARI_CsiModeGetReq_SDK::ARI_CsiModeGetReq_SDK(v23);
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting operating mode", buf, 2u);
  }

  v5 = *(v2 + 256);
  v7 = a1[5];
  v6 = a1[6];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[7];
  if (v8)
  {
    v9 = _Block_copy(v8);
    v10 = a1[8];
    v19 = v9;
    object = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v10 = a1[8];
  v19 = 0;
  object = v10;
  if (v10)
  {
LABEL_7:
    dispatch_retain(v10);
  }

LABEL_8:
  v11 = operator new(0x40uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__shared_weak_owners_ = 0;
  v11->__vftable = &unk_2A1E0EE98;
  v11[1].__vftable = v7;
  v11[1].__shared_owners_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    v11[1].__shared_weak_owners_ = 0;
    v11[2].__vftable = v10;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11[1].__shared_weak_owners_ = _Block_copy(v9);
  v11[2].__vftable = v10;
  if (v10)
  {
LABEL_12:
    dispatch_retain(v10);
  }

LABEL_13:
  v11[2].__shared_owners_ = v2;
  *buf = MEMORY[0x29EDCA5F8];
  v25 = 1174405120;
  v26 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb5_E3__6vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v27 = &__block_descriptor_tmp_206;
  v28 = v11 + 1;
  v29 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = buf;
  v13 = _Block_copy(aBlock);
  v14 = v29;
  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_17:
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v15;
  v21[1] = v15;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v16 = *(v5 + 16);
  *buf = *(v5 + 8);
  if (!v16)
  {
    v25 = 0;
LABEL_38:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v25 = std::__shared_weak_count::lock(v16);
  if (!v25)
  {
    goto LABEL_38;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v17 = v25;
  if (v25 && !atomic_fetch_add((v25 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  aBlock[0] = v13;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v21);
  if (object)
  {
    dispatch_release(object);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return MEMORY[0x29C263E10](v23);
}

void sub_296DE6AC4(_Unwind_Exception *a1, uint64_t a2, ...)
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
  _ZZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb5_EN3__6D1Ev(va);
  MEMORY[0x29C263E10](va2);
  _Unwind_Resume(a1);
}

void sub_296DE6AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
  if (v29)
  {
    _Block_release(v29);
  }

  _ZZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb5_EN3__6D1Ev(&a10);
  MEMORY[0x29C263E10](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb5_EN3__6D1Ev(void *a1)
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

void radio::ARICommandDriver::getResetProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(block[0]) = 0;
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D not supported!", block, 2u);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v7 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  block[3] = &__block_descriptor_tmp_189;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v11 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v11 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v12 = 0;
  dispatch_async(v5, block);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296DE6D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::ARICommandDriver::sendBatteryInfoUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(block[0]) = 0;
    _os_log_debug_impl(&dword_296D7D000, v5, OS_LOG_TYPE_DEBUG, "#D not supported!", block, 2u);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a4)
  {
    v6 = _Block_copy(*a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  block[3] = &__block_descriptor_tmp_179;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v7, block);
  if (v13)
  {
    CFRelease(v13);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296DE6F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(std::__shared_weak_count_vtbl *a1, int a2, uint64_t a3)
{
  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v7 = a1->~__shared_weak_count_0, (v8 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v10;
  v25[3] = v10;
  v25[0] = v10;
  v25[1] = v10;
  AriSdk::ARI_CsiIceGetRxDiversityReq_SDK::ARI_CsiIceGetRxDiversityReq_SDK(v25);
  v11 = operator new(4uLL);
  *v11 = a2;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = a1[6].__on_zero_shared;
  if (!*a3)
  {
    v14 = 0;
    v15 = *(a3 + 8);
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = _Block_copy(*a3);
  v15 = *(a3 + 8);
  if (v15)
  {
LABEL_9:
    dispatch_retain(v15);
  }

LABEL_10:
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x48uLL);
  *&v16->__shared_owners_ = 0u;
  p_shared_owners = &v16->__shared_owners_;
  v16->__vftable = &unk_2A1E0EF18;
  v16[1].__vftable = a1;
  v16[1].__shared_owners_ = v14;
  v16[1].__shared_weak_owners_ = v15;
  v16[2].__vftable = v7;
  v16[2].__shared_owners_ = v9;
  LODWORD(v16[2].__shared_weak_owners_) = a2;
  v27 = MEMORY[0x29EDCA5F8];
  v28 = 1174405120;
  v29 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver31getRxDiversityStateWithRAT_syncENS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v30 = &__block_descriptor_tmp_209;
  v31 = v16 + 1;
  v32 = v16;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v27;
  v18 = _Block_copy(aBlock);
  v19 = v32;
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_13:
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_14:
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v20;
  v23[1] = v20;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v21 = *(v13 + 2);
  v27 = *(v13 + 1);
  if (!v21)
  {
    v28 = 0;
LABEL_28:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = std::__shared_weak_count::lock(v21);
  if (!v28)
  {
    goto LABEL_28;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v22 = v28;
  if (v28 && !atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  aBlock[0] = v18;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v23);
  MEMORY[0x29C264C60](v25);
  std::__shared_weak_count::__release_weak(v9);
}

void sub_296DE7350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v24 = *(v22 - 120);
  if (v24)
  {
    _Block_release(v24);
  }

  MEMORY[0x29C263BF0](&a15);
  radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(&a9);
  MEMORY[0x29C264C60](&a21);
  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

void *radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(void *a1)
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

void radio::ARICommandDriver::getRxDiversityState_sync(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_group_create();
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3802000000;
  v19[3] = __Block_byref_object_copy__0;
  v19[4] = __Block_byref_object_dispose__0;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 8);
  v20 = v6;
  v21 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver24getRxDiversityState_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  aBlock[3] = &unk_2A1E0E228;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  aBlock[4] = v19;
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 24);
  if (v9)
  {
    dispatch_retain(*(a1 + 24));
  }

  v17 = v8;
  v18 = v9;
  if (v8)
  {
    v10 = _Block_copy(v8);
    v13 = v10;
    v14 = v9;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = 0;
  v13 = 0;
  v14 = v9;
  if (v9)
  {
LABEL_13:
    dispatch_retain(v9);
  }

LABEL_14:
  radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(a1, 1, &v13);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(a1 + 24);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN5radio16ARICommandDriver24getRxDiversityState_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_29;
  v12[3] = &unk_29EE5BD98;
  v12[4] = v19;
  dispatch_group_notify(v5, v11, v12);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(v19, 8);
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
    dispatch_release(v5);
  }
}

void sub_296DE76C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_group_t group, char a22)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a14);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a22);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose((v24 - 104), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v23 + 40);
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
    dispatch_release(v22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
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
}

void ___ZN5radio16ARICommandDriver24getRxDiversityState_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 40))
    {
      if (*(v5 + 48))
      {
        CFRetain(*a2);
        v7 = *a3;
        if (v7)
        {
          CFRetain(v7);
        }

        v8 = *(v5 + 40);
        if (v8)
        {
          v9 = _Block_copy(v8);
        }

        else
        {
          v9 = 0;
        }

        v10 = *(v5 + 48);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        block[3] = &__block_descriptor_tmp_189;
        if (v9)
        {
          v11 = _Block_copy(v9);
        }

        else
        {
          v11 = 0;
        }

        aBlock = v11;
        v17 = v3;
        CFRetain(v3);
        cf = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        dispatch_async(v10, block);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        CFRelease(v3);
        v12 = *(*(a1 + 32) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = 0;
        if (v13)
        {
          _Block_release(v13);
        }

        v14 = *(v12 + 48);
        *(v12 + 48) = 0;
        if (v14)
        {
          dispatch_release(v14);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver24getRxDiversityState_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_29(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (v2 && *(v1 + 48))
  {
    v3 = _Block_copy(v2);
    v4 = v3;
    v5 = *(v1 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
    block[3] = &__block_descriptor_tmp_189;
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v9 = 0;
    cf = 0;
    aBlock = v6;
    dispatch_async(v5, block);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v4)
    {
      _Block_release(v4);
    }
  }
}

void radio::ARICommandDriver::getAntennaTxPort(void *a1, uint64_t a2, CFTypeRef *a3)
{
  if (*a2)
  {
    v6 = _Block_copy(*a2);
    v7 = *(a2 + 8);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v8 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v9 = a1[2];
  if (!v9 || (v10 = a1[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v14 = a1[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);

    std::__shared_weak_count::__release_weak(v12);
  }
}

void radio::ARICommandDriver::getAntennaTxPort_sync(void *a1, uint64_t a2, const __CFDictionary **a3)
{
  v4 = a1[2];
  if (!v4 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[2] = v10;
  v27[3] = v10;
  v27[0] = v10;
  v27[1] = v10;
  AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::ARI_CsiIceGetTxAntennaReq_SDK(v27);
  v26[0] = 0xAAAAAAAAAAAAAAAALL;
  v26[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v26, *a3);
  Bool = ctu::cf::map_adapter::getBool(v26, *MEMORY[0x29EDC8D68]);
  v12 = operator new(4uLL);
  *v12 = Bool;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = a1[32];
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!*a2)
  {
    v15 = 0;
    v16 = *(a2 + 8);
    if (!v16)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = _Block_copy(*a2);
  v16 = *(a2 + 8);
  if (v16)
  {
LABEL_9:
    dispatch_retain(v16);
  }

LABEL_10:
  v17 = operator new(0x40uLL);
  v17->__shared_owners_ = 0;
  p_shared_owners = &v17->__shared_owners_;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v7;
  v17->__vftable = &unk_2A1E0EF98;
  v17[1].__shared_owners_ = v9;
  v17[1].__shared_weak_owners_ = a1;
  v17[2].__vftable = v15;
  v17[2].__shared_owners_ = v16;
  v29 = MEMORY[0x29EDCA5F8];
  v30 = 1174405120;
  v31 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver21getAntennaTxPort_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEESD_E3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v32 = &__block_descriptor_tmp_217;
  v33 = v17 + 1;
  v34 = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v29;
  v19 = _Block_copy(aBlock);
  v20 = v34;
  if (!v34 || atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_13:
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_14:
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v21;
  v24[1] = v21;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v22 = *(v14 + 16);
  v29 = *(v14 + 8);
  if (!v22)
  {
    v30 = 0;
LABEL_28:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v30 = std::__shared_weak_count::lock(v22);
  if (!v30)
  {
    goto LABEL_28;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v23 = v30;
  if (v30 && !atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  aBlock[0] = v19;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v24);
  MEMORY[0x29C263AC0](v26);
  MEMORY[0x29C264850](v27);
  std::__shared_weak_count::__release_weak(v9);
}

void sub_296DE7F74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  va_copy(va3, va2);
  v19 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  v5 = *(v3 - 120);
  if (v5)
  {
    _Block_release(v5);
  }

  MEMORY[0x29C263BF0](va1);
  radio::ARICommandDriver::getAntennaTxPort_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::~$_0(va);
  MEMORY[0x29C263AC0](va2);
  MEMORY[0x29C264850](va3);
  std::__shared_weak_count::__release_weak(v2);
  _Unwind_Resume(a1);
}

void *radio::ARICommandDriver::getAntennaTxPort_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::~$_0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
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

void radio::ARICommandDriver::getARTDWithRAT_sync(std::__shared_weak_count_vtbl *a1, int a2, uint64_t a3)
{
  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v7 = a1->~__shared_weak_count_0, (v8 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v10;
  v25[3] = v10;
  v25[0] = v10;
  v25[1] = v10;
  AriSdk::ARI_CsiIceGetArtdSettingReq_SDK::ARI_CsiIceGetArtdSettingReq_SDK(v25);
  v11 = operator new(4uLL);
  *v11 = a2;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = a1[6].__on_zero_shared;
  if (!*a3)
  {
    v14 = 0;
    v15 = *(a3 + 8);
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = _Block_copy(*a3);
  v15 = *(a3 + 8);
  if (v15)
  {
LABEL_9:
    dispatch_retain(v15);
  }

LABEL_10:
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x48uLL);
  *&v16->__shared_owners_ = 0u;
  p_shared_owners = &v16->__shared_owners_;
  v16->__vftable = &unk_2A1E0F018;
  v16[1].__vftable = a1;
  v16[1].__shared_owners_ = v14;
  v16[1].__shared_weak_owners_ = v15;
  v16[2].__vftable = v7;
  v16[2].__shared_owners_ = v9;
  LODWORD(v16[2].__shared_weak_owners_) = a2;
  v27 = MEMORY[0x29EDCA5F8];
  v28 = 1174405120;
  v29 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver19getARTDWithRAT_syncENS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v30 = &__block_descriptor_tmp_222;
  v31 = v16 + 1;
  v32 = v16;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v27;
  v18 = _Block_copy(aBlock);
  v19 = v32;
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_13:
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_14:
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v20;
  v23[1] = v20;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v21 = *(v13 + 2);
  v27 = *(v13 + 1);
  if (!v21)
  {
    v28 = 0;
LABEL_28:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = std::__shared_weak_count::lock(v21);
  if (!v28)
  {
    goto LABEL_28;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v22 = v28;
  if (v28 && !atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  aBlock[0] = v18;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v23);
  MEMORY[0x29C264C40](v25);
  std::__shared_weak_count::__release_weak(v9);
}

void sub_296DE8434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v24 = *(v22 - 120);
  if (v24)
  {
    _Block_release(v24);
  }

  MEMORY[0x29C263BF0](&a15);
  radio::ARICommandDriver::getARTDWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(&a9);
  MEMORY[0x29C264C40](&a21);
  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

void *radio::ARICommandDriver::getARTDWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(void *a1)
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

void radio::ARICommandDriver::getARTD_sync(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_group_create();
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3802000000;
  v28[3] = __Block_byref_object_copy__0;
  v28[4] = __Block_byref_object_dispose__0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 8);
  v29 = v6;
  v30 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver12getARTD_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  aBlock[3] = &unk_2A1E0E260;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  aBlock[4] = v28;
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 24);
  if (v9)
  {
    dispatch_retain(*(a1 + 24));
  }

  v26 = v8;
  v27 = v9;
  if (v8)
  {
    v10 = _Block_copy(v8);
    v22 = v10;
    v23 = v9;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = 0;
  v22 = 0;
  v23 = v9;
  if (v9)
  {
LABEL_13:
    dispatch_retain(v9);
  }

LABEL_14:
  radio::ARICommandDriver::getARTDWithRAT_sync(a1, 1, &v22);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v8)
  {
    v11 = _Block_copy(v8);
    v20 = v11;
    v21 = v9;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11 = 0;
  v20 = 0;
  v21 = v9;
  if (v9)
  {
LABEL_20:
    dispatch_retain(v9);
  }

LABEL_21:
  radio::ARICommandDriver::getARTDWithRAT_sync(a1, 2, &v20);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (v8)
  {
    v12 = _Block_copy(v8);
    v18 = v12;
    v19 = v9;
    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v12 = 0;
  v18 = 0;
  v19 = v9;
  if (v9)
  {
LABEL_27:
    dispatch_retain(v9);
  }

LABEL_28:
  radio::ARICommandDriver::getARTDWithRAT_sync(a1, 3, &v18);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v8)
  {
    v13 = _Block_copy(v8);
    v16 = v13;
    v17 = v9;
    if (!v9)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = 0;
  v16 = 0;
  v17 = v9;
  if (v9)
  {
LABEL_34:
    dispatch_retain(v9);
  }

LABEL_35:
  radio::ARICommandDriver::getARTDWithRAT_sync(a1, 0, &v16);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  v14 = *(a1 + 24);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 0x40000000;
  v15[2] = ___ZN5radio16ARICommandDriver12getARTD_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_34;
  v15[3] = &unk_29EE5BDC0;
  v15[4] = v28;
  dispatch_group_notify(v5, v14, v15);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(v28, 8);
  if (v30)
  {
    dispatch_release(v30);
  }

  if (v29)
  {
    _Block_release(v29);
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
    dispatch_release(v5);
  }
}

void sub_296DE88CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, dispatch_group_t group)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a14);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v29 - 136);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose((v29 - 120), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v28 + 40);
  if (v27)
  {
    dispatch_group_leave(v27);
    dispatch_release(v27);
    dispatch_release(v27);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio16ARICommandDriver12getARTD_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 40))
    {
      if (*(v5 + 48))
      {
        CFRetain(*a2);
        v7 = *a3;
        if (v7)
        {
          CFRetain(v7);
        }

        v8 = *(v5 + 40);
        if (v8)
        {
          v9 = _Block_copy(v8);
        }

        else
        {
          v9 = 0;
        }

        v10 = *(v5 + 48);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        block[3] = &__block_descriptor_tmp_189;
        if (v9)
        {
          v11 = _Block_copy(v9);
        }

        else
        {
          v11 = 0;
        }

        aBlock = v11;
        v17 = v3;
        CFRetain(v3);
        cf = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        dispatch_async(v10, block);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        CFRelease(v3);
        v12 = *(*(a1 + 32) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = 0;
        if (v13)
        {
          _Block_release(v13);
        }

        v14 = *(v12 + 48);
        *(v12 + 48) = 0;
        if (v14)
        {
          dispatch_release(v14);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver12getARTD_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_34(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (v2 && *(v1 + 48))
  {
    v3 = _Block_copy(v2);
    v4 = v3;
    v5 = *(v1 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
    block[3] = &__block_descriptor_tmp_189;
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v9 = 0;
    cf = 0;
    aBlock = v6;
    dispatch_async(v5, block);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v4)
    {
      _Block_release(v4);
    }
  }
}

void radio::ARICommandDriver::getARFCN_sync(std::__shared_weak_count_vtbl *a1, uint64_t a2)
{
  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v5 = a1->~__shared_weak_count_0, (v6 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v8;
  v21[3] = v8;
  v21[0] = v8;
  v21[1] = v8;
  AriSdk::ARI_CsiIceGetArfcnLockReq_SDK::ARI_CsiIceGetArfcnLockReq_SDK(v21);
  v9 = a1[6].__on_zero_shared;
  if (!*a2)
  {
    v10 = 0;
    v11 = *(a2 + 8);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = _Block_copy(*a2);
  v11 = *(a2 + 8);
  if (v11)
  {
LABEL_7:
    dispatch_retain(v11);
  }

LABEL_8:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x40uLL);
  *&v12->__shared_owners_ = 0u;
  p_shared_owners = &v12->__shared_owners_;
  v12->__vftable = &unk_2A1E0F098;
  v12[1].__vftable = a1;
  v12[1].__shared_owners_ = v10;
  v12[1].__shared_weak_owners_ = v11;
  v12[2].__vftable = v5;
  v12[2].__shared_owners_ = v7;
  v22 = MEMORY[0x29EDCA5F8];
  v23 = 1174405120;
  v24 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver13getARFCN_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v25 = &__block_descriptor_tmp_228;
  v26 = v12 + 1;
  v27 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v22;
  v14 = _Block_copy(aBlock);
  v15 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_11:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_12:
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v16;
  v19[1] = v16;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v17 = *(v9 + 2);
  v22 = *(v9 + 1);
  if (!v17)
  {
    v23 = 0;
LABEL_26:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = std::__shared_weak_count::lock(v17);
  if (!v23)
  {
    goto LABEL_26;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v18 = v23;
  if (v23 && !atomic_fetch_add((v23 + 8), 0xFFFFFFFFFFFFFFFFLL))
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

  MEMORY[0x29C263BF0](v19);
  MEMORY[0x29C264830](v21);
  std::__shared_weak_count::__release_weak(v7);
}

void sub_296DE8F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v5 = *(v3 - 120);
  if (v5)
  {
    _Block_release(v5);
  }

  MEMORY[0x29C263BF0](va1);
  radio::ARICommandDriver::getARFCN_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(va);
  MEMORY[0x29C264830](va2);
  std::__shared_weak_count::__release_weak(v2);
  _Unwind_Resume(a1);
}

void *radio::ARICommandDriver::getARFCN_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(void *a1)
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

void radio::ARICommandDriver::getCA_sync(std::__shared_weak_count_vtbl *a1, uint64_t a2)
{
  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v5 = a1->~__shared_weak_count_0, (v6 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v8;
  v21[3] = v8;
  v21[0] = v8;
  v21[1] = v8;
  AriSdk::ARI_CsiIceGetCaEnableReq_SDK::ARI_CsiIceGetCaEnableReq_SDK(v21);
  v9 = a1[6].__on_zero_shared;
  if (!*a2)
  {
    v10 = 0;
    v11 = *(a2 + 8);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = _Block_copy(*a2);
  v11 = *(a2 + 8);
  if (v11)
  {
LABEL_7:
    dispatch_retain(v11);
  }

LABEL_8:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x40uLL);
  *&v12->__shared_owners_ = 0u;
  p_shared_owners = &v12->__shared_owners_;
  v12->__vftable = &unk_2A1E0F118;
  v12[1].__vftable = a1;
  v12[1].__shared_owners_ = v10;
  v12[1].__shared_weak_owners_ = v11;
  v12[2].__vftable = v5;
  v12[2].__shared_owners_ = v7;
  v22 = MEMORY[0x29EDCA5F8];
  v23 = 1174405120;
  v24 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver10getCA_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v25 = &__block_descriptor_tmp_233;
  v26 = v12 + 1;
  v27 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v22;
  v14 = _Block_copy(aBlock);
  v15 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_11:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_12:
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v16;
  v19[1] = v16;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v17 = *(v9 + 2);
  v22 = *(v9 + 1);
  if (!v17)
  {
    v23 = 0;
LABEL_26:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = std::__shared_weak_count::lock(v17);
  if (!v23)
  {
    goto LABEL_26;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v18 = v23;
  if (v23 && !atomic_fetch_add((v23 + 8), 0xFFFFFFFFFFFFFFFFLL))
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

  MEMORY[0x29C263BF0](v19);
  MEMORY[0x29C264620](v21);
  std::__shared_weak_count::__release_weak(v7);
}

void sub_296DE93F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v5 = *(v3 - 120);
  if (v5)
  {
    _Block_release(v5);
  }

  MEMORY[0x29C263BF0](va1);
  radio::ARICommandDriver::getCA_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(va);
  MEMORY[0x29C264620](va2);
  std::__shared_weak_count::__release_weak(v2);
  _Unwind_Resume(a1);
}

void *radio::ARICommandDriver::getCA_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::~$_0(void *a1)
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

void radio::ARICommandDriver::checkFieldTestConfig(radio::ARICommandDriver *this)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(this + 36);
  if (v2)
  {
    v3 = (this + 288);
    do
    {
      if (v2[7] >= 1)
      {
        v3 = v2;
      }

      v2 = *&v2[2 * (v2[7] < 1)];
    }

    while (v2);
    if (v3 != (this + 288) && v3[7] < 2)
    {
      goto LABEL_9;
    }
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26[0]) = 0;
    _os_log_error_impl(&dword_296D7D000, v4, OS_LOG_TYPE_ERROR, "Failed to find fRxDiversity[ kWCDMA ]", v26, 2u);
    v5 = (this + 320);
    v6 = *(this + 40);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:
    v5 = (this + 320);
    v6 = *(this + 40);
    if (v6)
    {
LABEL_10:
      v7 = v5;
      v8 = v6;
      do
      {
        if (v8[7] >= 1)
        {
          v7 = v8;
        }

        v8 = *&v8[2 * (v8[7] < 1)];
      }

      while (v8);
      if (v7 != v5 && v7[7] < 2)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = *(this + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26[0]) = 0;
    _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "Failed to find fARTD[ kWCDMA ]", v26, 2u);
    v6 = *v5;
    if (*v5)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_17:
  if (v6)
  {
LABEL_18:
    v10 = v5;
    v11 = v6;
    do
    {
      if (v11[7] >= 2)
      {
        v10 = v11;
      }

      v11 = *&v11[2 * (v11[7] < 2)];
    }

    while (v11);
    if (v10 != v5 && v10[7] < 3)
    {
      goto LABEL_25;
    }
  }

LABEL_24:
  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26[0]) = 0;
    _os_log_error_impl(&dword_296D7D000, v12, OS_LOG_TYPE_ERROR, "Failed to find fARTD[ kTDSCDMA ]", v26, 2u);
    v6 = *v5;
    if (*v5)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_25:
  if (v6)
  {
LABEL_26:
    v13 = v5;
    v14 = v6;
    do
    {
      if (v14[7] >= 3)
      {
        v13 = v14;
      }

      v14 = *&v14[2 * (v14[7] < 3)];
    }

    while (v14);
    if (v13 != v5 && v13[7] < 4)
    {
      goto LABEL_33;
    }
  }

LABEL_32:
  v15 = *(this + 5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26[0]) = 0;
    _os_log_error_impl(&dword_296D7D000, v15, OS_LOG_TYPE_ERROR, "Failed to find fARTD[ kLTE ]", v26, 2u);
    v6 = *v5;
    if (*v5)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_33:
  if (v6)
  {
LABEL_34:
    v16 = v5;
    do
    {
      v17 = v6[7];
      if ((v17 & 0x80000000) == 0)
      {
        v16 = v6;
      }

      v6 = *(v6 + ((v17 >> 28) & 8));
    }

    while (v6);
    if (v16 != v5 && v16[7] < 1)
    {
      goto LABEL_41;
    }
  }

LABEL_40:
  v18 = *(this + 5);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26[0]) = 0;
    _os_log_error_impl(&dword_296D7D000, v18, OS_LOG_TYPE_ERROR, "Failed to find fARTD[ kGSM ]", v26, 2u);
    v19 = *(this + 43);
    if (!v19)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = *(this + 43);
  if (!v19)
  {
    goto LABEL_48;
  }

LABEL_42:
  v20 = *(this + 90);
  v21 = (this + 344);
  do
  {
    if (v19[7] >= v20)
    {
      v21 = v19;
    }

    v19 = *&v19[2 * (v19[7] < v20)];
  }

  while (v19);
  if (v21 != (this + 344) && v20 >= v21[7])
  {
    goto LABEL_49;
  }

LABEL_48:
  v22 = *(this + 5);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
LABEL_49:
    v23 = *MEMORY[0x29EDCA608];
    return;
  }

  v24 = *(this + 90);
  v26[0] = 67109120;
  v26[1] = v24;
  _os_log_error_impl(&dword_296D7D000, v22, OS_LOG_TYPE_ERROR, "Failed to find fARFCNLock[ fARFCNCurrentRAT: %d ]", v26, 8u);
  v25 = *MEMORY[0x29EDCA608];
}

void radio::ARICommandDriver::getFieldTestConfig(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio16ARICommandDriver18getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_41_0;
  v6[4] = a1;
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

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio16ARICommandDriver18getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = dispatch_group_create();
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v4);
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3802000000;
  v31[3] = __Block_byref_object_copy__0;
  v31[4] = __Block_byref_object_dispose__0;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v5 = a1[5];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a1[6];
  v32 = v5;
  v33 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver18getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  aBlock[3] = &unk_2A1E0E298;
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  aBlock[4] = v31;
  v7 = _Block_copy(aBlock);
  v8 = *(v2 + 24);
  if (v8)
  {
    dispatch_retain(*(v2 + 24));
  }

  v29 = v7;
  v30 = v8;
  if (v7)
  {
    v9 = _Block_copy(v7);
    v25 = v9;
    v26 = v8;
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = 0;
  v25 = 0;
  v26 = v8;
  if (v8)
  {
LABEL_13:
    dispatch_retain(v8);
  }

LABEL_14:
  radio::ARICommandDriver::getRxDiversityState_sync(v2, &v25);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (v7)
  {
    v10 = _Block_copy(v7);
    v23 = v10;
    v24 = v8;
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 = 0;
  v23 = 0;
  v24 = v8;
  if (v8)
  {
LABEL_20:
    dispatch_retain(v8);
  }

LABEL_21:
  v22 = 0;
  radio::ARICommandDriver::getAntennaTxPort_sync(v2, &v23, &v22);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v7)
  {
    v11 = _Block_copy(v7);
    v20 = v11;
    v21 = v8;
    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v11 = 0;
  v20 = 0;
  v21 = v8;
  if (v8)
  {
LABEL_27:
    dispatch_retain(v8);
  }

LABEL_28:
  radio::ARICommandDriver::getARTD_sync(v2, &v20);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (v7)
  {
    v12 = _Block_copy(v7);
    v18 = v12;
    v19 = v8;
    if (!v8)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v12 = 0;
  v18 = 0;
  v19 = v8;
  if (v8)
  {
LABEL_34:
    dispatch_retain(v8);
  }

LABEL_35:
  radio::ARICommandDriver::getARFCN_sync(v2, &v18);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v7)
  {
    v13 = _Block_copy(v7);
    v16 = v13;
    v17 = v8;
    if (!v8)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v13 = 0;
  v16 = 0;
  v17 = v8;
  if (v8)
  {
LABEL_41:
    dispatch_retain(v8);
  }

LABEL_42:
  radio::ARICommandDriver::getCA_sync(v2, &v16);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  radio::ARICommandDriver::checkFieldTestConfig(v2);
  v14 = *(v2 + 24);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 0x40000000;
  v15[2] = ___ZN5radio16ARICommandDriver18getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_39;
  v15[3] = &unk_29EE5BDE8;
  v15[4] = v31;
  v15[5] = v2;
  dispatch_group_notify(v4, v14, v15);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(v31, 8);
  if (v33)
  {
    dispatch_release(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
    dispatch_release(v4);
  }
}

void sub_296DE9D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, dispatch_group_t group)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a15);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v36 - 136);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose((v36 - 120), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v35 + 40);
  if (v34)
  {
    dispatch_group_leave(v34);
    dispatch_release(v34);
    dispatch_release(v34);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio16ARICommandDriver18getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 40))
    {
      if (*(v5 + 48))
      {
        CFRetain(*a2);
        v7 = *a3;
        if (v7)
        {
          CFRetain(v7);
        }

        v8 = *(v5 + 40);
        if (v8)
        {
          v9 = _Block_copy(v8);
        }

        else
        {
          v9 = 0;
        }

        v10 = *(v5 + 48);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        block[3] = &__block_descriptor_tmp_189;
        if (v9)
        {
          v11 = _Block_copy(v9);
        }

        else
        {
          v11 = 0;
        }

        aBlock = v11;
        v17 = v3;
        CFRetain(v3);
        cf = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        dispatch_async(v10, block);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        CFRelease(v3);
        v12 = *(*(a1 + 32) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = 0;
        if (v13)
        {
          _Block_release(v13);
        }

        v14 = *(v12 + 48);
        *(v12 + 48) = 0;
        if (v14)
        {
          dispatch_release(v14);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver18getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_39(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 40))
  {
    if (*(v1 + 48))
    {
      v3 = *(a1 + 40);
      v4 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v6 = *(v3 + 288);
        if (v6)
        {
          while (1)
          {
            while (1)
            {
              v8 = v6;
              v9 = *(v6 + 28);
              if (v9 < 2)
              {
                break;
              }

              v6 = *v8;
              v7 = v8;
              if (!*v8)
              {
                goto LABEL_11;
              }
            }

            if (v9 == 1)
            {
              break;
            }

            v6 = v8[1];
            if (!v6)
            {
              v7 = v8 + 1;
              goto LABEL_11;
            }
          }

          v10 = v8;
        }

        else
        {
          v7 = (v3 + 288);
          v8 = (v3 + 288);
LABEL_11:
          v10 = operator new(0x28uLL);
          *(v10 + 28) = 1;
          *v10 = 0;
          *(v10 + 1) = 0;
          *(v10 + 2) = v8;
          *v7 = v10;
          v11 = **(v3 + 280);
          if (v11)
          {
            *(v3 + 280) = v11;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 288), v10);
          ++*(v3 + 296);
        }

        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8D90], *(v10 + 8), v4);
        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8C90], *(v3 + 304), v4);
        v12 = (v3 + 320);
        v13 = *(v3 + 320);
        v14 = (v3 + 320);
        v15 = (v3 + 320);
        if (v13)
        {
          while (1)
          {
            while (1)
            {
              v15 = v13;
              v16 = *(v13 + 28);
              if (v16 < 2)
              {
                break;
              }

              v13 = *v15;
              v14 = v15;
              if (!*v15)
              {
                goto LABEL_22;
              }
            }

            if (v16 == 1)
            {
              break;
            }

            v13 = v15[1];
            if (!v13)
            {
              v14 = v15 + 1;
              goto LABEL_22;
            }
          }

          v17 = v15;
        }

        else
        {
LABEL_22:
          v17 = operator new(0x28uLL);
          *(v17 + 28) = 1;
          *v17 = 0;
          *(v17 + 1) = 0;
          *(v17 + 2) = v15;
          *v14 = v17;
          v18 = **(v3 + 312);
          if (v18)
          {
            *(v3 + 312) = v18;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 320), v17);
          ++*(v3 + 328);
        }

        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8C78], *(v17 + 8), v4);
        v19 = *v12;
        v20 = (v3 + 320);
        v21 = (v3 + 320);
        if (*v12)
        {
          while (1)
          {
            while (1)
            {
              v21 = v19;
              v22 = *(v19 + 28);
              if (v22 < 3)
              {
                break;
              }

              v19 = *v21;
              v20 = v21;
              if (!*v21)
              {
                goto LABEL_33;
              }
            }

            if (v22 == 2)
            {
              break;
            }

            v19 = v21[1];
            if (!v19)
            {
              v20 = v21 + 1;
              goto LABEL_33;
            }
          }

          v23 = v21;
        }

        else
        {
LABEL_33:
          v23 = operator new(0x28uLL);
          *(v23 + 28) = 2;
          *v23 = 0;
          *(v23 + 1) = 0;
          *(v23 + 2) = v21;
          *v20 = v23;
          v24 = **(v3 + 312);
          if (v24)
          {
            *(v3 + 312) = v24;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 320), v23);
          ++*(v3 + 328);
        }

        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8CB0], *(v23 + 8), v4);
        v25 = *v12;
        v26 = (v3 + 320);
        v27 = (v3 + 320);
        if (*v12)
        {
          while (1)
          {
            while (1)
            {
              v27 = v25;
              v28 = *(v25 + 28);
              if (v28 < 4)
              {
                break;
              }

              v25 = *v27;
              v26 = v27;
              if (!*v27)
              {
                goto LABEL_44;
              }
            }

            if (v28 == 3)
            {
              break;
            }

            v25 = v27[1];
            if (!v25)
            {
              v26 = v27 + 1;
              goto LABEL_44;
            }
          }

          v29 = v27;
        }

        else
        {
LABEL_44:
          v29 = operator new(0x28uLL);
          *(v29 + 28) = 3;
          *v29 = 0;
          *(v29 + 1) = 0;
          *(v29 + 2) = v27;
          *v26 = v29;
          v30 = **(v3 + 312);
          if (v30)
          {
            *(v3 + 312) = v30;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 320), v29);
          ++*(v3 + 328);
        }

        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8B38], *(v29 + 8), v4);
        v31 = *v12;
        v32 = (v3 + 320);
        if (*v12)
        {
          while (1)
          {
            while (1)
            {
              v32 = v31;
              v33 = *(v31 + 28);
              if (v33 < 1)
              {
                break;
              }

              v31 = *v32;
              v12 = v32;
              if (!*v32)
              {
                goto LABEL_55;
              }
            }

            if ((v33 & 0x80000000) == 0)
            {
              break;
            }

            v31 = v32[1];
            if (!v31)
            {
              v12 = v32 + 1;
              goto LABEL_55;
            }
          }

          v34 = v32;
        }

        else
        {
LABEL_55:
          v34 = operator new(0x28uLL);
          v34[7] = 0;
          v34[8] = 0;
          *v34 = 0;
          *(v34 + 1) = 0;
          *(v34 + 2) = v32;
          *v12 = v34;
          v35 = **(v3 + 312);
          if (v35)
          {
            *(v3 + 312) = v35;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 320), v34);
          ++*(v3 + 328);
        }

        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8B28], v34[8], v4);
        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8B48], *(v3 + 360), v4);
        v36 = *(v3 + 344);
        v37 = *(v3 + 360);
        if (v36)
        {
          while (1)
          {
            while (1)
            {
              v39 = v36;
              v40 = *(v36 + 28);
              if (v37 >= v40)
              {
                break;
              }

              v36 = *v39;
              v38 = v39;
              if (!*v39)
              {
                goto LABEL_65;
              }
            }

            if (v40 >= v37)
            {
              break;
            }

            v36 = v39[1];
            if (!v36)
            {
              v38 = v39 + 1;
              goto LABEL_65;
            }
          }

          v41 = v39;
        }

        else
        {
          v38 = (v3 + 344);
          v39 = (v3 + 344);
LABEL_65:
          v41 = operator new(0x28uLL);
          v41[7] = v37;
          v41[8] = 0;
          *v41 = 0;
          *(v41 + 1) = 0;
          *(v41 + 2) = v39;
          *v38 = v41;
          v42 = **(v3 + 336);
          if (v42)
          {
            *(v3 + 336) = v42;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 344), v41);
          ++*(v3 + 352);
        }

        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8C68], v41[8], v4);
        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8C80], *(v3 + 364), v4);
        v43 = *(*(a1 + 32) + 8);
        CFRetain(Mutable);
        v44 = *(v43 + 40);
        if (v44)
        {
          v45 = _Block_copy(v44);
        }

        else
        {
          v45 = 0;
        }

        v46 = *(v43 + 48);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
        block[3] = &__block_descriptor_tmp_182;
        if (v45)
        {
          v47 = _Block_copy(v45);
        }

        else
        {
          v47 = 0;
        }

        aBlock = v47;
        v50 = 0;
        cf = Mutable;
        CFRetain(Mutable);
        dispatch_async(v46, block);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v50)
        {
          CFRelease(v50);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v45)
        {
          _Block_release(v45);
        }

        CFRelease(Mutable);
        CFRelease(Mutable);
      }
    }
  }
}

void __copy_helper_block_e8_40c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1)
{
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
}

void radio::ARICommandDriver::setRxDiversityStateWithRAT_sync(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v60 = *MEMORY[0x29EDCA608];
  v8 = (a1 + 288);
  v9 = *(a1 + 288);
  v10 = (a1 + 288);
  v11 = (a1 + 288);
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v12 = *(v9 + 28);
        if (v12 <= a3)
        {
          break;
        }

        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_8;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v9 = v11[1];
      if (!v9)
      {
        v10 = v11 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 7) = a3;
    *(v11 + 8) = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(a1 + 280);
    if (v14)
    {
      *(a1 + 280) = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 288), v11);
    ++*(a1 + 296);
  }

  if (*(v11 + 8) == a2)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v37 = *v8;
      v38 = v8;
      if (*v8)
      {
        while (1)
        {
          while (1)
          {
            v38 = v37;
            v39 = *(v37 + 28);
            if (v39 <= a3)
            {
              break;
            }

            v37 = *v38;
            v8 = v38;
            if (!*v38)
            {
              goto LABEL_49;
            }
          }

          if (v39 >= a3)
          {
            break;
          }

          v37 = v38[1];
          if (!v37)
          {
            v8 = v38 + 1;
            goto LABEL_49;
          }
        }
      }

      else
      {
LABEL_49:
        v40 = v38;
        v38 = operator new(0x28uLL);
        *(v38 + 7) = a3;
        *(v38 + 8) = 0;
        *v38 = 0;
        v38[1] = 0;
        v38[2] = v40;
        *v8 = v38;
        v41 = **(a1 + 280);
        if (v41)
        {
          *(a1 + 280) = v41;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 288), v38);
        ++*(a1 + 296);
      }

      v42 = *(v38 + 8);
      *buf = 67109632;
      *&buf[4] = a3;
      *&buf[8] = 1024;
      *&buf[10] = v42;
      *&buf[14] = 1024;
      LODWORD(v56) = a2;
      _os_log_debug_impl(&dword_296D7D000, v15, OS_LOG_TYPE_DEBUG, "#D fRxDiversity[ %d ]: %d == %d\n", buf, 0x14u);
      v16 = *a4;
      if (*a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = *a4;
      if (*a4)
      {
LABEL_14:
        v17 = _Block_copy(v16);
        goto LABEL_54;
      }
    }

    v17 = 0;
LABEL_54:
    v43 = *(a4 + 8);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 1174405120;
    *&v56 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    *(&v56 + 1) = &__block_descriptor_tmp_179;
    if (v17)
    {
      cf[0] = _Block_copy(v17);
      cf[1] = 0;
      dispatch_async(v43, buf);
      v44 = cf[1];
      if (!cf[1])
      {
        goto LABEL_59;
      }
    }

    else
    {
      cf[0] = 0;
      cf[1] = 0;
      dispatch_async(v43, buf);
      v44 = cf[1];
      if (!cf[1])
      {
LABEL_59:
        if (cf[0])
        {
          _Block_release(cf[0]);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        goto LABEL_63;
      }
    }

    CFRelease(v44);
    goto LABEL_59;
  }

  v18 = *(a1 + 16);
  if (!v18 || (v19 = *(a1 + 8), (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v21);
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v22;
  *__p = v22;
  v56 = v22;
  *cf = v22;
  *buf = v22;
  AriSdk::ARI_CsiIceRxDiversityReq_SDK::ARI_CsiIceRxDiversityReq_SDK(buf);
  v23 = operator new(4uLL);
  *v23 = a2;
  v24 = __p[0];
  __p[0] = v23;
  if (v24)
  {
    operator delete(v24);
  }

  v25 = operator new(4uLL);
  *v25 = a3;
  v26 = __p[1];
  __p[1] = v25;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(a1 + 256);
  if (!*a4)
  {
    v28 = 0;
    v29 = *(a4 + 8);
    if (!v29)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v28 = _Block_copy(*a4);
  v29 = *(a4 + 8);
  if (v29)
  {
LABEL_25:
    dispatch_retain(v29);
  }

LABEL_26:
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = operator new(0x40uLL);
  *&v30->__shared_owners_ = 0u;
  p_shared_owners = &v30->__shared_owners_;
  v30->__vftable = &unk_2A1E0F198;
  v30[1].__vftable = v28;
  v30[1].__shared_owners_ = v29;
  v30[1].__shared_weak_owners_ = v19;
  v30[2].__vftable = v21;
  LODWORD(v30[2].__shared_owners_) = a3;
  v48 = MEMORY[0x29EDCA5F8];
  v49 = 1174405120;
  v50 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver31setRxDiversityStateWithRAT_syncEiNS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v51 = &__block_descriptor_tmp_236;
  v52 = v30 + 1;
  v53 = v30;
  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v48;
  v32 = _Block_copy(aBlock);
  v33 = v53;
  if (!v53 || atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_29:
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_30:
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[0] = v34;
  v46[1] = v34;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v35 = *(v27 + 16);
  v48 = *(v27 + 8);
  if (!v35)
  {
    v49 = 0;
LABEL_66:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v49 = std::__shared_weak_count::lock(v35);
  if (!v49)
  {
    goto LABEL_66;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v36 = v49;
  if (v49 && !atomic_fetch_add((v49 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  aBlock[0] = v32;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v46);
  MEMORY[0x29C264660](buf);
  std::__shared_weak_count::__release_weak(v21);
LABEL_63:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_296DEAD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t radio::ARICommandDriver::setRxDiversityStateWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(uint64_t a1)
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

void radio::ARICommandDriver::setRxDiversityState_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v6 = dispatch_group_create();
  v7 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v7);
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3802000000;
  v23[3] = __Block_byref_object_copy__42;
  v23[4] = __Block_byref_object_dispose__43;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a3 + 8);
  v24 = v8;
  v25 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver24setRxDiversityState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  aBlock[3] = &unk_2A1E0E300;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  aBlock[4] = v23;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  v21 = v10;
  v22 = v11;
  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v18, *a2);
  Int = ctu::cf::map_adapter::getInt(v18, *MEMORY[0x29EDC8D90]);
  if (v10)
  {
    v13 = _Block_copy(v10);
    v16 = v13;
    v17 = v11;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v16 = 0;
  v17 = v11;
  if (v11)
  {
LABEL_13:
    dispatch_retain(v11);
  }

LABEL_14:
  radio::ARICommandDriver::setRxDiversityStateWithRAT_sync(a1, Int, 1, &v16);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  v14 = *(a1 + 24);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 0x40000000;
  v15[2] = ___ZN5radio16ARICommandDriver24setRxDiversityState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_48;
  v15[3] = &unk_29EE5BE10;
  v15[4] = v23;
  dispatch_group_notify(v7, v14, v15);
  MEMORY[0x29C263AC0](v18);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(v23, 8);
  if (v25)
  {
    dispatch_release(v25);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
    dispatch_release(v7);
  }
}

void sub_296DEB0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, char a24)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a14);
  MEMORY[0x29C263AC0](&a16);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a24);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose((v26 - 120), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v25 + 40);
  if (v24)
  {
    dispatch_group_leave(v24);
    dispatch_release(v24);
    dispatch_release(v24);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__43(uint64_t a1)
{
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
}

void ___ZN5radio16ARICommandDriver24setRxDiversityState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 40))
    {
      if (*(v4 + 48))
      {
        CFRetain(*a2);
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = _Block_copy(v5);
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v4 + 48);
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v12[3] = &__block_descriptor_tmp_179;
        if (v6)
        {
          v8 = _Block_copy(v6);
        }

        else
        {
          v8 = 0;
        }

        aBlock = v8;
        cf = v2;
        CFRetain(v2);
        dispatch_async(v7, v12);
        if (cf)
        {
          CFRelease(cf);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        CFRelease(v2);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v9 + 48);
        *(v9 + 48) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver24setRxDiversityState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_48(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (!v2 || !*(v1 + 48))
  {
    return;
  }

  v3 = _Block_copy(v2);
  v4 = v3;
  v5 = *(v1 + 48);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v7[3] = &__block_descriptor_tmp_179;
  if (v3)
  {
    aBlock = _Block_copy(v3);
    cf = 0;
    dispatch_async(v5, v7);
    v6 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  aBlock = 0;
  cf = 0;
  dispatch_async(v5, v7);
  v6 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void radio::ARICommandDriver::setAntennaTxPort(void *a1, CFTypeRef *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (!*a3)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = _Block_copy(*a3);
  v7 = *(a3 + 8);
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

uint64_t radio::ARICommandDriver::setAntennaTxPort_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  v40[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v40, *a2);
  Bool = ctu::cf::map_adapter::getBool(v40, *MEMORY[0x29EDC8D68]);
  v6 = MEMORY[0x29EDC8C90];
  if ((Bool & 1) == 0)
  {
    v7 = *(a1 + 304);
    v8 = *MEMORY[0x29EDC8C90];
    if (v7 == ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8C90]))
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 304);
        Int = ctu::cf::map_adapter::getInt(v40, v8);
        *buf = 67109376;
        *&buf[4] = v34;
        *&buf[8] = 1024;
        *&buf[10] = Int;
        _os_log_debug_impl(&dword_296D7D000, v9, OS_LOG_TYPE_DEBUG, "#D fAntennaState: %d == %d\n", buf, 0xEu);
        v10 = *a3;
        if (*a3)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = *a3;
        if (*a3)
        {
LABEL_5:
          v11 = _Block_copy(v10);
          goto LABEL_36;
        }
      }

      v11 = 0;
LABEL_36:
      v36 = *(a3 + 8);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 1174405120;
      *&v49 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
      *(&v49 + 1) = &__block_descriptor_tmp_179;
      if (v11)
      {
        v50 = _Block_copy(v11);
        dispatch_async(v36, buf);
        v37 = *(&v50 + 1);
        if (!*(&v50 + 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        v50 = 0uLL;
        dispatch_async(v36, buf);
        v37 = *(&v50 + 1);
        if (!*(&v50 + 1))
        {
LABEL_41:
          if (v50)
          {
            _Block_release(v50);
          }

          if (v11)
          {
            _Block_release(v11);
          }

          goto LABEL_29;
        }
      }

      CFRelease(v37);
      goto LABEL_41;
    }
  }

  v12 = *(a1 + 16);
  if (!v12 || (v13 = *(a1 + 8), (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v16;
  v52 = v16;
  v49 = v16;
  v50 = v16;
  *buf = v16;
  AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::ARI_CsiIceSetTxAntennaReq_SDK(buf);
  v17 = ctu::cf::map_adapter::getInt(v40, *v6);
  v18 = operator new(4uLL);
  *v18 = v17;
  v19 = v52;
  *&v52 = v18;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = operator new(4uLL);
  *v20 = Bool;
  v21 = *(&v52 + 1);
  *(&v52 + 1) = v20;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(a1 + 256);
  if (!*a3)
  {
    v23 = 0;
    v24 = *(a3 + 8);
    if (!v24)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v23 = _Block_copy(*a3);
  v24 = *(a3 + 8);
  if (v24)
  {
LABEL_16:
    dispatch_retain(v24);
  }

LABEL_17:
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x38uLL);
  *&v25->__shared_owners_ = 0u;
  p_shared_owners = &v25->__shared_owners_;
  v25->__vftable = &unk_2A1E0F218;
  v25[1].__vftable = v23;
  v25[1].__shared_owners_ = v24;
  v25[1].__shared_weak_owners_ = v13;
  v25[2].__vftable = v15;
  v41 = MEMORY[0x29EDCA5F8];
  v42 = 1174405120;
  v43 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver21setAntennaTxPort_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEE3__0vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v44 = &__block_descriptor_tmp_242;
  v45 = v25 + 1;
  v46 = v25;
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v41;
  v27 = _Block_copy(aBlock);
  v28 = v46;
  if (!v46 || atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_20:
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

LABEL_21:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[0] = v29;
  v38[1] = v29;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v30 = *(v22 + 16);
  v41 = *(v22 + 8);
  if (!v30)
  {
    v42 = 0;
LABEL_47:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v42 = std::__shared_weak_count::lock(v30);
  if (!v42)
  {
    goto LABEL_47;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v31 = v42;
  if (v42 && !atomic_fetch_add((v42 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  aBlock[0] = v27;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v38);
  MEMORY[0x29C264870](buf);
  std::__shared_weak_count::__release_weak(v15);
LABEL_29:
  result = MEMORY[0x29C263AC0](v40);
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DEBAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t radio::ARICommandDriver::setAntennaTxPort_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(uint64_t a1)
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

void radio::ARICommandDriver::setARTDWithRAT_sync(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v60 = *MEMORY[0x29EDCA608];
  v8 = (a1 + 320);
  v9 = *(a1 + 320);
  v10 = (a1 + 320);
  v11 = (a1 + 320);
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v12 = *(v9 + 28);
        if (v12 <= a3)
        {
          break;
        }

        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_8;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v9 = v11[1];
      if (!v9)
      {
        v10 = v11 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 7) = a3;
    *(v11 + 8) = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(a1 + 312);
    if (v14)
    {
      *(a1 + 312) = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 320), v11);
    ++*(a1 + 328);
  }

  if (*(v11 + 8) == a2)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v37 = *v8;
      v38 = v8;
      if (*v8)
      {
        while (1)
        {
          while (1)
          {
            v38 = v37;
            v39 = *(v37 + 28);
            if (v39 <= a3)
            {
              break;
            }

            v37 = *v38;
            v8 = v38;
            if (!*v38)
            {
              goto LABEL_49;
            }
          }

          if (v39 >= a3)
          {
            break;
          }

          v37 = v38[1];
          if (!v37)
          {
            v8 = v38 + 1;
            goto LABEL_49;
          }
        }
      }

      else
      {
LABEL_49:
        v40 = v38;
        v38 = operator new(0x28uLL);
        *(v38 + 7) = a3;
        *(v38 + 8) = 0;
        *v38 = 0;
        v38[1] = 0;
        v38[2] = v40;
        *v8 = v38;
        v41 = **(a1 + 312);
        if (v41)
        {
          *(a1 + 312) = v41;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 320), v38);
        ++*(a1 + 328);
      }

      v42 = *(v38 + 8);
      *buf = 67109632;
      *&buf[4] = a3;
      *&buf[8] = 1024;
      *&buf[10] = v42;
      *&buf[14] = 1024;
      LODWORD(v56) = a2;
      _os_log_debug_impl(&dword_296D7D000, v15, OS_LOG_TYPE_DEBUG, "#D fARTD[ %d ]: %d == %d\n", buf, 0x14u);
      v16 = *a4;
      if (*a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = *a4;
      if (*a4)
      {
LABEL_14:
        v17 = _Block_copy(v16);
        goto LABEL_54;
      }
    }

    v17 = 0;
LABEL_54:
    v43 = *(a4 + 8);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 1174405120;
    *&v56 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    *(&v56 + 1) = &__block_descriptor_tmp_179;
    if (v17)
    {
      cf[0] = _Block_copy(v17);
      cf[1] = 0;
      dispatch_async(v43, buf);
      v44 = cf[1];
      if (!cf[1])
      {
        goto LABEL_59;
      }
    }

    else
    {
      cf[0] = 0;
      cf[1] = 0;
      dispatch_async(v43, buf);
      v44 = cf[1];
      if (!cf[1])
      {
LABEL_59:
        if (cf[0])
        {
          _Block_release(cf[0]);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        goto LABEL_63;
      }
    }

    CFRelease(v44);
    goto LABEL_59;
  }

  v18 = *(a1 + 16);
  if (!v18 || (v19 = *(a1 + 8), (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v21);
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v22;
  *__p = v22;
  v56 = v22;
  *cf = v22;
  *buf = v22;
  AriSdk::ARI_CsiIceArtdSettingReq_SDK::ARI_CsiIceArtdSettingReq_SDK(buf);
  v23 = operator new(4uLL);
  *v23 = a3;
  v24 = __p[0];
  __p[0] = v23;
  if (v24)
  {
    operator delete(v24);
  }

  v25 = operator new(4uLL);
  *v25 = a2;
  v26 = __p[1];
  __p[1] = v25;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(a1 + 256);
  if (!*a4)
  {
    v28 = 0;
    v29 = *(a4 + 8);
    if (!v29)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v28 = _Block_copy(*a4);
  v29 = *(a4 + 8);
  if (v29)
  {
LABEL_25:
    dispatch_retain(v29);
  }

LABEL_26:
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = operator new(0x40uLL);
  *&v30->__shared_owners_ = 0u;
  p_shared_owners = &v30->__shared_owners_;
  v30->__vftable = &unk_2A1E0F298;
  v30[1].__vftable = v28;
  v30[1].__shared_owners_ = v29;
  v30[1].__shared_weak_owners_ = v19;
  v30[2].__vftable = v21;
  LODWORD(v30[2].__shared_owners_) = a3;
  v48 = MEMORY[0x29EDCA5F8];
  v49 = 1174405120;
  v50 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver19setARTDWithRAT_syncEiNS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v51 = &__block_descriptor_tmp_247;
  v52 = v30 + 1;
  v53 = v30;
  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v48;
  v32 = _Block_copy(aBlock);
  v33 = v53;
  if (!v53 || atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_29:
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_30:
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[0] = v34;
  v46[1] = v34;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v35 = *(v27 + 16);
  v48 = *(v27 + 8);
  if (!v35)
  {
    v49 = 0;
LABEL_66:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v49 = std::__shared_weak_count::lock(v35);
  if (!v49)
  {
    goto LABEL_66;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v36 = v49;
  if (v49 && !atomic_fetch_add((v49 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  aBlock[0] = v32;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v46);
  MEMORY[0x29C264600](buf);
  std::__shared_weak_count::__release_weak(v21);
LABEL_63:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_296DEC294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t radio::ARICommandDriver::setARTDWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(uint64_t a1)
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

void radio::ARICommandDriver::setARTD_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v6 = dispatch_group_create();
  v7 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v7);
  }

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3802000000;
  v35[3] = __Block_byref_object_copy__42;
  v35[4] = __Block_byref_object_dispose__43;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a3 + 8);
  v36 = v8;
  v37 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver12setARTD_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  aBlock[3] = &unk_2A1E0E338;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  aBlock[4] = v35;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  v33 = v10;
  v34 = v11;
  v30[0] = 0xAAAAAAAAAAAAAAAALL;
  v30[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v30, *a2);
  Int = ctu::cf::map_adapter::getInt(v30, *MEMORY[0x29EDC8C78]);
  if (v10)
  {
    v13 = _Block_copy(v10);
    v28 = v13;
    v29 = v11;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v28 = 0;
  v29 = v11;
  if (v11)
  {
LABEL_13:
    dispatch_retain(v11);
  }

LABEL_14:
  radio::ARICommandDriver::setARTDWithRAT_sync(a1, Int, 1, &v28);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  v14 = ctu::cf::map_adapter::getInt(v30, *MEMORY[0x29EDC8CB0]);
  if (v10)
  {
    v15 = _Block_copy(v10);
    v26 = v15;
    v27 = v11;
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = 0;
  v26 = 0;
  v27 = v11;
  if (v11)
  {
LABEL_20:
    dispatch_retain(v11);
  }

LABEL_21:
  radio::ARICommandDriver::setARTDWithRAT_sync(a1, v14, 2, &v26);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  v16 = ctu::cf::map_adapter::getInt(v30, *MEMORY[0x29EDC8B38]);
  if (v10)
  {
    v17 = _Block_copy(v10);
    v24 = v17;
    v25 = v11;
    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v17 = 0;
  v24 = 0;
  v25 = v11;
  if (v11)
  {
LABEL_27:
    dispatch_retain(v11);
  }

LABEL_28:
  radio::ARICommandDriver::setARTDWithRAT_sync(a1, v16, 3, &v24);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  v18 = ctu::cf::map_adapter::getInt(v30, *MEMORY[0x29EDC8B28]);
  if (v10)
  {
    v19 = _Block_copy(v10);
    v22 = v19;
    v23 = v11;
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v19 = 0;
  v22 = 0;
  v23 = v11;
  if (v11)
  {
LABEL_34:
    dispatch_retain(v11);
  }

LABEL_35:
  radio::ARICommandDriver::setARTDWithRAT_sync(a1, v18, 0, &v22);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  v20 = *(a1 + 24);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 0x40000000;
  v21[2] = ___ZN5radio16ARICommandDriver12setARTD_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_53;
  v21[3] = &unk_29EE5BE38;
  v21[4] = v35;
  dispatch_group_notify(v7, v20, v21);
  MEMORY[0x29C263AC0](v30);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(v35, 8);
  if (v37)
  {
    dispatch_release(v37);
  }

  if (v36)
  {
    _Block_release(v36);
  }

  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
    dispatch_release(v7);
  }
}

void sub_296DEC7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, dispatch_group_t group)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a14);
  MEMORY[0x29C263AC0](&a22);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v31 - 136);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose((v31 - 120), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v30 + 40);
  if (v29)
  {
    dispatch_group_leave(v29);
    dispatch_release(v29);
    dispatch_release(v29);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio16ARICommandDriver12setARTD_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 40))
    {
      if (*(v4 + 48))
      {
        CFRetain(*a2);
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = _Block_copy(v5);
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v4 + 48);
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v12[3] = &__block_descriptor_tmp_179;
        if (v6)
        {
          v8 = _Block_copy(v6);
        }

        else
        {
          v8 = 0;
        }

        aBlock = v8;
        cf = v2;
        CFRetain(v2);
        dispatch_async(v7, v12);
        if (cf)
        {
          CFRelease(cf);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        CFRelease(v2);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v9 + 48);
        *(v9 + 48) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver12setARTD_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_53(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (!v2 || !*(v1 + 48))
  {
    return;
  }

  v3 = _Block_copy(v2);
  v4 = v3;
  v5 = *(v1 + 48);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v7[3] = &__block_descriptor_tmp_179;
  if (v3)
  {
    aBlock = _Block_copy(v3);
    cf = 0;
    dispatch_async(v5, v7);
    v6 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  aBlock = 0;
  cf = 0;
  dispatch_async(v5, v7);
  v6 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void radio::ARICommandDriver::setARFCNWithRAT_sync(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v62 = *MEMORY[0x29EDCA608];
  v8 = (a1 + 344);
  v9 = *(a1 + 344);
  v10 = (a1 + 344);
  v11 = (a1 + 344);
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v12 = *(v9 + 28);
        if (v12 <= a3)
        {
          break;
        }

        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_8;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v9 = v11[1];
      if (!v9)
      {
        v10 = v11 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 7) = a3;
    *(v11 + 8) = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(a1 + 336);
    if (v14)
    {
      *(a1 + 336) = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 344), v11);
    ++*(a1 + 352);
  }

  if (*(v11 + 8) == a2)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v39 = *v8;
      v40 = v8;
      if (*v8)
      {
        while (1)
        {
          while (1)
          {
            v40 = v39;
            v41 = *(v39 + 28);
            if (v41 <= a3)
            {
              break;
            }

            v39 = *v40;
            v8 = v40;
            if (!*v40)
            {
              goto LABEL_55;
            }
          }

          if (v41 >= a3)
          {
            break;
          }

          v39 = v40[1];
          if (!v39)
          {
            v8 = v40 + 1;
            goto LABEL_55;
          }
        }
      }

      else
      {
LABEL_55:
        v42 = v40;
        v40 = operator new(0x28uLL);
        *(v40 + 7) = a3;
        *(v40 + 8) = 0;
        *v40 = 0;
        v40[1] = 0;
        v40[2] = v42;
        *v8 = v40;
        v43 = **(a1 + 336);
        if (v43)
        {
          *(a1 + 336) = v43;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 344), v40);
        ++*(a1 + 352);
      }

      v44 = *(v40 + 8);
      *buf = 67109632;
      *&buf[4] = a3;
      *&buf[8] = 1024;
      *&buf[10] = v44;
      *&buf[14] = 1024;
      LODWORD(v58) = a2;
      _os_log_debug_impl(&dword_296D7D000, v15, OS_LOG_TYPE_DEBUG, "#D fARFCNLock[ %d ]: %d == %d\n", buf, 0x14u);
      v16 = *a4;
      if (*a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = *a4;
      if (*a4)
      {
LABEL_14:
        v17 = _Block_copy(v16);
        goto LABEL_60;
      }
    }

    v17 = 0;
LABEL_60:
    v45 = *(a4 + 8);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 1174405120;
    *&v58 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    *(&v58 + 1) = &__block_descriptor_tmp_179;
    if (v17)
    {
      cf[0] = _Block_copy(v17);
      cf[1] = 0;
      dispatch_async(v45, buf);
      v46 = cf[1];
      if (!cf[1])
      {
        goto LABEL_65;
      }
    }

    else
    {
      cf[0] = 0;
      cf[1] = 0;
      dispatch_async(v45, buf);
      v46 = cf[1];
      if (!cf[1])
      {
LABEL_65:
        if (cf[0])
        {
          _Block_release(cf[0]);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        goto LABEL_69;
      }
    }

    CFRelease(v46);
    goto LABEL_65;
  }

  if (a3 == 255)
  {
    v18 = 1;
  }

  else
  {
    v18 = a3;
  }

  if (a3 == 255)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v20 = *(a1 + 16);
  if (!v20 || (v21 = *(a1 + 8), (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v23);
  }

  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v24;
  *__p = v24;
  v58 = v24;
  *cf = v24;
  *buf = v24;
  AriSdk::ARI_CsiIceArfcnLockReq_SDK::ARI_CsiIceArfcnLockReq_SDK(buf);
  v25 = operator new(4uLL);
  *v25 = v19;
  v26 = __p[0];
  __p[0] = v25;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = operator new(4uLL);
  *v27 = v18;
  v28 = __p[1];
  __p[1] = v27;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = *(a1 + 256);
  if (!*a4)
  {
    v30 = 0;
    v31 = *(a4 + 8);
    if (!v31)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v30 = _Block_copy(*a4);
  v31 = *(a4 + 8);
  if (v31)
  {
LABEL_31:
    dispatch_retain(v31);
  }

LABEL_32:
  atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v32 = operator new(0x40uLL);
  *&v32->__shared_owners_ = 0u;
  p_shared_owners = &v32->__shared_owners_;
  v32->__vftable = &unk_2A1E0F318;
  v32[1].__vftable = v30;
  v32[1].__shared_owners_ = v31;
  v32[1].__shared_weak_owners_ = v21;
  v32[2].__vftable = v23;
  LODWORD(v32[2].__shared_owners_) = v18;
  v50 = MEMORY[0x29EDCA5F8];
  v51 = 1174405120;
  v52 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver20setARFCNWithRAT_syncEiNS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v53 = &__block_descriptor_tmp_252;
  v54 = v32 + 1;
  v55 = v32;
  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v50;
  v34 = _Block_copy(aBlock);
  v35 = v55;
  if (!v55 || atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_35:
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_36:
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[0] = v36;
  v48[1] = v36;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v37 = *(v29 + 16);
  v50 = *(v29 + 8);
  if (!v37)
  {
    v51 = 0;
LABEL_72:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v51 = std::__shared_weak_count::lock(v37);
  if (!v51)
  {
    goto LABEL_72;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v38 = v51;
  if (v51 && !atomic_fetch_add((v51 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  aBlock[0] = v34;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v48);
  MEMORY[0x29C264260](buf);
  std::__shared_weak_count::__release_weak(v23);
LABEL_69:
  v47 = *MEMORY[0x29EDCA608];
}

void sub_296DED140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t radio::ARICommandDriver::setARFCNWithRAT_sync(int,radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(uint64_t a1)
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

void radio::ARICommandDriver::setARFCN_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v6 = dispatch_group_create();
  v7 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v7);
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3802000000;
  v24[3] = __Block_byref_object_copy__42;
  v24[4] = __Block_byref_object_dispose__43;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a3 + 8);
  v25 = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver13setARFCN_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  aBlock[3] = &unk_2A1E0E370;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(group);
  }

  aBlock[4] = v24;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  v22 = v10;
  v23 = v11;
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v19, *a2);
  Int = ctu::cf::map_adapter::getInt(v19, *MEMORY[0x29EDC8C68]);
  v13 = ctu::cf::map_adapter::getInt(v19, *MEMORY[0x29EDC8B48]);
  if (v10)
  {
    v14 = _Block_copy(v10);
    v17 = v14;
    v18 = v11;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = 0;
  v17 = 0;
  v18 = v11;
  if (v11)
  {
LABEL_13:
    dispatch_retain(v11);
  }

LABEL_14:
  radio::ARICommandDriver::setARFCNWithRAT_sync(a1, Int, v13, &v17);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  v15 = *(a1 + 24);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 0x40000000;
  v16[2] = ___ZN5radio16ARICommandDriver13setARFCN_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_58;
  v16[3] = &unk_29EE5BE60;
  v16[4] = v24;
  dispatch_group_notify(v7, v15, v16);
  MEMORY[0x29C263AC0](v19);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(v24, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
    dispatch_release(v7);
  }
}

void sub_296DED53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, char a24, uint64_t a25, char a26)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a14);
  MEMORY[0x29C263AC0](&a16);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a24);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(&a26, 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v27 + 40);
  if (v26)
  {
    dispatch_group_leave(v26);
    dispatch_release(v26);
    dispatch_release(v26);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio16ARICommandDriver13setARFCN_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 40))
    {
      if (*(v4 + 48))
      {
        CFRetain(*a2);
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = _Block_copy(v5);
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v4 + 48);
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v12[3] = &__block_descriptor_tmp_179;
        if (v6)
        {
          v8 = _Block_copy(v6);
        }

        else
        {
          v8 = 0;
        }

        aBlock = v8;
        cf = v2;
        CFRetain(v2);
        dispatch_async(v7, v12);
        if (cf)
        {
          CFRelease(cf);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        CFRelease(v2);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v9 + 48);
        *(v9 + 48) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver13setARFCN_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_58(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (!v2 || !*(v1 + 48))
  {
    return;
  }

  v3 = _Block_copy(v2);
  v4 = v3;
  v5 = *(v1 + 48);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v7[3] = &__block_descriptor_tmp_179;
  if (v3)
  {
    aBlock = _Block_copy(v3);
    cf = 0;
    dispatch_async(v5, v7);
    v6 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  aBlock = 0;
  cf = 0;
  dispatch_async(v5, v7);
  v6 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t radio::ARICommandDriver::setCA_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v36[0] = 0xAAAAAAAAAAAAAAAALL;
  v36[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v36, *a2);
  v5 = *(a1 + 364);
  v6 = *MEMORY[0x29EDC8C80];
  if (v5 == ctu::cf::map_adapter::getInt(v36, *MEMORY[0x29EDC8C80]))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 364);
      Int = ctu::cf::map_adapter::getInt(v36, v6);
      *buf = 67109376;
      *&buf[4] = v28;
      *&buf[8] = 1024;
      *&buf[10] = Int;
      _os_log_debug_impl(&dword_296D7D000, v7, OS_LOG_TYPE_DEBUG, "#D fCAEnabled: %d == %d\n", buf, 0xEu);
      v8 = *a3;
      if (*a3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *a3;
      if (*a3)
      {
LABEL_4:
        v9 = _Block_copy(v8);
        goto LABEL_32;
      }
    }

    v9 = 0;
LABEL_32:
    v30 = *(a3 + 8);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 1174405120;
    *&v45 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    *(&v45 + 1) = &__block_descriptor_tmp_179;
    if (v9)
    {
      v46 = _Block_copy(v9);
      dispatch_async(v30, buf);
      v31 = *(&v46 + 1);
      if (!*(&v46 + 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v46 = 0uLL;
      dispatch_async(v30, buf);
      v31 = *(&v46 + 1);
      if (!*(&v46 + 1))
      {
LABEL_37:
        if (v46)
        {
          _Block_release(v46);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        goto LABEL_41;
      }
    }

    CFRelease(v31);
    goto LABEL_37;
  }

  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(a1 + 8), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v14;
  v47 = v14;
  *buf = v14;
  v45 = v14;
  AriSdk::ARI_CsiIceCaEnableReq_SDK::ARI_CsiIceCaEnableReq_SDK(buf);
  v15 = ctu::cf::map_adapter::getInt(v36, v6);
  v16 = operator new(4uLL);
  *v16 = v15;
  v17 = v48;
  v48 = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(a1 + 256);
  if (!*a3)
  {
    v19 = 0;
    v20 = *(a3 + 8);
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v19 = _Block_copy(*a3);
  v20 = *(a3 + 8);
  if (v20)
  {
LABEL_13:
    dispatch_retain(v20);
  }

LABEL_14:
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x38uLL);
  *&v21->__shared_owners_ = 0u;
  p_shared_owners = &v21->__shared_owners_;
  v21->__vftable = &unk_2A1E0F398;
  v21[1].__vftable = v19;
  v21[1].__shared_owners_ = v20;
  v21[1].__shared_weak_owners_ = v11;
  v21[2].__vftable = v13;
  v37 = MEMORY[0x29EDCA5F8];
  v38 = 1174405120;
  v39 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver10setCA_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEE3__0vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v40 = &__block_descriptor_tmp_257;
  v41 = v21 + 1;
  v42 = v21;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v37;
  v23 = _Block_copy(aBlock);
  v24 = v42;
  if (!v42 || atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
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
  v34[0] = v25;
  v34[1] = v25;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v26 = *(v18 + 16);
  v37 = *(v18 + 8);
  if (!v26)
  {
    v38 = 0;
LABEL_44:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v38 = std::__shared_weak_count::lock(v26);
  if (!v38)
  {
    goto LABEL_44;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v27 = v38;
  if (v38 && !atomic_fetch_add((v38 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  aBlock[0] = v23;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v34);
  MEMORY[0x29C2641E0](buf);
  std::__shared_weak_count::__release_weak(v13);
LABEL_41:
  result = MEMORY[0x29C263AC0](v36);
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DEDD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t radio::ARICommandDriver::setCA_sync(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(uint64_t a1)
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

void radio::ARICommandDriver::setFieldTestConfig(uint64_t a1, const void **a2, uint64_t a3)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN5radio16ARICommandDriver18setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_65;
  v9[4] = a1;
  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  cf = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio16ARICommandDriver18setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = dispatch_group_create();
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v4);
  }

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3802000000;
  v40[3] = __Block_byref_object_copy__42;
  v40[4] = __Block_byref_object_dispose__43;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v5 = a1[5];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a1[6];
  v41 = v5;
  v42 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver18setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_2;
  aBlock[3] = &unk_2A1E0E3A8;
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  aBlock[4] = v40;
  v7 = _Block_copy(aBlock);
  v8 = *(v2 + 24);
  if (v8)
  {
    dispatch_retain(*(v2 + 24));
  }

  v38 = v7;
  v39 = v8;
  v9 = a1[7];
  v35 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v7)
  {
    v10 = _Block_copy(v7);
    v33 = v10;
    v34 = v8;
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = 0;
  v33 = 0;
  v34 = v8;
  if (v8)
  {
LABEL_15:
    dispatch_retain(v8);
  }

LABEL_16:
  radio::ARICommandDriver::setRxDiversityState_sync(v2, &v35, &v33);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v11 = a1[7];
  v32 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v7)
  {
    v12 = _Block_copy(v7);
    v30 = v12;
    v31 = v8;
    if (!v8)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v12 = 0;
  v30 = 0;
  v31 = v8;
  if (v8)
  {
LABEL_26:
    dispatch_retain(v8);
  }

LABEL_27:
  radio::ARICommandDriver::setAntennaTxPort_sync(v2, &v32, &v30);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = a1[7];
  v29 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v7)
  {
    v14 = _Block_copy(v7);
    v27 = v14;
    v28 = v8;
    if (!v8)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v14 = 0;
  v27 = 0;
  v28 = v8;
  if (v8)
  {
LABEL_37:
    dispatch_retain(v8);
  }

LABEL_38:
  radio::ARICommandDriver::setARTD_sync(v2, &v29, &v27);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v15 = a1[7];
  v26 = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v7)
  {
    v16 = _Block_copy(v7);
    v24 = v16;
    v25 = v8;
    if (!v8)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v16 = 0;
  v24 = 0;
  v25 = v8;
  if (v8)
  {
LABEL_48:
    dispatch_retain(v8);
  }

LABEL_49:
  radio::ARICommandDriver::setARFCN_sync(v2, &v26, &v24);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v17 = a1[7];
  v23 = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  if (v7)
  {
    v18 = _Block_copy(v7);
    v21 = v18;
    v22 = v8;
    if (!v8)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v18 = 0;
  v21 = 0;
  v22 = v8;
  if (v8)
  {
LABEL_59:
    dispatch_retain(v8);
  }

LABEL_60:
  radio::ARICommandDriver::setCA_sync(v2, &v23, &v21);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v19 = *(v2 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN5radio16ARICommandDriver18setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_63;
  block[3] = &unk_29EE5BE88;
  block[4] = v40;
  dispatch_group_notify(v4, v19, block);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(v40, 8);
  if (v42)
  {
    dispatch_release(v42);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
    dispatch_release(v4);
  }
}

void sub_296DEE48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, dispatch_group_t group)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v48 - 152);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose((v48 - 136), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v47 + 40);
  if (v46)
  {
    dispatch_group_leave(v46);
    dispatch_release(v46);
    dispatch_release(v46);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio16ARICommandDriver18setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_2(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 40))
    {
      if (*(v4 + 48))
      {
        CFRetain(*a2);
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = _Block_copy(v5);
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v4 + 48);
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v12[3] = &__block_descriptor_tmp_179;
        if (v6)
        {
          v8 = _Block_copy(v6);
        }

        else
        {
          v8 = 0;
        }

        aBlock = v8;
        cf = v2;
        CFRetain(v2);
        dispatch_async(v7, v12);
        if (cf)
        {
          CFRelease(cf);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        CFRelease(v2);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v9 + 48);
        *(v9 + 48) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver18setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_63(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if (!v2 || !*(v1 + 48))
  {
    return;
  }

  v3 = _Block_copy(v2);
  v4 = v3;
  v5 = *(v1 + 48);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v7[3] = &__block_descriptor_tmp_179;
  if (v3)
  {
    aBlock = _Block_copy(v3);
    cf = 0;
    dispatch_async(v5, v7);
    v6 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  aBlock = 0;
  cf = 0;
  dispatch_async(v5, v7);
  v6 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

CFTypeRef __copy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE56c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a2[6];
  a1[5] = v4;
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  result = a2[7];
  a1[7] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE56c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }
}

void radio::ARICommandDriver::enableDumpLogsInd(radio::ARICommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "enableDumpLogsInd";
    _os_log_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEFAULT, "#I %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::ARICommandDriver::disableDumpLogsInd(radio::ARICommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "disableDumpLogsInd";
    _os_log_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEFAULT, "#I %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::ARICommandDriver::simTestCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = ___ZN5radio16ARICommandDriver14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke;
  v14[3] = &__block_descriptor_tmp_67_1;
  v14[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v12 = *a3;
  if (*a3)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a3 + 8);
  aBlock = v12;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v18 = v7;
  v19 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v6, v14);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5radio16ARICommandDriver14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v59 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  v58 = v3;
  v56[2] = v3;
  v56[3] = v3;
  v56[0] = v3;
  v56[1] = v3;
  AriSdk::ARI_IBISimTestReq_SDK::ARI_IBISimTestReq_SDK(v56);
  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 48);
    if (v4 - 71 >= 0xFFFFFFFFFFFFFFBALL)
    {
LABEL_6:
      v5 = operator new(4uLL);
      v6 = (a1 + 40);
      *v5 = 0;
      v7 = __p[0];
      __p[0] = v5;
      if (v7)
      {
        operator delete(v7);
      }

      SimSlotInfo = radio::CommandDriver::getSimSlotInfo();
      if (SimSlotInfo != 1)
      {
        if (SimSlotInfo != 2)
        {
          goto LABEL_13;
        }

        v9 = operator new(4uLL);
        *v9 = 1;
        v10 = __p[0];
        __p[0] = v9;
        if (v10)
        {
          operator delete(v10);
        }
      }

      v4 -= 2;
LABEL_13:
      v51 = v2;
      LogLevels = operator new(1uLL);
      *LogLevels = v4;
      v12 = __p[1];
      __p[1] = LogLevels;
      if (v12)
      {
        operator delete(v12);
      }

      if (v4)
      {
        v13 = 0;
        v14 = 1;
        do
        {
          v16 = a1 + 40;
          if (*(a1 + 63) < 0)
          {
            v16 = *v6;
            v17 = *(&v58 + 1);
            v18 = v58;
            v19 = *(&v58 + 1) - v58;
            if (*(&v58 + 1) - v58 >= 0x46uLL)
            {
LABEL_32:
              LogLevels = Ari::GetLogLevels(LogLevels);
              if ((LogLevels & 8) != 0)
              {
                OsLog = AriOsa::GetOsLog(LogLevels);
                if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
                {
                  AriOsa::LogSrcInfo(&cf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v26);
                  p_cf = &cf;
                  if (SHIBYTE(v62) < 0)
                  {
                    p_cf = cf;
                  }

                  *buf = 136315650;
                  *&buf[4] = "ari";
                  *&buf[12] = 2080;
                  *&buf[14] = p_cf;
                  *&buf[22] = 1024;
                  LODWORD(v68) = 371;
                  _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array is full, cannot add new values", buf, 0x1Cu);
                  if (SHIBYTE(v62) < 0)
                  {
                    operator delete(cf);
                  }
                }

                AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v26);
                v28 = buf;
                if (buf[23] < 0)
                {
                  v28 = *buf;
                }

                LogLevels = AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array is full, cannot add new values", v27, v28, 371);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              goto LABEL_19;
            }
          }

          else
          {
            v17 = *(&v58 + 1);
            v18 = v58;
            v19 = *(&v58 + 1) - v58;
            if (*(&v58 + 1) - v58 >= 0x46uLL)
            {
              goto LABEL_32;
            }
          }

          v20 = *(v16 + v13);
          if (v17 < v59)
          {
            *v17 = v20;
            v15 = (v17 + 1);
          }

          else
          {
            v21 = v59 - v18;
            if (2 * (v59 - v18) <= v19 + 1)
            {
              v22 = v19 + 1;
            }

            else
            {
              v22 = 2 * v21;
            }

            if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v23 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22;
            }

            v24 = operator new(v23);
            v24[v19] = v20;
            v15 = &v24[v19 + 1];
            LogLevels = memcpy(v24, v18, v19);
            *&v58 = v24;
            *(&v58 + 1) = v15;
            v59 = &v24[v23];
            if (v18)
            {
              operator delete(v18);
            }
          }

          *(&v58 + 1) = v15;
LABEL_19:
          v13 = v14++;
        }

        while (v4 > v13);
      }

      v30 = *(v51 + 256);
      v31 = *(a1 + 88);
      *buf = *(a1 + 80);
      *&buf[8] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 16), 1uLL, memory_order_relaxed);
      }

      v32 = *(a1 + 64);
      if (v32)
      {
        v32 = _Block_copy(v32);
      }

      v33 = *(a1 + 72);
      *&buf[16] = v32;
      v68 = v33;
      if (v33)
      {
        dispatch_retain(v33);
      }

      if (*(a1 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v69, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        *&v69.__r_.__value_.__l.__data_ = *v6;
        v69.__r_.__value_.__r.__words[2] = *(a1 + 56);
      }

      v70 = v51;
      v37 = operator new(0x58uLL);
      v37->__shared_owners_ = 0;
      p_shared_owners = &v37->__shared_owners_;
      v37->__shared_weak_owners_ = 0;
      v37->__vftable = &unk_2A1E0F418;
      v39 = *&buf[8];
      v37[1].__vftable = *buf;
      v37[1].__shared_owners_ = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
      }

      v40 = *&buf[16];
      if (*&buf[16])
      {
        v40 = _Block_copy(*&buf[16]);
      }

      v41 = v68;
      v37[1].__shared_weak_owners_ = v40;
      v37[2].__vftable = v41;
      if (v41)
      {
        dispatch_retain(v41);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37[2].__shared_owners_, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
      }

      else
      {
        *(&v37[2] + 8) = v69;
      }

      v37[3].__shared_owners_ = v70;
      cf = MEMORY[0x29EDCA5F8];
      v61 = 1174405120;
      v62 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver14simTestCommandENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSF_IK14__CFDictionaryEEEEEEUb6_E4__19vEENSB_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
      v63 = &__block_descriptor_tmp_266;
      v64 = v37 + 1;
      v65 = v37;
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
      aBlock[3] = &unk_29EE5BED8;
      aBlock[4] = &cf;
      v42 = _Block_copy(aBlock);
      v43 = v65;
      if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_68:
          if (__p[0])
          {
            goto LABEL_73;
          }

LABEL_72:
          v44 = operator new(4uLL);
          *v44 = 0;
          __p[0] = v44;
LABEL_73:
          v53 = 0xAAAAAAAAAAAAAAAALL;
          *&v45 = 0xAAAAAAAAAAAAAAAALL;
          *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v52[0] = v45;
          v52[1] = v45;
          v46 = *(v30 + 16);
          cf = *(v30 + 8);
          if (v46)
          {
            v61 = std::__shared_weak_count::lock(v46);
            if (v61)
            {
              ice::SendMsgBaseProxy::SendMsgBaseProxy();
              v47 = v61;
              if (v61 && !atomic_fetch_add((v61 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v47->__on_zero_shared)(v47);
                std::__shared_weak_count::__release_weak(v47);
              }

              aBlock[0] = v42;
              ice::SendMsgBaseProxy::callback();
              if (aBlock[0])
              {
                _Block_release(aBlock[0]);
              }

              MEMORY[0x29C263BF0](v52);
              if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v69.__r_.__value_.__l.__data_);
              }

              if (v68)
              {
                dispatch_release(v68);
              }

              if (*&buf[16])
              {
                _Block_release(*&buf[16]);
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_weak(*&buf[8]);
              }

              goto LABEL_106;
            }
          }

          else
          {
            v61 = 0;
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_68;
      }

      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
      if (__p[0])
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if (*(a1 + 63) - 71 > 0xFFFFFFB9)
  {
    v4 = *(a1 + 63);
    goto LABEL_6;
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v54 = operator new(0x20uLL);
  v55 = xmmword_296E22D90;
  strcpy(v54, "Invalid SIM test command");
  CreateError();
  operator delete(v54);
  v34 = *(a1 + 64);
  if (v34 && *(a1 + 72))
  {
    v35 = cf;
    if (cf && (CFRetain(cf), (v34 = *(a1 + 64)) == 0))
    {
      v36 = 0;
    }

    else
    {
      v36 = _Block_copy(v34);
    }

    v48 = *(a1 + 72);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 1174405120;
    *&buf[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
    v68 = &__block_descriptor_tmp_189;
    if (v36)
    {
      v69.__r_.__value_.__r.__words[0] = _Block_copy(v36);
      v69.__r_.__value_.__l.__size_ = v35;
      if (!v35)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v69.__r_.__value_.__r.__words[0] = 0;
      v69.__r_.__value_.__l.__size_ = v35;
      if (!v35)
      {
LABEL_94:
        v69.__r_.__value_.__r.__words[2] = 0;
        dispatch_async(v48, buf);
        if (v69.__r_.__value_.__r.__words[2])
        {
          CFRelease(v69.__r_.__value_.__r.__words[2]);
        }

        if (v69.__r_.__value_.__l.__size_)
        {
          CFRelease(v69.__r_.__value_.__l.__size_);
        }

        if (v69.__r_.__value_.__r.__words[0])
        {
          _Block_release(v69.__r_.__value_.__l.__data_);
        }

        if (v36)
        {
          _Block_release(v36);
        }

        if (v35)
        {
          CFRelease(v35);
        }

        goto LABEL_104;
      }
    }

    CFRetain(v35);
    goto LABEL_94;
  }

LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_106:
  result = MEMORY[0x29C263E90](v56);
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DEF338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DEF478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (*(v15 - 153) < 0)
  {
    operator delete(*(v15 - 176));
    MEMORY[0x29C263E90](va);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DEF4A0);
}

uint64_t _ZZZN5radio16ARICommandDriver14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEEEUb6_EN4__19D1Ev(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE80c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE80c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  if (*(a1 + 63) < 0)
  {
    v5 = *(a1 + 40);

    operator delete(v5);
  }
}

void radio::ARICommandDriver::getFirmwareNonce(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::ARICommandDriver::getRFSelfTestNonce(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::ARICommandDriver::setRFSelfTestTicket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "setRFSelfTestTicket";
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I %s: not supported!", &buf, 0xCu);
  }

  if (*a3 && *(a3 + 8))
  {
    v11 = 13;
    strcpy(__p, "Not supported");
    CreateError();
    if (*a3)
    {
      v5 = _Block_copy(*a3);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a3 + 8);
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 1174405120;
    v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    v15 = &__block_descriptor_tmp_179;
    if (v5)
    {
      v7 = _Block_copy(v5);
      v8 = cf;
      aBlock = v7;
      v17 = cf;
      if (!cf)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = cf;
      aBlock = 0;
      v17 = cf;
      if (!cf)
      {
LABEL_13:
        dispatch_async(v6, &buf);
        if (v17)
        {
          CFRelease(v17);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v5)
        {
          _Block_release(v5);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_23;
      }
    }

    CFRetain(v8);
    goto LABEL_13;
  }

LABEL_23:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_296DEFB44(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DEFB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DEFB64);
}

void radio::ARICommandDriver::detachRequest(void *a1, int a2, uint64_t a3)
{
  v4 = a1[2];
  if (!v4 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v10;
  v26[3] = v10;
  v26[0] = v10;
  v26[1] = v10;
  AriSdk::ARI_IBINetDetachReq_SDK::ARI_IBINetDetachReq_SDK(v26);
  v11 = operator new(4uLL);
  *v11 = a2;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = a1[32];
  if (!*a3)
  {
    v14 = 0;
    v15 = *(a3 + 8);
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = _Block_copy(*a3);
  v15 = *(a3 + 8);
  if (v15)
  {
LABEL_9:
    dispatch_retain(v15);
  }

LABEL_10:
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x38uLL);
  *&v16->__shared_owners_ = 0u;
  p_shared_owners = &v16->__shared_owners_;
  v16->__vftable = &unk_2A1E0F5C8;
  v16[1].__vftable = v14;
  v16[1].__shared_owners_ = v15;
  v16[1].__shared_weak_owners_ = v7;
  v16[2].__vftable = v9;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 1174405120;
  v30 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver13detachRequestEhN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v31 = &__block_descriptor_tmp_278;
  v32 = v16 + 1;
  v33 = v16;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v28;
  v18 = _Block_copy(aBlock);
  v19 = v33;
  if (!v33 || atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_13;
    }

LABEL_18:
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    if (__p)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

LABEL_13:
  if (__p)
  {
    goto LABEL_20;
  }

LABEL_19:
  v20 = operator new(4uLL);
  *v20 = 0;
  __p = v20;
LABEL_20:
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v21;
  v24[1] = v21;
  v22 = *(v13 + 16);
  v28 = *(v13 + 8);
  if (!v22)
  {
    v29 = 0;
LABEL_30:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = std::__shared_weak_count::lock(v22);
  if (!v29)
  {
    goto LABEL_30;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v23 = v29;
  if (v29 && !atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  aBlock[0] = v18;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v24);
  MEMORY[0x29C264040](v26);
  std::__shared_weak_count::__release_weak(v9);
}