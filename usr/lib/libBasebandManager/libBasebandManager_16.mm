_WORD *NetworkingModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void NetworkingModule::shutdown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::shutdown(dispatch::group_session)::$_0>(NetworkingModule::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void NetworkingModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_18:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = operator new(0x10uLL);
  *v17 = a1;
  v17[1] = v12;
  v18 = a1[11];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v20 = a1[10];
  if (!v20 || (v21 = a1[9], (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v22;
  v23 = operator new(8uLL);
  *v23 = a1;
  v24 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v23;
  v25[1] = v21;
  v25[2] = v8;
  dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }
}

void NetworkingModule::registerCommandHandlers_sync(NetworkingModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEE70];
  v8 = strlen(*MEMORY[0x29EDBEE70]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v11);
    v44 = v9;
    v45 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v45) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  aBlock[4] = this;
  aBlock[5] = v4;
  v41 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v42 = v12;
  Service::registerCommandHandler(this, &__dst, &v42);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF258];
  v14 = strlen(*MEMORY[0x29EDBF258]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    v44 = v15;
    v45 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v45) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3321888768;
  v37[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_3;
  v37[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v37[4] = this;
  v37[5] = v4;
  v38 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v37);
  v39 = v18;
  Service::registerCommandHandler(this, &__dst, &v39);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBEE88];
  v20 = strlen(*MEMORY[0x29EDBEE88]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    v44 = v21;
    v45 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v45) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3321888768;
  v34[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_2;
  v34[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v34);
  v36 = v24;
  Service::registerCommandHandler(this, &__dst, &v36);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF268];
  v26 = strlen(*MEMORY[0x29EDBF268]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    v44 = v27;
    v45 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v45) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3321888768;
  v31[2] = ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_3;
  v31[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v31[4] = this;
  v31[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v31);
  v33 = v30;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2970C9724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (v40)
  {
    _Block_release(v40);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v43 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
        }

        if (a39)
        {
          std::__shared_weak_count::__release_weak(a39);
          std::__shared_weak_count::__release_weak(v39);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v39);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v43);
      goto LABEL_10;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v41 - 128));
  v43 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16NetworkingModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_3(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN16NetworkingModule28registerCommandHandlers_syncEv_block_invoke_2(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_10:
    v14 = v7[9];
    v15 = std::__shared_weak_count::lock(v13);
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = operator new(0x18uLL);
    *v17 = v7;
    v17[1] = v10;
    v18 = xpc_null_create();
    v17[2] = v12;
    v19 = v7[11];
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = operator new(0x18uLL);
    *v20 = v17;
    v20[1] = v14;
    v20[2] = v16;
    dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    xpc_release(v18);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void NetworkingModule::registerEventHandlers_sync(NetworkingModule *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_25:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_25;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (config::hw::watch(v5))
  {
    v7 = *MEMORY[0x29EDBF460];
    v8 = strlen(*MEMORY[0x29EDBF460]);
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

      p_p = operator new(v11);
      *(&__p + 1) = v9;
      v15 = v11 | 0x8000000000000000;
      *&__p = p_p;
    }

    else
    {
      HIBYTE(v15) = v8;
      p_p = &__p;
      if (!v8)
      {
LABEL_16:
        p_p[v9] = 0;
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v17 = 0;
        v12 = operator new(0x20uLL);
        *v12 = &unk_2A1E28C10;
        v12[1] = this;
        v12[2] = v4;
        v12[3] = v6;
        v17 = v12;
        Service::registerEventHandler(this, &__p, v16);
        if (v17 == v16)
        {
          (*(*v17 + 32))(v17);
          if ((SHIBYTE(v15) & 0x80000000) == 0)
          {
LABEL_20:
            Service::eventsOn(this);
            goto LABEL_21;
          }
        }

        else
        {
          if (v17)
          {
            (*(*v17 + 40))();
          }

          if ((SHIBYTE(v15) & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        operator delete(__p);
        goto LABEL_20;
      }
    }

    memmove(p_p, v7, v9);
    goto LABEL_16;
  }

LABEL_21:
  std::__shared_weak_count::__release_weak(v6);
  v13 = *MEMORY[0x29EDCA608];
}

void sub_2970CA290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::function<void ()(dispatch::group_session,xpc::dict)>::~function(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v15);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void NetworkingModule::applyBreadMode_sync(NetworkingModule *this)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v14, v2);
    v4 = v14;
    v14 = 0uLL;
    v5 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(&v14 + 1);
    if (*(&v14 + 1) && !atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18B7390;
  }

  v7 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v3 + 16))(&v10, v3);
  v12 = 0;
  v13 = 0;
  if (v11)
  {
    v13 = std::__shared_weak_count::lock(v11);
    if (v13)
    {
      v12 = v10;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v12;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  v8 = v12;
  if (v12)
  {
LABEL_19:
    (*(*v8 + 280))(v8, *(this + 136));
  }

LABEL_20:
  v9 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_2970CA55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void NetworkingModule::sendVisitInfo_sync(NetworkingModule *this, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *(this + 13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Visit info: Arrival=%u Departure=%u", buf, 0xEu);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(buf, v6);
    v8 = *buf;
    memset(buf, 0, sizeof(buf));
    v9 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = off_2A18B7390;
  }

  v11 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v7 + 16))(&v15, v7);
  v17 = 0;
  v18 = 0;
  if (v16)
  {
    v18 = std::__shared_weak_count::lock(v16);
    if (v18)
    {
      v17 = v15;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v17;
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v12 = v17;
  if (v17)
  {
LABEL_21:
    (*(*v12 + 320))(v12, a2, a3);
  }

LABEL_22:
  v13 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void NetworkingModule::applyLQMAbortPolicy_sync(NetworkingModule *this)
{
  v83 = *MEMORY[0x29EDCA608];
  if (*(this + 14))
  {
    cf = 0xAAAAAAAAAAAAAAAALL;
    __src = *MEMORY[0x29EDBF7C8];
    v1 = strlen(*MEMORY[0x29EDBF7C8]);
    if (v1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v2 = v1;
    if (v1 >= 0x17)
    {
      if ((v1 | 7) == 0x17)
      {
        v5 = 25;
      }

      else
      {
        v5 = (v1 | 7) + 1;
      }

      v3 = operator new(v5);
      *&buf[8] = v2;
      *&buf[16] = v5 | 0x8000000000000000;
      *buf = v3;
    }

    else
    {
      buf[23] = v1;
      v3 = buf;
      if (!v1)
      {
LABEL_13:
        v3[v2] = 0;
        NetworkingModule::getBundleIDList_sync(this, buf, &cf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          v6 = cf;
          if (cf)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v6 = cf;
          if (cf)
          {
LABEL_15:
            v7 = *(this + 14);
            theArray = v6;
            CFRetain(v6);
            Count = CFArrayGetCount(v6);
            v9 = &unk_297222000;
            v60 = Count;
            if (Count)
            {
              v10 = 0;
              v62 = 0;
              while (1)
              {
                memset(&__p, 170, sizeof(__p));
                CFArrayGetValueAtIndex(theArray, v10);
                memset(&v80, 0, sizeof(v80));
                ctu::cf::assign();
                __p = v80;
                if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v71, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v71 = __p;
                }

                v11 = NEHelperCacheCopyAppUUIDMapping();
                v12 = v11;
                if (v11)
                {
                  object = v11;
                }

                else
                {
                  v12 = xpc_null_create();
                  object = v12;
                  if (!v12)
                  {
                    v13 = xpc_null_create();
                    v12 = 0;
                    goto LABEL_28;
                  }
                }

                if (MEMORY[0x29C26CE60](v12) == MEMORY[0x29EDCA9E0])
                {
                  xpc_retain(v12);
                  goto LABEL_29;
                }

                v13 = xpc_null_create();
LABEL_28:
                object = v13;
LABEL_29:
                xpc_release(v12);
                v14 = object;
                if (object)
                {
                  xpc_retain(object);
                  v15 = v14;
                }

                else
                {
                  v15 = xpc_null_create();
                }

                if (MEMORY[0x29C26CE60](v15) == MEMORY[0x29EDCA9E0])
                {
                  v80.__r_.__value_.__r.__words[0] = 0;
                  v80.__r_.__value_.__l.__size_ = &v80;
                  v80.__r_.__value_.__r.__words[2] = 0x3052000000;
                  *&v81 = __Block_byref_object_copy__2;
                  *(&v81 + 1) = __Block_byref_object_dispose__2;
                  v82 = 0;
                  *applier = MEMORY[0x29EDCA5F8];
                  *&applier[8] = 3221225472;
                  *&applier[16] = ___ZN20NetworkPolicyManager10uuidBridgeEN3xpc5arrayE_block_invoke;
                  v78 = &unk_29EE64298;
                  v79 = &v80;
                  xpc_array_apply(v15, applier);
                  obj = *(v80.__r_.__value_.__l.__size_ + 40);
                  _Block_object_dispose(&v80, 8);
                }

                else
                {
                  obj = 0;
                }

                xpc_release(v15);
                v16 = *v7;
                if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
                  v18 = v71.__r_.__value_.__r.__words[0];
                  xpc::object::to_string(&v80, &object);
                  v19 = &v71;
                  if (v17 < 0)
                  {
                    v19 = v18;
                  }

                  v20 = &v80;
                  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v20 = v80.__r_.__value_.__r.__words[0];
                  }

                  *applier = 136315394;
                  *&applier[4] = v19;
                  *&applier[12] = 2080;
                  *&applier[14] = v20;
                  _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I UUIDs for bundleID:%s => %s", applier, 0x16u);
                  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v80.__r_.__value_.__l.__data_);
                  }

                  v14 = object;
                }

                xpc_release(v14);
                if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v71.__r_.__value_.__l.__data_);
                  v61 = v10;
                  if (obj)
                  {
LABEL_45:
                    v21 = [MEMORY[0x29EDBB898] allInterfaces];
                    if (v21)
                    {
                      v22 = [MEMORY[0x29EDBB8B0] routeRuleWithAction:4 forType:2];
                      if (v22)
                      {
                        v76 = v22;
                        v23 = [MEMORY[0x29EDBB8A8] routeRules:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", &v76, 1)}];
                        if (v23)
                        {
                          v69 = 0u;
                          v70 = 0u;
                          v67 = 0u;
                          v68 = 0u;
                          v24 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
                          if (v24)
                          {
                            v64 = v21;
                            v25 = *v68;
                            do
                            {
                              for (i = 0; i != v24; ++i)
                              {
                                if (*v68 != v25)
                                {
                                  objc_enumerationMutation(obj);
                                }

                                v27 = *(*(&v67 + 1) + 8 * i);
                                v28 = [MEMORY[0x29EDBB898] effectiveApplication:v27];
                                if (v28)
                                {
                                  v29 = objc_alloc(MEMORY[0x29EDBB888]);
                                  v74[0] = v28;
                                  v74[1] = v64;
                                  v30 = [v29 initWithOrder:0 result:v23 conditions:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", v74, 2)}];
                                  if (v30)
                                  {
                                    v31 = [*(v7 + 8) addPolicy:v30];
                                    v32 = *v7;
                                    v33 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
                                    if (v31)
                                    {
                                      if (v33)
                                      {
                                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                        {
                                          p_p = &__p;
                                        }

                                        else
                                        {
                                          p_p = __p.__r_.__value_.__r.__words[0];
                                        }

                                        v35 = [objc_msgSend(v27 "UUIDString")];
                                        v36 = [v23 resultType];
                                        LODWORD(v80.__r_.__value_.__l.__data_) = 136315906;
                                        *(v80.__r_.__value_.__r.__words + 4) = p_p;
                                        WORD2(v80.__r_.__value_.__r.__words[1]) = 2080;
                                        *(&v80.__r_.__value_.__r.__words[1] + 6) = v35;
                                        HIWORD(v80.__r_.__value_.__r.__words[2]) = 1024;
                                        LODWORD(v81) = v36;
                                        WORD2(v81) = 1024;
                                        *(&v81 + 6) = v31;
                                        _os_log_impl(&dword_296FF7000, v32, OS_LOG_TYPE_DEFAULT, "#I Valid policy; bundle-id:%s UUID:%s result:%u policy-id:%u", &v80, 0x22u);
                                      }

                                      v62 = 1;
                                    }

                                    else if (v33)
                                    {
                                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v37 = &__p;
                                      }

                                      else
                                      {
                                        v37 = __p.__r_.__value_.__r.__words[0];
                                      }

                                      v38 = [objc_msgSend(v27 "UUIDString")];
                                      v39 = [v23 resultType];
                                      LODWORD(v80.__r_.__value_.__l.__data_) = 136315650;
                                      *(v80.__r_.__value_.__r.__words + 4) = v37;
                                      WORD2(v80.__r_.__value_.__r.__words[1]) = 2080;
                                      *(&v80.__r_.__value_.__r.__words[1] + 6) = v38;
                                      HIWORD(v80.__r_.__value_.__r.__words[2]) = 1024;
                                      LODWORD(v81) = v39;
                                      _os_log_impl(&dword_296FF7000, v32, OS_LOG_TYPE_DEFAULT, "#I Invalid policy; bundle-id:%s UUID:%s result:%u ", &v80, 0x1Cu);
                                    }
                                  }
                                }
                              }

                              v24 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
                            }

                            while (v24);
                          }

                          goto LABEL_84;
                        }

                        v47 = *v7;
                        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(v80.__r_.__value_.__l.__data_) = 0;
                          v42 = v47;
                          v43 = "#I Result creation failed";
LABEL_82:
                          v44 = 2;
LABEL_83:
                          _os_log_impl(&dword_296FF7000, v42, OS_LOG_TYPE_DEFAULT, v43, &v80, v44);
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        v46 = *v7;
                        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(v80.__r_.__value_.__l.__data_) = 0;
                          v42 = v46;
                          v43 = "#I Route rule creation failed";
                          goto LABEL_82;
                        }
                      }
                    }

                    else
                    {
                      v45 = *v7;
                      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(v80.__r_.__value_.__l.__data_) = 0;
                        v42 = v45;
                        v43 = "#I Interface condition creation failed";
                        goto LABEL_82;
                      }
                    }

                    goto LABEL_84;
                  }
                }

                else
                {
                  v61 = v10;
                  if (obj)
                  {
                    goto LABEL_45;
                  }
                }

                v40 = *v7;
                if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v41 = __p.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(v80.__r_.__value_.__l.__data_) = 136315138;
                  *(v80.__r_.__value_.__r.__words + 4) = v41;
                  v42 = v40;
                  v43 = "#I No UUIDs available for bundle-id:%s";
                  v44 = 12;
                  goto LABEL_83;
                }

LABEL_84:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  v10 = v61 + 1;
                  if (v61 + 1 == v60)
                  {
LABEL_86:
                    if (v62)
                    {
                      v9 = &unk_297222000;
                      v48 = [*(v7 + 8) apply];
                      v49 = theArray;
                      if (!theArray)
                      {
                        goto LABEL_99;
                      }

                      goto LABEL_98;
                    }

                    v48 = 0;
                    v9 = &unk_297222000;
                    v49 = theArray;
                    if (theArray)
                    {
                      goto LABEL_98;
                    }

                    goto LABEL_99;
                  }
                }

                else
                {
                  v10 = v61 + 1;
                  if (v61 + 1 == v60)
                  {
                    goto LABEL_86;
                  }
                }
              }
            }

            v54 = *v7;
            if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v48 = 1;
              v49 = theArray;
              if (!theArray)
              {
                goto LABEL_99;
              }

              goto LABEL_98;
            }

            *buf = 0;
            _os_log_impl(&dword_296FF7000, v54, OS_LOG_TYPE_DEFAULT, "#I Empty bundle-id list; nothing to apply", buf, 2u);
            v48 = 1;
            v49 = theArray;
            if (theArray)
            {
LABEL_98:
              CFRelease(v49);
            }

