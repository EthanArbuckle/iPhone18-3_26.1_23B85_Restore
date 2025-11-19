void sub_296DC856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c221_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_CsiIcePowerSourceStateRspCb_SDKENS4_33ARI_CsiIcePowerSourceStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c221_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_CsiIcePowerSourceStateRspCb_SDKENS4_33ARI_CsiIcePowerSourceStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CE60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v2 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_36_0;
  if (v5)
  {
    v12 = v3;
    aBlock = _Block_copy(v5);
    object = v4;
    if (v4)
    {
LABEL_6:
      xpc_retain(v4);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  object = xpc_null_create();
LABEL_9:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
  v7 = *(v2 + 8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_IBIStwSarBackoffTimeRspCb_SDKENS5_31ARI_IBIStwSarBackoffTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v28 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v27 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[3] = v9;
  v26[4] = v9;
  v26[1] = v9;
  v26[2] = v9;
  v26[0] = v9;
  AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK::ARI_IBIStwSarBackoffTimeRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C265110](v26);
LABEL_22:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    goto LABEL_24;
  }

  GMID = AriSdk::MsgBase::getGMID(v26);
  v11 = ((GMID >> 17) & 0xFFFF8000 | (GMID << 26));
  if (v11 == 67600384 || v11 != *(v2 + 6))
  {
    v13 = *(v4 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = Ari::MsgNameById(v11);
      *buf = 136315138;
      v30 = v25;
      _os_log_error_impl(&dword_296D7D000, v13, OS_LOG_TYPE_ERROR, "Response %s is invalid", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v14 = v2[4];
  if (!v14)
  {
    v15 = 0;
    v16 = v2[5];
    if (!v16)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = _Block_copy(v14);
  v16 = v2[5];
  if (v16)
  {
LABEL_16:
    dispatch_retain(v16);
  }

LABEL_17:
  v17 = v8[2];
  if (!v17 || (v18 = v8[1], (v19 = std::__shared_weak_count::lock(v17)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  v21 = operator new(0x18uLL);
  *v21 = v15;
  v21[1] = v16;
  *(v21 + 16) = v12;
  v22 = v8[3];
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = operator new(0x18uLL);
  *v23 = v21;
  v23[1] = v18;
  v23[2] = v20;
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v28;
  MEMORY[0x29C265110](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC8BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c217_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_IBIStwSarBackoffTimeRspCb_SDKENS4_31ARI_IBIStwSarBackoffTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c217_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_IBIStwSarBackoffTimeRspCb_SDKENS4_31ARI_IBIStwSarBackoffTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CEE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v2 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_36_0;
  if (v5)
  {
    v12 = v3;
    aBlock = _Block_copy(v5);
    object = v4;
    if (v4)
    {
LABEL_6:
      xpc_retain(v4);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  object = xpc_null_create();
LABEL_9:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
  v7 = *(v2 + 8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS2_7NVItemsEEEEEUb0_E3__7vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = v2[4];
  v6 = std::__shared_weak_count::lock(v3);
  v27 = v6;
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  if (*v2)
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[3] = v8;
    v24 = v8;
    v23[1] = v8;
    v23[2] = v8;
    v23[0] = v8;
    AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::ARI_FactoryGetNvItemsSettingRspCb_SDK(v23, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    HIBYTE(__p[2]) = 16;
    strcpy(__p, "Getting NV items");
    checkError(v23, __p, &cf);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (cf)
      {
LABEL_7:
        v9 = *(v4 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p[0]) = 0;
          v10 = "Failed to get NV items";
          goto LABEL_39;
        }

        goto LABEL_12;
      }
    }

    else if (cf)
    {
      goto LABEL_7;
    }

    if (!AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::unpack(v23))
    {
      v19 = **(&v24 + 1);
      if (v19 > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = dword_296E22CF0[v19];
      }

      v20 = *(v4 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        antenna::CommandDriver::toString();
        v21 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
        *buf = 136315138;
        v33 = v21;
        _os_log_impl(&dword_296D7D000, v20, OS_LOG_TYPE_DEFAULT, "#I Getting NV Items: %s", buf, 0xCu);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = 1;
      v13 = v2[2];
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v9 = *(v4 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      v10 = "Failed to unpack result for NV items";
LABEL_39:
      _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, v10, __p, 2u);
      v11 = 0;
      v12 = 0;
      v13 = v2[2];
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

LABEL_12:
    v11 = 0;
    v12 = 0;
    v13 = v2[2];
    if (!v13)
    {
LABEL_21:
      if (cf)
      {
        CFRelease(cf);
      }

      MEMORY[0x29C2654F0](v23);
      goto LABEL_24;
    }

LABEL_13:
    if (v2[3])
    {
      v14 = _Block_copy(v13);
      v15 = v14;
      v16 = v2[3];
      __p[0] = MEMORY[0x29EDCA5F8];
      __p[1] = 1174405120;
      __p[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN7antenna7NVItemsEEEclIJbS2_EEEvDpT__block_invoke;
      __p[3] = &__block_descriptor_tmp_73;
      if (v14)
      {
        v17 = _Block_copy(v14);
      }

      else
      {
        v17 = 0;
      }

      aBlock = v17;
      v31 = v11;
      v30 = v12;
      dispatch_async(v16, __p);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v15)
      {
        _Block_release(v15);
      }
    }

    goto LABEL_21;
  }

LABEL_24:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_26:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_296DC92A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  MEMORY[0x29C2654F0](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c133_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS1_7NVItemsEEEEEUb0_E3__7EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c133_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS1_7NVItemsEEEEEUb0_E3__7EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS1_7NVItemsEEEEEUb0_E3__7NS_9allocatorIS9_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CF60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS1_7NVItemsEEEEEUb0_E3__7NS_9allocatorIS9_EEE16__on_zero_sharedEv(void *a1)
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

void *__copy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t coex::ARICommandDriver::create@<X0>(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xB0uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  coex::ARICommandDriver::ARICommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<coex::ARICommandDriver>::shared_ptr[abi:ne200100]<coex::ARICommandDriver,std::shared_ptr<coex::ARICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::ARICommandDriver>(coex::ARICommandDriver*)::{lambda(coex::ARICommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return (*(**a2 + 48))(*a2);
}

void sub_296DC95FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

coex::CommandDriver *coex::ARICommandDriver::ARICommandDriver(coex::CommandDriver *a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coex::CommandDriver::CommandDriver();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *a1 = &unk_2A1E0CFE0;
  v4 = *(a1 + 3);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  coex::CommandDriver::getName(a1);
  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 19) = 0;
  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  return a1;
}

void sub_296DC970C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296DC9720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  coex::CommandDriver::~CommandDriver(v10);
  _Unwind_Resume(a1);
}

void coex::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E0D200;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
    this[11] = &unk_2A1E0D248;
    v2 = this[13];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    this[11] = &unk_2A1E0D248;
    v2 = this[13];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
    if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 24))(v2);
    }
  }

LABEL_8:
  this[8] = &unk_2A1E0D2B8;
  v3 = this[10];
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

  v4 = this[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x29C263A00](this + 5);
  v5 = this[4];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = this[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void coex::ARICommandDriver::~ARICommandDriver(coex::ARICommandDriver *this)
{
  *this = &unk_2A1E0CFE0;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v7, 2u);
  }

  v3 = *(this + 21);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 18);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    coex::CommandDriver::~CommandDriver(this);
  }

  else
  {
    coex::CommandDriver::~CommandDriver(this);
  }
}

{
  coex::ARICommandDriver::~ARICommandDriver(this);

  operator delete(v1);
}

void coex::ARICommandDriver::init(coex::ARICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN4coex16ARICommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_5_0;
  v1[4] = this;
  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t ___ZN4coex16ARICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(v1 + 136);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZN4coex16ARICommandDriver4initEv_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_7;
  v7[4] = v1;
  *buf = v7;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v3, 0, buf);
  v4 = *(v1 + 136);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZN4coex16ARICommandDriver4initEv_block_invoke_3;
  v6[3] = &__block_descriptor_tmp_4_1;
  v6[4] = v1;
  *buf = v6;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v4, 1, buf);
  return ice::Client::start(*(v1 + 136));
}

uint64_t ___ZN4coex16ARICommandDriver4initEv_block_invoke_2(uint64_t a1)
{
  v63 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D Started", &buf, 2u);
  }

  v3 = *(v1 + 72);
  v37 = 0;
  v38 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v4;
  v51 = v4;
  v48 = v4;
  v49 = v4;
  v46 = v4;
  v47 = v4;
  v44 = v4;
  v45 = v4;
  buf = v4;
  v43 = v4;
  v5 = *(v3 + 24);
  *&v52 = 10;
  *(&v52 + 1) = &buf;
  *&v53 = 0;
  *(&v53 + 1) = v5;
  pthread_mutex_lock(v5);
  v6 = *(v3 + 8);
  if (!v6)
  {
    v8 = *v3;
    goto LABEL_15;
  }

  explicit = atomic_load_explicit(v6 + 2, memory_order_acquire);
  v8 = *v3;
  if (explicit == 1)
  {
    v9 = *v8;
    v10 = *(v3 + 16);
    if (v10 == *v8)
    {
      v10 = *(v9 + 8);
      *&v39 = v10;
      if (v9 == v10)
      {
LABEL_12:
        *(v3 + 16) = v10;
        goto LABEL_13;
      }
    }

    else
    {
      *&v39 = *(v3 + 16);
    }

    v11 = v10[2];
    if (*(v11 + 24))
    {
      v10 = v10[1];
    }

    else
    {
      v10 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(v9, (v11 + 64), &v39);
      v8 = *v3;
    }

    goto LABEL_12;
  }

LABEL_13:
  v6 = *(v3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

LABEL_15:
  v12 = v38;
  v37 = v8;
  v38 = v6;
  if (v12)
  {
    if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
      if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v12 + 24))(v12);
      }
    }
  }

  pthread_mutex_unlock(*(&v53 + 1));
  v13 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    if (v53 > 0)
    {
      v29 = *(&v52 + 1) + 16 * v53;
      do
      {
        v30 = *(v29 - 8);
        if (v30)
        {
          if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v30 + 16))(v30);
            if (atomic_fetch_add(v30 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v30 + 24))(v30);
            }
          }
        }

        v29 -= 16;
      }

      while (v29 > v13);
    }

    if (v52 >= 0xB)
    {
      operator delete(*(&v52 + 1));
    }
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61 = v14;
  v56 = v14;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v54 = v14;
  v55 = v14;
  v52 = v14;
  v53 = v14;
  v50 = v14;
  v51 = v14;
  v48 = v14;
  v49 = v14;
  v46 = v14;
  v47 = v14;
  v44 = v14;
  v45 = v14;
  buf = v14;
  v43 = v14;
  LOBYTE(buf) = 0;
  v58 = 10;
  v59 = &buf + 8;
  *(&v61 + 4) = 0;
  v60 = 0;
  v62 = 0;
  v15 = v37;
  v16 = *v37;
  p_buf = &buf;
  v35 = v3;
  v36 = v16;
  *&v32 = *(v16 + 8);
  *(&v32 + 1) = v16;
  *&v33 = &buf;
  *(&v33 + 1) = v16;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v32);
  v31[0] = *v15;
  v31[1] = v31[0];
  v31[2] = &buf;
  v31[3] = v31[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(v31);
  v39 = v32;
  v40 = v33;
  v17 = v31[0];
  v18 = v32;
  if (v32 == v31[0])
  {
    if (DWORD2(v61) <= DWORD1(v61))
    {
      goto LABEL_43;
    }

LABEL_42:
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(v35, v36);
    goto LABEL_43;
  }

  v19 = v40;
  if ((*v40 & 1) == 0)
  {
    v20 = *(*(v32 + 16) + 32);
    v21 = *(v20 + 24);
    if (!v21)
    {
      std::runtime_error::runtime_error(&v41, "call to empty boost::function");
      v41.__vftable = &unk_2A1E0C118;
      boost::throw_exception<boost::bad_function_call>(&v41);
    }

    (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32);
    if ((*v19 & 1) == 0)
    {
      *v19 = 1;
    }
  }

  *&v39 = *(v18 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v39);
  v22 = v40;
  if (*v40 == 1)
  {
    *v40 = 0;
  }

  for (i = v39; v39 != v17; i = v39)
  {
    v24 = *(*(i + 16) + 32);
    v25 = *(v24 + 24);
    if (!v25)
    {
      std::runtime_error::runtime_error(&v41, "call to empty boost::function");
      v41.__vftable = &unk_2A1E0C118;
      boost::throw_exception<boost::bad_function_call>(&v41);
    }

    (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(v24 + 32);
    if ((*v22 & 1) == 0)
    {
      *v22 = 1;
    }

    *&v39 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v39);
    v22 = v40;
    if (*v40 == 1)
    {
      *v40 = 0;
    }
  }

  if (*(p_buf + 70) > *(p_buf + 69))
  {
    goto LABEL_42;
  }

LABEL_43:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&buf);
  v27 = v38;
  if (v38)
  {
    if (atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v27 + 16))(v27);
      if (atomic_fetch_add(v27 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v27 + 24))(v27);
      }
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DCA290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27)
{
  std::runtime_error::~runtime_error(&a27);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v29);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&v31);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v30);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a23 + 16));
  __cxa_rethrow();
}

void sub_296DCA2F4(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v4);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&v6);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v5);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DCA2C4);
}

void sub_296DCA33C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296DCA368);
}

void ___ZN4coex16ARICommandDriver4initEv_block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D Stopped", v2, 2u);
  }
}

