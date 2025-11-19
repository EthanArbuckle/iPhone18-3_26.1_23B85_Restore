void sub_2971081F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void ___ZN13WorkoutModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, const void **a3)
{
  v5 = a1[4];
  v17 = 0;
  v6 = a1[6];
  if (v6 && (v17 = std::__shared_weak_count::lock(v6)) != 0 && a1[5])
  {
    if (*(v5 + 152))
    {
      if (*a3)
      {
        v7 = _Block_copy(*a3);
        v8 = *(v5 + 80);
        if (!v8)
        {
LABEL_18:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v7 = 0;
        v8 = *(v5 + 80);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      v11 = *(v5 + 72);
      v12 = std::__shared_weak_count::lock(v8);
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v5;
      v14[1] = v7;
      v15 = *(v5 + 88);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    else
    {
      v10 = *a3;
      object = xpc_null_create();
      v10[2](v10, 3760250884, &object);
      xpc_release(object);
    }
  }

  else
  {
    v9 = *a3;
    object = xpc_null_create();
    v9[2](v9, 3760250880, &object);
    xpc_release(object);
  }

  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_2971085D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN13WorkoutModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, void *a2, void (***a3)(const void *, uint64_t, xpc_object_t *))
{
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v8 = std::__shared_weak_count::lock(v6);
  v23 = v8;
  if (!v8 || !a1[5])
  {
LABEL_8:
    v10 = *a3;
    object = xpc_null_create();
    v10[2](v10, 3760250880, &object);
    xpc_release(object);
    if (!v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((*(v5 + 152) & 1) == 0)
  {
    v11 = *a3;
    object = xpc_null_create();
    v11[2](v11, 3760250884, &object);
    xpc_release(object);
LABEL_9:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    return;
  }

  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v9 = *a3;
    object = xpc_null_create();
    v9[2](v9, 3760250882, &object);
    xpc_release(object);
    goto LABEL_9;
  }

  v12 = *a2;
  if (!v12)
  {
    v12 = xpc_null_create();
    v13 = *a3;
    if (*a3)
    {
      goto LABEL_15;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  xpc_retain(v12);
  v13 = *a3;
  if (!*a3)
  {
    goto LABEL_17;
  }

LABEL_15:
  v14 = _Block_copy(v13);
LABEL_18:
  v15 = *(v5 + 80);
  if (!v15 || (v16 = *(v5 + 72), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v5;
  v19[1] = v12;
  v20 = xpc_null_create();
  v19[2] = v14;
  v21 = *(v5 + 88);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v8 = v23;
  if (v23)
  {
    goto LABEL_9;
  }
}

void sub_2971088D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void WorkoutModule::registerEventHandlers_sync(WorkoutModule *this)
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
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

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
    goto LABEL_14;
  }

  HIBYTE(v15) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E2A5D0;
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
      goto LABEL_19;
    }

LABEL_21:
    operator delete(__p);
    goto LABEL_19;
  }

  if (v17)
  {
    (*(*v17 + 40))();
  }

  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  std::__shared_weak_count::__release_weak(v6);
  v13 = *MEMORY[0x29EDCA608];
}

void sub_297108BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void WorkoutModule::start(void *a1)
{
  v2 = a1[10];
  if (!v2 || (v3 = a1[9], (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = a1;
  v7 = a1[11];
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start(dispatch::group_session)::$_0>(WorkoutModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void WorkoutModule::WorkoutStatus::to_string(WorkoutModule::WorkoutStatus *this, unsigned int *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a2[1];
  v13[0] = *a2;
  v13[1] = 0;
  v13[2] = v3;
  v13[3] = 0;
  v4 = a2[3];
  v13[4] = a2[2];
  v13[5] = 0;
  v13[7] = 0;
  v13[8] = 202950;
  v13[6] = v4;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[14] = v5;
  v18[15] = v5;
  v18[13] = v5;
  v18[12] = v5;
  v18[11] = v5;
  v18[10] = v5;
  v18[9] = v5;
  v18[8] = v5;
  v18[7] = v5;
  v18[6] = v5;
  v18[5] = v5;
  v18[4] = v5;
  v18[3] = v5;
  v18[2] = v5;
  v18[1] = v5;
  v18[0] = v5;
  v14 = v18;
  *__len = xmmword_297225680;
  v16 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v17 = 0;
  __p = v18;
  v12[0] = 4;
  v12[1] = v13;
  v12[2] = 202950;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v14, "Workout: Type={} State={} Loc={} SwimLoc={}", 43, v12);
  v6 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (__len[1] | 7) + 1;
    }

    v11 = operator new(v10);
    *(this + 1) = v6;
    *(this + 2) = v10 | 0x8000000000000000;
    *this = v11;
    this = v11;
LABEL_11:
    memmove(this, v7, v6);
    *(this + v6) = 0;
    v8 = __p;
    if (__p == v18)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(this + 23) = __len[1];
  if (v6)
  {
    goto LABEL_11;
  }

  *this = 0;
  v8 = __p;
  if (__p != v18)
  {
LABEL_5:
    operator delete(v8);
  }

LABEL_6:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_297108EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  if (__p != v61)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WorkoutModule::start_sync(WorkoutModule *this)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(this + 128))
  {
    goto LABEL_16;
  }

  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  *(this + 128) = 1;
  v7 = *MEMORY[0x29EDBB008];
  v8 = *(this + 11);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3321888768;
  handler[2] = ___ZN13WorkoutModule10start_syncEv_block_invoke;
  handler[3] = &__block_descriptor_80_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE56c40_ZTSZN13WorkoutModule10start_syncEvE3__0_e8_v12__0i8l;
  handler[4] = this;
  handler[5] = v3;
  v16 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v17 = this;
  v18 = v3;
  v19 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  notify_register_dispatch(v7, this + 33, v8, handler);
  v9 = *(this + 13);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Workout manager started", v14, 2u);
  }

  v10 = *(this + 17);
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = 0;
  v11 = operator new(0x20uLL);
  *v11 = &unk_2A1E2A650;
  v11[1] = this;
  v11[2] = v3;
  v11[3] = v5;
  v21 = v11;
  HealthStoreManager::queryWorkoutInfo(v10, v20);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    v12 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    v12 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  std::__shared_weak_count::__release_weak(v12);
LABEL_13:
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v5);
  std::__shared_weak_count::__release_weak(v5);
LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_29710913C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  std::function<void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~function(&a20);
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    v22 = a16;
    if (!a16)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v20);
      std::__shared_weak_count::__release_weak(v20);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v22);
  std::__shared_weak_count::__release_weak(v20);
  std::__shared_weak_count::__release_weak(v20);
  _Unwind_Resume(a1);
}

void ___ZN13WorkoutModule10start_syncEv_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    v14 = v4;
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Workout notification received", buf, 2u);
        }

        v7 = *(v3 + 136);
        v11 = *(a1 + 56);
        v8 = *(a1 + 72);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        }

        v16 = 0;
        v9 = operator new(0x20uLL);
        *v9 = &unk_2A1E2A650;
        *(v9 + 8) = v11;
        *(v9 + 3) = v8;
        v16 = v9;
        HealthStoreManager::queryWorkoutInfo(v7, v15);
        if (v16 == v15)
        {
          (*(*v16 + 32))(v16);
          if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        if (v16)
        {
          (*(*v16 + 40))();
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_12:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

LABEL_13:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_297109388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::function<void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~function(va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2971093A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void HealthStoreManager::queryWorkoutInfo(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9 = a1[2];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3321888768;
  v13[2] = ___ZN18HealthStoreManager16queryWorkoutInfoENSt3__18functionIFvN3abm11WorkoutTypeENS2_12WorkoutStateENS2_15WorkoutLocationENS2_12SwimLocationEEEE_block_invoke;
  v13[3] = &__block_descriptor_80_e8_32c43_ZTSNSt3__18weak_ptrI18HealthStoreManagerEE48c105_ZTSNSt3__18functionIFvN3abm11WorkoutTypeENS1_12WorkoutStateENS1_15WorkoutLocationENS1_12SwimLocationEEEE_e47_v24__0___HKCurrentWorkoutSnapshot_8__NSError_16l;
  v13[4] = v5;
  v14 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *(a2 + 24);
  if (!v10)
  {
    goto LABEL_8;
  }

  if (v10 != a2)
  {
    v10 = (*(*v10 + 16))(v10);
LABEL_8:
    v16 = v10;
    goto LABEL_10;
  }

  v16 = v15;
  (*(*v10 + 24))(v10, v15);
LABEL_10:
  [v9 currentWorkoutSnapshotWithCompletion:v13];
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
    v11 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    (*(*v16 + 40))();
  }

  v11 = v14;
  if (v14)
  {
LABEL_14:
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_15:
  std::__shared_weak_count::__release_weak(v7);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2971095D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~function(uint64_t a1)
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

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE56c40_ZTSZN13WorkoutModule10start_syncEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  *(result + 72) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE56c40_ZTSZN13WorkoutModule10start_syncEvE3__0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void WorkoutModule::stop_sync(WorkoutModule *this)
{
  if (*(this + 128) == 1)
  {
    v6 = v1;
    v7 = v2;
    *(this + 128) = 0;
    *(this + 164) = 0;
    *(this + 156) = 0;
    if (*(this + 33))
    {
      v3 = this;
      notify_cancel(*(this + 33));
      this = v3;
      *(v3 + 33) = 0;
    }

    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Workout manager stopped", v5, 2u);
    }
  }
}

void WorkoutModule::sendWorkoutInfo_sync(WorkoutModule *this)
{
  v37 = *MEMORY[0x29EDCA608];
  if (!*(this + 14))
  {
    goto LABEL_38;
  }

  v2 = 156;
  if (*(this + 153))
  {
    v2 = 172;
  }

  v3 = (this + v2);
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  xdict = 0xAAAAAAAAAAAAAAAALL;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    xdict = v8;
  }

  else
  {
    v9 = xpc_null_create();
    xdict = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C26CE60](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = xpc_int64_create(v5);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutType", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(v4);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutState", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(v7);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutLocation", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(v6);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeySwimLocation", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = *(this + 13);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, &xdict);
    v20 = v31 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v36 = v20;
    _os_log_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEFAULT, "#I Sending workout info: %s\n", buf, 0xCu);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v21 = *(this + 10);
  if (!v21 || (v22 = *(this + 9), (v23 = std::__shared_weak_count::lock(v21)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = v23;
  atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v24);
    v25 = *(this + 14);
    v26 = xdict;
    object = xdict;
    if (xdict)
    {
      goto LABEL_30;
    }

LABEL_32:
    object = xpc_null_create();
    goto LABEL_33;
  }

  v25 = *(this + 14);
  v26 = xdict;
  object = xdict;
  if (!xdict)
  {
    goto LABEL_32;
  }

LABEL_30:
  xpc_retain(v26);
LABEL_33:
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = 0;
  v27 = operator new(0x20uLL);
  *v27 = &unk_2A1E2A6E0;
  v27[1] = this;
  v27[2] = v22;
  v27[3] = v24;
  v34 = v27;
  (*(*v25 + 16))(v25, &object, v33);
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
  }

  else if (v34)
  {
    (*(*v34 + 40))();
  }

  xpc_release(object);
  object = 0;
  std::__shared_weak_count::__release_weak(v24);
  xpc_release(xdict);
LABEL_38:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_297109BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<HealthStoreManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E2A500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<HealthStoreManager>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void ___ZN18HealthStoreManager16queryWorkoutInfoENSt3__18functionIFvN3abm11WorkoutTypeENS2_12WorkoutStateENS2_15WorkoutLocationENS2_12SwimLocationEEEE_block_invoke(void *a1, void *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_44;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v22 = v5;
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  v21 = a1[4];
  if (v21 && a1[9])
  {
    if (!a2)
    {
      ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "workout.mgr");
      v12 = *&v26[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_INFO, "Workout callback with no data", buf, 2u);
      }

      *buf = 0;
      v24 = 0;
      v23 = 0;
      v13 = a1[9];
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      goto LABEL_41;
    }

    ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "workout.mgr");
    v7 = *&v26[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [objc_msgSend(a2 "configuration")];
      v9 = [a2 state];
      *buf = 134218240;
      *v26 = v8;
      *&v26[8] = 2048;
      *&v26[10] = v9;
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_INFO, "Workout callback; activity=%lu  session=%lu", buf, 0x16u);
    }

    v10 = [objc_msgSend(a2 configuration];
    if (v10 > 45)
    {
      if (v10 > 62)
      {
        if (v10 == 63)
        {
          v11 = 8;
          goto LABEL_32;
        }

        if (v10 == 68)
        {
          v11 = 5;
          goto LABEL_32;
        }
      }

      else
      {
        if (v10 == 46)
        {
          v11 = 1;
          goto LABEL_32;
        }

        if (v10 == 52)
        {
          v11 = 2;
          goto LABEL_32;
        }
      }
    }

    else if (v10 > 34)
    {
      if (v10 == 35)
      {
        v11 = 7;
        goto LABEL_32;
      }

      if (v10 == 37)
      {
        v11 = 6;
        goto LABEL_32;
      }
    }

    else
    {
      if (v10 == 13)
      {
        v11 = 4;
        goto LABEL_32;
      }

      if (v10 == 16)
      {
        v11 = 3;
LABEL_32:
        v14 = [a2 state];
        if (v14 == 2)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2 * (v14 == 4);
        }

        v16 = [objc_msgSend(a2 "configuration")];
        if ((v16 - 1) >= 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = v16 - 1;
        }

        v18 = [objc_msgSend(a2 "configuration")];
        v19 = 3;
        if (v18 < 3)
        {
          v19 = v18;
        }

        *buf = v11;
        v23 = v19;
        v24 = __PAIR64__(v15, v17);
        v13 = a1[9];
        if (!v13)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

LABEL_41:
        (*(*v13 + 48))(v13, buf, &v24 + 4, &v24, &v23);
        goto LABEL_42;
      }
    }

    v11 = 9;
    goto LABEL_32;
  }

LABEL_42:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_44:
  v20 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18HealthStoreManagerEE48c105_ZTSNSt3__18functionIFvN3abm11WorkoutTypeENS1_12WorkoutStateENS1_15WorkoutLocationENS1_12SwimLocationEEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[9];
  if (!result)
  {
    goto LABEL_6;
  }

  if (result != a2 + 6)
  {
    result = (*(*result + 16))(result);
LABEL_6:
    a1[9] = result;
    return result;
  }

  a1[9] = a1 + 6;
  return (*(*a2[9] + 24))(a2[9], a1 + 6);
}

void sub_29710A220(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18HealthStoreManagerEE48c105_ZTSNSt3__18functionIFvN3abm11WorkoutTypeENS1_12WorkoutStateENS1_15WorkoutLocationENS1_12SwimLocationEEEE(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_5:

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_pointer<WorkoutModule *,std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule *)#1},std::allocator<WorkoutModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<WorkoutModule *,std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule *)#1},std::allocator<WorkoutModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI13WorkoutModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule*)#1}::operator() const(WorkoutModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 128) == 1)
  {
    *(v3 + 128) = 0;
    *(v3 + 164) = 0;
    *(v3 + 156) = 0;
    v4 = *(v3 + 132);
    if (v4)
    {
      notify_cancel(v4);
      *(v3 + 132) = 0;
    }

    v5 = *(v3 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Workout manager stopped", buf, 2u);
    }
  }

  v6 = v2[1];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = v2[1];
    if (v7)
    {
      dispatch_release(v7);
    }
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

void sub_29710A4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 120);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1;
  }

  else
  {
    v8 = a1;
  }

  operator delete(v8);
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  WorkoutModule::registerCommandHandlers_sync(**a1);
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