LABEL_99:
            v55 = *(this + 13);
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_104;
            }

            v56 = "failed";
            if (v48)
            {
              v56 = "successful";
            }

            *buf = v9[357];
            *&buf[4] = __src;
            *&buf[12] = 2080;
            *&buf[14] = v56;
            v51 = "#I Applying network policy for '%s' %s ";
            v52 = v55;
            v53 = 22;
            goto LABEL_103;
          }
        }

        v50 = *(this + 13);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_104;
        }

        *buf = 136315138;
        *&buf[4] = __src;
        v51 = "#I No network policy to apply for action: %s";
        v52 = v50;
        v53 = 12;
LABEL_103:
        _os_log_impl(&dword_296FF7000, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
LABEL_104:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_106;
      }
    }

    memmove(v3, __src, v2);
    goto LABEL_13;
  }

  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Network policy update is not supported", buf, 2u);
  }

LABEL_106:
  v57 = *MEMORY[0x29EDCA608];
}

void sub_2970CB26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void NetworkingModule::getBundleIDList_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, CFTypeRef *a3@<X8>)
{
  memset(&v30, 170, sizeof(v30));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a2, *(a2 + 8));
  }

  else
  {
    v30 = *a2;
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = (&v30 + HIBYTE(v30.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v5 = (v30.__r_.__value_.__r.__words[0] + v30.__r_.__value_.__l.__size_);
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v30;
  }

  else
  {
    v6 = v30.__r_.__value_.__r.__words[0];
  }

  for (; v6 != v5; v6 = (v6 + 1))
  {
    v6->__r_.__value_.__s.__data_[0] = __toupper(v6->__r_.__value_.__s.__data_[0]);
  }

  cf = 0;
  if (!TelephonyUtilIsInternalBuild())
  {
    goto LABEL_23;
  }

  pthread_mutex_lock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  if (qword_2A1398CD8)
  {
LABEL_14:
    v8 = qword_2A1398CD8;
    v7 = off_2A1398CE0;
    v26 = qword_2A1398CD8;
    v27 = off_2A1398CE0;
    if (!off_2A1398CE0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v8 = operator new(0x18uLL);
  MEMORY[0x29C26B190](v8, @"com.apple.AppleBasebandManager.NetworkPolicy", *MEMORY[0x29EDB8FB0]);
  v31 = v8;
  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_2A1E28BC0;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v8;
  v9 = off_2A1398CE0;
  qword_2A1398CD8 = v8;
  off_2A1398CE0 = v7;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    goto LABEL_14;
  }

  v26 = v8;
  v27 = v7;
LABEL_20:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_21:
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  Preferences::getPreference<__CFArray const*>(v8, &v30, &cf);
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    v10 = cf;
    *a3 = cf;
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = cf;
  *a3 = cf;
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_24:
  CFRetain(v10);
  if (CFArrayGetCount(v10))
  {
    goto LABEL_55;
  }

LABEL_25:
  v11 = *(a1 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I getBundleIDList_sync count zero", &v26, 2u);
  }

  v12 = *MEMORY[0x29EDBF7C8];
  v13 = strlen(*MEMORY[0x29EDBF7C8]);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    v27 = v14;
    v28 = v16 | 0x8000000000000000;
    v26 = v15;
    goto LABEL_35;
  }

  HIBYTE(v28) = v13;
  v15 = &v26;
  if (v13)
  {
LABEL_35:
    memmove(v15, v12, v14);
  }

  *(&v14->__vftable + v15) = 0;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  v18 = SHIBYTE(v28);
  v19 = v26;
  if (v28 >= 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v26;
  }

  v21 = strcasecmp(v17, v20);
  if (v18 < 0)
  {
    v22 = v21;
    operator delete(v19);
    if (v22)
    {
      goto LABEL_55;
    }
  }

  else if (v21)
  {
    goto LABEL_55;
  }

  v23 = *(a1 + 128);
  if (v23)
  {
    v24 = CFGetTypeID(v23);
    if (v24 != CFArrayGetTypeID())
    {
      v25 = *a3;
      *a3 = 0;
      if (!v25)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    CFRetain(v23);
  }

  v25 = *a3;
  *a3 = v23;
  if (v25)
  {
LABEL_54:
    CFRelease(v25);
  }

LABEL_55:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_2970CB738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a19);
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t ___ZN20NetworkPolicyManager10uuidBridgeEN3xpc5arrayE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 && MEMORY[0x29C26CE60](a3) == MEMORY[0x29EDCAA60])
  {
    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x29EDB8DE8] array];
    }

    v5 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:xpc_uuid_get_bytes(a3)];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }

  return 1;
}

atomic_ullong *std::shared_ptr<NetworkingModule>::shared_ptr[abi:ne200100]<NetworkingModule,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E28B20;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
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
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
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

void sub_2970CBA84(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1}::operator() const(NetworkingModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<NetworkingModule *,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule *)#1},std::allocator<NetworkingModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<NetworkingModule *,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule *)#1},std::allocator<NetworkingModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI16NetworkingModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1}::operator() const(NetworkingModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::init(void)::$_0>(NetworkingModule::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::init(void)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(capabilities::abs *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (capabilities::abs::supportsNetworkPolicy(a1))
  {
    v3 = operator new(0x28uLL);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = &unk_2A1E28B70;
    ctu::OsLogLogger::OsLogLogger((v3 + 3), "com.apple.telephony", "net.policy");
    v3[4] = objc_alloc_init(MEMORY[0x29EDBB8B8]);
    v4 = v2[15];
    v2[14] = v3 + 3;
    v2[15] = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v6 = v2[16];
      v2[16] = Mutable;
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  operator delete(v1);
  v7 = a1;
  if (a1)
  {
    v8 = *(a1 + 2);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = a1;
    }

    operator delete(v7);
  }
}

void sub_2970CBD44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;
  MEMORY[0x29C26B020](v5);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v7);
  operator delete(v2);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2970CBD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<NetworkPolicyManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E28B70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<NetworkPolicyManager>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {

    *(a1 + 32) = 0;
  }

  JUMPOUT(0x29C26B020);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::shutdown(dispatch::group_session)::$_0>(NetworkingModule::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **__p)
{
  v2 = *__p;
  if (*__p)
  {
    if (*v2)
    {
      dispatch_group_leave(*v2);
      if (*v2)
      {
        dispatch_release(*v2);
      }
    }

    operator delete(v2);
  }

  v3 = __p[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = __p;
  }

  else
  {
    v4 = __p;
  }

  operator delete(v4);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  NetworkingModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2970CBFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  NetworkingModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2970CC0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<NetworkingModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  NetworkingModule::applyLQMAbortPolicy_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_2970CC1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *ABMNetworkPolicy::create_default_global(ABMNetworkPolicy *this)
{
  v2 = operator new(0x18uLL);
  MEMORY[0x29C26B190](v2, @"com.apple.AppleBasebandManager.NetworkPolicy", *MEMORY[0x29EDB8FB0]);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E28BC0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_2970CC260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<ABMNetworkPolicy>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = off_2A1398CE0;
  *&qword_2A1398CD8 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_pointer<ABMNetworkPolicy *,std::shared_ptr<ABMNetworkPolicy>::__shared_ptr_default_delete<ABMNetworkPolicy,ABMNetworkPolicy>,std::allocator<ABMNetworkPolicy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMNetworkPolicy *,std::shared_ptr<ABMNetworkPolicy>::__shared_ptr_default_delete<ABMNetworkPolicy,ABMNetworkPolicy>,std::allocator<ABMNetworkPolicy>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x29C26B1A0]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMNetworkPolicy *,std::shared_ptr<ABMNetworkPolicy>::__shared_ptr_default_delete<ABMNetworkPolicy,ABMNetworkPolicy>,std::allocator<ABMNetworkPolicy>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722936ALL)
  {
    if (((v2 & 0x800000029722936ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722936ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722936ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v73 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v64 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&__p, (v1 + 1));
    v4 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Add network policy: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    v6 = *(v2 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Modifying network policy not supported in this build variant", &__p, 2u);
    }

    v7 = xpc_null_create();
    v8 = v1[2];
    __p.__r_.__value_.__r.__words[0] = v7;
    v9 = xpc_null_create();
    (*(v8 + 16))(v8, 3760250884, &__p);
    xpc_release(__p.__r_.__value_.__l.__data_);
    xpc_release(v9);
    goto LABEL_105;
  }

  memset(buf, 170, sizeof(buf));
  v5 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF2B8]);
  theArray[1] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    theArray[1] = xpc_null_create();
  }

  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(theArray[1]);
  if ((buf[23] & 0x80u) == 0)
  {
    v10 = &buf[buf[23]];
  }

  else
  {
    v10 = (*buf + *&buf[8]);
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  for (; v11 != v10; ++v11)
  {
    *v11 = __toupper(*v11);
  }

  v12 = *MEMORY[0x29EDBF7C8];
  v13 = strlen(*MEMORY[0x29EDBF7C8]);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    p_p = operator new(v16);
    __p.__r_.__value_.__l.__size_ = v14;
    __p.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
    goto LABEL_32;
  }

  *(&__p.__r_.__value_.__s + 23) = v13;
  p_p = &__p;
  if (v13)
  {
LABEL_32:
    memmove(p_p, v12, v14);
  }

  p_p->__r_.__value_.__s.__data_[v14] = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v19 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  v21 = strcasecmp(v17, v20);
  v22 = v21;
  if (v18 < 0)
  {
    operator delete(v19);
    if (v22)
    {
      goto LABEL_41;
    }
  }

  else if (v21)
  {
LABEL_41:
    v23 = *(v2 + 104);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v24 = *buf;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v24;
      _os_log_impl(&dword_296FF7000, v23, OS_LOG_TYPE_DEFAULT, "#I Invalid network policy action: %s", &__p, 0xCu);
    }

    v25 = xpc_null_create();
    v26 = v1[2];
    __p.__r_.__value_.__r.__words[0] = v25;
    v27 = xpc_null_create();
    (*(v26 + 16))(v26, 3760250882, &__p);
    xpc_release(__p.__r_.__value_.__l.__data_);
    xpc_release(v27);
LABEL_99:
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_104;
  }

  memset(&theArray[1], 170, 24);
  v28 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF088]);
  value = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    value = xpc_null_create();
  }

  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(value);
  v29 = HIBYTE(theArray[3]);
  if (SHIBYTE(theArray[3]) < 0)
  {
    v29 = theArray[2];
  }

  if (v29)
  {
    theArray[0] = 0xAAAAAAAAAAAAAAAALL;
    NetworkingModule::getBundleIDList_sync(v2, buf, theArray);
    if (!theArray[0])
    {
      v37 = *(v2 + 104);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296FF7000, v37, OS_LOG_TYPE_DEFAULT, "#I BUG: We should never receive a null reference for bundle-id list", &__p, 2u);
      }

      v38 = xpc_null_create();
      v39 = v1[2];
      __p.__r_.__value_.__r.__words[0] = v38;
      v40 = xpc_null_create();
      (*(v39 + 16))(v39, 3760250880, &__p);
      xpc_release(__p.__r_.__value_.__l.__data_);
      xpc_release(v40);
      goto LABEL_96;
    }

    Count = CFArrayGetCount(theArray[0]);
    v31 = Count;
    if (Count)
    {
      v32 = theArray[0];
      if (SHIBYTE(theArray[3]) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, theArray[1], theArray[2]);
      }

      else
      {
        v68 = *&theArray[1];
      }

      v42 = CFArrayGetCount(v32);
      v41 = *MEMORY[0x29EDB8ED8];
      __p.__r_.__value_.__r.__words[0] = 0;
      ctu::cf::convert_copy();
      v43 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        v74.length = v42;
        v74.location = 0;
        v44 = CFArrayContainsValue(v32, v74, __p.__r_.__value_.__l.__data_);
        CFRelease(v43);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (v44)
        {
          v45 = *(v2 + 104);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_296FF7000, v45, OS_LOG_TYPE_DEFAULT, "#I Policy for bundle-id already exists", &__p, 2u);
          }

          v46 = xpc_null_create();
          v47 = v1[2];
          __p.__r_.__value_.__r.__words[0] = v46;
          v48 = xpc_null_create();
          (*(v47 + 16))(v47, 0, &__p);
          xpc_release(__p.__r_.__value_.__l.__data_);
          xpc_release(v48);
LABEL_96:
          if (theArray[0])
          {
            CFRelease(theArray[0]);
          }

          goto LABEL_98;
        }
      }

      else if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v41 = *MEMORY[0x29EDB8ED8];
    }

    v67 = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v67 = __p.__r_.__value_.__r.__words[0];
    }

    cf = 0;
    Mutable = CFArrayCreateMutable(v41, 0, MEMORY[0x29EDB9000]);
    v50 = Mutable;
    if (Mutable)
    {
      cf = Mutable;
    }

    if (v31)
    {
      for (i = 0; i != v31; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
        v53 = ValueAtIndex;
        __p.__r_.__value_.__r.__words[0] = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          CFArrayAppendValue(v50, v53);
          CFRelease(v53);
        }
      }
    }

    if (SHIBYTE(theArray[3]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, theArray[1], theArray[2]);
    }

    else
    {
      __p = *&theArray[1];
    }

    ctu::cf::convert_copy();
    v70 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v54 = *(v2 + 104);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296FF7000, v54, OS_LOG_TYPE_DEFAULT, "#I Policy addition failed with some error", &__p, 2u);
    }

    v55 = xpc_null_create();
    v56 = v1[2];
    __p.__r_.__value_.__r.__words[0] = v55;
    v57 = xpc_null_create();
    (*(v56 + 16))(v56, 3760250880, &__p);
    xpc_release(__p.__r_.__value_.__l.__data_);
    xpc_release(v57);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v67)
    {
      CFRelease(v67);
    }

    goto LABEL_96;
  }

  v33 = *(v2 + 104);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v33, OS_LOG_TYPE_DEFAULT, "#I Empty network policy bundle-id", &__p, 2u);
  }

  v34 = xpc_null_create();
  v35 = v1[2];
  __p.__r_.__value_.__r.__words[0] = v34;
  v36 = xpc_null_create();
  (*(v35 + 16))(v35, 3760250882, &__p);
  xpc_release(__p.__r_.__value_.__l.__data_);
  xpc_release(v36);
