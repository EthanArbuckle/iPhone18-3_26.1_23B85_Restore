void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_115(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    (*(v1 + 16))(v1, 3760250880, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2970957DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }
}

void sub_29709585C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }
}

void __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE64c15_ZTSK9ResetInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  *(a1 + 56) = v5;
  ResetInfo::ResetInfo((a1 + 64), (a2 + 64));
}

void sub_297095930(_Unwind_Exception *a1)
{
  v4 = *(v2 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE64c15_ZTSK9ResetInfo(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(a1 + 88));
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 56);
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {
LABEL_11:
    _Block_release(v2);
  }

LABEL_12:
  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void BootModule::shutdown_sync(uint64_t a1, void **a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v41 = 0;
  v42 = &v41;
  v43 = 0x4002000000;
  v44 = __Block_byref_object_copy__1;
  v45 = __Block_byref_object_dispose__1;
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 576) != 8)
  {
    v5 = *(a1 + 80);
    if (!v5 || (v6 = *(a1 + 72), (v7 = std::__shared_weak_count::lock(v5)) == 0))
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

    v39 = 0xAAAAAAAAAAAAAAAALL;
    object = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
    aBlock[3] = &unk_2A1E26CC8;
    aBlock[5] = a1;
    aBlock[6] = v6;
    v37 = v8;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    aBlock[4] = &v41;
    v10 = *a2;
    if (*a2)
    {
      v10 = _Block_copy(v10);
    }

    v38 = v10;
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 88);
    if (v12)
    {
      dispatch_retain(*(a1 + 88));
    }

    v39 = v11;
    object = v12;
    v34 = 0xAAAAAAAAAAAAAAAALL;
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v14 = off_2A18B7390;
    if (!off_2A18B7390)
    {
      CommandDriverFactory::create_default_global(&buf, v13);
      v15 = *&buf.__r_.__value_.__l.__data_;
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      v16 = *(&off_2A18B7390 + 1);
      off_2A18B7390 = v15;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      size = buf.__r_.__value_.__l.__size_;
      if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v14 = off_2A18B7390;
    }

    v18 = *(&off_2A18B7390 + 1);
    v30 = v14;
    v31 = *(&off_2A18B7390 + 1);
    if (*(&off_2A18B7390 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v14 + 16))(&v32, v14);
    v34 = 0;
    v35 = 0;
    if (v33)
    {
      v35 = std::__shared_weak_count::lock(v33);
      if (v35)
      {
        v34 = v32;
      }

      if (v33)
      {
        std::__shared_weak_count::__release_weak(v33);
      }
    }

    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v19 = v34;
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v19 = v34;
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    if (*(a1 + 152) == 1)
    {
      v20 = *(a1 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = 10;
        _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband requested with timeout %llu sec", &buf, 0xCu);
      }

      v21 = v39;
      if (v39)
      {
        v21 = _Block_copy(v39);
      }

      v28 = v21;
      v29 = object;
      if (object)
      {
        dispatch_retain(object);
      }

      (*(*v19 + 32))(v19, 10000000000, &v28);
      if (v29)
      {
        dispatch_release(v29);
      }

      if (v28)
      {
        _Block_release(v28);
      }

      goto LABEL_57;
    }

LABEL_49:
    (*(*a1 + 104))(a1, 8);
    if (*(a1 + 584))
    {
      std::string::__assign_external((v42 + 5), "Transport clients are not started yet", 0x25uLL);
      v23 = *(a1 + 104);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v27 = v42 + 5;
        if (*(v42 + 63) < 0)
        {
          v27 = *v27;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v27;
        _os_log_error_impl(&dword_296FF7000, v23, OS_LOG_TYPE_ERROR, "Poweroff baseband request skipped (powercycle anyway); Error: %s", &buf, 0xCu);
      }

      (*(**(a1 + 584) + 24))(*(a1 + 584));
    }

    v24 = *a2;
    if (*(v42 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, v42[5], v42[6]);
    }

    else
    {
      buf = *(v42 + 5);
    }

    v24[2](v24, 3760250880, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_57:
    v25 = v35;
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v39)
    {
      _Block_release(v39);
    }

    if (v38)
    {
      _Block_release(v38);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_weak(v37);
    }

    std::__shared_weak_count::__release_weak(v8);
    _Block_object_dispose(&v41, 8);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_69;
  }

  std::string::__assign_external(&__p, "BootModule already in shutdown state", 0x24uLL);
  v3 = *a2;
  if (*(v42 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v42[5], v42[6]);
  }

  else
  {
    buf = *(v42 + 5);
  }

  v3[2](v3, 0, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    _Block_object_dispose(&v41, 8);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_69:
    operator delete(__p.__r_.__value_.__l.__data_);
    v26 = *MEMORY[0x29EDCA608];
    return;
  }

  _Block_object_dispose(&v41, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_69;
  }

LABEL_44:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_2970960E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *aBlock, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke(void *a1, ctu::cf **a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v3 = a1[5];
  v35 = 0;
  v36 = 0;
  v4 = a1[7];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v36 = v6;
    if (v6)
    {
      v35 = a1[6];
      if (v35)
      {
        if (!*a2)
        {
          v19 = v3[13];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v37.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband request delivered; waiting for reset detection", &v37, 2u);
          }

          v20 = v3[17];
          v21 = operator new(0x28uLL);
          v33 = v21;
          v34 = xmmword_297227A80;
          strcpy(v21, "Poweroff: Wait for reset detection");
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_126;
          aBlock[3] = &unk_2A1E26C90;
          v23 = a1[6];
          v22 = a1[7];
          aBlock[5] = v3;
          aBlock[6] = v23;
          v30 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          aBlock[4] = a1[4];
          v24 = a1[8];
          if (v24)
          {
            v24 = _Block_copy(v24);
          }

          v31 = v24;
          v25 = _Block_copy(aBlock);
          v32 = v25;
          v26 = dispatch_time(0, 10000000000);
          ResetDetection::add(v20, &v33, 1, &v32, v26);
          if (v25)
          {
            _Block_release(v25);
          }

          operator delete(v21);
          if (v31)
          {
            _Block_release(v31);
          }

          if (v30)
          {
            std::__shared_weak_count::__release_weak(v30);
          }

          goto LABEL_21;
        }

        (*(*v3 + 104))(v3, 8);
        ctu::cf::show(&v37, *a2, v7);
        v8 = *(a1[4] + 8);
        if (*(v8 + 63) < 0)
        {
          operator delete(*(v8 + 40));
        }

        *(v8 + 40) = v37;
        v9 = v3[13];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1[4] + 8);
          v28 = (v27 + 40);
          if (*(v27 + 63) < 0)
          {
            v28 = *v28;
          }

          LODWORD(v37.__r_.__value_.__l.__data_) = 136446210;
          *(v37.__r_.__value_.__r.__words + 4) = v28;
          _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "#I Poweroff baseband request failed; Error: %{public}s", &v37, 0xCu);
          v10 = v3[73];
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v10 = v3[73];
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        (*(*v10 + 24))(v10);
LABEL_10:
        v11 = *(a1[4] + 8);
        v12 = a1[8];
        if (*(v11 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v37, *(v11 + 40), *(v11 + 48));
        }

        else
        {
          v37 = *(v11 + 40);
        }

        (*(v12 + 16))(v12, 3760250880, &v37);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

LABEL_21:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = operator new(0x38uLL);
  strcpy(v13, "Poweroff: BootModule destroyed before getting response");
  v14 = *(a1[4] + 8);
  if (*(v14 + 63) < 0)
  {
    v15 = v13;
    operator delete(*(v14 + 40));
    v13 = v15;
  }

  *(v14 + 40) = v13;
  *(v14 + 48) = xmmword_297227A70;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  if (*(v16 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(v16 + 40), *(v16 + 48));
  }

  else
  {
    v37 = *(v16 + 40);
  }

  (*(v17 + 16))(v17, 3760250880, &v37);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    goto LABEL_21;
  }

LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_29709664C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_126(void *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[5];
  v4 = a1[7];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6 && a1[6])
    {
      (*(*v3 + 104))(v3, 8);
      if (!a2)
      {
        v18 = v3[13];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband success", &v25, 2u);
        }

        v19 = *(a1[4] + 8);
        v20 = a1[8];
        if (*(v19 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v25, *(v19 + 40), *(v19 + 48));
        }

        else
        {
          v25 = *(v19 + 40);
        }

        (*(v20 + 16))(v20, 0, &v25);
LABEL_31:
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
          v23 = v3[73];
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v23 = v3[73];
          if (!v23)
          {
LABEL_36:
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            goto LABEL_38;
          }
        }

        (*(*v23 + 24))(v23);
        goto LABEL_36;
      }

      v7 = operator new(0x30uLL);
      strcpy(v7, "Poweroff: Timeout waiting for reset detection");
      v8 = *(a1[4] + 8);
      if (*(v8 + 63) < 0)
      {
        v9 = v7;
        operator delete(*(v8 + 40));
        v7 = v9;
      }

      *(v8 + 40) = v7;
      *(v8 + 48) = xmmword_297227A90;
      v10 = v3[13];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1[4] + 8);
        v22 = (v21 + 40);
        if (*(v21 + 63) < 0)
        {
          v22 = *v22;
        }

        LODWORD(v25.__r_.__value_.__l.__data_) = 136315138;
        *(v25.__r_.__value_.__r.__words + 4) = v22;
        _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "%s", &v25, 0xCu);
        v11 = *(a1[4] + 8);
        v12 = a1[8];
        if ((*(v11 + 63) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = *(a1[4] + 8);
        v12 = a1[8];
        if ((*(v11 + 63) & 0x80000000) == 0)
        {
LABEL_9:
          v25 = *(v11 + 40);
LABEL_30:
          (*(v12 + 16))(v12, 3760250883, &v25);
          goto LABEL_31;
        }
      }

      std::string::__init_copy_ctor_external(&v25, *(v11 + 40), *(v11 + 48));
      goto LABEL_30;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = operator new(0x40uLL);
  strcpy(v13, "ResetDetect: BootModule destroyed before getting response");
  v14 = *(a1[4] + 8);
  if (*(v14 + 63) < 0)
  {
    v15 = v13;
    operator delete(*(v14 + 40));
    v13 = v15;
  }

  *(v14 + 40) = v13;
  *(v14 + 48) = xmmword_297227AA0;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  if (*(v16 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(v16 + 40), *(v16 + 48));
  }

  else
  {
    v25 = *(v16 + 40);
  }

  (*(v17 + 16))(v17, 3760250880, &v25);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    goto LABEL_36;
  }

LABEL_38:
  v24 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_48c35_ZTSNSt3__18weak_ptrI10BootModuleEE64c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[8];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_48c35_ZTSNSt3__18weak_ptrI10BootModuleEE64c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = *(v2 + 584) != 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0 && (*(v2 + 189) = 1, v3 = *(v2 + 104), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v3, OS_LOG_TYPE_ERROR, "Boot controller object has not been created!", buf, 2u);
    v4 = *(a1[4] + 8);
    if (*(v4 + 24) == 1)
    {
LABEL_4:
      *(*(a1[4] + 8) + 24) = (***(v2 + 584))(*(v2 + 584), *(a1[5] + 8) + 40);
      if ((*(*(a1[4] + 8) + 24) & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = *(a1[4] + 8);
    if (*(v4 + 24) == 1)
    {
      goto LABEL_4;
    }
  }

  *(v4 + 24) = 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
LABEL_5:
    *(v2 + 189) = 1;
    v5 = *(v2 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1[5] + 8);
      v7 = (v6 + 40);
      if (*(v6 + 63) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      v8 = "Failed on preparation for booting!: Reason: %s";
LABEL_25:
      _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      v17 = *MEMORY[0x29EDCA608];
      return;
    }

    goto LABEL_20;
  }

LABEL_11:
  *(v2 + 304) = TelephonyUtilSystemMachTime();
  v9 = *(v2 + 560);
  if (v9)
  {
    v10 = *(v9 + 9);
    SystemTime = TelephonyUtilGetSystemTime();
    lcdm::CrashDB::purgeCrashEntriesOlderThan(v9, v10, SystemTime);
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v12;
    v20 = v12;
    lcdm::CrashDB::createCrashContextData(*(v2 + 560), buf);
    if (buf[0] == 1)
    {
      BootController::setCrashContextData(*(v2 + 584), &buf[8]);
    }

    else
    {
      v13 = *(v2 + 104);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Not setting crash context data", v18, 2u);
      }
    }

    if (*&buf[8])
    {
      *&v20 = *&buf[8];
      operator delete(*&buf[8]);
    }
  }

  *(*(a1[4] + 8) + 24) = (*(**(v2 + 584) + 8))(*(v2 + 584), *(a1[5] + 8) + 40);
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v5 = *(v2 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1[5] + 8);
      v16 = (v15 + 40);
      if (*(v15 + 63) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      v8 = "Failed on booting!: Reason: %s";
      goto LABEL_25;
    }
  }

