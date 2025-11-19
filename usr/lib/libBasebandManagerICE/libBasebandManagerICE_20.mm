void sub_2975754AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_2975754E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule21setOperatingMode_syncEjN5radio13OperatingModeEbN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(void *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v27 = 0;
  v28 = 0;
  v4 = a1[6];
  if (v4)
  {
    v28 = std::__shared_weak_count::lock(v4);
    if (!v28)
    {
      goto LABEL_41;
    }

    v27 = a1[5];
    if (v27)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = *(v3 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__dst) = 138412290;
          *(&__dst + 4) = v6;
          _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "%@", &__dst, 0xCu);
          v24 = *a2 == 0;
        }
      }

      (*(a1[7] + 16))();
      if (*a2)
      {
        v29 = &__block_literal_global_4;
        if (atomic_load_explicit(&qword_2A18CB238, memory_order_acquire) != -1)
        {
          *&__dst = &v29;
          p_dst = &__dst;
          std::__call_once(&qword_2A18CB238, &p_dst, std::__call_once_proxy[abi:ne200100]<std::tuple<void({block_pointer}&&)(void)>>);
        }

        if (_MergedGlobals_5 == 1)
        {
          v8 = xpc_dictionary_create(0, 0, 0);
          if (v8 || (v8 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C272BA0](v8) == MEMORY[0x29EDCAA00])
            {
              xpc_retain(v8);
              v9 = v8;
            }

            else
            {
              v9 = xpc_null_create();
            }
          }

          else
          {
            v9 = xpc_null_create();
            v8 = 0;
          }

          xpc_release(v8);
          v10 = xpc_string_create(*MEMORY[0x29EDBEB60]);
          if (!v10)
          {
            v10 = xpc_null_create();
          }

          xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEB00], v10);
          v11 = xpc_null_create();
          xpc_release(v10);
          xpc_release(v11);
          v12 = xpc_string_create(*MEMORY[0x29EDBF5C8]);
          if (!v12)
          {
            v12 = xpc_null_create();
          }

          xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEEE0], v12);
          v13 = xpc_null_create();
          xpc_release(v12);
          xpc_release(v13);
          v14 = xpc_string_create("Set Operating Mode Error");
          if (!v14)
          {
            v14 = xpc_null_create();
          }

          xpc_dictionary_set_value(v9, *MEMORY[0x29EDBED88], v14);
          v15 = xpc_null_create();
          xpc_release(v14);
          xpc_release(v15);
          v16 = v27;
          v17 = *MEMORY[0x29EDBEAA8];
          v18 = strlen(*MEMORY[0x29EDBEAA8]);
          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v19 = v18;
          if (v18 >= 0x17)
          {
            if ((v18 | 7) == 0x17)
            {
              v21 = 25;
            }

            else
            {
              v21 = (v18 | 7) + 1;
            }

            v20 = operator new(v21);
            *(&__dst + 1) = v19;
            v32 = v21 | 0x8000000000000000;
            *&__dst = v20;
          }

          else
          {
            HIBYTE(v32) = v18;
            v20 = &__dst;
            if (!v18)
            {
              goto LABEL_32;
            }
          }

          memmove(v20, v17, v19);
LABEL_32:
          *(v20 + v19) = 0;
          object = v9;
          if (v9)
          {
            xpc_retain(v9);
          }

          else
          {
            object = xpc_null_create();
          }

          v25 = 0;
          Service::runCommand(v16, &__dst, &object, &v25);
          xpc_release(object);
          object = 0;
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__dst);
          }

          xpc_release(v9);
        }
      }
    }
  }

  v22 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_41:
  v23 = *MEMORY[0x29EDCA608];
}

void sub_297575914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void RadioModule::queryFactoryCalibrationStatus_sync(RadioModule *this)
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
  aBlock[2] = ___ZN11RadioModule34queryFactoryCalibrationStatus_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_191;
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
  v10 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v11;
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

    v10 = off_2A18CADD8;
  }

  v14 = *(&off_2A18CADD8 + 1);
  v20 = v10;
  v21 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v22, v10);
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

  (*(*v15 + 72))(v15, &v18);
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

void sub_297575E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule34queryFactoryCalibrationStatus_syncEv_block_invoke(void *a1, uint64_t *a2, const __CFDictionary **a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = *a2;
        if (v10)
        {
          v11 = *(v7 + 104);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        else
        {
          v12 = *a3;
          if (*a3)
          {
            memset(buf, 170, 16);
            ctu::cf::dict_adapter::dict_adapter(buf, v12);
            *(v7 + 136) = ctu::cf::map_adapter::getInt(buf, *MEMORY[0x29EDC8F58]);
            MEMORY[0x29C270ED0](buf);
          }
        }
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void RadioModule::queryRFCalibrationStatus_sync(RadioModule *this)
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
  aBlock[2] = ___ZN11RadioModule29queryRFCalibrationStatus_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_194;
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
  v10 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v11;
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

    v10 = off_2A18CADD8;
  }

  v14 = *(&off_2A18CADD8 + 1);
  v20 = v10;
  v21 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v22, v10);
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

  (*(*v15 + 80))(v15, &v18);
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

void sub_29757639C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule29queryRFCalibrationStatus_syncEv_block_invoke(void *a1, uint64_t *a2, CFTypeRef *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = *a2;
        if (v10)
        {
          v11 = *(v7 + 104);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v15 = v10;
            _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        else if (*a3)
        {
          cf = *a3;
          CFRetain(*a3);
          radio::RFCalibration_t::fill();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_29757656C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RadioModule::queryFieldTestConfig_sync(RadioModule *this)
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
  aBlock[2] = ___ZN11RadioModule25queryFieldTestConfig_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_197_0;
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
  v10 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v11;
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

    v10 = off_2A18CADD8;
  }

  v14 = *(&off_2A18CADD8 + 1);
  v20 = v10;
  v21 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v22, v10);
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

  (*(*v15 + 136))(v15, &v18);
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

void sub_29757692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule25queryFieldTestConfig_syncEv_block_invoke(void *a1, uint64_t *a2, ctu **a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v10 = v8;
      if (a1[5])
      {
        v11 = *a2;
        if (v11)
        {
          v12 = *(v7 + 104);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *object = 138412290;
            *&object[4] = v11;
            _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "%@", object, 0xCu);
          }
        }

        else if (*a3)
        {
          ctu::cf_to_xpc(object, *a3, v9);
          v14 = *object;
          if (*object && MEMORY[0x29C272BA0](*object) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v14);
          }

          else
          {
            v14 = xpc_null_create();
          }

          v15 = xpc_null_create();
          v16 = *(v7 + 192);
          *(v7 + 192) = v14;
          xpc_release(v16);
          xpc_release(v15);
          xpc_release(*object);
          v17 = *(v7 + 104);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            xpc::object::to_string(object, (v7 + 192));
            v18 = v20 >= 0 ? object : *object;
            *buf = 136315138;
            v22 = v18;
            _os_log_impl(&dword_297476000, v17, OS_LOG_TYPE_DEFAULT, "#I Baseband field test config:\n%s", buf, 0xCu);
            if (v20 < 0)
            {
              operator delete(*object);
            }
          }
        }
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitBatteryInfo)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<RadioModule *,std::shared_ptr<RadioModule> ctu::SharedSynchronizable<RadioModule>::make_shared_ptr<RadioModule>(RadioModule*)::{lambda(RadioModule *)#1},std::allocator<RadioModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RadioModule *,std::shared_ptr<RadioModule> ctu::SharedSynchronizable<RadioModule>::make_shared_ptr<RadioModule>(RadioModule*)::{lambda(RadioModule *)#1},std::allocator<RadioModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<RadioModule> ctu::SharedSynchronizable<RadioModule>::make_shared_ptr<RadioModule>(RadioModule*)::{lambda(RadioModule*)#1}::operator() const(RadioModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<RadioModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E487E0;
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

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11RadioModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11RadioModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  RadioModule::registerCommandHandlers_sync(**a1);
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

void sub_297576FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  RadioModule::registerEventHandlers_sync(**a1);
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

void sub_2975770E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF770];
    v5 = strlen(*MEMORY[0x29EDBF770]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb_ENK3__2clEv_block_invoke;
  v61 = &__block_descriptor_tmp_224;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 176))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}