LABEL_98:
  if ((SHIBYTE(theArray[3]) & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

  operator delete(theArray[1]);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_100:
    v1 = v64;
    if (!v64)
    {
      goto LABEL_101;
    }

    goto LABEL_105;
  }

LABEL_104:
  operator delete(*buf);
  v1 = v64;
  if (!v64)
  {
LABEL_101:
    v58 = a1;
    if (!a1)
    {
      goto LABEL_112;
    }

    goto LABEL_108;
  }

LABEL_105:
  v59 = v1[2];
  if (v59)
  {
    _Block_release(v59);
  }

  xpc_release(v1[1]);
  operator delete(v1);
  v58 = a1;
  if (a1)
  {
LABEL_108:
    v60 = v58[2];
    if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v61 = v58;
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
      v58 = v61;
    }

    operator delete(v58);
  }

LABEL_112:
  v62 = *MEMORY[0x29EDCA608];
}

void sub_2970CCEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, const void *a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, xpc_object_t object, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  _ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v95 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v84 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, (v1 + 1));
    v4 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Remove network policy: %s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    v6 = *(v2 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Modifying network policy not supported in this build variant", __p, 2u);
    }

    v7 = xpc_null_create();
    v8 = v1[2];
    __p[0] = v7;
    v9 = xpc_null_create();
    (*(v8 + 16))(v8, 3760250884, __p);
    xpc_release(__p[0]);
    xpc_release(v9);
    goto LABEL_125;
  }

  memset(buf, 170, sizeof(buf));
  value = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF2B8]);
  object.__r_.__value_.__r.__words[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80u) == 0)
  {
    v10 = &buf[buf[23]];
  }

  else
  {
    v10 = (*buf + *&buf[8]);
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  for (; v11 != v10; ++v11)
  {
    *v11 = __toupper(*v11);
  }

  v12 = *MEMORY[0x29EDBF7C8];
  v13 = strlen(*MEMORY[0x29EDBF7C8]);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    __p[2] = (v16 | 0x8000000000000000);
    __p[0] = v15;
    goto LABEL_32;
  }

  HIBYTE(__p[2]) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_32:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = SHIBYTE(__p[2]);
  v19 = __p[0];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  v21 = strcasecmp(v17, v20);
  v22 = v21;
  if (v18 < 0)
  {
    operator delete(v19);
    if (v22)
    {
      goto LABEL_41;
    }
  }

  else if (v21)
  {
LABEL_41:
    v23 = *(v2 + 104);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v24 = *buf;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v24;
      _os_log_impl(&dword_296FF7000, v23, OS_LOG_TYPE_DEFAULT, "#I Invalid network policy action: %s", __p, 0xCu);
    }

    v25 = xpc_null_create();
    v26 = v1[2];
    __p[0] = v25;
    v27 = xpc_null_create();
    (*(v26 + 16))(v26, 3760250882, __p);
    xpc_release(__p[0]);
    xpc_release(v27);
LABEL_119:
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_124;
  }

  memset(&object, 170, sizeof(object));
  v28 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF088]);
  v85[0] = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    v85[0] = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v85[0]);
  size = HIBYTE(object.__r_.__value_.__r.__words[2]);
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = object.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    theArray = 0xAAAAAAAAAAAAAAAALL;
    NetworkingModule::getBundleIDList_sync(v2, buf, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v31 = Count;
      if (Count)
      {
        v32 = theArray;
        if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v90, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
        }

        else
        {
          v90 = object;
        }

        v41 = CFArrayGetCount(v32);
        v42 = *MEMORY[0x29EDB8ED8];
        __p[0] = 0;
        ctu::cf::convert_copy();
        v43 = __p[0];
        v85[0] = __p[0];
        if (__p[0])
        {
          v96.length = v41;
          v96.location = 0;
          v44 = CFArrayContainsValue(v32, v96, __p[0]);
          CFRelease(v43);
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (v44)
          {
            v89 = 0;
            __p[0] = 0;
            if (ctu::cf::convert_copy())
            {
              v89 = __p[0];
            }

            cf = 0;
            Mutable = CFArrayCreateMutable(v42, 0, MEMORY[0x29EDB9000]);
            v46 = Mutable;
            if (Mutable)
            {
              cf = Mutable;
            }

            v47 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v47);
              v49 = ValueAtIndex;
              if (ValueAtIndex && (v50 = CFGetTypeID(ValueAtIndex), v50 == CFStringGetTypeID()))
              {
                v87 = v49;
                CFRetain(v49);
              }

              else
              {
                v49 = 0;
                v87 = 0;
              }

              memset(__p, 0, 24);
              ctu::cf::assign();
              v86 = __p[2];
              *v85 = *__p;
              if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v51 = HIBYTE(object.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v51 = object.__r_.__value_.__l.__size_;
              }

              v52 = HIBYTE(v86);
              v53 = SHIBYTE(v86);
              if (SHIBYTE(v86) < 0)
              {
                v52 = v85[1];
              }

              if (v51 == v52)
              {
                if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_object = &object;
                }

                else
                {
                  p_object = object.__r_.__value_.__r.__words[0];
                }

                if (SHIBYTE(v86) >= 0)
                {
                  v55 = v85;
                }

                else
                {
                  v55 = v85[0];
                }

                v56 = memcmp(p_object, v55, v51) == 0;
                if ((v53 & 0x80000000) == 0)
                {
LABEL_95:
                  if (!v56)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_100;
                }
              }

              else
              {
                v56 = 0;
                if ((SHIBYTE(v86) & 0x80000000) == 0)
                {
                  goto LABEL_95;
                }
              }

              operator delete(v85[0]);
              if (!v56)
              {
LABEL_98:
                __p[0] = v49;
                if (v49)
                {
                  CFRetain(v49);
                  CFArrayAppendValue(v46, v49);
                  CFRelease(v49);
                }
              }

LABEL_100:
              if (v49)
              {
                CFRelease(v49);
              }

              if (v31 == ++v47)
              {
                v57 = *(v2 + 104);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = buf;
                  if ((buf[23] & 0x80u) != 0)
                  {
                    v58 = *buf;
                  }

                  v59 = &object;
                  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v59 = object.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(__p[0]) = 136315650;
                  *(__p + 4) = v58;
                  WORD2(__p[1]) = 2080;
                  *(&__p[1] + 6) = v59;
                  HIWORD(__p[2]) = 2112;
                  __p[3] = v46;
                  _os_log_impl(&dword_296FF7000, v57, OS_LOG_TYPE_DEFAULT, "#I Remove policy for action=%s bundleid=%s array=%@", __p, 0x20u);
                }

                pthread_mutex_lock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
                if (qword_2A1398CD8)
                {
LABEL_109:
                  v61 = qword_2A1398CD8;
                  v60 = off_2A1398CE0;
                  __p[0] = qword_2A1398CD8;
                  __p[1] = off_2A1398CE0;
                  if (!off_2A1398CE0)
                  {
LABEL_138:
                    pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
                    v72 = cf;
                    if ((buf[23] & 0x80u) == 0)
                    {
                      v73 = buf;
                    }

                    else
                    {
                      v73 = *buf;
                    }

                    ctu::cf::MakeCFString::MakeCFString(v85, v73);
                    v74 = ctu::cf::plist_adapter::set<__CFArray *>(v61, v72, v85[0], 1);
                    MEMORY[0x29C26B130](v85);
                    v75 = __p[1];
                    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v75->__on_zero_shared)(v75);
                      std::__shared_weak_count::__release_weak(v75);
                    }

                    if (v74)
                    {
                      v76 = xpc_null_create();
                      v77 = v1[2];
                      __p[0] = v76;
                      v78 = xpc_null_create();
                      (*(v77 + 16))(v77, 0, __p);
                      xpc_release(__p[0]);
                      xpc_release(v78);
                    }

                    else
                    {
                      v79 = *(v2 + 104);
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(__p[0]) = 0;
                        _os_log_impl(&dword_296FF7000, v79, OS_LOG_TYPE_DEFAULT, "#I Policy removal failed with preferences update error", __p, 2u);
                      }

                      v80 = xpc_null_create();
                      v81 = v1[2];
                      __p[0] = v80;
                      v82 = xpc_null_create();
                      (*(v81 + 16))(v81, 3760250880, __p);
                      xpc_release(__p[0]);
                      xpc_release(v82);
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (v89)
                    {
                      CFRelease(v89);
                    }

                    goto LABEL_116;
                  }
                }

                else
                {
                  v61 = operator new(0x18uLL);
                  MEMORY[0x29C26B190](v61, @"com.apple.AppleBasebandManager.NetworkPolicy", *MEMORY[0x29EDB8FB0]);
                  v85[0] = v61;
                  v60 = operator new(0x20uLL);
                  *v60 = &unk_2A1E28BC0;
                  v60[1] = 0;
                  v60[2] = 0;
                  v60[3] = v61;
                  v71 = off_2A1398CE0;
                  qword_2A1398CD8 = v61;
                  off_2A1398CE0 = v60;
                  if (v71)
                  {
                    if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v71->__on_zero_shared)(v71);
                      std::__shared_weak_count::__release_weak(v71);
                    }

                    goto LABEL_109;
                  }

                  __p[0] = v61;
                  __p[1] = v60;
                }

                atomic_fetch_add_explicit(v60 + 1, 1uLL, memory_order_relaxed);
                goto LABEL_138;
              }
            }
          }
        }

        else if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }
      }

      v62 = *(v2 + 104);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_296FF7000, v62, OS_LOG_TYPE_DEFAULT, "#I Policy for bundle-id doesn't exist", __p, 2u);
      }

      v63 = xpc_null_create();
      v64 = v1[2];
      __p[0] = v63;
      v65 = xpc_null_create();
      (*(v64 + 16))(v64, 0, __p);
      xpc_release(__p[0]);
      xpc_release(v65);
    }

    else
    {
      v37 = *(v2 + 104);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_296FF7000, v37, OS_LOG_TYPE_DEFAULT, "#I BUG: We should never receive a null reference for bundle-id list", __p, 2u);
      }

      v38 = xpc_null_create();
      v39 = v1[2];
      __p[0] = v38;
      v40 = xpc_null_create();
      (*(v39 + 16))(v39, 3760250880, __p);
      xpc_release(__p[0]);
      xpc_release(v40);
    }

LABEL_116:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    v33 = *(v2 + 104);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_296FF7000, v33, OS_LOG_TYPE_DEFAULT, "#I Empty network policy bundle-id", __p, 2u);
    }

    v34 = xpc_null_create();
    v35 = v1[2];
    __p[0] = v34;
    v36 = xpc_null_create();
    (*(v35 + 16))(v35, 3760250882, __p);
    xpc_release(__p[0]);
    xpc_release(v36);
  }

  if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

  operator delete(object.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_120:
    v1 = v84;
    if (!v84)
    {
      goto LABEL_121;
    }

    goto LABEL_125;
  }

LABEL_124:
  operator delete(*buf);
  v1 = v84;
  if (!v84)
  {
LABEL_121:
    v66 = a1;
    if (!a1)
    {
      goto LABEL_132;
    }

    goto LABEL_128;
  }

LABEL_125:
  v67 = v1[2];
  if (v67)
  {
    _Block_release(v67);
  }

  xpc_release(v1[1]);
  operator delete(v1);
  v66 = a1;
  if (a1)
  {
LABEL_128:
    v68 = v66[2];
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v69 = v66;
      (v68->__on_zero_shared)(v68);
      std::__shared_weak_count::__release_weak(v68);
      v66 = v69;
    }

    operator delete(v66);
  }

LABEL_132:
  v70 = *MEMORY[0x29EDCA608];
}

void sub_2970CDE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, char a14, int a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, xpc_object_t object, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a11);
  pthread_mutex_unlock(&ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a17);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  _ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb0_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb0_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v42 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&__p, (v1 + 1));
    v4 = v48 >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Get network policy: %s", buf, 0xCu);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }
  }

  memset(buf, 170, 24);
  v5 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF2B8]);
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0uLL;
  v48 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if ((buf[23] & 0x80u) == 0)
  {
    v6 = &buf[buf[23]];
  }

  else
  {
    v6 = (*buf + *&buf[8]);
  }

  if ((buf[23] & 0x80u) == 0)
  {
    v7 = buf;
  }

  else
  {
    v7 = *buf;
  }

  for (; v7 != v6; ++v7)
  {
    *v7 = __toupper(*v7);
  }

  v8 = *MEMORY[0x29EDBF7C8];
  v9 = strlen(*MEMORY[0x29EDBF7C8]);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_p = operator new(v12);
    *(&__p + 1) = v10;
    v48 = v12 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_28;
  }

  HIBYTE(v48) = v9;
  p_p = &__p;
  if (v9)
  {
LABEL_28:
    memmove(p_p, v8, v10);
  }

  *(p_p + v10) = 0;
  if ((buf[23] & 0x80u) == 0)
  {
    v13 = buf;
  }

  else
  {
    v13 = *buf;
  }

  v14 = SHIBYTE(v48);
  v15 = __p;
  if (v48 >= 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  v17 = strcasecmp(v13, v16);
  v18 = v17;
  if (v14 < 0)
  {
    operator delete(v15);
    if (v18)
    {
      goto LABEL_37;
    }
  }

  else if (v17)
  {
LABEL_37:
    v19 = *(v2 + 104);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v20 = *buf;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v20;
      _os_log_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEFAULT, "#I Invalid network policy action: %s", &__p, 0xCu);
    }

    v21 = xpc_null_create();
    v22 = v1[2];
    *&__p = v21;
    v23 = xpc_null_create();
    (*(v22 + 16))(v22, 3760250882, &__p);
    xpc_release(__p);
    xpc_release(v23);
    goto LABEL_64;
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  NetworkingModule::getBundleIDList_sync(v2, buf, &object);
  if (!object || !CFArrayGetCount(object))
  {
    v26 = *(v2 + 104);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v27 = *buf;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v27;
      _os_log_impl(&dword_296FF7000, v26, OS_LOG_TYPE_DEFAULT, "#I No network policy available for action: %s", &__p, 0xCu);
    }

    v28 = xpc_null_create();
    v29 = v1[2];
    *&__p = v28;
    v30 = xpc_null_create();
    (*(v29 + 16))(v29, 0, &__p);
    xpc_release(__p);
    xpc_release(v30);
    goto LABEL_62;
  }

  *&__p = 0xAAAAAAAAAAAAAAAALL;
  v24 = xpc_dictionary_create(0, 0, 0);
  v25 = v24;
  if (v24)
  {
    *&__p = v24;
  }

  else
  {
    v25 = xpc_null_create();
    *&__p = v25;
    if (!v25)
    {
      v31 = xpc_null_create();
      v25 = 0;
      goto LABEL_57;
    }
  }

  if (MEMORY[0x29C26CE60](v25) != MEMORY[0x29EDCAA00])
  {
    v31 = xpc_null_create();
LABEL_57:
    *&__p = v31;
    goto LABEL_58;
  }

  xpc_retain(v25);
LABEL_58:
  xpc_release(v25);
  ctu::cf_to_xpc(&value, object, v32);
  if ((buf[23] & 0x80u) == 0)
  {
    v33 = buf;
  }

  else
  {
    v33 = *buf;
  }

  xpc_dictionary_set_value(__p, v33, value);
  v34 = value;
  value = xpc_null_create();
  xpc_release(v34);
  xpc_release(value);
  value = 0;
  v43 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v1 + 2, &v43, &__p);
  xpc_release(__p);
LABEL_62:
  if (object)
  {
    CFRelease(object);
  }