LABEL_20:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297096EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_136(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296FF7000, v1, OS_LOG_TYPE_DEFAULT, "#I Recovery detected", v2, 2u);
  }
}

void __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_138(void *a1)
{
  v1 = a1[6];
  if (*(v1 + 576) - 7 < 2)
  {
    return;
  }

  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v42 = _os_activity_create(&dword_296FF7000, "Baseband state: booted", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    memset(state, 170, 16);
    os_activity_scope_enter(v42, state);
    os_activity_scope_leave(state);
    v3 = *(v1 + 104);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *state = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband bootup succeeded", state, 2u);
    }

    (*(*v1 + 104))(v1, 3);
    *(v1 + 312) = TelephonyUtilSystemMachTime();
    v41 = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v41 = Mutable;
    }

    ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBEDF0], v4, v6);
    v7 = *(v1 + 80);
    if (!v7 || (v8 = *(v1 + 72), (v9 = std::__shared_weak_count::lock(v7)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v10 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v10);
    }

    BootModule::reportStatisticsBootUpTime_sync(v1);
    v11 = *MEMORY[0x29EDBF460];
    v12 = strlen(*MEMORY[0x29EDBF460]);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v12 | 7) + 1;
      }

      v14 = operator new(v17);
      __dst[1] = v13;
      v40 = v17 | 0x8000000000000000;
      __dst[0] = v14;
    }

    else
    {
      HIBYTE(v40) = v12;
      v14 = __dst;
      if (!v12)
      {
        LOBYTE(__dst[0]) = 0;
        v15 = v41;
        if (!v41)
        {
          goto LABEL_26;
        }

LABEL_24:
        v18 = CFGetTypeID(v15);
        if (v18 == CFDictionaryGetTypeID())
        {
          v38 = v15;
          CFRetain(v15);
          goto LABEL_27;
        }

LABEL_26:
        v38 = 0;
LABEL_27:
        v37 = 0;
        Service::broadcastEvent(v1, __dst, &v38, &v37);
        if (v37)
        {
          _Block_release(v37);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
          if (*(v1 + 194))
          {
LABEL_54:
            v24 = a1[9];
            v25 = *(v1 + 88);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 1174405120;
            block[2] = ___ZN10BootModule9boot_syncEv_block_invoke_142;
            block[3] = &__block_descriptor_tmp_154;
            block[4] = v1;
            block[5] = v8;
            v28 = v10;
            atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            dispatch_group_notify(v24, v25, block);
            if (v28)
            {
              std::__shared_weak_count::__release_weak(v28);
            }

            std::__shared_weak_count::__release_weak(v10);
            if (v41)
            {
              CFRelease(v41);
            }

            if (v42)
            {
              os_release(v42);
            }

            return;
          }
        }

        else if (*(v1 + 194))
        {
          goto LABEL_54;
        }

        if (*(v1 + 192) == 1)
        {
          v36 = 0;
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v19 = off_2A18B75C0;
          if (!off_2A18B75C0)
          {
            SharedData::create_default_global(state);
            v20 = *state;
            *state = 0;
            *&state[8] = 0;
            v21 = *(&off_2A18B75C0 + 1);
            off_2A18B75C0 = v20;
            if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v21->__on_zero_shared)(v21);
              std::__shared_weak_count::__release_weak(v21);
            }

            v22 = *&state[8];
            if (*&state[8] && !atomic_fetch_add((*&state[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            v19 = off_2A18B75C0;
          }

          v34 = v19;
          v35 = *(&off_2A18B75C0 + 1);
          if (*(&off_2A18B75C0 + 1))
          {
            atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          *state = operator new(0x28uLL);
          *&state[8] = xmmword_297227AB0;
          strcpy(*state, "Baseband Mobile Asset PT image sent");
          os_unfair_lock_lock((v19 + 40));
          Preferences::getPreference<BOOL>(v19, state, &v36);
          os_unfair_lock_unlock((v19 + 40));
          if ((state[23] & 0x80000000) != 0)
          {
            operator delete(*state);
          }

          v23 = v35;
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          if (v36 == 1)
          {
            v32[23] = 6;
            strcpy(v32, "Booted");
            v31[23] = 0;
            v31[0] = 0;
            BootModule::updateMobileAssetPTStatus_sync(v1, 2u, v32, v31);
          }

          else
          {
            v30[23] = 11;
            strcpy(v30, "BBURejected");
            v29[23] = 0;
            v29[0] = 0;
            BootModule::updateMobileAssetPTStatus_sync(v1, 4u, v30, v29);
          }
        }

        goto LABEL_54;
      }
    }

    memmove(v14, v11, v13);
    *(v13 + v14) = 0;
    v15 = v41;
    if (!v41)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v16 = *(v1 + 104);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *state = 0;
    _os_log_error_impl(&dword_296FF7000, v16, OS_LOG_TYPE_ERROR, "Baseband bootup failed", state, 2u);
  }

  (*(*v1 + 104))(v1, 5);
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 0x40000000;
  v26[2] = ___ZN10BootModule9boot_syncEv_block_invoke_155;
  v26[3] = &unk_29EE63F50;
  v26[4] = a1[5];
  v26[5] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v26);
}

void sub_297097770(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  std::__shared_weak_count::__release_weak(v1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v2 - 96));
  ctu::os::scoped_activity::~scoped_activity((v2 - 88));
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsBootUpTime_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of bootup time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = time(0);
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF490], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  *buf = operator new(0x20uLL);
  v11 = xmmword_297227A10;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = 0;
  Service::runCommand(this, buf, &object, &v8);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_297097A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_142(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 136);
  v4 = operator new(0x19uLL);
  v11 = v4;
  v12 = xmmword_297227AC0;
  strcpy(v4, "Baseband Recovered Gate");
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_151;
  v6 = a1[5];
  v5 = a1[6];
  aBlock[4] = v2;
  aBlock[5] = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = _Block_copy(aBlock);
  v10 = v7;
  ResetDetection::add(v3, &v11, 0, &v10, -1);
  if (v7)
  {
    _Block_release(v7);
  }

  operator delete(v4);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_297097B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v17 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        BootModule::bbResetFlag(v3, 0);
        v6 = *(v3 + 17);
        v7 = operator new(0x19uLL);
        v14 = v7;
        v15 = xmmword_297227AC0;
        strcpy(v7, "Baseband Crash Recovery");
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_3;
        aBlock[3] = &__block_descriptor_tmp_148_0;
        v9 = a1[5];
        v8 = a1[6];
        aBlock[4] = v3;
        aBlock[5] = v9;
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = _Block_copy(aBlock);
        v13 = v10;
        ResetDetection::add(v6, &v14, 1, &v13, -1);
        if (v10)
        {
          _Block_release(v10);
        }

        operator delete(v7);
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_297097D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  operator delete(v16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v18 - 64);
  _Unwind_Resume(a1);
}

void BootModule::bbResetFlag(BootModule *this, char a2)
{
  v3 = *(this + 10);
  if (!v3 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[8] = a2;
  v9 = *(this + 11);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bbResetFlag(BOOL)::$_0>(BootModule::bbResetFlag(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bbResetFlag(BOOL)::$_0,dispatch_queue_s *::default_delete<BootModule::bbResetFlag(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_3(void *a1)
{
  v1 = a1[4];
  if (v1[576] - 7 >= 2)
  {
    v3 = a1[6];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      v54 = v4;
      if (v4)
      {
        if (!a1[5])
        {
LABEL_62:
          if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v4;
            (v4->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v22);
          }

          return;
        }

        BootModule::bbResetFlag(v1, 1);
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v51 = v5;
        v52 = v5;
        v49 = v5;
        v50 = v5;
        *&v47[16] = v5;
        v48 = v5;
        *v47 = v5;
        v6 = *MEMORY[0x29EDBEB60];
        v7 = strlen(*MEMORY[0x29EDBEB60]);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v8 = v7;
        if (v7 >= 0x17)
        {
          if ((v7 | 7) == 0x17)
          {
            v10 = 25;
          }

          else
          {
            v10 = (v7 | 7) + 1;
          }

          p_dst = operator new(v10);
          *(&__dst + 1) = v8;
          v46 = v10 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v46) = v7;
          p_dst = &__dst;
          if (!v7)
          {
LABEL_14:
            *(p_dst + v8) = 0;
            v11 = *MEMORY[0x29EDBF6D8];
            v12 = strlen(*MEMORY[0x29EDBF6D8]);
            if (v12 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v13 = v12;
            if (v12 >= 0x17)
            {
              if ((v12 | 7) == 0x17)
              {
                v15 = 25;
              }

              else
              {
                v15 = (v12 | 7) + 1;
              }

              v14 = operator new(v15);
              *(&v43 + 1) = v13;
              v44 = v15 | 0x8000000000000000;
              *&v43 = v14;
            }

            else
            {
              HIBYTE(v44) = v12;
              v14 = &v43;
              if (!v12)
              {
LABEL_23:
                *(v14 + v13) = 0;
                v16 = operator new(0x20uLL);
                v41 = v16;
                v42 = xmmword_297227A50;
                strcpy(v16, "** baseband crash detected");
                Timestamp::Timestamp(v37);
                Timestamp::asString(v37, 0, 9, __p);
                v36 = 0;
                LOBYTE(v35) = 0;
                ResetInfo::ResetInfo(v47, &__dst, &v43, &v41, __p, 3, &v35);
                if (v40 < 0)
                {
                  operator delete(__p[0]);
                }

                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v37, v38);
                operator delete(v16);
                if (SHIBYTE(v44) < 0)
                {
                  operator delete(v43);
                }

                if (SHIBYTE(v46) < 0)
                {
                  operator delete(__dst);
                }

                ResetInfo::ResetInfo(&v28, v47);
                v27 = 0;
                BootModule::requestReset(v1, &v28, &v27);
                if (v34 < 0)
                {
                  operator delete(v33);
                  if ((v32 & 0x80000000) == 0)
                  {
LABEL_31:
                    if ((v30 & 0x80000000) == 0)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_55;
                  }
                }

                else if ((v32 & 0x80000000) == 0)
                {
                  goto LABEL_31;
                }

                operator delete(v31);
                if ((v30 & 0x80000000) == 0)
                {
LABEL_32:
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_33;
                  }

LABEL_56:
                  operator delete(v28.__r_.__value_.__l.__data_);
LABEL_33:
                  v17 = *MEMORY[0x29EDBF278];
                  v18 = strlen(*MEMORY[0x29EDBF278]);
                  if (v18 > 0x7FFFFFFFFFFFFFF7)
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
                    v25[1] = v19;
                    v26 = v21 | 0x8000000000000000;
                    v25[0] = v20;
                  }

                  else
                  {
                    HIBYTE(v26) = v18;
                    v20 = v25;
                    if (!v18)
                    {
LABEL_42:
                      *(v19 + v20) = 0;
                      aBlock = 0;
                      cf = 0;
                      Service::broadcastEvent(v1, v25, &cf, &aBlock);
                      if (aBlock)
                      {
                        _Block_release(aBlock);
                      }

                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (SHIBYTE(v26) < 0)
                      {
                        operator delete(v25[0]);
                        if ((SHIBYTE(v52) & 0x80000000) == 0)
                        {
LABEL_48:
                          if ((SBYTE7(v50) & 0x80000000) == 0)
                          {
                            goto LABEL_49;
                          }

                          goto LABEL_59;
                        }
                      }

                      else if ((SHIBYTE(v52) & 0x80000000) == 0)
                      {
                        goto LABEL_48;
                      }

                      operator delete(*(&v51 + 1));
                      if ((SBYTE7(v50) & 0x80000000) == 0)
                      {
LABEL_49:
                        if ((SHIBYTE(v48) & 0x80000000) == 0)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_60;
                      }

LABEL_59:
                      operator delete(v49);
                      if ((SHIBYTE(v48) & 0x80000000) == 0)
                      {
LABEL_50:
                        if ((v47[23] & 0x80000000) == 0)
                        {
                          goto LABEL_51;
                        }

                        goto LABEL_61;
                      }

LABEL_60:
                      operator delete(*&v47[24]);
                      if ((v47[23] & 0x80000000) == 0)
                      {
LABEL_51:
                        v4 = v54;
                        if (!v54)
                        {
                          return;
                        }

                        goto LABEL_62;
                      }

LABEL_61:
                      operator delete(*v47);
                      v4 = v54;
                      if (!v54)
                      {
                        return;
                      }

                      goto LABEL_62;
                    }
                  }

                  memmove(v20, v17, v19);
                  goto LABEL_42;
                }

LABEL_55:
                operator delete(v29);
                if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_33;
                }

                goto LABEL_56;
              }
            }

            memmove(v14, v11, v13);
            goto LABEL_23;
          }
        }

        memmove(p_dst, v6, v8);
        goto LABEL_14;
      }
    }
  }
}