void sub_2975778F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb_ENK3__2clEv_block_invoke(void *a1, void *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v24 = v7;
  if (!v7)
  {
    return;
  }

  if (!a1[4])
  {
LABEL_28:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v19);
    }

    return;
  }

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

  if (MEMORY[0x29C272BA0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = MEMORY[0x29C272BA0](*a2);
  v12 = MEMORY[0x29EDCAA40];
  if (v11 == MEMORY[0x29EDCAA40])
  {
    v16 = *a3;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v16 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF8C8], v16);
    v17 = xpc_null_create();
    xpc_release(v16);
    xpc_release(v17);
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    xpc::dyn_cast_or_default();
    if (v21 >= 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20;
    }

    v14 = xpc_string_create(v13);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE870], v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  if (MEMORY[0x29C272BA0](*a2) == v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = -534716416;
  }

  LODWORD(__p[0]) = v18;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, __p, &xdict);
  xpc_release(xdict);
  v7 = v24;
  if (v24)
  {
    goto LABEL_28;
  }
}

void sub_297577CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrI11RadioModuleEE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrI11RadioModuleEE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(uint64_t a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEA00];
    v5 = strlen(*MEMORY[0x29EDBEA00]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb0_ENK3__3clEv_block_invoke;
  v61 = &__block_descriptor_tmp_227;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 216))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}

void sub_297578610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb0_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb0_ENK3__3clEv_block_invoke(void *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v24 = v7;
    if (v7)
    {
      if (!a1[4])
      {
        goto LABEL_24;
      }

      v8 = xpc_null_create();
      object = v8;
      v9 = MEMORY[0x29C272BA0](*a2);
      v10 = MEMORY[0x29EDCAA40];
      if (v9 == MEMORY[0x29EDCAA40])
      {
        v13 = *a3;
        if (v13 && MEMORY[0x29C272BA0](v13) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v13);
        }

        else
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        object = v13;
        xpc_release(v8);
        xpc_release(v14);
      }

      else
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        if (v11 || (v11 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v11) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v11);
            v12 = v11;
          }

          else
          {
            v12 = xpc_null_create();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v11 = 0;
        }

        xpc_release(v11);
        v15 = xpc_null_create();
        v16 = object;
        object = v12;
        xpc_release(v16);
        xpc_release(v15);
        v17 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
        }

        else
        {
          v17 = xpc_null_create();
        }

        xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE870], v17);
        v18 = xpc_null_create();
        xpc_release(v17);
        xpc_release(v18);
      }

      v19 = MEMORY[0x29C272BA0](*a2) == v10 ? 0 : -534716416;
      v21 = v19;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v21, &object);
      xpc_release(object);
      v7 = v24;
      if (v24)
      {
LABEL_24:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }
  }
}

void sub_297578A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEF30];
    v5 = strlen(*MEMORY[0x29EDBEF30]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb1_ENK3__4clEv_block_invoke;
  v61 = &__block_descriptor_tmp_230;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 224))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}

void sub_29757922C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb1_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb1_ENK3__4clEv_block_invoke(void *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v24 = v7;
    if (v7)
    {
      if (!a1[4])
      {
        goto LABEL_24;
      }

      v8 = xpc_null_create();
      object = v8;
      v9 = MEMORY[0x29C272BA0](*a2);
      v10 = MEMORY[0x29EDCAA40];
      if (v9 == MEMORY[0x29EDCAA40])
      {
        v13 = *a3;
        if (v13 && MEMORY[0x29C272BA0](v13) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v13);
        }

        else
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        object = v13;
        xpc_release(v8);
        xpc_release(v14);
      }

      else
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        if (v11 || (v11 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v11) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v11);
            v12 = v11;
          }

          else
          {
            v12 = xpc_null_create();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v11 = 0;
        }

        xpc_release(v11);
        v15 = xpc_null_create();
        v16 = object;
        object = v12;
        xpc_release(v16);
        xpc_release(v15);
        v17 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
        }

        else
        {
          v17 = xpc_null_create();
        }

        xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE870], v17);
        v18 = xpc_null_create();
        xpc_release(v17);
        xpc_release(v18);
      }

      v19 = MEMORY[0x29C272BA0](*a2) == v10 ? 0 : -534716416;
      v21 = v19;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v21, &object);
      xpc_release(object);
      v7 = v24;
      if (v24)
      {
LABEL_24:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }
  }
}

void sub_297579624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF1E0];
    v5 = strlen(*MEMORY[0x29EDBF1E0]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb2_ENK3__5clEv_block_invoke;
  v61 = &__block_descriptor_tmp_233_0;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 232))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}

void sub_297579E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb2_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb2_ENK3__5clEv_block_invoke(void *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v24 = v7;
    if (v7)
    {
      if (!a1[4])
      {
        goto LABEL_24;
      }

      v8 = xpc_null_create();
      object = v8;
      v9 = MEMORY[0x29C272BA0](*a2);
      v10 = MEMORY[0x29EDCAA40];
      if (v9 == MEMORY[0x29EDCAA40])
      {
        v13 = *a3;
        if (v13 && MEMORY[0x29C272BA0](v13) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v13);
        }

        else
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        object = v13;
        xpc_release(v8);
        xpc_release(v14);
      }

      else
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        if (v11 || (v11 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v11) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v11);
            v12 = v11;
          }

          else
          {
            v12 = xpc_null_create();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v11 = 0;
        }

        xpc_release(v11);
        v15 = xpc_null_create();
        v16 = object;
        object = v12;
        xpc_release(v16);
        xpc_release(v15);
        v17 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
        }

        else
        {
          v17 = xpc_null_create();
        }

        xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE870], v17);
        v18 = xpc_null_create();
        xpc_release(v17);
        xpc_release(v18);
      }

      v19 = MEMORY[0x29C272BA0](*a2) == v10 ? 0 : -534716416;
      v21 = v19;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v21, &object);
      xpc_release(object);
      v7 = v24;
      if (v24)
      {
LABEL_24:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }
  }
}

void sub_29757A240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb3_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF3D8];
    v5 = strlen(*MEMORY[0x29EDBF3D8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb3_ENK3__6clEv_block_invoke;
  v61 = &__block_descriptor_tmp_236_1;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 240))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}

void sub_29757AA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb3_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb3_ENK3__6clEv_block_invoke(void *a1, void *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v18 = v7;
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = xpc_null_create();
        object = v9;
        v10 = MEMORY[0x29C272BA0](*a2);
        v11 = MEMORY[0x29EDCAA40];
        if (v10 == MEMORY[0x29EDCAA40])
        {
          v12 = *a3;
          if (v12 && MEMORY[0x29C272BA0](v12) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v12);
          }

          else
          {
            v12 = xpc_null_create();
          }

          v13 = xpc_null_create();
          object = v12;
          xpc_release(v9);
          xpc_release(v13);
        }

        if (MEMORY[0x29C272BA0](*a2) == v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = -534716416;
        }

        v15 = v14;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v15, &object);
        xpc_release(object);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void sub_29757AD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb4_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEC70];
    v5 = strlen(*MEMORY[0x29EDBEC70]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb4_ENK3__7clEv_block_invoke;
  v61 = &__block_descriptor_tmp_239;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 248))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}

void sub_29757B564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb4_E3__7NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb4_ENK3__7clEv_block_invoke(void *a1, void *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v18 = v7;
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = xpc_null_create();
        object = v9;
        v10 = MEMORY[0x29C272BA0](*a2);
        v11 = MEMORY[0x29EDCAA40];
        if (v10 == MEMORY[0x29EDCAA40])
        {
          v12 = *a3;
          if (v12 && MEMORY[0x29C272BA0](v12) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v12);
          }

          else
          {
            v12 = xpc_null_create();
          }

          v13 = xpc_null_create();
          object = v12;
          xpc_release(v9);
          xpc_release(v13);
        }

        if (MEMORY[0x29C272BA0](*a2) == v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = -534716416;
        }

        v15 = v14;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v15, &object);
        xpc_release(object);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void sub_29757B844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb5_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF700];
    v5 = strlen(*MEMORY[0x29EDBF700]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb5_ENK3__8clEv_block_invoke;
  v61 = &__block_descriptor_tmp_242;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 184))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}

void sub_29757C064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb5_E3__8NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb5_ENK3__8clEv_block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[5];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v20 = v7;
  if (!v7)
  {
    return;
  }

  if (!a1[4])
  {
LABEL_21:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v16);
    }

    return;
  }

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

  if (MEMORY[0x29C272BA0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = MEMORY[0x29C272BA0](*a3);
  v12 = MEMORY[0x29EDCAA40];
  if (v11 != MEMORY[0x29EDCAA40])
  {
    v13 = *a3;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF8C8], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
  }

  if (MEMORY[0x29C272BA0](*a2) == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = -534716416;
  }

  v17 = v15;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v17, &xdict);
  xpc_release(xdict);
  v7 = v20;
  if (v20)
  {
    goto LABEL_21;
  }
}