void sub_29710A6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  WorkoutModule::registerEventHandlers_sync(**a1);
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

void sub_29710A7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  v6 = xpc_BOOL_create(BYTE1(v2[3].__on_zero_shared_weak));
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutInfoOverride", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = 156;
  if (BYTE1(v2[3].__on_zero_shared_weak))
  {
    v8 = 172;
  }

  v9 = (v2 + v8);
  v10 = v9[1];
  v12 = v9[2];
  v11 = v9[3];
  v13 = xpc_int64_create(*v9);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutType", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(v10);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutState", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(v12);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutLocation", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(v11);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeySwimLocation", v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v26 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(&v1->__shared_owners_, &v26, &xdict);
  xpc_release(xdict);
  if (__p)
  {
    shared_owners = __p->__shared_owners_;
    if (shared_owners)
    {
      _Block_release(shared_owners);
    }

    operator delete(__p);
  }

  v22 = a1;
  if (a1)
  {
    v23 = a1[2];
    if (v23)
    {
      if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
        v22 = a1;
      }
    }

    operator delete(v22);
  }
}

void sub_29710AAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v35 = *a1;
  v2 = **a1;
  value = xpc_dictionary_get_value(*(*a1 + 8), "kKeyWorkoutInfoOverride");
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 153) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  strcpy(__p, "kCommandSetWorkoutInfo");
  v39 = 22;
  v4 = *(v2 + 153);
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v6 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v6, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    object[0] = v6;
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1E26558;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v6;
    v7 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v6;
    *(&xmmword_2A18B7520 + 1) = v5;
    if (!v7)
    {
      *buf = v6;
      *&buf[8] = v5;
      goto LABEL_11;
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  v5 = *(&xmmword_2A18B7520 + 1);
  v6 = xmmword_2A18B7520;
  *buf = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_11:
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v8 = v39;
  if (v39 >= 0)
  {
    v9 = v39;
  }

  else
  {
    v9 = *&__p[8];
  }

  v10 = v9 + 9;
  if (v9 + 9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 < 0x17)
  {
    object[1] = 58;
    object[2] = 0;
    HIBYTE(object[2]) = v9 + 9;
    object[0] = *"workout::";
    v13 = &object[1] + 1;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    object[1] = (v9 + 9);
    object[2] = (v11 | 0x8000000000000000);
    object[0] = v12;
    v12[8] = 58;
    *v12 = *"workout::";
    v13 = v12 + 9;
  }

  if (v8 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = *__p;
  }

  memmove(v13, v14, v9);
LABEL_26:
  v13[v9] = 0;
  if (SHIBYTE(object[2]) >= 0)
  {
    v15 = object;
  }

  else
  {
    v15 = object[0];
  }

  ctu::cf::MakeCFString::MakeCFString(key, v15);
  v16 = MEMORY[0x29EDB8F00];
  if (!v4)
  {
    v16 = MEMORY[0x29EDB8EF8];
  }

  v17 = *v16;
  key[1] = v17;
  if (v17)
  {
    v18 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(key[0], v17, v6[1], v6[2], *MEMORY[0x29EDB8FA8]);
    v19 = CFPreferencesSynchronize(v6[1], v6[2], v18) != 0;
    CFRelease(v17);
    MEMORY[0x29C26B130](key);
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v19 = 0;
    MEMORY[0x29C26B130](key);
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
LABEL_33:
      v20 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  operator delete(object[0]);
  v20 = *&buf[8];
  if (!*&buf[8])
  {
    goto LABEL_38;
  }

LABEL_37:
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    if (v19)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (v19)
  {
    goto LABEL_40;
  }

LABEL_39:
  v21 = *(v2 + 104);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    HIBYTE(object[2]) = 9;
    strcpy(object, "workout::");
    v33 = __p;
    if (v39 < 0)
    {
      v33 = *__p;
    }

    *buf = 136315394;
    *&buf[4] = object;
    *&buf[12] = 2080;
    *&buf[14] = v33;
    _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }
  }

LABEL_40:
  if (v39 < 0)
  {
    operator delete(*__p);
    if (*(v2 + 153) != 1)
    {
      goto LABEL_73;
    }
  }

  else if (*(v2 + 153) != 1)
  {
    goto LABEL_73;
  }

  v22 = xpc_dictionary_get_value(v1[1], "kKeyWorkoutType");
  object[0] = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 172) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 15;
  strcpy(object, "kKeyWorkoutType");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 172));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  v23 = xpc_dictionary_get_value(v1[1], "kKeyWorkoutState");
  object[0] = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 176) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 16;
  strcpy(object, "kKeyWorkoutState");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 176));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  v24 = xpc_dictionary_get_value(v1[1], "kKeyWorkoutLocation");
  object[0] = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 180) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 19;
  strcpy(object, "kKeyWorkoutLocation");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 180));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  v25 = xpc_dictionary_get_value(v1[1], "kKeySwimLocation");
  object[0] = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  *(v2 + 184) = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  HIBYTE(object[2]) = 16;
  strcpy(object, "kKeySwimLocation");
  WorkoutModule::setPreference_sync<unsigned int>(v2, object, *(v2 + 184));
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
    v26 = *(v2 + 104);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }
  }

  else
  {
    v26 = *(v2 + 104);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }
  }

  WorkoutModule::WorkoutStatus::to_string(object, (v2 + 172));
  if (SHIBYTE(object[2]) >= 0)
  {
    v27 = object;
  }

  else
  {
    v27 = object[0];
  }

  *__p = 136315138;
  *&__p[4] = v27;
  _os_log_impl(&dword_296FF7000, v26, OS_LOG_TYPE_DEFAULT, "#I Received workout override; %s", __p, 0xCu);
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

LABEL_73:
  WorkoutModule::sendWorkoutInfo_sync(v2);
  v28 = v1[2];
  object[0] = xpc_null_create();
  (*(v28 + 16))(v28, 0, object);
  xpc_release(object[0]);
  if (v35)
  {
    v29 = v35[2];
    if (v29)
    {
      _Block_release(v29);
    }

    xpc_release(v35[1]);
    operator delete(v35);
  }

  v30 = a1;
  if (a1)
  {
    v31 = *(a1 + 16);
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v30 = a1;
    }

    operator delete(v30);
  }

  v32 = *MEMORY[0x29EDCA608];
}

void sub_29710B340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&object);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13WorkoutModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void WorkoutModule::setPreference_sync<unsigned int>(uint64_t a1, char *a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *&__p = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E26558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v7;
    *(&xmmword_2A18B7520 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18B7520 + 1);
  v7 = xmmword_2A18B7520;
  *buf = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 9;
  if (v10 + 9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    *(&__p + 1) = 58;
    v24 = 0;
    HIBYTE(v24) = v10 + 9;
    *&__p = *"workout::";
    v14 = &__p + 9;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    *(&__p + 1) = v10 + 9;
    v24 = v12 | 0x8000000000000000;
    *&__p = v13;
    v13[8] = 58;
    *v13 = *"workout::";
    v14 = v13 + 9;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  v14[v10] = 0;
  if (v24 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  ctu::cf::MakeCFString::MakeCFString(&v25, p_p);
  v18 = ctu::cf::plist_adapter::set<unsigned int>(v7, a3, v25, 1);
  MEMORY[0x29C26B130](&v25);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  v19 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v18)
    {
      goto LABEL_32;
    }
  }

  else if (v18)
  {
    goto LABEL_32;
  }

  v20 = *(a1 + 104);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    HIBYTE(v24) = 9;
    strcpy(&__p, "workout::");
    if (a2[23] >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = &__p;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_error_impl(&dword_296FF7000, v20, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_32:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_29710B874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2A5D0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2A5D0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2A5D0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2A5D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_29710BCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<WorkoutModule::registerEventHandlers_sync(void)::$_0,std::allocator<WorkoutModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13WorkoutModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
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

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = *MEMORY[0x29EDBEFB8];
  v6 = strlen(*MEMORY[0x29EDBEFB8]);
  v7 = HIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v6 != __s1[1])
    {
      goto LABEL_13;
    }

    if (v6 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v5, v6))
    {
      goto LABEL_7;
    }

LABEL_12:
    WorkoutModule::sendWorkoutInfo_sync(v3);
    if ((HIBYTE(__s1[2]) & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    operator delete(__s1[0]);
    goto LABEL_14;
  }

  if (v6 != SHIBYTE(__s1[2]))
  {
    goto LABEL_14;
  }

  if (!memcmp(__s1, v5, v6))
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v7 < 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  xpc_release(v2[2]);
  v2[2] = 0;
  v8 = v2[1];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = v2[1];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  operator delete(v2);
  v10 = *(a1 + 2);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_29710BF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<WorkoutModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start(dispatch::group_session)::$_0>(WorkoutModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  WorkoutModule::start_sync(**a1);
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

void sub_29710C0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2A650;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2A650;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2A650;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2A650;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::operator()(void *a1, int *a2, int *a3, int *a4, int *a5)
{
  v6 = a1[3];
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *a4;
    v10 = *a5;
    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v6);
    if (v12)
    {
      v13 = v12;
      v14 = a1[2];
      if (!v14)
      {
        goto LABEL_16;
      }

      v15 = v14[10];
      if (!v15 || (v16 = v14[9], (v17 = std::__shared_weak_count::lock(v15)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v18 = v17;
      v19 = operator new(0x18uLL);
      *v19 = v11;
      v19[2] = v7;
      v19[3] = v8;
      v19[4] = v9;
      v19[5] = v10;
      v20 = v14[11];
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = operator new(0x18uLL);
      *v21 = v19;
      v21[1] = v16;
      v21[2] = v18;
      dispatch_async_f(v20, v21, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>(WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v13->__on_zero_shared)(v13);

      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

uint64_t std::__function::__func<WorkoutModule::start_sync(void)::$_0,std::allocator<WorkoutModule::start_sync(void)::$_0>,void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13WorkoutModule10start_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13WorkoutModule10start_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13WorkoutModule10start_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13WorkoutModule10start_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>(WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1},dispatch_queue_s *::default_delete<WorkoutModule::start_sync(void)::$_0::operator() const(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  *(v3 + 156) = *(*a1 + 1);
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WorkoutModule::WorkoutStatus::to_string(__p, (v3 + 156));
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v11 = v5;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Received workout status update; %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
      if (*(v3 + 153))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if ((*(v3 + 153) & 1) == 0)
  {
LABEL_7:
    WorkoutModule::sendWorkoutInfo_sync(v3);
  }

LABEL_8:
  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29710C610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2A6E0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2A6E0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2A6E0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2A6E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::operator()(void *a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = "update failed";
          if (v4)
          {
            v9 = "updated";
          }

          v11 = 136315138;
          v12 = v9;
          _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Workout info %s", &v11, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__func<WorkoutModule::sendWorkoutInfo_sync(void)::$_0,std::allocator<WorkoutModule::sendWorkoutInfo_sync(void)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13WorkoutModule20sendWorkoutInfo_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<void ()(BOOL)>::~function(uint64_t a1)
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

uint64_t __cxx_global_var_init_7_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_8_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void DataModule::create(capabilities::radio *a1@<X0>, std::__shared_weak_count_vtbl **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (!capabilities::radio::supportsDataService(a1))
  {
    return;
  }

  v4 = operator new(0x108uLL);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 1);
  v12[0] = v6;
  v12[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  DataModule::DataModule(v4, v12);
  v8 = operator new(0x20uLL);
  v8->__shared_owners_ = 0;
  p_shared_owners = &v8->__shared_owners_;
  v8->__vftable = &unk_2A1E2AA60;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v5;
  v10 = v5[2].~__shared_weak_count;
  if (v10)
  {
    if (v10->__shared_owners_ != -1)
    {
      goto LABEL_10;
    }

    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5[1].__on_zero_shared_weak = v5;
    v5[2].~__shared_weak_count = v8;
    std::__shared_weak_count::__release_weak(v10);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v5[1].__on_zero_shared_weak = v5;
  v5[2].~__shared_weak_count = v8;
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_10:
  *a2 = v5;
  a2[1] = v8;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN10DataModule4initEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_8;
  v13[4] = v5;
  v14 = v13;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI10DataModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_63;
  block[4] = v5 + 72;
  block[5] = &v14;
  v11 = v5[2].~__shared_weak_count_0;
  if (v5[2].__on_zero_shared)
  {
    dispatch_async_and_wait(v11, block);
  }

  else
  {
    dispatch_sync(v11, block);
  }
}

void sub_29710CC88(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<DataModule> ctu::SharedSynchronizable<DataModule>::make_shared_ptr<DataModule>(DataModule*)::{lambda(DataModule*)#1}::operator() const(DataModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29710CCB0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void DataModule::init(DataModule *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN10DataModule4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_8;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI10DataModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_63;
  block[4] = this + 72;
  block[5] = &v4;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

_WORD *DataModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *DataModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

uint64_t DataModule::DataModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E2A770;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "data.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("data.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 104, v9);
  MEMORY[0x29C26B020](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E2A770;
  *(a1 + 120) = 1;
  *(a1 + 112) = &unk_2A1E236A0;
  *(a1 + 124) = 3;
  *(a1 + 136) = 1;
  *(a1 + 128) = &unk_2A1E236E8;
  *(a1 + 140) = 0;
  *(a1 + 152) = 1;
  *(a1 + 144) = &unk_2A1E23730;
  *(a1 + 156) = 0;
  *(a1 + 168) = 1;
  *(a1 + 160) = &unk_2A1E23778;
  *(a1 + 184) = 1;
  *(a1 + 176) = &unk_2A1E237C0;
  *(a1 + 200) = 1;
  *(a1 + 192) = &unk_2A1E236E8;
  *(a1 + 204) = 0;
  *(a1 + 216) = 1;
  *(a1 + 208) = &unk_2A1E23730;
  *(a1 + 220) = 0;
  *(a1 + 224) = "kKeyPropertyDataAggregationProtocol";
  *(a1 + 232) = "kKeyPropertyDataAggregationMaxDatagrams";
  *(a1 + 240) = "kKeyPropertyDataAggregationMaxSize";
  *(a1 + 248) = "kKeyPropertyDataFlowControl";
  *(a1 + 256) = "kKeyPropertyDataPowerSave";
  return a1;
}

void DataModule::~DataModule(DataModule *this)
{
  MEMORY[0x29C26B020](this + 104);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = *(this + 3);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 3);
    }

    *(this + 4) = v5;
    operator delete(v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  MEMORY[0x29C26B020](this + 104);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = *(this + 3);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 3);
    }

    *(this + 4) = v5;
    operator delete(v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  MEMORY[0x29C26B020](this + 104);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = *(this + 3);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 3);
    }

    *(this + 4) = v5;
    operator delete(v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(this);
}

void ___ZN10DataModule4initEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296FF7000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", v2, 2u);
  }
}

void DataModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<DataModule>::execute_wrapped<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
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

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<DataModule>::execute_wrapped<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void DataModule::registerCommandHandlers_sync(DataModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_14:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  __p = operator new(0x19uLL);
  v12 = xmmword_297227AC0;
  strcpy(__p, "kCommandGetDataProperty");
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN10DataModule28registerCommandHandlers_syncEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_11_3;
  v8[4] = this;
  v8[5] = v4;
  v9 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(v8);
  v10 = v7;
  Service::registerCommandHandler(this, &__p, &v10);
  if (v7)
  {
    _Block_release(v7);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29710D834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    _Block_release(v23);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void ___ZN10DataModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_12:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10DataModule28registerCommandHandlers_syncEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_9_3;
      v10 = *a2;
      v12[4] = v7;
      object = v10;
      if (v10)
      {
        xpc_retain(v10);
        v11 = *a3;
        if (!*a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        object = xpc_null_create();
        v11 = *a3;
        if (!*a3)
        {
LABEL_9:
          aBlock = v11;
          ctu::SharedSynchronizable<DataModule>::execute_wrapped((v7 + 72), v12);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          xpc_release(object);
          object = 0;
          goto LABEL_12;
        }
      }

      v11 = _Block_copy(v11);
      goto LABEL_9;
    }
  }
}

void ___ZN10DataModule28registerCommandHandlers_syncEv_block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6 = v2;
  if (!v2)
  {
    v2 = xpc_null_create();
    v6 = v2;
    v4 = a1[6];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(v2);
  v4 = a1[6];
  if (v4)
  {
LABEL_5:
    v4 = _Block_copy(v4);
  }

LABEL_6:
  aBlock = v4;
  DataModule::getDataProperty_sync(v3, &v6, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v2);
}

void sub_29710DAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v9);
  _Unwind_Resume(a1);
}

void DataModule::getDataProperty_sync(uint64_t a1, void **a2, uint64_t *a3)
{
  v63 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 96))(a1))
  {
    v6 = operator new(0x38uLL);
    strcpy(v6, "kCommandGetDataProperty rejected; ABM is shutting down ");
    *v61 = v6;
    *&v61[8] = xmmword_29722A790;
    v7 = *(a1 + 104);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v61;
      if (v61[23] < 0)
      {
        v8 = *v61;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    }

    if (*a3)
    {
      *buf = 0xAAAAAAAAAAAAAAAALL;
      *buf = xpc_null_create();
      v9 = v61[23];
      if (v61[23] < 0)
      {
        v9 = *&v61[8];
      }

      if (v9)
      {
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10 || (v10 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v10) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v10);
            v11 = v10;
          }

          else
          {
            v11 = xpc_null_create();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v10 = 0;
        }

        xpc_release(v10);
        v40 = xpc_null_create();
        v41 = *buf;
        *buf = v11;
        xpc_release(v41);
        xpc_release(v40);
        if (v61[23] >= 0)
        {
          v42 = v61;
        }

        else
        {
          v42 = *v61;
        }

        v43 = xpc_string_create(v42);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE648], v43);
        v44 = xpc_null_create();
        xpc_release(v43);
        xpc_release(v44);
      }

      LODWORD(v55) = -534716415;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v55, buf);
      xpc_release(*buf);
    }

    if ((v61[23] & 0x80000000) != 0)
    {
      operator delete(*v61);
    }

    goto LABEL_106;
  }

  v12 = *(a1 + 80);
  if (!v12 || (v13 = *(a1 + 72), (v14 = std::__shared_weak_count::lock(v12)) == 0))
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

  memset(buf, 170, 16);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10DataModule20getDataProperty_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_33_1;
  aBlock[4] = a1;
  aBlock[5] = v13;
  v58 = v15;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v17 = *a2;
  v59 = v17;
  if (!v17)
  {
    v59 = xpc_null_create();
    v18 = *a3;
    if (!*a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  xpc_retain(v17);
  v18 = *a3;
  if (*a3)
  {
LABEL_22:
    v18 = _Block_copy(v18);
  }

LABEL_23:
  v60 = v18;
  v19 = _Block_copy(aBlock);
  v20 = *(a1 + 88);
  if (v20)
  {
    dispatch_retain(*(a1 + 88));
  }

  *buf = v19;
  *&buf[8] = v20;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v21 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v22 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(v61, v21);
    v23 = *v61;
    *v61 = 0;
    *&v61[8] = 0;
    v24 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v23;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    v25 = *&v61[8];
    if (*&v61[8] && !atomic_fetch_add((*&v61[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    v22 = off_2A18B7390;
  }

  v26 = *(&off_2A18B7390 + 1);
  v52[1] = v22;
  v52[2] = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v22 + 88))(&object, v22);
  v55 = 0;
  v56 = 0;
  if (v54)
  {
    v56 = std::__shared_weak_count::lock(v54);
    if (v56)
    {
      v55 = object;
    }

    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }
  }

  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    v27 = v55;
    if (!v55)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v27 = v55;
    if (!v55)
    {
      goto LABEL_84;
    }
  }

  v28 = *a2;
  v52[0] = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    v28 = xpc_null_create();
    v52[0] = v28;
  }

  DataPropertyTypeFromDict = abm::data::getDataPropertyTypeFromDict(v52);
  xpc_release(v28);
  v52[0] = 0;
  if (DataPropertyTypeFromDict > 1)
  {
    switch(DataPropertyTypeFromDict)
    {
      case 2:
        v32 = *buf;
        if (*buf)
        {
          v32 = _Block_copy(*buf);
        }

        v48 = v32;
        v49 = *&buf[8];
        if (*&buf[8])
        {
          dispatch_retain(*&buf[8]);
        }

        (*(*v27 + 24))(v27, &v48);
        if (v49)
        {
          dispatch_release(v49);
        }

        if (v48)
        {
          _Block_release(v48);
        }

        goto LABEL_84;
      case 3:
        v33 = *buf;
        if (*buf)
        {
          v33 = _Block_copy(*buf);
        }

        v46 = v33;
        v47 = *&buf[8];
        if (*&buf[8])
        {
          dispatch_retain(*&buf[8]);
        }

        (*(*v27 + 32))(v27, &v46);
        if (v47)
        {
          dispatch_release(v47);
        }

        if (v46)
        {
          _Block_release(v46);
        }

        goto LABEL_84;
      case 4:
        abm::data::DataPowerSave::toDict((a1 + 176), &object);
        v30 = *a3;
        *v61 = object;
        object = xpc_null_create();
        (*(v30 + 16))(v30, 0, v61);
        xpc_release(*v61);
        xpc_release(object);
        goto LABEL_84;
    }

LABEL_81:
    v35 = *(a1 + 104);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v61 = 0;
      _os_log_error_impl(&dword_296FF7000, v35, OS_LOG_TYPE_ERROR, "Invalid property name", v61, 2u);
    }

    v36 = xpc_null_create();
    v37 = *a3;
    *v61 = v36;
    v38 = xpc_null_create();
    (*(v37 + 16))(v37, 3760250880, v61);
    xpc_release(*v61);
    xpc_release(v38);
    goto LABEL_84;
  }

  if (DataPropertyTypeFromDict)
  {
    if (DataPropertyTypeFromDict == 1)
    {
      v31 = *buf;
      if (*buf)
      {
        v31 = _Block_copy(*buf);
      }

      v50 = v31;
      v51 = *&buf[8];
      if (*&buf[8])
      {
        dispatch_retain(*&buf[8]);
      }

      (*(*v27 + 16))(v27, &v50);
      if (v51)
      {
        dispatch_release(v51);
      }

      if (v50)
      {
        _Block_release(v50);
      }

      goto LABEL_84;
    }

    goto LABEL_81;
  }

  abm::data::DataAggregationProtocol::toDict((a1 + 112), &object);
  v34 = *a3;
  *v61 = object;
  object = xpc_null_create();
  (*(v34 + 16))(v34, 0, v61);
  xpc_release(*v61);
  xpc_release(object);
