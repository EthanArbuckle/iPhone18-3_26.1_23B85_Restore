void sub_296DBBD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void antenna::ARICommandDriver::perform(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v8 = *(a3 + 8);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = *(a3 + 8);
  if (v8)
  {
LABEL_4:
    dispatch_retain(v8);
  }

LABEL_5:
  v9 = a1[2];
  if (!v9 || (v10 = a1[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = v5;
  v14 = xpc_null_create();
  v13[1] = a1;
  v13[2] = v7;
  v13[3] = v8;
  v15 = a1[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v13;
  v16[1] = v10;
  v16[2] = v12;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>(antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,dispatch_queue_s::default_delete<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  xpc_release(v14);
}

void *dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

uint64_t antenna::ARICommandDriver::txPowerCappingEnable_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[2] = v6;
  v32[3] = v6;
  v32[0] = v6;
  v32[1] = v6;
  AriSdk::ARI_CsiIceSarEnableReq_SDK::ARI_CsiIceSarEnableReq_SDK(v32);
  v7 = *MEMORY[0x29EDC9050];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9050]))
  {
    value = xpc_dictionary_get_value(*a2, v7);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v9 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
  }

  else
  {
    v9 = 0;
  }

  v10 = operator new(4uLL);
  *v10 = v9;
  v11 = __p;
  __p = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *a3;
  if (*a3)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a3 + 8);
  aBlock = v12;
  v31 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v15 = a1->~__shared_weak_count_0, (v16 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  p_shared_weak_owners = &v16->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v17);
  }

  v19 = a1[3].~__shared_weak_count_0;
  v34 = a1;
  v35 = v15;
  v36 = v17;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v37 = -184221696;
  if (!aBlock)
  {
    v20 = 0;
    v21 = v31;
    v38 = 0;
    v39 = v31;
    if (!v31)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v20 = _Block_copy(aBlock);
  v21 = v31;
  v38 = v20;
  v39 = v31;
  if (v31)
  {
LABEL_19:
    dispatch_retain(v21);
  }

LABEL_20:
  v22 = operator new(0x48uLL);
  v22->__shared_owners_ = 0;
  p_shared_owners = &v22->__shared_owners_;
  v22->__shared_weak_owners_ = 0;
  v22->__vftable = &unk_2A1E0C830;
  v22[1].__vftable = a1;
  v22[1].__shared_owners_ = v15;
  v22[1].__shared_weak_owners_ = v17;
  v35 = 0;
  v36 = 0;
  LODWORD(v22[2].__vftable) = -184221696;
  v22[2].__shared_owners_ = v20;
  v22[2].__shared_weak_owners_ = v21;
  v38 = 0;
  v39 = 0;
  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 1174405120;
  *&v42 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceSarEnableRspCb_SDKENS5_26ARI_CsiIceSarEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v42 + 1) = &__block_descriptor_tmp_28_2;
  v43 = &v22[1];
  v44 = v22;
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  v45 = MEMORY[0x29EDCA5F8];
  v46 = 0x40000000;
  v47 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v48 = &unk_29EE5BAB0;
  v49 = object;
  v24 = _Block_copy(&v45);
  v25 = v44;
  if (!v44 || atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_23:
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_24:
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *object = v26;
  v42 = v26;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v27 = *(v19 + 2);
  v45 = *(v19 + 1);
  if (!v27)
  {
    v46 = 0;
LABEL_48:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v46 = std::__shared_weak_count::lock(v27);
  if (!v46)
  {
    goto LABEL_48;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v28 = v46;
  if (v46 && !atomic_fetch_add((v46 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v40 = v24;
  ice::SendMsgBaseProxy::callback();
  if (v40)
  {
    _Block_release(v40);
  }

  MEMORY[0x29C263BF0](object);
  if (v39)
  {
    dispatch_release(v39);
  }

  if (v38)
  {
    _Block_release(v38);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  std::__shared_weak_count::__release_weak(v17);
  if (v31)
  {
    dispatch_release(v31);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return MEMORY[0x29C2642D0](v32);
}

void sub_296DBC418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, xpc_object_t object)
{
  xpc_release(object);
  MEMORY[0x29C2642D0](&a11);
  _Unwind_Resume(a1);
}

void antenna::ARICommandDriver::transmitIndicationRegister_sync(std::__shared_weak_count_vtbl *a1, uint64_t a2)
{
  v4 = a1[3].~__shared_weak_count_0;
  v5 = operator new(0x20uLL);
  v5->__shared_owners_ = 0;
  p_shared_owners = &v5->__shared_owners_;
  v5->__shared_weak_owners_ = 0;
  v5->__vftable = &unk_2A1E0C8B0;
  v5[1].__vftable = a1;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 1174405120;
  v20 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v21 = &__block_descriptor_tmp_32_3;
  v22 = &v5[1];
  object = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v26 = 0x40000000;
  v27 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v28 = &unk_29EE5BAB0;
  v29 = &v18;
  v7 = _Block_copy(&aBlock);
  v8 = object;
  if (!object || atomic_fetch_add(object + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_4:
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_5:
  v18 = v7;
  ice::Client::regIndicationInternal();
  if (v18)
  {
    _Block_release(v18);
  }

  v9 = a1[3].~__shared_weak_count_0;
  v10 = operator new(0x20uLL);
  v10->__shared_owners_ = 0;
  v11 = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0C930;
  v10[1].__vftable = a1;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 1174405120;
  v20 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__1vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v21 = &__block_descriptor_tmp_34_0;
  v22 = &v10[1];
  object = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v26 = 0x40000000;
  v27 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v28 = &unk_29EE5BAB0;
  v29 = &v18;
  v12 = _Block_copy(&aBlock);
  v13 = object;
  if (!object || atomic_fetch_add(object + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_10:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_11:
  v18 = v12;
  ice::Client::regIndicationInternal();
  if (v18)
  {
    _Block_release(v18);
  }

  v14 = xpc_null_create();
  if (*a2)
  {
    v15 = _Block_copy(*a2);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a2 + 8);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 1174405120;
  v20 = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v21 = &__block_descriptor_tmp_36_0;
  if (v15)
  {
    v17 = _Block_copy(v15);
    v24 = 1;
    v22 = v17;
    object = v14;
    if (v14)
    {
LABEL_18:
      xpc_retain(v14);
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 1;
    v22 = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  object = xpc_null_create();
LABEL_21:
  dispatch_async(v16, &v18);
  xpc_release(object);
  object = 0;
  if (v22)
  {
    _Block_release(v22);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v14);
}

void sub_296DBC958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void antenna::ARICommandDriver::transmitIndicationEnable_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90A0]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = *MEMORY[0x29EDC90A8];
  v8 = strlen(*MEMORY[0x29EDC90A8]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v8 == SHIBYTE(__s1[2]) && !memcmp(__s1, v7, v8))
    {
      goto LABEL_60;
    }

LABEL_11:
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60 = v9;
    *__p = v9;
    v58 = v9;
    v59 = v9;
    *object = v9;
    AriSdk::ARI_IBICallPsTransmitStateReq_SDK::ARI_IBICallPsTransmitStateReq_SDK(object);
    v10 = *MEMORY[0x29EDC9088];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9088]))
    {
      v11 = xpc_dictionary_get_value(*a2, v10);
      *&v72 = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        *&v72 = xpc_null_create();
      }

      v12 = xpc::dyn_cast_or_default();
      xpc_release(v72);
    }

    else
    {
      v12 = 0;
    }

    v13 = operator new(4uLL);
    *v13 = v12;
    v14 = __p[1];
    __p[1] = v13;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = *a3;
    if (*a3)
    {
      v15 = _Block_copy(v15);
    }

    v16 = *(a3 + 8);
    aBlock = v15;
    v56 = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    on_zero_shared = a1->__on_zero_shared;
    if (!on_zero_shared || (v18 = a1->~__shared_weak_count_0, (v19 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v20 = v19;
    p_shared_weak_owners = &v19->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v20);
    }

    v22 = a1[3].~__shared_weak_count_0;
    v65 = a1;
    v66 = v18;
    v67 = v20;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v68 = 219709440;
    if (aBlock)
    {
      v23 = _Block_copy(aBlock);
      v24 = v56;
      v69 = v23;
      v70 = v56;
      if (!v56)
      {
LABEL_30:
        v25 = operator new(0x48uLL);
        v25->__shared_owners_ = 0;
        p_shared_owners = &v25->__shared_owners_;
        v25->__shared_weak_owners_ = 0;
        v25->__vftable = &unk_2A1E0CA60;
        v25[1].__vftable = a1;
        v25[1].__shared_owners_ = v18;
        v25[1].__shared_weak_owners_ = v20;
        v66 = 0;
        v67 = 0;
        LODWORD(v25[2].__vftable) = 219709440;
        v25[2].__shared_owners_ = v23;
        v25[2].__shared_weak_owners_ = v24;
        v69 = 0;
        v70 = 0;
        *&v72 = MEMORY[0x29EDCA5F8];
        *(&v72 + 1) = 1174405120;
        *&v73 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_IBICallPsTransmitStateRspCb_SDKENS5_33ARI_IBICallPsTransmitStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
        *(&v73 + 1) = &__block_descriptor_tmp_40_1;
        v74 = &v25[1];
        v75 = v25;
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v76 = MEMORY[0x29EDCA5F8];
        v77 = 0x40000000;
        v78 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
        v79 = &unk_29EE5BAB0;
        v80 = &v72;
        v27 = _Block_copy(&v76);
        v28 = v75;
        if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_33:
            if (__p[0])
            {
              goto LABEL_40;
            }

LABEL_39:
            v29 = operator new(4uLL);
            *v29 = 0;
            __p[0] = v29;
LABEL_40:
            v74 = 0xAAAAAAAAAAAAAAAALL;
            *&v30 = 0xAAAAAAAAAAAAAAAALL;
            *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v72 = v30;
            v73 = v30;
            v31 = *(v22 + 2);
            v76 = *(v22 + 1);
            if (v31)
            {
              v77 = std::__shared_weak_count::lock(v31);
              if (v77)
              {
                ice::SendMsgBaseProxy::SendMsgBaseProxy();
                v32 = v77;
                if (v77 && !atomic_fetch_add((v77 + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v32->__on_zero_shared)(v32);
                  std::__shared_weak_count::__release_weak(v32);
                }

                v71 = v27;
                ice::SendMsgBaseProxy::callback();
                if (v71)
                {
                  _Block_release(v71);
                }

                MEMORY[0x29C263BF0](&v72);
                if (v70)
                {
                  dispatch_release(v70);
                }

                if (v69)
                {
                  _Block_release(v69);
                }

                if (v67)
                {
                  std::__shared_weak_count::__release_weak(v67);
                }

                std::__shared_weak_count::__release_weak(v20);
                if (v56)
                {
                  dispatch_release(v56);
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                MEMORY[0x29C2650D0](object);
                if (SHIBYTE(__s1[2]) < 0)
                {
                  goto LABEL_58;
                }

                return;
              }
            }

            else
            {
              v77 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_33;
        }

        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
        if (__p[0])
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = 0;
      v24 = v56;
      v69 = 0;
      v70 = v56;
      if (!v56)
      {
        goto LABEL_30;
      }
    }

    dispatch_retain(v24);
    goto LABEL_30;
  }

  if (v8 != __s1[1])
  {
    goto LABEL_11;
  }

  if (v8 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (memcmp(__s1[0], v7, v8))
  {
    goto LABEL_11;
  }

LABEL_60:
  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v33;
  v60 = v33;
  *object = v33;
  v58 = v33;
  AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK::ARI_CsiIceBBTxStateIndEnableReq_SDK(object);
  v34 = *MEMORY[0x29EDC9088];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9088]))
  {
    v35 = xpc_dictionary_get_value(*a2, v34);
    *&v72 = v35;
    if (v35)
    {
      xpc_retain(v35);
    }

    else
    {
      *&v72 = xpc_null_create();
    }

    v36 = xpc::dyn_cast_or_default();
    xpc_release(v72);
  }

  else
  {
    v36 = 0;
  }

  v37 = operator new(4uLL);
  *v37 = v36;
  v38 = __p[0];
  __p[0] = v37;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = *a3;
  if (*a3)
  {
    v39 = _Block_copy(v39);
  }

  v40 = *(a3 + 8);
  v62 = v39;
  v63 = v40;
  if (v40)
  {
    dispatch_retain(v40);
  }

  v41 = a1->__on_zero_shared;
  if (!v41 || (v42 = a1->~__shared_weak_count_0, (v43 = std::__shared_weak_count::lock(v41)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v44 = v43;
  v45 = &v43->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v44);
  }

  v46 = a1[3].~__shared_weak_count_0;
  v65 = a1;
  v66 = v42;
  v67 = v44;
  atomic_fetch_add_explicit(v45, 1uLL, memory_order_relaxed);
  v68 = -184156160;
  if (!v62)
  {
    v47 = 0;
    v48 = v63;
    v69 = 0;
    v70 = v63;
    if (!v63)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v47 = _Block_copy(v62);
  v48 = v63;
  v69 = v47;
  v70 = v63;
  if (v63)
  {
LABEL_78:
    dispatch_retain(v48);
  }

LABEL_79:
  v49 = operator new(0x48uLL);
  v49->__shared_owners_ = 0;
  v49->__shared_weak_owners_ = 0;
  v49->__vftable = &unk_2A1E0C9E0;
  v49[1].__vftable = a1;
  v49[1].__shared_owners_ = v42;
  v49[1].__shared_weak_owners_ = v44;
  v66 = 0;
  v67 = 0;
  LODWORD(v49[2].__vftable) = -184156160;
  v49[2].__shared_owners_ = v47;
  v49[2].__shared_weak_owners_ = v48;
  v69 = 0;
  v70 = 0;
  *&v72 = MEMORY[0x29EDCA5F8];
  *(&v72 + 1) = 1174405120;
  *&v73 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceBBTxStateIndEnableRspCb_SDKENS5_35ARI_CsiIceBBTxStateIndEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v73 + 1) = &__block_descriptor_tmp_37_1;
  v74 = &v49[1];
  v75 = v49;
  atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  v76 = MEMORY[0x29EDCA5F8];
  v77 = 0x40000000;
  v78 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v79 = &unk_29EE5BAB0;
  v80 = &v72;
  v50 = _Block_copy(&v76);
  v51 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  *&v52 = 0xAAAAAAAAAAAAAAAALL;
  *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v52;
  v73 = v52;
  v74 = 0xAAAAAAAAAAAAAAAALL;
  v53 = *(v46 + 2);
  v76 = *(v46 + 1);
  if (!v53)
  {
    v77 = 0;
LABEL_111:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v77 = std::__shared_weak_count::lock(v53);
  if (!v77)
  {
    goto LABEL_111;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v54 = v77;
  if (v77 && !atomic_fetch_add((v77 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

  v71 = v50;
  ice::SendMsgBaseProxy::callback();
  if (v71)
  {
    _Block_release(v71);
  }

  MEMORY[0x29C263BF0](&v72);
  if (v70)
  {
    dispatch_release(v70);
  }

  if (v69)
  {
    _Block_release(v69);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  std::__shared_weak_count::__release_weak(v44);
  if (v63)
  {
    dispatch_release(v63);
  }

  if (v62)
  {
    _Block_release(v62);
  }

  MEMORY[0x29C265280](object);
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_58:
    operator delete(__s1[0]);
  }
}

void sub_296DBD2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *aBlock)
{
  xpc_release(*(v35 - 176));
  MEMORY[0x29C265280](&object);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t antenna::ARICommandDriver::txPowerCapping_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v6;
  *__p = v6;
  v54 = v6;
  v55 = v6;
  v53 = v6;
  AriSdk::ARI_CsiIceSarReq_SDK::ARI_CsiIceSarReq_SDK(&v53);
  v7 = *MEMORY[0x29EDC90D0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90D0]))
  {
    value = xpc_dictionary_get_value(*a2, v7);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    v15 = (a1 + 160);
    v14 = *(a1 + 160);
    if (v14)
    {
      do
      {
        while (1)
        {
          v16 = v14;
          v17 = *(v14 + 28);
          if (v17 <= v13)
          {
            break;
          }

          v14 = *v16;
          v15 = v16;
          if (!*v16)
          {
            goto LABEL_18;
          }
        }

        if (v17 >= v13)
        {
          v20 = v16;
          goto LABEL_23;
        }

        v14 = v16[1];
      }

      while (v14);
      v15 = v16 + 1;
    }

    else
    {
      v16 = (a1 + 160);
    }

LABEL_18:
    v20 = operator new(0x28uLL);
    v20[7] = v13;
    v20[8] = 0;
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = v16;
    *v15 = v20;
    v18 = **(a1 + 152);
    if (v18)
    {
      *(a1 + 152) = v18;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 160), v20);
    ++*(a1 + 168);
LABEL_23:
    v21 = v20[8];
    v22 = operator new(4uLL);
    *v22 = v21;
    v23 = __p[0];
    __p[0] = v22;
    if (v23)
    {
      operator delete(v23);
    }

    v24 = operator new(4uLL);
    *v24 = 0;
    v25 = __p[1];
    __p[1] = v24;
    if (v25)
    {
      operator delete(v25);
    }

    v26 = *MEMORY[0x29EDC9100];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9100]))
    {
      v27 = xpc_dictionary_get_value(*a2, v26);
      object[0] = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      v28 = xpc::dyn_cast_or_default();
      xpc_release(object[0]);
      v29 = operator new(4uLL);
      *v29 = v28;
      v12 = __p[1];
      __p[1] = v29;
      if (v12)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9030]))
  {
    v9 = operator new(4uLL);
    *v9 = 0;
    v10 = __p[0];
    __p[0] = v9;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19 = operator new(4uLL);
  *v19 = 1;
  v10 = __p[0];
  __p[0] = v19;
  if (v10)
  {
LABEL_6:
    operator delete(v10);
  }

LABEL_7:
  v11 = operator new(4uLL);
  *v11 = 0;
  v12 = __p[1];
  __p[1] = v11;
  if (v12)
  {
LABEL_32:
    operator delete(v12);
  }

LABEL_33:
  v30 = *MEMORY[0x29EDC8FB0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FB0]))
  {
    v31 = xpc_dictionary_get_value(*a2, v30);
    object[0] = v31;
    if (v31)
    {
      xpc_retain(v31);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v32 = xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    HIDWORD(v54) = v32;
  }

  v33 = *a3;
  if (*a3)
  {
    v33 = _Block_copy(v33);
  }

  v34 = *(a3 + 8);
  aBlock = v33;
  v52 = v34;
  if (v34)
  {
    dispatch_retain(v34);
  }

  v35 = *(a1 + 16);
  if (!v35 || (v36 = *(a1 + 8), (v37 = std::__shared_weak_count::lock(v35)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v38 = v37;
  p_shared_weak_owners = &v37->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v38);
  }

  v40 = *(a1 + 128);
  v58 = a1;
  v59 = v36;
  v60 = v38;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v61 = -184385536;
  if (!aBlock)
  {
    v41 = 0;
    v42 = v52;
    v62 = 0;
    v63 = v52;
    if (!v52)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v41 = _Block_copy(aBlock);
  v42 = v52;
  v62 = v41;
  v63 = v52;
  if (v52)
  {
LABEL_48:
    dispatch_retain(v42);
  }

LABEL_49:
  v43 = operator new(0x48uLL);
  v43->__shared_owners_ = 0;
  p_shared_owners = &v43->__shared_owners_;
  v43->__shared_weak_owners_ = 0;
  v43->__vftable = &unk_2A1E0CAE0;
  v43[1].__vftable = a1;
  v43[1].__shared_owners_ = v36;
  v43[1].__shared_weak_owners_ = v38;
  v59 = 0;
  v60 = 0;
  LODWORD(v43[2].__vftable) = -184385536;
  v43[2].__shared_owners_ = v41;
  v43[2].__shared_weak_owners_ = v42;
  v62 = 0;
  v63 = 0;
  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 1174405120;
  *&v66 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk22ARI_CsiIceSarRspCb_SDKENS5_20ARI_CsiIceSarReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v66 + 1) = &__block_descriptor_tmp_43;
  v67 = &v43[1];
  v68 = v43;
  atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  v69 = MEMORY[0x29EDCA5F8];
  v70 = 0x40000000;
  v71 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v72 = &unk_29EE5BAB0;
  v73 = object;
  v45 = _Block_copy(&v69);
  v46 = v68;
  if (!v68 || atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  (v46->__on_zero_shared)(v46);
  std::__shared_weak_count::__release_weak(v46);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_52:
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

LABEL_53:
  *&v47 = 0xAAAAAAAAAAAAAAAALL;
  *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *object = v47;
  v66 = v47;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v48 = *(v40 + 16);
  v69 = *(v40 + 8);
  if (!v48)
  {
    v70 = 0;
LABEL_77:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v70 = std::__shared_weak_count::lock(v48);
  if (!v70)
  {
    goto LABEL_77;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v49 = v70;
  if (v70 && !atomic_fetch_add((v70 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  v64 = v45;
  ice::SendMsgBaseProxy::callback();
  if (v64)
  {
    _Block_release(v64);
  }

  MEMORY[0x29C263BF0](object);
  if (v63)
  {
    dispatch_release(v63);
  }

  if (v62)
  {
    _Block_release(v62);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  std::__shared_weak_count::__release_weak(v38);
  if (v52)
  {
    dispatch_release(v52);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return MEMORY[0x29C263DB0](&v53);
}

xpc_object_t antenna::ARICommandDriver::txPowerConfiguration_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDC90E8];
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90E8]);
  v8 = MEMORY[0x29EDC90E0];
  v9 = MEMORY[0x29EDC90F8];
  if (value || xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90E0]) || xpc_dictionary_get_value(*a2, *v9))
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v58 = v10;
    v59 = v10;
    v56 = v10;
    *__p = v10;
    v54 = v10;
    v55 = v10;
    v53 = v10;
    AriSdk::ARI_CsiIceCltmReq_SDK::ARI_CsiIceCltmReq_SDK(&v53);
    if (xpc_dictionary_get_value(*a2, v6))
    {
      v11 = xpc_dictionary_get_value(*a2, v6);
      *&v67 = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        *&v67 = xpc_null_create();
      }

      v12 = xpc::dyn_cast_or_default();
      v13 = operator new(4uLL);
      *v13 = v12;
      v14 = __p[0];
      __p[0] = v13;
      if (v14)
      {
        operator delete(v14);
      }

      xpc_release(v67);
    }

    v15 = *v8;
    if (xpc_dictionary_get_value(*a2, *v8))
    {
      v16 = xpc_dictionary_get_value(*a2, v15);
      *&v67 = v16;
      if (v16)
      {
        xpc_retain(v16);
      }

      else
      {
        *&v67 = xpc_null_create();
      }

      v17 = xpc::dyn_cast_or_default();
      v18 = operator new(4uLL);
      *v18 = v17;
      v19 = __p[1];
      __p[1] = v18;
      if (v19)
      {
        operator delete(v19);
      }

      xpc_release(v67);
    }

    v20 = *v9;
    if (xpc_dictionary_get_value(*a2, *v9))
    {
      v21 = xpc_dictionary_get_value(*a2, v20);
      *&v67 = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        *&v67 = xpc_null_create();
      }

      v22 = xpc::dyn_cast_or_default();
      v23 = operator new(4uLL);
      *v23 = v22;
      v24 = v58[0];
      v58[0] = v23;
      if (v24)
      {
        operator delete(v24);
      }

      xpc_release(v67);
    }

    if (*a3)
    {
      v25 = _Block_copy(*a3);
      v26 = *(a3 + 8);
      v51 = v25;
      v52 = v26;
      if (!v26)
      {
LABEL_28:
        antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(a1, &v53, &v51);
        if (v26)
        {
          dispatch_release(v26);
        }

        if (v25)
        {
          _Block_release(v25);
        }

        return MEMORY[0x29C263DF0](&v53);
      }
    }

    else
    {
      v25 = 0;
      v26 = *(a3 + 8);
      v51 = 0;
      v52 = v26;
      if (!v26)
      {
        goto LABEL_28;
      }
    }

    dispatch_retain(v26);
    goto LABEL_28;
  }

  v28 = *MEMORY[0x29EDC90D8];
  result = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90D8]);
  if (!result)
  {
    return result;
  }

  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v29;
  v56 = v29;
  v53 = v29;
  v54 = v29;
  AriSdk::ARI_CsiIceSarWaitTimeReq_SDK::ARI_CsiIceSarWaitTimeReq_SDK(&v53);
  v30 = xpc_dictionary_get_value(*a2, v28);
  *&v67 = v30;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    *&v67 = xpc_null_create();
  }

  v31 = xpc::dyn_cast_or_default();
  xpc_release(v67);
  v32 = operator new(4uLL);
  *v32 = v31;
  v33 = __p[0];
  __p[0] = v32;
  if (v33)
  {
    operator delete(v33);
  }

  v34 = *a3;
  if (*a3)
  {
    v34 = _Block_copy(v34);
  }

  v35 = *(a3 + 8);
  aBlock = v34;
  object = v35;
  if (v35)
  {
    dispatch_retain(v35);
  }

  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v37 = a1->~__shared_weak_count_0, (v38 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
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

  v41 = a1[3].~__shared_weak_count_0;
  v60 = a1;
  v61 = v37;
  v62 = v39;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v63 = -184352768;
  if (aBlock)
  {
    v42 = _Block_copy(aBlock);
  }

  else
  {
    v42 = 0;
  }

  v64 = v42;
  v65 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  v43 = operator new(0x48uLL);
  v43->__shared_owners_ = 0;
  v43->__shared_weak_owners_ = 0;
  v43->__vftable = &unk_2A1E0CBE0;
  v43[1].__vftable = a1;
  v43[1].__shared_owners_ = v37;
  v43[1].__shared_weak_owners_ = v39;
  v61 = 0;
  v62 = 0;
  LODWORD(v43[2].__vftable) = -184352768;
  v43[2].__shared_owners_ = v42;
  v43[2].__shared_weak_owners_ = object;
  v64 = 0;
  v65 = 0;
  *&v67 = MEMORY[0x29EDCA5F8];
  *(&v67 + 1) = 1174405120;
  *&v68 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk30ARI_CsiIceSarWaitTimeRspCb_SDKENS5_28ARI_CsiIceSarWaitTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v68 + 1) = &__block_descriptor_tmp_49_1;
  v69 = &v43[1];
  v70 = v43;
  atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  v71 = MEMORY[0x29EDCA5F8];
  v72 = 0x40000000;
  v73 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v74 = &unk_29EE5BAB0;
  v75 = &v67;
  v44 = _Block_copy(&v71);
  v45 = v70;
  if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  *&v46 = 0xAAAAAAAAAAAAAAAALL;
  *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v67 = v46;
  v68 = v46;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v47 = *(v41 + 2);
  v71 = *(v41 + 1);
  if (!v47)
  {
    v72 = 0;
LABEL_80:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v72 = std::__shared_weak_count::lock(v47);
  if (!v72)
  {
    goto LABEL_80;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v48 = v72;
  if (v72 && !atomic_fetch_add((v72 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
  }

  v66 = v44;
  ice::SendMsgBaseProxy::callback();
  if (v66)
  {
    _Block_release(v66);
  }

  MEMORY[0x29C263BF0](&v67);
  if (v65)
  {
    dispatch_release(v65);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  std::__shared_weak_count::__release_weak(v39);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return MEMORY[0x29C2646A0](&v53);
}

void sub_296DBE328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(v29 - 184);
  if (v31)
  {
    _Block_release(v31);
  }

  MEMORY[0x29C263BF0](v29 - 176);
  antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(&a28);
  std::__shared_weak_count::__release_weak(v28);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a9);
  MEMORY[0x29C2646A0](&a13);
  _Unwind_Resume(a1);
}

void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(std::__shared_weak_count_vtbl *a1, uint64_t a2, uint64_t a3)
{
  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v6 = a1->~__shared_weak_count_0, (v7 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
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

  v10 = a1[3].~__shared_weak_count_0;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (!*a3)
  {
    v11 = 0;
    v12 = *(a3 + 8);
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = _Block_copy(*a3);
  v12 = *(a3 + 8);
  if (v12)
  {
LABEL_7:
    dispatch_retain(v12);
  }

LABEL_8:
  v13 = operator new(0x48uLL);
  v13->__shared_owners_ = 0;
  p_shared_owners = &v13->__shared_owners_;
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A1E0CB60;
  v13[1].__vftable = a1;
  v13[1].__shared_owners_ = v6;
  v13[1].__shared_weak_owners_ = v8;
  LODWORD(v13[2].__vftable) = -184418304;
  v13[2].__shared_owners_ = v11;
  v13[2].__shared_weak_owners_ = v12;
  v22 = MEMORY[0x29EDCA5F8];
  v23 = 1174405120;
  v24 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKENS5_21ARI_CsiIceCltmReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v25 = &__block_descriptor_tmp_46;
  v26 = v13 + 1;
  v27 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  aBlock[3] = &unk_29EE5BAB0;
  aBlock[4] = &v22;
  v15 = _Block_copy(aBlock);
  v16 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_11:
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v17;
  v20[1] = v17;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *(v10 + 2);
  v22 = *(v10 + 1);
  if (!v18)
  {
    v23 = 0;
LABEL_26:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = std::__shared_weak_count::lock(v18);
  if (!v23)
  {
    goto LABEL_26;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v23;
  if (v23 && !atomic_fetch_add((v23 + 8), 0xFFFFFFFFFFFFFFFFLL))
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

  MEMORY[0x29C263BF0](v20);
  std::__shared_weak_count::__release_weak(v8);
}

void sub_296DBE868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = *(v16 - 128);
  if (v18)
  {
    _Block_release(v18);
  }

  MEMORY[0x29C263BF0](&a15);
  antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(&a9);
  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void sub_296DBE89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  if (v22)
  {
    _Block_release(v22);
  }

  antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(&a9);
  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

uint64_t antenna::ARICommandDriver::getE75AccessoryType(antenna::ARICommandDriver *this, __int16 a2)
{
  if ((a2 & 2) == 0)
  {
    v4 = 0;
    if ((a2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v6 = (this + 56);
  v5 = *(this + 7);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 28);
        if (v8 < 3)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_11;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      v5 = *(v7 + 1);
      if (!v5)
      {
        v6 = v7 + 8;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = this + 56;
LABEL_11:
    v9 = v7;
    v7 = operator new(0x28uLL);
    *(v7 + 28) = 2;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v9;
    *v6 = v7;
    v10 = **(this + 6);
    if (v10)
    {
      *(this + 6) = v10;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v7);
    ++*(this + 8);
  }

  v4 = *(v7 + 8);
  if ((a2 & 4) != 0)
  {
LABEL_15:
    v12 = (this + 56);
    v11 = *(this + 7);
    if (v11)
    {
      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = *(v11 + 28);
          if (v14 < 5)
          {
            break;
          }

          v11 = *v13;
          v12 = v13;
          if (!*v13)
          {
            goto LABEL_22;
          }
        }

        if (v14 == 4)
        {
          break;
        }

        v11 = *(v13 + 1);
        if (!v11)
        {
          v12 = v13 + 8;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v13 = this + 56;
LABEL_22:
      v15 = v13;
      v13 = operator new(0x28uLL);
      *(v13 + 28) = 4;
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = v15;
      *v12 = v13;
      v16 = **(this + 6);
      if (v16)
      {
        *(this + 6) = v16;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v13);
      ++*(this + 8);
    }

    v4 = *(v13 + 8) | v4;
  }

LABEL_26:
  if ((a2 & 8) != 0)
  {
    v19 = (this + 56);
    v18 = *(this + 7);
    if (v18)
    {
      while (1)
      {
        while (1)
        {
          v20 = v18;
          v21 = *(v18 + 28);
          if (v21 < 9)
          {
            break;
          }

          v18 = *v20;
          v19 = v20;
          if (!*v20)
          {
            goto LABEL_45;
          }
        }

        if (v21 == 8)
        {
          break;
        }

        v18 = *(v20 + 1);
        if (!v18)
        {
          v19 = v20 + 8;
          goto LABEL_45;
        }
      }
    }

    else
    {
      v20 = this + 56;
LABEL_45:
      v22 = v20;
      v20 = operator new(0x28uLL);
      *(v20 + 28) = 8;
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v20 + 2) = v22;
      *v19 = v20;
      v23 = **(this + 6);
      if (v23)
      {
        *(this + 6) = v23;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v20);
      ++*(this + 8);
    }

    v4 = *(v20 + 8) | v4;
    if ((a2 & 0x10) == 0)
    {
LABEL_28:
      if ((a2 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_60;
    }
  }

  else if ((a2 & 0x10) == 0)
  {
    goto LABEL_28;
  }

  v25 = (this + 56);
  v24 = *(this + 7);
  if (v24)
  {
    while (1)
    {
      while (1)
      {
        v26 = v24;
        v27 = *(v24 + 28);
        if (v27 < 0x11)
        {
          break;
        }

        v24 = *v26;
        v25 = v26;
        if (!*v26)
        {
          goto LABEL_56;
        }
      }

      if (v27 == 16)
      {
        break;
      }

      v24 = *(v26 + 1);
      if (!v24)
      {
        v25 = v26 + 8;
        goto LABEL_56;
      }
    }
  }

  else
  {
    v26 = this + 56;
LABEL_56:
    v28 = v26;
    v26 = operator new(0x28uLL);
    *(v26 + 28) = 16;
    *v26 = 0;
    *(v26 + 1) = 0;
    *(v26 + 2) = v28;
    *v25 = v26;
    v29 = **(this + 6);
    if (v29)
    {
      *(this + 6) = v29;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v26);
    ++*(this + 8);
  }

  v4 = *(v26 + 8) | v4;
  if ((a2 & 0x20) == 0)
  {
LABEL_29:
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_60:
  v31 = (this + 56);
  v30 = *(this + 7);
  if (v30)
  {
    while (1)
    {
      while (1)
      {
        v32 = v30;
        v33 = *(v30 + 28);
        if (v33 < 0x21)
        {
          break;
        }

        v30 = *v32;
        v31 = v32;
        if (!*v32)
        {
          goto LABEL_67;
        }
      }

      if (v33 == 32)
      {
        break;
      }

      v30 = *(v32 + 1);
      if (!v30)
      {
        v31 = v32 + 8;
        goto LABEL_67;
      }
    }
  }

  else
  {
    v32 = this + 56;
LABEL_67:
    v34 = v32;
    v32 = operator new(0x28uLL);
    *(v32 + 28) = 32;
    *v32 = 0;
    *(v32 + 1) = 0;
    *(v32 + 2) = v34;
    *v31 = v32;
    v35 = **(this + 6);
    if (v35)
    {
      *(this + 6) = v35;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v32);
    ++*(this + 8);
  }

  v4 = *(v32 + 8) | v4;
  if ((a2 & 0x40) == 0)
  {
LABEL_30:
    if ((a2 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_71:
  v37 = (this + 56);
  v36 = *(this + 7);
  if (v36)
  {
    while (1)
    {
      while (1)
      {
        v38 = v36;
        v39 = *(v36 + 28);
        if (v39 < 0x41)
        {
          break;
        }

        v36 = *v38;
        v37 = v38;
        if (!*v38)
        {
          goto LABEL_78;
        }
      }

      if (v39 == 64)
      {
        break;
      }

      v36 = *(v38 + 1);
      if (!v36)
      {
        v37 = v38 + 8;
        goto LABEL_78;
      }
    }
  }

  else
  {
    v38 = this + 56;
LABEL_78:
    v40 = v38;
    v38 = operator new(0x28uLL);
    *(v38 + 28) = 64;
    *v38 = 0;
    *(v38 + 1) = 0;
    *(v38 + 2) = v40;
    *v37 = v38;
    v41 = **(this + 6);
    if (v41)
    {
      *(this + 6) = v41;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v38);
    ++*(this + 8);
  }

  v4 = *(v38 + 8) | v4;
  if ((a2 & 0x80) == 0)
  {
LABEL_31:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_93;
  }

LABEL_82:
  v43 = (this + 56);
  v42 = *(this + 7);
  if (v42)
  {
    while (1)
    {
      while (1)
      {
        v44 = v42;
        v45 = *(v42 + 28);
        if (v45 < 0x81)
        {
          break;
        }

        v42 = *v44;
        v43 = v44;
        if (!*v44)
        {
          goto LABEL_89;
        }
      }

      if (v45 == 128)
      {
        break;
      }

      v42 = *(v44 + 1);
      if (!v42)
      {
        v43 = v44 + 8;
        goto LABEL_89;
      }
    }
  }

  else
  {
    v44 = this + 56;
LABEL_89:
    v46 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 128;
    *v44 = 0;
    *(v44 + 1) = 0;
    *(v44 + 2) = v46;
    *v43 = v44;
    v47 = **(this + 6);
    if (v47)
    {
      *(this + 6) = v47;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v44);
    ++*(this + 8);
  }

  v4 = *(v44 + 8) | v4;
  if ((a2 & 0x100) == 0)
  {
LABEL_32:
    if ((a2 & 0x200) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_104;
  }

LABEL_93:
  v49 = (this + 56);
  v48 = *(this + 7);
  if (v48)
  {
    while (1)
    {
      while (1)
      {
        v50 = v48;
        v51 = *(v48 + 28);
        if (v51 < 0x101)
        {
          break;
        }

        v48 = *v50;
        v49 = v50;
        if (!*v50)
        {
          goto LABEL_100;
        }
      }

      if (v51 == 256)
      {
        break;
      }

      v48 = *(v50 + 1);
      if (!v48)
      {
        v49 = v50 + 8;
        goto LABEL_100;
      }
    }
  }

  else
  {
    v50 = this + 56;
LABEL_100:
    v52 = v50;
    v50 = operator new(0x28uLL);
    *(v50 + 28) = 256;
    *v50 = 0;
    *(v50 + 1) = 0;
    *(v50 + 2) = v52;
    *v49 = v50;
    v53 = **(this + 6);
    if (v53)
    {
      *(this + 6) = v53;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v50);
    ++*(this + 8);
  }

  v4 = *(v50 + 8) | v4;
  if ((a2 & 0x200) == 0)
  {
LABEL_33:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_115;
  }

LABEL_104:
  v55 = (this + 56);
  v54 = *(this + 7);
  if (v54)
  {
    while (1)
    {
      while (1)
      {
        v56 = v54;
        v57 = *(v54 + 28);
        if (v57 < 0x201)
        {
          break;
        }

        v54 = *v56;
        v55 = v56;
        if (!*v56)
        {
          goto LABEL_111;
        }
      }

      if (v57 == 512)
      {
        break;
      }

      v54 = *(v56 + 1);
      if (!v54)
      {
        v55 = v56 + 8;
        goto LABEL_111;
      }
    }
  }

  else
  {
    v56 = this + 56;
LABEL_111:
    v58 = v56;
    v56 = operator new(0x28uLL);
    *(v56 + 28) = 512;
    *v56 = 0;
    *(v56 + 1) = 0;
    *(v56 + 2) = v58;
    *v55 = v56;
    v59 = **(this + 6);
    if (v59)
    {
      *(this + 6) = v59;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v56);
    ++*(this + 8);
  }

  v4 = *(v56 + 8) | v4;
  if ((a2 & 0x400) == 0)
  {
LABEL_34:
    if ((a2 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_126;
  }

LABEL_115:
  v61 = (this + 56);
  v60 = *(this + 7);
  if (v60)
  {
    while (1)
    {
      while (1)
      {
        v62 = v60;
        v63 = *(v60 + 28);
        if (v63 < 0x401)
        {
          break;
        }

        v60 = *v62;
        v61 = v62;
        if (!*v62)
        {
          goto LABEL_122;
        }
      }

      if (v63 == 1024)
      {
        break;
      }

      v60 = *(v62 + 1);
      if (!v60)
      {
        v61 = v62 + 8;
        goto LABEL_122;
      }
    }
  }

  else
  {
    v62 = this + 56;
LABEL_122:
    v64 = v62;
    v62 = operator new(0x28uLL);
    *(v62 + 28) = 1024;
    *v62 = 0;
    *(v62 + 1) = 0;
    *(v62 + 2) = v64;
    *v61 = v62;
    v65 = **(this + 6);
    if (v65)
    {
      *(this + 6) = v65;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v62);
    ++*(this + 8);
  }

  v4 = *(v62 + 8) | v4;
  if ((a2 & 0x800) == 0)
  {
LABEL_35:
    if ((a2 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

LABEL_137:
    v73 = (this + 56);
    v72 = *(this + 7);
    if (v72)
    {
      while (1)
      {
        while (1)
        {
          v74 = v72;
          v75 = *(v72 + 28);
          if (v75 <= 0x1000)
          {
            break;
          }

          v72 = *v74;
          v73 = v74;
          if (!*v74)
          {
            goto LABEL_144;
          }
        }

        if (v75 == 4096)
        {
          break;
        }

        v72 = *(v74 + 1);
        if (!v72)
        {
          v73 = v74 + 8;
          goto LABEL_144;
        }
      }
    }

    else
    {
      v74 = this + 56;
LABEL_144:
      v76 = v74;
      v74 = operator new(0x28uLL);
      *(v74 + 28) = 4096;
      *v74 = 0;
      *(v74 + 1) = 0;
      *(v74 + 2) = v76;
      *v73 = v74;
      v77 = **(this + 6);
      if (v77)
      {
        *(this + 6) = v77;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v74);
      ++*(this + 8);
    }

    v4 = *(v74 + 8) | v4;
    if (v4)
    {
      return v4;
    }

    goto LABEL_148;
  }

LABEL_126:
  v67 = (this + 56);
  v66 = *(this + 7);
  if (v66)
  {
    while (1)
    {
      while (1)
      {
        v68 = v66;
        v69 = *(v66 + 28);
        if (v69 < 0x801)
        {
          break;
        }

        v66 = *v68;
        v67 = v68;
        if (!*v68)
        {
          goto LABEL_133;
        }
      }

      if (v69 == 2048)
      {
        break;
      }

      v66 = *(v68 + 1);
      if (!v66)
      {
        v67 = v68 + 8;
        goto LABEL_133;
      }
    }
  }

  else
  {
    v68 = this + 56;
LABEL_133:
    v70 = v68;
    v68 = operator new(0x28uLL);
    *(v68 + 28) = 2048;
    *v68 = 0;
    *(v68 + 1) = 0;
    *(v68 + 2) = v70;
    *v67 = v68;
    v71 = **(this + 6);
    if (v71)
    {
      *(this + 6) = v71;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v68);
    ++*(this + 8);
  }

  v4 = *(v68 + 8) | v4;
  if ((a2 & 0x1000) != 0)
  {
    goto LABEL_137;
  }

LABEL_36:
  if (v4)
  {
    return v4;
  }

LABEL_148:
  v79 = (this + 56);
  v78 = *(this + 7);
  if (v78)
  {
    while (1)
    {
      while (1)
      {
        v80 = v78;
        v81 = *(v78 + 28);
        if (v81 < 2)
        {
          break;
        }

        v78 = *v80;
        v79 = v80;
        if (!*v80)
        {
          goto LABEL_155;
        }
      }

      if (v81)
      {
        break;
      }

      v78 = *(v80 + 1);
      if (!v78)
      {
        v79 = v80 + 8;
        goto LABEL_155;
      }
    }
  }

  else
  {
    v80 = this + 56;
LABEL_155:
    v82 = v80;
    v80 = operator new(0x28uLL);
    *(v80 + 28) = 1;
    *v80 = 0;
    *(v80 + 1) = 0;
    *(v80 + 2) = v82;
    *v79 = v80;
    v83 = **(this + 6);
    if (v83)
    {
      *(this + 6) = v83;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 7), v80);
    ++*(this + 8);
  }

  return *(v80 + 8);
}

uint64_t antenna::ARICommandDriver::sendAccessoryReportRF_sync(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x29EDCA608];
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[2] = v4;
  v31[3] = v4;
  v31[0] = v4;
  v31[1] = v4;
  AriSdk::ARI_CsiIceAccessoryStateReq_SDK::ARI_CsiIceAccessoryStateReq_SDK(v31);
  v5 = *(a1 + 144);
  if ((v5 & 0x7FFFFFFF) != 0)
  {
    v6 = v5 | 0x80000000;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 144) = v6;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = v6;
    _os_log_impl(&dword_296D7D000, v7, OS_LOG_TYPE_DEFAULT, "#I fAccessory for RF: 0x%08x(%d)\n", buf, 0xEu);
  }

  v8 = operator new(4uLL);
  *v8 = *(a1 + 144);
  v9 = __p;
  __p = v8;
  if (v9)
  {
    operator delete(v9);
  }

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

  v12 = *(a1 + 16);
  if (!v12 || (v13 = *(a1 + 8), (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  p_shared_weak_owners = &v14->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  v17 = *(a1 + 128);
  v33 = a1;
  v34 = v13;
  v35 = v15;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v36 = -184451072;
  if (!aBlock)
  {
    v18 = 0;
    v19 = object;
    v37 = 0;
    v38 = object;
    if (!object)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = _Block_copy(aBlock);
  v19 = object;
  v37 = v18;
  v38 = object;
  if (object)
  {
LABEL_18:
    dispatch_retain(v19);
  }

LABEL_19:
  v20 = operator new(0x48uLL);
  v20->__shared_owners_ = 0;
  p_shared_owners = &v20->__shared_owners_;
  v20->__shared_weak_owners_ = 0;
  v20->__vftable = &unk_2A1E0CC60;
  v20[1].__vftable = a1;
  v20[1].__shared_owners_ = v13;
  v20[1].__shared_weak_owners_ = v15;
  v34 = 0;
  v35 = 0;
  LODWORD(v20[2].__vftable) = -184451072;
  v20[2].__shared_owners_ = v18;
  v20[2].__shared_weak_owners_ = v19;
  v37 = 0;
  v38 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 1174405120;
  *&v46 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_CsiIceAccessoryStateRspCb_SDKENS5_31ARI_CsiIceAccessoryStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v46 + 1) = &__block_descriptor_tmp_52_1;
  v47 = &v20[1];
  v48 = v20;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v40 = MEMORY[0x29EDCA5F8];
  v41 = 0x40000000;
  v42 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v43 = &unk_29EE5BAB0;
  v44 = buf;
  v22 = _Block_copy(&v40);
  v23 = v48;
  if (!v48 || atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

LABEL_23:
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v24;
  v46 = v24;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v25 = *(v17 + 16);
  v40 = *(v17 + 8);
  if (!v25)
  {
    v41 = 0;
LABEL_47:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v41 = std::__shared_weak_count::lock(v25);
  if (!v41)
  {
    goto LABEL_47;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v26 = v41;
  if (v41 && !atomic_fetch_add((v41 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v39 = v22;
  ice::SendMsgBaseProxy::callback();
  if (v39)
  {
    _Block_release(v39);
  }

  MEMORY[0x29C263BF0](buf);
  if (v38)
  {
    dispatch_release(v38);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  std::__shared_weak_count::__release_weak(v15);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  result = MEMORY[0x29C264BF0](v31);
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DBF618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DBF6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a9);
  MEMORY[0x29C264BF0](&a11);
  _Unwind_Resume(a1);
}

uint64_t antenna::ARICommandDriver::sendAccessoryReportARTD_sync(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x29EDCA608];
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[2] = v4;
  v31[3] = v4;
  v31[0] = v4;
  v31[1] = v4;
  AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK::ARI_CsiIceAccessoryStateArtdReq_SDK(v31);
  v5 = *(a1 + 148);
  if ((v5 & 0x7FFFFFFF) != 0)
  {
    v6 = v5 | 0x80000000;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 148) = v6;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = v6;
    _os_log_impl(&dword_296D7D000, v7, OS_LOG_TYPE_DEFAULT, "#I fAccessory for ARTD: 0x%08x(%d)\n", buf, 0xEu);
  }

  v8 = operator new(4uLL);
  *v8 = *(a1 + 148);
  v9 = __p;
  __p = v8;
  if (v9)
  {
    operator delete(v9);
  }

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

  v12 = *(a1 + 16);
  if (!v12 || (v13 = *(a1 + 8), (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  p_shared_weak_owners = &v14->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  v17 = *(a1 + 128);
  v33 = a1;
  v34 = v13;
  v35 = v15;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v36 = -183697408;
  if (!aBlock)
  {
    v18 = 0;
    v19 = object;
    v37 = 0;
    v38 = object;
    if (!object)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = _Block_copy(aBlock);
  v19 = object;
  v37 = v18;
  v38 = object;
  if (object)
  {
LABEL_18:
    dispatch_retain(v19);
  }

LABEL_19:
  v20 = operator new(0x48uLL);
  v20->__shared_owners_ = 0;
  p_shared_owners = &v20->__shared_owners_;
  v20->__shared_weak_owners_ = 0;
  v20->__vftable = &unk_2A1E0CCE0;
  v20[1].__vftable = a1;
  v20[1].__shared_owners_ = v13;
  v20[1].__shared_weak_owners_ = v15;
  v34 = 0;
  v35 = 0;
  LODWORD(v20[2].__vftable) = -183697408;
  v20[2].__shared_owners_ = v18;
  v20[2].__shared_weak_owners_ = v19;
  v37 = 0;
  v38 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 1174405120;
  *&v46 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceAccessoryStateArtdRspCb_SDKENS5_35ARI_CsiIceAccessoryStateArtdReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v46 + 1) = &__block_descriptor_tmp_55_0;
  v47 = &v20[1];
  v48 = v20;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v40 = MEMORY[0x29EDCA5F8];
  v41 = 0x40000000;
  v42 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v43 = &unk_29EE5BAB0;
  v44 = buf;
  v22 = _Block_copy(&v40);
  v23 = v48;
  if (!v48 || atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

LABEL_23:
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v24;
  v46 = v24;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v25 = *(v17 + 16);
  v40 = *(v17 + 8);
  if (!v25)
  {
    v41 = 0;
LABEL_47:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v41 = std::__shared_weak_count::lock(v25);
  if (!v41)
  {
    goto LABEL_47;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v26 = v41;
  if (v41 && !atomic_fetch_add((v41 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v39 = v22;
  ice::SendMsgBaseProxy::callback();
  if (v39)
  {
    _Block_release(v39);
  }

  MEMORY[0x29C263BF0](buf);
  if (v38)
  {
    dispatch_release(v38);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  std::__shared_weak_count::__release_weak(v15);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  result = MEMORY[0x29C265260](v31);
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DBFB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DBFC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a9);
  MEMORY[0x29C265260](&a11);
  _Unwind_Resume(a1);
}

void antenna::ARICommandDriver::e75AccessoryStatusRF_sync(antenna::ARICommandDriver *a1, xpc_object_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDC9020];
  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9020]))
  {
    return;
  }

  value = xpc_dictionary_get_value(*a2, v6);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v9 = *(a1 + 36);
  if (v8)
  {
    *(a1 + 36) = v9 | 2;
    v10 = *MEMORY[0x29EDC8FE8];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FE8]))
    {
      *(a1 + 36) &= 0x8000000F;
      v11 = xpc_dictionary_get_value(*a2, v10);
      object = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        object = xpc_null_create();
      }

      v12 = xpc::dyn_cast_or_default();
      *(a1 + 36) |= antenna::ARICommandDriver::getE75AccessoryType(a1, v12);
      xpc_release(object);
    }
  }

  else
  {
    *(a1 + 36) = v9 & 0x8000000D;
  }

  if (!*a3)
  {
    v13 = 0;
    v14 = *(a3 + 8);
    v15 = 0;
    v16 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = _Block_copy(*a3);
  v14 = *(a3 + 8);
  v15 = v13;
  v16 = v14;
  if (v14)
  {
LABEL_14:
    dispatch_retain(v14);
  }

LABEL_15:
  antenna::ARICommandDriver::sendAccessoryReportRF_sync(a1, &v15);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v13)
  {
    _Block_release(v13);
  }
}

void antenna::ARICommandDriver::e75AccessoryStatusARTD_sync(antenna::ARICommandDriver *a1, xpc_object_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDC9020];
  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9020]))
  {
    return;
  }

  value = xpc_dictionary_get_value(*a2, v6);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v9 = *(a1 + 37);
  if (v8)
  {
    *(a1 + 37) = v9 | 2;
    v10 = *MEMORY[0x29EDC8FE8];
    if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FE8]))
    {
      *(a1 + 37) &= 0x8000000F;
      v11 = xpc_dictionary_get_value(*a2, v10);
      object = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        object = xpc_null_create();
      }

      v12 = xpc::dyn_cast_or_default();
      *(a1 + 37) |= antenna::ARICommandDriver::getE75AccessoryType(a1, v12);
      xpc_release(object);
    }
  }

  else
  {
    *(a1 + 37) = v9 & 0x8000000D;
  }

  if (!*a3)
  {
    v13 = 0;
    v14 = *(a3 + 8);
    v15 = 0;
    v16 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = _Block_copy(*a3);
  v14 = *(a3 + 8);
  v15 = v13;
  v16 = v14;
  if (v14)
  {
LABEL_14:
    dispatch_retain(v14);
  }

LABEL_15:
  antenna::ARICommandDriver::sendAccessoryReportARTD_sync(a1, &v15);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v13)
  {
    _Block_release(v13);
  }
}

void antenna::ARICommandDriver::videoAccessoryStatus_sync(int8x8_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDC9058];
  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9058]))
  {
    return;
  }

  value = xpc_dictionary_get_value(*a2, v6);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  a1[18] = vorr_s8((*&a1[18] & 0xFFFFFFFBFFFFFFFBLL), vdup_n_s32(v9));
  if (*a3)
  {
    v10 = _Block_copy(*a3);
    v11 = *(a3 + 8);
    v16 = v10;
    v17 = v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = 0;
  v11 = *(a3 + 8);
  v16 = 0;
  v17 = v11;
  if (v11)
  {
LABEL_10:
    dispatch_retain(v11);
  }

LABEL_11:
  antenna::ARICommandDriver::sendAccessoryReportRF_sync(a1, &v16);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (!*a3)
  {
    v12 = 0;
    v13 = *(a3 + 8);
    v14 = 0;
    v15 = v13;
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = _Block_copy(*a3);
  v13 = *(a3 + 8);
  v14 = v12;
  v15 = v13;
  if (v13)
  {
LABEL_17:
    dispatch_retain(v13);
  }

LABEL_18:
  antenna::ARICommandDriver::sendAccessoryReportARTD_sync(a1, &v14);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }
}

void sub_296DC0188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(va);
  _Unwind_Resume(a1);
}

void antenna::ARICommandDriver::wiredPortNotification_sync(int8x8_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDC8FC8];
  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FC8]))
  {
    return;
  }

  value = xpc_dictionary_get_value(*a2, v6);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v8)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  a1[18] = vorr_s8((*&a1[18] & 0xFFFFFFF7FFFFFFF7), vdup_n_s32(v9));
  if (*a3)
  {
    v10 = _Block_copy(*a3);
    v11 = *(a3 + 8);
    v16 = v10;
    v17 = v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = 0;
  v11 = *(a3 + 8);
  v16 = 0;
  v17 = v11;
  if (v11)
  {
LABEL_10:
    dispatch_retain(v11);
  }

LABEL_11:
  antenna::ARICommandDriver::sendAccessoryReportRF_sync(a1, &v16);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (!*a3)
  {
    v12 = 0;
    v13 = *(a3 + 8);
    v14 = 0;
    v15 = v13;
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = _Block_copy(*a3);
  v13 = *(a3 + 8);
  v14 = v12;
  v15 = v13;
  if (v13)
  {
LABEL_17:
    dispatch_retain(v13);
  }

LABEL_18:
  antenna::ARICommandDriver::sendAccessoryReportARTD_sync(a1, &v14);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }
}

void sub_296DC0340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(va);
  _Unwind_Resume(a1);
}

void antenna::ARICommandDriver::speakerState_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDC8FD0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FD0]))
  {
    __p = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v44 = v7;
    v45 = v7;
    *block = v7;
    *&block[16] = v7;
    AriSdk::ARI_CsiIceSpeakerStateReq_SDK::ARI_CsiIceSpeakerStateReq_SDK(block);
    value = xpc_dictionary_get_value(*a2, v6);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v12 = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    v13 = operator new(4uLL);
    *v13 = v12;
    v14 = __p;
    __p = v13;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = *a3;
    if (*a3)
    {
      v15 = _Block_copy(v15);
    }

    v16 = *(a3 + 8);
    aBlock = v15;
    object = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    on_zero_shared = a1->__on_zero_shared;
    if (!on_zero_shared || (v18 = a1->~__shared_weak_count_0, (v19 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v20 = v19;
    p_shared_weak_owners = &v19->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v20);
    }

    v22 = a1[3].~__shared_weak_count_0;
    v47 = a1;
    v48 = v18;
    v49 = v20;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v50 = -183664640;
    if (aBlock)
    {
      v23 = _Block_copy(aBlock);
      v24 = object;
      v51 = v23;
      v52 = object;
      if (!object)
      {
LABEL_21:
        v25 = operator new(0x48uLL);
        v25->__shared_owners_ = 0;
        p_shared_owners = &v25->__shared_owners_;
        v25->__shared_weak_owners_ = 0;
        v25->__vftable = &unk_2A1E0CD60;
        v25[1].__vftable = a1;
        v25[1].__shared_owners_ = v18;
        v25[1].__shared_weak_owners_ = v20;
        v48 = 0;
        v49 = 0;
        LODWORD(v25[2].__vftable) = -183664640;
        v25[2].__shared_owners_ = v23;
        v25[2].__shared_weak_owners_ = v24;
        v51 = 0;
        v52 = 0;
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 1174405120;
        *&v60 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk31ARI_CsiIceSpeakerStateRspCb_SDKENS5_29ARI_CsiIceSpeakerStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
        *(&v60 + 1) = &__block_descriptor_tmp_58;
        v61 = &v25[1];
        v62 = v25;
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v54 = MEMORY[0x29EDCA5F8];
        v55 = 0x40000000;
        v56 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
        v57 = &unk_29EE5BAB0;
        v58 = buf;
        v27 = _Block_copy(&v54);
        v28 = v62;
        if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_25:
            *&v29 = 0xAAAAAAAAAAAAAAAALL;
            *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *buf = v29;
            v60 = v29;
            v61 = 0xAAAAAAAAAAAAAAAALL;
            v30 = *(v22 + 2);
            v54 = *(v22 + 1);
            if (v30)
            {
              v55 = std::__shared_weak_count::lock(v30);
              if (v55)
              {
                ice::SendMsgBaseProxy::SendMsgBaseProxy();
                v31 = v55;
                if (v55 && !atomic_fetch_add((v55 + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v31->__on_zero_shared)(v31);
                  std::__shared_weak_count::__release_weak(v31);
                }

                v53 = v27;
                ice::SendMsgBaseProxy::callback();
                if (v53)
                {
                  _Block_release(v53);
                }

                MEMORY[0x29C263BF0](buf);
                if (v52)
                {
                  dispatch_release(v52);
                }

                if (v51)
                {
                  _Block_release(v51);
                }

                if (v49)
                {
                  std::__shared_weak_count::__release_weak(v49);
                }

                std::__shared_weak_count::__release_weak(v20);
                if (object)
                {
                  dispatch_release(object);
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                MEMORY[0x29C264890](block);
                goto LABEL_58;
              }
            }

            else
            {
              v55 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_25;
        }

        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
        goto LABEL_25;
      }
    }

    else
    {
      v23 = 0;
      v24 = object;
      v51 = 0;
      v52 = object;
      if (!object)
      {
        goto LABEL_21;
      }
    }

    dispatch_retain(v24);
    goto LABEL_21;
  }

  v9 = a1[1].~__shared_weak_count;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v35 = MEMORY[0x29C2663D0](*a2);
    memset(block, 170, 24);
    v36 = strlen(v35);
    if (v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v37 = v36;
    if (v36 >= 0x17)
    {
      if ((v36 | 7) == 0x17)
      {
        v39 = 25;
      }

      else
      {
        v39 = (v36 | 7) + 1;
      }

      v38 = operator new(v39);
      *&block[8] = v37;
      *&block[16] = v39 | 0x8000000000000000;
      *block = v38;
    }

    else
    {
      block[23] = v36;
      v38 = block;
      if (!v36)
      {
        goto LABEL_68;
      }
    }

    memcpy(v38, v35, v37);
LABEL_68:
    v38[v37] = 0;
    free(v35);
    v40 = block;
    if (block[23] < 0)
    {
      v40 = *block;
    }

    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", buf, 0xCu);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
    }
  }

  v10 = xpc_null_create();
  if (*a3)
  {
    v11 = _Block_copy(*a3);
  }

  else
  {
    v11 = 0;
  }

  v32 = *(a3 + 8);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 1174405120;
  *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  *&block[24] = &__block_descriptor_tmp_36_0;
  if (!v11)
  {
    LOBYTE(v45) = 0;
    v44[0] = 0;
    v44[1] = v10;
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_52:
    v44[1] = xpc_null_create();
    goto LABEL_53;
  }

  v33 = _Block_copy(v11);
  LOBYTE(v45) = 0;
  v44[0] = v33;
  v44[1] = v10;
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_50:
  xpc_retain(v10);
LABEL_53:
  dispatch_async(v32, block);
  xpc_release(v44[1]);
  v44[1] = 0;
  if (v44[0])
  {
    _Block_release(v44[0]);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  xpc_release(v10);
LABEL_58:
  v34 = *MEMORY[0x29EDCA608];
}

void sub_296DC09D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::ARICommandDriver::handDetectionState_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDC9028];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9028]))
  {
    __p = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v44 = v7;
    v45 = v7;
    *block = v7;
    *&block[16] = v7;
    AriSdk::ARI_CsiIceGripStateReq_SDK::ARI_CsiIceGripStateReq_SDK(block);
    value = xpc_dictionary_get_value(*a2, v6);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v12 = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    v13 = operator new(4uLL);
    *v13 = v12;
    v14 = __p;
    __p = v13;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = *a3;
    if (*a3)
    {
      v15 = _Block_copy(v15);
    }

    v16 = *(a3 + 8);
    aBlock = v15;
    object = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    on_zero_shared = a1->__on_zero_shared;
    if (!on_zero_shared || (v18 = a1->~__shared_weak_count_0, (v19 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v20 = v19;
    p_shared_weak_owners = &v19->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v20);
    }

    v22 = a1[3].~__shared_weak_count_0;
    v47 = a1;
    v48 = v18;
    v49 = v20;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v50 = -183599104;
    if (aBlock)
    {
      v23 = _Block_copy(aBlock);
      v24 = object;
      v51 = v23;
      v52 = object;
      if (!object)
      {
LABEL_21:
        v25 = operator new(0x48uLL);
        v25->__shared_owners_ = 0;
        p_shared_owners = &v25->__shared_owners_;
        v25->__shared_weak_owners_ = 0;
        v25->__vftable = &unk_2A1E0CDE0;
        v25[1].__vftable = a1;
        v25[1].__shared_owners_ = v18;
        v25[1].__shared_weak_owners_ = v20;
        v48 = 0;
        v49 = 0;
        LODWORD(v25[2].__vftable) = -183599104;
        v25[2].__shared_owners_ = v23;
        v25[2].__shared_weak_owners_ = v24;
        v51 = 0;
        v52 = 0;
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 1174405120;
        *&v60 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceGripStateRspCb_SDKENS5_26ARI_CsiIceGripStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
        *(&v60 + 1) = &__block_descriptor_tmp_61;
        v61 = &v25[1];
        v62 = v25;
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v54 = MEMORY[0x29EDCA5F8];
        v55 = 0x40000000;
        v56 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
        v57 = &unk_29EE5BAB0;
        v58 = buf;
        v27 = _Block_copy(&v54);
        v28 = v62;
        if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_25:
            *&v29 = 0xAAAAAAAAAAAAAAAALL;
            *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *buf = v29;
            v60 = v29;
            v61 = 0xAAAAAAAAAAAAAAAALL;
            v30 = *(v22 + 2);
            v54 = *(v22 + 1);
            if (v30)
            {
              v55 = std::__shared_weak_count::lock(v30);
              if (v55)
              {
                ice::SendMsgBaseProxy::SendMsgBaseProxy();
                v31 = v55;
                if (v55 && !atomic_fetch_add((v55 + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v31->__on_zero_shared)(v31);
                  std::__shared_weak_count::__release_weak(v31);
                }

                v53 = v27;
                ice::SendMsgBaseProxy::callback();
                if (v53)
                {
                  _Block_release(v53);
                }

                MEMORY[0x29C263BF0](buf);
                if (v52)
                {
                  dispatch_release(v52);
                }

                if (v51)
                {
                  _Block_release(v51);
                }

                if (v49)
                {
                  std::__shared_weak_count::__release_weak(v49);
                }

                std::__shared_weak_count::__release_weak(v20);
                if (object)
                {
                  dispatch_release(object);
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                MEMORY[0x29C2642B0](block);
                goto LABEL_58;
              }
            }

            else
            {
              v55 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_25;
        }

        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
        goto LABEL_25;
      }
    }

    else
    {
      v23 = 0;
      v24 = object;
      v51 = 0;
      v52 = object;
      if (!object)
      {
        goto LABEL_21;
      }
    }

    dispatch_retain(v24);
    goto LABEL_21;
  }

  v9 = a1[1].~__shared_weak_count;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v35 = MEMORY[0x29C2663D0](*a2);
    memset(block, 170, 24);
    v36 = strlen(v35);
    if (v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v37 = v36;
    if (v36 >= 0x17)
    {
      if ((v36 | 7) == 0x17)
      {
        v39 = 25;
      }

      else
      {
        v39 = (v36 | 7) + 1;
      }

      v38 = operator new(v39);
      *&block[8] = v37;
      *&block[16] = v39 | 0x8000000000000000;
      *block = v38;
    }

    else
    {
      block[23] = v36;
      v38 = block;
      if (!v36)
      {
        goto LABEL_68;
      }
    }

    memcpy(v38, v35, v37);
LABEL_68:
    v38[v37] = 0;
    free(v35);
    v40 = block;
    if (block[23] < 0)
    {
      v40 = *block;
    }

    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", buf, 0xCu);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
    }
  }

  v10 = xpc_null_create();
  if (*a3)
  {
    v11 = _Block_copy(*a3);
  }

  else
  {
    v11 = 0;
  }

  v32 = *(a3 + 8);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 1174405120;
  *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  *&block[24] = &__block_descriptor_tmp_36_0;
  if (!v11)
  {
    LOBYTE(v45) = 0;
    v44[0] = 0;
    v44[1] = v10;
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_52:
    v44[1] = xpc_null_create();
    goto LABEL_53;
  }

  v33 = _Block_copy(v11);
  LOBYTE(v45) = 0;
  v44[0] = v33;
  v44[1] = v10;
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_50:
  xpc_retain(v10);
LABEL_53:
  dispatch_async(v32, block);
  xpc_release(v44[1]);
  v44[1] = 0;
  if (v44[0])
  {
    _Block_release(v44[0]);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  xpc_release(v10);
LABEL_58:
  v34 = *MEMORY[0x29EDCA608];
}

void sub_296DC1144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::ARICommandDriver::powerSourceState_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDC8FF0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FF0]))
  {
    __p = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v44 = v7;
    v45 = v7;
    *block = v7;
    *&block[16] = v7;
    AriSdk::ARI_CsiIcePowerSourceStateReq_SDK::ARI_CsiIcePowerSourceStateReq_SDK(block);
    value = xpc_dictionary_get_value(*a2, v6);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v12 = xpc::dyn_cast_or_default();
    v13 = operator new(4uLL);
    *v13 = v12;
    v14 = __p;
    __p = v13;
    if (v14)
    {
      operator delete(v14);
    }

    xpc_release(*buf);
    v15 = *a3;
    if (*a3)
    {
      v15 = _Block_copy(v15);
    }

    v16 = *(a3 + 8);
    aBlock = v15;
    object = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    on_zero_shared = a1->__on_zero_shared;
    if (!on_zero_shared || (v18 = a1->~__shared_weak_count_0, (v19 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v20 = v19;
    p_shared_weak_owners = &v19->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v20);
    }

    v22 = a1[3].~__shared_weak_count_0;
    v47 = a1;
    v48 = v18;
    v49 = v20;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v50 = -183533568;
    if (aBlock)
    {
      v23 = _Block_copy(aBlock);
      v24 = object;
      v51 = v23;
      v52 = object;
      if (!object)
      {
LABEL_21:
        v25 = operator new(0x48uLL);
        v25->__shared_owners_ = 0;
        p_shared_owners = &v25->__shared_owners_;
        v25->__shared_weak_owners_ = 0;
        v25->__vftable = &unk_2A1E0CE60;
        v25[1].__vftable = a1;
        v25[1].__shared_owners_ = v18;
        v25[1].__shared_weak_owners_ = v20;
        v48 = 0;
        v49 = 0;
        LODWORD(v25[2].__vftable) = -183533568;
        v25[2].__shared_owners_ = v23;
        v25[2].__shared_weak_owners_ = v24;
        v51 = 0;
        v52 = 0;
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 1174405120;
        *&v60 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_CsiIcePowerSourceStateRspCb_SDKENS5_33ARI_CsiIcePowerSourceStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
        *(&v60 + 1) = &__block_descriptor_tmp_64_1;
        v61 = &v25[1];
        v62 = v25;
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v54 = MEMORY[0x29EDCA5F8];
        v55 = 0x40000000;
        v56 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
        v57 = &unk_29EE5BAB0;
        v58 = buf;
        v27 = _Block_copy(&v54);
        v28 = v62;
        if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_25:
            *&v29 = 0xAAAAAAAAAAAAAAAALL;
            *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *buf = v29;
            v60 = v29;
            v61 = 0xAAAAAAAAAAAAAAAALL;
            v30 = *(v22 + 2);
            v54 = *(v22 + 1);
            if (v30)
            {
              v55 = std::__shared_weak_count::lock(v30);
              if (v55)
              {
                ice::SendMsgBaseProxy::SendMsgBaseProxy();
                v31 = v55;
                if (v55 && !atomic_fetch_add((v55 + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v31->__on_zero_shared)(v31);
                  std::__shared_weak_count::__release_weak(v31);
                }

                v53 = v27;
                ice::SendMsgBaseProxy::callback();
                if (v53)
                {
                  _Block_release(v53);
                }

                MEMORY[0x29C263BF0](buf);
                if (v52)
                {
                  dispatch_release(v52);
                }

                if (v51)
                {
                  _Block_release(v51);
                }

                if (v49)
                {
                  std::__shared_weak_count::__release_weak(v49);
                }

                std::__shared_weak_count::__release_weak(v20);
                if (object)
                {
                  dispatch_release(object);
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                MEMORY[0x29C265090](block);
                goto LABEL_58;
              }
            }

            else
            {
              v55 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_25;
        }

        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
        goto LABEL_25;
      }
    }

    else
    {
      v23 = 0;
      v24 = object;
      v51 = 0;
      v52 = object;
      if (!object)
      {
        goto LABEL_21;
      }
    }

    dispatch_retain(v24);
    goto LABEL_21;
  }

  v9 = a1[1].~__shared_weak_count;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v35 = MEMORY[0x29C2663D0](*a2);
    memset(block, 170, 24);
    v36 = strlen(v35);
    if (v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v37 = v36;
    if (v36 >= 0x17)
    {
      if ((v36 | 7) == 0x17)
      {
        v39 = 25;
      }

      else
      {
        v39 = (v36 | 7) + 1;
      }

      v38 = operator new(v39);
      *&block[8] = v37;
      *&block[16] = v39 | 0x8000000000000000;
      *block = v38;
    }

    else
    {
      block[23] = v36;
      v38 = block;
      if (!v36)
      {
        goto LABEL_68;
      }
    }

    memcpy(v38, v35, v37);
LABEL_68:
    v38[v37] = 0;
    free(v35);
    v40 = block;
    if (block[23] < 0)
    {
      v40 = *block;
    }

    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "Missing mandatory TLV. args: %s", buf, 0xCu);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
    }
  }

  v10 = xpc_null_create();
  if (*a3)
  {
    v11 = _Block_copy(*a3);
  }

  else
  {
    v11 = 0;
  }

  v32 = *(a3 + 8);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 1174405120;
  *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  *&block[24] = &__block_descriptor_tmp_36_0;
  if (!v11)
  {
    LOBYTE(v45) = 0;
    v44[0] = 0;
    v44[1] = v10;
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_52:
    v44[1] = xpc_null_create();
    goto LABEL_53;
  }

  v33 = _Block_copy(v11);
  LOBYTE(v45) = 0;
  v44[0] = v33;
  v44[1] = v10;
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_50:
  xpc_retain(v10);
LABEL_53:
  dispatch_async(v32, block);
  xpc_release(v44[1]);
  v44[1] = 0;
  if (v44[0])
  {
    _Block_release(v44[0]);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  xpc_release(v10);
LABEL_58:
  v34 = *MEMORY[0x29EDCA608];
}

void sub_296DC18AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::ARICommandDriver::cpmsPowerLevel_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDC9008];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9008]))
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v31 = v7;
    v32 = v7;
    v29 = v7;
    *__p = v7;
    v27 = v7;
    *aBlock = v7;
    block = v7;
    AriSdk::ARI_CsiIceCltmReq_SDK::ARI_CsiIceCltmReq_SDK(&block);
    v8 = operator new(4uLL);
    *v8 = 0x7FFF;
    v9 = __p[0];
    __p[0] = v8;
    if (v9)
    {
      operator delete(v9);
    }

    v10 = operator new(4uLL);
    *v10 = 0x7FFF;
    v11 = __p[1];
    __p[1] = v10;
    if (v11)
    {
      operator delete(v11);
    }

    value = xpc_dictionary_get_value(*a2, v6);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v16 = xpc::dyn_cast_or_default();
    v17 = operator new(4uLL);
    *v17 = v16;
    v18 = v31[0];
    v31[0] = v17;
    if (v18)
    {
      operator delete(v18);
    }

    xpc_release(object);
    if (*a3)
    {
      v19 = _Block_copy(*a3);
      v20 = *(a3 + 8);
      v23 = v19;
      v24 = v20;
      if (!v20)
      {
LABEL_18:
        antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(a1, &block, &v23);
        if (v20)
        {
          dispatch_release(v20);
        }

        if (v19)
        {
          _Block_release(v19);
        }

        MEMORY[0x29C263DF0](&block);
        return;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(a3 + 8);
      v23 = 0;
      v24 = v20;
      if (!v20)
      {
        goto LABEL_18;
      }
    }

    dispatch_retain(v20);
    goto LABEL_18;
  }

  v13 = a1[1].~__shared_weak_count;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(block) = 0;
    _os_log_error_impl(&dword_296D7D000, v13, OS_LOG_TYPE_ERROR, "CPMS Power Level argument is missing!", &block, 2u);
  }

  v14 = xpc_null_create();
  if (*a3)
  {
    v15 = _Block_copy(*a3);
  }

  else
  {
    v15 = 0;
  }

  v21 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v27 = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_36_0;
  if (!v15)
  {
    LOBYTE(v29) = 0;
    aBlock[0] = 0;
    aBlock[1] = v14;
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_30:
    aBlock[1] = xpc_null_create();
    goto LABEL_31;
  }

  v22 = _Block_copy(v15);
  LOBYTE(v29) = 0;
  aBlock[0] = v22;
  aBlock[1] = v14;
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_28:
  xpc_retain(v14);