void sub_29757C3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb6_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v78 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v67 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBF690];
    v5 = strlen(*MEMORY[0x29EDBF690]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v5 | 7) + 1;
      }

      p_dst = operator new(v17);
      *(&__dst + 1) = v6;
      v77 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v77) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v18 = operator new(0x28uLL);
        v19 = v18;
        strcpy(v18, " rejected; ABM is shutting down ");
        v20 = SHIBYTE(v77);
        if ((SHIBYTE(v77) & 0x8000000000000000) != 0)
        {
          v20 = *(&__dst + 1);
          v23 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v23 - *(&__dst + 1) < 0x20)
          {
            v21 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v77 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v23)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v22 = __dst;
            if (v23 > 0x3FFFFFFFFFFFFFF2)
            {
              v26 = 0;
LABEL_46:
              v27 = operator new(v3);
              v28 = v27;
              if (v20)
              {
                memmove(v27, v22, v20);
              }

              v29 = &v28[v20];
              v30 = v19[1];
              *v29 = *v19;
              *(v29 + 1) = v30;
              if (!v26)
              {
                operator delete(v22);
              }

              *(&__dst + 1) = v21;
              v77 = v3 | 0x8000000000000000;
              *&__dst = v28;
              v31 = &v28[v21];
LABEL_85:
              *v31 = 0;
              *object = __dst;
              object[2] = v77;
              v77 = 0;
              __dst = 0uLL;
              operator delete(v19);
              if (SHIBYTE(v77) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_87:
                  v49 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v49 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v49;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_weak_owners = v1->__shared_weak_owners_;
                  p_shared_weak_owners = &v1->__shared_weak_owners_;
                  if (!shared_weak_owners)
                  {
LABEL_110:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v45 = v67;
                      if (!v67)
                      {
                        goto LABEL_117;
                      }

                      goto LABEL_112;
                    }

                    goto LABEL_111;
                  }

LABEL_93:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v53 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v53 = object[1];
                  }

                  if (v53)
                  {
                    v54 = xpc_dictionary_create(0, 0, 0);
                    if (v54 || (v54 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v54) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v54);
                        v55 = v54;
                      }

                      else
                      {
                        v55 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v55 = xpc_null_create();
                      v54 = 0;
                    }

                    xpc_release(v54);
                    v56 = xpc_null_create();
                    v57 = __dst;
                    *&__dst = v55;
                    xpc_release(v57);
                    xpc_release(v56);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v58 = object;
                    }

                    else
                    {
                      v58 = object[0];
                    }

                    v59 = xpc_string_create(v58);
                    if (!v59)
                    {
                      v59 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v55, *MEMORY[0x29EDBE648], v59);
                    v60 = xpc_null_create();
                    xpc_release(v59);
                    xpc_release(v60);
                  }

                  LODWORD(aBlock) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_weak_owners, &aBlock, &__dst);
                  xpc_release(__dst);
                  goto LABEL_110;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_87;
                }
              }

              v52 = v1->__shared_weak_owners_;
              p_shared_weak_owners = &v1->__shared_weak_owners_;
              if (!v52)
              {
                goto LABEL_110;
              }

              goto LABEL_93;
            }

LABEL_37:
            v24 = 2 * v23;
            if (v21 > 2 * v23)
            {
              v24 = v21;
            }

            if ((v24 | 7) == 0x17)
            {
              v25 = 25;
            }

            else
            {
              v25 = (v24 | 7) + 1;
            }

            if (v24 >= 0x17)
            {
              v3 = v25;
            }

            else
            {
              v3 = 23;
            }

            v26 = v23 == 22;
            goto LABEL_46;
          }

          v32 = __dst;
          v46 = (__dst + *(&__dst + 1));
          v47 = v18[1];
          *v46 = *v18;
          v46[1] = v47;
          v33 = v20 + 32;
          *(&__dst + 1) = v20 + 32;
        }

        else
        {
          if (SHIBYTE(v77) < 0x17)
          {
            v21 = SHIBYTE(v77) | 0x20;
            v22 = &__dst;
            v23 = 22;
            goto LABEL_37;
          }

          v32 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v77), " rejected; ABM is shutting down ", 32);
          v33 = v20 + 32;
          HIBYTE(v77) = (v20 + 32) & 0x7F;
        }

        v31 = v32 + v33;
        goto LABEL_85;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v73[0] = v9;
  v73[1] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&aBlock, v9);
  __dst = 0uLL;
  if (v75)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v75);
    if (*(&__dst + 1))
    {
      *&__dst = aBlock;
    }

    if (v75)
    {
      std::__shared_weak_count::__release_weak(v75);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = __dst;
    if (__dst)
    {
LABEL_24:
      shared_owners = v1->__shared_owners_;
      v71 = shared_owners;
      if (shared_owners)
      {
        xpc_retain(shared_owners);
      }

      else
      {
        v71 = xpc_null_create();
      }

      xpc::bridge(&cf, &v71, v16);
      v38 = cf;
      if (cf && (v39 = CFGetTypeID(cf), v39 == CFDictionaryGetTypeID()))
      {
        v73[0] = v38;
        CFRetain(v38);
      }

      else
      {
        v73[0] = 0;
      }

      object[0] = MEMORY[0x29EDCA5F8];
      object[1] = 1174405120;
      object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb6_ENK3__9clEv_block_invoke;
      object[3] = &__block_descriptor_tmp_245;
      object[4] = v2;
      object[5] = v1[1].__vftable;
      v40 = v1[1].__shared_owners_;
      v69 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = v1->__shared_weak_owners_;
      if (v41)
      {
        v41 = _Block_copy(v41);
      }

      v70 = v41;
      v42 = _Block_copy(object);
      v43 = v2[2].~__shared_weak_count_0;
      if (v43)
      {
        dispatch_retain(v43);
      }

      aBlock = v42;
      v75 = v43;
      (*(*v14 + 200))(v14, v73, &aBlock);
      if (v75)
      {
        dispatch_release(v75);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v73[0])
      {
        CFRelease(v73[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v71);
      if (v70)
      {
        _Block_release(v70);
      }

      if (v69)
      {
        std::__shared_weak_count::__release_weak(v69);
      }

      goto LABEL_79;
    }
  }

  v34 = v2[2].__get_deleter;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_297476000, v34, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
  }

  v35 = xpc_null_create();
  v36 = v1->__shared_weak_owners_;
  object[0] = v35;
  v37 = xpc_null_create();
  (v36[2])(v36, 3760250880, object);
  xpc_release(object[0]);
  xpc_release(v37);
LABEL_79:
  v44 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
    v45 = v67;
    if (!v67)
    {
      goto LABEL_117;
    }

    goto LABEL_112;
  }

LABEL_111:
  v45 = v67;
  if (!v67)
  {
    goto LABEL_117;
  }

LABEL_112:
  v61 = v45[1].__shared_owners_;
  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  v62 = v45->__shared_weak_owners_;
  if (v62)
  {
    _Block_release(v62);
  }

  xpc_release(v45->__shared_owners_);
  operator delete(v45);
LABEL_117:
  v63 = a1;
  if (a1)
  {
    v64 = a1[2];
    if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v64->__on_zero_shared)(v64);
      std::__shared_weak_count::__release_weak(v64);
      v63 = a1;
    }

    operator delete(v63);
  }

  v65 = *MEMORY[0x29EDCA608];
}