LABEL_64:
  if (buf[23] < 0)
  {
    operator delete(*buf);
    v35 = v42;
    if (!v42)
    {
LABEL_66:
      v36 = a1;
      if (!a1)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v35 = v42;
    if (!v42)
    {
      goto LABEL_66;
    }
  }

  v37 = v35[2];
  if (v37)
  {
    _Block_release(v37);
  }

  xpc_release(v35[1]);
  operator delete(v35);
  v36 = a1;
  if (a1)
  {
LABEL_72:
    v38 = v36[2];
    if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v39 = v36;
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
      v36 = v39;
    }

    operator delete(v36);
  }

LABEL_76:
  v40 = *MEMORY[0x29EDCA608];
}

void sub_2970CE6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, xpc_object_t object, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb1_E3__7NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(config::hw *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250880;
  if (config::hw::watch(a1))
  {
    v5 = *MEMORY[0x29EDBE788];
    if (xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBE788]))
    {
      value = xpc_dictionary_get_value(v2[1], v5);
      *object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *object = xpc_null_create();
      }

      *(v3 + 136) = xpc::dyn_cast_or_default(object, 0);
      xpc_release(*object);
      v7 = *(v3 + 104);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 136))
        {
          v8 = "";
        }

        else
        {
          v8 = " not";
        }

        *object = 136315138;
        *&object[4] = v8;
        _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Device is%s Bread paired", object, 0xCu);
      }

      if (*(v3 + 137) == 1)
      {
        NetworkingModule::applyBreadMode_sync(v3);
      }

      v4 = 0;
    }

    if (*(v3 + 136) == 1 && *(v3 + 137) == 1)
    {
      v9 = *MEMORY[0x29EDBE6F0];
      if (xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBE6F0]))
      {
        v10 = *MEMORY[0x29EDBE888];
        if (xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBE888]))
        {
          v11 = xpc_dictionary_get_value(v2[1], v9);
          *object = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            *object = xpc_null_create();
          }

          v12 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          v13 = xpc_dictionary_get_value(v2[1], v10);
          *object = v13;
          if (v13)
          {
            xpc_retain(v13);
          }

          else
          {
            *object = xpc_null_create();
          }

          v14 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          NetworkingModule::sendVisitInfo_sync(v3, v12, v14);
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 3760250884;
  }

  v15 = xpc_null_create();
  v16 = v2[2];
  *object = v15;
  v17 = xpc_null_create();
  (*(v16 + 16))(v16, v4, object);
  xpc_release(*object);
  xpc_release(v17);
  v18 = v2[2];
  if (v18)
  {
    _Block_release(v18);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v19 = *(a1 + 2);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_2970CEB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb2_E3__8NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E28C10;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E28C10;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E28C10;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E28C10;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_2970CF010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(NetworkingModule ***a1)
{
  v2 = *a1;
  v3 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &object, *MEMORY[0x29EDBEFC0], v5);
  xpc_release(object);
  v6 = *MEMORY[0x29EDBEFB8];
  v7 = strlen(*MEMORY[0x29EDBEFB8]);
  v8 = HIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v7 == SHIBYTE(__s1[2]))
    {
      v9 = memcmp(__s1, v6, v7);
      *(v3 + 137) = v9 == 0;
      if (v9)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v7 != __s1[1])
  {
LABEL_12:
    *(v3 + 137) = 0;
    goto LABEL_13;
  }

  if (v7 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v10 = memcmp(__s1[0], v6, v7);
  *(v3 + 137) = v10 == 0;
  if (!v10)
  {
LABEL_11:
    NetworkingModule::applyBreadMode_sync(v3);
    v8 = HIBYTE(__s1[2]);
  }

LABEL_13:
  if (v8 < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v11 = v2[1];
  if (v11)
  {
    dispatch_group_leave(v11);
    v12 = v2[1];
    if (v12)
    {
      dispatch_release(v12);
    }
  }

  operator delete(v2);
  v13 = a1[2];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(a1);
}

void sub_2970CF288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t IOKitAccessoriesDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v6 = operator new(0xB8uLL);
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a1)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v20 = v7;
    goto LABEL_6;
  }

  v20 = v19;
  (*(*v7 + 24))(v7, v19);
LABEL_6:
  v8 = *a2;
  v16 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  IOKitAccessoriesDelegate::IOKitAccessoriesDelegate(v6, v19, &v16);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E28D58;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_14:
  v17 = v6;
  v18 = v11;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20, v9, v10);
  }

  result = (*(v6->~__shared_weak_count + 7))(v6);
  *a3 = v6;
  a3[1] = v11;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2970CF650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t IOKitAccessoriesDelegate::IOKitAccessoriesDelegate(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v20 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E28C90;
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v19 = v18;
      (*(*v5 + 24))(v5, v18);
    }

    else
    {
      v19 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v19 = 0;
  }

  v6 = *a3;
  v16 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (*(*a1 + 16))(a1);
  AccessoriesDelegateBase::AccessoriesDelegateBase(a1, v18, &v16, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  *a1 = &unk_2A1E28C90;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v8 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(&v17);
    v9 = v17;
    v17 = 0uLL;
    v10 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v17 + 1);
    if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18B7340;
  }

  v12 = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  ctu::iokit::Controller::create(*(*v8 + 144), v13);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  v14 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2970CFA94(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  AccessoriesDelegateBase::~AccessoriesDelegateBase(v1);
  _Unwind_Resume(a1);
}

void sub_2970CFAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    dispatch_release(v16);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(&a16);
  _Unwind_Resume(a1);
}

void IOKitAccessoriesDelegate::~IOKitAccessoriesDelegate(IOKitAccessoriesDelegate *this)
{
  *this = &unk_2A1E28C90;
  v2 = *(this + 20);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = this;
  }

  else
  {
    v9 = this;
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(v9);
}

{
  IOKitAccessoriesDelegate::~IOKitAccessoriesDelegate(this);

  operator delete(v1);
}

void IOKitAccessoriesDelegate::init(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_4;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

double ___ZN24IOKitAccessoriesDelegate4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 2;
  v2 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 2u, &v7);
  *(v2 + 20) = 0x2000000000004;
  *(v2 + 7) = 0x10000;
  v7 = 8;
  v3 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 8u, &v7);
  *(v3 + 20) = 0x3000000000000;
  *(v3 + 7) = 0;
  v7 = 4;
  v4 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 4u, &v7);
  *(v4 + 20) = 0x300000000000FLL;
  *(v4 + 7) = 0;
  v7 = 32;
  v5 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 0x20u, &v7);
  *&result = 0x3000000000010;
  *(v5 + 20) = 0x3000000000010;
  *(v5 + 7) = 0;
  return result;
}