LABEL_31:
  dispatch_async(v21, &block);
  xpc_release(aBlock[1]);
  aBlock[1] = 0;
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v14);
}

void sub_296DC1C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(va);
  MEMORY[0x29C263DF0](va1);
  _Unwind_Resume(a1);
}

void antenna::ARICommandDriver::sendSensorID(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_296D7D000, v1, OS_LOG_TYPE_ERROR, "Not implemented for this product", v2, 2u);
  }
}

uint64_t antenna::ARICommandDriver::stewieSARWaitTime(std::__shared_weak_count_vtbl *a1, uint64_t a2, uint64_t a3)
{
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[2] = v6;
  v29[3] = v6;
  v29[0] = v6;
  v29[1] = v6;
  AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK::ARI_IBIStwSarBackoffTimeReq_SDK(v29);
  v7 = operator new(8uLL);
  *v7 = a2;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *a3;
  if (*a3)
  {
    v9 = _Block_copy(v9);
  }

  v10 = *(a3 + 8);
  aBlock = v9;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v12 = a1->~__shared_weak_count_0, (v13 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  p_shared_weak_owners = &v13->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v14);
  }

  v16 = a1[3].~__shared_weak_count_0;
  v31 = a1;
  v32 = v12;
  v33 = v14;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v34 = -653262848;
  if (!aBlock)
  {
    v17 = 0;
    v18 = object;
    v35 = 0;
    v36 = object;
    if (!object)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = _Block_copy(aBlock);
  v18 = object;
  v35 = v17;
  v36 = object;
  if (object)
  {
LABEL_13:
    dispatch_retain(v18);
  }

LABEL_14:
  v19 = operator new(0x48uLL);
  v19->__shared_owners_ = 0;
  p_shared_owners = &v19->__shared_owners_;
  v19->__shared_weak_owners_ = 0;
  v19->__vftable = &unk_2A1E0CEE0;
  v19[1].__vftable = a1;
  v19[1].__shared_owners_ = v12;
  v19[1].__shared_weak_owners_ = v14;
  v32 = 0;
  v33 = 0;
  LODWORD(v19[2].__vftable) = -653262848;
  v19[2].__shared_owners_ = v17;
  v19[2].__shared_weak_owners_ = v18;
  v35 = 0;
  v36 = 0;
  *&v38 = MEMORY[0x29EDCA5F8];
  *(&v38 + 1) = 1174405120;
  *&v39 = ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_IBIStwSarBackoffTimeRspCb_SDKENS5_31ARI_IBIStwSarBackoffTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v39 + 1) = &__block_descriptor_tmp_67;
  v40 = &v19[1];
  v41 = v19;
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  v42 = MEMORY[0x29EDCA5F8];
  v43 = 0x40000000;
  v44 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  v45 = &unk_29EE5BAB0;
  v46 = &v38;
  v21 = _Block_copy(&v42);
  v22 = v41;
  if (!v41 || atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_18:
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v23;
  v39 = v23;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v24 = *(v16 + 2);
  v42 = *(v16 + 1);
  if (!v24)
  {
    v43 = 0;
LABEL_42:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v43 = std::__shared_weak_count::lock(v24);
  if (!v43)
  {
    goto LABEL_42;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v25 = v43;
  if (v43 && !atomic_fetch_add((v43 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v37 = v21;
  ice::SendMsgBaseProxy::callback();
  if (v37)
  {
    _Block_release(v37);
  }

  MEMORY[0x29C263BF0](&v38);
  if (v36)
  {
    dispatch_release(v36);
  }

  if (v35)
  {
    _Block_release(v35);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  std::__shared_weak_count::__release_weak(v14);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return MEMORY[0x29C264E40](v29);
}

void sub_296DC2174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a27);
  antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK,AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK>(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(&a20);
  std::__shared_weak_count::__release_weak(v27);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a9);
  MEMORY[0x29C264E40](&a11);
  _Unwind_Resume(a1);
}

void sub_296DC2200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a9);
  MEMORY[0x29C264E40](&a11);
  _Unwind_Resume(a1);
}

void antenna::ARICommandDriver::getNVItems(uint64_t a1, uint64_t a2)
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
  v13[2] = ___ZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS_7NVItemsEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_3_1;
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

  ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped(v5, v13);
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

uint64_t ___ZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS_7NVItemsEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[2] = v3;
  v22[3] = v3;
  v22[0] = v3;
  v22[1] = v3;
  AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK::ARI_FactoryGetNvItemsSettingReq_SDK(v22);
  v4 = *(v2 + 128);
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
  v10->__vftable = &unk_2A1E0CF60;
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
  v25 = ___ZN3ice6detail12wrapCallbackIZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS2_7NVItemsEEEEEUb0_E3__7vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v26 = &__block_descriptor_tmp_70;
  v27 = v10 + 1;
  v28 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_5;
  aBlock[3] = &unk_29EE5BAB0;
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

  return MEMORY[0x29C265340](v22);
}

void sub_296DC26D4(_Unwind_Exception *a1, uint64_t a2, ...)
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
  _ZZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS_7NVItemsEEEEEUb0_EN3__7D1Ev(va);
  MEMORY[0x29C265340](va2);
  _Unwind_Resume(a1);
}