void sub_297098310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
    ResetInfo::~ResetInfo((v43 - 192));
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v43 - 80);
    _Unwind_Resume(a1);
  }

  ResetInfo::~ResetInfo((v43 - 192));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v43 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_155(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    __p = *(v2 + 40);
  }

  BootModule::handleBootFailed_sync(v1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2970984C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE72c21_ZTSN8dispatch5groupE(void *a1, void *a2)
{
  v2 = a2[8];
  a1[7] = a2[7];
  a1[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  a1[9] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE72c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void BootModule::setVoiceCall_sync(BootModule *this, char a2)
{
  v3 = *(this + 10);
  if (!v3 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *(this + 61);
  v10 = *(this + 11);
  v11 = operator new(0x20uLL);
  *v11 = this;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 24) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setVoiceCall_sync(BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setVoiceCall_sync(BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_29709868C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setRat1_sync(void *a1, int a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x20uLL);
  *v11 = a1;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 6) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_29709879C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setRat2_sync(void *a1, int a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x20uLL);
  *v11 = a1;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 6) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_2970988AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setPLMN1_sync(void *a1, uint64_t a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  *&v12 = a1;
  *(&v12 + 1) = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x30uLL);
  *&v11->__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__r.__words[2] = v7;
  v11[1] = __p;
  memset(&__p, 0, sizeof(__p));
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setPLMN1_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN1_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_297098A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    std::__shared_weak_count::__release_weak(v11);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v11);
  _Unwind_Resume(a1);
}

uint64_t BootModule::setPLMN1_sync(std::string)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void BootModule::setPLMN2_sync(void *a1, uint64_t a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  *&v12 = a1;
  *(&v12 + 1) = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x30uLL);
  *&v11->__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__r.__words[2] = v7;
  v11[1] = __p;
  memset(&__p, 0, sizeof(__p));
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setPLMN2_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN2_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_297098C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    std::__shared_weak_count::__release_weak(v11);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v11);
  _Unwind_Resume(a1);
}

void BootModule::setCellId_sync(void *a1, uint64_t a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
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

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = a1[61];
  v12 = a1[11];
  v13 = operator new(0x28uLL);
  *v13 = a1;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = a2;
  *(v13 + 8) = a3;
  dispatch_group_notify_f(v11, v12, v13, dispatch::detail::group_notify<BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v9);
}

void sub_297098D48(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setAreaCode_sync(void *a1, uint64_t a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
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

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = a1[61];
  v12 = a1[11];
  v13 = operator new(0x28uLL);
  *v13 = a1;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = a2;
  *(v13 + 8) = a3;
  dispatch_group_notify_f(v11, v12, v13, dispatch::detail::group_notify<BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v9);
}

void sub_297098E64(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void *std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](void *__dst, uint64_t a2)
{
  v2 = __dst;
  if (*(a2 + 16) != 1)
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
    return __dst;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 - *a2;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x16)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    __dst = operator new(v6);
    v2[1] = v5;
    v2[2] = v6 | 0x8000000000000000;
    *v2 = __dst;
    v2 = __dst;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(__dst + 23) = v5;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  __dst = memmove(v2, v3, v5);
LABEL_12:
  *(v2 + v5) = 0;
  return __dst;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

void BootModule::stopNetworkCampTimer_sync(BootModule *this)
{
  v1 = *(this + 67);
  if (v1)
  {
    v3 = this + 536;
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Stop network registration timer for metric submission", v6, 2u);
      v1 = *v3;
    }

    support::misc::safe_timer::stop(v1);
    v5 = *(this + 68);
    *v3 = 0;
    *(v3 + 1) = 0;
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void BootModule::updateNetworkCampStatus_sync(BootModule *this, _BOOL4 a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (config::hw::iPhone(this))
  {
    BootModule::stopNetworkCampTimer_sync(this);
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (a2)
      {
        v5 = "true";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Updating metric with registration state [%s]", buf, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v6) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    v8 = time(0);
    v9 = xpc_int64_create(v8);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF640], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = xpc_BOOL_create(a2);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF3F8], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    v13 = *(this + 10);
    if (!v13 || (v14 = *(this + 9), (v15 = std::__shared_weak_count::lock(v13)) == 0))
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

    object = v7;
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_297227A10;
    strcpy(*buf, "CommandUpdateBBBootStats");
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_188_0;
    aBlock[4] = this;
    aBlock[5] = v14;
    v20 = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(aBlock);
    v21 = v17;
    Service::runCommand(this, buf, &object, &v21);
    if (v17)
    {
      _Block_release(v17);
    }

    xpc_release(object);
    object = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    std::__shared_weak_count::__release_weak(v16);
    xpc_release(v7);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_297099418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke(void *a1, int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_28;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v21 = v6;
  if (!v6)
  {
    goto LABEL_28;
  }

  if (!a1[5])
  {
    goto LABEL_26;
  }

  if (a2)
  {
    v7 = v6;
    v8 = *(v5 + 104);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "CommandUpdateBBBootStats";
      _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Failed to send command %s to update", buf, 0xCu);
    }

    v6 = v7;
LABEL_26:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v14);
    }

    goto LABEL_28;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v9) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  *buf = operator new(0x28uLL);
  *&buf[8] = xmmword_297227AD0;
  strcpy(*buf, "CommandSubmitHealthDBBootMetrics");
  object = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object = xpc_null_create();
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke_182;
  aBlock[3] = &__block_descriptor_tmp_185;
  v12 = a1[5];
  v11 = a1[6];
  aBlock[4] = v5;
  aBlock[5] = v12;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = _Block_copy(aBlock);
  v18 = v13;
  Service::runCommand(v5, buf, &object, &v18);
  if (v13)
  {
    _Block_release(v13);
  }

  xpc_release(object);
  object = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v10);
  v6 = v21;
  if (v21)
  {
    goto LABEL_26;
  }