void IOKitAccessoriesDelegate::start(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_12_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Already started", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
    }

    *(v1 + 80) = 1;
    v5 = *(v1 + 16);
    if (!v5 || (v6 = *(v1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
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

    v10 = *(v1 + 88);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_5_8;
    aBlock[4] = v1;
    aBlock[5] = v6;
    v22 = v8;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v11 = _Block_copy(aBlock);
    v12 = *(v1 + 24);
    if (v12)
    {
      dispatch_retain(*(v1 + 24));
    }

    v23 = v11;
    v24 = v12;
    ctu::iokit::Controller::setPowerSourceCallback();
    if (v24)
    {
      dispatch_release(v24);
    }

    v13 = v23;
    if (v23)
    {
      _Block_release(v23);
    }

    if (capabilities::abs::supportsDisplayCoverAccessory(v13))
    {
      v14 = *(v1 + 88);
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 1174405120;
      v17[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_6;
      v17[3] = &__block_descriptor_tmp_11_1;
      v17[4] = v1;
      v17[5] = v6;
      v18 = v8;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = _Block_copy(v17);
      v16 = *(v1 + 24);
      if (v16)
      {
        dispatch_retain(*(v1 + 24));
      }

      v19 = v15;
      object = v16;
      ctu::iokit::Controller::registerForDisplayCoverStateChanged();
      if (object)
      {
        dispatch_release(object);
      }

      if (v19)
      {
        _Block_release(v19);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_2970D0078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayCoverState)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v26 = a24;
    if (!a24)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v24);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v26);
  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_2(void *a1, uint64_t a2)
{
  v142 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_274;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v139 = v6;
  if (!v6)
  {
    goto LABEL_274;
  }

  if (!a1[5])
  {
    goto LABEL_272;
  }

  v137 = 0;
  v7 = *(v5 + 120);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v110 = 0;
    v11 = 0;
    v108 = (v5 + 160);
    v12 = -1;
    while (1)
    {
      v13 = *(v7 + 4);
      if ((v13 & a2) != 0)
      {
        break;
      }

LABEL_7:
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_104;
      }
    }

    v14 = *(v5 + 152);
    if (v14)
    {
      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = *(v7 + 4);
        if (*&v14 <= v13)
        {
          v16 = v13 % v14.i32[0];
        }
      }

      else
      {
        v16 = (v14.i32[0] - 1) & v13;
      }

      v17 = *(*(v5 + 144) + 8 * v16);
      if (v17)
      {
        v18 = *v17;
        if (v18)
        {
          if (v15.u32[0] < 2uLL)
          {
            v19 = *&v14 - 1;
            while (1)
            {
              v20 = v18[1];
              if (v20 == v13)
              {
                if (*(v18 + 4) == v13)
                {
                  goto LABEL_6;
                }
              }

              else if ((v20 & v19) != v16)
              {
                goto LABEL_30;
              }

              v18 = *v18;
              if (!v18)
              {
                goto LABEL_30;
              }
            }
          }

          do
          {
            v21 = v18[1];
            if (v21 == v13)
            {
              if (*(v18 + 4) == v13)
              {
                goto LABEL_6;
              }
            }

            else
            {
              if (v21 >= *&v14)
              {
                v21 %= *&v14;
              }

              if (v21 != v16)
              {
                break;
              }
            }

            v18 = *v18;
          }

          while (v18);
        }
      }
    }

LABEL_30:
    v22 = *(v5 + 40);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      ctu::iokit::asString();
      v24 = __p;
      if (SBYTE7(v117) < 0)
      {
        v24 = __p[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v24;
      _os_log_impl(&dword_296FF7000, v22, OS_LOG_TYPE_DEFAULT, "#I Power Source attached: %s", &buf, 0xCu);
      if (SBYTE7(v117) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = *(v7 + 10);
    v10 = *(v7 + 12);
    LOWORD(v110) = *(v7 + 13);
    WORD2(v110) = *(v7 + 14);
    capabilities::abs::supportedSARFeatures(v23);
    if (capabilities::abs::operator&())
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = *(v7 + 4);
    v27 = *(v5 + 152);
    if (v27)
    {
      v28 = vcnt_s8(v27);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        v29 = *(v7 + 4);
        if (v27 <= v26)
        {
          v29 = v26 % v27;
        }
      }

      else
      {
        v29 = (v27 - 1) & v26;
      }

      v30 = *(*(v5 + 144) + 8 * v29);
      if (v30)
      {
        v31 = *v30;
        if (*v30)
        {
          if (v28.u32[0] < 2uLL)
          {
            while (1)
            {
              v33 = v31[1];
              if (v33 == v26)
              {
                if (*(v31 + 4) == v26)
                {
                  goto LABEL_91;
                }
              }

              else if ((v33 & (v27 - 1)) != v29)
              {
                goto LABEL_59;
              }

              v31 = *v31;
              if (!v31)
              {
                goto LABEL_59;
              }
            }
          }

          do
          {
            v32 = v31[1];
            if (v32 == v26)
            {
              if (*(v31 + 4) == v26)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v32 >= v27)
              {
                v32 %= v27;
              }

              if (v32 != v29)
              {
                break;
              }
            }

            v31 = *v31;
          }

          while (v31);
        }
      }
    }

    else
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
    }

LABEL_59:
    v31 = operator new(0x20uLL);
    *v31 = 0;
    v31[1] = v26;
    *(v31 + 4) = *(v7 + 4);
    *(v31 + 10) = -1;
    *(v31 + 22) = 0;
    *(v31 + 15) = 0;
    v34 = (*(v5 + 168) + 1);
    v35 = *(v5 + 176);
    if (v27 && (v35 * v27) >= v34)
    {
      v26 = v29;
    }

    else
    {
      v36 = (v27 & (v27 - 1)) != 0;
      if (v27 < 3)
      {
        v36 = 1;
      }

      v37 = v36 | (2 * v27);
      v38 = vcvtps_u32_f32(v34 / v35);
      if (v37 <= v38)
      {
        prime = v38;
      }

      else
      {
        prime = v37;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v27 = *(v5 + 152);
      }

      if (prime > v27)
      {
        goto LABEL_72;
      }

      if (prime < v27)
      {
        v40 = vcvtps_u32_f32(*(v5 + 168) / *(v5 + 176));
        if (v27 < 3 || (v41 = vcnt_s8(v27), v41.i16[0] = vaddlv_u8(v41), v41.u32[0] > 1uLL))
        {
          v40 = std::__next_prime(v40);
        }

        else
        {
          v42 = 1 << -__clz(v40 - 1);
          if (v40 >= 2)
          {
            v40 = v42;
          }
        }

        if (prime <= v40)
        {
          prime = v40;
        }

        if (prime < v27)
        {
LABEL_72:
          std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(v5 + 144, prime);
        }
      }

      v27 = *(v5 + 152);
      if ((v27 & (v27 - 1)) != 0)
      {
        if (v27 <= v26)
        {
          v26 %= v27;
        }
      }

      else
      {
        v26 = (v27 - 1) & v26;
      }
    }

    v43 = *(v5 + 144);
    v44 = *(v43 + 8 * v26);
    if (v44)
    {
      *v31 = *v44;
    }

    else
    {
      *v31 = *v108;
      *v108 = v31;
      *(v43 + 8 * v26) = v108;
      if (!*v31)
      {
        goto LABEL_90;
      }

      v47 = *(*v31 + 8);
      if ((v27 & (v27 - 1)) != 0)
      {
        if (v47 >= v27)
        {
          v47 %= v27;
        }

        v44 = (v43 + 8 * v47);
      }

      else
      {
        v44 = (v43 + 8 * (v47 & (v27 - 1)));
      }
    }

    *v44 = v31;
LABEL_90:
    ++*(v5 + 168);
LABEL_91:
    *(v31 + 10) = v12;
    v9 = 2;
    *(v31 + 11) = 2;
    *(v31 + 12) = v10;
    *(v31 + 13) = v110;
    *(v31 + 14) = WORD2(v110);
    v11 = v25;
    *(v31 + 15) = v25;
    v45 = *(v5 + 72);
    if (v45)
    {
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v46 = operator new(0xCuLL);
      v134 = v46 + 6;
      v135 = v46 + 6;
      *v46 = v12;
      v46[1] = 2;
      v46[2] = v10;
      v46[3] = v110;
      v46[4] = WORD2(v110);
      v46[5] = v25;
      v133 = v46;
      (*(*v45 + 48))(v45, &v136, &v133);
      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v136)
      {
        CFRelease(v136);
      }

      v8 = 1;
      v9 = 2;
    }

    else
    {
LABEL_6:
      v8 = 1;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v110 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v12 = -1;
LABEL_104:
  v107 = v9;
  v48 = *(v5 + 160);
  v109 = (v5 + 160);
  if (!v48)
  {
    v51 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  v106 = v11;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  do
  {
    if ((v48[2] & a2) == 0)
    {
      v52 = *(v5 + 40);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (v53)
      {
        ctu::iokit::asString();
        v54 = __p;
        if (SBYTE7(v117) < 0)
        {
          v54 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v54;
        _os_log_impl(&dword_296FF7000, v52, OS_LOG_TYPE_DEFAULT, "#I Power Source detached: %s", &buf, 0xCu);
        if (SBYTE7(v117) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v48 + 11) = 1;
      capabilities::abs::supportedSARFeatures(v53);
      if (capabilities::abs::operator&())
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      *(v48 + 15) = v55;
      if (v50 >= v49)
      {
        v56 = v50 - v51;
        v57 = (v50 - v51) >> 2;
        v58 = v57 + 1;
        if ((v57 + 1) >> 62)
        {
          std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
        }

        if ((v49 - v51) >> 1 > v58)
        {
          v58 = (v49 - v51) >> 1;
        }

        if ((v49 - v51) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v58;
        }

        if (v59)
        {
          if (v59 >> 62)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v60 = operator new(4 * v59);
        }

        else
        {
          v60 = 0;
        }

        v61 = &v60[4 * v57];
        v49 = &v60[4 * v59];
        *v61 = *(v48 + 4);
        v50 = v61 + 4;
        memcpy(v60, v51, v56);
        if (v51)
        {
          operator delete(v51);
        }

        v51 = v60;
        if (!*(v5 + 72))
        {
          goto LABEL_106;
        }
      }

      else
      {
        *v50 = *(v48 + 4);
        v50 += 4;
        if (!*(v5 + 72))
        {
LABEL_106:
          v8 = 1;
          goto LABEL_107;
        }
      }

      v132 = v137;
      if (v137)
      {
        CFRetain(v137);
      }

      __p[0] = *(v48 + 20);
      LODWORD(__p[1]) = *(v48 + 7);
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v62 = operator new(0xCuLL);
      v130 = (v62 + 12);
      v131 = v62 + 12;
      *(v62 + 2) = __p[1];
      *v62 = __p[0];
      v129 = v62;
      v63 = *(v5 + 72);
      if (!v63)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v63 + 48))(v63, &v132, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v132)
      {
        CFRelease(v132);
      }

      goto LABEL_106;
    }

LABEL_107:
    v48 = *v48;
  }

  while (v48);
  if (v51 == v50)
  {
    v11 = v106;
    if ((a2 & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  v64 = *(v5 + 152);
  v11 = v106;
  if (v64)
  {
    v65 = v51;
LABEL_144:
    v66 = *v65;
    v67 = vcnt_s8(v64);
    v67.i16[0] = vaddlv_u8(v67);
    if (v67.u32[0] > 1uLL)
    {
      v68 = *v65;
      if (*&v64 <= v66)
      {
        v68 = v66 % v64.i32[0];
      }
    }

    else
    {
      v68 = (v64.i32[0] - 1) & v66;
    }

    v69 = *(v5 + 144);
    v70 = *(v69 + 8 * v68);
    if (v70)
    {
      v71 = *v70;
      if (*v70)
      {
        v72 = *&v64 - 1;
        if (v67.u32[0] < 2uLL)
        {
          while (1)
          {
            v73 = *(v71 + 1);
            if (v73 == v66)
            {
              if (v71[4] == v66)
              {
                goto LABEL_164;
              }
            }

            else if ((v73 & v72) != v68)
            {
              goto LABEL_191;
            }

            v71 = *v71;
            if (!v71)
            {
              goto LABEL_191;
            }
          }
        }

        do
        {
          v74 = *(v71 + 1);
          if (v74 == v66)
          {
            if (v71[4] == v66)
            {
LABEL_164:
              if (v67.u32[0] > 1uLL)
              {
                if (*&v64 <= v66)
                {
                  v66 %= *&v64;
                }
              }

              else
              {
                v66 &= v72;
              }

              v75 = *(v69 + 8 * v66);
              do
              {
                v76 = v75;
                v75 = *v75;
              }

              while (v75 != v71);
              if (v76 == v109)
              {
                goto LABEL_181;
              }

              v77 = v76[1];
              if (v67.u32[0] > 1uLL)
              {
                if (v77 >= *&v64)
                {
                  v77 %= *&v64;
                }
              }

              else
              {
                v77 &= v72;
              }

              if (v77 != v66)
              {
LABEL_181:
                if (!*v71)
                {
                  goto LABEL_182;
                }

                v78 = *(*v71 + 8);
                if (v67.u32[0] > 1uLL)
                {
                  if (v78 >= *&v64)
                  {
                    v78 %= *&v64;
                  }
                }

                else
                {
                  v78 &= v72;
                }

                if (v78 != v66)
                {
LABEL_182:
                  *(v69 + 8 * v66) = 0;
                }
              }

              v79 = *v71;
              if (*v71)
              {
                v80 = *(v79 + 8);
                if (v67.u32[0] > 1uLL)
                {
                  if (v80 >= *&v64)
                  {
                    v80 %= *&v64;
                  }
                }

                else
                {
                  v80 &= v72;
                }

                if (v80 != v66)
                {
                  *(v69 + 8 * v80) = v76;
                  v79 = *v71;
                }
              }

              *v76 = v79;
              *v71 = 0;
              --*(v5 + 168);
              operator delete(v71);
              break;
            }
          }

          else
          {
            if (v74 >= *&v64)
            {
              v74 %= *&v64;
            }

            if (v74 != v68)
            {
              break;
            }
          }

          v71 = *v71;
        }

        while (v71);
      }
    }

LABEL_191:
    while (1)
    {
      v65 += 4;
      if (v65 == v50)
      {
        break;
      }

      v64 = *(v5 + 152);
      if (v64)
      {
        goto LABEL_144;
      }
    }
  }

  if (a2)
  {
LABEL_198:
    if (*(v5 + 168))
    {
      v85 = *(v5 + 40);
      v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
      if (v86)
      {
        ctu::iokit::asString();
        v87 = (SBYTE7(v117) & 0x80u) == 0 ? __p : __p[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v87;
        _os_log_impl(&dword_296FF7000, v85, OS_LOG_TYPE_DEFAULT, "#I Power Source: %s", &buf, 0xCu);
        if (SBYTE7(v117) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v88 = *v109;
      if (*v109)
      {
        do
        {
          while ((v88[2] & a2) != 0)
          {
            v88 = *v88;
            if (!v88)
            {
              goto LABEL_194;
            }
          }

          *(v88 + 11) = 1;
          capabilities::abs::supportedSARFeatures(v86);
          v86 = capabilities::abs::operator&();
          if (v86)
          {
            v89 = 2;
          }

          else
          {
            v89 = 1;
          }

          *(v88 + 15) = v89;
          if (*(v5 + 72))
          {
            v128 = v137;
            if (v137)
            {
              CFRetain(v137);
            }

            __p[0] = *(v88 + 20);
            LODWORD(__p[1]) = *(v88 + 7);
            v125 = 0;
            v126 = 0;
            v127 = 0;
            v90 = operator new(0xCuLL);
            v126 = v90 + 12;
            v127 = v90 + 12;
            *(v90 + 2) = __p[1];
            *v90 = __p[0];
            v125 = v90;
            v91 = *(v5 + 72);
            if (!v91)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v91 + 48))(v91, &v128, &v125);
            if (v125)
            {
              v126 = v125;
              operator delete(v125);
            }

            v86 = v128;
            if (v128)
            {
              CFRelease(v128);
            }
          }

          v88 = *v88;
        }

        while (v88);
      }

      if (*(v5 + 168))
      {
        v92 = *v109;
        if (*v109)
        {
          do
          {
            v93 = *v92;
            operator delete(v92);
            v92 = v93;
          }

          while (v93);
        }

        *(v5 + 160) = 0;
        v94 = *(v5 + 152);
        if (v94)
        {
          bzero(*(v5 + 144), 8 * v94);
        }

        *(v5 + 168) = 0;
      }
    }

    goto LABEL_267;
  }

LABEL_193:
  if (v8)
  {
    goto LABEL_267;
  }

LABEL_194:
  v124 = 0xAAAAAAAAAAAAAAAALL;
  *&v81 = 0xAAAAAAAAAAAAAAAALL;
  *(&v81 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v123[7] = v81;
  v123[8] = v81;
  v123[5] = v81;
  v123[6] = v81;
  v123[3] = v81;
  v123[4] = v81;
  v123[1] = v81;
  v123[2] = v81;
  v122 = v81;
  v123[0] = v81;
  *v120 = v81;
  v121 = v81;
  v118 = v81;
  v119 = v81;
  *__p = v81;
  v117 = v81;
  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unexpected Power Source event: ", 31);
  MEMORY[0x29C26BE00](v82, a2);
  memset(&buf, 170, sizeof(buf));
  if ((BYTE8(v122) & 0x10) != 0)
  {
    v95 = v122;
    if (v122 < *(&v119 + 1))
    {
      *&v122 = *(&v119 + 1);
      v95 = *(&v119 + 1);
    }

    v96 = v119;
    v83 = v95 - v119;
    if ((v95 - v119) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_244;
    }
  }

  else
  {
    if ((BYTE8(v122) & 8) == 0)
    {
      v83 = 0;
      *(&buf.__r_.__value_.__s + 23) = 0;
      p_buf = &buf;
      goto LABEL_240;
    }

    v96 = *(&v117 + 1);
    v83 = *(&v118 + 1) - *(&v117 + 1);
    if (*(&v118 + 1) - *(&v117 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_244:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v83 >= 0x17)
  {
    if ((v83 | 7) == 0x17)
    {
      v97 = 25;
    }

    else
    {
      v97 = (v83 | 7) + 1;
    }

    p_buf = operator new(v97);
    buf.__r_.__value_.__l.__size_ = v83;
    buf.__r_.__value_.__r.__words[2] = v97 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
    goto LABEL_239;
  }

  *(&buf.__r_.__value_.__s + 23) = v83;
  p_buf = &buf;
  if (v83)
  {
LABEL_239:
    memmove(p_buf, v96, v83);
  }

LABEL_240:
  p_buf->__r_.__value_.__s.__data_[v83] = 0;
  v98 = *(v5 + 40);
  if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
  {
    v99 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v99 = buf.__r_.__value_.__r.__words[0];
    }

    *v140 = 136315138;
    *&v140[4] = v99;
    _os_log_error_impl(&dword_296FF7000, v98, OS_LOG_TYPE_ERROR, "%s", v140, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_248;
    }

LABEL_242:
    v115 = buf;
  }

  else
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_242;
    }

LABEL_248:
    std::string::__init_copy_ctor_external(&v115, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  (*(*v5 + 48))(v140, v5, &v115, 5);
  v100 = v137;
  v101 = *v140;
  v137 = *v140;
  *v140 = 0;
  if (v100)
  {
    CFRelease(v100);
    if (*v140)
    {
      CFRelease(*v140);
    }
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  if (*(v5 + 72))
  {
    cf = v101;
    if (v101)
    {
      CFRetain(v101);
    }

    v102 = operator new(0xCuLL);
    v112 = v102 + 6;
    v113 = v102 + 6;
    *v102 = v12;
    v102[1] = v107;
    v102[2] = v10;
    v102[3] = v110;
    v102[4] = WORD2(v110);
    v102[5] = v11;
    v111 = v102;
    v103 = *(v5 + 72);
    if (!v103)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v103 + 48))(v103, &cf, &v111);
    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  __p[0] = *MEMORY[0x29EDC9538];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9538] + 24);
  __p[1] = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120[1]);
  }

  __p[1] = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&v117);
  std::ostream::~ostream();
  MEMORY[0x29C26C030](v123);
LABEL_267:
  if (v51)
  {
    operator delete(v51);
  }

  if (v137)
  {
    CFRelease(v137);
  }

  v6 = v139;
  if (v139)
  {
LABEL_272:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v104 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v104);
    }
  }

LABEL_274:
  v105 = *MEMORY[0x29EDCA608];
}

void sub_2970D112C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (*(v61 - 105) < 0)
  {
    operator delete(*(v61 - 128));
  }

  std::ostringstream::~ostringstream(&a26);
  if (v60)
  {
    operator delete(v60);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v61 - 168));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v61 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C26BF30](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_2970D147C(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C26C030](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C26C030](a1 + 112);
  return a1;
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrI23AccessoriesDelegateBaseEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrI23AccessoriesDelegateBaseEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_6(void *a1, unsigned int a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_54;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v34 = v6;
  if (!v6)
  {
    goto LABEL_54;
  }

  if (!a1[5])
  {
    goto LABEL_52;
  }

  cf = 0;
  if (a2 < 4)
  {
    v7 = 0x4000300010002uLL >> (16 * a2);
    v8 = v5[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = ctu::iokit::asString();
      _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Display Cover event: %s", buf, 0xCu);
    }

    v9 = 0;
    if (!v5[9])
    {
      goto LABEL_49;
    }

LABEL_42:
    v29 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v22 = operator new(0xCuLL);
    v27 = v22 + 12;
    v28 = v22 + 12;
    *v22 = 13;
    *(v22 + 1) = v7;
    *(v22 + 4) = 0;
    v26 = v22;
    v23 = v5[9];
    if (!v23)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v23 + 48))(v23, &v29, &v26);
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    goto LABEL_49;
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[7] = v10;
  v43[8] = v10;
  v43[5] = v10;
  v43[6] = v10;
  v43[3] = v10;
  v43[4] = v10;
  v43[1] = v10;
  v43[2] = v10;
  v42 = v10;
  v43[0] = v10;
  *__p = v10;
  v41 = v10;
  v38 = v10;
  v39 = v10;
  *buf = v10;
  v37 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Unexpected Display Cover event: ", 32);
  v12 = ctu::iokit::asString();
  v13 = strlen(v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  memset(&__dst, 170, sizeof(__dst));
  if ((BYTE8(v42) & 0x10) != 0)
  {
    v16 = v42;
    if (v42 < *(&v39 + 1))
    {
      *&v42 = *(&v39 + 1);
      v16 = *(&v39 + 1);
    }

    v17 = v39;
    v14 = v16 - v39;
    if ((v16 - v39) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if ((BYTE8(v42) & 8) == 0)
    {
      v14 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      p_dst = &__dst;
      goto LABEL_23;
    }

    v17 = *(&v37 + 1);
    v14 = *(&v38 + 1) - *(&v37 + 1);
    if (*(&v38 + 1) - *(&v37 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_27:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_dst = operator new(v18);
    __dst.__r_.__value_.__l.__size_ = v14;
    __dst.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_22;
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  p_dst = &__dst;
  if (v14)
  {
LABEL_22:
    memmove(p_dst, v17, v14);
  }

LABEL_23:
  p_dst->__r_.__value_.__s.__data_[v14] = 0;
  v19 = v5[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __dst.__r_.__value_.__r.__words[0];
    }

    *v35 = 136315138;
    *&v35[4] = v20;
    _os_log_error_impl(&dword_296FF7000, v19, OS_LOG_TYPE_ERROR, "%s", v35, 0xCu);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    std::string::__init_copy_ctor_external(&v30, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    goto LABEL_32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v30 = __dst;
LABEL_32:
  (*(*v5 + 48))(v35, v5, &v30, 5);
  v21 = cf;
  v9 = *v35;
  cf = *v35;
  *v35 = 0;
  if (v21)
  {
    CFRelease(v21);
    if (*v35)
    {
      CFRelease(*v35);
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *buf = *MEMORY[0x29EDC9538];
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
  *&buf[8] = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[1]);
  }

  *&buf[8] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v37);
  std::ostream::~ostream();
  MEMORY[0x29C26C030](v43);
  LOWORD(v7) = 0;
  if (v5[9])
  {
    goto LABEL_42;
  }

LABEL_49:
  if (v9)
  {
    CFRelease(v9);
  }

  v6 = v34;
  if (v34)
  {
LABEL_52:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v24);
    }
  }

LABEL_54:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_2970D1B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a33);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a26);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void IOKitAccessoriesDelegate::stop(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_13_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN24IOKitAccessoriesDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    *(v1 + 80) = 0;
    v5 = ctu::iokit::Controller::stopPowerSourceNotifications(*(v1 + 88));
    if (*(v1 + 168))
    {
      v5 = *(v1 + 160);
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *(v1 + 160) = 0;
      v7 = *(v1 + 152);
      if (v7)
      {
        bzero(*(v1 + 144), 8 * v7);
      }

      *(v1 + 168) = 0;
    }

    if (capabilities::abs::supportsDisplayCoverAccessory(v5))
    {
      ctu::iokit::Controller::stopDisplayCoverStateNotifications(*(v1 + 88));
    }
  }

  else if (v4)
  {
    *v8 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v8, 2u);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayCoverState)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<IOKitAccessoriesDelegate *,std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate *)#1},std::allocator<IOKitAccessoriesDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<IOKitAccessoriesDelegate *,std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate *)#1},std::allocator<IOKitAccessoriesDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate*)#1}::operator() const(IOKitAccessoriesDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v5 = a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 4) == a2)
              {
                return v10;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x20uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = *a3;
  *(v10 + 10) = -1;
  *(v10 + 22) = 0;
  *(v10 + 15) = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (v6 && (v14 * v6) >= v13)
  {
    v5 = v8;
  }

  else
  {
    v15 = 1;
    if (v6 >= 3)
    {
      v15 = (v6 & (v6 - 1)) != 0;
    }

    v16 = v15 | (2 * v6);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      prime = v17;
    }

    else
    {
      prime = v16;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_35;
    }

    if (prime < v6)
    {
      v19 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v20 = vcnt_s8(v6), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
      {
        v19 = std::__next_prime(v19);
      }

      else
      {
        v21 = 1 << -__clz(v19 - 1);
        if (v19 >= 2)
        {
          v19 = v21;
        }
      }

      if (prime <= v19)
      {
        prime = v19;
      }

      if (prime < v6)
      {
LABEL_35:
        std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v5);
  if (v23)
  {
    *v10 = *v23;
  }

  else
  {
    *v10 = *(a1 + 16);
    *(a1 + 16) = v10;
    *(v22 + 8 * v5) = a1 + 16;
    if (!*v10)
    {
      goto LABEL_53;
    }

    v25 = *(*v10 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v25 >= v6)
      {
        v25 %= v6;
      }

      v23 = (v22 + 8 * v25);
    }

    else
    {
      v23 = (v22 + 8 * (v25 & (v6 - 1)));
    }
  }

  *v23 = v10;
LABEL_53:
  ++*(a1 + 24);
  return v10;
}