void sub_296DC2708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  if (v30)
  {
    _Block_release(v30);
  }

  _ZZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS_7NVItemsEEEEEUb0_EN3__7D1Ev(&a10);
  MEMORY[0x29C265340](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN7antenna16ARICommandDriver10getNVItemsEN8dispatch8callbackIU13block_pointerFvbNS_7NVItemsEEEEEUb0_EN3__7D1Ev(void *a1)
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

void __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE56c64_ZTSN8dispatch8callbackIU13block_pointerFvbN7antenna7NVItemsEEEE(void *a1, void *a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE56c64_ZTSN8dispatch8callbackIU13block_pointerFvbN7antenna7NVItemsEEEE(void *a1)
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

uint64_t antenna::ARICommandDriver::convertNVItems(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  else
  {
    return dword_296E22CF0[a2];
  }
}

atomic_ullong *std::shared_ptr<antenna::ARICommandDriver>::shared_ptr[abi:ne200100]<antenna::ARICommandDriver,std::shared_ptr<antenna::ARICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::ARICommandDriver>(antenna::ARICommandDriver*)::{lambda(antenna::ARICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0C578;
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

void sub_296DC29C8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<antenna::ARICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::ARICommandDriver>(antenna::ARICommandDriver*)::{lambda(antenna::ARICommandDriver*)#1}::operator() const(antenna::ARICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<antenna::ARICommandDriver *,std::shared_ptr<antenna::ARICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::ARICommandDriver>(antenna::ARICommandDriver*)::{lambda(antenna::ARICommandDriver *)#1},std::allocator<antenna::ARICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<antenna::ARICommandDriver *,std::shared_ptr<antenna::ARICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::ARICommandDriver>(antenna::ARICommandDriver*)::{lambda(antenna::ARICommandDriver *)#1},std::allocator<antenna::ARICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<antenna::ARICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::ARICommandDriver>(antenna::ARICommandDriver*)::{lambda(antenna::ARICommandDriver*)#1}::operator() const(antenna::ARICommandDriver*)::{lambda(void *)#1}::__invoke(antenna::ARICommandDriver *a1)
{
  if (a1)
  {
    antenna::ARICommandDriver::~ARICommandDriver(a1);

    operator delete(v1);
  }
}

void ___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__0vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(*v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D ICE Client has been started!", v3, 2u);
    }
  }
}

uint64_t __copy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7antenna16ARICommandDriver4initEvEUb_E3__0NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C5F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__1vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = *v1;
    v3 = *(*v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D ICE Client has been stopped!", v4, 2u);
      result = *(v2 + 88);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *(v2 + 88);
      if (!result)
      {
        return result;
      }
    }

    return (*(*result + 16))(result, 0, 4);
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__1EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7antenna16ARICommandDriver4initEvEUb_E3__1NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__2vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(*v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D ICE Client is entering low power!", v3, 2u);
    }
  }
}

uint64_t __copy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__2EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7antenna16ARICommandDriver4initEvEUb_E3__2NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C6F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__3vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(*v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D ICE Client is exiting low power!", v3, 2u);
    }
  }
}