LABEL_28:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_297099790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke_182(void *a1, int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a2)
      {
        if (a1[5])
        {
          v7 = *(v5 + 104);
          v8 = v6;
          v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
          v6 = v8;
          if (v9)
          {
            v12 = *MEMORY[0x29EDBEB08];
            v13 = 136315138;
            v14 = v12;
            _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed to submit metric %s to Core Analytics", &v13, 0xCu);
            v6 = v8;
            if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v10 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

LABEL_8:
  v11 = *MEMORY[0x29EDCA608];
}

void BootModule::MobileAssetUpdate::~MobileAssetUpdate(void **this)
{
  if ((*(this + 63) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[5]);
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

void ResetInfo::ResetInfo(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 9);
  LODWORD(this[3].__r_.__value_.__r.__words[1]) = *(a2 + 20);
  this[3].__r_.__value_.__r.__words[0] = v7;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 88);
    this[4].__r_.__value_.__l.__size_ = *(a2 + 13);
    *&this[3].__r_.__value_.__r.__words[2] = v8;
  }
}

void sub_297099AB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

atomic_ullong *std::shared_ptr<BootModule>::shared_ptr[abi:ne200100]<BootModule,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E26F40;
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

void sub_297099C44(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1}::operator() const(BootModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BootModule *,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule *)#1},std::allocator<BootModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootModule *,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule *)#1},std::allocator<BootModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1}::operator() const(BootModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    HealthEventDB::~HealthEventDB(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297227D2BLL)
  {
    if (((v2 & 0x8000000297227D2BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297227D2BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297227D2BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void HealthEventDB::~HealthEventDB(HealthEventDB *this)
{
  *this = &unk_2A1E313E8;
  v2 = *(this + 10);
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        v4 = v2[6];
        if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }

        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      operator delete(v2[2]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

LABEL_9:
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(this + 7))
  {
    v6 = 0;
    v7 = *(this + 5);
    do
    {
      (**v7)(v7);
      v8 = *(this + 4);
      v7 = (*(this + 5) + 24);
      *(this + 5) = v7;
      if (v7 == v8)
      {
        v7 = *(this + 3);
        *(this + 5) = v7;
      }

      ++v6;
    }

    while (v6 < *(this + 7));
  }

  v9 = *(this + 3);
  if (v9)
  {
    operator delete(v9);
  }

  MEMORY[0x29C26B020](this + 8);
}

HealthEventDB **std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](HealthEventDB **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    HealthEventDB::~HealthEventDB(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t *_ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 144);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 136);
    if (v4)
    {
      _Block_release(v4);
    }

    if (*(v2 + 135) < 0)
    {
      operator delete(*(v2 + 112));
      if ((*(v2 + 95) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v2 + 71) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else if ((*(v2 + 95) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(*(v2 + 72));
    if ((*(v2 + 71) & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(v2 + 47) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(*(v2 + 48));
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
LABEL_10:
      v5 = *(v2 + 16);
      if (!v5)
      {
LABEL_12:
        operator delete(v2);
        return a1;
      }

LABEL_11:
      std::__shared_weak_count::__release_weak(v5);
      goto LABEL_12;
    }

LABEL_17:
    operator delete(*(v2 + 24));
    v5 = *(v2 + 16);
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return a1;
}

void _ZZN8dispatch6detail12group_notifyIZZZN10BootModule12requestResetE9ResetInfoNS_5blockIU13block_pointerFviNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEUb_EUb0_E3__0EEvP16dispatch_group_sP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEEENUlPvE_8__invokeESO_(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v22 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if (!*(a1 + 8))
  {
    goto LABEL_13;
  }

  ResetInfo::ResetInfo(&v14, (a1 + 24));
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  BootModule::handleReset_sync(v3, &v14, &v13);
  if (v7)
  {
    _Block_release(v7);
  }

  if (v20 < 0)
  {
    operator delete(v19);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_11:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_34:
      operator delete(v15);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }

LABEL_36:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v8 = a1;
        if (!a1)
        {
          return;
        }

        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v17);
  if (v16 < 0)
  {
    goto LABEL_34;
  }

LABEL_12:
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_35:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }

LABEL_14:
  v8 = a1;
  if (!a1)
  {
    return;
  }

LABEL_15:
  v9 = *(v8 + 144);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(v8 + 136);
  if (v10)
  {
    _Block_release(v10);
  }

  if (*(v8 + 135) < 0)
  {
    operator delete(*(v8 + 112));
    if ((*(v8 + 95) & 0x80000000) == 0)
    {
LABEL_21:
      if ((*(v8 + 71) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }
  }

  else if ((*(v8 + 95) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(*(v8 + 72));
  if ((*(v8 + 71) & 0x80000000) == 0)
  {
LABEL_22:
    if ((*(v8 + 47) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_30:
    operator delete(*(v8 + 24));
    v11 = *(v8 + 16);
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_29:
  operator delete(*(v8 + 48));
  if (*(v8 + 47) < 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v11 = *(v8 + 16);
  if (v11)
  {
LABEL_24:
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_25:
  operator delete(v8);
}

void sub_29709A448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    _Block_release(v11);
  }

  ResetInfo::~ResetInfo(&a11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v12 - 48);
  _ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_29709A47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v9 - 48);
  _ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BootModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E26FD8;
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

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10BootModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  BootModule::registerCommandHandlers_sync(**a1);
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

void sub_29709A794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  BootModule::registerEventHandlers_sync(**a1);
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

void sub_29709A88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v62 = *a1;
  v2 = *MEMORY[0x29EDBEC88];
  v3 = **a1;
  if (xpc_dictionary_get_value(*(*a1 + 8), *MEMORY[0x29EDBEC88]))
  {
    value = xpc_dictionary_get_value(v1[1], v2);
    *&buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    v6 = *(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "false";
      if (v5)
      {
        v7 = "true";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Registration state is %s", &buf, 0xCu);
    }

    if ((*(v3 + 552) & 1) == 0)
    {
      BootModule::updateNetworkCampStatus_sync(v3, v5);
    }
  }

  v8 = *MEMORY[0x29EDBF4D0];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF4D0]))
  {
    v9 = xpc_dictionary_get_value(v1[1], v8);
    *&buf = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    *(v3 + 552) = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    v10 = *(v3 + 104);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 552))
      {
        v11 = "set";
      }

      else
      {
        v11 = "not set";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I User preference airplane mode is %s", &buf, 0xCu);
    }

    if (*(v3 + 552) == 1)
    {
      BootModule::stopNetworkCampTimer_sync(v3);
    }
  }

  v12 = *MEMORY[0x29EDBE5A8];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE5A8]))
  {
    v13 = xpc_dictionary_get_value(v1[1], v12);
    *&buf = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v14 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    if (v14)
    {
      v15 = *(v3 + 504);
      if (v15)
      {
        dispatch_retain(*(v3 + 504));
        dispatch_suspend(v15);
      }

      v16 = *(v3 + 512);
      *(v3 + 512) = v15;
      if (!v16)
      {
LABEL_33:
        BootModule::setVoiceCall_sync(v3, v14);
        v17 = *MEMORY[0x29EDBE618];
        v18 = strlen(*MEMORY[0x29EDBE618]);
        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = v18;
        if (v18 >= 0x17)
        {
          if ((v18 | 7) == 0x17)
          {
            v22 = 25;
          }

          else
          {
            v22 = (v18 | 7) + 1;
          }

          p_buf = operator new(v22);
          *(&buf + 1) = v19;
          v69 = v22 | 0x8000000000000000;
          *&buf = p_buf;
        }

        else
        {
          HIBYTE(v69) = v18;
          p_buf = &buf;
          if (!v18)
          {
            LOBYTE(buf) = 0;
            v21 = v1[1];
            v67 = v21;
            if (v21)
            {
LABEL_37:
              xpc_retain(v21);
LABEL_44:
              aBlock = 0;
              Service::broadcastEvent(v3, &buf, &v67, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              xpc_release(v67);
              v67 = 0;
              if (SHIBYTE(v69) < 0)
              {
                operator delete(buf);
              }

              goto LABEL_48;
            }

LABEL_43:
            v67 = xpc_null_create();
            goto LABEL_44;
          }
        }

        memmove(p_buf, v17, v19);
        *(p_buf + v19) = 0;
        v21 = v1[1];
        v67 = v21;
        if (v21)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v16 = *(v3 + 512);
      *(v3 + 512) = 0;
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    dispatch_resume(v16);
    dispatch_release(v16);
    goto LABEL_33;
  }

LABEL_48:
  v23 = *MEMORY[0x29EDBF890];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF890]))
  {
    v24 = xpc_dictionary_get_value(v1[1], v23);
    object.__r_.__value_.__r.__words[0] = v24;
    if (v24)
    {
      xpc_retain(v24);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v25 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setRat1_sync(v3, v25);
  }

  v26 = *MEMORY[0x29EDBF898];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF898]))
  {
    v27 = xpc_dictionary_get_value(v1[1], v26);
    object.__r_.__value_.__r.__words[0] = v27;
    if (v27)
    {
      xpc_retain(v27);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v28 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setRat2_sync(v3, v28);
  }

  v29 = *MEMORY[0x29EDBF8D0];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8D0]))
  {
    memset(&object, 170, sizeof(object));
    v30 = xpc_dictionary_get_value(v1[1], v29);
    __p.__r_.__value_.__r.__words[0] = v30;
    if (v30)
    {
      xpc_retain(v30);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(&object, &__p, "", v31);
    xpc_release(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = object;
    }

    BootModule::setPLMN1_sync(v3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    operator delete(object.__r_.__value_.__l.__data_);
  }

LABEL_67:
  v32 = *MEMORY[0x29EDBF8D8];
  if (!xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8D8]))
  {
    goto LABEL_78;
  }

  memset(&object, 170, sizeof(object));
  v33 = xpc_dictionary_get_value(v1[1], v32);
  v63.__r_.__value_.__r.__words[0] = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v63.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&object, &v63, "", v34);
  xpc_release(v63.__r_.__value_.__l.__data_);
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = object;
  }

  BootModule::setPLMN2_sync(v3, &v63);
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
    if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }
  }

  else if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

  operator delete(object.__r_.__value_.__l.__data_);
LABEL_78:
  v35 = *MEMORY[0x29EDBE4B8];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE4B8]))
  {
    v36 = xpc_dictionary_get_value(v1[1], v35);
    object.__r_.__value_.__r.__words[0] = v36;
    if (v36)
    {
      xpc_retain(v36);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v37 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setCellId_sync(v3, v37, 0);
  }

  v38 = *MEMORY[0x29EDBE4C0];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE4C0]))
  {
    v39 = xpc_dictionary_get_value(v1[1], v38);
    object.__r_.__value_.__r.__words[0] = v39;
    if (v39)
    {
      xpc_retain(v39);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v40 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setCellId_sync(v3, v40, 1);
  }

  v41 = *MEMORY[0x29EDBE558];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE558]))
  {
    v42 = xpc_dictionary_get_value(v1[1], v41);
    object.__r_.__value_.__r.__words[0] = v42;
    if (v42)
    {
      xpc_retain(v42);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v43 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setAreaCode_sync(v3, v43, 0);
  }

  v44 = *MEMORY[0x29EDBE560];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE560]))
  {
    v45 = xpc_dictionary_get_value(v1[1], v44);
    object.__r_.__value_.__r.__words[0] = v45;
    if (v45)
    {
      xpc_retain(v45);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v46 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setAreaCode_sync(v3, v46, 1);
  }

  v47 = *MEMORY[0x29EDBF8B8];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8B8]) || xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8C0]))
  {
    v48 = xpc_dictionary_get_value(v1[1], v47);
    object.__r_.__value_.__r.__words[0] = v48;
    if (v48)
    {
      xpc_retain(v48);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v49 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v49)
    {
      goto LABEL_110;
    }

    v50 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8C0]);
    object.__r_.__value_.__r.__words[0] = v50;
    if (v50)
    {
      xpc_retain(v50);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v51 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v51)
    {
LABEL_110:
      v52 = *(v3 + 504);
      if (v52)
      {
        dispatch_retain(*(v3 + 504));
        dispatch_suspend(v52);
      }

      v53 = *(v3 + 512);
      *(v3 + 512) = v52;
      if (v53)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v53 = *(v3 + 512);
      *(v3 + 512) = 0;
      if (v53)
      {
LABEL_113:
        dispatch_resume(v53);
        dispatch_release(v53);
      }
    }
  }

  if (v1[2])
  {
    v54 = xpc_null_create();
    v55 = v1[2];
    object.__r_.__value_.__r.__words[0] = v54;
    v56 = xpc_null_create();
    (*(v55 + 16))(v55, 0, &object);
    xpc_release(object.__r_.__value_.__l.__data_);
    xpc_release(v56);
  }

  if (v62)
  {
    v57 = v62[2];
    if (v57)
    {
      _Block_release(v57);
    }

    xpc_release(v62[1]);
    operator delete(v62);
  }

  v58 = a1;
  if (a1)
  {
    v59 = *(a1 + 16);
    if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
      v58 = a1;
    }

    operator delete(v58);
  }

  v60 = *MEMORY[0x29EDCA608];
}