LABEL_84:
  v39 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (*&buf[8])
  {
    dispatch_release(*&buf[8]);
  }

  if (*buf)
  {
    _Block_release(*buf);
  }

  if (v60)
  {
    _Block_release(v60);
  }

  xpc_release(v59);
  v59 = 0;
  if (v58)
  {
    std::__shared_weak_count::__release_weak(v58);
  }

  std::__shared_weak_count::__release_weak(v15);
LABEL_106:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_29710E360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, xpc_object_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, xpc_object_t object, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc::dict *xpc::dict::dict(xpc::dict *this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

{
  v3 = *a2;
  *this = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10DataModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10DataModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void DataModule::registerEventHandlers_sync(DataModule *this)
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
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

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
    goto LABEL_14;
  }

  HIBYTE(v15) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E2AAE8;
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
      goto LABEL_19;
    }

LABEL_21:
    operator delete(__p);
    goto LABEL_19;
  }

  if (v17)
  {
    (*(*v17 + 40))();
  }

  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v13 = *MEMORY[0x29EDCA608];
}

void DataModule::configureDataFormat_sync(DataModule *this)
{
  v2 = capabilities::abs::dataAggregationProtocol(this);
  v3 = v2;
  v4 = capabilities::abs::dataAggregationDatagramMaxCount(v2);
  v5 = v4;
  v6 = capabilities::abs::dataAggregationMaxSizeBytes(v4);
  if (v3 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v3;
  }

  *(this + 120) = v3 < 3;
  *(this + 31) = v7;
  *(this + 136) = 1;
  *(this + 35) = v5;
  *(this + 152) = 1;
  *(this + 39) = v6;
  v47 = -1431655766;
  v50 = -1431655935;
  v53 = -1431655935;
  LOBYTE(v47) = v3 < 3;
  v46 = &unk_2A1E236A0;
  v48 = v7;
  v49 = &unk_2A1E236E8;
  v51 = v5;
  v52 = &unk_2A1E23730;
  v54 = v6;
  v8 = *(this + 10);
  if (!v8 || (v9 = *(this + 9), (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

  v44 = 0xAAAAAAAAAAAAAAAALL;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10DataModule24configureDataFormat_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_15_1;
  aBlock[4] = this;
  aBlock[5] = v9;
  v43 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  v14 = *(this + 11);
  if (v14)
  {
    dispatch_retain(v14);
  }

  v44 = v13;
  v45 = v14;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v15 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v16 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v29, v15);
    v17 = v29;
    v29 = 0uLL;
    v18 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v17;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v19 = *(&v29 + 1);
    if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    v16 = off_2A18B7390;
  }

  v20 = *(&off_2A18B7390 + 1);
  v36 = v16;
  v37 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v16 + 88))(&v38, v16);
  v40 = 0;
  v41 = 0;
  v21 = v39;
  if (v39)
  {
    v41 = std::__shared_weak_count::lock(v39);
    if (v41)
    {
      v40 = v38;
    }

    v21 = v39;
    if (v39)
    {
      std::__shared_weak_count::__release_weak(v39);
    }
  }

  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v22 = capabilities::abs::defaultDataInterfaceID(v21);
  v23 = v40;
  if (v40)
  {
    v24 = v22;
    BYTE8(v29) = v47;
    *&v29 = &unk_2A1E236A0;
    HIDWORD(v29) = v48;
    v31 = v50;
    v30 = &unk_2A1E236E8;
    v32 = v51;
    v34 = v53;
    v33 = &unk_2A1E23730;
    v35 = v54;
    v25 = v44;
    if (v44)
    {
      v25 = _Block_copy(v44);
    }

    v27 = v25;
    object = v45;
    if (v45)
    {
      dispatch_retain(v45);
    }

    (*(*v23 + 40))(v23, &v29, v24, &v27);
    if (object)
    {
      dispatch_release(object);
    }

    if (v27)
    {
      _Block_release(v27);
    }
  }

  v26 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v45)
  {
    dispatch_release(v45);
  }

  if (v44)
  {
    _Block_release(v44);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  std::__shared_weak_count::__release_weak(v11);
}

void sub_29710EDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v31 - 112);
  if (a30)
  {
    std::__shared_weak_count::__release_weak(a30);
  }

  std::__shared_weak_count::__release_weak(v30);
  _Unwind_Resume(a1);
}

void ___ZN10DataModule24configureDataFormat_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        v9 = *(v5 + 104);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 138412290;
            v12 = v8;
            _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Failed setting DataFormat: %@", &v11, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Success setting DataFormat", &v11, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void DataModule::configureLLDataFormat_sync(DataModule *this)
{
  v2 = capabilities::radio::supportsLowLatencyData(this);
  if (v2)
  {
    v3 = capabilities::abs::dataAggregationProtocol(v2);
    v4 = v3;
    v5 = capabilities::abs::LLDataAggregationDatagramMaxCount(v3);
    v6 = v5;
    v7 = capabilities::abs::LLDataAggregationMaxSizeBytes(v5);
    if (v4 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = v4;
    }

    *(this + 120) = v4 < 3;
    *(this + 31) = v8;
    *(this + 200) = 1;
    *(this + 51) = v6;
    *(this + 216) = 1;
    *(this + 55) = v7;
    v48 = -1431655766;
    v51 = -1431655935;
    v54 = -1431655935;
    LOBYTE(v48) = v4 < 3;
    v47 = &unk_2A1E236A0;
    v49 = v8;
    v50 = &unk_2A1E236E8;
    v52 = v6;
    v53 = &unk_2A1E23730;
    v55 = v7;
    v9 = *(this + 10);
    if (!v9 || (v10 = *(this + 9), (v11 = std::__shared_weak_count::lock(v9)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v12 = v11;
    p_shared_weak_owners = &v11->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v12);
    }

    v45 = 0xAAAAAAAAAAAAAAAALL;
    v46 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10DataModule26configureLLDataFormat_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_18_1;
    aBlock[4] = this;
    aBlock[5] = v10;
    v44 = v12;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v14 = _Block_copy(aBlock);
    v15 = *(this + 11);
    if (v15)
    {
      dispatch_retain(v15);
    }

    v45 = v14;
    v46 = v15;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v16 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v17 = off_2A18B7390;
    if (!off_2A18B7390)
    {
      CommandDriverFactory::create_default_global(&v30, v16);
      v18 = v30;
      v30 = 0uLL;
      v19 = *(&off_2A18B7390 + 1);
      off_2A18B7390 = v18;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v20 = *(&v30 + 1);
      if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v17 = off_2A18B7390;
    }

    v21 = *(&off_2A18B7390 + 1);
    v37 = v17;
    v38 = *(&off_2A18B7390 + 1);
    if (*(&off_2A18B7390 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v17 + 88))(&v39, v17);
    v41 = 0;
    v42 = 0;
    v22 = v40;
    if (v40)
    {
      v42 = std::__shared_weak_count::lock(v40);
      if (v42)
      {
        v41 = v39;
      }

      v22 = v40;
      if (v40)
      {
        std::__shared_weak_count::__release_weak(v40);
      }
    }

    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v23 = capabilities::abs::LLDataInterfaceID(v22);
    v24 = v41;
    if (v41)
    {
      v25 = v23;
      BYTE8(v30) = v48;
      *&v30 = &unk_2A1E236A0;
      HIDWORD(v30) = v49;
      v32 = v51;
      v31 = &unk_2A1E236E8;
      v33 = v52;
      v35 = v54;
      v34 = &unk_2A1E23730;
      v36 = v55;
      v26 = v45;
      if (v45)
      {
        v26 = _Block_copy(v45);
      }

      v28 = v26;
      object = v46;
      if (v46)
      {
        dispatch_retain(v46);
      }

      (*(*v24 + 40))(v24, &v30, v25, &v28);
      if (object)
      {
        dispatch_release(object);
      }

      if (v28)
      {
        _Block_release(v28);
      }
    }

    v27 = v42;
    if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    if (v46)
    {
      dispatch_release(v46);
    }

    if (v45)
    {
      _Block_release(v45);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_weak(v44);
    }

    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_29710F468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v31 - 112);
  if (a30)
  {
    std::__shared_weak_count::__release_weak(a30);
  }

  std::__shared_weak_count::__release_weak(v30);
  _Unwind_Resume(a1);
}

void ___ZN10DataModule26configureLLDataFormat_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        v9 = *(v5 + 104);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 138412290;
            v12 = v8;
            _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Failed setting Low Latency DataFormat: %@", &v11, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Success setting Low Latency DataFormat", &v11, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void DataModule::configureQMAPSettings_sync(DataModule *this)
{
  v2 = capabilities::abs::dataFlowControlEnabled(this);
  *(this + 168) = 1;
  *(this + 169) = v2;
  v32 = 0xAAAAAAAAAAAAAA01;
  v31 = &unk_2A1E23778;
  BYTE1(v32) = v2;
  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10DataModule26configureQMAPSettings_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_21_3;
  aBlock[4] = this;
  aBlock[5] = v4;
  v28 = v6;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = _Block_copy(aBlock);
  v9 = *(this + 11);
  if (v9)
  {
    dispatch_retain(v9);
  }

  v29 = v8;
  v30 = v9;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v10 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v11 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v33, v10);
    v12 = v33;
    v33 = 0uLL;
    v13 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v12;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = *(&v33 + 1);
    if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v11 = off_2A18B7390;
  }

  v15 = *(&off_2A18B7390 + 1);
  v21 = v11;
  v22 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v11 + 88))(&v23, v11);
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    v26 = std::__shared_weak_count::lock(v24);
    if (v26)
    {
      v25 = v23;
    }

    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v16 = v25;
    if (!v25)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v16 = v25;
    if (!v25)
    {
      goto LABEL_33;
    }
  }

  WORD4(v33) = v32;
  *&v33 = &unk_2A1E23778;
  v17 = v29;
  if (v29)
  {
    v17 = _Block_copy(v29);
  }

  v19 = v17;
  object = v30;
  if (v30)
  {
    dispatch_retain(v30);
  }

  (*(*v16 + 48))(v16, &v33, &v19);
  if (object)
  {
    dispatch_release(object);
  }

  if (v19)
  {
    _Block_release(v19);
  }