void sub_29757CCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb6_E3__9NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb6_ENK3__9clEv_block_invoke(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
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
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29757D05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb7_E4__10EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v90 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v79 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBF690];
    v5 = strlen(*MEMORY[0x29EDBF690]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v5 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v6;
      v89 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v89) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v17 = operator new(0x28uLL);
        v18 = v17;
        strcpy(v17, " rejected; ABM is shutting down ");
        v19 = SHIBYTE(v89);
        if ((SHIBYTE(v89) & 0x8000000000000000) != 0)
        {
          v19 = *(&__dst + 1);
          v22 = (v89 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v22 - *(&__dst + 1) < 0x20)
          {
            v20 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v89 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v22)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v21 = __dst;
            if (v22 > 0x3FFFFFFFFFFFFFF2)
            {
              v25 = 0;
LABEL_46:
              v26 = operator new(v3);
              v27 = v26;
              if (v19)
              {
                memmove(v26, v21, v19);
              }

              v28 = &v27[v19];
              v29 = v18[1];
              *v28 = *v18;
              *(v28 + 1) = v29;
              if (!v25)
              {
                operator delete(v21);
              }

              *(&__dst + 1) = v20;
              v89 = v3 | 0x8000000000000000;
              *&__dst = v27;
              v30 = &v27[v20];
LABEL_94:
              *v30 = 0;
              *object = __dst;
              object[2] = v89;
              v89 = 0;
              __dst = 0uLL;
              operator delete(v18);
              if (SHIBYTE(v89) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_96:
                  v54 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v54 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v54;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_weak_owners = v1->__shared_weak_owners_;
                  p_shared_weak_owners = &v1->__shared_weak_owners_;
                  if (!shared_weak_owners)
                  {
LABEL_127:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v67 = v79;
                      if (!v79)
                      {
                        goto LABEL_134;
                      }

                      goto LABEL_129;
                    }

                    goto LABEL_128;
                  }

LABEL_102:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v58 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v58 = object[1];
                  }

                  if (v58)
                  {
                    v59 = xpc_dictionary_create(0, 0, 0);
                    if (v59 || (v59 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v59) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v59);
                        v60 = v59;
                      }

                      else
                      {
                        v60 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v60 = xpc_null_create();
                      v59 = 0;
                    }

                    xpc_release(v59);
                    v68 = xpc_null_create();
                    v69 = __dst;
                    *&__dst = v60;
                    xpc_release(v69);
                    xpc_release(v68);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v70 = object;
                    }

                    else
                    {
                      v70 = object[0];
                    }

                    v71 = xpc_string_create(v70);
                    if (!v71)
                    {
                      v71 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v60, *MEMORY[0x29EDBE648], v71);
                    v72 = xpc_null_create();
                    xpc_release(v71);
                    xpc_release(v72);
                  }

                  LODWORD(v86) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_weak_owners, &v86, &__dst);
                  xpc_release(__dst);
                  goto LABEL_127;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_96;
                }
              }

              v57 = v1->__shared_weak_owners_;
              p_shared_weak_owners = &v1->__shared_weak_owners_;
              if (!v57)
              {
                goto LABEL_127;
              }

              goto LABEL_102;
            }

LABEL_37:
            v23 = 2 * v22;
            if (v20 > 2 * v22)
            {
              v23 = v20;
            }

            if ((v23 | 7) == 0x17)
            {
              v24 = 25;
            }

            else
            {
              v24 = (v23 | 7) + 1;
            }

            if (v23 >= 0x17)
            {
              v3 = v24;
            }

            else
            {
              v3 = 23;
            }

            v25 = v22 == 22;
            goto LABEL_46;
          }

          v31 = __dst;
          v51 = (__dst + *(&__dst + 1));
          v52 = v17[1];
          *v51 = *v17;
          v51[1] = v52;
          v32 = v19 + 32;
          *(&__dst + 1) = v19 + 32;
        }

        else
        {
          if (SHIBYTE(v89) < 0x17)
          {
            v20 = SHIBYTE(v89) | 0x20;
            v21 = &__dst;
            v22 = 22;
            goto LABEL_37;
          }

          v31 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v89), " rejected; ABM is shutting down ", 32);
          v32 = v19 + 32;
          HIBYTE(v89) = (v19 + 32) & 0x7F;
        }

        v30 = v31 + v32;
        goto LABEL_94;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  v86 = 0xAAAAAAAAAAAAAAAALL;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v85[0] = v9;
  v85[1] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&__dst, v9);
  v86 = 0;
  v87 = 0;
  if (*(&__dst + 1))
  {
    v87 = std::__shared_weak_count::lock(*(&__dst + 1));
    if (v87)
    {
      v86 = __dst;
    }

    if (*(&__dst + 1))
    {
      std::__shared_weak_count::__release_weak(*(&__dst + 1));
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v86;
    if (v86)
    {
      goto LABEL_24;
    }

LABEL_53:
    v33 = v2[2].__get_deleter;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_297476000, v33, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
    }

    v34 = xpc_null_create();
    v35 = v1->__shared_weak_owners_;
    object[0] = v34;
    v36 = xpc_null_create();
    (v35[2])(v35, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v36);
    goto LABEL_114;
  }

  v14 = v86;
  if (!v86)
  {
    goto LABEL_53;
  }

LABEL_24:
  value = xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF170]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v37 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v38 = v2[2].__get_deleter;
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (v37 == 1)
  {
    if (v39)
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&dword_297476000, v38, OS_LOG_TYPE_DEFAULT, "#I RF Self Test in FTM requested", object, 2u);
    }

    goto LABEL_67;
  }

  if (v39)
  {
    LOWORD(object[0]) = 0;
    _os_log_impl(&dword_297476000, v38, OS_LOG_TYPE_DEFAULT, "#I RF Self Test in AST2 mode requested", object, 2u);
  }

  v40 = *MEMORY[0x29EDC8D28];
  memset(object, 0, 24);
  ctu::cf::assign();
  v89 = object[2];
  __dst = *object;
  if (SHIBYTE(object[2]) >= 0)
  {
    v41 = &__dst;
  }

  else
  {
    v41 = __dst;
  }

  v42 = xpc_dictionary_get_value(v1->__shared_owners_, v41);
  if (SHIBYTE(v89) < 0)
  {
    v61 = v42;
    operator delete(__dst);
    if (v61)
    {
      goto LABEL_67;
    }
  }

  else if (v42)
  {
LABEL_67:
    shared_owners = v1->__shared_owners_;
    v83 = shared_owners;
    if (shared_owners)
    {
      xpc_retain(shared_owners);
    }

    else
    {
      v83 = xpc_null_create();
    }

    xpc::bridge(&cf, &v83, v44);
    v45 = cf;
    if (cf && (v46 = CFGetTypeID(cf), v46 == CFDictionaryGetTypeID()))
    {
      v85[0] = v45;
      CFRetain(v45);
    }

    else
    {
      v85[0] = 0;
    }

    object[0] = MEMORY[0x29EDCA5F8];
    object[1] = 1174405120;
    object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb7_ENK4__10clEv_block_invoke;
    object[3] = &__block_descriptor_tmp_248;
    object[4] = v2;
    object[5] = v1[1].__vftable;
    v47 = v1[1].__shared_owners_;
    v81 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = v1->__shared_weak_owners_;
    if (v48)
    {
      v48 = _Block_copy(v48);
    }

    aBlock = v48;
    v49 = _Block_copy(object);
    v50 = v2[2].~__shared_weak_count_0;
    if (v50)
    {
      dispatch_retain(v50);
    }

    *&__dst = v49;
    *(&__dst + 1) = v50;
    (*(*v14 + 208))(v14, v85, &__dst);
    if (*(&__dst + 1))
    {
      dispatch_release(*(&__dst + 1));
    }

    if (__dst)
    {
      _Block_release(__dst);
    }

    if (v85[0])
    {
      CFRelease(v85[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    xpc_release(v83);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v81)
    {
      std::__shared_weak_count::__release_weak(v81);
    }

    goto LABEL_114;
  }

  v62 = v2[2].__get_deleter;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_297476000, v62, OS_LOG_TYPE_ERROR, "Ticket was not provided", object, 2u);
  }

  v63 = xpc_null_create();
  v64 = v1->__shared_weak_owners_;
  object[0] = v63;
  v65 = xpc_null_create();
  (v64[2])(v64, 3760250882, object);
  xpc_release(object[0]);
  xpc_release(v65);
LABEL_114:
  v66 = v87;
  if (v87 && !atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v66->__on_zero_shared)(v66);
    std::__shared_weak_count::__release_weak(v66);
    v67 = v79;
    if (!v79)
    {
      goto LABEL_134;
    }

    goto LABEL_129;
  }

LABEL_128:
  v67 = v79;
  if (!v79)
  {
    goto LABEL_134;
  }

LABEL_129:
  v73 = v67[1].__shared_owners_;
  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  v74 = v67->__shared_weak_owners_;
  if (v74)
  {
    _Block_release(v74);
  }

  xpc_release(v67->__shared_owners_);
  operator delete(v67);
LABEL_134:
  v75 = a1;
  if (a1)
  {
    v76 = a1[2];
    if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v76->__on_zero_shared)(v76);
      std::__shared_weak_count::__release_weak(v76);
      v75 = a1;
    }

    operator delete(v75);
  }

  v77 = *MEMORY[0x29EDCA608];
}