void std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v14 = *a1;
    *a1 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v4 = operator new(8 * a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
    v4 = *a1;
  }

  *(a1 + 8) = a2;
  bzero(v4, 8 * a2);
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  if (v8)
  {
    v9 = v6[1];
    v10 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v11 = v9 & v10;
      *(v4 + v11) = v7;
      while (1)
      {
        v12 = *v6;
        if (!*v6)
        {
          break;
        }

        v13 = v12[1] & v10;
        if (v13 == v11)
        {
          v6 = *v6;
        }

        else if (*(v4 + v13))
        {
          *v6 = *v12;
          *v12 = **(v4 + v13);
          **(v4 + v13) = v12;
        }

        else
        {
          *(v4 + v13) = v6;
          v6 = v12;
          v11 = v13;
        }
      }

      return;
    }

    if (v9 >= a2)
    {
      v9 %= a2;
    }

    *(v4 + v9) = v7;
    v15 = *v6;
    if (*v6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 >= a2)
        {
          v16 %= a2;
        }

        if (v16 == v9)
        {
          goto LABEL_23;
        }

        if (*(v4 + v16))
        {
          *v6 = *v15;
          *v15 = **(v4 + v16);
          **(v4 + v16) = v15;
          v15 = v6;
LABEL_23:
          v6 = v15;
          v15 = *v15;
          if (!v15)
          {
            return;
          }
        }

        else
        {
          *(v4 + v16) = v6;
          v6 = v15;
          v15 = *v15;
          v9 = v16;
          if (!v15)
          {
            return;
          }
        }
      }
    }
  }
}

void ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E28DA0;
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

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIK23AccessoriesDelegateBaseEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIK23AccessoriesDelegateBaseEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CMOnBodyDelegate::create(NSObject **this@<X0>, queue a2@<0:X1>, CMOnBodyDelegate **a3@<X8>)
{
  if (([MEMORY[0x29EDB93C8] isOnBodyStatusDetectionAvailable] & 1) == 0)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18B7680 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v12 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        *a3 = 0;
        a3[1] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
      v12 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "Motion on-body detection is not available on this device", buf, 2u);
    goto LABEL_12;
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x40uLL);
  v6 = *this;
  v14 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7.fObj.fObj = &v14;
  CMOnBodyDelegate::CMOnBodyDelegate(v5, v7);
  *a3 = v5;
  v8 = operator new(0x28uLL);
  v8[1] = 0;
  v9 = v8 + 1;
  *v8 = &unk_2A1E28E30;
  v8[2] = 0;
  v8[3] = v5;
  v8[4] = &__block_literal_global_6;
  a3[1] = v8;
  v10 = *(v5 + 1);
  if (!v10)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    if (atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    v11 = v8;
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      v13 = v8;
      (*(*v8 + 16))();
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_15:
  if (v6)
  {

    dispatch_release(v6);
  }
}

void sub_2970D27A4(void *a1)
{
  v2 = __cxa_begin_catch(a1);
  _block_invoke(v2, v1);
  __cxa_rethrow();
}

void sub_2970D27B8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void _block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = _block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v2, block);
}

void _block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CMOnBodyDelegate::~CMOnBodyDelegate(v1);

    operator delete(v2);
  }
}

void CMOnBodyDelegate::CMOnBodyDelegate(CMOnBodyDelegate *this, queue a2)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", "cm.onbody");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](this + 16, v5);
  MEMORY[0x29C26B020](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = *a2.fObj.fObj;
}

uint64_t CMOnBodyDelegate::shutdown(CMOnBodyDelegate *this)
{
  result = [objc_msgSend(MEMORY[0x29EDB93C8] "sharedOnBodyStatusManager")];
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }

  return result;
}

uint64_t CMOnBodyDelegate::stopMotionDetection(CMOnBodyDelegate *this)
{
  v1 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];

  return [v1 stopOnBodyStatusDetection];
}

void CMOnBodyDelegate::~CMOnBodyDelegate(CMOnBodyDelegate *this)
{
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 5) = v2;
  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 5);
    v10 = *(this + 4);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11)
        {
          dispatch_release(v11);
        }

        v13 = *(v9 - 16);
        v9 -= 16;
        v12 = v13;
        if (v13)
        {
          _Block_release(v12);
        }
      }

      while (v9 != v8);
      v10 = *(this + 4);
    }

    *(this + 5) = v8;
    operator delete(v10);
  }

  MEMORY[0x29C26B020](this + 16);
  v14 = *(this + 1);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void CMOnBodyDelegate::startMotionDetection(CMOnBodyDelegate *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 7))
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    if (*(this + 7))
    {
LABEL_5:
      v6 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];
      v7 = *(this + 3);
      v8 = *(this + 7);
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 3321888768;
      v10[2] = ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke;
      v10[3] = &__block_descriptor_48_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE_e36_v24__0__CMOnBodyStatus_8__NSError_16l;
      v10[4] = v3;
      v11 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      [v6 startOnBodyStatusDetectionToQueue:v7 withParameters:v8 handler:v10];
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      goto LABEL_10;
    }
  }

  v9 = *(this + 2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Motion parameters not set, cannot start motion detection!", buf, 2u);
  }

LABEL_10:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_2970D2C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    std::__shared_weak_count::__release_weak(v14);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        CMOnBodyDelegate::motionCallback_sync(v7, [a2 result], objc_msgSend(a2, "confidence"));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void CMOnBodyDelegate::motionCallback_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 != v4)
  {
    while (!*v3)
    {
      v7 = 0;
      v8 = *(v3 + 8);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (!v7)
      {
        v10 = 0;
        v12 = MEMORY[0x29EDCA5F8];
        v13 = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
        v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
LABEL_13:
        v11 = 0;
        goto LABEL_14;
      }

      v9 = _Block_copy(v7);
      v10 = v9;
      v12 = MEMORY[0x29EDCA5F8];
      v13 = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
      v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_13;
      }

      v11 = _Block_copy(v9);
LABEL_14:
      aBlock = v11;
      v17 = a2;
      v18 = a3;
      dispatch_async(v8, &v12);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (v8)
      {
        dispatch_release(v8);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v3 += 16;
      if (v3 == v4)
      {
        return;
      }
    }

    v7 = _Block_copy(*v3);
    v8 = *(v3 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    dispatch_retain(v8);
    goto LABEL_7;
  }
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void CMOnBodyDelegate::setThresholds(CMOnBodyDelegate *this, CFTypeRef cf)
{
  if (*(this + 7))
  {
    v3 = *(this + 2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v3, OS_LOG_TYPE_ERROR, "Motion parameters already set, ignore request to set them again", buf, 2u);
    }
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
      v5 = *(this + 7);
      *(this + 7) = cf;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *(this + 7) = 0;
    }

    [objc_msgSend(MEMORY[0x29EDB93C8] "sharedOnBodyStatusManager")];
    v6 = *(this + 2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Motion parameters set successfully", v7, 2u);
    }
  }
}

char *CMOnBodyDelegate::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[5];
  if (v4 >= a1[6])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(a1 + 4, a2);
    a1[5] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[5] = (v4 + 2);
  }

  return result;
}

const char *CMOnBodyDelegate::toString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE64358[a1];
  }
}

const char *CMOnBodyDelegate::toString(int a1)
{
  v1 = "Confidence Level Unknown";
  if (a1 == 1)
  {
    v1 = "Confidence Level High";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Confidence Level Low";
  }
}

char *std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

void std::__shared_ptr_pointer<CMOnBodyDelegate *,void({block_pointer})(CMOnBodyDelegate *),std::allocator<CMOnBodyDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CMOnBodyDelegate *,void({block_pointer})(CMOnBodyDelegate *),std::allocator<CMOnBodyDelegate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000297229660)
  {
    return a1 + 32;
  }

  if (((v2 & 0x8000000297229660 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297229660))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297229660 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void *__copy_helper_block_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void HandDetectionManager::create(char *a1@<X0>, NSObject **a2@<X1>, NSObject **a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, HandDetectionManager **a7@<X8>)
{
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v14 = operator new(0xA0uLL);
  v15 = *a2;
  v41 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = *a3;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = a4[1];
  v38 = *a4;
  v39 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a5[1];
  v36 = *a5;
  v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *a6;
  v20 = a6[1];
  v35[0] = v19;
  v35[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HandDetectionManager::HandDetectionManager(v14, a1, &v41, &object, &v38, &v36, v35);
  v42 = v14;
  *buf = v14;
  v21 = operator new(0x20uLL);
  v21[1] = 0;
  v24 = v21 + 1;
  *v21 = &unk_2A1E28F70;
  v21[2] = 0;
  v21[3] = v14;
  v43 = v21;
  *buf = 0;
  v25 = *(v14 + 2);
  if (!v25)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v21 + 2, 1uLL, memory_order_relaxed);
    *(v14 + 1) = v14;
    *(v14 + 2) = v21;
    if (atomic_fetch_add(v24, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v25->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v21 + 2, 1uLL, memory_order_relaxed);
    *(v14 + 1) = v14;
    *(v14 + 2) = v21;
    v26 = v21;
    std::__shared_weak_count::__release_weak(v25);
    v21 = v26;
    if (!atomic_fetch_add(v24, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_16:
      v27 = v21;
      (*(*v21 + 16))(v21, v22, v23);
      std::__shared_weak_count::__release_weak(v27);
    }
  }

LABEL_17:
  if (*buf)
  {
    HandDetectionManager::~HandDetectionManager(*buf);
    operator delete(v28);
  }

  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v29 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v41)
  {
    dispatch_release(v41);
  }

  v31 = v42;
  if (v42 && (HandDetectionManager::init(v42) & 1) != 0)
  {
    v32 = v43;
    *a7 = v31;
    a7[1] = v32;
    return;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18B7680 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v33 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

LABEL_43:
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v33, OS_LOG_TYPE_ERROR, "Failed to create hand detection manager!", buf, 2u);
    *a7 = 0;
    a7[1] = 0;
    v34 = v43;
    if (!v43)
    {
      return;
    }

    goto LABEL_39;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
  v33 = qword_2A18B7680;
  if (os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_43;
  }

LABEL_38:
  *a7 = 0;
  a7[1] = 0;
  v34 = v43;
  if (!v43)
  {
    return;
  }

LABEL_39:
  if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }
}

void sub_2970D3864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2970D3878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, HandDetectionManager *a19)
{
  std::unique_ptr<HandDetectionManager>::~unique_ptr[abi:ne200100](&a19);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a13);
  if (v20)
  {
    dispatch_release(v20);
    if (!v19)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  dispatch_release(v19);
  goto LABEL_6;
}

uint64_t HandDetectionManager::init(HandDetectionManager *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*(this + 6))
  {
    v10 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v11 = "Failed to create hand detection manager";
    goto LABEL_22;
  }

  if (!*(this + 9))
  {
    v10 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v11 = "Failed to create audio manager";
    goto LABEL_22;
  }

  if (!*(this + 12))
  {
    v10 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v11 = "Failed to create proximity sensor instance";
LABEL_22:
    _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
LABEL_23:
    v12 = 0;
    if (!v2)
    {
      return v12;
    }

LABEL_24:
    std::__shared_weak_count::__release_weak(v2);
    return v12;
  }

  v4 = *(this + 15);
  if (v4)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN20HandDetectionManager4initEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_32;
    aBlock[4] = this;
    aBlock[5] = v3;
    v35 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = _Block_copy(aBlock);
    v6 = *(this + 18);
    if (v6)
    {
      dispatch_retain(*(this + 18));
    }

    v36 = v5;
    v37 = v6;
    v7 = v4[5];
    if (v7 >= v4[6])
    {
      v9 = std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(v4 + 4, &v36);
      goto LABEL_29;
    }

    if (v5)
    {
      v8 = _Block_copy(v5);
      v6 = v37;
      *v7 = v8;
      v7[1] = v6;
      if (!v6)
      {
LABEL_15:
        v9 = (v7 + 2);
LABEL_29:
        v4[5] = v9;
        if (v37)
        {
          dispatch_release(v37);
        }

        if (v36)
        {
          _Block_release(v36);
        }

        if (v35)
        {
          std::__shared_weak_count::__release_weak(v35);
        }

        goto LABEL_35;
      }
    }

    else
    {
      *v7 = 0;
      v7[1] = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    dispatch_retain(v6);
    goto LABEL_15;
  }

  v14 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v14, OS_LOG_TYPE_ERROR, "On-body handler has not been created yet", buf, 2u);
  }