void sub_29709B204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *aBlock)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  value = xpc_dictionary_get_value(*(*a1 + 8), "BasebandHealthy");
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default(buf, 1);
  xpc_release(*buf);
  v6 = *(v3 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v3 + 192);
    if (v7 > 4)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_29EE64070[v7];
    }

    *buf = 67109378;
    *&buf[4] = v5;
    v23 = 2080;
    v24 = v8;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Received BasebandHealthEvent: isHealthy=%d, current PT status=%s", buf, 0x12u);
  }

  if (*(v3 + 192) == 2)
  {
    if (v5)
    {
      v21[23] = 7;
      strcpy(v21, "Healthy");
      v20[23] = 0;
      v9 = v20;
      v10 = v21;
      v11 = 3;
      v20[0] = 0;
    }

    else
    {
      v19[23] = 10;
      strcpy(v19, "NotHealthy");
      v18[23] = 0;
      v18[0] = 0;
      v9 = v18;
      v10 = v19;
      v11 = 4;
    }

    BootModule::updateMobileAssetPTStatus_sync(v3, v11, v10, v9);
  }

  if (v2[2])
  {
    v12 = xpc_null_create();
    v13 = v2[2];
    *buf = v12;
    v14 = xpc_null_create();
    (*(v13 + 16))(v13, 0, buf);
    xpc_release(*buf);
    xpc_release(v14);
    v15 = v2[2];
    if (v15)
    {
      _Block_release(v15);
    }
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v16 = *(a1 + 2);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_29709B724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb2_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::start(dispatch::group_session)::$_0>(BootModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::string::size_type **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)[3];
  v3 = v2[11];
  v62 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v4 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(&v55);
    v5 = *&v55.__r_.__value_.__l.__data_;
    *&v55.__r_.__value_.__l.__data_ = 0uLL;
    v6 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    size = v55.__r_.__value_.__l.__size_;
    if (v55.__r_.__value_.__l.__size_ && !atomic_fetch_add((v55.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v4 = off_2A18B7340;
  }

  __dst = v4;
  v51 = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v8.fObj.fObj = *(*v4 + 18);
  ResetDetection::create(&v62, v8, object);
  v9 = *object;
  object[0] = 0;
  object[1] = 0;
  v10 = v2[18];
  *(v2 + 17) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = object[1];
  if (object[1] && !atomic_fetch_add(&object[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v62)
  {
    dispatch_release(v62);
  }

  v12 = v2[17];
  v55.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v55.__r_.__value_.__l.__size_ = 0x40000000;
  v55.__r_.__value_.__r.__words[2] = ___ZN14ResetDetection5startEv_block_invoke;
  v56 = &__block_descriptor_tmp_3;
  v57 = v12;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v12, &v55);
  v13 = v1[2];
  if (v13)
  {
    dispatch_retain(v1[2]);
    dispatch_group_enter(v13);
  }

  v14 = v2[21];
  v2[21] = v13;
  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 88))(&v60, v2);
  if (v60)
  {
    v55.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v55.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v55, v2[76]);
    if (v55.__r_.__value_.__r.__words[0])
    {
      ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
      v16 = v55.__r_.__value_.__l.__size_;
      if (!v55.__r_.__value_.__l.__size_)
      {
        goto LABEL_35;
      }
    }

    else
    {
      ScaledTime = 180000000;
      v16 = v55.__r_.__value_.__l.__size_;
      if (!v55.__r_.__value_.__l.__size_)
      {
LABEL_35:
        object[0] = 0xAAAAAAAAAAAAAAAALL;
        v17 = v60;
        v18 = operator new(0x38uLL);
        strcpy(v18, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v19 = *(v17 + 48);
        std::string::__init_copy_ctor_external(&v55, v18, 0x33uLL);
        (*(*v19 + 24))(object, v19, &v55, ScaledTime / 1000);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        operator delete(v18);
        v55.__r_.__value_.__r.__words[0] = v2;
        v20 = *v1;
        v55.__r_.__value_.__l.__size_ = *v1;
        v21 = v1[1];
        v55.__r_.__value_.__r.__words[2] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
        }

        v22 = object[0];
        v56 = object[0];
        if (object[0])
        {
          dispatch_retain(object[0]);
          v23 = object[0];
        }

        else
        {
          v23 = 0;
        }

        v24 = v2[11];
        v25 = operator new(0x20uLL);
        *v25 = v2;
        v25[1] = v20;
        v25[2] = v21;
        v25[3] = v22;
        dispatch_group_notify_f(v23, v24, v25, dispatch::detail::group_notify<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
        if (object[0])
        {
          dispatch_release(object[0]);
        }

        goto LABEL_44;
      }
    }

    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    goto LABEL_35;
  }

LABEL_44:
  v26 = v2[65];
  if (v26)
  {
    dispatch_async(v26, &__block_literal_global_245);
    v55.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    v55.__r_.__value_.__l.__size_ = 1174405120;
    v55.__r_.__value_.__r.__words[2] = ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke_2;
    v56 = &__block_descriptor_tmp_248;
    v57 = v2;
    v58 = *v1;
    v28 = v1[1];
    v59 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v2[65])
    {
      goto LABEL_72;
    }

    capabilities::abs::supportedMobileAssetTypes(v27);
    v29 = capabilities::abs::operator&();
    if (v29)
    {
      v30 = "com.apple.MobileAsset.MAVBasebandAssets";
      v31 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
      if (v31 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      capabilities::abs::supportedMobileAssetTypes(v29);
      if (capabilities::abs::operator&())
      {
        v30 = "com.apple.MobileAsset.INTBasebandAssets";
      }

      else
      {
        v30 = "";
      }

      v31 = strlen(v30);
      if (v31 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_50:
        v32 = v31;
        if (v31 >= 0x17)
        {
          if ((v31 | 7) == 0x17)
          {
            v35 = 25;
          }

          else
          {
            v35 = (v31 | 7) + 1;
          }

          v33 = operator new(v35);
          object[1] = v32;
          v54 = v35 | 0x8000000000000000;
          object[0] = v33;
        }

        else
        {
          HIBYTE(v54) = v31;
          v33 = object;
          if (!v31)
          {
LABEL_60:
            *(&v32->isa + v33) = 0;
            capabilities::abs::supportedMobileAssetTypes(v31);
            v36 = capabilities::abs::operator&();
            if (v36)
            {
              v37 = "PT";
              v38 = strlen("PT");
              if (v38 <= 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_62;
              }
            }

            else
            {
              capabilities::abs::supportedMobileAssetTypes(v36);
              if (capabilities::abs::operator&())
              {
                v37 = "RP";
              }

              else
              {
                v37 = "";
              }

              v38 = strlen(v37);
              if (v38 <= 0x7FFFFFFFFFFFFFF7)
              {
LABEL_62:
                v39 = v38;
                if (v38 >= 0x17)
                {
                  if ((v38 | 7) == 0x17)
                  {
                    v41 = 25;
                  }

                  else
                  {
                    v41 = (v38 | 7) + 1;
                  }

                  p_dst = operator new(v41);
                  v51 = v39;
                  v52 = v41 | 0x8000000000000000;
                  __dst = p_dst;
                }

                else
                {
                  HIBYTE(v52) = v38;
                  p_dst = &__dst;
                  if (!v38)
                  {
LABEL_70:
                    *(&v39->__vftable + p_dst) = 0;
                    *(v2 + 150) = support::mobileasset::registerForUpdates(object, &__dst, v2[65], &v55);
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__dst);
                      if ((SHIBYTE(v54) & 0x80000000) == 0)
                      {
                        goto LABEL_72;
                      }
                    }

                    else if ((SHIBYTE(v54) & 0x80000000) == 0)
                    {
                      goto LABEL_72;
                    }

                    operator delete(object[0]);
LABEL_72:
                    BootModule::getPowerTableFromMobileAsset(v2, 2);
                    if (v59)
                    {
                      std::__shared_weak_count::__release_weak(v59);
                    }

                    goto LABEL_74;
                  }
                }

                memcpy(p_dst, v37, v39);
                goto LABEL_70;
              }
            }

            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        v31 = memcpy(v33, v30, v32);
        goto LABEL_60;
      }
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v2[13];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v55.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v34, OS_LOG_TYPE_DEFAULT, "#I MobileAsset is not supported", &v55, 2u);
  }

LABEL_74:
  v42 = v61;
  if (v61 && !atomic_fetch_add((v61 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (__p)
  {
    v43 = __p[2];
    if (v43)
    {
      dispatch_group_leave(v43);
      v44 = __p[2];
      if (v44)
      {
        dispatch_release(v44);
      }
    }

    v45 = __p[1];
    if (v45)
    {
      std::__shared_weak_count::__release_weak(v45);
    }

    operator delete(__p);
  }

  v46 = a1;
  if (a1)
  {
    v47 = a1[2];
    if (v47)
    {
      if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
        v46 = a1;
      }
    }

    operator delete(v46);
  }
}

void sub_29709C044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, dispatch_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (v34)
  {
    dispatch_release(v34);
    std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[2];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke(capabilities::abs *a1)
{
  capabilities::abs::supportedMobileAssetTypes(a1);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    v2 = "com.apple.MobileAsset.MAVBasebandAssets";
    v3 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
    if (v3 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_3;
    }

LABEL_28:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  if (capabilities::abs::operator&())
  {
    v2 = "com.apple.MobileAsset.INTBasebandAssets";
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v16 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_10;
  }

  HIBYTE(v16) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_10:
    v3 = memcpy(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  capabilities::abs::supportedMobileAssetTypes(v3);
  v7 = capabilities::abs::operator&();
  if (v7)
  {
    v8 = "PT";
    v9 = strlen("PT");
    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_13;
    }

LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v7);
  if (capabilities::abs::operator&())
  {
    v8 = "RP";
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

LABEL_13:
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

    v11 = operator new(v12);
    __p[1] = v10;
    v14 = v12 | 0x8000000000000000;
    __p[0] = v11;
    goto LABEL_20;
  }

  HIBYTE(v14) = v9;
  v11 = __p;
  if (v9)
  {
LABEL_20:
    memcpy(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  MobileAssetSupport::unlockAsset(__dst, __p);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_35;
  }
}

void sub_29709C43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[13];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I MobileAsset notification received", v7, 2u);
        }

        BootModule::getPowerTableFromMobileAsset(v3, 1);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_29709C57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    goto LABEL_37;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v28 = v4;
  if (!v4)
  {
    goto LABEL_37;
  }

  v5 = v4;
  v27 = *(a1 + 1);
  if (!v27)
  {
    goto LABEL_35;
  }

  if (!*(v3 + 576))
  {
    BootModule::reportStatisticsHardResetTime_sync(v3);
    BootModule::boot_sync(v3);
LABEL_35:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    goto LABEL_37;
  }

  v26 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v26 = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v6, v8);
  v9 = *MEMORY[0x29EDBF460];
  v10 = strlen(*MEMORY[0x29EDBF460]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v12 = operator new(v14);
    __dst[1] = v11;
    v25 = v14 | 0x8000000000000000;
    __dst[0] = v12;
LABEL_17:
    memmove(v12, v9, v11);
    *(v11 + v12) = 0;
    v13 = v26;
    if (!v26)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  HIBYTE(v25) = v10;
  v12 = __dst;
  if (v10)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v13 = v26;
  if (!v26)
  {
    goto LABEL_20;
  }

LABEL_18:
  v15 = CFGetTypeID(v13);
  if (v15 == CFDictionaryGetTypeID())
  {
    cf = v13;
    CFRetain(v13);
    goto LABEL_21;
  }

LABEL_20:
  cf = 0;
LABEL_21:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_252;
  aBlock[4] = v3;
  aBlock[5] = v27;
  v21 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = _Block_copy(aBlock);
  Service::broadcastEvent(v3, __dst, &cf, &v22);
  if (v22)
  {
    _Block_release(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  v16 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v5 = v28;
  if (v28)
  {
    goto LABEL_35;
  }

LABEL_37:
  if (a1)
  {
    v17 = *(a1 + 3);
    if (v17)
    {
      dispatch_release(v17);
    }

    v18 = *(a1 + 2);
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    operator delete(a1);
  }
}

void sub_29709C8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 + 40);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v25 - 72));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v25 - 64);
  std::unique_ptr<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_249;
  v2[4] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v2);
}