uint64_t __copy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__3EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c71_ZTSNSt3__110shared_ptrIZZN7antenna16ARICommandDriver4initEvEUb_E3__3EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7antenna16ARICommandDriver4initEvEUb_E3__3NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E0C7C0;
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

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>(antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,dispatch_queue_s::default_delete<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  memset(&__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*v2, *MEMORY[0x29EDC8FA8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = strlen(*MEMORY[0x29EDC9078]);
  v6 = v5;
  v7 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v5 != -1)
    {
      p_s1 = &__s1;
      size = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
      goto LABEL_9;
    }

LABEL_192:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v5 == -1)
  {
    goto LABEL_192;
  }

  size = __s1.__r_.__value_.__l.__size_;
  p_s1 = __s1.__r_.__value_.__r.__words[0];
LABEL_9:
  if (size >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = size;
  }

  if (!memcmp(p_s1, *MEMORY[0x29EDC9078], v10) && size == v6)
  {
    v17 = *(v2 + 16);
    if (v17)
    {
      v18 = _Block_copy(v17);
      v19 = *(v2 + 24);
      object = v18;
      v74 = v19;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(v2 + 24);
      object = 0;
      v74 = v19;
      if (!v19)
      {
LABEL_26:
        antenna::ARICommandDriver::txPowerCappingEnable_sync(v3, v2, &object);
        if (v19)
        {
          dispatch_release(v19);
        }

        if (v18)
        {
          goto LABEL_164;
        }

        goto LABEL_182;
      }
    }

    dispatch_retain(v19);
    goto LABEL_26;
  }

  v12 = *MEMORY[0x29EDC90F0];
  v13 = strlen(*MEMORY[0x29EDC90F0]);
  v14 = v13;
  if ((v7 & 0x80000000) == 0)
  {
    if (v13 != -1)
    {
      v15 = v7;
      if (v7 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v7;
      }

      if (memcmp(&__s1, v12, v16))
      {
        goto LABEL_43;
      }

LABEL_35:
      if (v15 != v14)
      {
        goto LABEL_43;
      }

      v21 = *(v2 + 16);
      if (v21)
      {
        v18 = _Block_copy(v21);
        v22 = *(v2 + 24);
        object = v18;
        v74 = v22;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v18 = 0;
        v22 = *(v2 + 24);
        object = 0;
        v74 = v22;
        if (!v22)
        {
LABEL_39:
          antenna::ARICommandDriver::transmitIndicationRegister_sync(v3, &object);
          if (v22)
          {
            dispatch_release(v22);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v22);
      goto LABEL_39;
    }

LABEL_193:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 == -1)
  {
    goto LABEL_193;
  }

  v15 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v12, v20))
  {
    goto LABEL_35;
  }

LABEL_43:
  v23 = *MEMORY[0x29EDC90C0];
  v24 = strlen(*MEMORY[0x29EDC90C0]);
  v25 = v24;
  if ((v7 & 0x80000000) == 0)
  {
    if (v24 != -1)
    {
      v26 = v7;
      if (v7 >= v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = v7;
      }

      if (memcmp(&__s1, v23, v27))
      {
        goto LABEL_65;
      }

LABEL_57:
      if (v26 != v25)
      {
        goto LABEL_65;
      }

      v29 = *(v2 + 16);
      if (v29)
      {
        v18 = _Block_copy(v29);
        v30 = *(v2 + 24);
        object = v18;
        v74 = v30;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v18 = 0;
        v30 = *(v2 + 24);
        object = 0;
        v74 = v30;
        if (!v30)
        {
LABEL_61:
          antenna::ARICommandDriver::transmitIndicationEnable_sync(v3, v2, &object);
          if (v30)
          {
            dispatch_release(v30);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v30);
      goto LABEL_61;
    }

LABEL_194:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v24 == -1)
  {
    goto LABEL_194;
  }

  v26 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v23, v28))
  {
    goto LABEL_57;
  }

LABEL_65:
  v31 = *MEMORY[0x29EDC9018];
  v32 = strlen(*MEMORY[0x29EDC9018]);
  v33 = v32;
  if ((v7 & 0x80000000) == 0)
  {
    if (v32 != -1)
    {
      v34 = v7;
      if (v7 >= v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = v7;
      }

      if (memcmp(&__s1, v31, v35))
      {
        goto LABEL_87;
      }

LABEL_79:
      if (v34 != v33)
      {
        goto LABEL_87;
      }

      v37 = *(v2 + 16);
      if (v37)
      {
        v18 = _Block_copy(v37);
        v38 = *(v2 + 24);
        object = v18;
        v74 = v38;
        if (!v38)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v18 = 0;
        v38 = *(v2 + 24);
        object = 0;
        v74 = v38;
        if (!v38)
        {
LABEL_83:
          antenna::ARICommandDriver::txPowerCapping_sync(v3, v2, &object);
          if (v38)
          {
            dispatch_release(v38);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }
      }

      dispatch_retain(v38);
      goto LABEL_83;
    }

LABEL_195:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v32 == -1)
  {
    goto LABEL_195;
  }

  v34 = __s1.__r_.__value_.__l.__size_;
  if (__s1.__r_.__value_.__l.__size_ >= v32)
  {
    v36 = v32;
  }

  else
  {
    v36 = __s1.__r_.__value_.__l.__size_;
  }

  if (!memcmp(__s1.__r_.__value_.__l.__data_, v31, v36))
  {
    goto LABEL_79;
  }

LABEL_87:
  v39 = *MEMORY[0x29EDC9080];
  v40 = strlen(*MEMORY[0x29EDC9080]);
  v41 = v40;
  if ((v7 & 0x80000000) != 0)
  {
    if (v40 != -1)
    {
      v42 = __s1.__r_.__value_.__l.__size_;
      if (__s1.__r_.__value_.__l.__size_ >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = __s1.__r_.__value_.__l.__size_;
      }

      if (memcmp(__s1.__r_.__value_.__l.__data_, v39, v44))
      {
        goto LABEL_104;
      }

      goto LABEL_101;
    }

LABEL_196:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v40 == -1)
  {
    goto LABEL_196;
  }

  v42 = v7;
  if (v7 >= v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = v7;
  }

  if (memcmp(&__s1, v39, v43))
  {
    goto LABEL_104;
  }

LABEL_101:
  if (v42 == v41)
  {
    v45 = *(v2 + 16);
    if (v45)
    {
      v18 = _Block_copy(v45);
    }

    else
    {
      v18 = 0;
    }

    v56 = *(v2 + 24);
    object = v18;
    v74 = v56;
    if (v56)
    {
      dispatch_retain(v56);
    }

    antenna::ARICommandDriver::txPowerConfiguration_sync(v3, v2, &object);
    if (v56)
    {
      dispatch_release(v56);
    }

    if (v18)
    {
      goto LABEL_164;
    }

    goto LABEL_182;
  }

LABEL_104:
  v46 = strlen(*MEMORY[0x29EDC90B8]);
  v47 = v46;
  if ((v7 & 0x80000000) == 0)
  {
    if (v46 != -1)
    {
      v48 = &__s1;
      v49 = v7;
      goto LABEL_111;
    }

LABEL_197:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v46 == -1)
  {
    goto LABEL_197;
  }

  v49 = __s1.__r_.__value_.__l.__size_;
  v48 = __s1.__r_.__value_.__r.__words[0];
LABEL_111:
  if (v49 >= v47)
  {
    v50 = v47;
  }

  else
  {
    v50 = v49;
  }

  if (memcmp(v48, *MEMORY[0x29EDC90B8], v50) || v49 != v47)
  {
    v52 = strlen(*MEMORY[0x29EDC90C8]);
    v53 = v52;
    if ((v7 & 0x80000000) != 0)
    {
      if (v52 != -1)
      {
        v55 = __s1.__r_.__value_.__l.__size_;
        v54 = __s1.__r_.__value_.__r.__words[0];
LABEL_130:
        if (v55 >= v53)
        {
          v57 = v53;
        }

        else
        {
          v57 = v55;
        }

        if (!memcmp(v54, *MEMORY[0x29EDC90C8], v57) && v55 == v53)
        {
          v58 = *(v2 + 16);
          if (v58)
          {
            v18 = _Block_copy(v58);
          }

          else
          {
            v18 = 0;
          }

          v68 = *(v2 + 24);
          object = v18;
          v74 = v68;
          if (v68)
          {
            dispatch_retain(v68);
          }

          antenna::ARICommandDriver::e75AccessoryStatusARTD_sync(v3, v2, &object);
          if (v68)
          {
            dispatch_release(v68);
          }

          if (v18)
          {
            goto LABEL_164;
          }

          goto LABEL_182;
        }

        v59 = strlen(*MEMORY[0x29EDC8FF8]);
        v60 = v59;
        if ((v7 & 0x80000000) != 0)
        {
          if (v59 != -1)
          {
            v62 = __s1.__r_.__value_.__l.__size_;
            v61 = __s1.__r_.__value_.__r.__words[0];
LABEL_149:
            if (v62 >= v60)
            {
              v64 = v60;
            }

            else
            {
              v64 = v62;
            }

            if (!memcmp(v61, *MEMORY[0x29EDC8FF8], v64) && v62 == v60)
            {
              dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
              antenna::ARICommandDriver::videoAccessoryStatus_sync(v3, v2, &object);
LABEL_181:
              dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&object);
              goto LABEL_182;
            }

            v65 = strlen(*MEMORY[0x29EDC9098]);
            v66 = v65;
            if ((v7 & 0x80000000) != 0)
            {
              if (v65 != -1)
              {
                v7 = __s1.__r_.__value_.__l.__size_;
                v67 = __s1.__r_.__value_.__r.__words[0];
LABEL_167:
                if (v7 >= v66)
                {
                  v69 = v66;
                }

                else
                {
                  v69 = v7;
                }

                if (!memcmp(v67, *MEMORY[0x29EDC9098], v69) && v7 == v66)
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::ARICommandDriver::wiredPortNotification_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC8FE0]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::ARICommandDriver::speakerState_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC9068]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::ARICommandDriver::handDetectionState_sync(v3, v2, &object);
                }

                else if (!std::string::compare(&__s1, *MEMORY[0x29EDC9048]))
                {
                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::ARICommandDriver::powerSourceState_sync(v3, v2, &object);
                }

                else
                {
                  if (std::string::compare(&__s1, *MEMORY[0x29EDC9090]))
                  {
                    goto LABEL_182;
                  }

                  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(&object, v2 + 16);
                  antenna::ARICommandDriver::cpmsPowerLevel_sync(v3, v2, &object);
                }

                goto LABEL_181;
              }
            }

            else if (v65 != -1)
            {
              v67 = &__s1;
              goto LABEL_167;
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else if (v59 != -1)
        {
          v61 = &__s1;
          v62 = v7;
          goto LABEL_149;
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else if (v52 != -1)
    {
      v54 = &__s1;
      v55 = v7;
      goto LABEL_130;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v51 = *(v2 + 16);
  if (v51)
  {
    v18 = _Block_copy(v51);
  }

  else
  {
    v18 = 0;
  }

  v63 = *(v2 + 24);
  object = v18;
  v74 = v63;
  if (v63)
  {
    dispatch_retain(v63);
  }

  antenna::ARICommandDriver::e75AccessoryStatusRF_sync(v3, v2, &object);
  if (v63)
  {
    dispatch_release(v63);
  }

  if (v18)
  {
LABEL_164:
    _Block_release(v18);
  }

LABEL_182:
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  v70 = *(v2 + 24);
  if (v70)
  {
    dispatch_release(v70);
  }

  v71 = *(v2 + 16);
  if (v71)
  {
    _Block_release(v71);
  }

  xpc_release(*v2);
  operator delete(v2);
  v72 = a1[2];
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
  }

  operator delete(a1);
}

void sub_296DC3BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&object);
  if (a19 < 0)
  {
    operator delete(__p);
    std::unique_ptr<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<antenna::ARICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*v2);
    operator delete(v2);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceSarEnableRspCb_SDKENS5_26ARI_CsiIceSarEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceSarEnableRspCb_SDK::ARI_CsiIceSarEnableRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C264680](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C264680](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC3FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c207_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceSarEnableRspCb_SDKENS4_26ARI_CsiIceSarEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c207_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceSarEnableRspCb_SDKENS4_26ARI_CsiIceSarEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarEnableRspCb_SDK,AriSdk::ARI_CsiIceSarEnableReq_SDK>(AriSdk::ARI_CsiIceSarEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

uint64_t ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *v2;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[2] = v4;
    v10[3] = v4;
    v10[0] = v4;
    v10[1] = v4;
    AriSdk::ARI_CsiIceBBTxStateInd_SDK::ARI_CsiIceBBTxStateInd_SDK(v10, a2);
    GMID = AriSdk::MsgBase::getGMID(v10);
    if (ice::isARIResponseValid())
    {
      if (!AriSdk::ARI_CsiIceBBTxStateInd_SDK::unpack(v10))
      {
        v6 = *v11;
        if (antenna::CommandDriver::convertModeToState() <= 1)
        {
          v7 = *(v3 + 88);
          if (v7)
          {
            (*(*v7 + 16))(v7);
          }
        }
      }
    }

    else
    {
      v8 = *(v3 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v13 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
        v14 = 1024;
        v15 = -175800320;
        _os_log_error_impl(&dword_296D7D000, v8, OS_LOG_TYPE_ERROR, "Got unexpected message 0x%0x, expected CsiIceBBTxStateInd (0x%0x)", buf, 0xEu);
      }
    }

    result = MEMORY[0x29C264290](v10);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<antenna::ARICommandDriver::transmitIndicationRegister_sync(dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::$_0,std::allocator<antenna::ARICommandDriver::transmitIndicationRegister_sync(dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__1vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *v2;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[3] = v4;
    v10 = v4;
    v9[1] = v4;
    v9[2] = v4;
    v9[0] = v4;
    AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK::ARI_IBICallPsTransmitStateIndCb_SDK(v9, a2);
    GMID = AriSdk::MsgBase::getGMID(v9);
    if (ice::isARIResponseValid())
    {
      if (!AriSdk::ARI_IBICallPsTransmitStateIndCb_SDK::unpack(v9))
      {
        v6 = *(v3 + 88);
        if (v6)
        {
          (*(*v6 + 16))(v6, **(&v10 + 1), *v11);
        }
      }
    }

    else
    {
      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v13 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
        v14 = 1024;
        v15 = 227016704;
        _os_log_error_impl(&dword_296D7D000, v7, OS_LOG_TYPE_ERROR, "Got unexpected message 0x%0x, expected IBICallPsTransmitStateIndCb (0x%0x)", buf, 0xEu);
      }
    }

    result = MEMORY[0x29C265390](v9);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__1EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<antenna::ARICommandDriver::transmitIndicationRegister_sync(dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::$_1,std::allocator<antenna::ARICommandDriver::transmitIndicationRegister_sync(dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c56_ZTSN8dispatch5blockIU13block_pointerFvbN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c56_ZTSN8dispatch5blockIU13block_pointerFvbN3xpc6objectEEEE40c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceBBTxStateIndEnableRspCb_SDKENS5_35ARI_CsiIceBBTxStateIndEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK::ARI_CsiIceBBTxStateIndEnableRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C265490](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C265490](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC4CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c225_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceBBTxStateIndEnableRspCb_SDKENS4_35ARI_CsiIceBBTxStateIndEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c225_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceBBTxStateIndEnableRspCb_SDKENS4_35ARI_CsiIceBBTxStateIndEnableReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C9E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK,AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK>(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_IBICallPsTransmitStateRspCb_SDKENS5_33ARI_IBICallPsTransmitStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
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
  AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK::ARI_IBICallPsTransmitStateRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C2653B0](v26);
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v28;
  MEMORY[0x29C2653B0](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC530C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c221_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_IBICallPsTransmitStateRspCb_SDKENS4_33ARI_IBICallPsTransmitStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c221_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_IBICallPsTransmitStateRspCb_SDKENS4_33ARI_IBICallPsTransmitStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CA60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_IBICallPsTransmitStateRspCb_SDK,AriSdk::ARI_IBICallPsTransmitStateReq_SDK>(AriSdk::ARI_IBICallPsTransmitStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk22ARI_CsiIceSarRspCb_SDKENS5_20ARI_CsiIceSarReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceSarRspCb_SDK::ARI_CsiIceSarRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C263EF0](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C263EF0](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC5958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c195_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk22ARI_CsiIceSarRspCb_SDKENS4_20ARI_CsiIceSarReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c195_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk22ARI_CsiIceSarRspCb_SDKENS4_20ARI_CsiIceSarReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CAE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarRspCb_SDK,AriSdk::ARI_CsiIceSarReq_SDK>(AriSdk::ARI_CsiIceSarReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKENS5_21ARI_CsiIceCltmReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceCltmRspCb_SDK::ARI_CsiIceCltmRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C263F60](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C263F60](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC5FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c197_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKENS4_21ARI_CsiIceCltmReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c197_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKENS4_21ARI_CsiIceCltmReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CB60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK,AriSdk::ARI_CsiIceCltmReq_SDK>(AriSdk::ARI_CsiIceCltmReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk30ARI_CsiIceSarWaitTimeRspCb_SDKENS5_28ARI_CsiIceSarWaitTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK::ARI_CsiIceSarWaitTimeRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C264AA0](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C264AA0](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC65F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c211_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk30ARI_CsiIceSarWaitTimeRspCb_SDKENS4_28ARI_CsiIceSarWaitTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c211_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk30ARI_CsiIceSarWaitTimeRspCb_SDKENS4_28ARI_CsiIceSarWaitTimeReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CBE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK,AriSdk::ARI_CsiIceSarWaitTimeReq_SDK>(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_CsiIceAccessoryStateRspCb_SDKENS5_31ARI_CsiIceAccessoryStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK::ARI_CsiIceAccessoryStateRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C265010](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C265010](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC6C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c217_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_CsiIceAccessoryStateRspCb_SDKENS4_31ARI_CsiIceAccessoryStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c217_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk33ARI_CsiIceAccessoryStateRspCb_SDKENS4_31ARI_CsiIceAccessoryStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceAccessoryStateArtdRspCb_SDKENS5_35ARI_CsiIceAccessoryStateArtdReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK::ARI_CsiIceAccessoryStateArtdRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C265470](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C265470](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC7288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c225_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceAccessoryStateArtdRspCb_SDKENS4_35ARI_CsiIceAccessoryStateArtdReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c225_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk37ARI_CsiIceAccessoryStateArtdRspCb_SDKENS4_35ARI_CsiIceAccessoryStateArtdReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK,AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK>(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk31ARI_CsiIceSpeakerStateRspCb_SDKENS5_29ARI_CsiIceSpeakerStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK::ARI_CsiIceSpeakerStateRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C264CE0](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C264CE0](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC78D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c213_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk31ARI_CsiIceSpeakerStateRspCb_SDKENS4_29ARI_CsiIceSpeakerStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c213_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk31ARI_CsiIceSpeakerStateRspCb_SDKENS4_29ARI_CsiIceSpeakerStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CD60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK,AriSdk::ARI_CsiIceSpeakerStateReq_SDK>(AriSdk::ARI_CsiIceSpeakerStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceGripStateRspCb_SDKENS5_26ARI_CsiIceGripStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIceGripStateRspCb_SDK::ARI_CsiIceGripStateRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C264640](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C264640](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DC7F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_32c207_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceGripStateRspCb_SDKENS4_26ARI_CsiIceGripStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c207_ZTSNSt3__110shared_ptrIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk28ARI_CsiIceGripStateRspCb_SDKENS4_26ARI_CsiIceGripStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0CDE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

void *antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIceGripStateRspCb_SDK,AriSdk::ARI_CsiIceGripStateReq_SDK>(AriSdk::ARI_CsiIceGripStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZN7antenna16ARICommandDriver7sendMsgIN6AriSdk35ARI_CsiIcePowerSourceStateRspCb_SDKENS5_33ARI_CsiIcePowerSourceStateReq_SDKEEEvRT0_jN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
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
  v29 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = v2[1];
  v28 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v9;
  v26[3] = v9;
  v26[0] = v9;
  v26[1] = v9;
  AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK::ARI_CsiIcePowerSourceStateRspCb_SDK(v26, a2);
  if (!v2[4] || !v2[5])
  {
    MEMORY[0x29C2652D0](v26);
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
      v31 = v25;
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
  dispatch_async_f(v22, v23, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>(void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1},dispatch_queue_s *::default_delete<void antenna::ARICommandDriver::sendMsg<AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK,AriSdk::ARI_CsiIcePowerSourceStateReq_SDK>(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK &,unsigned int,dispatch::callback<void({block_pointer})(BOOL,xpc::object)>)::{lambda(unsigned char const*,unsigned int)#1}::operator() const(unsigned char const*,unsigned int)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v7 = v29;
  MEMORY[0x29C2652D0](v26);
  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}