LABEL_35:
  v15 = *(this + 6);
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN20HandDetectionManager4initEv_block_invoke_3;
  v31[3] = &__block_descriptor_tmp_7_3;
  v31[4] = this;
  v31[5] = v3;
  v32 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = _Block_copy(v31);
  v33 = v16;
  CMHandDetectionDelegate::registerCallback(v15, &v33);
  if (v16)
  {
    _Block_release(v16);
  }

  v17 = *(this + 9);
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 1174405120;
  v27[2] = ___ZN20HandDetectionManager4initEv_block_invoke_8;
  v27[3] = &__block_descriptor_tmp_12_1;
  v27[4] = this;
  v27[5] = v3;
  v28 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = _Block_copy(v27);
  v19 = *(this + 18);
  if (v19)
  {
    dispatch_retain(*(this + 18));
  }

  v29 = v18;
  object = v19;
  v20 = v17[9];
  if (v20 < v17[10])
  {
    if (v18)
    {
      v21 = _Block_copy(v18);
      v19 = object;
      *v20 = v21;
      v20[1] = v19;
      if (!v19)
      {
LABEL_47:
        v22 = (v20 + 2);
        goto LABEL_49;
      }
    }

    else
    {
      *v20 = 0;
      v20[1] = v19;
      if (!v19)
      {
        goto LABEL_47;
      }
    }

    dispatch_retain(v19);
    goto LABEL_47;
  }

  v22 = std::vector<dispatch::callback<void({block_pointer})(AudioManager::AudioOutputState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(AudioManager::AudioOutputState)> const&>(v17 + 8, &v29);
LABEL_49:
  v17[9] = v22;
  if (object)
  {
    dispatch_release(object);
  }

  if (v29)
  {
    _Block_release(v29);
  }

  v23 = *(this + 12);
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1174405120;
  v24[2] = ___ZN20HandDetectionManager4initEv_block_invoke_13;
  v24[3] = &__block_descriptor_tmp_19_2;
  v24[4] = this;
  v24[5] = v3;
  v25 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = _Block_copy(v24);
  ctu::iokit::IOHIDController::registerProxCallback();
  if (v26)
  {
    _Block_release(v26);
  }

  ctu::iokit::IOHIDController::start(*(this + 12));
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  v12 = 1;
  if (v2)
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_2970D3D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>::~callback(v33 - 128);
  v35 = *(v33 - 136);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t HandDetectionManager::HandDetectionManager(uint64_t a1, char *__s, NSObject **a3, NSObject **a4, void *a5, void *a6, void *a7)
{
  v11 = 0x7FFFFFFFFFFFFFF7;
  v12 = strlen(__s);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v12 | 7) + 1;
    }

    p_dst = operator new(v21);
    *(&__dst + 1) = v13;
    v74 = v21 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v74) = v12;
    p_dst = &__dst;
    if (!v12)
    {
      LOBYTE(__dst) = 0;
      v15 = SHIBYTE(v74);
      if ((SHIBYTE(v74) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v13);
  *(p_dst + v13) = 0;
  v15 = SHIBYTE(v74);
  if ((SHIBYTE(v74) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v16 = &__dst;
    if (v15 == 22)
    {
      v64 = a6;
      v17 = a7;
      v18 = a3;
      v19 = 22;
      v20 = 23;
LABEL_15:
      v22 = 2 * v19;
      if (v20 > 2 * v19)
      {
        v22 = v20;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v24 = v23;
      }

      else
      {
        v24 = 23;
      }

      v25 = v19 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v16 + v15) = 46;
    v29 = v15 + 1;
    if (SHIBYTE(v74) < 0)
    {
      *(&__dst + 1) = v29;
    }

    else
    {
      HIBYTE(v74) = v29 & 0x7F;
    }

    v28 = v16 + v29;
    goto LABEL_34;
  }

LABEL_12:
  v15 = *(&__dst + 1);
  v20 = v74 & 0x7FFFFFFFFFFFFFFFLL;
  v19 = (v74 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 != *(&__dst + 1))
  {
    v16 = __dst;
    goto LABEL_30;
  }

  v64 = a6;
  if (v20 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = a7;
  v16 = __dst;
  v18 = a3;
  if (v19 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v25 = 0;
  v24 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v26 = operator new(v24);
  v27 = v26;
  if (v19)
  {
    memmove(v26, v16, v19);
  }

  v27[v19] = 46;
  if (!v25)
  {
    operator delete(v16);
  }

  *(&__dst + 1) = v20;
  v74 = v24 | 0x8000000000000000;
  *&__dst = v27;
  v28 = &v27[v20];
  a3 = v18;
  a7 = v17;
  a6 = v64;
LABEL_34:
  *v28 = 0;
  v76 = v74;
  *__p = __dst;
  v74 = 0;
  __dst = 0uLL;
  v30 = SHIBYTE(v76);
  if ((SHIBYTE(v76) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v76) - 3) < 0x14)
    {
      v31 = (SHIBYTE(v76) + 20);
      v32 = __p;
      v33 = 22;
LABEL_40:
      v34 = 2 * v33;
      if (v31 > 2 * v33)
      {
        v34 = v31;
      }

      if ((v34 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v34 | 7) + 1;
      }

      if (v34 >= 0x17)
      {
        v11 = v35;
      }

      else
      {
        v11 = 23;
      }

      v36 = v33 == 22;
      goto LABEL_49;
    }

    v41 = __p;
LABEL_56:
    v42 = v41 + v30;
    *v42 = *"HandDetectionManager";
    *(v42 + 4) = 1919248225;
    v43 = v30 + 20;
    if (SHIBYTE(v76) < 0)
    {
      __p[1] = (v30 + 20);
    }

    else
    {
      HIBYTE(v76) = v43 & 0x7F;
    }

    v40 = v41 + v43;
    goto LABEL_60;
  }

  v30 = __p[1];
  v33 = (v76 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v33 - __p[1] >= 0x14)
  {
    v41 = __p[0];
    goto LABEL_56;
  }

  v31 = __p[1] + 20;
  if ((0x7FFFFFFFFFFFFFF7 - (v76 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v33 + 20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = __p[0];
  if (v33 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_40;
  }

  v36 = 0;
LABEL_49:
  v37 = operator new(v11);
  v38 = v37;
  if (v30)
  {
    memmove(v37, v32, v30);
  }

  v39 = v38 + v30;
  *v39 = *"HandDetectionManager";
  *(v39 + 4) = 1919248225;
  if (!v36)
  {
    operator delete(v32);
  }

  __p[1] = v31;
  v76 = v11 | 0x8000000000000000;
  __p[0] = v38;
  v40 = &v31[v38];
LABEL_60:
  *v40 = 0;
  v78 = v76;
  v77 = *__p;
  __p[1] = 0;
  v76 = 0;
  __p[0] = 0;
  if (v78 >= 0)
  {
    v44 = &v77;
  }

  else
  {
    v44 = v77;
  }

  ctu::OsLogLogger::OsLogLogger(a1, "com.apple.telephony.abm", v44);
  if ((SHIBYTE(v78) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

LABEL_109:
    operator delete(__p[0]);
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_110;
  }

  operator delete(v77);
  if (SHIBYTE(v76) < 0)
  {
    goto LABEL_109;
  }

LABEL_65:
  if ((SHIBYTE(v74) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_110:
  operator delete(__dst);
LABEL_66:
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0u;
  v45 = *a3;
  v72 = v45;
  if (v45)
  {
    dispatch_retain(v45);
  }

  v46 = *a4;
  object = v46;
  if (v46)
  {
    dispatch_retain(v46);
  }

  CMHandDetectionDelegate::create(&v72, &object, (a1 + 48));
  if (object)
  {
    dispatch_release(object);
  }

  if (v72)
  {
    dispatch_release(v72);
  }

  *(a1 + 72) = *a5;
  v48 = a5[1];
  *(a1 + 80) = v48;
  if (v48)
  {
    atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = *a6;
  *(a1 + 88) = 0;
  v49 = a6[1];
  *(a1 + 104) = v49;
  if (v49)
  {
    atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = *a7;
  *(a1 + 112) = 0;
  v50 = a7[1];
  *(a1 + 128) = v50;
  if (v50)
  {
    atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 1;
  v51 = *a3;
  *(a1 + 144) = *a3;
  if (v51)
  {
    dispatch_retain(v51);
  }

  *(a1 + 152) = 0;
  if (!*(a1 + 72))
  {
    AudioManager::create(__s, &v77);
    v61 = v77;
    v77 = 0uLL;
    v62 = *(a1 + 80);
    *(a1 + 72) = v61;
    if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v62->__on_zero_shared)(v62);
      std::__shared_weak_count::__release_weak(v62);
    }

    v63 = *(&v77 + 1);
    if (*(&v77 + 1) && !atomic_fetch_add((*(&v77 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
    }
  }

  if (!*(a1 + 96))
  {
    v52 = *a3;
    v70 = v52;
    if (v52)
    {
      dispatch_retain(v52);
    }

    v69 = 0;
    ctu::iokit::IOHIDController::create();
    v53 = v77;
    v77 = 0uLL;
    v54 = *(a1 + 104);
    *(a1 + 96) = v53;
    if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    v55 = *(&v77 + 1);
    if (*(&v77 + 1) && !atomic_fetch_add((*(&v77 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v55->__on_zero_shared)(v55);
      std::__shared_weak_count::__release_weak(v55);
    }

    if (v69)
    {
      dispatch_release(v69);
    }

    if (v70)
    {
      dispatch_release(v70);
    }
  }

  if (!*(a1 + 120))
  {
    v56 = *a3;
    v68 = v56;
    if (v56)
    {
      dispatch_retain(v56);
    }

    CMOnBodyDelegate::create(&v68, v47, &v77);
    v57 = v77;
    v77 = 0uLL;
    v58 = *(a1 + 128);
    *(a1 + 120) = v57;
    if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v58->__on_zero_shared)(v58);
      std::__shared_weak_count::__release_weak(v58);
    }

    v59 = *(&v77 + 1);
    if (*(&v77 + 1) && !atomic_fetch_add((*(&v77 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
    }

    if (v68)
    {
      dispatch_release(v68);
    }
  }

  return a1;
}

void sub_2970D4580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, dispatch_object_t object, dispatch_object_t a14, dispatch_object_t a15, dispatch_object_t a16, dispatch_object_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (object)
  {
    dispatch_release(object);
  }

  v35 = *(v29 + 144);
  if (v35)
  {
    dispatch_release(v35);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v30);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v31);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v32);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v33 + 3));
  std::vector<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>>::~vector[abi:ne200100](v33);
  v36 = *(v29 + 16);
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  MEMORY[0x29C26B020](v29);
  _Unwind_Resume(a1);
}

void sub_2970D4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
    if (a29 < 0)
    {
LABEL_5:
      operator delete(a24);
      if ((a23 & 0x80000000) == 0)
      {
        _Unwind_Resume(a1);
      }

      JUMPOUT(0x2970D4608);
    }
  }

  else if (a29 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x2970D4600);
}

void HandDetectionManager::~HandDetectionManager(HandDetectionManager *this)
{
  v2 = *(this + 3);
  for (i = *(this + 4); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 4) = v2;
  v7 = *(this + 12);
  if (v7)
  {
    ctu::iokit::IOHIDController::stop(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    v21 = *v8;
    ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(v21, &v21);
    v21 = **(this + 6);
    ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(v21, &v21);
  }

  v9 = *(this + 18);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 16);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 13);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 10);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(this + 7);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(this + 3);
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v14 = *(this + 3);
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  v15 = *(this + 4);
  v16 = v14;
  if (v15 != v14)
  {
    do
    {
      v17 = *(v15 - 1);
      if (v17)
      {
        dispatch_release(v17);
      }

      v19 = *(v15 - 2);
      v15 -= 16;
      v18 = v19;
      if (v19)
      {
        _Block_release(v18);
      }
    }

    while (v15 != v14);
    v16 = *(this + 3);
  }

  *(this + 4) = v14;
  operator delete(v16);
LABEL_34:
  v20 = *(this + 2);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  JUMPOUT(0x29C26B020);
}

void ___ZN20HandDetectionManager4initEv_block_invoke(void *a1, unsigned int a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = a1[5];
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v8->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v9)
      {
        *(v7 + 136) = a2;
        v11 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          if (a2 > 2)
          {
            v12 = "Unknown";
          }

          else
          {
            v12 = off_29EE64370[a2];
          }

          v13 = "Confidence Level Unknown";
          if (a3 == 1)
          {
            v13 = "Confidence Level High";
          }

          if (!a3)
          {
            v13 = "Confidence Level Low";
          }

          v15 = 136315394;
          v16 = v12;
          v17 = 2080;
          v18 = v13;
          _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I On Body Callback: OnBody: %s, confidence: %s", &v15, 0x16u);
        }

        HandDetectionManager::updateHandDetection(v7);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrI20HandDetectionManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrI20HandDetectionManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN20HandDetectionManager4initEv_block_invoke_3(void *a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          if (a2 > 2)
          {
            v10 = "Unknown Hand Detection";
          }

          else
          {
            v10 = off_29EE64388[a2];
          }

          v12 = 136315138;
          v13 = v10;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Hand Detection State: %s", &v12, 0xCu);
        }

        *(v5 + 64) = a2;
        HandDetectionManager::updateHandDetection(v5);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

char *HandDetectionManager::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)> const&>(a1 + 3, a2);
    a1[4] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[4] = (v4 + 2);
  }

  return result;
}

void HandDetectionManager::setMotionParameter(uint64_t a1, ctu **a2)
{
  if (!*(a1 + 120))
  {
    goto LABEL_10;
  }

  ctu::xpc_to_cf(&cf, *a2, a2);
  v3 = cf;
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFDictionaryGetTypeID()))
  {
    v3 = 0;
    v7 = 0;
    v5 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = v3;
  CFRetain(v3);
  v5 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v5);
  }

LABEL_8:
  CMOnBodyDelegate::setThresholds(*(a1 + 120), v3);
  if (v3)
  {
    CFRelease(v3);
  }

LABEL_10:
  HandDetectionManager::updateHandDetection(a1);
}

void sub_2970D4D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void HandDetectionManager::setTxState(HandDetectionManager *this, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *(this + 152) = a2;
  v4 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEBUG))
  {
    v7 = "Off";
    if (a2)
    {
      v7 = "On";
    }

    *v10 = 136315138;
    *&v10[4] = v7;
    _os_log_debug_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEBUG, "#D Tx is %s", v10, 0xCu);
    v5 = *(this + 6);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(this + 6);
    if (v5)
    {
LABEL_3:
      v6 = *v5;
      *v10 = *v5;
      if (a2)
      {
        ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(v6, v10);
      }

      else
      {
        ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(v6, v10);
      }

      goto LABEL_11;
    }
  }

  v8 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Handed detection instance is not created yet", v10, 2u);
  }