void coex::ARICommandDriver::set(uint64_t a1, const void **a2, int a3, uint64_t a4)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4coex16ARICommandDriver3setEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v10[3] = &__block_descriptor_tmp_6_1;
  v7 = *a2;
  v10[4] = a1;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v14 = a3;
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16ARICommandDriver3setEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v10 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = *(a1 + 56);
    v8 = v6;
    v9 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v7 = *(a1 + 56);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  coex::ARICommandDriver::set_sync(v3, &v10, v4, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_296DCA5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  coex::CommandDriver::Callback::~Callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void coex::ARICommandDriver::set_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v8 = dispatch_group_create();
  v9 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v9);
  }

  v109[0] = 0;
  v109[1] = v109;
  v109[2] = 0x3802000000;
  v109[3] = __Block_byref_object_copy_;
  v109[4] = __Block_byref_object_dispose_;
  v110 = 0xAAAAAAAAAAAAAAAALL;
  v111 = 0xAAAAAAAAAAAAAAAALL;
  v10 = *a4;
  if (*a4)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a4 + 8);
  v110 = v10;
  v111 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v107 = 0xAAAAAAAAAAAAAAAALL;
  v108 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex16ARICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  aBlock[3] = &unk_2A1E0D0E0;
  v106 = v9;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v106);
  }

  aBlock[4] = v109;
  v12 = _Block_copy(aBlock);
  v13 = *(a1 + 24);
  if (v13)
  {
    dispatch_retain(*(a1 + 24));
  }

  if (v12)
  {
    v14 = _Block_copy(v12);
    v107 = v14;
    v108 = v13;
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = 0;
  v107 = 0;
  v108 = v13;
  if (v13)
  {
LABEL_13:
    dispatch_retain(v13);
    dispatch_release(v13);
  }

LABEL_14:
  if (v12)
  {
    _Block_release(v12);
  }

  v104[0] = 0xAAAAAAAAAAAAAAAALL;
  v104[1] = 0xAAAAAAAAAAAAAAAALL;
  v15 = ctu::cf::dict_adapter::dict_adapter(v104, *a2);
  v16 = (*v104[0])(v15, *MEMORY[0x29EDC8920]);
  v17 = v16;
  if (v16)
  {
    v18 = CFGetTypeID(v16);
    TypeID = CFDictionaryGetTypeID();
    CFRelease(v17);
    if (v18 == TypeID)
    {
      goto LABEL_20;
    }
  }

  v21 = (*v104[0])(v104, *MEMORY[0x29EDC87B0]);
  v22 = v21;
  if (v21)
  {
    v23 = CFGetTypeID(v21);
    v24 = CFDictionaryGetTypeID();
    CFRelease(v22);
    if (v23 == v24)
    {
LABEL_20:
      v25 = *a2;
      v103 = v25;
      if (v25)
      {
        CFRetain(v25);
      }

      if (v14)
      {
        v26 = _Block_copy(v14);
        v101 = v26;
        v102 = v13;
        if (!v13)
        {
LABEL_25:
          coex::ARICommandDriver::setWLANState_sync(a1, v20, &v101);
          if (v13)
          {
            dispatch_release(v13);
          }

          if (v26)
          {
            _Block_release(v26);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v26 = 0;
        v101 = 0;
        v102 = v13;
        if (!v13)
        {
          goto LABEL_25;
        }
      }

      dispatch_retain(v13);
      goto LABEL_25;
    }
  }

LABEL_31:
  v27 = (*v104[0])(v104, *MEMORY[0x29EDC8688]);
  v28 = v27;
  if (!v27)
  {
    goto LABEL_41;
  }

  v29 = CFGetTypeID(v27);
  v30 = CFDictionaryGetTypeID();
  CFRelease(v28);
  if (v29 != v30)
  {
    goto LABEL_41;
  }

  v100 = v28;
  CFRetain(v28);
  if (!v14)
  {
    v31 = 0;
    v98 = 0;
    v99 = v13;
    if (!v13)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v31 = _Block_copy(v14);
  v98 = v31;
  v99 = v13;
  if (v13)
  {
LABEL_35:
    dispatch_retain(v13);
  }

LABEL_36:
  coex::ARICommandDriver::setPolicy_sync(a1, &v100, a3, &v98);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  CFRelease(v28);
LABEL_41:
  v32 = (*v104[0])(v104, *MEMORY[0x29EDC8760]);
  v33 = v32;
  if (!v32)
  {
    goto LABEL_51;
  }

  v34 = CFGetTypeID(v32);
  v35 = CFDictionaryGetTypeID();
  CFRelease(v33);
  if (v34 != v35)
  {
    goto LABEL_51;
  }

  v97 = v33;
  CFRetain(v33);
  if (!v14)
  {
    v38 = 0;
    v95 = 0;
    v96 = v13;
    if (!v13)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v38 = _Block_copy(v14);
  v95 = v38;
  v96 = v13;
  if (v13)
  {
LABEL_45:
    dispatch_retain(v13);
  }

LABEL_46:
  coex::ARICommandDriver::setBandFilterInfo_sync(a1, v36, v37, &v95);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v38)
  {
    _Block_release(v38);
  }

  CFRelease(v33);
LABEL_51:
  v39 = (*v104[0])(v104, *MEMORY[0x29EDC88F0]);
  v40 = v39;
  if (!v39)
  {
    goto LABEL_61;
  }

  v41 = CFGetTypeID(v39);
  v42 = CFDictionaryGetTypeID();
  CFRelease(v40);
  if (v41 != v42)
  {
    goto LABEL_61;
  }

  v94 = v40;
  CFRetain(v40);
  if (!v14)
  {
    v43 = 0;
    v92 = 0;
    v93 = v13;
    if (!v13)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v43 = _Block_copy(v14);
  v92 = v43;
  v93 = v13;
  if (v13)
  {
LABEL_55:
    dispatch_retain(v13);
  }

LABEL_56:
  coex::ARICommandDriver::setScanFreqBandFilter_sync(a1, &v94, a3, &v92);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  CFRelease(v40);
LABEL_61:
  v44 = (*v104[0])(v104, *MEMORY[0x29EDC86F8]);
  v45 = v44;
  if (v44)
  {
    v46 = CFGetTypeID(v44);
    v47 = CFDictionaryGetTypeID();
    CFRelease(v45);
    if (v46 == v47)
    {
      v91 = v45;
      CFRetain(v45);
      v48 = 0;
      v90 = 0;
      v49 = 1;
      if (v14)
      {
        goto LABEL_64;
      }

LABEL_77:
      v50 = 0;
      v88 = 0;
      v89 = v13;
      if (!v13)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }
  }

  v51 = (*v104[0])(v104, *MEMORY[0x29EDC8708]);
  v48 = v51;
  if (!v51)
  {
    goto LABEL_79;
  }

  v52 = CFGetTypeID(v51);
  v53 = CFDictionaryGetTypeID();
  CFRelease(v48);
  if (v52 != v53)
  {
    goto LABEL_79;
  }

  v90 = v48;
  v91 = 0;
  CFRetain(v48);
  v45 = 0;
  v49 = 0;
  if (!v14)
  {
    goto LABEL_77;
  }

LABEL_64:
  v50 = _Block_copy(v14);
  v88 = v50;
  v89 = v13;
  if (v13)
  {
LABEL_65:
    dispatch_retain(v13);
  }

LABEL_66:
  coex::ARICommandDriver::setLinkQualityMode_sync(a1, &v91, &v90, a3, &v88);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v50)
  {
    _Block_release(v50);
  }

  if ((v49 & 1) == 0)
  {
    CFRelease(v48);
  }

  if (v45)
  {
    CFRelease(v45);
  }

LABEL_79:
  v54 = (*v104[0])(v104, *MEMORY[0x29EDC8740]);
  v55 = v54;
  if (!v54)
  {
    goto LABEL_89;
  }

  v56 = CFGetTypeID(v54);
  v57 = CFDictionaryGetTypeID();
  CFRelease(v55);
  if (v56 != v57)
  {
    goto LABEL_89;
  }

  v87 = v55;
  CFRetain(v55);
  if (!v14)
  {
    v58 = 0;
    v85 = 0;
    v86 = v13;
    if (!v13)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v58 = _Block_copy(v14);
  v85 = v58;
  v86 = v13;
  if (v13)
  {
LABEL_83:
    dispatch_retain(v13);
  }

LABEL_84:
  coex::ARICommandDriver::setWiFiStatus_sync(a1, &v87, &v85);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v58)
  {
    _Block_release(v58);
  }

  CFRelease(v55);
LABEL_89:
  v59 = (*v104[0])(v104, *MEMORY[0x29EDC8700]);
  v60 = v59;
  if (!v59)
  {
    goto LABEL_99;
  }

  v61 = CFGetTypeID(v59);
  v62 = CFDictionaryGetTypeID();
  CFRelease(v60);
  if (v61 != v62)
  {
    goto LABEL_99;
  }

  v84 = v60;
  CFRetain(v60);
  if (!v14)
  {
    v63 = 0;
    v82 = 0;
    v83 = v13;
    if (!v13)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v63 = _Block_copy(v14);
  v82 = v63;
  v83 = v13;
  if (v13)
  {
LABEL_93:
    dispatch_retain(v13);
  }

LABEL_94:
  coex::ARICommandDriver::setLAAConfig_sync(a1, &v84, a3, &v82);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v63)
  {
    _Block_release(v63);
  }

  CFRelease(v60);
LABEL_99:
  v64 = (*v104[0])(v104, *MEMORY[0x29EDC8888]);
  v65 = v64;
  if (!v64)
  {
    goto LABEL_109;
  }

  v66 = CFGetTypeID(v64);
  v67 = CFDictionaryGetTypeID();
  CFRelease(v65);
  if (v66 != v67)
  {
    goto LABEL_109;
  }

  v81 = v65;
  CFRetain(v65);
  if (!v14)
  {
    v68 = 0;
    v79 = 0;
    v80 = v13;
    if (!v13)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  v68 = _Block_copy(v14);
  v79 = v68;
  v80 = v13;
  if (v13)
  {
LABEL_103:
    dispatch_retain(v13);
  }

LABEL_104:
  coex::ARICommandDriver::setFCMBCMAntennaMode_sync(a1, &v81, &v79);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v68)
  {
    _Block_release(v68);
  }

  CFRelease(v65);
LABEL_109:
  v69 = (*v104[0])(v104, *MEMORY[0x29EDC8768]);
  v70 = v69;
  if (!v69)
  {
    goto LABEL_119;
  }

  v71 = CFGetTypeID(v69);
  v72 = CFDictionaryGetTypeID();
  CFRelease(v70);
  if (v71 != v72)
  {
    goto LABEL_119;
  }

  v78 = v70;
  CFRetain(v70);
  if (!v14)
  {
    v73 = 0;
    v76 = 0;
    v77 = v13;
    if (!v13)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v73 = _Block_copy(v14);
  v76 = v73;
  v77 = v13;
  if (v13)
  {
LABEL_113:
    dispatch_retain(v13);
  }

LABEL_114:
  coex::ARICommandDriver::setRC1Duration_sync(a1, &v78, a3, &v76);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v73)
  {
    _Block_release(v73);
  }

  CFRelease(v70);
LABEL_119:
  v74 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4coex16ARICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_16;
  block[3] = &unk_29EE5BB38;
  block[4] = v109;
  dispatch_group_notify(v9, v74, block);
  MEMORY[0x29C263AC0](v104);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v106)
  {
    dispatch_group_leave(v106);
    if (v106)
    {
      dispatch_release(v106);
    }
  }

  _Block_object_dispose(v109, 8);
  if (v111)
  {
    dispatch_release(v111);
  }

  if (v110)
  {
    _Block_release(v110);
  }

  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
    dispatch_release(v9);
  }
}

void sub_296DCB0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  coex::CommandDriver::Callback::~Callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  MEMORY[0x29C263AC0](v9 - 224);
  coex::CommandDriver::Callback::~Callback((v9 - 160));
  v11 = *(v9 - 168);
  if (v11)
  {
    dispatch_group_leave(v11);
    v12 = *(v9 - 168);
    if (v12)
    {
      dispatch_release(v12);
    }
  }

  _Block_object_dispose((v9 - 144), 8);
  coex::CommandDriver::Callback::~Callback((v8 + 40));
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
    dispatch_release(v7);
  }

  _Unwind_Resume(a1);
}

void coex::CommandDriver::Callback::~Callback(coex::CommandDriver::Callback *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*this)
  {
    _Block_release(*this);
  }
}

void __copy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE48c35_ZTSN4coex13CommandDriver8CallbackE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = a2[6];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[7];
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE48c35_ZTSN4coex13CommandDriver8CallbackE(void *a1)
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
    CFRelease(v4);
  }
}

void coex::ARICommandDriver::get(uint64_t a1, const void **a2, int a3, uint64_t a4)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4coex16ARICommandDriver3getEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v10[3] = &__block_descriptor_tmp_9_2;
  v7 = *a2;
  v10[4] = a1;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v14 = a3;
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16ARICommandDriver3getEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v11 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = _Block_copy(v6);
    v8 = a1[7];
    v9 = v7;
    v10 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = a1[7];
  v9 = 0;
  v10 = v8;
  if (v8)
  {
LABEL_5:
    dispatch_retain(v8);
  }

LABEL_6:
  coex::ARICommandDriver::get_sync(v5, &v11, a3, &v9);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296DCB568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  coex::CommandDriver::Callback::~Callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t coex::ARICommandDriver::get_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3, uint64_t a4)
{
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v12, *a2);
  if (!ctu::cf::map_adapter::getBool(v12, *MEMORY[0x29EDC88B8]))
  {
    return MEMORY[0x29C263AC0](v12);
  }

  if (!*a4)
  {
    v7 = 0;
    v8 = *(a4 + 8);
    v10 = 0;
    v11 = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = _Block_copy(*a4);
  v8 = *(a4 + 8);
  v10 = v7;
  v11 = v8;
  if (v8)
  {
LABEL_4:
    dispatch_retain(v8);
  }

LABEL_5:
  coex::ARICommandDriver::getScanFreqBandFilter_sync(a1, v6, &v10);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  return MEMORY[0x29C263AC0](v12);
}

void sub_296DCB658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  coex::CommandDriver::Callback::~Callback(&a9);
  MEMORY[0x29C263AC0](&a11);
  _Unwind_Resume(a1);
}

void coex::ARICommandDriver::poll(uint64_t a1, const void **a2, int a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4coex16ARICommandDriver4pollEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdE_block_invoke;
  v6[3] = &__block_descriptor_tmp_10_2;
  v5 = *a2;
  v6[4] = a1;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v8 = a3;
  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16ARICommandDriver4pollEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  coex::ARICommandDriver::poll_sync(v3, &v4, *(a1 + 48));
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_296DCB794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t coex::ARICommandDriver::poll_sync(void *a1, const __CFDictionary **a2, int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v21 = *a2;
    *buf = 67109378;
    *&buf[4] = a3;
    *&buf[8] = 2112;
    *&buf[10] = v21;
    _os_log_debug_impl(&dword_296D7D000, v6, OS_LOG_TYPE_DEBUG, "#D Polling for sim[%d]:\n%@", buf, 0x12u);
  }

  memset(buf, 170, 16);
  ctu::cf::dict_adapter::dict_adapter(buf, *a2);
  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC8728]))
  {
    coex::ARICommandDriver::pollWWANState_sync(a1, a3);
  }

  v23 = -1431655766;
  v7 = (**buf)(buf, *MEMORY[0x29EDC87D8]);
  v8 = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    v11 = v9 == CFNumberGetTypeID() ? ctu::cf::assign(&v23, v8, v10) : 0;
    CFRelease(v8);
    if (v11)
    {
      v12 = a1[5];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 136315138;
        v26 = "pollWLANScanState_sync";
        _os_log_debug_impl(&dword_296D7D000, v12, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", v25, 0xCu);
      }
    }
  }

  v22 = -1431655766;
  v13 = (**buf)(buf, *MEMORY[0x29EDC8950]);
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    v17 = v15 == CFNumberGetTypeID() ? ctu::cf::assign(&v22, v14, v16) : 0;
    CFRelease(v14);
    if (v17)
    {
      v18 = a1[5];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 136315138;
        v26 = "pollWLANConnState_sync";
        _os_log_debug_impl(&dword_296D7D000, v18, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", v25, 0xCu);
      }
    }
  }

  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC86B8]))
  {
    coex::ARICommandDriver::pollPolicy_sync(a1, a3);
  }

  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC8780]))
  {
    coex::ARICommandDriver::pollLinkQuality_sync(a1, a3);
  }

  result = MEMORY[0x29C263AC0](buf);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