LABEL_33:
  v18 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v30)
  {
    dispatch_release(v30);
  }

  if (v29)
  {
    _Block_release(v29);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29710FA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v25 - 80);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN10DataModule26configureQMAPSettings_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        v9 = *(v5 + 104);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 138412290;
            v12 = v8;
            _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Failed setting QMAPSettings: %@", &v11, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Success setting QMAPSettings", &v11, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void DataModule::configureDataPowerSave_sync(dispatch_object_t *this)
{
  v2 = capabilities::abs::dataPowerSaveEnabled(this);
  *(this + 184) = 1;
  *(this + 185) = v2;
  v3 = this[10];
  if (!v3 || (v4 = this[9], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10DataModule27configureDataPowerSave_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_24_4;
  aBlock[4] = this;
  aBlock[5] = v4;
  v28 = v6;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = _Block_copy(aBlock);
  v9 = this[11];
  if (v9)
  {
    dispatch_retain(this[11]);
  }

  v29 = v8;
  v30 = v9;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v10 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v11 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v31, v10);
    v12 = v31;
    v31 = 0uLL;
    v13 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v12;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = *(&v31 + 1);
    if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v11 = off_2A18B7390;
  }

  v15 = *(&off_2A18B7390 + 1);
  v21 = v11;
  v22 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v11 + 88))(&v23, v11);
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    v26 = std::__shared_weak_count::lock(v24);
    if (v26)
    {
      v25 = v23;
    }

    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v16 = v25;
    if (!v25)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v16 = v25;
    if (!v25)
    {
      goto LABEL_33;
    }
  }

  WORD4(v31) = *(this + 92);
  *&v31 = &unk_2A1E237C0;
  v17 = v29;
  if (v29)
  {
    v17 = _Block_copy(v29);
  }

  v19 = v17;
  object = v30;
  if (v30)
  {
    dispatch_retain(v30);
  }

  (*(*v16 + 56))(v16, &v31, &v19);
  if (object)
  {
    dispatch_release(object);
  }

  if (v19)
  {
    _Block_release(v19);
  }

LABEL_33:
  v18 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v30)
  {
    dispatch_release(v30);
  }

  if (v29)
  {
    _Block_release(v29);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29710FFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN10DataModule27configureDataPowerSave_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        v9 = *(v5 + 104);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 138412290;
            v12 = v8;
            _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Failed setting DataPowerSave: %@", &v11, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Success setting DataPowerSave", &v11, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void DataModule::configureCapabilities_sync(DataModule *this)
{
  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10DataModule26configureCapabilities_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_27_3;
  aBlock[4] = this;
  aBlock[5] = v3;
  v27 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 11);
  if (v8)
  {
    dispatch_retain(v8);
  }

  v28 = v7;
  v29 = v8;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A18B7390;
  }

  v14 = *(&off_2A18B7390 + 1);
  v20 = v10;
  v21 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 88))(&v22, v10);
  v24 = 0;
  v25 = 0;
  if (v23)
  {
    v25 = std::__shared_weak_count::lock(v23);
    if (v25)
    {
      v24 = v22;
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  v16 = v28;
  if (v28)
  {
    v16 = _Block_copy(v28);
  }

  v18 = v16;
  object = v29;
  if (v29)
  {
    dispatch_retain(v29);
  }

  (*(*v15 + 64))(v15, &v18);
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

LABEL_33:
  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_2971104FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN10DataModule26configureCapabilities_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        v9 = *(v5 + 104);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 138412290;
            v12 = v8;
            _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Failed setting Capabilities: %@", &v11, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Success setting Capabilities", &v11, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void DataModule::configureLowLatencyCapability_sync(DataModule *this)
{
  if (!capabilities::radio::supportsLowLatencyData(this))
  {
    return;
  }

  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10DataModule34configureLowLatencyCapability_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_30;
  aBlock[4] = this;
  aBlock[5] = v3;
  v27 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 11);
  if (v8)
  {
    dispatch_retain(v8);
  }

  v28 = v7;
  v29 = v8;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A18B7390;
  }

  v14 = *(&off_2A18B7390 + 1);
  v20 = v10;
  v21 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 88))(&v22, v10);
  v24 = 0;
  v25 = 0;
  if (v23)
  {
    v25 = std::__shared_weak_count::lock(v23);
    if (v25)
    {
      v24 = v22;
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v24;
    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v15 = v24;
    if (v24)
    {
LABEL_26:
      v16 = v28;
      if (v28)
      {
        v16 = _Block_copy(v28);
      }

      v18 = v16;
      object = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      (*(*v15 + 72))(v15, &v18);
      if (object)
      {
        dispatch_release(object);
      }

      if (v18)
      {
        _Block_release(v18);
      }
    }
  }

  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_297110A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN10DataModule34configureLowLatencyCapability_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        v9 = *(v5 + 104);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 138412290;
            v12 = v8;
            _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Failed setting low latency Capability: %@", &v11, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Success setting low latency Capability", &v11, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN10DataModule20getDataProperty_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEE_block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  v28 = 0;
  v7 = xpc_null_create();
  object = v7;
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    v26 = v9;
    if (v9)
    {
      v10 = v9;
      if (*(a1 + 40))
      {
        if (*a2)
        {
          v11 = *(v6 + 104);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            xpc::dict::dict(&v24, (a1 + 56));
            DataPropertyNameFromDict = abm::data::getDataPropertyNameFromDict(&v24);
            v20 = *a2;
            *buf = 136315394;
            v30 = DataPropertyNameFromDict;
            v31 = 2112;
            v32 = v20;
            _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Failed getting %s: %@", buf, 0x16u);
            xpc_release(v24);
            v24 = 0;
          }

          v28 = -534716414;
        }

        else
        {
          v12 = MEMORY[0x29C26CE60](*a3);
          v13 = *(v6 + 104);
          if (v12 == MEMORY[0x29EDCAA40])
          {
            if (os_log_type_enabled(*(v6 + 104), OS_LOG_TYPE_ERROR))
            {
              xpc::dict::dict(&v22, (a1 + 56));
              v21 = abm::data::getDataPropertyNameFromDict(&v22);
              *buf = 136315138;
              v30 = v21;
              _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed getting %s: invalid response data", buf, 0xCu);
              xpc_release(v22);
              v22 = 0;
            }

            v28 = -534716416;
          }

          else
          {
            if (os_log_type_enabled(*(v6 + 104), OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 56);
              v23 = v14;
              if (v14)
              {
                xpc_retain(v14);
              }

              else
              {
                v14 = xpc_null_create();
                v23 = v14;
              }

              v15 = abm::data::getDataPropertyNameFromDict(&v23);
              *buf = 136315138;
              v30 = v15;
              _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Success getting %s", buf, 0xCu);
              xpc_release(v14);
              v23 = 0;
            }

            v16 = *a3;
            if (v16 && MEMORY[0x29C26CE60](v16) == MEMORY[0x29EDCAA00])
            {
              xpc_retain(v16);
            }

            else
            {
              v16 = xpc_null_create();
            }

            v17 = xpc_null_create();
            object = v16;
            xpc_release(v7);
            xpc_release(v17);
          }
        }

        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>((a1 + 64), &v28, &object);
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  xpc_release(object);
  v18 = *MEMORY[0x29EDCA608];
}

void sub_297110F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t a12, char a13, uint64_t a14, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10DataModuleEE56c15_ZTSN3xpc4dictE64c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  a1[7] = v5;
  if (v5)
  {
    xpc_retain(v5);
    result = a2[8];
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  a1[7] = xpc_null_create();
  result = a2[8];
  if (result)
  {
LABEL_7:
    result = _Block_copy(result);
  }

LABEL_8:
  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10DataModuleEE56c15_ZTSN3xpc4dictE64c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<DataModule *,std::shared_ptr<DataModule> ctu::SharedSynchronizable<DataModule>::make_shared_ptr<DataModule>(DataModule*)::{lambda(DataModule *)#1},std::allocator<DataModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DataModule *,std::shared_ptr<DataModule> ctu::SharedSynchronizable<DataModule>::make_shared_ptr<DataModule>(DataModule*)::{lambda(DataModule *)#1},std::allocator<DataModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI10DataModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI10DataModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI10DataModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI10DataModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<DataModule> ctu::SharedSynchronizable<DataModule>::make_shared_ptr<DataModule>(DataModule*)::{lambda(DataModule*)#1}::operator() const(DataModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<DataModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI10DataModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2AAA8;
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

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10DataModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10DataModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<DataModule>::execute_wrapped<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  DataModule::registerCommandHandlers_sync(**a1);
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

void sub_297111490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<DataModule>::execute_wrapped<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<DataModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  DataModule::registerEventHandlers_sync(**a1);
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

void sub_297111588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2AAE8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2AAE8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2AAE8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2AAE8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<DataModule>::execute_wrapped<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_297111978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<DataModule::registerEventHandlers_sync(void)::$_0,std::allocator<DataModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10DataModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10DataModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10DataModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10DataModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<DataModule>::execute_wrapped<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v19 = *a1;
  v1 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v19[2], *MEMORY[0x29EDBEAF8]);
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
  v3 = *MEMORY[0x29EDBEFB8];
  v4 = strlen(*MEMORY[0x29EDBEFB8]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v4 != __s1[1])
    {
      goto LABEL_14;
    }

    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v3, v4))
    {
LABEL_14:
      if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if (v4 != SHIBYTE(__s1[2]) || memcmp(__s1, v3, v4))
  {
    goto LABEL_14;
  }

  v5 = v1[10];
  if (!v5 || (v6 = v1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(8uLL);
  *v9 = v1;
  v10 = v1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10DataModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
  {
LABEL_15:
    v12 = v19;
    if (!v19)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(__s1[0]);
  v12 = v19;
  if (!v19)
  {
LABEL_16:
    v13 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_24;
  }

LABEL_20:
  xpc_release(v12[2]);
  v12[2] = 0;
  v14 = v12[1];
  if (v14)
  {
    dispatch_group_leave(v14);
    v15 = v12[1];
    if (v15)
    {
      dispatch_release(v15);
    }
  }

  operator delete(v12);
  v13 = a1;
  if (a1)
  {
LABEL_24:
    v16 = v13[2];
    if (v16)
    {
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v17 = v13;
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v13 = v17;
      }
    }

    operator delete(v13);
  }
}

void sub_297111CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<DataModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10DataModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  DataModule::configureDataFormat_sync(v3);
  DataModule::configureQMAPSettings_sync(v3);
  DataModule::configureDataPowerSave_sync(v3);
  DataModule::configureCapabilities_sync(v3);
  DataModule::configureLowLatencyCapability_sync(v3);
  DataModule::configureLLDataFormat_sync(v3);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_297111E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_34()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_35()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

lcdm::CrashDB *lcdm::CrashDB::CrashDB(lcdm::CrashDB *this)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", "crash.db");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](this + 16, v5);
  MEMORY[0x29C26B020](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = capabilities::abs::LCDMPurgeAge(v2);
  return this;
}

void sub_297111F50(_Unwind_Exception *a1)
{
  v3 = v2;
  std::deque<lcdm::CrashEntry>::~deque[abi:ne200100](v3);
  MEMORY[0x29C26B020](v1 + 16);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

lcdm::CrashDB *lcdm::CrashDB::create@<X0>(lcdm::CrashDB *this@<X0>, lcdm::CrashDB **a2@<X8>)
{
  result = capabilities::abs::supportsLCDM(this);
  if (result)
  {
    v4 = operator new(0x50uLL);
    lcdm::CrashDB::CrashDB(v4);
    *a2 = v4;
    result = operator new(0x20uLL);
    *result = &unk_2A1E2AB68;
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 3) = v4;
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_297112030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<lcdm::CrashDB>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t lcdm::CrashDB::emplaceCrashEntry(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  lcdm::CrashEntry::CrashEntry(&v18, a2, a3, a4);
  v6 = v19;
  if (v19)
  {
    v14 = v18;
    v15 = v19;
    memset(v16, 0, sizeof(v16));
    v7 = (*(&v21 + 1) >> 4) & 0xFFFFFFFFFFFFFF8;
    if (*(&v20 + 1) == v20)
    {
      v8 = 0;
    }

    else
    {
      v8 = (*(v20 + v7) + 32 * (BYTE8(v21) & 0x7F));
      v9 = ((v22 + *(&v21 + 1)) >> 4) & 0xFFFFFFFFFFFFFF8;
      v10 = (v22 + BYTE8(v21)) & 0x7F;
      if ((*(v20 + v9) + 32 * v10) != v8)
      {
        v11 = v10 - (BYTE8(v21) & 0x7F) + 16 * (v9 - v7);
LABEL_9:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v16, (v20 + v7), v8, v11);
        lcdm::CrashDB::addCrashEntry(a1, &v14);
        lcdm::CrashEntry::~CrashEntry(&v14);
        goto LABEL_10;
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Not adding crash entry because it is invalid", buf, 2u);
  }

LABEL_10:
  lcdm::CrashEntry::~CrashEntry(&v18);
  return v6;
}

void sub_297112194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  lcdm::CrashEntry::~CrashEntry(&a9);
  lcdm::CrashEntry::~CrashEntry(&a21);
  _Unwind_Resume(a1);
}

void sub_2971121B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a14 == a13)
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
LABEL_3:
      lcdm::CrashEntry::~CrashEntry(&a21);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v22);
  lcdm::CrashEntry::~CrashEntry(&a21);
  _Unwind_Resume(a1);
}

void lcdm::CrashDB::addCrashEntry(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) >= 5uLL)
  {
    v4 = *(a1 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v80 = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Evicting oldest crash entry", v80, 2u);
    }

    lcdm::CrashEntry::~CrashEntry((*(*(a1 + 32) + 8 * (*(a1 + 56) / 0x38uLL)) + 72 * (*(a1 + 56) % 0x38uLL)));
    v5 = vaddq_s64(*(a1 + 56), xmmword_29722AA30);
    *(a1 + 56) = v5;
    if (v5.i64[0] >= 0x70uLL)
    {
      operator delete(**(a1 + 32));
      *(a1 + 32) += 8;
      *(a1 + 56) -= 56;
    }
  }

  v6 = *(a1 + 16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v80 = 0;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Adding new crash entry", v80, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 56 * ((v8 - v9) >> 3) - 1;
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64) + v12;
  if (v11 == v13)
  {
    if (v12 >= 0x38)
    {
      *(a1 + 56) = v12 - 56;
      *v80 = *v9;
      *(a1 + 32) = v9 + 8;
LABEL_14:
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>((a1 + 24), v80);
LABEL_28:
      v9 = *(a1 + 32);
      v13 = *(a1 + 64) + *(a1 + 56);
      goto LABEL_29;
    }

    v14 = *(a1 + 48);
    v15 = *(a1 + 24);
    if (v10 < (v14 - v15))
    {
      v16 = operator new(0xFC0uLL);
      if (v14 != v8)
      {
        *v8 = v16;
        *(a1 + 40) = v8 + 8;
        goto LABEL_28;
      }

      if (v9 != v15)
      {
        v40 = v9;
LABEL_75:
        *(v40 - 1) = v16;
        *v80 = v16;
        *(a1 + 32) = v40;
        goto LABEL_14;
      }

      v63 = (v14 - v9) >> 2;
      if (v8 == v9)
      {
        v63 = 1;
      }

      if (!(v63 >> 61))
      {
        v64 = v16;
        v65 = (v63 + 3) >> 2;
        v66 = 8 * v63;
        v67 = operator new(8 * v63);
        v40 = &v67[8 * v65];
        v68 = v40;
        v16 = v64;
        if (v8 != v9)
        {
          v68 = &v40[v10];
          v69 = v8 - v9 - 8;
          v70 = &v67[8 * v65];
          v71 = v9;
          if (v69 < 0x38)
          {
            goto LABEL_81;
          }

          v72 = &v67[8 * v65];
          v70 = v72;
          v71 = v9;
          if ((v72 - v9) < 0x20)
          {
            goto LABEL_81;
          }

          v73 = (v69 >> 3) + 1;
          v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
          v70 = &v40[v74];
          v71 = &v9[v74];
          v75 = (v9 + 16);
          v76 = v72 + 16;
          v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v78 = *v75;
            *(v76 - 1) = *(v75 - 1);
            *v76 = v78;
            v75 += 2;
            v76 += 2;
            v77 -= 4;
          }

          while (v77);
          if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_81:
            do
            {
              v79 = *v71;
              v71 += 8;
              *v70 = v79;
              v70 += 8;
            }

            while (v70 != v68);
          }
        }

        *(a1 + 24) = v67;
        *(a1 + 32) = v40;
        *(a1 + 40) = v68;
        *(a1 + 48) = &v67[v66];
        if (v9)
        {
          operator delete(v15);
          v16 = v64;
          v40 = *(a1 + 32);
        }

        goto LABEL_75;
      }