void sub_29757DB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb7_E4__10NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb7_ENK4__10clEv_block_invoke(void *a1, uint64_t *a2, ctu **a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    v17 = v8;
    if (v8)
    {
      v10 = v8;
      if (a1[5])
      {
        v11 = *a2;
        if (*a2)
        {
          v12 = -534716416;
          v13 = *(v7 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v12 = -534716416;
            }

            else
            {
              v12 = 0;
            }
          }
        }

        else
        {
          v12 = 0;
        }

        v15 = v12;
        ctu::cf_to_xpc(buf, *a3, v9);
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>(a1 + 7, &v15, buf);
        xpc_release(*buf);
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29757DF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb8_E4__11EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v86 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v75 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBF760];
    v5 = strlen(*MEMORY[0x29EDBF760]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v5 | 7) + 1;
      }

      p_dst = operator new(v20);
      *(&__dst + 1) = v6;
      v85 = v20 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v85) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_36:
        *(p_dst + v6) = 0;
        v21 = operator new(0x28uLL);
        v22 = v21;
        strcpy(v21, " rejected; ABM is shutting down ");
        v23 = SHIBYTE(v85);
        if ((SHIBYTE(v85) & 0x8000000000000000) != 0)
        {
          v23 = *(&__dst + 1);
          v26 = (v85 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v26 - *(&__dst + 1) < 0x20)
          {
            v24 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v85 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v26)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v25 = __dst;
            if (v26 > 0x3FFFFFFFFFFFFFF2)
            {
              v29 = 0;
LABEL_51:
              v30 = operator new(v3);
              v31 = v30;
              if (v23)
              {
                memmove(v30, v25, v23);
              }

              v32 = &v31[v23];
              v33 = v22[1];
              *v32 = *v22;
              *(v32 + 1) = v33;
              if (!v29)
              {
                operator delete(v25);
              }

              *(&__dst + 1) = v24;
              v85 = v3 | 0x8000000000000000;
              *&__dst = v31;
              v34 = &v31[v24];
LABEL_67:
              *v34 = 0;
              *object = __dst;
              object[2] = v85;
              v85 = 0;
              __dst = 0uLL;
              operator delete(v22);
              if (SHIBYTE(v85) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_69:
                  v49 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v49 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v49;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_weak_owners = v1->__shared_weak_owners_;
                  p_shared_weak_owners = &v1->__shared_weak_owners_;
                  if (!shared_weak_owners)
                  {
LABEL_119:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v63 = v75;
                      if (!v75)
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_121;
                    }

                    goto LABEL_120;
                  }

LABEL_75:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v53 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v53 = object[1];
                  }

                  if (v53)
                  {
                    v54 = xpc_dictionary_create(0, 0, 0);
                    if (v54 || (v54 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v54) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v54);
                        v55 = v54;
                      }

                      else
                      {
                        v55 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v55 = xpc_null_create();
                      v54 = 0;
                    }

                    xpc_release(v54);
                    v64 = xpc_null_create();
                    v65 = __dst;
                    *&__dst = v55;
                    xpc_release(v65);
                    xpc_release(v64);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v66 = object;
                    }

                    else
                    {
                      v66 = object[0];
                    }

                    v67 = xpc_string_create(v66);
                    if (!v67)
                    {
                      v67 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v55, *MEMORY[0x29EDBE648], v67);
                    v68 = xpc_null_create();
                    xpc_release(v67);
                    xpc_release(v68);
                  }

                  LODWORD(v82) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_weak_owners, &v82, &__dst);
                  xpc_release(__dst);
                  goto LABEL_119;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_69;
                }
              }

              v52 = v1->__shared_weak_owners_;
              p_shared_weak_owners = &v1->__shared_weak_owners_;
              if (!v52)
              {
                goto LABEL_119;
              }

              goto LABEL_75;
            }

LABEL_42:
            v27 = 2 * v26;
            if (v24 > 2 * v26)
            {
              v27 = v24;
            }

            if ((v27 | 7) == 0x17)
            {
              v28 = 25;
            }

            else
            {
              v28 = (v27 | 7) + 1;
            }

            if (v27 >= 0x17)
            {
              v3 = v28;
            }

            else
            {
              v3 = 23;
            }

            v29 = v26 == 22;
            goto LABEL_51;
          }

          v35 = __dst;
          v46 = (__dst + *(&__dst + 1));
          v47 = v21[1];
          *v46 = *v21;
          v46[1] = v47;
          v36 = v23 + 32;
          *(&__dst + 1) = v23 + 32;
        }

        else
        {
          if (SHIBYTE(v85) < 0x17)
          {
            v24 = SHIBYTE(v85) | 0x20;
            v25 = &__dst;
            v26 = 22;
            goto LABEL_42;
          }

          v35 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v85), " rejected; ABM is shutting down ", 32);
          v36 = v23 + 32;
          HIBYTE(v85) = (v23 + 32) & 0x7F;
        }

        v34 = v35 + v36;
        goto LABEL_67;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_36;
  }

  v82 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v81[0] = v9;
  v81[1] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&__dst, v9);
  v82 = 0;
  v83 = 0;
  if (*(&__dst + 1))
  {
    v83 = std::__shared_weak_count::lock(*(&__dst + 1));
    if (v83)
    {
      v82 = __dst;
    }

    if (*(&__dst + 1))
    {
      std::__shared_weak_count::__release_weak(*(&__dst + 1));
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v82;
    if (v82)
    {
      goto LABEL_24;
    }

LABEL_58:
    v37 = v2[2].__get_deleter;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_297476000, v37, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
    }

    v38 = xpc_null_create();
    v39 = v1->__shared_weak_owners_;
    object[0] = v38;
    v40 = xpc_null_create();
    (v39[2])(v39, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v40);
    goto LABEL_105;
  }

  v14 = v82;
  if (!v82)
  {
    goto LABEL_58;
  }

LABEL_24:
  v15 = *MEMORY[0x29EDC8D28];
  memset(object, 0, 24);
  ctu::cf::assign();
  v85 = object[2];
  __dst = *object;
  if (SHIBYTE(object[2]) >= 0)
  {
    v16 = &__dst;
  }

  else
  {
    v16 = __dst;
  }

  value = xpc_dictionary_get_value(v1->__shared_owners_, v16);
  if (SHIBYTE(v85) < 0)
  {
    v41 = value;
    operator delete(__dst);
    if (v41)
    {
      goto LABEL_29;
    }
  }

  else if (value)
  {
LABEL_29:
    shared_owners = v1->__shared_owners_;
    v79 = shared_owners;
    if (shared_owners)
    {
      xpc_retain(shared_owners);
    }

    else
    {
      v79 = xpc_null_create();
    }

    xpc::bridge(&cf, &v79, v19);
    v56 = cf;
    if (cf && (v57 = CFGetTypeID(cf), v57 == CFDictionaryGetTypeID()))
    {
      v81[0] = v56;
      CFRetain(v56);
    }

    else
    {
      v81[0] = 0;
    }

    object[0] = MEMORY[0x29EDCA5F8];
    object[1] = 1174405120;
    object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb8_ENK4__11clEv_block_invoke;
    object[3] = &__block_descriptor_tmp_251;
    object[4] = v2;
    object[5] = v1[1].__vftable;
    v58 = v1[1].__shared_owners_;
    v77 = v58;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v59 = v1->__shared_weak_owners_;
    if (v59)
    {
      v59 = _Block_copy(v59);
    }

    aBlock = v59;
    v60 = _Block_copy(object);
    v61 = v2[2].~__shared_weak_count_0;
    if (v61)
    {
      dispatch_retain(v61);
    }

    *&__dst = v60;
    *(&__dst + 1) = v61;
    (*(*v14 + 192))(v14, v81, &__dst);
    if (*(&__dst + 1))
    {
      dispatch_release(*(&__dst + 1));
    }

    if (__dst)
    {
      _Block_release(__dst);
    }

    if (v81[0])
    {
      CFRelease(v81[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    xpc_release(v79);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v77)
    {
      std::__shared_weak_count::__release_weak(v77);
    }

    goto LABEL_105;
  }

  v42 = v2[2].__get_deleter;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_297476000, v42, OS_LOG_TYPE_ERROR, "Ticket was not provided", object, 2u);
  }

  v43 = xpc_null_create();
  v44 = v1->__shared_weak_owners_;
  object[0] = v43;
  v45 = xpc_null_create();
  (v44[2])(v44, 3760250882, object);
  xpc_release(object[0]);
  xpc_release(v45);