CFTypeRef __copy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void coex::ARICommandDriver::setIndications(uint64_t a1, const void **a2, uint64_t a3)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN4coex16ARICommandDriver14setIndicationsEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v8[3] = &__block_descriptor_tmp_13_0;
  v5 = *a2;
  v8[4] = a1;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

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

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v8);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16ARICommandDriver14setIndicationsEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (a1 + 5);
  v4 = (v2 + 152);
  if ((v2 + 152) != a1 + 5)
  {
    v5 = *v3;
    if (*v3)
    {
      CFRetain(*v3);
    }

    v6 = *v4;
    *v4 = v5;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = a1[6];
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = a1[7];
    v10 = v8;
    v11 = v9;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = 0;
  v9 = a1[7];
  v10 = 0;
  v11 = v9;
  if (v9)
  {
LABEL_8:
    dispatch_retain(v9);
  }

LABEL_9:
  coex::ARICommandDriver::setIndications_sync(v2, &v10);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }
}

uint64_t coex::ARICommandDriver::setIndications_sync(coex::ARICommandDriver *a1, uint64_t a2)
{
  coex::ARICommandDriver::registerWWANStateIndication_sync(a1);
  v4 = *(a1 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to enable coex indications", buf, 2u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  *buf = v5;
  AriSdk::ARI_CsiIdcControlEventReq_SDK::ARI_CsiIdcControlEventReq_SDK(buf);
  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = *(&v32 + 1);
  *(&v32 + 1) = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 2);
  if (!v8 || (v9 = *(a1 + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = *(a1 + 17);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v14 = *a2;
    if (*a2)
    {
      goto LABEL_9;
    }

LABEL_17:
    v15 = 0;
    v16 = *(a2 + 8);
    if (!v16)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v11);
  v13 = *(a1 + 17);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v14 = *a2;
  if (!*a2)
  {
    goto LABEL_17;
  }

LABEL_9:
  v15 = _Block_copy(v14);
  v16 = *(a2 + 8);
  if (v16)
  {
LABEL_10:
    dispatch_retain(v16);
  }

LABEL_11:
  v17 = operator new(0x40uLL);
  v17->__shared_owners_ = 0;
  p_shared_owners = &v17->__shared_owners_;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v9;
  v17->__vftable = &unk_2A1E0D4D0;
  v17[1].__shared_owners_ = v11;
  v17[1].__shared_weak_owners_ = v15;
  v17[2].__vftable = v16;
  v17[2].__shared_owners_ = a1;
  v33 = MEMORY[0x29EDCA5F8];
  v34 = 1174405120;
  v35 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver19setIndications_syncENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v36 = &__block_descriptor_tmp_49_2;
  v37 = v17 + 1;
  v38 = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v33;
  v19 = _Block_copy(aBlock);
  v20 = v38;
  if (!v38 || atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

LABEL_20:
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (v32)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v32)
  {
    goto LABEL_22;
  }

LABEL_21:
  v21 = operator new(4uLL);
  *v21 = 0;
  *&v32 = v21;
LABEL_22:
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = v22;
  v26[1] = v22;
  v23 = *(v13 + 16);
  v33 = *(v13 + 8);
  if (!v23)
  {
    v34 = 0;
LABEL_32:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v34 = std::__shared_weak_count::lock(v23);
  if (!v34)
  {
    goto LABEL_32;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v24 = v34;
  if (v34 && !atomic_fetch_add((v34 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  aBlock[0] = v19;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v26);
  std::__shared_weak_count::__release_weak(v11);
  return MEMORY[0x29C2648D0](buf);
}

void sub_296DCC138(_Unwind_Exception *a1, uint64_t a2, ...)
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
  coex::ARICommandDriver::setIndications_sync(coex::CommandDriver::Callback)::$_0::~$_0(va);
  std::__shared_weak_count::__release_weak(v2);
  MEMORY[0x29C2648D0](va2);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
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

void ___ZN4coex16ARICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(*(a1 + 32) + 8);
    v7 = *(v5 + 40);
    v6 = v5 + 40;
    if (v7)
    {
      if (*(*(*(a1 + 32) + 8) + 48))
      {
        v14 = *a2;
        CFRetain(v3);
        v9 = *a3;
        v13 = v9;
        if (v9)
        {
          CFRetain(v9);
          coex::CommandDriver::Callback::operator()(v6, &v14, &v13);
          CFRelease(v9);
        }

        else
        {
          coex::CommandDriver::Callback::operator()(v6, &v14, &v13);
        }

        CFRelease(v3);
        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = 0;
        if (v11)
        {
          _Block_release(v11);
        }

        v12 = *(v10 + 48);
        *(v10 + 48) = 0;
        if (v12)
        {

          dispatch_release(v12);
        }
      }
    }
  }
}

void coex::CommandDriver::Callback::operator()(uint64_t a1, const void **a2, const void **a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK4coex13CommandDriver8CallbackclEN3ctu2cf11CFSharedRefI9__CFErrorEENS4_IK14__CFDictionaryEE_block_invoke;
  block[3] = &__block_descriptor_tmp_24_1;
  if (!v7)
  {
    v10 = *a2;
    aBlock = 0;
    v14 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = _Block_copy(v7);
  v10 = *a2;
  aBlock = v9;
  v14 = v10;
  if (v10)
  {
LABEL_8:
    CFRetain(v10);
  }

LABEL_9:
  v11 = *a3;
  cf = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  dispatch_async(v8, block);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void coex::ARICommandDriver::setWLANState_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[3] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(cf[0]) = 136315138;
    *(cf + 4) = "setWLANState_sync";
    _os_log_debug_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", cf, 0xCu);
  }

  cf[0] = 0xAAAAAAAAAAAAAAAALL;
  v11 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  v5 = cf[0];
  v9 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a3, &v9, &v8);
    CFRelease(v5);
    v6 = cf[0];
    if (!cf[0])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  coex::CommandDriver::Callback::operator()(a3, &v9, &v8);
  v6 = cf[0];
  if (cf[0])
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296DCC65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::ARICommandDriver::setPolicy_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v187 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_debug_impl(&dword_296D7D000, v7, OS_LOG_TYPE_DEBUG, "#D Set Policy request for sim[%d]", buf, 8u);
  }

  v173[0] = 0xAAAAAAAAAAAAAAAALL;
  v173[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v173, *a2);
  v172 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v170[3] = v8;
  *__p = v8;
  v170[1] = v8;
  v170[2] = v8;
  v170[0] = v8;
  AriSdk::ARI_CsiIdcSetRTConfigReq_SDK::ARI_CsiIdcSetRTConfigReq_SDK(v170);
  v9 = operator new(4uLL);
  *v9 = a3;
  v10 = __p[0];
  __p[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = ctu::cf::map_adapter::copyCFDataRef(v173, *MEMORY[0x29EDC8600]);
  cf = v11;
  v169 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = coex::util::data_to_uint64();
  v148 = a2;
  v145 = a3;
  v151 = a1;
  if (cf)
  {
    CFRelease(cf);
  }

  v13 = -16;
  if ((v12 & 1) == 0)
  {
    v13 = -1;
  }

  if ((v12 & 2) != 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFD8;
  }

  if ((v12 & 4) != 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFE8;
  }

  if ((v12 & 0x10) != 0)
  {
    v13 &= 0xFF00FFFF07FFFFFFLL;
  }

  v14 = v13 & 0xFF00FFFFFFFFFFFFLL;
  v15 = 0xFF000000000000;
  if ((v12 & 0x20) != 0)
  {
    v15 = 0;
  }

  v16 = v14 | v15;
  v17 = v16 & 0xF0FFFFFFFFFFFFFFLL;
  v18 = v16 | 0x800000000000000;
  if ((v12 & 0x100) != 0)
  {
    v18 = v17;
  }

  v19 = v18 & 0xE8FFFF00FFFFFFFFLL;
  v20 = v18 | 0x1000000000000000;
  if ((v12 & 0x200) != 0)
  {
    v20 = v19;
  }

  v21 = v20 & 0xFFFFFF00FFFFFFFFLL;
  v22 = 0xFF00000000;
  if ((v12 & 0x400) != 0)
  {
    v22 = 0;
  }

  v23 = v21 | v22;
  v24 = v23 & 0xD8FFFFFFFEFFFFFFLL;
  v25 = v23 | 0x2000000000000000;
  if ((v12 & 0x800) != 0)
  {
    v25 = v24;
  }

  v26 = (v25 & 0xFFFFFFFFFEFFFFFFLL | (((v12 >> 12) & 1) << 24)) ^ 0x1000000;
  v27 = v26 & 0x38FFFFFFFF0000FFLL;
  v28 = v26 | 0xC000000000000000;
  if ((v12 & 0x10000) != 0)
  {
    v28 = v27;
  }

  v29 = v28 & 0xFFFFFFFFFF0000FFLL;
  v30 = 16711680;
  if ((v12 & 0x20000) != 0)
  {
    v30 = 0;
  }

  v31 = 65280;
  if ((v12 & 0x40000) != 0)
  {
    v31 = 0;
  }

  v32 = v31 | v30 | v29;
  v33 = *(a1 + 40);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = v32;
    _os_log_impl(&dword_296D7D000, v33, OS_LOG_TYPE_DEFAULT, "#I Policy bitmap; CxM=0x%llx ICE=0x%llx ", buf, 0x16u);
  }

  Bool = ctu::cf::map_adapter::getBool(v173, *MEMORY[0x29EDC89F8]);
  v34 = *MEMORY[0x29EDC8A68];
  v146 = ctu::cf::map_adapter::getBool(v173, *MEMORY[0x29EDC8A68]);
  v35 = ctu::cf::map_adapter::copyCFDictionaryRef(v173, *MEMORY[0x29EDC89A0]);
  v150 = v12;
  v143 = v34;
  v166[1] = 0xAAAAAAAAAAAAAAAALL;
  v167 = v35;
  v166[0] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v166, v35);
  Int = ctu::cf::map_adapter::getInt(v166, *MEMORY[0x29EDC86B0]);
  v37 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC8AD0]);
  v144 = *MEMORY[0x29EDC8750];
  v38 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC8750]);
  v142 = *MEMORY[0x29EDC86E0];
  v39 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC86E0]);
  v40 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC8A98]);
  v41 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC89C8]);
  if ((v150 & 8) != 0)
  {
    v42 = 0;
  }

  else
  {
    v42 = 5;
  }

  v43 = v151[5];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v150;
    *&buf[12] = 1024;
    *&buf[14] = v42;
    _os_log_impl(&dword_296D7D000, v43, OS_LOG_TYPE_DEFAULT, "#I Event bitmap;CxM=0x%llx ICE=0x%x ", buf, 0x12u);
  }

  v44 = operator new(0x14uLL);
  *v44 = v32;
  v44[8] = Int;
  v44[9] = v37;
  v44[10] = v38;
  v44[11] = v39;
  v44[12] = v40;
  v44[13] = v41;
  *(v44 + 7) = -21846;
  *(v44 + 4) = v42;
  v45 = __p[1];
  __p[1] = v44;
  if (v45)
  {
    operator delete(v45);
  }

  if (ctu::cf::map_adapter::getBool(v173, *MEMORY[0x29EDC8940]))
  {
    *&v46 = 0xAAAAAAAAAAAAAAAALL;
    *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[360] = v46;
    *&buf[376] = v46;
    *&buf[328] = v46;
    *&buf[344] = v46;
    *&buf[296] = v46;
    *&buf[312] = v46;
    *&buf[264] = v46;
    *&buf[280] = v46;
    *&buf[248] = v46;
    *&buf[232] = v46;
    *&buf[216] = v46;
    *&buf[200] = v46;
    *&buf[184] = v46;
    *&buf[168] = v46;
    *&buf[152] = v46;
    *&buf[136] = v46;
    *&buf[120] = v46;
    *&buf[104] = v46;
    *&buf[88] = v46;
    *&buf[72] = v46;
    *&buf[56] = v46;
    *&buf[40] = v46;
    *&buf[24] = v46;
    *&buf[8] = v46;
    *buf = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC88A8]);
    *&buf[4] = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC8828]);
    v152 = *MEMORY[0x29EDC87A0];
    v47 = ctu::cf::map_adapter::copyCFArrayRef(v173, *MEMORY[0x29EDC87A0]);
    v175 = v47;
    v48 = ctu::cf::map_adapter::copyCFArrayRef(v173, *MEMORY[0x29EDC8A78]);
    aBlock = v48;
    v165 = ctu::cf::map_adapter::copyCFArrayRef(v173, *MEMORY[0x29EDC8A88]);
    v164 = ctu::cf::map_adapter::copyCFArrayRef(v173, *MEMORY[0x29EDC8A90]);
    v49 = ctu::cf::map_adapter::copyCFArrayRef(v173, *MEMORY[0x29EDC8A30]);
    v163 = v49;
    v50 = ctu::cf::map_adapter::copyCFArrayRef(v173, *MEMORY[0x29EDC8A80]);
    v153 = v164;
    v154 = v48;
    theArray = v165;
    v162 = v50;
    v51 = ctu::cf::map_adapter::copyCFArrayRef(v173, *MEMORY[0x29EDC8A28]);
    v161 = v51;
    if (v47)
    {
      Count = CFArrayGetCount(v47);
      v53 = Count >= 0x20 ? 32 : Count;
      if (Count)
      {
        v54 = 0;
        v55 = &buf[17];
        do
        {
          v56 = v49;
          v57 = ctu::cf::map_adapter::copyCFArrayRef(v173, v152);
          v160 = v57;
          v58 = v47;
          ValueAtIndex = CFArrayGetValueAtIndex(v47, v54);
          v60 = ValueAtIndex;
          v174 = 0;
          if (ValueAtIndex)
          {
            v61 = CFGetTypeID(ValueAtIndex);
            if (v61 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v174, v60, v62);
            }
          }

          *(v55 - 9) = v174;
          v63 = CFArrayGetValueAtIndex(theArray, v54);
          v64 = v63;
          LOBYTE(v174) = 0;
          if (v63)
          {
            v65 = CFGetTypeID(v63);
            if (v65 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v174, v64, v66);
            }
          }

          *(v55 - 5) = v174;
          v67 = CFArrayGetValueAtIndex(v154, v54);
          v68 = v67;
          LOBYTE(v174) = 0;
          if (v67)
          {
            v69 = CFGetTypeID(v67);
            if (v69 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v174, v68, v70);
            }
          }

          *(v55 - 4) = v174;
          v71 = CFArrayGetValueAtIndex(v153, v54);
          v72 = v71;
          LOBYTE(v174) = 0;
          if (v71)
          {
            v73 = CFGetTypeID(v71);
            if (v73 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v174, v72, v74);
            }
          }

          *(v55 - 3) = v174;
          v75 = CFArrayGetValueAtIndex(v56, v54);
          v76 = v75;
          LOBYTE(v174) = 0;
          if (v75)
          {
            v77 = CFGetTypeID(v75);
            if (v77 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v174, v76, v78);
            }
          }

          *(v55 - 2) = v174;
          v79 = CFArrayGetValueAtIndex(v50, v54);
          v80 = v79;
          LOBYTE(v174) = 0;
          if (v79)
          {
            v81 = CFGetTypeID(v79);
            if (v81 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v174, v80, v82);
            }
          }

          *(v55 - 1) = v174;
          v83 = CFArrayGetValueAtIndex(v51, v54);
          v84 = v83;
          LOBYTE(v174) = 0;
          if (v83)
          {
            v85 = CFGetTypeID(v83);
            if (v85 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v174, v84, v86);
            }
          }

          *v55 = v174;
          if (v57)
          {
            CFRelease(v57);
          }

          ++v54;
          v55 += 12;
          v47 = v58;
          v49 = v56;
        }

        while (v53 != v54);
      }
    }

    v87 = operator new(0x188uLL);
    memcpy(v87, buf, 0x188uLL);
    v88 = v172;
    v172 = v87;
    if (v88)
    {
      operator delete(v88);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v153)
    {
      CFRelease(v153);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (v154)
    {
      CFRelease(v154);
    }

    if (v47)
    {
      CFRelease(v47);
    }
  }

  v89 = v151[2];
  if (!v89 || (v90 = v151[1], (v91 = std::__shared_weak_count::lock(v89)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v92 = v91;
  p_shared_weak_owners = &v91->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v91->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v92);
  }

  v94 = v151[17];
  *buf = v90;
  *&buf[8] = v92;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  *&buf[16] = v151;
  if (*a4)
  {
    v95 = _Block_copy(*a4);
    v96 = *(a4 + 8);
    *&buf[24] = v95;
    *&buf[32] = v96;
    if (!v96)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v95 = 0;
  v96 = *(a4 + 8);
  *&buf[24] = 0;
  *&buf[32] = v96;
  if (v96)
  {
LABEL_95:
    dispatch_retain(v96);
  }

LABEL_96:
  v97 = *v148;
  *&buf[40] = v97;
  if (v97)
  {
    CFRetain(v97);
  }

  buf[48] = Bool;
  buf[49] = (v150 & 0x8000) != 0;
  v98 = operator new(0x50uLL);
  v98->__shared_owners_ = 0;
  p_shared_owners = &v98->__shared_owners_;
  v98->__shared_weak_owners_ = 0;
  v98->__vftable = &unk_2A1E0D6D0;
  v98[1].__vftable = v90;
  *buf = 0;
  *&buf[8] = 0;
  v98[1].__shared_owners_ = v92;
  v98[1].__shared_weak_owners_ = v151;
  v98[2].__vftable = v95;
  v98[2].__shared_owners_ = v96;
  *&buf[32] = 0;
  *&buf[24] = 0;
  v98[2].__shared_weak_owners_ = v97;
  *&buf[40] = 0;
  LOWORD(v98[3].__vftable) = *&buf[48];
  v175 = MEMORY[0x29EDCA5F8];
  v176 = 1174405120;
  v177 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v178 = &__block_descriptor_tmp_70_0;
  v179 = v98 + 1;
  v180 = v98;
  atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v182 = 0x40000000;
  v183 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  v184 = &unk_29EE5BB60;
  v185 = &v175;
  v100 = _Block_copy(&aBlock);
  v101 = v180;
  if (!v180 || atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_101;
    }

LABEL_106:
    (v98->__on_zero_shared)(v98);
    std::__shared_weak_count::__release_weak(v98);
    if (__p[0])
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  (v101->__on_zero_shared)(v101);
  std::__shared_weak_count::__release_weak(v101);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_106;
  }

LABEL_101:
  if (__p[0])
  {
    goto LABEL_108;
  }

LABEL_107:
  v102 = operator new(4uLL);
  *v102 = 0;
  __p[0] = v102;
LABEL_108:
  v159 = 0xAAAAAAAAAAAAAAAALL;
  *&v103 = 0xAAAAAAAAAAAAAAAALL;
  *(&v103 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v158[0] = v103;
  v158[1] = v103;
  v104 = *(v94 + 16);
  v175 = *(v94 + 8);
  if (!v104)
  {
    v176 = 0;
LABEL_165:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v176 = std::__shared_weak_count::lock(v104);
  if (!v176)
  {
    goto LABEL_165;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v105 = v176;
  if (v176 && !atomic_fetch_add((v176 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v105->__on_zero_shared)(v105);
    std::__shared_weak_count::__release_weak(v105);
  }

  aBlock = v100;
  ice::SendMsgBaseProxy::callback();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](v158);
  if (*&buf[40])
  {
    CFRelease(*&buf[40]);
  }

  if (*&buf[32])
  {
    dispatch_release(*&buf[32]);
  }

  if (*&buf[24])
  {
    _Block_release(*&buf[24]);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  if (v146)
  {
    v106 = v151[5];
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v145;
      _os_log_debug_impl(&dword_296D7D000, v106, OS_LOG_TYPE_DEBUG, "#D Set TxPower Limit Threshold for sim[%d]", buf, 8u);
    }

    *&v107 = 0xAAAAAAAAAAAAAAAALL;
    *(&v107 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[96] = v107;
    *&buf[112] = v107;
    *&buf[64] = v107;
    *&buf[80] = v107;
    *&buf[32] = v107;
    *&buf[48] = v107;
    *buf = v107;
    *&buf[16] = v107;
    AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK::ARI_CsiIdcSetTxPowerLimitReq_SDK(buf);
    v108 = operator new(4uLL);
    *v108 = v145;
    v109 = *&buf[64];
    *&buf[64] = v108;
    if (v109)
    {
      operator delete(v109);
    }

    v110 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC88F8]);
    v111 = operator new(1uLL);
    *v111 = v110;
    v112 = *&buf[72];
    *&buf[72] = v111;
    if (v112)
    {
      operator delete(v112);
    }

    v113 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC88A0]);
    v114 = operator new(1uLL);
    *v114 = v113;
    v115 = *&buf[80];
    *&buf[80] = v114;
    if (v115)
    {
      operator delete(v115);
    }

    v116 = ctu::cf::map_adapter::getInt(v173, v144);
    v117 = operator new(1uLL);
    *v117 = v116;
    v118 = *&buf[88];
    *&buf[88] = v117;
    if (v118)
    {
      operator delete(v118);
    }

    v119 = ctu::cf::map_adapter::getInt(v173, v142);
    v120 = operator new(1uLL);
    *v120 = v119;
    v121 = *&buf[96];
    *&buf[96] = v120;
    if (v121)
    {
      operator delete(v121);
    }

    v122 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC8978]);
    v123 = operator new(1uLL);
    *v123 = v122;
    v124 = *&buf[104];
    *&buf[104] = v123;
    if (v124)
    {
      operator delete(v124);
    }

    v125 = ctu::cf::map_adapter::getInt(v173, *MEMORY[0x29EDC8900]);
    v126 = operator new(1uLL);
    *v126 = v125;
    v127 = *&buf[112];
    *&buf[112] = v126;
    if (v127)
    {
      operator delete(v127);
    }

    v128 = ctu::cf::map_adapter::getBool(v173, v143);
    v129 = operator new(4uLL);
    *v129 = v128;
    v130 = *&buf[120];
    *&buf[120] = v129;
    if (v130)
    {
      operator delete(v130);
    }

    v131 = v151[17];
    atomic_fetch_add_explicit(&v92->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v132 = operator new(0x30uLL);
    v132->__shared_owners_ = 0;
    v133 = &v132->__shared_owners_;
    v132->__shared_weak_owners_ = 0;
    v132[1].__vftable = v90;
    v132->__vftable = &unk_2A1E0D750;
    v132[1].__shared_owners_ = v92;
    v132[1].__shared_weak_owners_ = v151;
    v175 = MEMORY[0x29EDCA5F8];
    v176 = 1174405120;
    v177 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__1vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
    v178 = &__block_descriptor_tmp_75;
    v179 = v132 + 1;
    v180 = v132;
    atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
    aBlock = MEMORY[0x29EDCA5F8];
    v182 = 0x40000000;
    v183 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
    v184 = &unk_29EE5BB60;
    v185 = &v175;
    v134 = _Block_copy(&aBlock);
    v135 = v180;
    if (v180 && !atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v135->__on_zero_shared)(v135);
      std::__shared_weak_count::__release_weak(v135);
      if (atomic_fetch_add(v133, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_145:
        if (*&buf[64])
        {
          goto LABEL_150;
        }

LABEL_149:
        v136 = operator new(4uLL);
        *v136 = 0;
        *&buf[64] = v136;
LABEL_150:
        v157 = 0xAAAAAAAAAAAAAAAALL;
        *&v137 = 0xAAAAAAAAAAAAAAAALL;
        *(&v137 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v156[0] = v137;
        v156[1] = v137;
        v138 = *(v131 + 16);
        v175 = *(v131 + 8);
        if (v138)
        {
          v176 = std::__shared_weak_count::lock(v138);
          if (v176)
          {
            ice::SendMsgBaseProxy::SendMsgBaseProxy();
            v139 = v176;
            if (v176 && !atomic_fetch_add((v176 + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v139->__on_zero_shared)(v139);
              std::__shared_weak_count::__release_weak(v139);
            }

            aBlock = v134;
            ice::SendMsgBaseProxy::callback();
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            MEMORY[0x29C263BF0](v156);
            MEMORY[0x29C264F50](buf);
            goto LABEL_158;
          }
        }

        else
        {
          v176 = 0;
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else if (atomic_fetch_add(v133, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_145;
    }

    (v132->__on_zero_shared)(v132);
    std::__shared_weak_count::__release_weak(v132);
    if (*&buf[64])
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_158:
  std::__shared_weak_count::__release_weak(v92);
  MEMORY[0x29C263AC0](v166);
  if (v167)
  {
    CFRelease(v167);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  MEMORY[0x29C2646C0](v170);
  result = MEMORY[0x29C263AC0](v173);
  v141 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DCD79C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void coex::ARICommandDriver::setBandFilterInfo_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf[3] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(cf[0]) = 136315138;
    *(cf + 4) = "setBandFilterInfo_sync";
    _os_log_debug_impl(&dword_296D7D000, v5, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", cf, 0xCu);
  }

  cf[0] = 0xAAAAAAAAAAAAAAAALL;
  v12 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  v6 = cf[0];
  v10 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
    v9 = 0;
    coex::CommandDriver::Callback::operator()(a4, &v10, &v9);
    CFRelease(v6);
    v7 = cf[0];
    if (!cf[0])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  coex::CommandDriver::Callback::operator()(a4, &v10, &v9);
  v7 = cf[0];
  if (cf[0])
  {
LABEL_7:
    CFRelease(v7);
  }

LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_296DCDBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::ARICommandDriver::setScanFreqBandFilter_sync(void *a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v50 = *MEMORY[0x29EDCA608];
  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v36 = *a2;
    *buf = 67109378;
    *&buf[4] = a3;
    *&buf[8] = 2112;
    *&buf[10] = v36;
    _os_log_debug_impl(&dword_296D7D000, v8, OS_LOG_TYPE_DEBUG, "#D Setting Scan Frequency Band filter info for sim[%d]: %@", buf, 0x12u);
  }

  v43[0] = 0xAAAAAAAAAAAAAAAALL;
  v43[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v43, *a2);
  v9 = ctu::cf::map_adapter::copyCFArrayRef(v43, *MEMORY[0x29EDC87F8]);
  cf = v9;
  if (v9)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40[3] = v10;
    __p = v10;
    v40[1] = v10;
    v40[2] = v10;
    v40[0] = v10;
    AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK::ARI_CsiIdcRTSetScanFreqReq_SDK(v40);
    v11 = operator new(4uLL);
    *v11 = a3;
    v12 = __p;
    *&__p = v11;
    if (v12)
    {
      operator delete(v12);
    }

    v39 = v9;
    CFRetain(v9);
    coex::ARICommandDriver::convertScanFrequencies_sync(a1, &v39, buf);
    v13 = operator new(0x60uLL);
    v14 = v47;
    v13[2] = v46;
    v13[3] = v14;
    v15 = v49;
    v13[4] = v48;
    v13[5] = v15;
    v16 = *&buf[16];
    *v13 = *buf;
    v13[1] = v16;
    v17 = *(&__p + 1);
    *(&__p + 1) = v13;
    if (v17)
    {
      operator delete(v17);
    }

    CFRelease(v9);
    v18 = a1[2];
    if (!v18 || (v19 = a1[1], (v20 = std::__shared_weak_count::lock(v18)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v21 = v20;
    p_shared_weak_owners = &v20->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v21);
    }

    v23 = a1[17];
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (*a4)
    {
      v24 = _Block_copy(*a4);
      v25 = *(a4 + 8);
      if (!v25)
      {
LABEL_15:
        v26 = operator new(0x40uLL);
        v26->__shared_owners_ = 0;
        p_shared_owners = &v26->__shared_owners_;
        v26->__shared_weak_owners_ = 0;
        v26[1].__vftable = v19;
        v26->__vftable = &unk_2A1E0DA50;
        v26[1].__shared_owners_ = v21;
        v26[1].__shared_weak_owners_ = a1;
        v26[2].__vftable = v24;
        v26[2].__shared_owners_ = v25;
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 1174405120;
        *&buf[16] = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
        *&buf[24] = &__block_descriptor_tmp_109;
        *&v46 = v26 + 1;
        *(&v46 + 1) = v26;
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
        aBlock[3] = &unk_29EE5BB60;
        aBlock[4] = buf;
        v28 = _Block_copy(aBlock);
        v29 = *(&v46 + 1);
        if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_18:
            if (__p)
            {
              goto LABEL_25;
            }

LABEL_24:
            v30 = operator new(4uLL);
            *v30 = 0;
            *&__p = v30;
LABEL_25:
            v38 = 0xAAAAAAAAAAAAAAAALL;
            *&v31 = 0xAAAAAAAAAAAAAAAALL;
            *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v37[0] = v31;
            v37[1] = v31;
            v32 = *(v23 + 16);
            *buf = *(v23 + 8);
            if (v32)
            {
              *&buf[8] = std::__shared_weak_count::lock(v32);
              if (*&buf[8])
              {
                ice::SendMsgBaseProxy::SendMsgBaseProxy();
                v33 = *&buf[8];
                if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v33->__on_zero_shared)(v33);
                  std::__shared_weak_count::__release_weak(v33);
                }

                aBlock[0] = v28;
                ice::SendMsgBaseProxy::callback();
                if (aBlock[0])
                {
                  _Block_release(aBlock[0]);
                }

                MEMORY[0x29C263BF0](v37);
                std::__shared_weak_count::__release_weak(v21);
                MEMORY[0x29C264AE0](v40);
                if (cf)
                {
                  CFRelease(cf);
                }

                goto LABEL_34;
              }
            }

            else
            {
              *&buf[8] = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }

        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
        if (__p)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v24 = 0;
      v25 = *(a4 + 8);
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    dispatch_retain(v25);
    goto LABEL_15;
  }

LABEL_34:
  result = MEMORY[0x29C263AC0](v43);
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DCE0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t coex::ARICommandDriver::setLinkQualityMode_sync(void *a1, const __CFDictionary **a2, const __CFDictionary **a3, int a4, uint64_t a5)
{
  v56 = *MEMORY[0x29EDCA608];
  v9 = *a2;
  v10 = MEMORY[0x29EDC8AE0];
  if (*a2)
  {
    v12 = a1[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      *&buf[4] = a4;
      *&buf[8] = 2112;
      *&buf[10] = v9;
      _os_log_debug_impl(&dword_296D7D000, v12, OS_LOG_TYPE_DEBUG, "#D Setting BLER with for sim[%d]: %@", buf, 0x12u);
      v9 = *a2;
    }

    memset(buf, 170, 16);
    ctu::cf::dict_adapter::dict_adapter(buf, v9);
    if (ctu::cf::map_adapter::getBool(buf, *v10))
    {
      LOBYTE(v9) = ctu::cf::map_adapter::getInt(buf, *MEMORY[0x29EDC8698]);
      v13 = 2;
    }

    else
    {
      LOBYTE(v9) = 0;
      v13 = 0;
    }

    MEMORY[0x29C263AC0](buf);
    v14 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }

LABEL_7:
    v42 = 0;
    goto LABEL_19;
  }

  v13 = 0;
  v14 = *a3;
  if (!*a3)
  {
    goto LABEL_7;
  }

LABEL_10:
  v15 = a1[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    *&buf[4] = a4;
    *&buf[8] = 2112;
    *&buf[10] = v14;
    _os_log_debug_impl(&dword_296D7D000, v15, OS_LOG_TYPE_DEBUG, "#D Setting SINR with for sim[%d]: %@", buf, 0x12u);
    v14 = *a3;
  }

  memset(buf, 170, 16);
  ctu::cf::dict_adapter::dict_adapter(buf, v14);
  if (ctu::cf::map_adapter::getBool(buf, *v10))
  {
    ctu::cf::map_adapter::getDouble(buf, *MEMORY[0x29EDC8AF0], 0.0);
    v13 |= 1u;
    v17 = 0.0;
    if (v16 >= 0.0)
    {
      v17 = v16;
      if (v16 > 1.0)
      {
        v17 = 1.0;
      }
    }

    v18.f64[0] = 1.0 - v17;
    v18.f64[1] = v17;
    v42 = vmovn_s64(vcvtq_u64_f64(vmulq_f64(v18, vdupq_n_s64(0x40C3880000000000uLL))));
  }

  else
  {
    v42 = 0;
    v13 &= 2u;
  }

  MEMORY[0x29C263AC0](buf);
LABEL_19:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54 = v19;
  __p = v19;
  *&buf[16] = v19;
  v53 = v19;
  *buf = v19;
  AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK(buf);
  v20 = operator new(4uLL);
  *v20 = a4;
  v21 = __p;
  *&__p = v20;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = operator new(0xCuLL);
  *v22 = v13;
  v22[1] = v9;
  *(v22 + 1) = 0;
  *(v22 + 4) = v42;
  v23 = *(&__p + 1);
  *(&__p + 1) = v22;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = a1[2];
  if (!v24 || (v25 = a1[1], (v26 = std::__shared_weak_count::lock(v24)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  p_shared_weak_owners = &v26->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v27);
  }

  v29 = a1[17];
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (!*a5)
  {
    v30 = 0;
    v31 = *(a5 + 8);
    if (!v31)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v30 = _Block_copy(*a5);
  v31 = *(a5 + 8);
  if (v31)
  {
LABEL_29:
    dispatch_retain(v31);
  }

LABEL_30:
  v32 = operator new(0x40uLL);
  v32->__shared_owners_ = 0;
  p_shared_owners = &v32->__shared_owners_;
  v32->__shared_weak_owners_ = 0;
  v32[1].__vftable = v25;
  v32->__vftable = &unk_2A1E0D9D0;
  v32[1].__shared_owners_ = v27;
  v32[1].__shared_weak_owners_ = a1;
  v32[2].__vftable = v30;
  v32[2].__shared_owners_ = v31;
  v45 = MEMORY[0x29EDCA5F8];
  v46 = 1174405120;
  v47 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver23setLinkQualityMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEES9_NS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v48 = &__block_descriptor_tmp_104;
  v49 = v32 + 1;
  v50 = v32;
  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v45;
  v34 = _Block_copy(aBlock);
  v35 = v50;
  if (!v50 || atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_33;
    }

LABEL_38:
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    if (__p)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_38;
  }

LABEL_33:
  if (__p)
  {
    goto LABEL_40;
  }

LABEL_39:
  v36 = operator new(4uLL);
  *v36 = 0;
  *&__p = v36;
LABEL_40:
  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[0] = v37;
  v43[1] = v37;
  v38 = *(v29 + 16);
  v45 = *(v29 + 8);
  if (!v38)
  {
    v46 = 0;
LABEL_50:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v46 = std::__shared_weak_count::lock(v38);
  if (!v46)
  {
    goto LABEL_50;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v39 = v46;
  if (v46 && !atomic_fetch_add((v46 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  aBlock[0] = v34;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v43);
  std::__shared_weak_count::__release_weak(v27);
  result = MEMORY[0x29C265830](buf);
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t coex::ARICommandDriver::setWiFiStatus_sync(void *a1, const __CFDictionary **a2, uint64_t a3)
{
  v41[0] = 0xAAAAAAAAAAAAAAAALL;
  v41[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v41, *a2);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v6;
  *v40 = v6;
  v38[2] = v6;
  v38[3] = v6;
  v38[0] = v6;
  v38[1] = v6;
  AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK::ARI_CsiIdcSetWifiStatusReq_SDK(v38);
  v7 = operator new(4uLL);
  *v7 = 0;
  v8 = __p[0];
  __p[0] = v7;
  if (v8)
  {
    operator delete(v8);
  }

  Int = ctu::cf::map_adapter::getInt(v41, *MEMORY[0x29EDC8778]);
  v10 = operator new(4uLL);
  *v10 = Int;
  v11 = __p[1];
  __p[1] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = ctu::cf::map_adapter::getInt(v41, *MEMORY[0x29EDC8620]);
  v13 = operator new(4uLL);
  *v13 = v12;
  v14 = v40[0];
  v40[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = ctu::cf::map_adapter::getInt(v41, *MEMORY[0x29EDC8658]);
  v16 = operator new(4uLL);
  *v16 = v15;
  v17 = v40[1];
  v40[1] = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = a1[2];
  if (!v18 || (v19 = a1[1], (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = v20;
  p_shared_weak_owners = &v20->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v21);
  }

  v23 = a1[17];
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*a3)
  {
    v24 = _Block_copy(*a3);
    v25 = *(a3 + 8);
    if (!v25)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v24 = 0;
  v25 = *(a3 + 8);
  if (v25)
  {
LABEL_15:
    dispatch_retain(v25);
  }

LABEL_16:
  v26 = *a2;
  if (*a2)
  {
    CFRetain(v26);
  }

  v27 = operator new(0x48uLL);
  v27->__shared_owners_ = 0;
  p_shared_owners = &v27->__shared_owners_;
  v27->__shared_weak_owners_ = 0;
  v27->__vftable = &unk_2A1E0D850;
  v27[1].__vftable = v19;
  v27[1].__shared_owners_ = v21;
  v27[1].__shared_weak_owners_ = a1;
  v27[2].__vftable = v24;
  v27[2].__shared_owners_ = v25;
  v27[2].__shared_weak_owners_ = v26;
  v42 = MEMORY[0x29EDCA5F8];
  v43 = 1174405120;
  v44 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver18setWiFiStatus_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v45 = &__block_descriptor_tmp_85_0;
  v46 = v27 + 1;
  v47 = v27;
  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v42;
  v29 = _Block_copy(aBlock);
  v30 = v47;
  if (!v47 || atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

LABEL_26:
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    if (__p[0])
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  (v30->__on_zero_shared)(v30);
  std::__shared_weak_count::__release_weak(v30);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

LABEL_21:
  if (__p[0])
  {
    goto LABEL_28;
  }

LABEL_27:
  v31 = operator new(4uLL);
  *v31 = 0;
  __p[0] = v31;
LABEL_28:
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v32;
  v36[1] = v32;
  v33 = *(v23 + 16);
  v42 = *(v23 + 8);
  if (!v33)
  {
    v43 = 0;
LABEL_38:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v43 = std::__shared_weak_count::lock(v33);
  if (!v43)
  {
    goto LABEL_38;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v34 = v43;
  if (v43 && !atomic_fetch_add((v43 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  aBlock[0] = v29;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v36);
  std::__shared_weak_count::__release_weak(v21);
  MEMORY[0x29C264B30](v38);
  return MEMORY[0x29C263AC0](v41);
}

void sub_296DCEDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v24 = *(v22 - 120);
  if (v24)
  {
    _Block_release(v24);
  }

  MEMORY[0x29C263BF0](&a15);
  coex::ARICommandDriver::setWiFiStatus_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0::~$_0(&a9);
  std::__shared_weak_count::__release_weak(v21);
  MEMORY[0x29C264B30](&a21);
  MEMORY[0x29C263AC0](v22 - 184);
  _Unwind_Resume(a1);
}

uint64_t coex::ARICommandDriver::setLAAConfig_sync(void *a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v54[0] = 0xAAAAAAAAAAAAAAAALL;
  v54[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v54, *a2);
  v53 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v51 = v8;
  *v52 = v8;
  v49[3] = v8;
  *__p = v8;
  v49[1] = v8;
  v49[2] = v8;
  v49[0] = v8;
  AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK::ARI_CsiIdcSetLaaConfigReq_SDK(v49);
  v9 = operator new(4uLL);
  *v9 = a3;
  v10 = __p[0];
  __p[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  Bool = ctu::cf::map_adapter::getBool(v54, *MEMORY[0x29EDC8868]);
  v12 = operator new(4uLL);
  *v12 = Bool;
  v13 = __p[1];
  __p[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  Int = ctu::cf::map_adapter::getInt(v54, *MEMORY[0x29EDC89C0]);
  v15 = operator new(1uLL);
  *v15 = Int;
  v16 = v51[0];
  v51[0] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = ctu::cf::map_adapter::getInt(v54, *MEMORY[0x29EDC8870]);
  v18 = operator new(1uLL);
  *v18 = v17;
  v19 = v51[1];
  v51[1] = v18;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = ctu::cf::map_adapter::getInt(v54, *MEMORY[0x29EDC88C8]);
  v21 = operator new(1uLL);
  *v21 = v20;
  v22 = v52[0];
  v52[0] = v21;
  if (v22)
  {
    operator delete(v22);
  }

  v23 = ctu::cf::map_adapter::getInt(v54, *MEMORY[0x29EDC8838]);
  v24 = operator new(2uLL);
  *v24 = v23;
  v25 = v52[1];
  v52[1] = v24;
  if (v25)
  {
    operator delete(v25);
  }

  v26 = ctu::cf::map_adapter::getInt(v54, *MEMORY[0x29EDC8948]);
  v27 = operator new(2uLL);
  *v27 = v26;
  v28 = v53;
  v53 = v27;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = a1[2];
  if (!v29 || (v30 = a1[1], (v31 = std::__shared_weak_count::lock(v29)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v32 = v31;
  p_shared_weak_owners = &v31->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v32);
  }

  v34 = a1[17];
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*a4)
  {
    v35 = _Block_copy(*a4);
    v36 = *(a4 + 8);
    if (!v36)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v35 = 0;
  v36 = *(a4 + 8);
  if (v36)
  {
LABEL_21:
    dispatch_retain(v36);
  }

LABEL_22:
  v37 = *a2;
  if (*a2)
  {
    CFRetain(v37);
  }

  v38 = operator new(0x48uLL);
  v38->__shared_owners_ = 0;
  p_shared_owners = &v38->__shared_owners_;
  v38->__shared_weak_owners_ = 0;
  v38->__vftable = &unk_2A1E0D8D0;
  v38[1].__vftable = v30;
  v38[1].__shared_owners_ = v32;
  v38[1].__shared_weak_owners_ = a1;
  v38[2].__vftable = v35;
  v38[2].__shared_owners_ = v36;
  v38[2].__shared_weak_owners_ = v37;
  v55 = MEMORY[0x29EDCA5F8];
  v56 = 1174405120;
  v57 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v58 = &__block_descriptor_tmp_90;
  v59 = v38 + 1;
  v60 = v38;
  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v55;
  v40 = _Block_copy(aBlock);
  v41 = v60;
  if (!v60 || atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_27;
    }

LABEL_32:
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
    if (__p[0])
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v41->__on_zero_shared)(v41);
  std::__shared_weak_count::__release_weak(v41);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_32;
  }

LABEL_27:
  if (__p[0])
  {
    goto LABEL_34;
  }

LABEL_33:
  v42 = operator new(4uLL);
  *v42 = 0;
  __p[0] = v42;
LABEL_34:
  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v43 = 0xAAAAAAAAAAAAAAAALL;
  *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47[0] = v43;
  v47[1] = v43;
  v44 = *(v34 + 16);
  v55 = *(v34 + 8);
  if (!v44)
  {
    v56 = 0;
LABEL_44:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v56 = std::__shared_weak_count::lock(v44);
  if (!v56)
  {
    goto LABEL_44;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v45 = v56;
  if (v56 && !atomic_fetch_add((v56 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  aBlock[0] = v40;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v47);
  std::__shared_weak_count::__release_weak(v32);
  MEMORY[0x29C2648F0](v49);
  return MEMORY[0x29C263AC0](v54);
}

void sub_296DCF438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v24 = *(v22 - 120);
  if (v24)
  {
    _Block_release(v24);
  }

  MEMORY[0x29C263BF0](&a15);
  coex::ARICommandDriver::setLAAConfig_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0::~$_0(&a9);
  std::__shared_weak_count::__release_weak(v21);
  MEMORY[0x29C2648F0](&a21);
  MEMORY[0x29C263AC0](v22 - 184);
  _Unwind_Resume(a1);
}

uint64_t coex::ARICommandDriver::setFCMBCMAntennaMode_sync(void *a1, const __CFDictionary **a2, uint64_t a3)
{
  v82 = *MEMORY[0x29EDCA608];
  v72[0] = 0xAAAAAAAAAAAAAAAALL;
  v72[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v72, *a2);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v5;
  v71 = v5;
  v69[2] = v5;
  v69[3] = v5;
  v69[0] = v5;
  v69[1] = v5;
  AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK::ARI_IBIRfSetAntennaPortMappingReq_SDK(v69);
  Int = ctu::cf::map_adapter::getInt(v72, *MEMORY[0x29EDC89B8]);
  v7 = operator new(4uLL);
  v54 = a2;
  *v7 = Int;
  v8 = __p[0];
  __p[0] = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = ctu::cf::map_adapter::copyCFArrayRef(v72, *MEMORY[0x29EDC8AC0]);
  v68 = v9;
  Count = CFArrayGetCount(v9);
  v11 = 50;
  if (Count < 50)
  {
    v11 = Count;
  }

  v58 = v11;
  if (Count >= 1)
  {
    v12 = 0;
    v56 = *MEMORY[0x29EDC89F0];
    v57 = *MEMORY[0x29EDC89E8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
      v14 = ValueAtIndex;
      if (ValueAtIndex && (v15 = CFGetTypeID(ValueAtIndex), v15 == CFDictionaryGetTypeID()))
      {
        v67 = v14;
        CFRetain(v14);
      }

      else
      {
        v14 = 0;
        v67 = 0;
      }

      v16 = a1;
      aBlock = 0xAAAAAAAAAAAAAAAALL;
      v74 = 0xAAAAAAAAAAAAAAAALL;
      v17 = ctu::cf::dict_adapter::dict_adapter(&aBlock, v14);
      v18 = ctu::cf::map_adapter::getInt(v17, v57);
      v19 = ctu::cf::map_adapter::getInt(&aBlock, v56);
      v20 = __p[1];
      v21 = v71;
      v22 = v71 - __p[1];
      v23 = (v71 - __p[1]) >> 3;
      if (v23 >= 0x32)
      {
        LogLevels = Ari::GetLogLevels(v19);
        if ((LogLevels & 8) != 0)
        {
          OsLog = AriOsa::GetOsLog(LogLevels);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(&v59, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v28);
            v35 = &v59;
            if (SHIBYTE(v61) < 0)
            {
              v35 = v59;
            }

            *buf = 136315650;
            *&buf[4] = "ari";
            *&buf[12] = 2080;
            *&buf[14] = v35;
            *&buf[22] = 1024;
            LODWORD(v79) = 371;
            _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array is full, cannot add new values", buf, 0x1Cu);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v59);
            }
          }

          AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v28);
          v30 = buf;
          if (buf[23] < 0)
          {
            v30 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array is full, cannot add new values", v29, v30, 371);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        v24 = v18 | (v19 << 32) | 0xAAAAAA00;
        if (v71 >= *(&v71 + 1))
        {
          v31 = *(&v71 + 1) - __p[1];
          if ((*(&v71 + 1) - __p[1]) >> 2 <= v23 + 1)
          {
            v32 = v23 + 1;
          }

          else
          {
            v32 = v31 >> 2;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v32;
          }

          if (v33 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v34 = operator new(8 * v33);
          *&v34[v22] = v24;
          v25 = &v34[v22 + 8];
          memcpy(v34, v20, v22);
          __p[1] = v34;
          *&v71 = v25;
          *(&v71 + 1) = &v34[8 * v33];
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v71 = v24;
          v25 = v21 + 8;
        }

        *&v71 = v25;
      }

      MEMORY[0x29C263AC0](&aBlock);
      a1 = v16;
      if (v14)
      {
        CFRelease(v14);
      }

      ++v12;
    }

    while (v58 != v12);
  }

  v36 = a1[2];
  if (!v36 || (v37 = a1[1], (v38 = std::__shared_weak_count::lock(v36)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v39 = v38;
  p_shared_weak_owners = &v38->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v39);
  }

  v41 = a1[17];
  v59 = v37;
  v60 = v39;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v61 = a1;
  if (*a3)
  {
    v42 = _Block_copy(*a3);
    v43 = *(a3 + 8);
    v62 = v42;
    object = v43;
    if (!v43)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v42 = 0;
  v43 = *(a3 + 8);
  v62 = 0;
  object = v43;
  if (v43)
  {
LABEL_43:
    dispatch_retain(v43);
  }

LABEL_44:
  v44 = *v54;
  cf = v44;
  if (v44)
  {
    CFRetain(v44);
  }

  v45 = operator new(0x48uLL);
  v45->__shared_owners_ = 0;
  p_shared_owners = &v45->__shared_owners_;
  v45->__shared_weak_owners_ = 0;
  v45->__vftable = &unk_2A1E0D950;
  v45[1].__vftable = v37;
  v59 = 0;
  v60 = 0;
  v45[1].__shared_owners_ = v39;
  v45[1].__shared_weak_owners_ = a1;
  v45[2].__vftable = v42;
  v45[2].__shared_owners_ = v43;
  v62 = 0;
  object = 0;
  v45[2].__shared_weak_owners_ = v44;
  cf = 0;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 1174405120;
  *&buf[16] = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver25setFCMBCMAntennaMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v79 = &__block_descriptor_tmp_99;
  v80 = v45 + 1;
  v81 = v45;
  atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v74 = 0x40000000;
  v75 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  v76 = &unk_29EE5BB60;
  v77 = buf;
  v47 = _Block_copy(&aBlock);
  v48 = v81;
  if (!v81 || atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  (v48->__on_zero_shared)(v48);
  std::__shared_weak_count::__release_weak(v48);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_49:
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

LABEL_50:
  *&v49 = 0xAAAAAAAAAAAAAAAALL;
  *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65[0] = v49;
  v65[1] = v49;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v50 = *(v41 + 16);
  *buf = *(v41 + 8);
  if (!v50)
  {
    *&buf[8] = 0;
LABEL_75:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&buf[8] = std::__shared_weak_count::lock(v50);
  if (!*&buf[8])
  {
    goto LABEL_75;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v51 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  aBlock = v47;
  ice::SendMsgBaseProxy::callback();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](v65);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v62)
  {
    _Block_release(v62);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  std::__shared_weak_count::__release_weak(v39);
  if (v68)
  {
    CFRelease(v68);
  }

  MEMORY[0x29C265530](v69);
  result = MEMORY[0x29C263AC0](v72);
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DCFC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::ARICommandDriver::setRC1Duration_sync(void *a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v49 = *MEMORY[0x29EDCA608];
  v8 = a1[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v34 = *a2;
    *buf = 67109378;
    *&buf[4] = a3;
    *&buf[8] = 2112;
    *&buf[10] = v34;
    _os_log_debug_impl(&dword_296D7D000, v8, OS_LOG_TYPE_DEBUG, "#D Setting RC1 duration for sim[%d]: %@", buf, 0x12u);
  }

  v37[0] = 0xAAAAAAAAAAAAAAAALL;
  v37[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v37, *a2);
  Int = ctu::cf::map_adapter::getInt(v37, *MEMORY[0x29EDC86E8]);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v10;
  v48 = v10;
  *&buf[16] = v10;
  v46 = v10;
  *buf = v10;
  AriSdk::ARI_CsiIdcSetRadio1Req_SDK::ARI_CsiIdcSetRadio1Req_SDK(buf);
  v11 = operator new(4uLL);
  *v11 = a3;
  v12 = v48;
  *&v48 = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(4uLL);
  *v13 = Int;
  v14 = *(&v48 + 1);
  *(&v48 + 1) = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = a1[2];
  if (!v15 || (v16 = a1[1], (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  p_shared_weak_owners = &v17->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = a1[17];
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v21 = *a4;
    if (*a4)
    {
      goto LABEL_11;
    }

LABEL_19:
    v22 = 0;
    v23 = *(a4 + 8);
    if (!v23)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v18);
  v20 = a1[17];
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v21 = *a4;
  if (!*a4)
  {
    goto LABEL_19;
  }

LABEL_11:
  v22 = _Block_copy(v21);
  v23 = *(a4 + 8);
  if (v23)
  {
LABEL_12:
    dispatch_retain(v23);
  }

LABEL_13:
  v24 = operator new(0x38uLL);
  v24->__shared_owners_ = 0;
  p_shared_owners = &v24->__shared_owners_;
  v24->__shared_weak_owners_ = 0;
  v24->__vftable = &unk_2A1E0DAD0;
  v24[1].__vftable = v16;
  v24[1].__shared_owners_ = v18;
  v24[1].__shared_weak_owners_ = v22;
  v24[2].__vftable = v23;
  v38 = MEMORY[0x29EDCA5F8];
  v39 = 1174405120;
  v40 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver19setRC1Duration_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v41 = &__block_descriptor_tmp_114;
  v42 = v24 + 1;
  v43 = v24;
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v38;
  v26 = _Block_copy(aBlock);
  v27 = v43;
  if (!v43 || atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_16;
    }

LABEL_22:
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    if (v48)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v48)
  {
    goto LABEL_24;
  }

LABEL_23:
  v28 = operator new(4uLL);
  *v28 = 0;
  *&v48 = v28;
LABEL_24:
  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = v29;
  v35[1] = v29;
  v30 = *(v20 + 16);
  v38 = *(v20 + 8);
  if (!v30)
  {
    v39 = 0;
LABEL_34:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v39 = std::__shared_weak_count::lock(v30);
  if (!v39)
  {
    goto LABEL_34;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v31 = v39;
  if (v39 && !atomic_fetch_add((v39 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  aBlock[0] = v26;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v35);
  std::__shared_weak_count::__release_weak(v18);
  MEMORY[0x29C2642F0](buf);
  result = MEMORY[0x29C263AC0](v37);
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DD0214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex16ARICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_16(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 40))
  {
    if (*(v1 + 48))
    {
      v2 = 0;
      v3 = 0;
      coex::CommandDriver::Callback::operator()(v1 + 40, &v3, &v2);
    }
  }
}

void coex::ARICommandDriver::getScanFreqBandFilter_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[3] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(cf[0]) = 136315138;
    *(cf + 4) = "getScanFreqBandFilter_sync";
    _os_log_debug_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", cf, 0xCu);
  }

  cf[0] = 0xAAAAAAAAAAAAAAAALL;
  v11 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  v5 = cf[0];
  v9 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a3, &v9, &v8);
    CFRelease(v5);
    v6 = cf[0];
    if (!cf[0])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  coex::CommandDriver::Callback::operator()(a3, &v9, &v8);
  v6 = cf[0];
  if (cf[0])
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296DD04A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::ARICommandDriver::pollWWANState_sync(void *a1, int a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_debug_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEBUG, "#D Polling WWAN state for sim[%d]", buf, 8u);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v5;
  v36 = v5;
  *buf = v5;
  v34 = v5;
  AriSdk::ARI_CsiIdcGetCellConfigReq_SDK::ARI_CsiIdcGetCellConfigReq_SDK(buf);
  v6 = operator new(4uLL);
  *v6 = a2;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

  v13 = a1[17];
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v14 = operator new(0x30uLL);
  v14->__shared_owners_ = 0;
  p_shared_owners = &v14->__shared_owners_;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v9;
  v14->__vftable = &unk_2A1E0D5D0;
  v14[1].__shared_owners_ = v11;
  v14[1].__shared_weak_owners_ = a1;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver18pollWWANState_syncENS2_5SubIdEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_62_1;
  v30 = v14 + 1;
  v31 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v26;
  v16 = _Block_copy(aBlock);
  v17 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

LABEL_15:
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (__p)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

LABEL_12:
  if (__p)
  {
    goto LABEL_17;
  }

LABEL_16:
  v18 = operator new(4uLL);
  *v18 = 0;
  __p = v18;
LABEL_17:
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v19;
  v24[1] = v19;
  v20 = *(v13 + 16);
  v26 = *(v13 + 8);
  if (!v20)
  {
    v27 = 0;
LABEL_27:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v20);
  if (!v27)
  {
    goto LABEL_27;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v21 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  aBlock[0] = v16;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v24);
  std::__shared_weak_count::__release_weak(v11);
  result = MEMORY[0x29C264AC0](buf);
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DD08A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void coex::ARICommandDriver::pollWLANScanState_sync(coex::ARICommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "pollWLANScanState_sync";
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void coex::ARICommandDriver::pollWLANConnState_sync(coex::ARICommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "pollWLANConnState_sync";
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void coex::ARICommandDriver::pollPolicy_sync(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_debug_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEBUG, "#D Polling Policy for sim[%d]", buf, 8u);
  }

  *buf = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    *buf = Mutable;
  }

  v14 = 0;
  v8 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = v8;
  if (v8)
  {
    v14 = v8;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v7, *MEMORY[0x29EDC86B8], v8);
  if (v7 && (v10 = CFGetTypeID(v7), v10 == CFDictionaryGetTypeID()))
  {
    v13 = v7;
    CFRetain(v7);
    v11 = v7;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  coex::ARICommandDriver::sendStateUpdate_sync(a1, &v13, a2);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
    v7 = *buf;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_296DD0C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::ARICommandDriver::pollLinkQuality_sync(void *a1, int a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_debug_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEBUG, "#D Polling Link quality for sim[%d]", buf, 8u);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v5;
  v36 = v5;
  *buf = v5;
  v34 = v5;
  AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK::ARI_CsiIdcRTGetLinkQualityReportReq_SDK(buf);
  v6 = operator new(4uLL);
  *v6 = a2;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

  v13 = a1[17];
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v14 = operator new(0x30uLL);
  v14->__shared_owners_ = 0;
  p_shared_owners = &v14->__shared_owners_;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v9;
  v14->__vftable = &unk_2A1E0D650;
  v14[1].__shared_owners_ = v11;
  v14[1].__shared_weak_owners_ = a1;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver20pollLinkQuality_syncENS2_5SubIdEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_67_0;
  v30 = v14 + 1;
  v31 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v26;
  v16 = _Block_copy(aBlock);
  v17 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

LABEL_15:
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (__p)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

LABEL_12:
  if (__p)
  {
    goto LABEL_17;
  }

LABEL_16:
  v18 = operator new(4uLL);
  *v18 = 0;
  __p = v18;
LABEL_17:
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v19;
  v24[1] = v19;
  v20 = *(v13 + 16);
  v26 = *(v13 + 8);
  if (!v20)
  {
    v27 = 0;
LABEL_27:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v20);
  if (!v27)
  {
    goto LABEL_27;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v21 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  aBlock[0] = v16;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v24);
  std::__shared_weak_count::__release_weak(v11);
  result = MEMORY[0x29C2655B0](buf);
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DD10A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void coex::ARICommandDriver::updateIndications_sync(coex::ARICommandDriver *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex16ARICommandDriver22updateIndications_syncEN8dispatch5groupE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_18_2;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v4 = _Block_copy(aBlock);
  v5 = *(this + 3);
  if (v5)
  {
    dispatch_retain(*(this + 3));
  }

  if (v4)
  {
    v6 = _Block_copy(v4);
    v12 = v6;
    v13 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = 0;
  v12 = 0;
  v13 = v5;
  if (v5)
  {
LABEL_9:
    dispatch_retain(v5);
    dispatch_release(v5);
  }

LABEL_10:
  if (v4)
  {
    _Block_release(v4);
  }

  if (v6)
  {
    v7 = _Block_copy(v6);
    v8 = v7;
    v9 = v5;
    if (!v5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5;
  if (v5)
  {
LABEL_14:
    dispatch_retain(v5);
  }

LABEL_15:
  coex::ARICommandDriver::setIndications_sync(this, &v8);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }
}

void sub_296DD1348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, char a17)
{
  coex::CommandDriver::Callback::~Callback(&a10);
  coex::CommandDriver::Callback::~Callback(&a17);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v17)
  {
    dispatch_group_leave(v17);
    dispatch_release(v17);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
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

void coex::ARICommandDriver::registerWWANStateIndication_sync(coex::ARICommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Request to register for WWAN state indication", v8, 2u);
  }

  v3 = *(this + 17);
  v4 = operator new(0x20uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_2A1E0D550;
  v4[1].__vftable = this;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver32registerWWANStateIndication_syncEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v8[3] = &__block_descriptor_tmp_57_1;
  v8[4] = &v4[1];
  v9 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = v8;
  v6 = _Block_copy(aBlock);
  v7 = v9;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_6:
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

LABEL_7:
  v8[0] = v6;
  ice::Client::regIndicationInternal();
  if (v8[0])
  {
    _Block_release(v8[0]);
  }
}

void sub_296DD1650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void *coex::ARICommandDriver::setIndications_sync(coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
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

void coex::ARICommandDriver::sendStateUpdate_sync(uint64_t a1, const void **a2, int a3)
{
  v79 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_62;
  }

  v7 = *(a1 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) || (*buf = 67109378, *&buf[4] = a3, *&buf[8] = 2112, *&buf[10] = v3, _os_log_impl(&dword_296D7D000, v7, OS_LOG_TYPE_DEFAULT, "#I Update for SubId=%d -> %@", buf, 0x12u), (v3 = *a2) != 0))
  {
    CFRetain(v3);
    v8 = *(a1 + 96);
    v42 = v3;
    CFRetain(v3);
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 96);
    v42 = 0;
    v9 = 1;
  }

  v51 = a3;
  v49 = 0;
  v50 = 0;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v10;
  v65 = v10;
  v62 = v10;
  v63 = v10;
  v60 = v10;
  v61 = v10;
  v58 = v10;
  v59 = v10;
  *buf = v10;
  *&buf[16] = v10;
  v11 = *(v8 + 24);
  __p[0] = 10;
  __p[1] = buf;
  v67[0] = 0;
  v67[1] = v11;
  pthread_mutex_lock(v11);
  v12 = *(v8 + 8);
  if (!v12)
  {
    v14 = *v8;
    goto LABEL_18;
  }

  explicit = atomic_load_explicit(v12 + 2, memory_order_acquire);
  v14 = *v8;
  if (explicit == 1)
  {
    v15 = *v14;
    v16 = *(v8 + 16);
    if (v16 == *v14)
    {
      v16 = *(v15 + 8);
      *&v52 = v16;
      if (v15 == v16)
      {
LABEL_15:
        *(v8 + 16) = v16;
        goto LABEL_16;
      }
    }

    else
    {
      *&v52 = *(v8 + 16);
    }

    v17 = v16[2];
    if (*(v17 + 24))
    {
      v16 = v16[1];
    }

    else
    {
      v16 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v15, (v17 + 64), &v52);
      v14 = *v8;
    }

    goto LABEL_15;
  }

LABEL_16:
  v12 = *(v8 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
  }

LABEL_18:
  v18 = v50;
  v49 = v14;
  v50 = v12;
  if (v18)
  {
    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18);
      if (atomic_fetch_add(v18 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v18 + 24))(v18);
      }
    }
  }

  pthread_mutex_unlock(v67[1]);
  v19 = __p[1];
  if (__p[1])
  {
    if (v67[0] > 0)
    {
      v40 = __p[1] + 16 * v67[0];
      do
      {
        v41 = *(v40 - 1);
        if (v41)
        {
          if (atomic_fetch_add(v41 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v41 + 16))(v41);
            if (atomic_fetch_add(v41 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v41 + 24))(v41);
            }
          }
        }

        v40 -= 16;
      }

      while (v40 > v19);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v20;
  v70 = v20;
  *v67 = v20;
  v68 = v20;
  v65 = v20;
  *__p = v20;
  v63 = v20;
  v64 = v20;
  v61 = v20;
  v62 = v20;
  v59 = v20;
  v60 = v20;
  *&buf[16] = v20;
  v58 = v20;
  *buf = v20;
  buf[0] = 0;
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v72 = 10;
  v73 = &buf[8];
  v74 = 0;
  v75 = &v42;
  v76 = &v51;
  v77 = 0;
  v78 = 0;
  v21 = v49;
  v22 = *v49;
  v46 = buf;
  v47 = v8;
  v48 = v22;
  *&v44 = *(v22 + 8);
  *(&v44 + 1) = v22;
  *&v45 = buf;
  *(&v45 + 1) = v22;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v44);
  v43[0] = *v21;
  v43[1] = v43[0];
  v43[2] = buf;
  v43[3] = v43[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(v43);
  v52 = v44;
  v53 = v45;
  v23 = v43[0];
  v24 = v44;
  if (v44 == v43[0])
  {
    if (HIDWORD(v77) <= v77)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v25 = v53;
    if ((*v53 & 1) == 0)
    {
      v26 = *(*(v44 + 16) + 32);
      v27 = **(v53 + 272);
      v54 = v27;
      if (v27)
      {
        CFRetain(v27);
      }

      v28 = *(v26 + 24);
      if (!v28)
      {
        std::runtime_error::runtime_error(&v56, "call to empty boost::function");
        v56.__vftable = &unk_2A1E0C118;
        boost::throw_exception<boost::bad_function_call>(&v56);
      }

      v29 = **(v25 + 280);
      v30 = *((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
      v54 = 0;
      cf = v27;
      v30(v26 + 32, &cf, v29);
      if (cf)
      {
        CFRelease(cf);
      }

      if ((*v25 & 1) == 0)
      {
        *v25 = 1;
      }
    }

    *&v52 = *(v24 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v52);
    v31 = v53;
    if (*v53 == 1)
    {
      *v53 = 0;
    }

    for (i = v52; v52 != v23; i = v52)
    {
      v33 = *(*(i + 16) + 32);
      v34 = **(v31 + 272);
      v54 = v34;
      if (v34)
      {
        CFRetain(v34);
      }

      v35 = *(v33 + 24);
      if (!v35)
      {
        std::runtime_error::runtime_error(&v56, "call to empty boost::function");
        v56.__vftable = &unk_2A1E0C118;
        boost::throw_exception<boost::bad_function_call>(&v56);
      }

      v36 = **(v31 + 280);
      v37 = *((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
      v54 = 0;
      cf = v34;
      v37(v33 + 32, &cf, v36);
      if (cf)
      {
        CFRelease(cf);
      }

      if ((*v31 & 1) == 0)
      {
        *v31 = 1;
      }

      *&v52 = *(i + 8);
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v52);
      v31 = v53;
      if (*v53 == 1)
      {
        *v53 = 0;
      }
    }

    if (*(v46 + 73) <= *(v46 + 72))
    {
      goto LABEL_54;
    }
  }

  boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(v47, v48);
LABEL_54:
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(buf);
  v38 = v50;
  if (v50)
  {
    if (atomic_fetch_add(v50 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v38 + 16))(v38);
      if (atomic_fetch_add(v38 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v38 + 24))(v38);
      }
    }
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if ((v9 & 1) == 0)
  {
    CFRelease(v3);
  }

LABEL_62:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_296DD1DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, __int16 a30, char a31, char a32, std::runtime_error a33)
{
  std::runtime_error::~runtime_error(&a33);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a29);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v37);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(&v39);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v38);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v36);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v35);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a25 + 16));
  __cxa_rethrow();
}

void sub_296DD1E40(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v6);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(&v8);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v7);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v5);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v4);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DD1E10);
}

void sub_296DD1EA0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296DD1EDCLL);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
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

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(const void **a1)
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

void *coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
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

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t coex::ARICommandDriver::setGPSState_sync(void *a1, int a2, const void **a3)
{
  v40 = *MEMORY[0x29EDCA608];
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_296D7D000, v6, OS_LOG_TYPE_DEFAULT, "#I GPS Active: %d", buf, 8u);
  }

  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v7;
  v38 = v7;
  *buf = v7;
  v36 = v7;
  AriSdk::ARI_CsiIceGpsStateReq_SDK::ARI_CsiIceGpsStateReq_SDK(buf);
  v8 = operator new(4uLL);
  *v8 = a2;
  v9 = v39;
  v39 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[2];
  if (!v10 || (v11 = a1[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  p_shared_weak_owners = &v12->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = a1[17];
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v16 = *a3;
  if (v16)
  {
    CFRetain(v16);
  }

  v17 = operator new(0x38uLL);
  v17->__shared_owners_ = 0;
  p_shared_owners = &v17->__shared_owners_;
  v17->__shared_weak_owners_ = 0;
  v17->__vftable = &unk_2A1E0D7D0;
  v17[1].__vftable = v11;
  v17[1].__shared_owners_ = v13;
  v17[1].__shared_weak_owners_ = a1;
  v17[2].__vftable = v16;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 1174405120;
  v30 = ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver16setGPSState_syncEbN3ctu2cf11CFSharedRefIK14__CFDictionaryEEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v31 = &__block_descriptor_tmp_80_0;
  v32 = v17 + 1;
  v33 = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_6;
  aBlock[3] = &unk_29EE5BB60;
  aBlock[4] = &v28;
  v19 = _Block_copy(aBlock);
  v20 = v33;
  if (!v33 || atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_14:
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_15:
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = v21;
  v26[1] = v21;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v22 = *(v15 + 16);
  v28 = *(v15 + 8);
  if (!v22)
  {
    v29 = 0;
LABEL_27:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = std::__shared_weak_count::lock(v22);
  if (!v29)
  {
    goto LABEL_27;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v23 = v29;
  if (v29 && !atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
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

  MEMORY[0x29C263BF0](v26);
  std::__shared_weak_count::__release_weak(v13);
  result = MEMORY[0x29C264200](buf);
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DD23C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t coex::ARICommandDriver::setGPSState_sync(BOOL,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *coex::ARICommandDriver::setWiFiStatus_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
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

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void *coex::ARICommandDriver::setLAAConfig_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
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

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void *coex::ARICommandDriver::setFCMBCMAntennaMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
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

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void *coex::ARICommandDriver::setLinkQualityMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
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

void coex::ARICommandDriver::convertScanFrequencies_sync(uint64_t a1@<X0>, CFArrayRef *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a3;
  v20 = *MEMORY[0x29EDCA608];
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  Count = CFArrayGetCount(*a2);
  v7 = Count;
  if (Count < 0x11)
  {
    if (!Count)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      v7 = 16;
      *&buf[14] = 16;
      _os_log_error_impl(&dword_296D7D000, v8, OS_LOG_TYPE_ERROR, "Source bands is too big for ScanFreqConfig struct (%zu) vs max (%zu).  Truncating...", buf, 0x16u);
    }

    else
    {
      v7 = 16;
    }
  }

  v9 = 0;
  v10 = *MEMORY[0x29EDC8778];
  v11 = *MEMORY[0x29EDC8658];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a2, v9);
    v13 = ValueAtIndex;
    if (ValueAtIndex && (v14 = CFGetTypeID(ValueAtIndex), v14 == CFDictionaryGetTypeID()))
    {
      CFRetain(v13);
      CFRetain(v13);
      memset(buf, 170, 16);
      ctu::cf::dict_adapter::dict_adapter(buf, v13);
      Int = ctu::cf::map_adapter::getInt(buf, v10);
      v16 = ctu::cf::map_adapter::getInt(buf, v11);
      MEMORY[0x29C263AC0](buf);
      v17 = 1;
    }

    else
    {
      v13 = 0;
      v16 = 0;
      Int = 0;
      v17 = 0;
    }

    *v5 = v17 | (Int << 16);
    *(v5 + 2) = ((v16 << 32) | (v17 << 40)) >> 32;
    if (v13)
    {
      CFRelease(v13);
      CFRelease(v13);
    }

    ++v9;
    v5 = (v5 + 6);
  }

  while (v7 != v9);
LABEL_13:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_296DD2830(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *coex::ARICommandDriver::setScanFreqBandFilter_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
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

void *coex::ARICommandDriver::setRC1Duration_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0::~$_0(void *a1)
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

void *boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E0D248;
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
  *result = &unk_2A1E0D2B8;
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
  *a1 = &unk_2A1E0D248;
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
  *a1 = &unk_2A1E0D2B8;
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

atomic_ullong *std::shared_ptr<coex::ARICommandDriver>::shared_ptr[abi:ne200100]<coex::ARICommandDriver,std::shared_ptr<coex::ARICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::ARICommandDriver>(coex::ARICommandDriver*)::{lambda(coex::ARICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0D358;
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

void sub_296DD2DE0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<coex::ARICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::ARICommandDriver>(coex::ARICommandDriver*)::{lambda(coex::ARICommandDriver*)#1}::operator() const(coex::ARICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<coex::ARICommandDriver *,std::shared_ptr<coex::ARICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::ARICommandDriver>(coex::ARICommandDriver*)::{lambda(coex::ARICommandDriver *)#1},std::allocator<coex::ARICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<coex::ARICommandDriver *,std::shared_ptr<coex::ARICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::ARICommandDriver>(coex::ARICommandDriver*)::{lambda(coex::ARICommandDriver *)#1},std::allocator<coex::ARICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4coex13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<coex::ARICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::ARICommandDriver>(coex::ARICommandDriver*)::{lambda(coex::ARICommandDriver*)#1}::operator() const(coex::ARICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
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

void sub_296DD3864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296DD3878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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
      *v52 = &unk_2A1E0D408;
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
      *v54 = &unk_2A1E0D3A8;
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

void sub_296DD4010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
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
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void sub_296DD4A00(_Unwind_Exception *exception_object, int a2)
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

void ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4coex13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E0D460;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4coex13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4coex13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver19setIndications_syncENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v2[4];
      v6 = std::__shared_weak_count::lock(v3);
      v24 = v6;
      if (v6)
      {
        v7 = v6;
        if (!*v2)
        {
LABEL_28:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          return;
        }

        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[3] = v8;
        v22 = v8;
        v21[1] = v8;
        v21[2] = v8;
        v21[0] = v8;
        AriSdk::ARI_CsiIdcControlEventRspCb_SDK::ARI_CsiIdcControlEventRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p = operator new(0x19uLL);
        v19 = xmmword_296E1FAA0;
        strcpy(__p, "enable coex indications");
        coex::checkError(&cf, v21, 1224998912, &__p);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p);
        }

        v17 = 0;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v10 = Mutable;
        if (Mutable)
        {
          v17 = Mutable;
        }

        v11 = cf;
        if (cf)
        {
          v16 = cf;
          goto LABEL_23;
        }

        if (AriSdk::ARI_CsiIdcControlEventRspCb_SDK::unpack(v21))
        {
          v12 = *(v4 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p) = 0;
            _os_log_error_impl(&dword_296D7D000, v12, OS_LOG_TYPE_ERROR, "Failed to enable coex indications", &__p, 2u);
          }

          __p = operator new(0x38uLL);
          v19 = xmmword_296E22D20;
          strcpy(__p, "Failed to enable coex indications (unpack error)");
          CreateError();
          v13 = cf;
          cf = v16;
          v16 = 0;
          if (!v13)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v14 = *(v4 + 40);
          if (!**(&v22 + 1))
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(__p) = 0;
              _os_log_impl(&dword_296D7D000, v14, OS_LOG_TYPE_DEFAULT, "#I Successfully enabled coex indications", &__p, 2u);
            }

LABEL_22:
            v11 = cf;
            v16 = cf;
            if (!cf)
            {
              v15 = 0;
              coex::CommandDriver::Callback::operator()((v2 + 2), &v16, &v15);
              if (!v10)
              {
                goto LABEL_25;
              }

              goto LABEL_24;
            }

LABEL_23:
            CFRetain(v11);
            v15 = 0;
            coex::CommandDriver::Callback::operator()((v2 + 2), &v16, &v15);
            CFRelease(v11);
            if (!v10)
            {
LABEL_25:
              if (cf)
              {
                CFRelease(cf);
              }

              MEMORY[0x29C264D40](v21);
              goto LABEL_28;
            }

LABEL_24:
            CFRelease(v10);
            goto LABEL_25;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p) = 0;
            _os_log_error_impl(&dword_296D7D000, v14, OS_LOG_TYPE_ERROR, "Failed to enable coex indications", &__p, 2u);
          }

          __p = operator new(0x38uLL);
          v19 = xmmword_296E22D20;
          strcpy(__p, "Failed to enable coex indications (result error)");
          CreateError();
          v13 = cf;
          cf = v16;
          v16 = 0;
          if (!v13)
          {
LABEL_20:
            if (SHIBYTE(v19) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_22;
          }
        }

        CFRelease(v13);
        goto LABEL_20;
      }
    }
  }
}

void sub_296DD509C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, __int16 a20, char a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a19);
  MEMORY[0x29C264D40](&a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v22 - 64);
  _Unwind_Resume(a1);
}

void sub_296DD5108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C264D40](&a20);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 64);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C264D40](&a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 64);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver19setIndications_syncENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver19setIndications_syncENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setIndications_sync(coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setIndications_sync(coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D4D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setIndications_sync(coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setIndications_sync(coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
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

unint64_t coex::checkError(CFTypeRef *a1, AriSdk::MsgBase *this, int a3, uint64_t a4)
{
  *a1 = 0;
  result = AriSdk::MsgBase::getGMID(this);
  v8 = (result >> 17) & 0xFFFF8000 | (result << 26);
  if (v8 != 67600384 && v8 == a3)
  {
    return result;
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[7] = v10;
  v31[8] = v10;
  v31[5] = v10;
  v31[6] = v10;
  v31[3] = v10;
  v31[4] = v10;
  v31[1] = v10;
  v31[2] = v10;
  v30 = v10;
  v31[0] = v10;
  *v28 = v10;
  v29 = v10;
  v26 = v10;
  v27 = v10;
  v24 = v10;
  v25 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Failed to ", 10);
  v12 = *(a4 + 23);
  if (v12 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  if (v12 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  if ((BYTE8(v30) & 0x10) != 0)
  {
    v17 = v30;
    if (v30 < *(&v27 + 1))
    {
      *&v30 = *(&v27 + 1);
      v17 = *(&v27 + 1);
    }

    v18 = v27;
    v15 = v17 - v27;
    if ((v17 - v27) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if ((BYTE8(v30) & 8) == 0)
    {
      v15 = 0;
      HIBYTE(v22) = 0;
      v16 = __p;
      goto LABEL_25;
    }

    v18 = *(&v25 + 1);
    v15 = *(&v26 + 1) - *(&v25 + 1);
    if (*(&v26 + 1) - *(&v25 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_37:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v15 | 7) + 1;
    }

    v16 = operator new(v19);
    __p[1] = v15;
    v22 = v19 | 0x8000000000000000;
    __p[0] = v16;
    goto LABEL_24;
  }

  HIBYTE(v22) = v15;
  v16 = __p;
  if (v15)
  {
LABEL_24:
    memmove(v16, v18, v15);
  }

LABEL_25:
  *(v16 + v15) = 0;
  CreateError();
  if (&cf == a1)
  {
    goto LABEL_28;
  }

  v20 = *a1;
  *a1 = cf;
  cf = 0;
  if (v20)
  {
    CFRelease(v20);
LABEL_28:
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  *&v24 = *MEMORY[0x29EDC9538];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v24 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  *(&v24 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return MEMORY[0x29C265F10](v31);
}

void sub_296DD55D4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C265F10](va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(v22);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void ctu::cf::insert<__CFString const*,__CFDictionary *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296DD57E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296DD5808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver32registerWWANStateIndication_syncEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    return result;
  }

  v3 = *v2;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v4;
  v23 = v4;
  v21[2] = v4;
  v21[3] = v4;
  v21[0] = v4;
  v21[1] = v4;
  AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK::ARI_CsiIdcCellConfigEventIndCb_SDK(v21, a2);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x20uLL);
  v19 = xmmword_296E22D30;
  strcpy(__p, "get right WWAN state indication");
  coex::checkError(&cf, v21, 1233158144, &__p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  v17 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    v17 = Mutable;
  }

  v8 = cf;
  if (!cf)
  {
    if (AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK::unpack(v21))
    {
      __p = operator new(0x30uLL);
      v19 = xmmword_296E1FA90;
      strcpy(__p, "Invalid WWAN state indication (unpack error)");
      CreateError();
      v10 = cf;
      cf = v16;
      v16 = 0;
      if (v10)
      {
LABEL_10:
        CFRelease(v10);
      }
    }

    else
    {
      if (!**(&v22 + 1))
      {
        v14 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v11 = v14;
        if (v14)
        {
          v17 = v14;
          if (v7)
          {
            CFRelease(v7);
          }
        }

        else
        {
          v11 = v7;
        }

        v9 = *v22;
        coex::fetch_cell_config_info(&__p, v23, *(&v23 + 1));
        v15 = __p;
        ctu::cf::insert<__CFString const*,__CFDictionary const*>(v11, *MEMORY[0x29EDC8790], __p);
        if (v15)
        {
          CFRelease(v15);
        }

LABEL_16:
        v8 = cf;
        v7 = v11;
        if (!cf)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      __p = operator new(0x30uLL);
      v19 = xmmword_296E1FA90;
      strcpy(__p, "Invalid WWAN state indication (result error)");
      CreateError();
      v10 = cf;
      cf = v16;
      v16 = 0;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    v9 = 0;
    v11 = v7;
    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:
  ctu::cf::insert<__CFString const*,__CFError *>(v7, *MEMORY[0x29EDC8670], v8);
  v11 = v17;
LABEL_18:
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    if (v12 == CFDictionaryGetTypeID())
    {
      v16 = v11;
      CFRetain(v11);
      v13 = v11;
    }

    else
    {
      v13 = 0;
      v16 = 0;
    }

    coex::ARICommandDriver::sendStateUpdate_sync(v3, &v16, v9);
    if (!v13 || (CFRelease(v13), (v11 = v17) != 0))
    {
      CFRelease(v11);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return MEMORY[0x29C265190](v21);
}

void sub_296DD5B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&__p);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C265190](&a18);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c92_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver32registerWWANStateIndication_syncEvE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c92_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver32registerWWANStateIndication_syncEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::registerWWANStateIndication_sync(void)::$_0,std::allocator<coex::ARICommandDriver::registerWWANStateIndication_sync(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void coex::fetch_cell_config_info(__CFDictionary **a1, const void *a2, _OWORD *a3)
{
  v49 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = Mutable;
  if (Mutable)
  {
    v49 = Mutable;
  }

  memcpy(__dst, a2, sizeof(__dst));
  v50 = 0;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = v9;
  if (v9)
  {
    v50 = v9;
  }

  coex::fetch_freq_and_bandwidth(v40);
  v11 = v40[0];
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v10, *MEMORY[0x29EDC87E0], v40[0]);
  if (v11)
  {
    CFRelease(v11);
  }

  coex::fetch_freq_and_bandwidth(v40);
  v12 = v40[0];
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v10, *MEMORY[0x29EDC87C8], v40[0]);
  if (v12)
  {
    CFRelease(v12);
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v8, *MEMORY[0x29EDC87E8], v10);
  if (v10)
  {
    CFRelease(v10);
  }

  v40[0] = 0;
  v13 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v14 = v13;
  if (v13)
  {
    v40[0] = v13;
  }

  ctu::cf::insert<__CFString const*,unsigned char>(v13, *MEMORY[0x29EDC86D0], LOBYTE(__dst[6]), v6);
  if (HIBYTE(__dst[3]) != 240)
  {
    ctu::cf::insert<__CFString const*,unsigned char>(v14, *MEMORY[0x29EDC8690], HIBYTE(__dst[3]), v6);
  }

  if (BYTE2(__dst[3]) != 240)
  {
    ctu::cf::insert<__CFString const*,unsigned char>(v14, *MEMORY[0x29EDC8770], BYTE2(__dst[3]), v6);
  }

  ctu::cf::insert<__CFString const*,unsigned int>(v14, *MEMORY[0x29EDC8650], __dst[4], v6);
  ctu::cf::insert<__CFString const*,unsigned int>(v14, *MEMORY[0x29EDC8640], __dst[5], v6);
  if (v14)
  {
    v15 = CFGetTypeID(v14);
    if (v15 == CFDictionaryGetTypeID())
    {
      v50 = v14;
      CFRetain(v14);
      v16 = v14;
    }

    else
    {
      v16 = 0;
      v50 = 0;
    }

    CFRelease(v14);
  }

  else
  {
    v16 = 0;
    v50 = 0;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v8, *MEMORY[0x29EDC87D0], v16);
  if (v50)
  {
    CFRelease(v50);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  coex::fetch_basic_cell_config_list(&cf, &__dst[7], &__dst[15], 4);
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v17 = cf;
  v45 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (__dst[0] || LOWORD(__dst[1]))
  {
    v40[0] = 0;
    v18 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v19 = v18;
    if (v18)
    {
      v40[0] = v18;
    }

    ctu::cf::insert<__CFString const*,unsigned int>(v18, *MEMORY[0x29EDC8778], __dst[0], v6);
    ctu::cf::insert<__CFString const*,int>(v19, *MEMORY[0x29EDC8658], 1000 * LOWORD(__dst[1]), v6);
    ctu::cf::insert<__CFString const*,unsigned int>(v19, *MEMORY[0x29EDC8720], 1u, v6);
    if (!v17)
    {
      v20 = CFArrayCreateMutable(v6, 0, MEMORY[0x29EDB9000]);
      v17 = v20;
      if (v20)
      {
        v45 = v20;
      }
    }

    CFArrayAppendValue(v17, v19);
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (!__dst[2] && !LOWORD(__dst[3]))
  {
    v45 = 0;
    v46 = v17;
    if (!v17)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v40[0] = 0;
  v21 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v22 = v21;
  if (v21)
  {
    v40[0] = v21;
  }

  ctu::cf::insert<__CFString const*,unsigned int>(v21, *MEMORY[0x29EDC8778], __dst[2], v6);
  ctu::cf::insert<__CFString const*,int>(v22, *MEMORY[0x29EDC8658], 1000 * LOWORD(__dst[3]), v6);
  ctu::cf::insert<__CFString const*,unsigned int>(v22, *MEMORY[0x29EDC8720], 2u, v6);
  if (!v17)
  {
    v23 = CFArrayCreateMutable(v6, 0, MEMORY[0x29EDB9000]);
    v17 = v23;
    if (v23)
    {
      v45 = v23;
    }
  }

  CFArrayAppendValue(v17, v22);
  if (v22)
  {
    CFRelease(v22);
  }

  v17 = v45;
  v45 = 0;
  v46 = v17;
  if (v17)
  {
LABEL_48:
    if (CFArrayGetCount(v17))
    {
      ctu::cf::insert<__CFString const*,__CFArray *>(v49, *MEMORY[0x29EDC88D0], v46);
    }
  }

LABEL_50:
  coex::fetch_basic_cell_config_list(v40, &__dst[23], &__dst[29], 3);
  v24 = v40[0];
  if (v40[0])
  {
    v25 = CFGetTypeID(v40[0]);
    if (v25 == CFArrayGetTypeID())
    {
      v44 = v24;
      CFRetain(v24);
      v26 = v40[0];
      if (!v40[0])
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  v24 = 0;
  v44 = 0;
  v26 = v40[0];
  if (v40[0])
  {
LABEL_55:
    CFRelease(v26);
  }

LABEL_56:
  if (v24 && CFArrayGetCount(v24))
  {
    ctu::cf::insert<__CFString const*,__CFArray const*>(v49, *MEMORY[0x29EDC8968], v24);
  }

  coex::fetch_basic_cell_config_list(v40, &__dst[37], &__dst[35], 1);
  v27 = v40[0];
  if (v40[0])
  {
    v28 = CFGetTypeID(v40[0]);
    if (v28 == CFArrayGetTypeID())
    {
      v43 = v27;
      CFRetain(v27);
      v29 = v40[0];
      if (!v40[0])
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  v27 = 0;
  v43 = 0;
  v29 = v40[0];
  if (v40[0])
  {
LABEL_64:
    CFRelease(v29);
  }

LABEL_65:
  if (v27 && CFArrayGetCount(v27))
  {
    ctu::cf::insert<__CFString const*,__CFArray const*>(v49, *MEMORY[0x29EDC89D8], v27);
  }

  v42 = 0xAAAAAAAAAAAAAAAALL;
  v40[0] = 0;
  v30 = CFArrayCreateMutable(v6, 0, MEMORY[0x29EDB9000]);
  v31 = v30;
  if (v30)
  {
    v40[0] = v30;
  }

  for (i = 0; i != 64; ++i)
  {
    v50 = 0xAAAAAAAAAAAAAAAALL;
    coex::fetch_gsm_cell_config(&v50, __dst[i + 104], 1u);
    v33 = v50;
    if (v50)
    {
      CFArrayAppendValue(v31, v50);
      CFRelease(v33);
    }

    v50 = 0xAAAAAAAAAAAAAAAALL;
    coex::fetch_gsm_cell_config(&v50, __dst[i + 40], 2u);
    v34 = v50;
    if (v50)
    {
      CFArrayAppendValue(v31, v50);
      CFRelease(v34);
    }
  }

  if (v31)
  {
    v35 = CFGetTypeID(v31);
    if (v35 == CFArrayGetTypeID())
    {
      v42 = v31;
      CFRetain(v31);
      v36 = v31;
    }

    else
    {
      v36 = 0;
      v42 = 0;
    }

    CFRelease(v31);
    if (v36 && CFArrayGetCount(v36))
    {
      ctu::cf::insert<__CFString const*,__CFArray const*>(v49, *MEMORY[0x29EDC88B0], v36);
    }
  }

  else
  {
    v36 = 0;
    v42 = 0;
  }

  if (a3)
  {
    v37 = a3[1];
    *v40 = *a3;
    v41 = v37;
    coex::fetch_basic_cell_config_list(&v50, v40, &v40[1], 1);
    v38 = v49;
    ctu::cf::insert<__CFString const*,__CFArray *>(v49, *MEMORY[0x29EDC8910], v50);
    if (v50)
    {
      CFRelease(v50);
    }

    coex::fetch_basic_cell_config_list(&v50, &v41, &v41 + 8, 1);
    ctu::cf::insert<__CFString const*,__CFArray *>(v38, *MEMORY[0x29EDC88C0], v50);
    if (v50)
    {
      CFRelease(v50);
    }

    if (!v38)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v38 = v49;
    if (!v49)
    {
      goto LABEL_96;
    }
  }

  v39 = CFGetTypeID(v38);
  if (v39 == CFDictionaryGetTypeID())
  {
    *a1 = v38;
    CFRetain(v38);
    if (v36)
    {
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_96:
  *a1 = 0;
  if (v36)
  {
LABEL_97:
    CFRelease(v36);
    v27 = v43;
    if (!v43)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_94:
  if (v27)
  {
LABEL_98:
    CFRelease(v27);
  }

LABEL_99:
  if (v44)
  {
    CFRelease(v44);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v49)
  {
    CFRelease(v49);
  }
}