LABEL_77:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (v14 - v15) >> 2;
    if (v14 == v15)
    {
      v17 = 1;
    }

    if (v17 >> 61)
    {
      goto LABEL_77;
    }

    v18 = 8 * v17;
    v19 = operator new(8 * v17);
    v20 = operator new(0xFC0uLL);
    v21 = v20;
    v22 = &v19[v10];
    v23 = &v19[v18];
    if (v10 != v18)
    {
      goto LABEL_24;
    }

    if (v10 >= 1)
    {
      v22 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_24:
      *v22 = v20;
      v24 = v22 + 8;
      if (v8 != v9)
      {
        goto LABEL_45;
      }

LABEL_25:
      v25 = v22;
LABEL_26:
      v26 = *(a1 + 24);
      *(a1 + 24) = v19;
      *(a1 + 32) = v25;
      *(a1 + 40) = v24;
      *(a1 + 48) = v23;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_28;
    }

    if (v8 == v9)
    {
      v41 = 1;
    }

    else
    {
      v41 = v10 >> 2;
    }

    if (v41 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = operator new(8 * v41);
    v23 = &v22[8 * v41];
    operator delete(v19);
    v42 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19 = v22;
    *v22 = v21;
    v24 = v22 + 8;
    if (v8 == v42)
    {
      goto LABEL_25;
    }

LABEL_45:
    while (v22 != v19)
    {
      v43 = v22;
LABEL_44:
      v44 = *(v8 - 1);
      v8 -= 8;
      *(v43 - 1) = v44;
      v25 = v43 - 8;
      v22 = v25;
      if (v8 == *(a1 + 32))
      {
        goto LABEL_26;
      }
    }

    if (v24 < v23)
    {
      v43 = &v19[8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1)];
      v46 = v24 - v19;
      v45 = v24 == v19;
      v24 += 8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1);
      if (!v45)
      {
        memmove(v43, v22, v46);
      }

      goto LABEL_44;
    }

    if (v23 == v19)
    {
      v47 = 1;
    }

    else
    {
      v47 = (v23 - v19) >> 2;
    }

    if (v47 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v48 = operator new(8 * v47);
    v49 = v48;
    v50 = (v47 + 3) >> 2;
    v43 = &v48[8 * v50];
    v51 = v24 - v19;
    v45 = v24 == v19;
    v24 = v43;
    if (!v45)
    {
      v24 = &v43[v51];
      v52 = v51 - 8;
      if (v52 >= 0x18 && (v53 = 8 * v50, (&v48[8 * v50] - v22) >= 0x20))
      {
        v57 = (v52 >> 3) + 1;
        v58 = 8 * (v57 & 0x3FFFFFFFFFFFFFFCLL);
        v54 = &v43[v58];
        v55 = &v22[v58];
        v59 = (v22 + 16);
        v60 = &v48[v53 + 16];
        v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = *v59;
          *(v60 - 1) = *(v59 - 1);
          *v60 = v62;
          v59 += 2;
          v60 += 32;
          v61 -= 4;
        }

        while (v61);
        if (v57 == (v57 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v54 = &v48[8 * v50];
        v55 = v22;
      }

      do
      {
        v56 = *v55;
        v55 += 8;
        *v54 = v56;
        v54 += 8;
      }

      while (v54 != v24);
    }

LABEL_58:
    v23 = &v48[8 * v47];
    operator delete(v19);
    v19 = v49;
    goto LABEL_44;
  }

LABEL_29:
  v27 = *&v9[8 * (v13 / 0x38)] + 72 * (v13 % 0x38);
  v28 = *a2;
  *(v27 + 16) = *(a2 + 16);
  *v27 = v28;
  *(v27 + 40) = 0u;
  *(v27 + 56) = 0u;
  *(v27 + 24) = 0u;
  v29 = (v27 + 24);
  v30 = *(a2 + 7);
  v31 = (v30 >> 4) & 0xFFFFFFFFFFFFFF8;
  v32 = *(a2 + 4);
  if (*(a2 + 5) == v32)
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v33 = *(a2 + 8) + v30;
    v34 = (v33 >> 4) & 0xFFFFFFFFFFFFFF8;
    v35 = v33 & 0x7F;
    v36 = *(v32 + v34) + 32 * v35;
    v37 = v35 - (*(a2 + 7) & 0x7FLL) + 16 * (v34 - v31);
    v38 = (*(v32 + v31) + 32 * (*(a2 + 7) & 0x7FLL));
    if (v36 == v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37;
    }
  }

  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v29, (v32 + v31), v38, v39);
  ++*(a1 + 64);
}

void sub_2971127E0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void lcdm::CrashEntry::~CrashEntry(lcdm::CrashEntry *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    v3 = *(this + 4);
    *(this + 8) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(this + 7);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(this + 8) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 8) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }

    *(this + 8) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 5);
        v2 = (*(this + 4) + 8);
        *(this + 4) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(this + 7) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(this + 4);
    v14 = *(this + 5);
    if (v14 != v15)
    {
      *(this + 5) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = *(this + 3);
  if (v16)
  {
    operator delete(v16);
  }
}