LABEL_105:
  v62 = v83;
  if (v83 && !atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v62->__on_zero_shared)(v62);
    std::__shared_weak_count::__release_weak(v62);
    v63 = v75;
    if (!v75)
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

LABEL_120:
  v63 = v75;
  if (!v75)
  {
    goto LABEL_126;
  }

LABEL_121:
  v69 = v63[1].__shared_owners_;
  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  v70 = v63->__shared_weak_owners_;
  if (v70)
  {
    _Block_release(v70);
  }

  xpc_release(v63->__shared_owners_);
  operator delete(v63);
LABEL_126:
  v71 = a1;
  if (a1)
  {
    v72 = a1[2];
    if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v72->__on_zero_shared)(v72);
      std::__shared_weak_count::__release_weak(v72);
      v71 = a1;
    }

    operator delete(v71);
  }

  v73 = *MEMORY[0x29EDCA608];
}

void sub_29757E958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb8_E4__11NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb8_ENK4__11clEv_block_invoke(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
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
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29757ED28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb9_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v67 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBEEA8];
    v5 = strlen(*MEMORY[0x29EDBEEA8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v5 | 7) + 1;
      }

      p_dst = operator new(v18);
      *(&__dst + 1) = v6;
      v66 = v18 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v66) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_30:
        *(p_dst + v6) = 0;
        v19 = operator new(0x28uLL);
        v20 = v19;
        strcpy(v19, " rejected; ABM is shutting down ");
        v21 = SHIBYTE(v66);
        if ((SHIBYTE(v66) & 0x8000000000000000) != 0)
        {
          v21 = *(&__dst + 1);
          v24 = (v66 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v24 - *(&__dst + 1) < 0x20)
          {
            v22 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v66 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v24)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v23 = __dst;
            if (v24 > 0x3FFFFFFFFFFFFFF2)
            {
              v27 = 0;
LABEL_45:
              v28 = operator new(v3);
              v29 = v28;
              if (v21)
              {
                memmove(v28, v23, v21);
              }

              v30 = &v29[v21];
              v31 = v20[1];
              *v30 = *v20;
              *(v30 + 1) = v31;
              if (!v27)
              {
                operator delete(v23);
              }

              *(&__dst + 1) = v22;
              v66 = v3 | 0x8000000000000000;
              *&__dst = v29;
              v32 = &v29[v22];
LABEL_59:
              *v32 = 0;
              *object = __dst;
              object[2] = v66;
              v66 = 0;
              __dst = 0uLL;
              operator delete(v20);
              if (SHIBYTE(v66) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_61:
                  v43 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v43 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v43;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_84:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v39 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_86;
                    }

                    goto LABEL_85;
                  }

LABEL_67:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v47 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v47 = object[1];
                  }

                  if (v47)
                  {
                    v48 = xpc_dictionary_create(0, 0, 0);
                    if (v48 || (v48 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v48) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v48);
                        v49 = v48;
                      }

                      else
                      {
                        v49 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v49 = xpc_null_create();
                      v48 = 0;
                    }

                    xpc_release(v48);
                    v50 = xpc_null_create();
                    v51 = __dst;
                    *&__dst = v49;
                    xpc_release(v51);
                    xpc_release(v50);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v52 = object;
                    }

                    else
                    {
                      v52 = object[0];
                    }

                    v53 = xpc_string_create(v52);
                    if (!v53)
                    {
                      v53 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v49, *MEMORY[0x29EDBE648], v53);
                    v54 = xpc_null_create();
                    xpc_release(v53);
                    xpc_release(v54);
                  }

                  LODWORD(v62) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v62, &__dst);
                  xpc_release(__dst);
                  goto LABEL_84;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_61;
                }
              }

              v46 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v46)
              {
                goto LABEL_84;
              }

              goto LABEL_67;
            }

LABEL_36:
            v25 = 2 * v24;
            if (v22 > 2 * v24)
            {
              v25 = v22;
            }

            if ((v25 | 7) == 0x17)
            {
              v26 = 25;
            }

            else
            {
              v26 = (v25 | 7) + 1;
            }

            if (v25 >= 0x17)
            {
              v3 = v26;
            }

            else
            {
              v3 = 23;
            }

            v27 = v24 == 22;
            goto LABEL_45;
          }

          v33 = __dst;
          v40 = (__dst + *(&__dst + 1));
          v41 = v19[1];
          *v40 = *v19;
          v40[1] = v41;
          v34 = v21 + 32;
          *(&__dst + 1) = v21 + 32;
        }

        else
        {
          if (SHIBYTE(v66) < 0x17)
          {
            v22 = SHIBYTE(v66) | 0x20;
            v23 = &__dst;
            v24 = 22;
            goto LABEL_36;
          }

          v33 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v66), " rejected; ABM is shutting down ", 32);
          v34 = v21 + 32;
          HIBYTE(v66) = (v21 + 32) & 0x7F;
        }

        v32 = v33 + v34;
        goto LABEL_59;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_30;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v62, v9);
  __dst = 0uLL;
  if (v63)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v63);
    if (*(&__dst + 1))
    {
      *&__dst = v62;
    }

    if (v63)
    {
      std::__shared_weak_count::__release_weak(v63);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_52:
    v35 = xpc_null_create();
    v36 = v1->__shared_owners_;
    object[0] = v35;
    v37 = xpc_null_create();
    (v36[2])(v36, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v37);
    goto LABEL_53;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_52;
  }

LABEL_24:
  (*(*v14 + 264))(v14, 0);
  (*(*v14 + 264))(v14, 1);
  (*(*v14 + 272))(v14);
  v15 = xpc_null_create();
  v16 = v1->__shared_owners_;
  object[0] = v15;
  v17 = xpc_null_create();
  (v16[2])(v16, 0, object);
  xpc_release(object[0]);
  xpc_release(v17);
LABEL_53:
  v38 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
    v39 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

LABEL_85:
  v39 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_91;
  }

LABEL_86:
  v55 = v39[3];
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  v56 = v39[1];
  if (v56)
  {
    _Block_release(v56);
  }

  operator delete(v39);
LABEL_91:
  v57 = a1;
  if (a1)
  {
    v58 = a1[2];
    if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v58->__on_zero_shared)(v58);
      std::__shared_weak_count::__release_weak(v58);
      v57 = a1;
    }

    operator delete(v57);
  }

  v59 = *MEMORY[0x29EDCA608];
}

void sub_29757F58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, xpc_object_t __p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb9_E4__12NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb10_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v80 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v66 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEBC0];
    v5 = strlen(*MEMORY[0x29EDBEBC0]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v79 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v79) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_37:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v79);
        if ((SHIBYTE(v79) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v79 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v79 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_52:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v79 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_83:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v79;
              v79 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v79) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_85:
                  v48 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v48 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v48;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_108:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v44 = v66;
                      if (!v66)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_110;
                    }

                    goto LABEL_109;
                  }

LABEL_91:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v52 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v52 = *&aBlock[8];
                  }

                  if (v52)
                  {
                    v53 = xpc_dictionary_create(0, 0, 0);
                    if (v53 || (v53 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v53) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v53);
                        v54 = v53;
                      }

                      else
                      {
                        v54 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v54 = xpc_null_create();
                      v53 = 0;
                    }

                    xpc_release(v53);
                    v55 = xpc_null_create();
                    v56 = __dst;
                    *&__dst = v54;
                    xpc_release(v56);
                    xpc_release(v55);
                    if (aBlock[23] >= 0)
                    {
                      v57 = aBlock;
                    }

                    else
                    {
                      v57 = *aBlock;
                    }

                    v58 = xpc_string_create(v57);
                    if (!v58)
                    {
                      v58 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v54, *MEMORY[0x29EDBE648], v58);
                    v59 = xpc_null_create();
                    xpc_release(v58);
                    xpc_release(v59);
                  }

                  LODWORD(v76) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v76, &__dst);
                  xpc_release(__dst);
                  goto LABEL_108;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_85;
                }
              }

              v51 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v51)
              {
                goto LABEL_108;
              }

              goto LABEL_91;
            }