LABEL_11:
  HandDetectionManager::updateHandDetection(this);
  v9 = *MEMORY[0x29EDCA608];
}

void **std::vector<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          dispatch_release(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          _Block_release(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(AudioManager::AudioOutputState)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

char *std::vector<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

void std::__shared_ptr_pointer<HandDetectionManager *,std::shared_ptr<HandDetectionManager>::__shared_ptr_default_delete<HandDetectionManager,HandDetectionManager>,std::allocator<HandDetectionManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<HandDetectionManager *,std::shared_ptr<HandDetectionManager>::__shared_ptr_default_delete<HandDetectionManager,HandDetectionManager>,std::allocator<HandDetectionManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    HandDetectionManager::~HandDetectionManager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<HandDetectionManager *,std::shared_ptr<HandDetectionManager>::__shared_ptr_default_delete<HandDetectionManager,HandDetectionManager>,std::allocator<HandDetectionManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722970CLL)
  {
    if (((v2 & 0x800000029722970CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722970CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722970CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

HandDetectionManager **std::unique_ptr<HandDetectionManager>::~unique_ptr[abi:ne200100](HandDetectionManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    HandDetectionManager::~HandDetectionManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void StatsAWD::create(uint64_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x38uLL);
  ctu::OsLogContext::OsLogContext(&v8, "com.apple.telephony.abm", "stats.awd");
  ctu::SharedLoggable<StatsAWD,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v3, "stats.awd", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(&v8);
  v3[5] = 0;
  v3[6] = 0;
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<StatsAWD>::shared_ptr[abi:ne200100]<StatsAWD,std::shared_ptr<StatsAWD> ctu::SharedSynchronizable<StatsAWD>::make_shared_ptr<StatsAWD>(StatsAWD*)::{lambda(StatsAWD*)#1},0>(a1, v3);
  v4 = *a1;
  if (*a1)
  {
    abm::AWDHelperGetConnection(&v8);
    v5 = v8;
    v8 = 0uLL;
    v6 = *(v4 + 48);
    *(v4 + 40) = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_2970D53E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void StatsAWD::StatsAWD(StatsAWD *this)
{
  ctu::OsLogContext::OsLogContext(v2, "com.apple.telephony.abm", "stats.awd");
  ctu::SharedLoggable<StatsAWD,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this, "stats.awd", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v2);
  *(this + 5) = 0;
  *(this + 6) = 0;
}

{
  ctu::OsLogContext::OsLogContext(v2, "com.apple.telephony.abm", "stats.awd");
  ctu::SharedLoggable<StatsAWD,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this, "stats.awd", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v2);
  *(this + 5) = 0;
  *(this + 6) = 0;
}

void StatsAWD::init(StatsAWD *this)
{
  abm::AWDHelperGetConnection(&v5);
  v2 = v5;
  v5 = 0uLL;
  v3 = *(this + 6);
  *(this + 40) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    if (!atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void *ctu::SharedLoggable<StatsAWD,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<Simulator>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 4, &object);
  MEMORY[0x29C26B020](&object);
  return a1;
}

void StatsAWD::~StatsAWD(StatsAWD *this)
{
  v2 = *(this + 6);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C26B020](this + 32);
  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_2970D5A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::dict::describe(xpc::dict *this, uint64_t a2)
{
  v3 = MEMORY[0x29C26CD90](a2);
  memset(this, 170, 24);
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v7 = operator new(v6);
    *(this + 1) = v5;
    *(this + 2) = v6 | 0x8000000000000000;
    *this = v7;
    this = v7;
    goto LABEL_9;
  }

  *(this + 23) = v4;
  if (v4)
  {
LABEL_9:
    memcpy(this, v3, v5);
  }

  *(this + v5) = 0;

  free(v3);
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

BOOL StatsAWD::fillMetric_sync(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a3;
  v6 = MEMORY[0x29EDCAA00];
  if (*a3 && MEMORY[0x29C26CE60](*a3) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v7 = MEMORY[0x29C26CE60](v5);
  if (v7 != v6)
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Invalid AWD Wake Reason Info dictionary", buf, 2u);
    }

    goto LABEL_160;
  }

  v9 = *a2;
  value = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF6A8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, &object, "Unknown", v11);
  *(v9 + 96) |= 2u;
  v12 = *(v9 + 16);
  v13 = MEMORY[0x29EDC9758];
  if (v12 == MEMORY[0x29EDC9758])
  {
    v12 = operator new(0x18uLL);
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = 0;
    *(v9 + 16) = v12;
    v14 = HIBYTE(v87);
    if ((v12[23] & 0x80000000) == 0)
    {
LABEL_14:
      if ((v14 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v12, *buf, *&buf[8]);
      }

      else
      {
        v15 = *buf;
        *(v12 + 2) = v87;
        *v12 = v15;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (v12 == buf)
    {
      goto LABEL_25;
    }

    v14 = HIBYTE(v87);
    if ((v12[23] & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v14 & 0x80u) == 0)
  {
    v16 = buf;
  }

  else
  {
    v16 = *buf;
  }

  if ((v14 & 0x80u) == 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = *&buf[8];
  }

  std::string::__assign_no_alias<false>(v12, v16, v17);
LABEL_25:
  if (SHIBYTE(v87) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  v18 = *a2;
  v19 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF570]);
  *buf = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v20 = xpc::dyn_cast_or_default(buf, 0);
  *(v18 + 96) |= 4u;
  *(v18 + 52) = v20;
  xpc_release(*buf);
  v21 = *a2;
  v22 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF768]);
  object = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, &object, "Unknown", v23);
  *(v21 + 96) |= 8u;
  v24 = *(v21 + 24);
  if (v24 == v13)
  {
    v24 = operator new(0x18uLL);
    *v24 = 0;
    *(v24 + 1) = 0;
    *(v24 + 2) = 0;
    *(v21 + 24) = v24;
    v25 = HIBYTE(v87);
    if ((v24[23] & 0x80000000) == 0)
    {
LABEL_36:
      if ((v25 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v24, *buf, *&buf[8]);
      }

      else
      {
        v26 = *buf;
        *(v24 + 2) = v87;
        *v24 = v26;
      }

      goto LABEL_47;
    }
  }

  else
  {
    if (v24 == buf)
    {
      goto LABEL_47;
    }

    v25 = HIBYTE(v87);
    if ((v24[23] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  if ((v25 & 0x80u) == 0)
  {
    v27 = buf;
  }

  else
  {
    v27 = *buf;
  }

  if ((v25 & 0x80u) == 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = *&buf[8];
  }

  std::string::__assign_no_alias<false>(v24, v27, v28);
LABEL_47:
  if (SHIBYTE(v87) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  v29 = *a2;
  v30 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF628]);
  *buf = v30;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v31 = xpc::dyn_cast_or_default(buf, 0);
  *(v29 + 96) |= 0x10u;
  *(v29 + 48) = v31;
  xpc_release(*buf);
  v32 = *a2;
  v33 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF478]);
  object = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, &object, "Unknown", v34);
  *(v32 + 96) |= 0x20u;
  v35 = *(v32 + 32);
  if (v35 == v13)
  {
    v35 = operator new(0x18uLL);
    *v35 = 0;
    *(v35 + 1) = 0;
    *(v35 + 2) = 0;
    *(v32 + 32) = v35;
    v36 = HIBYTE(v87);
    if ((v35[23] & 0x80000000) == 0)
    {
LABEL_58:
      if ((v36 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v35, *buf, *&buf[8]);
      }

      else
      {
        v37 = *buf;
        *(v35 + 2) = v87;
        *v35 = v37;
      }

      goto LABEL_69;
    }
  }

  else
  {
    if (v35 == buf)
    {
      goto LABEL_69;
    }

    v36 = HIBYTE(v87);
    if ((v35[23] & 0x80000000) == 0)
    {
      goto LABEL_58;
    }
  }

  if ((v36 & 0x80u) == 0)
  {
    v38 = buf;
  }

  else
  {
    v38 = *buf;
  }

  if ((v36 & 0x80u) == 0)
  {
    v39 = v36;
  }

  else
  {
    v39 = *&buf[8];
  }

  std::string::__assign_no_alias<false>(v35, v38, v39);
LABEL_69:
  if (SHIBYTE(v87) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  v40 = *a2;
  v41 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF630]);
  object = v41;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, &object, "Unknown", v42);
  *(v40 + 96) |= 0x40u;
  v43 = *(v40 + 40);
  if (v43 == v13)
  {
    v43 = operator new(0x18uLL);
    *v43 = 0;
    *(v43 + 1) = 0;
    *(v43 + 2) = 0;
    *(v40 + 40) = v43;
    v44 = HIBYTE(v87);
    if ((v43[23] & 0x80000000) == 0)
    {
LABEL_77:
      if ((v44 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v43, *buf, *&buf[8]);
      }

      else
      {
        v45 = *buf;
        *(v43 + 2) = v87;
        *v43 = v45;
      }

      goto LABEL_88;
    }
  }

  else
  {
    if (v43 == buf)
    {
      goto LABEL_88;
    }

    v44 = HIBYTE(v87);
    if ((v43[23] & 0x80000000) == 0)
    {
      goto LABEL_77;
    }
  }

  if ((v44 & 0x80u) == 0)
  {
    v46 = buf;
  }

  else
  {
    v46 = *buf;
  }

  if ((v44 & 0x80u) == 0)
  {
    v47 = v44;
  }

  else
  {
    v47 = *&buf[8];
  }

  std::string::__assign_no_alias<false>(v43, v46, v47);
LABEL_88:
  if (SHIBYTE(v87) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  v48 = *a2;
  v49 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF568]);
  object = v49;
  if (v49)
  {
    xpc_retain(v49);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, &object, "Unknown", v50);
  *(v48 + 96) |= 0x80u;
  v51 = *(v48 + 56);
  if (v51 == v13)
  {
    v51 = operator new(0x18uLL);
    *v51 = 0;
    *(v51 + 1) = 0;
    *(v51 + 2) = 0;
    *(v48 + 56) = v51;
    v52 = HIBYTE(v87);
    if ((v51[23] & 0x80000000) == 0)
    {
LABEL_96:
      if ((v52 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v51, *buf, *&buf[8]);
      }

      else
      {
        v53 = *buf;
        *(v51 + 2) = v87;
        *v51 = v53;
      }

      goto LABEL_107;
    }
  }

  else
  {
    if (v51 == buf)
    {
      goto LABEL_107;
    }

    v52 = HIBYTE(v87);
    if ((v51[23] & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

  if ((v52 & 0x80u) == 0)
  {
    v54 = buf;
  }

  else
  {
    v54 = *buf;
  }

  if ((v52 & 0x80u) == 0)
  {
    v55 = v52;
  }

  else
  {
    v55 = *&buf[8];
  }

  std::string::__assign_no_alias<false>(v51, v54, v55);
LABEL_107:
  if (SHIBYTE(v87) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  v56 = *a2;
  v57 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF4C8]);
  object = v57;
  if (v57)
  {
    xpc_retain(v57);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, &object, "Unknown", v58);
  *(v56 + 96) |= 0x100u;
  v59 = *(v56 + 64);
  if (v59 == v13)
  {
    v59 = operator new(0x18uLL);
    *v59 = 0;
    *(v59 + 1) = 0;
    *(v59 + 2) = 0;
    *(v56 + 64) = v59;
    v60 = HIBYTE(v87);
    if ((v59[23] & 0x80000000) == 0)
    {
LABEL_115:
      if ((v60 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v59, *buf, *&buf[8]);
      }

      else
      {
        v61 = *buf;
        *(v59 + 2) = v87;
        *v59 = v61;
      }

      goto LABEL_126;
    }
  }

  else
  {
    if (v59 == buf)
    {
      goto LABEL_126;
    }

    v60 = HIBYTE(v87);
    if ((v59[23] & 0x80000000) == 0)
    {
      goto LABEL_115;
    }
  }

  if ((v60 & 0x80u) == 0)
  {
    v62 = buf;
  }

  else
  {
    v62 = *buf;
  }

  if ((v60 & 0x80u) == 0)
  {
    v63 = v60;
  }

  else
  {
    v63 = *&buf[8];
  }

  std::string::__assign_no_alias<false>(v59, v62, v63);
LABEL_126:
  if (SHIBYTE(v87) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  v64 = *a2;
  v65 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF150]);
  *buf = v65;
  if (v65)
  {
    xpc_retain(v65);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v66 = xpc::dyn_cast_or_default(buf, 0);
  *(v64 + 96) |= 0x200u;
  *(v64 + 80) = v66;
  xpc_release(*buf);
  v67 = *a2;
  v68 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF368]);
  object = v68;
  if (v68)
  {
    xpc_retain(v68);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(buf, &object, "Unknown", v69);
  *(v67 + 96) |= 0x400u;
  v70 = *(v67 + 72);
  if (v70 == v13)
  {
    v70 = operator new(0x18uLL);
    *v70 = 0;
    *(v70 + 1) = 0;
    *(v70 + 2) = 0;
    *(v67 + 72) = v70;
    v71 = HIBYTE(v87);
    if ((v70[23] & 0x80000000) == 0)
    {
LABEL_137:
      if ((v71 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v70, *buf, *&buf[8]);
      }

      else
      {
        v72 = *buf;
        *(v70 + 2) = v87;
        *v70 = v72;
      }

      goto LABEL_148;
    }

LABEL_140:
    if ((v71 & 0x80u) == 0)
    {
      v73 = buf;
    }

    else
    {
      v73 = *buf;
    }

    if ((v71 & 0x80u) == 0)
    {
      v74 = v71;
    }

    else
    {
      v74 = *&buf[8];
    }

    std::string::__assign_no_alias<false>(v70, v73, v74);
    goto LABEL_148;
  }

  if (v70 != buf)
  {
    v71 = HIBYTE(v87);
    if ((v70[23] & 0x80000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_140;
  }

LABEL_148:
  if (SHIBYTE(v87) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  v75 = *a2;
  v76 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF470]);
  *buf = v76;
  if (v76)
  {
    xpc_retain(v76);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v77 = xpc::dyn_cast_or_default(buf, 0);
  *(v75 + 96) |= 0x800u;
  *(v75 + 84) = v77;
  xpc_release(*buf);
  v78 = *a2;
  v79 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF360]);
  *buf = v79;
  if (v79)
  {
    xpc_retain(v79);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v80 = xpc::dyn_cast_or_default(buf, 0);
  *(v78 + 96) |= 0x1000u;
  *(v78 + 88) = v80;
  xpc_release(*buf);
  v81 = *a2;
  v82 = xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF018]);
  *buf = v82;
  if (v82)
  {
    xpc_retain(v82);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v83 = xpc::dyn_cast_or_default(buf, 0);
  *(v81 + 96) |= 0x2000u;
  *(v81 + 53) = v83;
  xpc_release(*buf);
LABEL_160:
  xpc_release(v5);
  return v7 == v6;
}