uint64_t lcdm::CrashDB::purgeCrashEntriesOlderThan(lcdm::CrashDB *this, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = lcdm::purgeCrashEntriesOlderThan(this + 3, a2, a3);
  v17 = a2;
  memset(__dst, 170, sizeof(__dst));
  v20[1] = std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<std::chrono::duration<long long,std::ratio<1l,1000l>>>(std::chrono::duration<long long,std::ratio<1l,1000l>> &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke;
  v20[2] = 15;
  v20[0] = &v17;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[14] = v6;
  v24[15] = v6;
  v24[13] = v6;
  v24[12] = v6;
  v24[11] = v6;
  v24[10] = v6;
  v24[9] = v6;
  v24[8] = v6;
  v24[7] = v6;
  v24[6] = v6;
  v24[5] = v6;
  v24[4] = v6;
  v24[3] = v6;
  v24[2] = v6;
  v24[1] = v6;
  v24[0] = v6;
  *buf = v24;
  *&buf[8] = xmmword_297225680;
  v22 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v23 = 0;
  __p = v24;
  v19[0] = 1;
  v19[1] = v20;
  v19[2] = 15;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(buf, "{:%H hr %M min %S sec}", 22, v19);
  v7 = *&buf[16];
  if (*&buf[16] >= 0x7FFFFFFFFFFFFFF8uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = __p;
  if (*&buf[16] >= 0x17uLL)
  {
    if ((*&buf[16] | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (*&buf[16] | 7) + 1;
    }

    v9 = operator new(v14);
    __dst[1] = v7;
    __dst[2] = (v14 | 0x8000000000000000);
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(__dst[2]) = buf[16];
    v9 = __dst;
    if (!*&buf[16])
    {
      LOBYTE(__dst[0]) = 0;
      v10 = __p;
      if (__p == v24)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  memmove(v9, v8, v7);
  *(v7 + v9) = 0;
  v10 = __p;
  if (__p != v24)
  {
LABEL_5:
    operator delete(v10);
  }

LABEL_6:
  v11 = *(this + 2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v15 = __dst[0];
    }

    *buf = 134218242;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = v15;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Purged %zu crash entries older than %{public}s", buf, 0x16u);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    operator delete(__dst[0]);
    v16 = *MEMORY[0x29EDCA608];
    return v5;
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_297112C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p)
{
  if (__p != v58)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::purgeCrashEntriesOlderThan(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[1];
  v7 = (v6 + 8 * (v4 / 0x38));
  if (a1[2] == v6)
  {
    v10 = 0;
    goto LABEL_60;
  }

  v9 = *(v6 + 8 * (v4 / 0x38)) + 72 * (v4 % 0x38);
  v10 = *(v6 + 8 * ((v4 + v5) / 0x38)) + 72 * ((v4 + v5) % 0x38);
  if (v9 != v10)
  {
    while (1)
    {
      v11 = *v9;
      v115[16] = *(v9 + 16);
      *v115 = v11;
      memset(v116, 0, 48);
      v12 = *(v9 + 56);
      v13 = (v12 >> 4) & 0xFFFFFFFFFFFFFF8;
      v14 = *(v9 + 32);
      if (*(v9 + 40) == v14)
      {
        break;
      }

      v15 = (*(v14 + v13) + 32 * (*(v9 + 56) & 0x7FLL));
      v16 = *(v9 + 64) + v12;
      v17 = (v16 >> 4) & 0xFFFFFFFFFFFFFF8;
      v18 = v16 & 0x7F;
      if ((*(v14 + v17) + 32 * v18) == v15)
      {
        goto LABEL_9;
      }

      v19 = v18 - (*(v9 + 56) & 0x7FLL) + 16 * (v17 - v13);
LABEL_10:
      std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v116, (v14 + v13), v15, v19);
      v20 = a3 - *&v115[8];
      lcdm::CrashEntry::~CrashEntry(v115);
      if (v20 > a2)
      {
        goto LABEL_13;
      }

      v9 += 72;
      if (v9 - *v7 == 4032)
      {
        v21 = v7[1];
        ++v7;
        v9 = v21;
      }

      if (v9 == v10)
      {
        goto LABEL_60;
      }
    }

    v15 = 0;
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

LABEL_13:
  if (v9 != v10)
  {
    v22 = v9;
    v23 = v7;
    while (1)
    {
      v22 += 72;
      if (v22 - *v23 == 4032)
      {
        v24 = v23[1];
        ++v23;
        v22 = v24;
      }

      if (v22 == v10)
      {
        v10 = v9;
        goto LABEL_60;
      }

      v25 = *v22;
      v113 = *(v22 + 16);
      v112 = v25;
      memset(v114, 0, 48);
      v26 = *(v22 + 56);
      v27 = (v26 >> 4) & 0xFFFFFFFFFFFFFF8;
      v28 = *(v22 + 32);
      if (*(v22 + 40) == v28)
      {
        break;
      }

      v29 = (*(v28 + v27) + 32 * (*(v22 + 56) & 0x7FLL));
      v30 = *(v22 + 64) + v26;
      v31 = (v30 >> 4) & 0xFFFFFFFFFFFFFF8;
      v32 = v30 & 0x7F;
      if ((*(v28 + v31) + 32 * v32) == v29)
      {
        goto LABEL_22;
      }

      v33 = v32 - (*(v22 + 56) & 0x7FLL) + 16 * (v31 - v27);
LABEL_23:
      std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v114, (v28 + v27), v29, v33);
      v34 = a3 - *(&v112 + 1);
      lcdm::CrashEntry::~CrashEntry(&v112);
      if (v34 <= a2)
      {
        v35 = *v22;
        *(v9 + 16) = *(v22 + 16);
        *v9 = v35;
        v37 = *(v9 + 32);
        v36 = *(v9 + 40);
        if (v36 == v37)
        {
          *(v9 + 64) = 0;
          v45 = 0;
        }

        else
        {
          v109 = v7;
          v110 = v5;
          v38 = *(v9 + 56);
          v39 = &v37[v38 >> 7];
          v40 = *v39;
          v41 = *v39 + 32 * (v38 & 0x7F);
          v42 = *(v37 + (((*(v9 + 64) + v38) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v9 + 64) + v38) & 0x7F);
          if (v41 != v42)
          {
            do
            {
              v43 = *(v41 + 8);
              if (v43)
              {
                *(v41 + 16) = v43;
                operator delete(v43);
                v40 = *v39;
              }

              v41 += 32;
              if (v41 - v40 == 4096)
              {
                v44 = v39[1];
                ++v39;
                v40 = v44;
                v41 = v44;
              }
            }

            while (v41 != v42);
            v37 = *(v9 + 32);
            v36 = *(v9 + 40);
          }

          v7 = v109;
          v5 = v110;
          *(v9 + 64) = 0;
          v45 = (v36 - v37) >> 3;
          if (v45 >= 3)
          {
            do
            {
              operator delete(*v37);
              v36 = *(v9 + 40);
              v37 = (*(v9 + 32) + 8);
              *(v9 + 32) = v37;
              v45 = (v36 - v37) >> 3;
            }

            while (v45 > 2);
          }
        }

        if (v45 == 1)
        {
          v46 = 64;
        }

        else
        {
          if (v45 != 2)
          {
            goto LABEL_41;
          }

          v46 = 128;
        }

        *(v9 + 56) = v46;
LABEL_41:
        v47 = *(v9 + 64);
        if (!v47)
        {
          while (v36 != v37)
          {
            operator delete(*(v36 - 8));
            v37 = *(v9 + 32);
            v36 = *(v9 + 40) - 8;
            *(v9 + 40) = v36;
          }

          *(v9 + 56) = 0;
          std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
          v51 = *(v9 + 32);
          v50 = *(v9 + 40);
          if (v50 == v51)
          {
            goto LABEL_51;
          }

LABEL_50:
          *(v9 + 40) = v50 + ((v51 - v50 + 7) & 0xFFFFFFFFFFFFFFF8);
          goto LABEL_51;
        }

        v48 = *(v9 + 56);
        if (v48 >= 0x80)
        {
          operator delete(*v37);
          v36 = *(v9 + 40);
          v37 = (*(v9 + 32) + 8);
          *(v9 + 32) = v37;
          v47 = *(v9 + 64);
          v48 = *(v9 + 56) - 128;
          *(v9 + 56) = v48;
        }

        if (v36 == v37)
        {
          v49 = 0;
        }

        else
        {
          v49 = 16 * (v36 - v37) - 1;
        }

        if (v49 - (v48 + v47) >= 0x80)
        {
          operator delete(*(v36 - 8));
          *(v9 + 40) -= 8;
        }

        std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
        v51 = *(v9 + 32);
        v50 = *(v9 + 40);
        if (v50 != v51)
        {
          goto LABEL_50;
        }

LABEL_51:
        std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
        *(v9 + 24) = *(v22 + 24);
        *(v9 + 40) = *(v22 + 40);
        *(v22 + 40) = 0u;
        *(v22 + 24) = 0u;
        *(v9 + 56) = *(v22 + 56);
        *(v9 + 64) = *(v22 + 64);
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        v9 += 72;
        if (v9 - *v7 == 4032)
        {
          v52 = v7[1];
          ++v7;
          v9 = v52;
        }
      }
    }

    v29 = 0;
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v10 = v9;
LABEL_60:
  v53 = a1[4];
  v54 = a1[5];
  v55 = v53 + v54;
  v56 = (v53 + v54) / 0x38;
  v57 = a1[1];
  v58 = a1[2];
  v59 = (v57 + 8 * v56);
  if (v58 == v57)
  {
    v60 = 0;
  }

  else
  {
    v60 = *v59 + 72 * (v55 - 56 * v56);
  }

  if (v60 == v10)
  {
    v61 = 0;
    v62 = v53 / 0x38;
    v63 = (v57 + 8 * (v53 / 0x38));
    if (v58 != v57)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v61 = 56 * ((v59 - v7) >> 3) - 0x71C71C71C71C71C7 * ((v60 - *v59) >> 3) + 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3);
    v62 = v53 / 0x38;
    v63 = (v57 + 8 * (v53 / 0x38));
    if (v58 != v57)
    {
LABEL_65:
      v64 = (*v63 + 72 * (v53 - 56 * v62));
      if (v10 == v64)
      {
        goto LABEL_66;
      }

      goto LABEL_70;
    }
  }

  v64 = 0;
  if (!v10)
  {
LABEL_66:
    v65 = 0;
    v66 = v64;
    v67 = v63;
    if (v61 < 1)
    {
      return v5 - v54;
    }

    goto LABEL_75;
  }

LABEL_70:
  v65 = 56 * ((v7 - v63) >> 3) - 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3) + 0x71C71C71C71C71C7 * ((v64 - *v63) >> 3);
  if (v65)
  {
    v68 = 56 * ((v7 - v63) >> 3) - 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3);
    if (v68 < 1)
    {
      v94 = 55 - v68;
      v67 = (v63 - 8 * (v94 / 0x38));
      v66 = *v67 + 72 * (56 * (v94 / 0x38) - v94) + 3960;
      if (v61 < 1)
      {
        return v5 - v54;
      }
    }

    else
    {
      v67 = (v63 + 8 * (v68 / 0x38uLL));
      v66 = *v67 + 72 * (v68 % 0x38uLL);
      if (v61 < 1)
      {
        return v5 - v54;
      }
    }
  }

  else
  {
    v66 = v64;
    v67 = v63;
    if (v61 < 1)
    {
      return v5 - v54;
    }
  }

LABEL_75:
  v69 = *v67;
  v70 = v61 - 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
  if (v65 > (v54 - v61) >> 1)
  {
    v71 = v61 != 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
    if (v70 < 1)
    {
      v95 = 55 - v70;
      v72 = v67 - 8 * (v95 / 0x38);
      v73 = *v72;
      v74 = (*v72 + 72 * (56 * (v95 / 0x38) - v95) + 3960);
      if (v58 != v57)
      {
LABEL_78:
        v75 = (*v59 + 72 * (v55 - 56 * v56));
        if (v72 != v59)
        {
          goto LABEL_79;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v72 = v67 + 8 * (v70 / 0x38uLL);
      v73 = *v72;
      v74 = (*v72 + 72 * (v70 % 0x38uLL));
      if (v58 != v57)
      {
        goto LABEL_78;
      }
    }

    v75 = 0;
    if (v72 != v59)
    {
LABEL_79:
      memset(v115, 170, sizeof(v115));
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v74, (v73 + 4032), v67, v66);
      v76 = *&v115[8];
      v77 = *&v115[16];
      v78 = (v72 + 8);
      if (v72 + 8 != v59)
      {
        do
        {
          v79 = *v78++;
          memset(v115, 170, sizeof(v115));
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v79, v79 + 252, v76, v77);
          v76 = *&v115[8];
          v77 = *&v115[16];
        }

        while (v78 != v59);
      }

      v80 = *v59;
      memset(v115, 170, sizeof(v115));
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v80, v75, v76, v77);
      v82 = *&v115[8];
      v81 = *&v115[16];
      v84 = a1[1];
      v83 = a1[2];
      if (v83 != v84)
      {
LABEL_82:
        v85 = a1[5] + a1[4];
        v86 = *(v84 + 8 * (v85 / 0x38)) + 72 * (v85 % 0x38);
        if (v86 == v81)
        {
          goto LABEL_100;
        }

        goto LABEL_97;
      }

LABEL_94:
      v86 = 0;
      if (!v81)
      {
LABEL_100:
        if (v83 == v84)
        {
          v98 = 0;
        }

        else
        {
          v98 = 56 * ((v83 - v84) >> 3) - 1;
        }

        v99 = a1[4];
        v54 = a1[5] - v61;
        a1[5] = v54;
        if ((v98 - (v99 + v54)) >= 0x70)
        {
          do
          {
            operator delete(*(v83 - 8));
            v83 = a1[2] - 8;
            v100 = v83 == a1[1];
            v101 = 56 * ((v83 - a1[1]) >> 3) - 1;
            a1[2] = v83;
            if (v100)
            {
              v101 = 0;
            }

            v54 = a1[5];
          }

          while ((v101 - (v54 + a1[4])) >= 0x70);
        }

        return v5 - v54;
      }

      do
      {
LABEL_97:
        lcdm::CrashEntry::~CrashEntry(v81);
        v81 = (v96 + 72);
        if ((v81 - *v82) == 4032)
        {
          v97 = v82[1];
          ++v82;
          v81 = v97;
        }
      }

      while (v81 != v86);
      v84 = a1[1];
      v83 = a1[2];
      goto LABEL_100;
    }

LABEL_93:
    memset(v115, 170, sizeof(v115));
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v74, v75, v67, v66);
    v82 = *&v115[8];
    v81 = *&v115[16];
    v84 = a1[1];
    v83 = a1[2];
    if (v83 != v84)
    {
      goto LABEL_82;
    }

    goto LABEL_94;
  }

  v71 = v61 != 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
  if (v70 < 1)
  {
    v102 = (55 - v70) / 0x38uLL;
    v87 = v67 - v102;
    v88 = *v87 + 72 * (v70 - 55 + 56 * v102) + 3960;
    if (v63 != v67)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v87 = v67 + v70 / 0x38uLL;
    v88 = *v87 + 72 * (v70 % 0x38uLL);
    if (v63 != v67)
    {
LABEL_86:
      memset(v115, 170, sizeof(v115));
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v69, v66, v87, v88);
      v87 = *&v115[8];
      v88 = *&v115[16];
      for (i = v67 - 1; i != v63; v88 = *&v115[16])
      {
        v90 = *i--;
        memset(v115, 170, sizeof(v115));
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v90, v90 + 4032, v87, v88);
        v87 = *&v115[8];
      }

      v91 = *v63;
      memset(v115, 170, sizeof(v115));
      v92 = v91 + 4032;
      v93 = v64;
      goto LABEL_110;
    }
  }

  memset(v115, 170, sizeof(v115));
  v93 = v64;
  v92 = v66;
LABEL_110:
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v93, v92, v87, v88);
  v103 = *&v115[16];
  while (v64 != v103)
  {
    lcdm::CrashEntry::~CrashEntry(v64);
    v64 = (v64 + 72);
    if ((v64 - *v63) == 4032)
    {
      v104 = *(v63 + 1);
      v63 = (v63 + 8);
      v64 = v104;
    }
  }

  v54 = a1[5] - v61;
  v105 = a1[4] + v61;
  a1[4] = v105;
  a1[5] = v54;
  if (v105 >= 0x70)
  {
    v106 = a1[1];
    do
    {
      operator delete(*v106);
      v106 = (a1[1] + 8);
      a1[1] = v106;
      v107 = a1[4] - 56;
      a1[4] = v107;
    }

    while (v107 >= 0x70);
    v54 = a1[5];
  }

  return v5 - v54;
}

void sub_297113650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::CrashDB::purgeOldCrashEntries(lcdm::CrashDB *this)
{
  v2 = *(this + 9);
  SystemTime = TelephonyUtilGetSystemTime();

  return lcdm::CrashDB::purgeCrashEntriesOlderThan(this, v2, SystemTime);
}

uint64_t lcdm::serializeCrashDB(_DWORD *a1, unint64_t a2, void *a3, os_log_t oslog)
{
  v35 = *MEMORY[0x29EDCA608];
  if (a3[5])
  {
    v8 = lcdm::calculateTotalLength(a3);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__src = v9;
    v28 = v9;
    lcdm::createReturnTLVHeader(v8, __src);
    v10 = HIDWORD(__src[0]);
    v11 = HIDWORD(__src[0]) + 8;
    if (a2 < v11)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, oslog, OS_LOG_TYPE_ERROR, "Failed to serialize return TLV header", buf, 2u);
        v12 = 0;
        v13 = __src[1];
        if (!__src[1])
        {
          goto LABEL_24;
        }
      }

      else
      {
        v12 = 0;
        v13 = __src[1];
        if (!__src[1])
        {
          goto LABEL_24;
        }
      }

      goto LABEL_23;
    }

    *a1 = __src[0];
    a1[1] = v10;
    memcpy(a1 + 2, __src[1], v10);
    v14 = a3[1];
    if (a3[2] == v14 || (v15 = a3[4], v16 = (v14 + 8 * (v15 / 0x38)), v17 = (*v16 + 72 * (v15 % 0x38)), v18 = *(v14 + 8 * ((a3[5] + v15) / 0x38)) + 72 * ((a3[5] + v15) % 0x38), v17 == v18))
    {
      v12 = 1;
      v13 = __src[1];
      if (!__src[1])
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(v13);
      goto LABEL_24;
    }

    v12 = 1;
    while (1)
    {
      v32 = 0xAAAAAAAAAAAAAAAALL;
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30 = v19;
      v31 = v19;
      *buf = v19;
      lcdm::CrashEntry::convertToSubTLVs(v17, buf);
      if ((buf[0] & 1) == 0)
      {
        break;
      }

      v20 = lcdm::serializeSubTLVs(a1 + v11, a2 - v11, &buf[8]);
      v22 = v21;
      std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&buf[8]);
      v11 += v22;
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

      v17 = (v17 + 72);
      if ((v17 - *v16) == 4032)
      {
        v23 = v16[1];
        ++v16;
        v17 = v23;
      }

      if (v17 == v18)
      {
        goto LABEL_22;
      }
    }

    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&buf[8]);
LABEL_20:
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
LABEL_22:
      v13 = __src[1];
      if (!__src[1])
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    lcdm::CrashEntry::toDebugString(v17, buf);
    if ((SBYTE7(v30) & 0x80u) == 0)
    {
      v26 = buf;
    }

    else
    {
      v26 = *buf;
    }

    *v33 = 136315138;
    v34 = v26;
    _os_log_error_impl(&dword_296FF7000, oslog, OS_LOG_TYPE_ERROR, "Failed to serialize crash entry (%s)", v33, 0xCu);
    if (SBYTE7(v30) < 0)
    {
      operator delete(*buf);
    }

    v12 = 0;
    v13 = __src[1];
    if (__src[1])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = 1;
      _os_log_impl(&dword_296FF7000, oslog, OS_LOG_TYPE_INFO, "No crash entries to serialize", buf, 2u);
    }
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_297113A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (!a12)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a12);
  _Unwind_Resume(exception_object);
}

void lcdm::CrashDB::createCrashContextData(os_log_t *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  lcdm::CrashDB::logAllEntries(this);
  lcdm::createReturnTLVHeader(0, &v17);
  v4 = *__p;
  v5 = v4 + lcdm::calculateTotalLength(this + 3) + 8;
  if (*&__p[4])
  {
    operator delete(*&__p[4]);
  }

  v6 = operator new(v5);
  bzero(v6, v5);
  if ((lcdm::serializeCrashDB(v6, v5, this + 3, this[2]) & 1) == 0)
  {
    v10 = this[2];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      *a2 = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      goto LABEL_10;
    }

    LOWORD(v17) = 0;
    v11 = "Failed to serialize crash entries";
    v12 = v10;
    v13 = 2;
LABEL_12:
    _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
    goto LABEL_9;
  }

  if (v7 != v5)
  {
    v14 = v7;
    v15 = this[2];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v17 = 134218240;
    *__p = v14;
    *&__p[8] = 2048;
    *&__p[10] = v5;
    v11 = "Serialized data size %zu does not match expected size %zu";
    v12 = v15;
    v13 = 22;
    goto LABEL_12;
  }

  *a2 = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v8 = operator new(v5);
  *(a2 + 8) = v8;
  v9 = &v8[v5];
  *(a2 + 24) = &v8[v5];
  memcpy(v8, v6, v5);
  *(a2 + 16) = v9;
LABEL_10:
  operator delete(v6);
  v16 = *MEMORY[0x29EDCA608];
}