void **std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 3);
  if (!v2)
  {
    goto LABEL_74;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v41 = v4;
  if (!v4)
  {
    goto LABEL_74;
  }

  if (*(a1 + 2))
  {
    v36 = 0;
    v37 = 0xAAAAAAAAAAAAAA00;
    v35[0] = 0;
    v35[1] = 0;
    *v38 = 0u;
    memset(v39, 0, sizeof(v39));
    capabilities::abs::supportedMobileAssetTypes(v4);
    v5 = capabilities::abs::operator&();
    if (v5)
    {
      v6 = "com.apple.MobileAsset.MAVBasebandAssets";
      v7 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      capabilities::abs::supportedMobileAssetTypes(v5);
      if (capabilities::abs::operator&())
      {
        v6 = "com.apple.MobileAsset.INTBasebandAssets";
      }

      else
      {
        v6 = "";
      }

      v7 = strlen(v6);
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_6:
        v8 = v7;
        if (v7 >= 0x17)
        {
          if ((v7 | 7) == 0x17)
          {
            v10 = 25;
          }

          else
          {
            v10 = (v7 | 7) + 1;
          }

          v9 = operator new(v10);
          *&__dst[8] = v8;
          *&__dst[16] = v10 | 0x8000000000000000;
          *__dst = v9;
        }

        else
        {
          __dst[23] = v7;
          v9 = __dst;
          if (!v7)
          {
LABEL_14:
            v9[v8] = 0;
            capabilities::abs::supportedMobileAssetTypes(v7);
            v11 = capabilities::abs::operator&();
            if (v11)
            {
              v12 = "PT";
              v13 = strlen("PT");
              if (v13 <= 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_16;
              }
            }

            else
            {
              capabilities::abs::supportedMobileAssetTypes(v11);
              if (capabilities::abs::operator&())
              {
                v12 = "RP";
              }

              else
              {
                v12 = "";
              }

              v13 = strlen(v12);
              if (v13 <= 0x7FFFFFFFFFFFFFF7)
              {
LABEL_16:
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
                  v34 = v16 | 0x8000000000000000;
                  __p[0] = v15;
                }

                else
                {
                  HIBYTE(v34) = v13;
                  v15 = __p;
                  if (!v13)
                  {
LABEL_24:
                    *(v14 + v15) = 0;
                    v17 = MobileAssetSupport::lockAsset(__dst, __p, 0, v35);
                    if (SHIBYTE(v34) < 0)
                    {
                      operator delete(__p[0]);
                      if ((__dst[23] & 0x80000000) == 0)
                      {
LABEL_26:
                        if (v17)
                        {
                          goto LABEL_27;
                        }

                        goto LABEL_41;
                      }
                    }

                    else if ((__dst[23] & 0x80000000) == 0)
                    {
                      goto LABEL_26;
                    }

                    operator delete(*__dst);
                    if (v17)
                    {
LABEL_27:
                      *__dst = v3;
                      if (SHIBYTE(v36) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__dst[8], v35[0], v35[1]);
                      }

                      else
                      {
                        *&__dst[8] = *v35;
                        v43 = v36;
                      }

                      v44 = v37;
                      if (SHIBYTE(v39[0]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v45, v38[0], v38[1]);
                      }

                      else
                      {
                        *&v45.__r_.__value_.__l.__data_ = *v38;
                        v45.__r_.__value_.__r.__words[2] = v39[0];
                      }

                      if (SHIBYTE(v39[3]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v46, v39[1], v39[2]);
                      }

                      else
                      {
                        v46 = *&v39[1];
                      }

                      v47 = a1[8];
                      v21 = v3[10];
                      if (!v21 || (v22 = v3[9], (v23 = std::__shared_weak_count::lock(v21)) == 0))
                      {
                        std::__throw_bad_weak_ptr[abi:ne200100]();
                      }

                      v24 = v23;
                      v25 = operator new(0x60uLL);
                      *v25 = *__dst;
                      *(v25 + 8) = *&__dst[8];
                      *(v25 + 3) = v43;
                      *&__dst[8] = 0;
                      *&__dst[16] = 0;
                      v43 = 0;
                      v25[32] = v44;
                      *(v25 + 40) = v45;
                      memset(&v45, 0, sizeof(v45));
                      v26 = *&v46.__r_.__value_.__l.__data_;
                      *(v25 + 10) = *(&v46.__r_.__value_.__l + 2);
                      *(v25 + 4) = v26;
                      memset(&v46, 0, sizeof(v46));
                      v25[88] = v47;
                      v27 = v3[11];
                      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                      v28 = operator new(0x18uLL);
                      *v28 = v25;
                      v28[1] = v22;
                      v28[2] = v24;
                      dispatch_async_f(v27, v28, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
                      if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_55;
                        }
                      }

                      else
                      {
                        (v24->__on_zero_shared)(v24);
                        std::__shared_weak_count::__release_weak(v24);
                        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_55:
                          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_56;
                          }

                          goto LABEL_60;
                        }
                      }

                      operator delete(v46.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_56:
                        if ((SHIBYTE(v43) & 0x80000000) == 0)
                        {
                          goto LABEL_62;
                        }

LABEL_61:
                        operator delete(*&__dst[8]);
                        goto LABEL_62;
                      }

LABEL_60:
                      operator delete(v45.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v43) & 0x80000000) == 0)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_61;
                    }

LABEL_41:
                    v18 = v3[13];
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      v19 = a1[8];
                      if (v19 > 2)
                      {
                        v20 = "UNKNOWN";
                      }

                      else
                      {
                        v20 = off_29EE64098[v19];
                      }

                      *__dst = 136315138;
                      *&__dst[4] = v20;
                      _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I Failed to get the MobileAsset requested triggered by %s", __dst, 0xCu);
                      if ((SHIBYTE(v39[3]) & 0x80000000) == 0)
                      {
LABEL_63:
                        if ((SHIBYTE(v39[0]) & 0x80000000) == 0)
                        {
                          goto LABEL_64;
                        }

                        goto LABEL_70;
                      }

LABEL_69:
                      operator delete(v39[1]);
                      if ((SHIBYTE(v39[0]) & 0x80000000) == 0)
                      {
LABEL_64:
                        if ((SHIBYTE(v36) & 0x80000000) == 0)
                        {
                          goto LABEL_65;
                        }

LABEL_71:
                        operator delete(v35[0]);
                        v4 = v41;
                        if (!v41)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_72;
                      }

LABEL_70:
                      operator delete(v38[0]);
                      if ((SHIBYTE(v36) & 0x80000000) == 0)
                      {
LABEL_65:
                        v4 = v41;
                        if (!v41)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_72;
                      }

                      goto LABEL_71;
                    }

LABEL_62:
                    if ((SHIBYTE(v39[3]) & 0x80000000) == 0)
                    {
                      goto LABEL_63;
                    }

                    goto LABEL_69;
                  }
                }

                memcpy(v15, v12, v14);
                goto LABEL_24;
              }
            }

            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        v7 = memcpy(v9, v6, v8);
        goto LABEL_14;
      }
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_72:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_74:
  if (a1)
  {
    v30 = *(a1 + 3);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete(a1);
  }

  v31 = *MEMORY[0x29EDCA608];
}

void sub_29709CFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *a28, void *a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a29);
  }

  support::mobileasset::assetData::~assetData(&a16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a26);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void ***a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  if ((*(*a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!v1[2])
    {
      goto LABEL_58;
    }
  }

  else if (!*(v1 + 31))
  {
    goto LABEL_58;
  }

  v2 = *v1;
  v3 = *(*v1 + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (*(v1 + 87) < 0)
    {
      v4 = *v4;
      v5 = *(v1 + 88);
      if (v5 <= 2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *(v1 + 88);
      if (v5 <= 2)
      {
LABEL_8:
        v6 = off_29EE64098[v5];
LABEL_11:
        *buf = 136315394;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = v6;
        _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Update requested with MobileAsset version %s, triggered by %s", buf, 0x16u);
        goto LABEL_12;
      }
    }

    v6 = "UNKNOWN";
    goto LABEL_11;
  }

LABEL_12:
  *(v2 + 193) = *(v1 + 88);
  *(v2 + 224) = *(v1 + 32);
  v7 = (v2 + 232);
  if ((v2 + 232) != v1 + 5)
  {
    v8 = *(v1 + 63);
    if (*(v2 + 255) < 0)
    {
      if (v8 >= 0)
      {
        v10 = v1 + 5;
      }

      else
      {
        v10 = v1[5];
      }

      if (v8 >= 0)
      {
        v11 = *(v1 + 63);
      }

      else
      {
        v11 = v1[6];
      }

      std::string::__assign_no_alias<false>(v7, v10, v11);
    }

    else if ((*(v1 + 63) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v7, v1[5], v1[6]);
    }

    else
    {
      v9 = *(v1 + 5);
      *(v2 + 248) = v1[7];
      *v7 = v9;
    }
  }

  v12 = (v2 + 200);
  if ((v2 + 200) != v1 + 8)
  {
    v13 = *(v1 + 87);
    if (*(v2 + 223) < 0)
    {
      if (v13 >= 0)
      {
        v15 = v1 + 8;
      }

      else
      {
        v15 = v1[8];
      }

      if (v13 >= 0)
      {
        v16 = *(v1 + 87);
      }

      else
      {
        v16 = v1[9];
      }

      std::string::__assign_no_alias<false>(v12, v15, v16);
    }

    else if ((*(v1 + 87) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v12, v1[8], v1[9]);
    }

    else
    {
      v14 = *(v1 + 4);
      *(v2 + 216) = v1[10];
      *v12 = v14;
    }
  }

  v17 = *(v1 + 88);
  if (v17 > 2)
  {
    v18 = "UNKNOWN";
  }

  else
  {
    v18 = off_29EE64098[v17];
  }

  v19 = strlen(v18);
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v19 | 7) + 1;
    }

    v21 = operator new(v23);
    *&buf[8] = v20;
    *&buf[16] = v23 | 0x8000000000000000;
    *buf = v21;
LABEL_48:
    memcpy(v21, v18, v20);
    v21[v20] = 0;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  buf[23] = v19;
  v21 = buf;
  if (v19)
  {
    goto LABEL_48;
  }

  buf[0] = 0;
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_43:
    v22 = *(v1 + 1);
    v31.__r_.__value_.__r.__words[2] = v1[3];
    *&v31.__r_.__value_.__l.__data_ = v22;
    goto LABEL_50;
  }

LABEL_49:
  std::string::__init_copy_ctor_external(&v31, v1[1], v1[2]);