LABEL_43:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_52;
          }

          v36 = __dst;
          v45 = (__dst + *(&__dst + 1));
          v46 = v22[1];
          *v45 = *v22;
          v45[1] = v46;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v79) < 0x17)
          {
            v25 = SHIBYTE(v79) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_43;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v79), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v79) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_83;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_37;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v75[0] = v9;
  v75[1] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v76, v9);
  __dst = 0uLL;
  if (v77)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v77);
    if (*(&__dst + 1))
    {
      *&__dst = v76;
    }

    if (v77)
    {
      std::__shared_weak_count::__release_weak(v77);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_59:
    v38 = xpc_null_create();
    v39 = v1->__shared_owners_;
    *aBlock = v38;
    v40 = xpc_null_create();
    (v39[2])(v39, 3760250880, aBlock);
    xpc_release(*aBlock);
    xpc_release(v40);
    goto LABEL_77;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_59;
  }

LABEL_24:
  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb10_ENK4__13clEv_block_invoke;
  v70 = &__block_descriptor_tmp_254;
  v71 = v2;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v73 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v74 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v76 = v17;
  v77 = v18;
  v19 = v1[1].__shared_owners_;
  object = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(&cf, &object, v20);
  v41 = cf;
  if (cf && (v42 = CFGetTypeID(cf), v42 == CFDictionaryGetTypeID()))
  {
    v75[0] = v41;
    CFRetain(v41);
  }

  else
  {
    v75[0] = 0;
  }

  (*(*v14 + 296))(v14, &v76, v75);
  if (v75[0])
  {
    CFRelease(v75[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (v77)
  {
    dispatch_release(v77);
  }

  if (v76)
  {
    _Block_release(v76);
  }

  if (v74)
  {
    _Block_release(v74);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

LABEL_77:
  v43 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
    v44 = v66;
    if (!v66)
    {
      goto LABEL_115;
    }

    goto LABEL_110;
  }

LABEL_109:
  v44 = v66;
  if (!v66)
  {
    goto LABEL_115;
  }

LABEL_110:
  xpc_release(v44[1].__shared_owners_);
  v44[1].__shared_owners_ = 0;
  v60 = v44[1].__vftable;
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v44->__shared_owners_;
  if (v61)
  {
    _Block_release(v61);
  }

  operator delete(v44);
LABEL_115:
  v62 = a1;
  if (a1)
  {
    v63 = a1[2];
    if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
      v62 = a1;
    }

    operator delete(v62);
  }

  v64 = *MEMORY[0x29EDCA608];
}

void sub_29757FFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, char a12, xpc_object_t object, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *aBlock, char a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb10_E4__13NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb10_ENK4__13clEv_block_invoke(void *a1, uint64_t *a2, ctu **a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    v19 = v8;
    if (v8)
    {
      v10 = v8;
      if (a1[5])
      {
        v11 = *a2;
        if (*a2)
        {
          v12 = *(v7 + 104);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *object = 138412290;
            *&object[4] = v11;
            _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "%@", object, 0xCu);
          }
        }

        else
        {
          v15 = *a3;
          if (*a3)
          {
            v16 = *(v7 + 104);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *object = 138412290;
              *&object[4] = v15;
              _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Get Antenna Port Info: %@", object, 0xCu);
            }
          }
        }

        if (*a2)
        {
          v13 = -534716416;
        }

        else
        {
          v13 = 0;
        }

        v17 = v13;
        ctu::cf_to_xpc(object, *a3, v9);
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>(a1 + 7, &v17, object);
        xpc_release(*object);
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2975803AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb11_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v77 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v66 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBEBD8];
    v5 = strlen(*MEMORY[0x29EDBEBD8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v5 | 7) + 1;
      }

      p_dst = operator new(v17);
      *(&__dst + 1) = v6;
      v76 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v76) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v18 = operator new(0x28uLL);
        v19 = v18;
        strcpy(v18, " rejected; ABM is shutting down ");
        v20 = SHIBYTE(v76);
        if ((SHIBYTE(v76) & 0x8000000000000000) != 0)
        {
          v20 = *(&__dst + 1);
          v23 = (v76 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v23 - *(&__dst + 1) < 0x20)
          {
            v21 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v76 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v23)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v22 = __dst;
            if (v23 > 0x3FFFFFFFFFFFFFF2)
            {
              v26 = 0;
LABEL_46:
              v27 = operator new(v3);
              v28 = v27;
              if (v20)
              {
                memmove(v27, v22, v20);
              }

              v29 = &v28[v20];
              v30 = v19[1];
              *v29 = *v19;
              *(v29 + 1) = v30;
              if (!v26)
              {
                operator delete(v22);
              }

              *(&__dst + 1) = v21;
              v76 = v3 | 0x8000000000000000;
              *&__dst = v28;
              v31 = &v28[v21];
LABEL_83:
              *v31 = 0;
              *object = __dst;
              object[2] = v76;
              v76 = 0;
              __dst = 0uLL;
              operator delete(v19);
              if (SHIBYTE(v76) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_85:
                  v48 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v48 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v48;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_108:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v44 = v66;
                      if (!v66)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_110;
                    }

                    goto LABEL_109;
                  }

LABEL_91:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v52 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v52 = object[1];
                  }

                  if (v52)
                  {
                    v53 = xpc_dictionary_create(0, 0, 0);
                    if (v53 || (v53 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v53) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v53);
                        v54 = v53;
                      }

                      else
                      {
                        v54 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v54 = xpc_null_create();
                      v53 = 0;
                    }

                    xpc_release(v53);
                    v55 = xpc_null_create();
                    v56 = __dst;
                    *&__dst = v54;
                    xpc_release(v56);
                    xpc_release(v55);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v57 = object;
                    }

                    else
                    {
                      v57 = object[0];
                    }

                    v58 = xpc_string_create(v57);
                    if (!v58)
                    {
                      v58 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v54, *MEMORY[0x29EDBE648], v58);
                    v59 = xpc_null_create();
                    xpc_release(v58);
                    xpc_release(v59);
                  }

                  LODWORD(aBlock) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &aBlock, &__dst);
                  xpc_release(__dst);
                  goto LABEL_108;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_85;
                }
              }

              v51 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v51)
              {
                goto LABEL_108;
              }

              goto LABEL_91;
            }

LABEL_37:
            v24 = 2 * v23;
            if (v21 > 2 * v23)
            {
              v24 = v21;
            }

            if ((v24 | 7) == 0x17)
            {
              v25 = 25;
            }

            else
            {
              v25 = (v24 | 7) + 1;
            }

            if (v24 >= 0x17)
            {
              v3 = v25;
            }

            else
            {
              v3 = 23;
            }

            v26 = v23 == 22;
            goto LABEL_46;
          }

          v32 = __dst;
          v45 = (__dst + *(&__dst + 1));
          v46 = v18[1];
          *v45 = *v18;
          v45[1] = v46;
          v33 = v20 + 32;
          *(&__dst + 1) = v20 + 32;
        }

        else
        {
          if (SHIBYTE(v76) < 0x17)
          {
            v21 = SHIBYTE(v76) | 0x20;
            v22 = &__dst;
            v23 = 22;
            goto LABEL_37;
          }

          v32 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v76), " rejected; ABM is shutting down ", 32);
          v33 = v20 + 32;
          HIBYTE(v76) = (v20 + 32) & 0x7F;
        }

        v31 = v32 + v33;
        goto LABEL_83;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v72[0] = v9;
  v72[1] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&aBlock, v9);
  __dst = 0uLL;
  if (v74)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v74);
    if (*(&__dst + 1))
    {
      *&__dst = aBlock;
    }

    if (v74)
    {
      std::__shared_weak_count::__release_weak(v74);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_53:
    v34 = xpc_null_create();
    v35 = v1->__shared_owners_;
    object[0] = v34;
    v36 = xpc_null_create();
    (v35[2])(v35, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v36);
    goto LABEL_77;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_53;
  }