void sub_297113C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void lcdm::CrashDB::logAllEntries(lcdm::CrashDB *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(this + 2);
  if (*(this + 8))
  {
    if (os_log_type_enabled(*(this + 2), OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_296FF7000, v1, OS_LOG_TYPE_DEBUG, "#D Crash entries:", __p, 2u);
      v3 = *(this + 4);
      if (*(this + 5) == v3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v3 = *(this + 4);
      if (*(this + 5) == v3)
      {
        goto LABEL_18;
      }
    }

    v4 = *(this + 7);
    v5 = *(v3 + 8 * (v4 / 0x38));
    v6 = (v5 + 72 * (v4 % 0x38));
    v7 = *(v3 + 8 * ((*(this + 8) + v4) / 0x38)) + 72 * ((*(this + 8) + v4) % 0x38);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = (v3 + 8 * (v4 / 0x38));
      while (1)
      {
        v10 = *(this + 2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

        v6 = (v6 + 72);
        if (v6 - v5 == 4032)
        {
          goto LABEL_9;
        }

LABEL_6:
        if (v6 == v7)
        {
          goto LABEL_18;
        }
      }

      lcdm::CrashEntry::toDebugString(v6, __p);
      v12 = __p;
      if (v15 < 0)
      {
        v12 = __p[0];
      }

      *buf = 67109378;
      v17 = v8;
      v18 = 2080;
      v19 = v12;
      _os_log_debug_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEBUG, "#D Entry[%d] = %s", buf, 0x12u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      ++v8;
      v5 = *v9;
      v6 = (v6 + 72);
      if (v6 - *v9 != 4032)
      {
        goto LABEL_6;
      }

LABEL_9:
      v11 = v9[1];
      ++v9;
      v5 = v11;
      v6 = v11;
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(*(this + 2), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_296FF7000, v1, OS_LOG_TYPE_DEFAULT, "#I No crash entries", __p, 2u);
  }

LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
}

void lcdm::createReturnTLVHeader(lcdm *this@<X0>, void *a2@<X8>)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v9 = 4;
  strcpy(__p, "CTXT");
  lcdm::constructSubTLVWithUInt32Value(__p, this, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    v4 = v11;
    *a2 = *(&v10 + 1);
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(&v11 + 1) - v4;
    if (*(&v11 + 1) == v4)
    {
LABEL_3:
      if (!v4)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v4 = v11;
    *a2 = *(&v10 + 1);
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(&v11 + 1) - v4;
    if (*(&v11 + 1) == v4)
    {
      goto LABEL_3;
    }
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v6 = operator new(v5);
  a2[1] = v6;
  v7 = &v6[v5];
  a2[3] = &v6[v5];
  memcpy(v6, v4, v5);
  a2[2] = v7;
  if (v4)
  {
LABEL_4:
    *(&v11 + 1) = v4;
    operator delete(v4);
  }
}

void sub_297113F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::calculateTotalLength(void *a1)
{
  v1 = a1[1];
  if (a1[2] != v1)
  {
    v2 = a1[4];
    v3 = *(v1 + 8 * (v2 / 0x38)) + 72 * (v2 % 0x38);
    v4 = *(v1 + 8 * ((a1[5] + v2) / 0x38)) + 72 * ((a1[5] + v2) % 0x38);
    if (v3 != v4)
    {
      LODWORD(v5) = 0;
      v6 = (v1 + 8 * (v2 / 0x38));
      while (1)
      {
        v7 = *v3;
        v20 = *(v3 + 16);
        v19 = v7;
        memset(v21, 0, 48);
        v8 = *(v3 + 56);
        v9 = (v8 >> 4) & 0xFFFFFFFFFFFFFF8;
        v10 = *(v3 + 32);
        if (*(v3 + 40) == v10)
        {
          break;
        }

        v11 = (*(v10 + v9) + 32 * (*(v3 + 56) & 0x7FLL));
        v12 = *(v3 + 64) + v8;
        v13 = (v12 >> 4) & 0xFFFFFFFFFFFFFF8;
        v14 = v12 & 0x7F;
        if ((*(v10 + v13) + 32 * v14) == v11)
        {
          goto LABEL_9;
        }

        v15 = v14 - (*(v3 + 56) & 0x7FLL) + 16 * (v13 - v9);
LABEL_10:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v21, (v10 + v9), v11, v15);
        v16 = v19;
        lcdm::CrashEntry::~CrashEntry(&v19);
        v3 += 72;
        if (v3 - *v6 == 4032)
        {
          v17 = v6[1];
          ++v6;
          v3 = v17;
        }

        v5 = (v16 + v5);
        if (v3 == v4)
        {
          return v5;
        }
      }

      v11 = 0;
LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  return 0;
}

void sub_29711412C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14)
{
  if (a14 == a13)
  {
    v15 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

uint64_t std::deque<lcdm::CrashEntry>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(*(a1 + 40) + v4) / 0x38] + 72 * ((*(a1 + 40) + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 56;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  v2 = v1[4];
  v3 = v1[5];
  if (v3 == v2)
  {
    v3 = v1[4];
    v1[8] = 0;
    v10 = 0;
  }

  else
  {
    v4 = v1[7];
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(v1[8] + v4) / 0x38] + 72 * ((v1[8] + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = v1[4];
      v3 = v1[5];
    }

    v1[8] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = v1[5];
        v2 = (v1[4] + 8);
        v1[4] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v11 = 56;
  }

  v1[7] = v11;
LABEL_18:
  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = v1[4];
    v13 = v1[5];
    if (v13 != v14)
    {
      v1[5] = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = v1[3];
  if (v15)
  {
    operator delete(v15);
  }

  MEMORY[0x29C26B020](v1 + 2);
  v16 = v1[1];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722AAC6)
  {
    if (((v2 & 0x800000029722AAC6 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722AAC6))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722AAC6 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void lcdm::CrashDB::~CrashDB(lcdm::CrashDB *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    *(this + 8) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(this + 7);
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(*(this + 8) + v4) / 0x38] + 72 * ((*(this + 8) + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }

    *(this + 8) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 5);
        v2 = (*(this + 4) + 8);
        *(this + 4) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 56;
LABEL_15:
    *(this + 7) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(this + 4);
    v13 = *(this + 5);
    if (v13 != v14)
    {
      *(this + 5) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = *(this + 3);
  if (v15)
  {
    operator delete(v15);
  }

  MEMORY[0x29C26B020](this + 16);
  v16 = *(this + 1);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

lcdm::CrashDB **std::unique_ptr<lcdm::CrashDB>::~unique_ptr[abi:ne200100](lcdm::CrashDB **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    lcdm::CrashDB::~CrashDB(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<std::chrono::duration<long long,std::ratio<1l,1000l>>>(std::chrono::duration<long long,std::ratio<1l,1000l>> &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke(std::locale::__imp **a1, uint64_t a2, uint64_t *a3)
{
  v111 = *MEMORY[0x29EDCA608];
  v82 = 0;
  v83 = -1;
  strcpy(v84, " ");
  memset(&v84[2], 0, 18);
  locale = *a1;
  v8 = a1[1];
  v102[0].__locale_ = locale;
  if (locale == v8 || *locale == 125)
  {
    goto LABEL_31;
  }

  *&v92 = locale;
  *(&v92 + 1) = v8;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v92) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  if (v92 >= v8)
  {
    goto LABEL_9;
  }

  v9 = *v92;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
LABEL_9:
      v11 = *locale;
      switch(v11)
      {
        case '<':
          v12 = 1;
          break;
        case '>':
          v12 = 3;
          break;
        case '^':
          v12 = 2;
          break;
        default:
LABEL_25:
          v14 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(&v82, v102, v8, a1);
          locale = v102[0].__locale_;
          if (v102[0].__locale_ == v8)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if ((v15 & 1) == 0 && *v102[0].__locale_ == 76)
          {
            LOBYTE(v82) = v82 | 0x40;
            locale = (v102[0].__locale_ + 1);
          }

          goto LABEL_31;
      }

      LOBYTE(v82) = v82 & 0xF8 | v12;
      locale = (locale + 1);
      v102[0].__locale_ = locale;
      if (locale == v8)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
  }

  v3 = (v82 & 0xF8);
  LOBYTE(v82) = v3 | v10;
  v13 = v92 - locale;
  if (v92 - locale == 1)
  {
    if (*locale == 123)
    {
      std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
    }

    v84[0] = *locale;
  }

  else if (v92 != locale)
  {
    memmove(v84, locale, v13);
  }

  locale = (locale + v13 + 1);
  v102[0].__locale_ = locale;
  if (locale != v8)
  {
    goto LABEL_25;
  }

LABEL_31:
  v16 = a1[1];
  if (locale != v16)
  {
    v17 = *locale;
    if (v17 != 37 && v17 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier expects a '%' or a '}'");
    }

    v18 = WORD1(v82);
    v3 = locale;
    while (v17 != 37)
    {
      if (v17 == 125)
      {
        goto LABEL_59;
      }

      v19 = v3;
      if (v17 == 123)
      {
        std::__throw_format_error[abi:ne200100]("The chrono specifiers contain a '{'");
      }

LABEL_42:
      v3 = (v19 + 1);
      if ((v19 + 1) != v16)
      {
        v17 = *v3;
        if (v17 != 125)
        {
          continue;
        }
      }

LABEL_59:
      *&v84[4] = locale;
      *&v84[12] = v3 - locale;
      *a1 = v3;
      v23 = v82;
      if ((v18 & 0x4000) == 0)
      {
        goto LABEL_60;
      }

LABEL_63:
      v25 = SHIDWORD(v82);
      v26 = *(a2 + 8);
      if (v26 <= SHIDWORD(v82))
      {
        LOBYTE(v27) = 0;
      }

      else if (v26 > 0xC)
      {
        v28 = *(a2 + 16) + 32 * SHIDWORD(v82);
        v25 = *v28;
        v3 = *(v28 + 8);
        LOBYTE(v27) = *(v28 + 16);
        v102[0] = *(v28 + 17);
        *(&v102[0].__locale_ + 7) = *(v28 + 24);
      }

      else
      {
        v27 = (*(a2 + 24) >> (5 * BYTE4(v82))) & 0x1FLL;
        v25 = *(*(a2 + 16) + 16 * SHIDWORD(v82));
        v3 = *(*(a2 + 16) + 16 * SHIDWORD(v82) + 8);
      }

      *&v92 = v25;
      *(&v92 + 1) = v3;
      LOBYTE(v93) = v27;
      *(&v93 + 1) = v102[0];
      *(&v93 + 1) = *(&v102[0].__locale_ + 7);
      v24 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__dst, &v92);
      if ((v82 & 0x80000000) != 0)
      {
        goto LABEL_69;
      }

LABEL_61:
      v80 = v83;
      goto LABEL_75;
    }

    v19 = (v3 + 1);
    if ((v3 + 1) == v16)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing a conversion specifier");
    }

    v20 = 1;
    switch(*v19)
    {
      case '%':
      case 'M':
      case 'Q':
      case 'S':
      case 'n':
      case 'q':
      case 't':
        goto LABEL_42;
      case 'A':
      case 'a':
        v18 |= 2u;
        goto LABEL_166;
      case 'B':
      case 'b':
      case 'h':
        WORD1(v82) = v18 | 0x20;
        goto LABEL_159;
      case 'C':
      case 'Y':
      case 'y':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
      case 'D':
      case 'F':
      case 'x':
        goto LABEL_152;
      case 'E':
        v19 = (v3 + 2);
        if ((v3 + 2) == v16)
        {
          std::__throw_format_error[abi:ne200100]("End of input while parsing the modifier E");
        }

        v21 = *v19;
        if (v21 == 88)
        {
          goto LABEL_41;
        }

        if (*v19 > 0x77u)
        {
          if (v21 == 120)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
          }

          if (v21 == 122)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
          }

          if (v21 != 121)
          {
LABEL_175:
            std::__throw_format_error[abi:ne200100]("The date time type specifier for modifier E is invalid");
          }
        }

        else if (v21 != 67 && v21 != 89)
        {
          if (v21 == 99)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date and time");
          }

          goto LABEL_175;
        }

        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
      case 'G':
      case 'U':
      case 'V':
      case 'W':
      case 'g':
        WORD1(v82) = v18 | 0x10;
LABEL_152:
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
      case 'H':
      case 'I':
      case 'R':
      case 'T':
      case 'X':
      case 'p':
      case 'r':
        goto LABEL_41;
      case 'O':
        v19 = (v3 + 2);
        if ((v3 + 2) == v16)
        {
          std::__throw_format_error[abi:ne200100]("End of input while parsing the modifier O");
        }

        v22 = *v19;
        if (v22 <= 0x4C)
        {
          if (v22 - 72 >= 2)
          {
            goto LABEL_58;
          }

LABEL_41:
          v18 |= v20;
          WORD1(v82) = v18;
        }

        else if (*v19 <= 0x52u)
        {
          if (v22 != 77)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (*v19 > 0x54u)
          {
            if (*v19 <= 0x6Cu)
            {
              if (v22 - 85 < 3)
              {
                WORD1(v82) = v18 | 0x10;
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
              }

              if (v22 - 100 < 2)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a day");
              }

              goto LABEL_58;
            }

            if (*v19 <= 0x76u)
            {
              if (v22 == 109)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a month");
              }

              if (v22 != 117)
              {
LABEL_58:
                std::__throw_format_error[abi:ne200100]("The date time type specifier for modifier O is invalid");
              }
            }

            else if (v22 != 119)
            {
              if (v22 == 121)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
              }

              if (v22 == 122)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
              }

              goto LABEL_58;
            }

            WORD1(v82) = v18 | 4;
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a weekday");
          }

          if (v22 != 83)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_42;
      case 'Z':
      case 'z':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
      case 'c':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date and time");
      case 'd':
      case 'e':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a day");
      case 'j':
        v20 = 8;
        goto LABEL_41;
      case 'm':
LABEL_159:
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a month");
      case 'u':
      case 'w':
LABEL_166:
        WORD1(v82) = v18 | 4;
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a weekday");
      default:
        std::__throw_format_error[abi:ne200100]("The date time type specifier is invalid");
    }
  }

  v18 = WORD1(v82);
  *a1 = locale;
  v23 = v82;
  if ((v18 & 0x4000) != 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  v24 = HIDWORD(v82);
  if ((v18 & 0x8000) == 0)
  {
    goto LABEL_61;
  }

LABEL_69:
  v29 = v83;
  v30 = *(a2 + 8);
  if (v30 <= v83)
  {
    LOBYTE(v31) = 0;
  }

  else if (v30 > 0xC)
  {
    v32 = *(a2 + 16) + 32 * v83;
    v29 = *v32;
    v3 = *(v32 + 8);
    LOBYTE(v31) = *(v32 + 16);
    v102[0] = *(v32 + 17);
    *(&v102[0].__locale_ + 7) = *(v32 + 24);
  }

  else
  {
    v31 = (*(a2 + 24) >> (5 * v83)) & 0x1FLL;
    v29 = *(*(a2 + 16) + 16 * v83);
    v3 = *(*(a2 + 16) + 16 * v83 + 8);
  }

  *&v92 = v29;
  *(&v92 + 1) = v3;
  LOBYTE(v93) = v31;
  *(&v93 + 1) = v102[0];
  *(&v93 + 1) = *(&v102[0].__locale_ + 7);
  v80 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__dst, &v92);
LABEL_75:
  v33 = *v84;
  v34 = *&v84[4];
  v101 = 0xAAAAAAAAAAAAAAAALL;
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v100[7] = v35;
  v100[8] = v35;
  v100[5] = v35;
  v100[6] = v35;
  v100[3] = v35;
  v100[4] = v35;
  v100[1] = v35;
  v100[2] = v35;
  v99 = v35;
  v100[0] = v35;
  v97 = v35;
  v98 = v35;
  v95 = v35;
  __src = v35;
  v93 = v35;
  v94 = v35;
  v92 = v35;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v92);
  v81 = v24;
  v36 = v23 & 7 | (8 * ((v23 >> 6) & 1)) & 0xFFFFFFFFFFFFFC0FLL | (16 * (v18 & 0x3F));
  v37 = *(v92 - 24);
  if ((v36 & 8) == 0)
  {
    v38 = std::locale::classic();
    v39 = (&v92 + v37);
    v85.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(v39);
    std::ios_base::imbue(v39, v38);
    std::locale::~locale(v102);
    rdbuf = v39->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, v38);
      __dst.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&__dst, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, v38);
      std::locale::~locale(&__dst);
    }

    std::locale::~locale(&v85);
    if (!*(&v34 + 1))
    {
      goto LABEL_79;
    }

LABEL_125:
    if (*a3 < 0)
    {
      LOBYTE(v102[0].__locale_) = 45;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, v102, 1);
      v102[0].__locale_ = -*a3;
      std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(&v92, v102, v34, *(&v34 + 1));
    }

    else
    {
      std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(&v92, a3, v34, *(&v34 + 1));
    }

    v55 = -1;
    v56 = v36 | (v81 << 32);
    v57 = BYTE8(v99);
    if ((BYTE8(v99) & 0x10) != 0)
    {
      goto LABEL_109;
    }