LABEL_50:
  updated = BootModule::updateMobileAssetPTStatus_sync(v2, 1u, buf, &v31);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    operator delete(*buf);
    if (!updated)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_52:
  if (!updated)
  {
LABEL_58:
    v25 = __p;
    if (!__p)
    {
      goto LABEL_63;
    }

LABEL_59:
    if (*(v25 + 87) < 0)
    {
      operator delete(v25[8]);
      if ((*(v25 + 63) & 0x80000000) == 0)
      {
LABEL_61:
        if ((*(v25 + 31) & 0x80000000) == 0)
        {
LABEL_62:
          operator delete(v25);
          goto LABEL_63;
        }

LABEL_71:
        operator delete(v25[1]);
        goto LABEL_62;
      }
    }

    else if ((*(v25 + 63) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    operator delete(v25[5]);
    if ((*(v25 + 31) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_71;
  }

LABEL_56:
  if (*(v2 + 576) - 3 < 3)
  {
    BootModule::triggerResetWithUpdatedPT_sync(v2);
    goto LABEL_58;
  }

  *(v2 + 194) = 1;
  v25 = __p;
  if (__p)
  {
    goto LABEL_59;
  }

LABEL_63:
  v26 = a1;
  if (a1)
  {
    v27 = a1[2];
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v26 = a1;
    }

    operator delete(v26);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_29709D430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_29709D49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
      if ((*(v2 + 63) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(v2 + 31) & 0x80000000) == 0)
        {
LABEL_5:
          operator delete(v2);
          return a1;
        }

LABEL_9:
        operator delete(*(v2 + 8));
        goto LABEL_5;
      }
    }

    else if ((*(v2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v2 + 40));
    if ((*(v2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return a1;
}

void support::mobileasset::assetData::~assetData(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[4]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E27098;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E27098;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E27098;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E27098;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
    if (v8)
    {
      v9 = v8;
      v10 = a1[2];
      if (v10)
      {
        v11 = a1[3];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          dispatch_retain(v4);
          dispatch_group_enter(v4);
        }

        if (v5)
        {
          xpc_retain(v5);
          v12 = v5;
          v13 = v7[10];
          if (!v13)
          {
LABEL_23:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v13 = v7[10];
          if (!v13)
          {
            goto LABEL_23;
          }
        }

        v14 = v7[9];
        v15 = std::__shared_weak_count::lock(v13);
        if (!v15)
        {
          goto LABEL_23;
        }

        v16 = v15;
        v17 = operator new(0x28uLL);
        *v17 = v7;
        v17[1] = v10;
        v17[2] = v11;
        v17[3] = v4;
        v17[4] = v12;
        v18 = xpc_null_create();
        v19 = v7[11];
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = operator new(0x18uLL);
        *v20 = v17;
        v20[1] = v14;
        v20[2] = v16;
        dispatch_async_f(v19, v20, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v36 = *a1;
  v2 = **a1;
  v3 = v2[576];
  if (v3 == 3)
  {
    object = _os_activity_create(&dword_296FF7000, "Baseband state: transport is ready", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    memset(state, 170, 16);
    os_activity_scope_enter(object, state);
    os_activity_scope_leave(state);
    (*(*v2 + 104))(v2, 4);
    cf = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v7 = Mutable;
    if (Mutable)
    {
      cf = Mutable;
    }

    v8 = *MEMORY[0x29EDBEAF8];
    *state = 0;
    ctu::cf::convert_copy(state, v8, 0x8000100, v4, v6);
    v9 = *MEMORY[0x29EDBEFB8];
    v10 = *state;
    __dst[0] = *state;
    *state = 0;
    ctu::cf::convert_copy(state, v9, 0x8000100, v4, v11);
    v12 = *state;
    v43 = *state;
    if (v10 && *state)
    {
      CFDictionarySetValue(v7, v10, *state);
    }

    else if (!*state)
    {
      goto LABEL_12;
    }

    CFRelease(v12);
LABEL_12:
    if (v10)
    {
      CFRelease(v10);
    }

    v43 = 0xAAAAAAAAAAAAAAAALL;
    BootModule::calculateBootStatistics_sync(v2, &v43);
    v16 = v43;
    if (v43)
    {
      v17 = *MEMORY[0x29EDBF158];
      *state = 0;
      ctu::cf::convert_copy(state, v17, 0x8000100, v4, v15);
      v18 = *state;
      __dst[0] = *state;
      *state = v16;
      CFRetain(v16);
      if (v18)
      {
        CFDictionarySetValue(v7, v18, v16);
      }

      CFRelease(v16);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    v19 = *MEMORY[0x29EDBF460];
    v20 = strlen(*MEMORY[0x29EDBF460]);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v24 = 25;
      }

      else
      {
        v24 = (v20 | 7) + 1;
      }

      v22 = operator new(v24);
      __dst[1] = v21;
      v40 = v24 | 0x8000000000000000;
      __dst[0] = v22;
    }

    else
    {
      HIBYTE(v40) = v20;
      v22 = __dst;
      if (!v20)
      {
        LOBYTE(__dst[0]) = 0;
        v23 = cf;
        if (!cf)
        {
          goto LABEL_31;
        }

LABEL_29:
        v25 = CFGetTypeID(v23);
        if (v25 == CFDictionaryGetTypeID())
        {
          v38 = v23;
          CFRetain(v23);
LABEL_32:
          *state = MEMORY[0x29EDCA5F8];
          *&state[8] = 1174405120;
          *&state[16] = ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
          v45 = &__block_descriptor_tmp_266_0;
          v46 = v2;
          v47 = v1[1];
          v26 = v1[2];
          v48 = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          aBlock = _Block_copy(state);
          Service::broadcastEvent(v2, __dst, &v38, &aBlock);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          if (SHIBYTE(v40) < 0)
          {
            operator delete(__dst[0]);
          }

          v27 = *(v2 + 21);
          *(v2 + 21) = 0;
          if (v27)
          {
            dispatch_group_leave(v27);
            dispatch_release(v27);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_weak(v48);
          }

          if (v43)
          {
            CFRelease(v43);
          }

          if (v23)
          {
            CFRelease(v23);
          }

          if (object)
          {
            os_release(object);
          }

LABEL_50:
          if (v2[194] != 1)
          {
            goto LABEL_55;
          }

LABEL_54:
          BootModule::triggerResetWithUpdatedPT_sync(v2);
          goto LABEL_55;
        }

LABEL_31:
        v38 = 0;
        goto LABEL_32;
      }
    }

    memmove(v22, v19, v21);
    *(v21 + v22) = 0;
    v23 = cf;
    if (!cf)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v13 = *(v2 + 13);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_50;
  }

  if (v3 > 8)
  {
    v14 = "Unknown";
  }

  else
  {
    v14 = off_29EE640B0[v3];
  }

  v28 = *MEMORY[0x29EDBEFB8];
  *state = 136315394;
  *&state[4] = v14;
  *&state[12] = 2080;
  *&state[14] = v28;
  _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I State is '%s'; don't send '%s' event", state, 0x16u);
  if (v2[194] == 1)
  {
    goto LABEL_54;
  }

LABEL_55:
  if (v36)
  {
    xpc_release(v36[4]);
    v36[4] = 0;
    v29 = v36[3];
    if (v29)
    {
      dispatch_group_leave(v29);
      v30 = v36[3];
      if (v30)
      {
        dispatch_release(v30);
      }
    }

    v31 = v36[2];
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    operator delete(v36);
  }

  v32 = a1;
  if (a1)
  {
    v33 = *(a1 + 16);
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v32 = a1;
    }

    operator delete(v32);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29709DF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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
      dispatch_group_leave(v3);
      v4 = *(v1 + 24);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6[0] = MEMORY[0x29EDCA5F8];
        v6[1] = 0x40000000;
        v6[2] = ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_2;
        v6[3] = &__block_descriptor_tmp_263;
        v6[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v6);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 576);
  if (v2 == 4)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v1 + 88))(&v10);
    v3 = v10;
    if (v10)
    {
      v4 = operator new(0x38uLL);
      strcpy(v4, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
      v5 = *(v3 + 48);
      std::string::__init_copy_ctor_external(&v12, v4, 0x33uLL);
      (*(*v5 + 32))(v5, &v12);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      operator delete(v4);
    }

    v6 = v11;
    if (v11 && !atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    v7 = *(v1 + 104);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 8)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = off_29EE640F8[v2];
      }

      LODWORD(v12.__r_.__value_.__l.__data_) = 136315138;
      *(v12.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I State is '%s' not releasing power assertion yet", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29709E364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E27148;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E27148;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E27148;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E27148;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 584);
  if (v3)
  {
    BootController::markNonvolatileDataErased(v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void sub_29709E888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E271C8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E271C8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E271C8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E271C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_29709EC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  value = xpc_dictionary_get_value((*a1)[2], *MEMORY[0x29EDBF030]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *(v3 + 328) = xpc::dyn_cast_or_default(&object, *(v3 + 328));
  xpc_release(object);
  xpc_release(v2[2]);
  v2[2] = 0;
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
  }

  operator delete(a1);
}

void sub_29709EE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E27248;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E27248;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E27248;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E27248;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_29709F2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[2];
  v26 = 0xAAAAAAAAAAAAAAAALL;
  object[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::bridge(&cf, object, v5);
  v6 = cf;
  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    v6 = 0;
    v26 = 0;
    v8 = cf;
    if (!cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = v6;
  CFRetain(v6);
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object[0]);
  object[0] = 0xAAAAAAAAAAAAAAAALL;
  object[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(object, v6);
  ctu::cf::MakeCFString::MakeCFString(&cf, *MEMORY[0x29EDBD418]);
  v9 = ctu::cf::map_adapter::copyCFDataRef(object, cf);
  MEMORY[0x29C26B130](&cf);
  v24 = v9;
  if (v9)
  {
    cf = 0;
    v22 = 0;
    v23 = 0;
    ctu::cf::assign();
    v10 = cf;
    v11 = v22;
    if (cf == v22)
    {
      v15 = *(v3 + 104);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data has zero-size", buf, 2u);
        v16 = cf;
        if (!cf)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = *(v3 + 560);
      SystemTime = TelephonyUtilGetSystemTime();
      lcdm::CrashDB::emplaceCrashEntry(v12, v10, v11 - v10, SystemTime);
    }

    v16 = cf;
    if (!cf)
    {
LABEL_18:
      CFRelease(v9);
      goto LABEL_19;
    }

LABEL_17:
    v22 = v16;
    operator delete(v16);
    goto LABEL_18;
  }

  v14 = *(v3 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(cf) = 0;
    _os_log_debug_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data is empty", &cf, 2u);
  }

LABEL_19:
  MEMORY[0x29C26B180](object);
  if (v6)
  {
    CFRelease(v6);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v17 = v2[1];
  if (v17)
  {
    dispatch_group_leave(v17);
    v18 = v2[1];
    if (v18)
    {
      dispatch_release(v18);
    }
  }

  operator delete(v2);
  v19 = a1[2];
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t ctu::cf::plist_adapter::set<std::string>(int a1, uint64_t a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, a3);
  v4 = ctu::cf::plist_adapter::set<std::string>();
  MEMORY[0x29C26B130](&v6);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v4;
}

uint64_t ctu::cf::plist_adapter::set<std::string>()
{
  v0 = *MEMORY[0x29EDB8ED8];
  ctu::cf::convert_copy();
  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_21handleBootFailed_syncENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEUb3_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNS6_10unique_ptrISE_NS6_14default_deleteISE_EEEEENUlPvE_8__invokeESN_(void *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*(*a1 + 24))
  {
    v2 = *(*v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, (v1 + 4));
      v3 = v10 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v12 = v3;
      _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping logs failed: %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  xpc_release(v1[4]);
  v1[4] = 0;
  v4 = v1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  v5 = a1;
  if (a1)
  {
    v6 = a1[2];
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v5 = a1;
    }

    operator delete(v5);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29709FA8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  _ZNSt3__110unique_ptrIZZN10BootModule21handleBootFailed_syncENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb3_E4__12NS_14default_deleteIS8_EEED1B8ne200100Ev(va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29709FAA8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN10BootModule21handleBootFailed_syncENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb3_E4__12NS_14default_deleteIS8_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 16);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_22checkFSSyncStatus_syncENS_5blockIU13block_pointerFvbbEEEEUb4_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_(xpc_object_t **a1)
{
  v2 = *a1;
  if (**a1)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    value = xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBEA08]);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v3 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v6 = xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBEA10]);
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    v4 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  v7 = v2[2];
  if (v7)
  {
    v7[2](v7, v3, v4);
    v8 = v2[2];
    if (v8)
    {
      _Block_release(v8);
    }
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_29709FCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEEEUb4_E4__13NS_14default_deleteIS7_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEEEUb4_E4__13NS_14default_deleteIS7_EEED1B8ne200100Ev(uint64_t *a1)
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

uint64_t Preferences::getPreference<BOOL>(uint64_t (***a1)(void, uint64_t), const char *a2, ctu::cf *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v11, a2);
  v5 = (**a1)(a1, v11);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      v9 = ctu::cf::assign(a3, v6, v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x29C26B130](&v11);
  return v9;
}

void dispatch::detail::group_notify<BootModule::setVoiceCall_sync(BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setVoiceCall_sync(BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = *(__p + 24);
        *(v3 + 360) = v6;
        v7 = *(v3 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = "NO";
          if (v6)
          {
            v8 = "YES";
          }

          v11 = 136315138;
          v12 = v8;
          _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Voice Call: %s", &v11, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
  v10 = *MEMORY[0x29EDCA608];
}

void **std::unique_ptr<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0,std::default_delete<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v15 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        *(v3 + 368) = *(a1 + 6);
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          abm::asString();
          v7 = v13 >= 0 ? &__p : __p;
          v8 = *(a1 + 6);
          *buf = 136315394;
          v17 = v7;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT1: %s (%d)", buf, 0x12u);
          if (v13 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v9 = a1[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_2970A0160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0,std::default_delete<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v15 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        *(v3 + 416) = *(a1 + 6);
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          abm::asString();
          v7 = v13 >= 0 ? &__p : __p;
          v8 = *(a1 + 6);
          *buf = 136315394;
          v17 = v7;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT2: %s (%d)", buf, 0x12u);
          if (v13 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v9 = a1[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_2970A02F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0,std::default_delete<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BootModule::setPLMN1_sync(std::string)::$_0,std::default_delete<BootModule::setPLMN1_sync(std::string)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::detail::group_notify<BootModule::setPLMN1_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN1_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        v6 = a1 + 24;
        v7 = (v3 + 376);
        if ((v3 + 376) != a1 + 24)
        {
          v8 = a1[47];
          if (*(v3 + 399) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a1 + 24;
            }

            else
            {
              v10 = *(a1 + 3);
            }

            if (v8 >= 0)
            {
              v11 = a1[47];
            }

            else
            {
              v11 = *(a1 + 4);
            }

            std::string::__assign_no_alias<false>(v7, v10, v11);
          }

          else if (a1[47] < 0)
          {
            std::string::__assign_no_alias<true>(v7, *(a1 + 3), *(a1 + 4));
          }

          else
          {
            v9 = *v6;
            *(v3 + 392) = *(a1 + 5);
            *v7 = v9;
          }
        }

        v12 = *(v3 + 104);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (a1[47] < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v17 = v6;
          _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN1: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    if (a1[47] < 0)
    {
      operator delete(*(a1 + 3));
    }

    v13 = *(a1 + 2);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    operator delete(a1);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2970A0508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<BootModule::setPLMN1_sync(std::string)::$_0,std::default_delete<BootModule::setPLMN1_sync(std::string)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setPLMN2_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN2_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        v6 = a1 + 24;
        v7 = (v3 + 424);
        if ((v3 + 424) != a1 + 24)
        {
          v8 = a1[47];
          if (*(v3 + 447) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a1 + 24;
            }

            else
            {
              v10 = *(a1 + 3);
            }

            if (v8 >= 0)
            {
              v11 = a1[47];
            }

            else
            {
              v11 = *(a1 + 4);
            }

            std::string::__assign_no_alias<false>(v7, v10, v11);
          }

          else if (a1[47] < 0)
          {
            std::string::__assign_no_alias<true>(v7, *(a1 + 3), *(a1 + 4));
          }

          else
          {
            v9 = *v6;
            *(v3 + 440) = *(a1 + 5);
            *v7 = v9;
          }
        }

        v12 = *(v3 + 104);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (a1[47] < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v17 = v6;
          _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN2: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    if (a1[47] < 0)
    {
      operator delete(*(a1 + 3));
    }

    v13 = *(a1 + 2);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    operator delete(a1);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2970A06C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<BootModule::setPLMN1_sync(std::string)::$_0,std::default_delete<BootModule::setPLMN1_sync(std::string)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = __p[3];
        v7 = *(__p + 8);
        *(v3 + 48 * v7 + 400) = v6;
        v8 = *(v3 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109376;
          v11[1] = v7 + 1;
          v12 = 2048;
          v13 = v6;
          _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I CellId%d: %llu", v11, 0x12u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
  v10 = *MEMORY[0x29EDCA608];
}

void dispatch::detail::group_notify<BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = __p[3];
        v7 = *(__p + 8);
        *(v3 + 48 * v7 + 408) = v6;
        v8 = *(v3 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109376;
          v11[1] = v7 + 1;
          v12 = 2048;
          v13 = v6;
          _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I AreaCode%d: %llu", v11, 0x12u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
  v10 = *MEMORY[0x29EDCA608];
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bbResetFlag(BOOL)::$_0>(BootModule::bbResetFlag(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bbResetFlag(BOOL)::$_0,dispatch_queue_s *::default_delete<BootModule::bbResetFlag(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(NSObject ****a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(*a1 + 8) == 1)
  {
    v4 = v3[61];
    if (v4)
    {
      dispatch_retain(v3[61]);
      dispatch_group_enter(v4);
    }

    v5 = v3[62];
    v3[62] = v4;
    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
    }

    v6 = v3[13];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v7 = "#I The baseband reset was detected.";
      v8 = &v13;
LABEL_12:
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v9 = v3[62];
    v3[62] = 0;
    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }

    v6 = v3[13];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "#I The baseband reset-flag is reset.";
      v8 = &v12;
      goto LABEL_12;
    }
  }

  v10 = v3[64];
  v3[64] = 0;
  if (v10)
  {
    dispatch_resume(v10);
    dispatch_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1, char *a2, int a3)
{
  v6 = MEMORY[0x29C26BF30]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]) != &a2[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_2970A0B80(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, std::basic_regex<char> *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E273A8;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E27400;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(a1, a2, a3);
      }

LABEL_44:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
    }

LABEL_15:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v13, a3);
  if (v17 != v13)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (*result != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = result + 1;
    v31 = result + 1;
    while (1)
    {
      v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_2A1E279C0;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &unk_2A1E27A08;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v35, a3, v33, (v34 + 1), (*(a1 + 28) + 1));
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_2970A1028(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26BC50](exception, 17);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  result = a2;
  while (1)
  {
    v8 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = a1->__end_;
  marked_count = a1->__marked_count_;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v8);
  if (v11 != v8)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v9, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = a1->__end_;
    first = v14->__first_;
    v13->__first_ = first;
    v14->__first_ = v13;
    a1->__end_ = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = a1->__end_;
    v24 = (result + 1);
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = a1->__end_;
        v28 = a1->__marked_count_;
        v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v26);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = a1->__end_;
            v33 = v32->__first_;
            v31->__first_ = v33;
            v32->__first_ = v31;
            a1->__end_ = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = v23->__first_;
          v16[1].__vftable = end->__first_;
          v16[2].__vftable = v17;
          v16->__vftable = &unk_2A1E279C0;
          end->__first_ = v16;
          v23->__first_ = 0;
          v18 = operator new(0x10uLL);
          v19 = a1->__end_;
          v20 = v19->__first_;
          v18[1].__vftable = v20;
          v23->__first_ = v18;
          v19->__first_ = 0;
          v21 = operator new(0x10uLL);
          v22 = v23->__first_;
          v21->__vftable = &unk_2A1E27A08;
          v21[1].__vftable = v22;
          v19->__first_ = v21;
          a1->__end_ = v23->__first_;
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v29, a3, v27, v28 + 1, a1->__marked_count_ + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = &unk_2A1E274F8;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v12, a3, v10, (v11 + 1), (*(a1 + 28) + 1));
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = &v13->__traits_.__loc_.__locale_ + 1;
    if ((&v13->__traits_.__loc_.__locale_ + 1) != a3 || LOBYTE(v13->__traits_.__loc_.__locale_) != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2A1E27540;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 != a3)
  {
    while (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v9 = *(a1 + 56);
      v10 = (&v8->__traits_.__loc_.__locale_ + 1);
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, (&v8->__traits_.__loc_.__locale_ + 1), a3);
      if (v11 == (&v8->__traits_.__loc_.__locale_ + 1))
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &unk_2A1E279C0;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &unk_2A1E27A08;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E279C0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E27A08;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E279C0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E27A08;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return v10;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26BC50](exception, 14);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
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

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297228270)
  {
    if (((v2 & 0x8000000297228270 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297228270))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297228270 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(this->__first_);
  }
}

{
  first = this->__first_;
  if (first)
  {
    v3 = this;
    (first->~__node_0)(this->__first_);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      if (a2 + 1 != a3)
      {
        v13 = a2[1];
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          first = v14->__end_->__first_;
          *v16 = &unk_2A1E27588;
          *(v16 + 1) = first;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = v14->__end_->__first_;
          *v16 = &unk_2A1E27588;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 0;
        }

        v14->__end_->__first_ = v16;
        v14->__end_ = v16;
        return v15 + 2;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_2A1E274F8;
LABEL_14:
    *v9 = v12;
    *(v9 + 16) = v10;
    end->__first_ = v9;
    v7->__end_ = v9;
    return v8 + 1;
  }

  if (v3 == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_2A1E27540;
    goto LABEL_14;
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v18 = a2 + 2;
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = *v18;
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.__loop_count_ = v29;
    *&v35.__start_.__cntrl_ = v29;
    *&v35.__traits_.__loc_.__locale_ = v29;
    *&v35.__traits_.__col_ = v29;
    v31 = a2;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
    v33 = a1;
    v35.__flags_ = a1->__flags_;
    v34 = a3;
    v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v31 + 3, a3);
    LODWORD(v31) = v35.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v33, &v35, 1, v33->__marked_count_);
    v33->__marked_count_ += v31;
    if (v27 == v34 || *v27 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v35.__loop_count_ = v21;
  *&v35.__start_.__cntrl_ = v21;
  *&v35.__traits_.__loc_.__locale_ = v21;
  *&v35.__traits_.__col_ = v21;
  v23 = a2;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
  v25 = a1;
  v35.__flags_ = a1->__flags_;
  v26 = a3;
  v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v23 + 3, a3);
  LODWORD(v23) = v35.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v25, &v35, 0, v25->__marked_count_);
  v25->__marked_count_ += v23;
  if (v27 == v26 || *v27 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_32:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v35.__traits_.__loc_);
  return v27 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low != 40)
    {
      if (locale_low == 46)
      {
        v4 = a1;
        v6 = operator new(0x10uLL);
        v7 = *(v4 + 56);
        v8 = *(v7 + 8);
        *v6 = &unk_2A1E27618;
        v6[1] = v8;
        *(v7 + 8) = v6;
        *(v4 + 56) = v6;
        return (&this->__traits_.__loc_.__locale_ + 1);
      }

      if (locale_low - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_47:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    v14 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) != a3)
    {
      if ((&this->__traits_.__loc_.__locale_ + 2) != a3 && *v14 == 63 && BYTE2(this->__traits_.__loc_.__locale_) == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, &this->__traits_.__loc_.__locale_ + 3, a3);
        if (v17 == v16)
        {
          goto LABEL_56;
        }

        v18 = v17;
        if (*v17 != 41)
        {
          goto LABEL_56;
        }

LABEL_43:
        --*v15;
        return (v18 + 1);
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = &unk_2A1E27858;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v29 = a1;
      v30 = a3;
      v31 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, v14, a3);
      if (v31 != v30)
      {
        v18 = v31;
        if (*v31 == 41)
        {
          if ((*(v29 + 24) & 2) == 0)
          {
            v32 = operator new(0x18uLL);
            v33 = *(v29 + 56);
            v34 = *(v33 + 8);
            *v32 = &unk_2A1E278A0;
            v32[1] = v34;
            *(v32 + 4) = v23;
            *(v33 + 8) = v32;
            *(v29 + 56) = v32;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_56:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (LOBYTE(this->__traits_.__loc_.__locale_) > 0x5Bu)
  {
    if (locale_low != 92)
    {
      if (locale_low == 123)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    v11 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v13 = *v11;
    if (v13 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      return (&this->__traits_.__loc_.__locale_ + 2);
    }

    if ((v13 - 49) <= 8)
    {
      v26 = (v13 - 48);
      v9 = &this->__traits_.__loc_.__locale_ + 2;
      if ((&this->__traits_.__loc_.__locale_ + 2) == a3)
      {
        v28 = a3;
      }

      else
      {
        while (1)
        {
          v27 = *v9;
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v26 >= 0x19999999)
          {
            goto LABEL_57;
          }

          v26 = v27 + 10 * v26 - 48;
          if (++v9 == a3)
          {
            v9 = a3;
            break;
          }
        }

        v28 = a3;
        if (!v26)
        {
LABEL_57:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v26 > *(a1 + 28))
      {
        goto LABEL_57;
      }

      v35 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v26);
      a1 = v35;
      a3 = v28;
      if (v9 != v11)
      {
        return v9;
      }
    }

    v36 = a1;
    v37 = a3;
    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v11, a3);
    v39 = v37;
    v9 = v38;
    if (v38 == v11)
    {
      v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(v36, v11, v39, 0);
      if (v40 == v11)
      {
        return this;
      }

      else
      {
        return v40;
      }
    }

    return v9;
  }

  if (locale_low != 91)
  {
    if (locale_low == 63)
    {
      goto LABEL_47;
    }

LABEL_27:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, this, a3);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  v6 = *(a1 + 24) & 0x1F0;
  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low == 42)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 0;
        goto LABEL_34;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 0;
      goto LABEL_43;
    }

    if (locale_low == 43)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 1;
LABEL_34:
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v10, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 0);
        return v9;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 1;
      goto LABEL_43;
    }

    return this;
  }

  if (locale_low == 63)
  {
    v20 = (&this->__traits_.__loc_.__locale_ + 1);
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || LOBYTE(v20->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 1);
      return v20;
    }

    else
    {
      v22 = &this->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 0);
      return v22;
    }
  }

  else
  {
    if (locale_low != 123)
    {
      return this;
    }

    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v11 = BYTE1(this->__traits_.__loc_.__locale_);
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = (&this->__traits_.__loc_.__locale_ + 2);
    if ((&this->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v14 = LOBYTE(v13->__traits_.__loc_.__locale_);
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        v13 = (v13 + 1);
        if (v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = LOBYTE(v13->__traits_.__loc_.__locale_);
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = (&v13->__traits_.__loc_.__locale_ + 1);
        if (v6 || v16 == a3 || LOBYTE(v16->__traits_.__loc_.__locale_) != 63)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 1);
          return v16;
        }

        else
        {
          v17 = &v13->__traits_.__loc_.__locale_ + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 0);
          return v17;
        }
      }

LABEL_69:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

    if ((&v13->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v24 = BYTE1(v13->__traits_.__loc_.__locale_);
    if (v24 == 125)
    {
      v8 = (&v13->__traits_.__loc_.__locale_ + 2);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v10 = v12;
        v9 = &v13->__traits_.__loc_.__locale_ + 3;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_34;
      }

      v23 = v12;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
LABEL_43:
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v23, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = (&v13->__traits_.__loc_.__locale_ + 2);
    if (v26 != a3)
    {
      while (1)
      {
        v27 = LOBYTE(v26->__traits_.__loc_.__locale_);
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        v26 = (v26 + 1);
        if (v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || LOBYTE(v26->__traits_.__loc_.__locale_) != 125)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = (&v26->__traits_.__loc_.__locale_ + 1);
    if (v6 || v28 == a3 || LOBYTE(v28->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 1);
      return v28;
    }

    else
    {
      v29 = &v26->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 0);
      return v29;
    }
  }
}