LABEL_24:
  v15 = v1[1].__shared_owners_;
  v70 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v70 = xpc_null_create();
  }

  xpc::bridge(&cf, &v70, v16);
  v37 = cf;
  if (cf && (v38 = CFGetTypeID(cf), v38 == CFDictionaryGetTypeID()))
  {
    v72[0] = v37;
    CFRetain(v37);
  }

  else
  {
    v72[0] = 0;
  }

  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 1174405120;
  object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb11_ENK4__14clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_257;
  object[4] = v2;
  object[5] = v1->__shared_weak_owners_;
  v39 = v1[1].__vftable;
  v68 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v1->__shared_owners_;
  if (v40)
  {
    v40 = _Block_copy(v40);
  }

  v69 = v40;
  v41 = _Block_copy(object);
  v42 = v2[2].~__shared_weak_count_0;
  if (v42)
  {
    dispatch_retain(v42);
  }

  aBlock = v41;
  v74 = v42;
  (*(*v14 + 304))(v14, v72, &aBlock);
  if (v74)
  {
    dispatch_release(v74);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v72[0])
  {
    CFRelease(v72[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(v70);
  if (v69)
  {
    _Block_release(v69);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

LABEL_77:
  v43 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
    v44 = v66;
    if (!v66)
    {
      goto LABEL_115;
    }

    goto LABEL_110;
  }

LABEL_109:
  v44 = v66;
  if (!v66)
  {
    goto LABEL_115;
  }

LABEL_110:
  xpc_release(v44[1].__shared_owners_);
  v44[1].__shared_owners_ = 0;
  v60 = v44[1].__vftable;
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v44->__shared_owners_;
  if (v61)
  {
    _Block_release(v61);
  }

  operator delete(v44);
LABEL_115:
  v62 = a1;
  if (a1)
  {
    v63 = a1[2];
    if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
      v62 = a1;
    }

    operator delete(v62);
  }

  v64 = *MEMORY[0x29EDCA608];
}

void sub_297580CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb11_E4__14NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb11_ENK4__14clEv_block_invoke(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
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
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_297581020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb12_E4__15EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v77 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v66 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBE5B8];
    v5 = strlen(*MEMORY[0x29EDBE5B8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v5 | 7) + 1;
      }

      p_dst = operator new(v17);
      *(&__dst + 1) = v6;
      v76 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v76) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v18 = operator new(0x28uLL);
        v19 = v18;
        strcpy(v18, " rejected; ABM is shutting down ");
        v20 = SHIBYTE(v76);
        if ((SHIBYTE(v76) & 0x8000000000000000) != 0)
        {
          v20 = *(&__dst + 1);
          v23 = (v76 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v23 - *(&__dst + 1) < 0x20)
          {
            v21 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v76 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v23)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v22 = __dst;
            if (v23 > 0x3FFFFFFFFFFFFFF2)
            {
              v26 = 0;
LABEL_46:
              v27 = operator new(v3);
              v28 = v27;
              if (v20)
              {
                memmove(v27, v22, v20);
              }

              v29 = &v28[v20];
              v30 = v19[1];
              *v29 = *v19;
              *(v29 + 1) = v30;
              if (!v26)
              {
                operator delete(v22);
              }

              *(&__dst + 1) = v21;
              v76 = v3 | 0x8000000000000000;
              *&__dst = v28;
              v31 = &v28[v21];
LABEL_83:
              *v31 = 0;
              *object = __dst;
              object[2] = v76;
              v76 = 0;
              __dst = 0uLL;
              operator delete(v19);
              if (SHIBYTE(v76) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_85:
                  v48 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v48 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v48;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_108:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v44 = v66;
                      if (!v66)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_110;
                    }

                    goto LABEL_109;
                  }

LABEL_91:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v52 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v52 = object[1];
                  }

                  if (v52)
                  {
                    v53 = xpc_dictionary_create(0, 0, 0);
                    if (v53 || (v53 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v53) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v53);
                        v54 = v53;
                      }

                      else
                      {
                        v54 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v54 = xpc_null_create();
                      v53 = 0;
                    }

                    xpc_release(v53);
                    v55 = xpc_null_create();
                    v56 = __dst;
                    *&__dst = v54;
                    xpc_release(v56);
                    xpc_release(v55);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v57 = object;
                    }

                    else
                    {
                      v57 = object[0];
                    }

                    v58 = xpc_string_create(v57);
                    if (!v58)
                    {
                      v58 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v54, *MEMORY[0x29EDBE648], v58);
                    v59 = xpc_null_create();
                    xpc_release(v58);
                    xpc_release(v59);
                  }

                  LODWORD(aBlock) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &aBlock, &__dst);
                  xpc_release(__dst);
                  goto LABEL_108;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_85;
                }
              }

              v51 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v51)
              {
                goto LABEL_108;
              }

              goto LABEL_91;
            }

LABEL_37:
            v24 = 2 * v23;
            if (v21 > 2 * v23)
            {
              v24 = v21;
            }

            if ((v24 | 7) == 0x17)
            {
              v25 = 25;
            }

            else
            {
              v25 = (v24 | 7) + 1;
            }

            if (v24 >= 0x17)
            {
              v3 = v25;
            }

            else
            {
              v3 = 23;
            }

            v26 = v23 == 22;
            goto LABEL_46;
          }

          v32 = __dst;
          v45 = (__dst + *(&__dst + 1));
          v46 = v18[1];
          *v45 = *v18;
          v45[1] = v46;
          v33 = v20 + 32;
          *(&__dst + 1) = v20 + 32;
        }

        else
        {
          if (SHIBYTE(v76) < 0x17)
          {
            v21 = SHIBYTE(v76) | 0x20;
            v22 = &__dst;
            v23 = 22;
            goto LABEL_37;
          }

          v32 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v76), " rejected; ABM is shutting down ", 32);
          v33 = v20 + 32;
          HIBYTE(v76) = (v20 + 32) & 0x7F;
        }

        v31 = v32 + v33;
        goto LABEL_83;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v72[0] = v9;
  v72[1] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&aBlock, v9);
  __dst = 0uLL;
  if (v74)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v74);
    if (*(&__dst + 1))
    {
      *&__dst = aBlock;
    }

    if (v74)
    {
      std::__shared_weak_count::__release_weak(v74);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_53:
    v34 = xpc_null_create();
    v35 = v1->__shared_owners_;
    object[0] = v34;
    v36 = xpc_null_create();
    (v35[2])(v35, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v36);
    goto LABEL_77;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_53;
  }

LABEL_24:
  v15 = v1[1].__shared_owners_;
  v70 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v70 = xpc_null_create();
  }

  xpc::bridge(&cf, &v70, v16);
  v37 = cf;
  if (cf && (v38 = CFGetTypeID(cf), v38 == CFDictionaryGetTypeID()))
  {
    v72[0] = v37;
    CFRetain(v37);
  }

  else
  {
    v72[0] = 0;
  }

  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 1174405120;
  object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb12_ENK4__15clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_260;
  object[4] = v2;
  object[5] = v1->__shared_weak_owners_;
  v39 = v1[1].__vftable;
  v68 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v1->__shared_owners_;
  if (v40)
  {
    v40 = _Block_copy(v40);
  }

  v69 = v40;
  v41 = _Block_copy(object);
  v42 = v2[2].~__shared_weak_count_0;
  if (v42)
  {
    dispatch_retain(v42);
  }

  aBlock = v41;
  v74 = v42;
  (*(*v14 + 312))(v14, v72, &aBlock);
  if (v74)
  {
    dispatch_release(v74);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v72[0])
  {
    CFRelease(v72[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(v70);
  if (v69)
  {
    _Block_release(v69);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

LABEL_77:
  v43 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
    v44 = v66;
    if (!v66)
    {
      goto LABEL_115;
    }

    goto LABEL_110;
  }

LABEL_109:
  v44 = v66;
  if (!v66)
  {
    goto LABEL_115;
  }

LABEL_110:
  xpc_release(v44[1].__shared_owners_);
  v44[1].__shared_owners_ = 0;
  v60 = v44[1].__vftable;
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v44->__shared_owners_;
  if (v61)
  {
    _Block_release(v61);
  }

  operator delete(v44);
LABEL_115:
  v62 = a1;
  if (a1)
  {
    v63 = a1[2];
    if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
      v62 = a1;
    }

    operator delete(v62);
  }

  v64 = *MEMORY[0x29EDCA608];
}

void sub_297581938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb12_E4__15NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb12_ENK4__15clEv_block_invoke(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
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
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_297581CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb13_E4__16EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF550];
    v5 = strlen(*MEMORY[0x29EDBF550]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v70 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v70) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v70);
        if ((SHIBYTE(v70) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v70 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v70 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v70;
              v70 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v67) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v67, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v70) < 0x17)
          {
            v25 = SHIBYTE(v70) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v70), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v70) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A18CADD8;
  }

  v13 = *(&off_2A18CADD8 + 1);
  v65 = v9;
  v66 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v67, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v67;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb13_ENK4__16clEv_block_invoke;
  v61 = &__block_descriptor_tmp_263;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v63 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v64 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v67 = v17;
  object = v18;
  (*(*v14 + 336))(v14, &v67);
  if (object)
  {
    dispatch_release(object);
  }

  if (v67)
  {
    _Block_release(v67);
  }

  if (v64)
  {
    _Block_release(v64);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
      v55 = a1;
    }

    operator delete(v55);
  }

  v57 = *MEMORY[0x29EDCA608];
}