LABEL_129:
    if ((v57 & 8) != 0)
    {
      v59 = *(&v94 + 1);
      v60 = *(&v95 + 1) - *(&v94 + 1);
      v61 = v33 << 32;
      v62 = *a2;
      v63 = v55;
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = v33 << 32;
      v62 = *a2;
      v63 = v55;
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_131:
    v72 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v59, v60, v62, v56, v63 | v61);
    goto LABEL_141;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C26BF30](v102);
    v49 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v49, v102);
    }

    else
    {
      std::locale::locale(v49, v102);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v102);
  }

  std::locale::locale(&v91, (a2 + 32));
  v85.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::ios_base::getloc((&v92 + v37));
  std::ios_base::imbue((&v92 + v37), &v91);
  std::locale::~locale(v102);
  v71 = *(&v94 + v37 + 8);
  if (v71)
  {
    (*(v71->__locale_ + 2))(v71, &v91);
    __dst.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::locale::locale(&__dst, v71 + 1);
    std::locale::operator=(v71 + 1, &v91);
    std::locale::~locale(&__dst);
  }

  std::locale::~locale(&v85);
  std::locale::~locale(&v91);
  if (*(&v34 + 1))
  {
    goto LABEL_125;
  }

LABEL_79:
  v110 = 0xAAAAAAAAAAAAAAAALL;
  *&v41 = 0xAAAAAAAAAAAAAAAALL;
  *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v109[7] = v41;
  v109[8] = v41;
  v109[5] = v41;
  v109[6] = v41;
  v109[3] = v41;
  v109[4] = v41;
  v109[1] = v41;
  v109[2] = v41;
  v108 = v41;
  v109[0] = v41;
  v106 = v41;
  v107 = v41;
  v104 = v41;
  v105 = v41;
  *&v102[0].__locale_ = v41;
  v103 = v41;
  std::ostringstream::basic_ostringstream[abi:ne200100](v102);
  v42 = v102[0].__locale_;
  v43 = v93;
  *(&v102[1].__locale_ + *(v102[0].__locale_ - 3)) = *(&v93 + *(v93 - 24) + 8);
  v44 = *(v42 - 3);
  std::ios_base::getloc((&v93 + *(v43 - 24)));
  v90.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::ios_base::getloc((v102 + v44));
  std::ios_base::imbue((v102 + v44), &__loc);
  std::locale::~locale(&__dst);
  v45 = *(&v104 + v44 + 8);
  if (v45)
  {
    (*(v45->__locale_ + 2))(v45, &__loc);
    v91.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::locale::locale(&v91, v45 + 1);
    std::locale::operator=(v45 + 1, &__loc);
    std::locale::~locale(&v91);
  }

  std::locale::~locale(&v90);
  std::locale::~locale(&__loc);
  *(&v102[2] + *(v102[0].__locale_ - 3)) = *(&v93 + *(v93 - 24) + 16);
  v46 = MEMORY[0x29C26BE30](v102, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "ms", 2);
  if ((BYTE8(v108) & 0x10) != 0)
  {
    v50 = v108;
    if (v108 < *(&v105 + 1))
    {
      *&v108 = *(&v105 + 1);
      v50 = *(&v105 + 1);
    }

    v51 = v105;
    v47 = v50 - v105;
    if ((v50 - v105) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_137;
    }
  }

  else
  {
    if ((BYTE8(v108) & 8) == 0)
    {
      v47 = 0;
      HIBYTE(v88) = 0;
      p_dst = &__dst;
      goto LABEL_98;
    }

    v51 = *(&v103 + 1);
    v47 = *(&v104 + 1) - *(&v103 + 1);
    if (*(&v104 + 1) - *(&v103 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_137:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v47 >= 0x17)
  {
    if ((v47 | 7) == 0x17)
    {
      v52 = 25;
    }

    else
    {
      v52 = (v47 | 7) + 1;
    }

    p_dst = operator new(v52);
    v87 = v47;
    v88 = v52 | 0x8000000000000000;
    __dst.__locale_ = p_dst;
    goto LABEL_97;
  }

  HIBYTE(v88) = v47;
  p_dst = &__dst;
  if (v47)
  {
LABEL_97:
    memmove(p_dst, v51, v47);
  }

LABEL_98:
  *(p_dst + v47) = 0;
  if (v88 >= 0)
  {
    v53 = &__dst;
  }

  else
  {
    v53 = __dst.__locale_;
  }

  if (v88 >= 0)
  {
    v54 = HIBYTE(v88);
  }

  else
  {
    v54 = v87;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, v53, v54);
  v55 = v80;
  if (SHIBYTE(v88) < 0)
  {
    operator delete(__dst.__locale_);
  }

  v102[0] = *MEMORY[0x29EDC9538];
  *(v102 + *(v102[0].__locale_ - 3)) = *(MEMORY[0x29EDC9538] + 24);
  v102[1].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(*(&v106 + 1));
  }

  v102[1].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&v103);
  std::ostream::~ostream();
  MEMORY[0x29C26C030](v109);
  v56 = v36 | (v81 << 32);
  v57 = BYTE8(v99);
  if ((BYTE8(v99) & 0x10) == 0)
  {
    goto LABEL_129;
  }

LABEL_109:
  v58 = v99;
  if (v99 < *(&__src + 1))
  {
    *&v99 = *(&__src + 1);
    v58 = *(&__src + 1);
  }

  v59 = __src;
  v60 = v58 - __src;
  v61 = v33 << 32;
  v62 = *a2;
  v63 = v55;
  if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_112:
  LODWORD(v64) = 0;
  v65 = v59;
  if (v55 && v60)
  {
    v64 = v55 & 0x7FFFFFFF;
    if (*v59 < 0)
    {
      v69 = v62;
      v70 = v56;
      v67 = v59;
    }

    else
    {
      v66 = 0;
      v65 = &v59[v64];
      v67 = &v59[v64 - 1];
      while (1)
      {
        if (v60 - 1 == v66)
        {
          LODWORD(v64) = v60;
          v65 = &v59[v60];
          goto LABEL_140;
        }

        if (v64 - 1 == v66)
        {
          break;
        }

        v68 = v59[++v66];
        if (v68 < 0)
        {
          v69 = v62;
          v70 = v56;
          v64 = v64 - v66 + 1;
          v67 = &v59[v66 - 1];
          goto LABEL_135;
        }
      }

      if ((*v65 & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v69 = v62;
      v70 = v56;
      v64 = 1;
    }

LABEL_135:
    v73 = v67 - v59;
    v74 = v59;
    LODWORD(v64) = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v67, &v59[v60], v64, 0);
    v59 = v74;
    v65 = v75;
    LODWORD(v64) = v73 + v64;
    v56 = v70;
    v62 = v69;
  }

LABEL_140:
  v72 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v59, v65 - v59, v62, v56, v63 | v61, v64);
LABEL_141:
  v76 = v72;
  *&v92 = *MEMORY[0x29EDC9528];
  v77 = *(MEMORY[0x29EDC9528] + 72);
  *(&v92 + *(v92 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v93 = v77;
  *(&v93 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v98) < 0)
  {
    operator delete(*(&v97 + 1));
  }

  *(&v93 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v94);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C26C030](v100);
  *a2 = v76;
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2971156F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, std::locale a23, std::locale a24, std::locale a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a26, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26C030](&a42);
  _Unwind_Resume(a1);
}

void std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(void *a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v87 = *MEMORY[0x29EDCA608];
  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v8 = *a2 / 1000 % 0x15180uLL;
  v9 = v8 / 0xE10;
  LOWORD(v8) = v8 % 0xE10;
  v50 = v8 % 0x3Cu;
  v51 = v8 / 0x3Cu;
  v52 = v9;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0x3AAAAAAAAAAAAAALL;
  v49 = 0;
  v46 = 0xAAAAAAAA00435455;
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  std::locale::use_facet(&v66, MEMORY[0x29EDC9400]);
  std::locale::~locale(&v66);
  if (a4)
  {
    v10 = &a3[a4];
    v11 = a1 + 7;
    while (*a3 != 37)
    {
      LOBYTE(v66.__locale_) = *a3;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
      v14 = a3;
LABEL_4:
      a3 = v14 + 1;
      if (v14 + 1 == v10)
      {
        goto LABEL_94;
      }
    }

    v14 = a3 + 1;
    switch(a3[1])
    {
      case '%':
        LOBYTE(v66.__locale_) = 37;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'C':
        if ((DWORD2(v53) - 8100) > 0xFFFFDCD7)
        {
          goto LABEL_3;
        }

        v62 = 0;
        v63 = 3;
        if (SDWORD2(v53) >= -1900)
        {
          v26 = 0;
        }

        else
        {
          v26 = -99;
        }

        v61 = ((DWORD2(v53) + v26 + 1900) / 100);
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v27;
        v85 = v27;
        v82 = v27;
        v83 = v27;
        v80 = v27;
        v81 = v27;
        v78 = v27;
        v79 = v27;
        v76 = v27;
        v77 = v27;
        v74 = v27;
        v75 = v27;
        v72 = v27;
        v73 = v27;
        v70 = v27;
        v71 = v27;
        v66.__locale_ = &v70;
        v67 = xmmword_297225680;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 1;
        v59 = &v61;
        v60 = 3;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "{:02}", 5, &v58);
        v28 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v29 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v44 = 25;
          }

          else
          {
            v44 = (*(&v67 + 1) | 7) + 1;
          }

          p_dst = operator new(v44);
          v56 = v28;
          v57 = v44 | 0x8000000000000000;
          __dst = p_dst;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          p_dst = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v31 = __p;
            if (__p == &v70)
            {
LABEL_35:
              if (v57 >= 0)
              {
                v24 = &__dst;
              }

              else
              {
                v24 = __dst;
              }

              if (v57 >= 0)
              {
                v25 = HIBYTE(v57);
              }

              else
              {
                v25 = v56;
              }

              goto LABEL_53;
            }

LABEL_34:
            operator delete(v31);
            goto LABEL_35;
          }
        }

        memmove(p_dst, v29, v28);
        v11 = a1 + 7;
        *(p_dst + v28) = 0;
        v31 = __p;
        if (__p == &v70)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      case 'E':
        v17 = a3[2];
        goto LABEL_56;
      case 'F':
        std::__formatter::__format_year[abi:ne200100]<char>(a1, DWORD2(v53) + 1900);
        v61 = (DWORD1(v53) + 1);
        v62 = 0;
        v64 = 0;
        v65 = 99;
        v63 = v53;
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v32;
        v85 = v32;
        v82 = v32;
        v83 = v32;
        v80 = v32;
        v81 = v32;
        v78 = v32;
        v79 = v32;
        v76 = v32;
        v77 = v32;
        v74 = v32;
        v75 = v32;
        v72 = v32;
        v73 = v32;
        v70 = v32;
        v71 = v32;
        v66.__locale_ = &v70;
        v67 = xmmword_297225680;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 2;
        v59 = &v61;
        v60 = 99;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "-{:02}-{:02}", 12, &v58);
        v33 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v34 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v43 = 25;
          }

          else
          {
            v43 = (*(&v67 + 1) | 7) + 1;
          }

          v35 = operator new(v43);
          v56 = v33;
          v57 = v43 | 0x8000000000000000;
          __dst = v35;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          v35 = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v36 = __p;
            if (__p == &v70)
            {
              goto LABEL_47;
            }

LABEL_46:
            operator delete(v36);
            goto LABEL_47;
          }
        }

        memmove(v35, v34, v33);
        v11 = a1 + 7;
        *(v35 + v33) = 0;
        v36 = __p;
        if (__p != &v70)
        {
          goto LABEL_46;
        }

LABEL_47:
        if (v57 >= 0)
        {
          v24 = &__dst;
        }

        else
        {
          v24 = __dst;
        }

        if (v57 >= 0)
        {
          v25 = HIBYTE(v57);
        }

        else
        {
          v25 = v56;
        }

LABEL_53:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, v24, v25);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_4;
      case 'O':
        v14 = a3 + 2;
        v17 = a3[2];
        if (v17 == 83)
        {
          goto LABEL_7;
        }

LABEL_56:
        v14 = a3 + 2;
        if (v17 != 122)
        {
          goto LABEL_3;
        }

        std::__formatter::__format_zone_offset[abi:ne200100]<char>(a1, v49, 1);
        goto LABEL_4;
      case 'Q':
        v18 = *a2;
        v62 = 0;
        v63 = 4;
        v61 = v18;
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v19;
        v85 = v19;
        v82 = v19;
        v83 = v19;
        v80 = v19;
        v81 = v19;
        v78 = v19;
        v79 = v19;
        v76 = v19;
        v77 = v19;
        v74 = v19;
        v75 = v19;
        v72 = v19;
        v73 = v19;
        v70 = v19;
        v71 = v19;
        v66.__locale_ = &v70;
        v67 = xmmword_297225680;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 1;
        v59 = &v61;
        v60 = 4;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "{}", 2, &v58);
        v20 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v42 = 25;
          }

          else
          {
            v42 = (*(&v67 + 1) | 7) + 1;
          }

          v22 = operator new(v42);
          v56 = v20;
          v57 = v42 | 0x8000000000000000;
          __dst = v22;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          v22 = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v23 = __p;
            if (__p == &v70)
            {
              goto LABEL_18;
            }

LABEL_17:
            operator delete(v23);
            goto LABEL_18;
          }
        }

        memmove(v22, v21, v20);
        v11 = a1 + 7;
        *(v22 + v20) = 0;
        v23 = __p;
        if (__p != &v70)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v57 >= 0)
        {
          v24 = &__dst;
        }

        else
        {
          v24 = __dst;
        }

        if (v57 >= 0)
        {
          v25 = HIBYTE(v57);
        }

        else
        {
          v25 = v56;
        }

        goto LABEL_53;
      case 'S':
      case 'T':
LABEL_7:
        v15 = *(v11 + *(a1[2] - 24));
        v16 = *(*a1 - 24);
        std::time_put<char,std::ostreambuf_iterator<char>>::put();
        std::__formatter::__format_sub_seconds[abi:ne200100]<char,long long,std::ratio<1l,1000l>>(a1, a2);
        goto LABEL_4;
      case 'Y':
        std::__formatter::__format_year[abi:ne200100]<char>(a1, DWORD2(v53) + 1900);
        goto LABEL_4;
      case 'Z':
        if (v48 >= 0)
        {
          v37 = &v46;
        }

        else
        {
          v37 = v46;
        }

        if (v48 >= 0)
        {
          v38 = SHIBYTE(v48);
        }

        else
        {
          v38 = v47;
        }

        if (v38)
        {
          v39 = *(v11 + *(a1[2] - 24));
          do
          {
            if (v39)
            {
              v40 = *v37;
              v41 = v39[6];
              if (v41 == v39[7])
              {
                if ((*(*v39 + 104))(v39, v40) == -1)
                {
                  v39 = 0;
                }
              }

              else
              {
                v39[6] = v41 + 1;
                *v41 = v40;
              }
            }

            ++v37;
            --v38;
          }

          while (v38);
        }

        goto LABEL_4;
      case 'j':
        MEMORY[0x29C26BDF0](a1 + 2, (*a2 / 86400000));
        goto LABEL_4;
      case 'n':
        LOBYTE(v66.__locale_) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'q':
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, "ms", 2);
        goto LABEL_4;
      case 't':
        LOBYTE(v66.__locale_) = 9;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'z':
        std::__formatter::__format_zone_offset[abi:ne200100]<char>(a1, v49, 0);
        goto LABEL_4;
      default:
LABEL_3:
        v12 = *(v11 + *(a1[2] - 24));
        v13 = *(*a1 - 24);
        std::time_put<char,std::ostreambuf_iterator<char>>::put();
        goto LABEL_4;
    }
  }

LABEL_94:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v46);
  }

  v45 = *MEMORY[0x29EDCA608];
}